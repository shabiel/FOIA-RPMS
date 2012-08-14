VENPCC1G ; IHS/OIT/GIS - VERSION 2.5 EXTENSIONS ; 
 ;;2.6;PCC+;;NOV 12, 2007
 ;
 ; 
 ;
VER22(DFN,PRV,VISIT,DEFEF,DEPTIEN) ;EP-EXTENSIONS FOR ANMC, GIMC AND OTHERS
 N TMP
 S TMP="^TMP(""VEN PRNT"",$J,1)"
 I $D(^DD(200,"B","MS4 PROVIDER NUMBER")) D MS4(PRV)
 I $D(^DD(200,"B","IHS ADC")) D ADC(PRV)
 D EAC(VISIT)
 D DEA(PRV)
 D MAIL(DFN)
 D PHONE(DFN)
 I $P($G(^VEN(7.41,DEFEF,5)),U,13) D MH(DFN,DEFEF)
 D MTYPE(DEFEF)
 D APPT(DFN)
 D DUR(DFN,DEPTIEN)
 D CVD(DFN)
 D DES(DFN)
 Q
 ;
DES(DFN) ; EP-DESIGNATED PROVIDERS IN b14-b16
 N PRV,MHP,MHM
 S PRV=$P($G(^AUPNPAT(DFN,0)),U,14) I PRV="" G DES1
 S PRV=$$PRV(PRV)
DES1 I PRV="" S PRV="Unknown"
 S @TMP@("b14")="PCP: "_PRV
 S MHP=$P($G(^AUPNPAT(DFN,17)),U,1)
 S MHP=$P($G(^VA(200,+MHP,0)),U)
 I $L(MHP) S MHP=$P(MHP,",",2)_" "_$P(MHP,",")
 I MHP="" S MHP="Unknown"
 S @TMP@("b15")="MH Provider: "_MHP
 S MHM=$P($G(^AUPNPAT(DFN,17)),U,4)
 S MHM=$P($G(^VA(200,+MHM,0)),U)
 I $L(MHM) S MHM=$P(MHM,",",2)_" "_$P(MHM,",")
 I MHM="" S MHM="Unknown"
 S @TMP@("b16")="MH Manager: "_MHM
 Q
 ; 
