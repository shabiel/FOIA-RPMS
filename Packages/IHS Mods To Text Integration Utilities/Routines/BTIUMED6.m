BTIUMED6 ; SLC/JM - Active/Recent Med Objects Routine ;04-Dec-2012 14:17;DU
 ;;1.0;TEXT INTEGRATION UTILITIES;**1009,1010**;Jun 20, 1997;Build 24
 Q
LIST(DFN,TARGET,CLININC) ; EP
 ;
 ; This is the TIU Medication object for medication reconciliation .
 ; Combined report with all meds of the same status combined
 ;
 ;Required Parameters:
 ;
 ;  DFN       Patient identifier
 ;
 ;  TARGET    Where the medication data will be stored
 ;
 ;Optional Parameters:
 ;
 ; CLININC  1=Clinical Indication will be included
 ;
 N NEXTLINE,EMPTY,INDEX,NODE,ISINP,KEEPMED,STATUS,OK,RXNO,CHRONIC,LDATE,CANDATE,EXDATE,DETAILED
 N INPTYPE,OUTPTYPE,TYPE,MEDTYPE,CNT,DATA,DATA1,MED,IDATE,XSTR,LLEN,DAYS,ACTVONLY,ONELIST
 N LASTMEDT,LASTSTS,COUNT,TOTAL,SPACE60,DASH73,TEMP,LINE,TAB,HEADER,CLASSORT
 N DRUGCLAS,DRUGIDX,LASTCLAS,OLDTAB,OLDHEADR,UNKNOWNS,LSTINDIC,SUPPLIES,AUTO
 N IFN,NVATYPE,NVAMED,NVASTR,TIUXSTAT,CLIN,HIEN,IEN,REASON,REFILLS,COUNTER,EVENT
 N %,%H,STOP,LSTFD ;Clean up after external calls...
 S (NEXTLINE,TAB,HEADER,UNKNOWNS)=0,LLEN=47
 K @TARGET,^TMP("PS",$J)
 ; Check for Pharmacy Package and required patches
 I '$L($T(OCL^PSOORRL)) D  G LISTX
 .D ADD^BTIUMED1("Outpatient Pharmacy 7.0 Required for this Object.")
 .D ADD^BTIUMED1(" ")
 I '$$PATCH^XPDUTL("PSO*7.0*20") D  G LISTX
 .D ADD^BTIUMED1("Outpatient Pharmacy Patch PSO*7.0*20 is required for this Object.")
 .D ADD^BTIUMED1(" ")
 I '$$PATCH^XPDUTL("PSJ*5.0*22") D  G LISTX
 .D ADD^BTIUMED1("Inpatient Pharmacy Patch PSJ*5.0*22 is required for this Object.")
 .D ADD^BTIUMED1(" ")
 I $G(CLININC)'=1 S CLININC=0
 S (EMPTY,HEADER)=1
 S HEADER=1
 S ISINP=($G(^DPT(DFN,.1))'="") ; Is this an inpatient?
 S OUTPTYPE=1,INPTYPE=2,NVATYPE=3
 ;
 ; *** Scan medication data and skip unwanted meds ***
 ;
 S DAYS=180,ACTVONLY=0,ONELIST=0,DETAILED=1
 D OCL^PSOORRL(DFN,$$FMADD^XLFDT(DT,-DAYS),"")
 S INDEX=0,CLASSORT=0,SUPPLIES=0
 F  S INDEX=$O(^TMP("PS",$J,INDEX))  Q:INDEX'>0  D
 .S CHRONIC="",AUTO=0
 .S NODE=$G(^TMP("PS",$J,INDEX,0))
 .S KEEPMED=($L($P(NODE,U,2))>0) ;Discard Blank Meds
 .;Group meds by status
 .S STATUS=$P(NODE,U,9)
 .S IDATE=$P(NODE,U,15)
 .I $P($P(NODE,U),";",2)["O" D
 ..S RXNO=+($P(NODE,U,1))
 ..S AUTO=$P($G(^PSRX(RXNO,999999921)),U,3)
 .S TYPE=$P($P(NODE,U),";",2)
 .S TYPE=$S(TYPE="O":"OP",TYPE="I":"UD",1:"")
 .S NVAMED=$P($P(NODE,U),";")
 .S NVAMED=$E(NVAMED,$L(NVAMED))
 .I NVAMED="N" D
 ..S IFN=+$P(NODE,U,8)
 ..S STATUS=$$NVSTS^BEHORXFN(IFN,$P(NODE,U,9))
 ..S $P(NODE,U,9)=STATUS
 .I STATUS="EXPIRED" D
 ..I $P($P(NODE,U),";",2)["O" D
 ...S RXNO=+($P(NODE,U,1))
 ...S CHRONIC=$P($G(^PSRX(RXNO,9999999)),U,2)
 ...N X,X1,X2
 ...I CHRONIC S X1=DT,X2=-120 D C^%DTC S LDATE=X
 ...E  S X1=DT,X2=-14 D C^%DTC S LDATE=X
 ...S EXDATE=$P($G(^PSRX(RXNO,2)),U,6)
 ...I EXDATE<LDATE S KEEPMED=0
 ..I $P($P(NODE,U),";",2)["I" D
 ...S EXDATE=$P(NODE,U,4)
 ...S X1=DT,X2=-14 D C^%DTC S LDATE=X
 ...I EXDATE<LDATE S KEEPMED=0
 .I STATUS["DISCONTINUED" D
 ..I TYPE="OP" D
 ...I NVAMED="N" S KEEPMED=0 Q
 ...S X1=DT,X2=-30 D C^%DTC S LDATE=X
 ...S CANDATE=$P($G(^PSRX(RXNO,3)),U,5)
 ...I CANDATE<LDATE S KEEPMED=0
 ..I TYPE="UD" D
 ...S X1=DT,X2=-2 D C^%DTC S LDATE=X
 ...S CANDATE=$P(NODE,U,4)
 ...I CANDATE<LDATE S KEEPMED=0
 ..I STATUS="DISCONTINUED/EDIT"!(STATUS="DISCONTINUED (EDIT)") S KEEPMED=0
 .I STATUS="PENDING" D
 ..S IEN=+($P(NODE,U))
 ..I IEN>0 S REFILLS=$P($G(^PS(52.41,IEN,0)),U,11)
 ..S $P(^TMP("PS",$J,INDEX,0),U,5)=REFILLS
 ..;I STATUS="HOLD"!(STATUS["TRANSFER") S STATUS="OUTSIDE "_STATUS
 .I TYPE="" S KEEPMED=0
 .I KEEPMED D
 ..I $O(^TMP("PS",$J,INDEX,"A",0))>0 S TYPE="IV"
 ..E  I $O(^TMP("PS",$J,INDEX,"B",0))>0 S TYPE="IV"
 ..I TYPE="OP" S MEDTYPE=OUTPTYPE
 ..E  S MEDTYPE=INPTYPE
 ..I NVAMED="N" S MEDTYPE=NVATYPE
 .S DRUGCLAS=" "
 .S MED=$P(NODE,U,2)
 .I KEEPMED D
 ..S DRUGIDX=$O(^PSDRUG("B",MED,0))
 ..D GETCLASS
 ..I KEEPMED,+DRUGIDX=0 D  ;Find orderable item
 ...N IDX,ID,ORDIDX,TMPCLASS,CDONE,SDONE,TMPIDX,TMPNODE,ISSUPPLY
 ...S ID=$P(NODE,U),IDX=+ID,ID=$E(ID,$L(IDX)+1,$L(ID))
 ...S (DRUGIDX,ORDIDX)=0
 ...I ID="R;O" D
 ....S DRUGIDX=+$P($G(^PSRX(IDX,0)),U,6)
 ....S ORDIDX=+$P($G(^PSRX(IDX,"OR1")),U)
 ...I ID="P;O" D
 ....S DRUGIDX=+$P($G(^PS(52.41,IDX,0)),U,9)
 ....S ORDIDX=+$P($G(^PS(52.41,IDX,0)),U,8)
 ...I ID="P;I" D
 ....I $P($G(^PS(53.1,IDX,1,0)),U,4)=1 D
 .....S TMPIDX=$O(^PS(53.1,IDX,1,0)) I +TMPIDX D
 ......S DRUGIDX=$P($G(^PS(53.1,IDX,1,TMPIDX,0)),U)
 ....S ORDIDX=+$P($G(^PS(53.1,IDX,.2)),U)
 ....W !,ORDIDX
 ...I ID="U;I" D
 ....I $P($G(^PS(55,DFN,5,IDX,1,0)),U,4)=1 D
 .....S TMPIDX=$O(^PS(55,DFN,5,IDX,1,0)) I +TMPIDX D
 ......S DRUGIDX=$P($G(^PS(55,DFN,5,IDX,1,TMPIDX,0)),U)
 ....S ORDIDX=+$P($G(^PS(55,DFN,5,IDX,.2)),U)
 ...I ID="V;I" D
 ....I $P($G(^PS(55,DFN,"IV",IDX,"AD",0)),U,4)=1 D
 .....S TMPIDX=$O(^PS(55,DFN,"IV",IDX,"AD",0)) I +TMPIDX D
 ......S TMPIDX=$P($G(^PS(55,DFN,"IV",IDX,"AD",TMPIDX,0)),U)
 ......I +TMPIDX S DRUGIDX=$P($G(^PS(52.6,TMPIDX,0)),U,2)
 ....S ORDIDX=+$P($G(^PS(55,DFN,"IV",IDX,.2)),U)
 ...S DRUGCLAS=""
 ...D GETCLASS
 ...I KEEPMED,+DRUGIDX=0,+ORDIDX,DRUGCLAS="" D
 ....S IDX=0,ISSUPPLY=2,CDONE='CLASSORT,SDONE=+SUPPLIES
 ....F  S IDX=$O(^PSDRUG("ASP",ORDIDX,IDX)) Q:'IDX  D  Q:(CDONE&SDONE)
 .....S TMPNODE=$G(^PSDRUG(IDX,0))
 .....S TMPCLASS=$P(TMPNODE,U,2)
 .....I 'CDONE,TMPCLASS="" S CDONE=1,DRUGCLAS=""
 .....I 'CDONE D
 ......I DRUGCLAS="" S DRUGCLAS=TMPCLASS
 ......E  I DRUGCLAS'=TMPCLASS S CDONE=1,DRUGCLAS=""
 .....I 'SDONE D
 ......S ISSUPPLY=(($E(TMPCLASS,1,2)="XA")&($P(TMPNODE,U,3)["S"))
 ......I 'ISSUPPLY S SDONE=1
 ....I 'SUPPLIES,(ISSUPPLY=1) S KEEPMED=0
 ..I (DRUGCLAS="")!('CLASSORT) S DRUGCLAS=" "
 ..I AUTO=1 S $P(^TMP("PS",$J,INDEX,0),U,9)=STATUS_" (X)"
 .;
 .; *** Save wanted meds in "B" temp xref, removing duplicates ***
 .;
 .I KEEPMED D
 ..D ADDMED^BTIUMED1(1) ; Get XSTR to check for duplicates
 ..S IDATE=$P(NODE,U,15)
 ..I $P($P(NODE,U),";")["N" S IDATE=$$DT^XLFDT
 ..I $P(NODE,U,9)="PENDING"!($P(NODE,U,9)="HOLD") S IDATE=$$DT^XLFDT
 ..S OK='$D(@TARGET@("B",MED,XSTR))
 ..I 'OK,(IDATE>+@TARGET@("B",MED,XSTR)) S OK=1
 ..I 'OK,$P(@TARGET@("B",MED,XSTR),U,4)'=STATUS S OK=1
 ..I OK D
 ...S @TARGET@("B",MED,IDATE,XSTR)=IDATE_U_INDEX_U_MEDTYPE_U_STATUS_U_TYPE_U_DRUGCLAS_U_CHRONIC
 ...S EMPTY=0
 ...I DRUGCLAS=" " S UNKNOWNS=1
 ;
 ; *** Check for empty condition ***
 ;
 I EMPTY D  G LISTX
 .D ADD^BTIUMED1("No Medications Found")
 .D ADD^BTIUMED1(" ")
 ;
 ; *** Sort Meds in "C" temp xref - sort by Status,MedType,
 ;     Med Name, and reverse issue date, followed by a counter
 ;     to avoid erasing meds issued on the same day
 ;
 S MED="",CNT=1000000
 F  S MED=$O(@TARGET@("B",MED)) Q:MED=""  D
 .S IDATE=""
 .F  S IDATE=$O(@TARGET@("B",MED,IDATE)) Q:IDATE=""  D
 ..S XSTR=""
 ..F  S XSTR=$O(@TARGET@("B",MED,IDATE,XSTR)) Q:XSTR=""  D
 ...S NODE=@TARGET@("B",MED,IDATE,XSTR)
 ...S DATA=MED_U_$P(NODE,U,3)_U_$P(NODE,U,5),CNT=CNT+1
 ...S STATUS=$P(NODE,U,4)
 ...S @TARGET@("C",STATUS,DATA,(9999999-$P(NODE,U))_CNT)=$P(NODE,U,2)_U_$P(NODE,U,5)_U_$P(NODE,U,6)_U_$P(NODE,U,8)_U_$P(NODE,U,3)
 K @TARGET@("B")
 ;
 ; Read sorted data and save final version to TARGET
 ;
 S (DATA,LASTCLAS,LSTINDIC)="",(LASTMEDT,LASTSTS,COUNT,TOTAL)=0
 S $P(SPACE60," ",60)=" ",$P(DASH73,"=",73)="="
 D WARNING^BTIUMED1
 S STATUS="",MEDTYPE=""
 F  S STATUS=$O(@TARGET@("C",STATUS)) Q:STATUS=""  D
 .F  S DATA=$O(@TARGET@("C",STATUS,DATA)) Q:DATA=""  D
 ..S DRUGCLAS=$P(DATA,U,2),MED=$P(DATA,U,3),CNT=""
 ..F  S CNT=$O(@TARGET@("C",STATUS,DATA,CNT)) Q:CNT=""  D
 ...S INDEX=@TARGET@("C",STATUS,DATA,CNT)
 ...S TYPE=$P(INDEX,U,2),CHRONIC=$P(INDEX,U,3),MEDTYPE=$P(INDEX,U,5),INDEX=+INDEX
 ...S NODE=^TMP("PS",$J,INDEX,0)
 ...;If hold meds, find the reason and add it to the node data
 ...I STATUS="HOLD" D
 ....S HIEN=+($P(NODE,U))
 ....S REASON=$$GET1^DIQ(52,HIEN,99,"E")
 ....S NODE=NODE_U_REASON
 ...I CLININC=1 D
 ....S HIEN=+($P(NODE,U))
 ....S CLIN=$$GET1^DIQ(52,HIEN,9999999.21,"E")
 ....S $P(NODE,U,2)=$P(NODE,U,2)_" "_CLIN
 ...E  S $P(NODE,U,2)="    "_$P(NODE,U,2)
 ...I (STATUS'=LASTSTS) D  ; Create Header
 ....I 'HEADER Q
 ....S LASTSTS=STATUS,TAB=0
 ....I COUNT>0 D ADD^BTIUMED1(" ")
 ....S COUNT=0
 ....D ADD^BTIUMED1($E($E(SPACE60,1,47)_"Status"_SPACE60,1,60)_"Last Fill")
 ....S TEMP=STATUS_" "
 ....S TEMP=STATUS_" Medications"
 ....S TEMP=$E(TEMP_SPACE60,1,47)
 ....S TEMP=TEMP_"Refills"
 ....S TEMP=$E(TEMP_SPACE60,1,60)
 ....I MEDTYPE=INPTYPE S TEMP=TEMP_"Stop/Exp Dte"
 ....D ADD^BTIUMED1(TEMP),ADD^BTIUMED1(DASH73)
 ...S COUNT=COUNT+1,TOTAL=TOTAL+1
 ...D ADDMED^BTIUMED1(0)
 I COUNT'=TOTAL D
 .S TAB=0
 .D ADD^BTIUMED1(" ")
 .D ADD^BTIUMED1("(X)behind status of medication depicts that the medication was sent to an external pharmacy")
 K @TARGET@("C")
LISTX K ^TMP("PS",$J)
 Q "~@"_$NA(@TARGET)
 ;
GETCLASS ; Get Drug Class, filter out supplies
 I +DRUGIDX D
 .N TEMPNODE
 .S TEMPNODE=$G(^PSDRUG(DRUGIDX,0))
 .S DRUGCLAS=$P(TEMPNODE,U,2)
 .I 'SUPPLIES,($E(DRUGCLAS,1,2)="XA") D
 ..S KEEPMED='($P(TEMPNODE,U,3)["S")
 Q