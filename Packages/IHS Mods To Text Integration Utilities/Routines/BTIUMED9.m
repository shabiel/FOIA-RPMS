BTIUMED9 ; SLC/JM - Active/Recent Med Objects Routine ;10-May-2013 09:22;DU
 ;;1.0;TEXT INTEGRATION UTILITIES;**1012**;Jun 20, 1997;Build 45
 Q
LIST(DFN,TARGET,CLININC) ; EP
 ;
 ; This is the TIU Medication object for Suspended meds
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
 N LASTMEDT,LASTSTS,COUNT,TOTAL,SPACE60,DASH73,TEMP,LINE,TAB,HEADER,CLASSORT,ERX
 N DRUGCLAS,DRUGIDX,LASTCLAS,OLDTAB,OLDHEADR,UNKNOWNS,LSTINDIC,SUPPLIES,AUTO
 N IFN,NVATYPE,NVAMED,NVASTR,TIUXSTAT,CLIN,HIEN,IEN,REASON,REFILLS,COUNTER,EVENT
 N %,%H,STOP,LSTFD ;Clean up after external calls...
 S (NEXTLINE,TAB,HEADER,UNKNOWNS)=0,LLEN=47
 K @TARGET,^TMP("PS",$J)
 ; Check for Pharmacy Package and required patches
 I '$$PATCHSOK^TIULMED3 G LISTX ;P213
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
 .S CHRONIC="",AUTO=0,ERX=""
 .S NODE=$G(^TMP("PS",$J,INDEX,0))
 .S KEEPMED=($L($P(NODE,U,2))>0) ;Discard Blank Meds
 .;Group meds by status
 .S STATUS=$P(NODE,U,9)
 .Q:STATUS'="ACTIVE/SUSP"
 .I STATUS="ACTIVE/SUSP"
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
 ..S DRUGIDX=$$IENNAME^TIULMED2(MED)
 ..D GETCLASS
 ..I KEEPMED,+DRUGIDX=0 D  ;Find orderable item
 ...N IDX,ID,ORDIDX,TMPCLASS,CDONE,SDONE,TMPIDX,TMPNODE,ISSUPPLY
 ...S ID=$P(NODE,U),IDX=+ID,ID=$E(ID,$L(IDX)+1,$L(ID))
 ...S (DRUGIDX,ORDIDX)=0
 ...K ^TMP($J,"TIULMED")
 ...; IDX is Order #; ID indicates what file.  See IA 2400
 ...;R;O MED will always be in Drug File (Unless Drug File entry was
 ...;changed after ordering.
 ...I ID="R;O" D
 ....D RX^PSO52API(DFN,"TIULMED",IDX,"","0,O") ; IA 4820
 ....S DRUGIDX=+$G(^TMP($J,"TIULMED",DFN,IDX,6))
 ....S ORDIDX=+$G(^TMP($J,"TIULMED",DFN,IDX,"OI"))
 ...I ID="P;O" D
 ....D PEN^PSO5241(DFN,"TIULMED",IDX) ; IA 4821
 ....S DRUGIDX=+$G(^TMP($J,"TIULMED",DFN,IDX,11))
 ....S ORDIDX=+$G(^TMP($J,"TIULMED",DFN,IDX,8))
 ...I ID="P;I" D
 ....I $P($G(^PS(53.1,IDX,1,0)),U,4)=1 D
 .....S TMPIDX=$O(^PS(53.1,IDX,1,0)) I +TMPIDX D
 ......S DRUGIDX=$P($G(^PS(53.1,IDX,1,TMPIDX,0)),U)
 ....S ORDIDX=+$P($G(^PS(53.1,IDX,.2)),U)
 ....W !,ORDIDX
 ...I ID="U;I" D
 ....D PSS431^PSS55(DFN,IDX,"","","TIULMED") ; IA 4826
 ....I +$G(^TMP($J,"TIULMED",IDX,"DDRUG",0))=1 D
 .....S TMPIDX=$O(^TMP($J,"TIULMED",IDX,"DDRUG",0)) Q:TMPIDX'>0
 .....S DRUGIDX=+$G(^TMP($J,"TIULMED",IDX,"DDRUG",TMPIDX,.01))
 ....S ORDIDX=+$G(^TMP($J,"TIULMED",IDX,108))
 ...I ID="V;I" D
 ....D PSS436^PSS55(DFN,IDX,"TIULMED") ; IA 4826
 ....; Get ORDIDX before DRUGIDX since global is not there after DRUGIDX
 ....S ORDIDX=+$G(^TMP($J,"TIULMED",IDX,130))
 ....I ^TMP($J,"TIULMED",IDX,"ADD",0)=1 D
 .....S TMPIDX=$O(^TMP($J,"TIULMED",IDX,"ADD",0)) I +TMPIDX D
 ......S TMPIDX=+$G(^TMP($J,"TIULMED",IDX,"ADD",TMPIDX,.01))
 ......I +TMPIDX S DRUGIDX=$$DRGIEN^TIULMED2(TMPIDX) ; IA 4662
 ...S DRUGCLAS=""
 ...D GETCLASS
 ...I KEEPMED,+DRUGIDX=0,+ORDIDX,DRUGCLAS="" D
 ....S IDX=0,ISSUPPLY=2,CDONE='CLASSORT,SDONE=+SUPPLIES
 ....N LIST S LIST="TIULMED" K ^TMP($J,LIST)
 ....D DRGIEN^PSS50P7(ORDIDX,"",LIST) ; IA 4662
 ....F  S IDX=$O(^TMP($J,LIST,IDX)) Q:'IDX  D  Q:(CDONE&SDONE)
 .....S TMPCLASS=$$DRGCLASS^TIULMED2(IDX)
 .....S TMPNODE=U_TMPCLASS_U_$$DEA^TIULMED2(IDX)
 .....I 'CDONE,TMPCLASS="" S CDONE=1,DRUGCLAS=""
 .....I 'CDONE D
 ......I DRUGCLAS="" S DRUGCLAS=TMPCLASS
 ......E  I DRUGCLAS'=TMPCLASS S CDONE=1,DRUGCLAS=""
 .....I 'SDONE D
 ......S ISSUPPLY=(($E(TMPCLASS,1,2)="XA")&($P(TMPNODE,U,3)["S"))
 ......I 'ISSUPPLY S SDONE=1
 ....I 'SUPPLIES,(ISSUPPLY=1) S KEEPMED=0
 ..I (DRUGCLAS="")!('CLASSORT) S DRUGCLAS=" "
 ..I AUTO=1 D
 ...S ERX=$P($G(^PSRX(RXNO,999999921)),U,4)
 ...I +ERX S ERX=ERX_";"_RXNO
 ...S $P(^TMP("PS",$J,INDEX,0),U,9)=STATUS_" (X)"
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
 ...S @TARGET@("B",MED,IDATE,XSTR)=IDATE_U_INDEX_U_MEDTYPE_U_STATUS_U_TYPE_U_DRUGCLAS_U_CHRONIC_U_ERX
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
 ...S @TARGET@("C",STATUS,DATA,(9999999-$P(NODE,U))_CNT)=$P(NODE,U,2)_U_$P(NODE,U,5)_U_$P(NODE,U,7)_U_$P(NODE,U,8)_U_$P(NODE,U,3)
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
 ...S TYPE=$P(INDEX,U,2),CHRONIC=$P(INDEX,U,3),MEDTYPE=$P(INDEX,U,5),ERX=$P(INDEX,U,4),INDEX=+INDEX
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
 ...I ERX'="" S $P(NODE,U,31)=ERX
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
 D GETCLASS^TIULMED3
 Q