PRV(PRV) ; EP-GIVEN A PRIMARY PROVIDER IEN RETURN THE PROVIDER NAME
 N NAME,FNLN
 I '$G(PRV) Q ""
 I $G(^DD(9000001,.14,0))["VA(200" S NAME=$P($G(^VA(200,+PRV,0)),U) ; NEW PERSON FILE IMPLEMENTED
 E  S %=U_"DIC("_16_")",NAME=$P($G(@%@(+PRV,0)),U) ; NEW PERSON FILE NOT IMPLEMENTED
 I $L(NAME) S FNLN=$P(NAME,",",2)_" "_$P(NAME,",") Q FNLN
 Q ""
 ;
MS4(PRV) ; EP-MS4 PROVIDER CODE FOR ANMC STORED IN b2
 N CODE
 S CODE=$$GET1^DIQ(200,(PRV_","),"MS4 PROVIDER NUMBER")
 I $L(CODE) S @TMP@("b2")=CODE
 Q
 ;
ADC(PRV) ; EP-IHS ADC STORED IN b3
 N ADC
 S ADC=$$GET1^DIQ(200,(PRV_","),"IHS ADC")
 I $L($G(ADC)) S @TMP@("b3")=ADC
 Q
 ;
EAC(VISIT) ; EP-EXTERNAL ACCOUNT NUMBER STORED IN b4
 N EAC
 S EAC=$$GET1^DIQ(9000010,(VISIT_","),1211)
 I $L(EAC) S @TMP@("b4")=EAC
 Q
 ;
DEA(PRV) ; EP-DEA NUMBER STORED IN b5
 N DEA
 S DEA=$$GET1^DIQ(200,(PRV_","),53.2)
 I $L(DEA) S @TMP@("b5")=DEA
 Q
 ;
MAIL(DFN) ; EP-MAILING ADDRESS STORED IN b6-b9
 N STG,PCE,CNT,X
 S STG=".111^.114^.115^.116"
 F CNT=1:1:4 D
 . S X=$$GET1^DIQ(2,(DFN_","),$P(STG,U,CNT))
 . I $L(X) S @TMP@("b"_(5+CNT))=X
 . Q
 Q
 ;
PHONE(DFN) ; EP-PHONE NUMBERS STORED IN b10 AND b11
 N STG,X,CNT
 S CNT=1
 F STG=.131,.132 D
 . S X=$$GET1^DIQ(2,(DFN_","),STG)
 . I $L(X) S @TMP@("b"_(9+CNT))=X
 . S CNT=CNT+1
 . Q
 Q
 ;
DX(PRV,DFN,DEFEF,DEPTIEN) ; EP-GET PREFERRED DIAGNOSES
 I $L($T(DX^VENPCC1P)),$O(^VEN(7.34,0)) D DX^VENPCC1P(DEFEF,PRV,DFN,DEPTIEN) Q  ; NEW DX PREF LIST ; PATCHED BY GIS/OIT 10/6/05 ; PCC+ 2.5 PATCH 1
 NEW DIEN,GENERIC,ICD,IIEN,NAME,PTYPE,TOT,VAR,VAR1,X,%,INDX,SEC,CTYPE,CODE
 S PTYPE=$$CLASS^VENPCC1B(DFN) I PTYPE="" S STOP=1 Q
 S INDX=PRV_"."_PTYPE
 S CTYPE=$P($G(^VEN(7.41,DEFEF,5)),U,12)
 I '$D(^VEN(7.1,"AG",INDX)) S INDX=$$CP^VENPCCU(+$G(DEPTIEN))_"."_PTYPE
 I '$D(^VEN(7.1,"AG",INDX)) S INDX=$$GP^VENPCCU_"."_PTYPE
 S DIEN=0 F TOT=1:1:60 S DIEN=$O(^VEN(7.1,"AG",INDX,DIEN)) Q:'DIEN  D
 . S X=$G(^VEN(7.1,DIEN,0)),ICD=$P(X,U,2),NAME=$P(X,U,3),SEC=$P(X,U,6) I '$L(NAME) Q
 . S CODE=$S('CTYPE:ICD,CTYPE=1:SEC,CTYPE=2:(ICD_$S($L(SEC):"/",1:"")_SEC),1:"")
 . S NAME=$TR(NAME,$C(34),""),NAME=$E(NAME,1,27)
 . S VAR="d"_TOT,VAR1=VAR_"c"
 . S @TMP@(1,VAR)=NAME,@TMP@(1,VAR1)=CODE
 . Q
 K @TMP@(0)
 Q
 ; 
MH(DFN,DEFEF) ; EP-LAST 15 MH POVS
 N PIEN,IIEN,X,NIEN,NARR,VAR,VAR1,TOT,VIEN,DATE,Y
 S TOT=44,PIEN=999999999999
 F  S PIEN=$O(^AUPNVPOV("AC",DFN,PIEN),-1)  Q:TOT>59  Q:'PIEN  D  ; GET POVS IN REVERSE ORDER
 . S X=$G(^AUPNVPOV(PIEN,0)),NIEN=$P(X,U,4),IIEN=+X,VIEN=$P(X,U,3)
 . S ICD=$P($G(^ICD9(IIEN,0)),U) I +ICD<290!(+ICD>319.999999) Q  ; FILTER OUT NON MENTAL HEALTH DXS
 . S NARR=$G(^AUTNPOV(+$G(NIEN),0))
 . I $P($G(^VEN(7.41,DEFEF,5)),U,14) D  ; DISPLAY DATE WITH POV
 .. S Y=+$G(^AUPNVSIT(+VIEN,0)) I 'Y S DATE="<date unk>"
 .. I Y X ^DD("DD") S DATE=$P(Y,"@")
 .. I $L(DATE) S NARR=NARR_" ("_DATE_")"
 .. Q
 . I '$L(NARR) S NARR=$P($G(^ICD9(IIEN,0)),U,3) I '$L(NARR) S NARR="<missing narrative>"
 . S TOT=TOT+1
 . S VAR="d"_TOT,VAR1=VAR_"c"
 . S @TMP@(VAR)=$E(NARR,1,$S($P($G(^VEN(7.41,DEFEF,5)),U,14):35,1:22)) ; ALLOW MORE SPACE IF DATE INCLUDED
 . S @TMP@(VAR1)=ICD
 . Q
 S TOT=TOT+1
 F %=TOT:1:60 S @TMP@(("d"_%))="",@TMP@(("d"_%_"c"))="" ; CLEAN OUT THE REST OF THE RANGE
 Q
 ;
MTYPE(DEFEF) ; EP-MED HEADER = b12
 N TYPE,A,C
 S (A,C)=0
 S TYPE="All Meds"
 I '$G(DEFEF) G MT1
 I $P($G(^VEN(7.41,DEFEF,2)),U,7) S C=1
 I $P($G(^VEN(7.41,DEFEF,2)),U,8) S A=1
 I A,C S TYPE="All Active Chronic Meds" G MT1
 I A S TYPE="All Active Meds" G MT1
 I C S TYPE="All Chronic Meds"
MT1 S @TMP@("b"_12)=TYPE
 Q
 ; 
APPT(DFN) ; EP-DISPLAY PENDING APPTS IN b41-b50
 N DATE,ASTG,TIME,VDT,DSTG,AIEN,CLINIC,STG,TOT,DUR,CIEN,Y
 S TOT=0 ; COUNTER FOR 'FOUND' APPOINTMENTS
 S DATE=DT-.01 F  S DATE=$O(^DPT(DFN,"S",DATE)) Q:'DATE  D  I TOT>9 Q
 . ; FIND ALL FUTURE DATES WHEN THIS PT HAS AN APPT
 . ; QUIT WHEN YOU GET NEXT 10 PENDING APPTS FOR THIS PATIENT - ALL CLINICS
 . S ASTG=^DPT(DFN,"S",DATE,0) I '$L(ASTG) Q
 . I "CP"[$E($P(ASTG,U,2)_" ") Q  ; STOP LOOKING IF APPT WAS CANCELLED
 . S Y=DATE\1 X ^DD("DD") S VDT=Y ; FORMAT DATE
 . S TIME=$E($P(DATE,".",2)_"000",1,4) S:TIME>1300 TIME=TIME-1200 S:$L(TIME)=3 TIME=" "_TIME S:$E(TIME)="0" TIME=" "_$E(TIME,2,4) S TIME=$E(TIME,1,2)_":"_$E(TIME,3,4) ; FORMAT TIME
 . S CIEN=+ASTG,CLINIC=$P($G(^SC(CIEN,0)),U,1) I '$L(CLINIC) Q  ; GET CLINIC NAME
 . S AIEN=0 F  S AIEN=$O(^SC(CIEN,"S",DATE,1,AIEN)) Q:'AIEN  I +^SC(CIEN,"S",DATE,1,AIEN,0)=DFN D  I TOT>9 Q
 .. ; GET ALL APPTS FOR THIS CLINIC IN THIS CLINIC ON THE SPECIFIED DATE. STOP WHEN YOU FIND THIS PTS APPT.
 .. S DUR=$P(^SC(CIEN,"S",DATE,1,AIEN,0),U,2) ; GET THE VISIT DURATION
 .. I DUR S DUR=DUR_" min."
 .. S STG=VDT_" "_TIME_"  "_CLINIC
 .. I $L(DUR) S STG=STG_" ["_DUR_"]"
 .. S TOT=TOT+1 ; INCRIMENT THE APPT COUNTER (MAX ALLOWED IS 10)
 .. S @TMP@("b"_(40+TOT))=STG ; STORE RESULTS IN MAIL MERGE FIELDS b41-b50
 .. Q
 . Q
 Q
 ; 
DUR(DFN,DEPTIEN) ; EP-DISPLAY CURRENT APPOINTMENT IN b40
 N DATE,ASTG,TIME,VDT,DSTG,AIEN,CLINIC,STG,DUR,CIEN,CSIEN,DSIEN,STOP,Y
 S DSIEN=$P($G(^VEN(7.95,+$G(DEPTIEN),0)),U,4) I 'DSIEN Q  ; GET DEPT CLINIC STOP IEN
 S DATE=DT-.01 F  S DATE=$O(^DPT(DFN,"S",DATE)) Q:'DATE  Q:DATE>(DT+.9999)  D  I $G(STOP) Q
 . ; SEE IF PT HAS AT LEAST 1 APPT TODAY - OTHERWISE QUIT
 . S ASTG=^DPT(DFN,"S",DATE,0) I '$L(ASTG) Q
 . I "CP"[$E($P(ASTG,U,2)_" ") Q  ; STOP LOOKING IF APPT WAS CANCELLED
 . S Y=DATE\1 X ^DD("DD") S VDT=Y ; FORMAT DATE
 . S TIME=$E($P(DATE,".",2)_"000",1,4) S:TIME>1300 TIME=TIME-1200 S:$L(TIME)=3 TIME=" "_TIME S:$E(TIME)="0" TIME=" "_$E(TIME,2,4) S TIME=$E(TIME,1,2)_":"_$E(TIME,3,4) ; FORMAT TIME
 . S CIEN=+ASTG Q:'CIEN  S CLINIC=$P($G(^SC(CIEN,0)),U,1) I '$L(CLINIC) Q  ; GET CLINIC NAME
 . S CSIEN=$P($G(^SC(CIEN,0)),U,7) I CSIEN'=DSIEN Q  ; HOSPITAL LOC STOP CODE MUST MATCH PCC+ DEPT STOP CODE
 . S AIEN=0 F  S AIEN=$O(^SC(CIEN,"S",DATE,1,AIEN)) Q:'AIEN  I +^SC(CIEN,"S",DATE,1,AIEN,0)=DFN D  I $G(STOP) Q
 .. ; GET ALL APPTS FOR THIS THIS CLINIC ON THE SPECIFIED DATE. STOP WHEN YOU FIND THE PTS APPT. 
 .. S DUR=$P(^SC(CIEN,"S",DATE,1,AIEN,0),U,2) ; GET THE VISIT DURATION
 .. I DUR S DUR=DUR_" min."
 .. S STG=VDT_" "_TIME_"  "_CLINIC
 .. I $L(DUR) S STG=STG_" ["_DUR_"]"
 .. S STOP=1
 .. S @TMP@("b40")=STG ; STORE RESULTS IN MAIL MERGE FIELD b40
 .. Q
 . Q
 Q
 ;
CVD(DFN) ; EP-CVD INFO FOR ANMC IN b13
 N X,DOB,SEX,AGE
 S X=$G(^DPT(+$G(DFN),0)) I '$L(X) Q
 S SEX=$P(X,U,2) I SEX'="F" Q
 S DOB=$P(X,U,3) I 'DOB Q
 S AGE=(DT-DOB)\10000
 I AGE<40 Q
 I AGE>60 Q
 S @TMP@("b13")="CVD: __Can __Decl __Referred"
 Q
 ; 