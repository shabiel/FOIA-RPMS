BARRNBRE ; IHS/SD/POT - Non Ben Payment Report PART 4
 ;;1.8;IHS ACCOUNTS RECEIVABLE;**24**;OCT 26, 2005;Build 69
 ; IHS/SD/POT 07/15/13 HEAT114352 NEW REPORT BAR*1.8*24
 Q
 ;
CHKTRANS(BARTR) ;EP - CALLED FROM BARRNBRA
 ; for checking Transaction File data parameters
 S BARP("HIT")=0
 S:$G(BAR("SUBR"))="" BAR("SUBR")=$S($G(BAR("RTN"))'="":BAR("RTN"),1:"UNKNOWN CALL")
 I '$D(^BARTR(DUZ(2),BARTR,0)) S:$G(DEBUG) ^TMP($J,"BAR-"_BAR("SUBR"),"REASON REJECTED","NO ZERO NODE",BARTR)="" Q
 S BARTR(0)=$G(^BARTR(DUZ(2),BARTR,0))  ; A/R Transaction 0 node
 I '$D(^BARTR(DUZ(2),BARTR,1)) S:$G(DEBUG) ^TMP($J,"BAR-"_BAR("SUBR"),"REASON REJECTED","NO 1 NODE",BARTR)="" Q
 S BARTR(1)=$G(^BARTR(DUZ(2),BARTR,1))  ; A/R Transaction 1 node
 S BARTR("DATA SRC")=$S($P(BARTR(1),U,6)'="":$P(BARTR(1),U,6),1:"m")  ;A/R Transaction DATA SOURCE (e=ERA posted)
 S BARTR("T")=$P(BARTR(1),U)            ; Transaction type
 S BARTR("ADJ CAT")=$P(BARTR(1),U,2)    ;Adjustment Category
 S BARTR("ADJ TYPE")=$P(BARTR(1),U,3)   ;Adjustment Type
 S:BARTR("T")="" BARTR("T")="NULL"
 S:BARTR("ADJ CAT")="" BARTR("ADJ CAT")="NULL"
 S:BARTR("ADJ TYPE")="" BARTR("ADJ TYPE")="NULL"
 ;ADD TRANS TYPE/ADJ CAT/ADJ TYPE INCLUSION
 I $D(BARY("TRANS TYPE")),'$D(BARY("TRANS TYPE",BARTR("T"))) D  Q
 .S:$G(DEBUG) ^TMP($J,"BAR-"_BAR("SUBR"),"REASON REJECTED","NOT CHOSEN TRANSACTION TYPE",$P(BARTR(0),U))=BARTR("T")
 I $D(BARY("TRANS TYPE","ADJ CAT")),'$D(BARY("TRANS TYPE","ADJ CAT",BARTR("ADJ CAT"))) D  Q
 .S:$G(DEBUG) ^TMP($J,"BAR-"_BAR("SUBR"),"REASON REJECTED","NOT CHOSEN ADJUSTMENT CATEGORY",$P(BARTR(0),U))=BARTR("ADJ CAT")
 I $D(BARY("TRANS TYPE","ADJ TYPE")),'$D(BARY("TRANS TYPE","ADJ TYPE",BARTR("ADJ TYPE"))) D  Q    ;TMM*1.8*19
 .S:$G(DEBUG) ^TMP($J,"BAR-"_BAR("SUBR"),"REASON REJECTED","NOT CHOSEN ADJ TYPE",$P(BARTR(0),U))=BARTR("ADJ TYPE")
 S BARTR("DT")=$P(BARTR(0),U)           ; Transaction date/time
 S BARTR("B")=$P(BARTR(0),U,14)         ; A/R Collection batch IEN
 K BARTR("B DT")
 I BARTR("B")'="" D
 .S BARTR("B DT")=$P($P($G(^BARCOL(DUZ(2),BARTR("B"),0)),U,4),".") ;
 S:BARTR("B")="" BARTR("B")="No Collection Batch"
 S BARTR("IT")=$P(BARTR(0),U,15)        ; A/R Collection batch item
 S:BARTR("IT")="" BARTR("IT")="No Collection Batch Item"
 ;
 K BAR("QUIT")
 I $G(BARY("DT"))="B" D  Q:$G(BAR("QUIT"))
 .I '$G(BARTR("B DT")) S BAR("QUIT")=1 S:$G(DEBUG) ^TMP($J,"BAR-"_BAR("SUBR"),"REASON REJECTED","NO BATCH DATE",$P(BARTR(0),U))="" Q
 .I $D(BARTR("B DT")) D  Q:$G(BAR("QUIT"))      ; Not chosen batch date
 ..S:BARTR("B DT")<BARY("DT",1) BAR("QUIT")=1
 ..S:BARTR("B DT")>BARY("DT",2) BAR("QUIT")=1
 ..I $G(BAR("QUIT")) S:$G(DEBUG) ^TMP($J,"BAR-"_BAR("SUBR"),"REASON REJECTED","NOT CHOSEN BATCH DATE",$P(BARTR(0),U))=""
 ;END
 S BARTR("AR")=$P(BARTR(0),U,13)        ; Entry by  (AR Clerk)
 S:BARTR("AR")="" BARTR("AR")=9999999
 S:'$D(BARY("AR")) BARTR("AR")=0
 S BARTR("CR-DB")=$$GET1^DIQ(90050.03,BARTR,3.5)
 S BAR=$P(BARTR(0),U,4)                  ; A/R Bill IEN
 I $D(BARY("BATCH")),BARTR("T")=100 S BAR("UN-ALLOCATED",BARTR("IT"))=$G(BAR("UN-ALLOCATED",BARTR("IT")))+BARTR("CR-DB")_U_DUZ(2)
 I '+BAR S:$G(DEBUG) ^TMP($J,"BAR-"_BAR("SUBR"),"REASON REJECTED","NO BILL FOR TRANSACTION",$P(BARTR(0),U))=""
 Q:'+BAR                                 ; No bill for transaction
 I '$D(^BARBL(DUZ(2),BAR)) S:$G(DEBUG) ^TMP($J,"BAR-"_BAR("SUBR"),"REASON REJECTED","TRANS PTS TO NON EXIST BILL",$P(BARTR(0),U))=""
 Q:'$D(^BARBL(DUZ(2),BAR))           ; Trans points to non-existent bill
 S BAR(0)=$G(^BARBL(DUZ(2),BAR,0))       ; A/R Bill 0 node
 S BAR(10)=$G(^BARBL(DUZ(2),BAR,1))      ; A/R Bill 1 node
 ;
 S BARTR("DOS BEGIN")=$P(BAR(10),U,2)      ;A/R Bill DOS BEGIN
 S BARTR("3P APPROVAL")=$P(BAR(0),U,18)    ;3P APPROVAL DATE
 S BARTR("3P PRINT")=$P(BAR(0),U,19)       ;3P PRINT DATE
 K BAR("QUIT")
 I $G(BARY("DT"))="V" D  Q:$G(BAR("QUIT"))       ; Not chosen visit date
 . S:BARTR("DOS BEGIN")<BARY("DT",1) BAR("QUIT")=1
 . S:$P(BARTR("DOS BEGIN"),".")>BARY("DT",2) BAR("QUIT")=1
 . I $G(BAR("QUIT")) S:$G(DEBUG) ^TMP($J,"BAR-"_BAR("SUBR"),"REASON REJECTED","NOT CHOSEN VISIT DATE",$P(BARTR(0),U))=""
 I $G(BARY("DT"))="A" D  Q:$G(BAR("QUIT"))       ; Not chosen approval date
 . S:BARTR("3P APPROVAL")<BARY("DT",1) BAR("QUIT")=1
 . S:$P(BARTR("3P APPROVAL"),".")>BARY("DT",2) BAR("QUIT")=1
 . I $G(BAR("QUIT")) S:$G(DEBUG) ^TMP($J,"BAR-"_BAR("SUBR"),"REASON REJECTED","NOT CHOSEN APPROVAL DATE",$P(BARTR(0),U))=""
 I $G(BARY("DT"))="X" D  Q:$G(BAR("QUIT"))       ; Not chosen export date
 . S:BARTR("3P PRINT")<BARY("DT",1) BAR("QUIT")=1
 . S:$P(BARTR("3P PRINT"),".")>BARY("DT",2) BAR("QUIT")=1
 . I $G(BAR("QUIT")) S:$G(DEBUG) ^TMP($J,"BAR-"_BAR("SUBR"),"REASON REJECTED","NOT CHOSEN EXPORT DATE",$P(BARTR(0),U))=""
 ;S BARTR("I")=$P(BAR(0),U,3)             ; A/R Account ;12/15/2013 P.OTT
 S BARTR("I")=$P(BARTR(0),U,6)             ; A/R Account ;12/15/2013 P.OTT
 S BARTR("L")=$P(BAR(10),U,8)            ; Visit location
 S BAR("PV")=$P(BAR(10),U,13)            ; Provider (New Person)
 S BAR("V")=$P(BAR(10),U,14)             ; Visit type (3P Visit Type)
 S BAR("C")=$P(BAR(10),U,12)             ; Clinic  (Clinic Stop File)
 S BAR("DS")=$$GET1^DIQ(90050.01,BAR,23)   ; Discharge Service (#)
 I BARTR("I")]"" D
 . S D0=BARTR("I")
 . S BARTR("BI")=$$VALI^BARVPM(8)     ; Insurer Type
 I $G(BARTR("BI"))=""  S BARTR("BI")="No Billing Entity"
 I BARTR("BI")'="No Billing Entity" D
 . S BARTR("ALL")="O"                               ; Other Allow Cat
 . I BARTR("BI")="G" S BARTR("ALL")="O" Q           ;
 . I BARTR("BI")="R"!(BARTR("BI")="MD")!(BARTR("BI")="MH") S BARTR("ALL")="R" Q           ; Medicare Allow Cat
 . I BARTR("BI")="D" S BARTR("ALL")="D" Q           ; Medicaid Allow Cat
 . I BARTR("BI")="K" S BARTR("ALL")="D" Q           ; CHIPS is lumped with Medicaid  ;
 . I ",F,M,H,P,"[(","_BARTR("BI")_",") S BARTR("ALL")="P" Q  ; Private  ;
 I $G(BARTR("ALL"))=""  S BARTR("ALL")="No Allowance Category"
 I BARTR("L")=""!(BARTR("I")="")!(BARTR("DT")="") D
 .S:$G(DEBUG) ^TMP($J,"BAR-"_BAR("SUBR"),"REASON REJECTED","NULL LOCATION^INS TYPE^TRANS DATE/TIME",$P(BARTR(0),U))=BARTR("L")_U_BARTR("I")_U_BARTR("DT")
 Q:BARTR("L")=""!(BARTR("I")="")!(BARTR("DT")="")
 I $D(BARY("LOC")),BARY("LOC")'=BARTR("L") D  Q      ; Not chosen location
 .S:$G(DEBUG) ^TMP($J,"BAR-"_BAR("SUBR"),"REASON REJECTED","NOT CHOSEN LOCATION",$P(BARTR(0),U))=""
 I $D(BARY("ARACCT")),'$D(BARY("ARACCT",BARTR("I"))) D  Q  ;Not chosn acct
 .S:$G(DEBUG) ^TMP($J,"BAR-"_BAR("SUBR"),"REASON REJECTED","NOT CHOSEN ACCT",$P(BARTR(0),U))=""
 I $D(BARY("ACCT")),BARY("ACCT")'=BARTR("I") D  Q    ; Not chosen A/R acct      ;TMM*1.8*19
 .S:$G(DEBUG) ^TMP($J,"BAR-"_BAR("SUBR"),"REASON REJECTED","NOT CHOSEN A/R ACCT-"_BARTR("I"),$P(BARTR(0),U))=""
 I $G(BARY("SORT"))="V",BAR("V")="" S BAR("V")=99999
 I $G(BARY("SORT"))="C",BAR("C")="" S BAR("C")=99999
 I $D(BARY("AR")),BARY("AR")'=BARTR("AR") D  Q       ; Not chosen AR Clerk
 .S:$G(DEBUG) ^TMP($J,"BAR-"_BAR("SUBR"),"REASON REJECTED","NOT CHOSEN AR CLERK",$P(BARTR(0),U))=""
 I $D(BARY("PRV")),BARY("PRV")'=BAR("PV") D  Q       ; Not chosen provider
 .S:$G(DEBUG) ^TMP($J,"BAR-"_BAR("SUBR"),"REASON REJECTED","NOT CHOSEN PROV",$P(BARTR(0),U))=""
 ;I $D(BARY("TYP")),(U_BARY("TYP")_U)'[(U_BARTR("BI")_U) D  Q    ; Not chosen Bill entity
 ;. ;W !,"NOT BILL ENT; ",BARTR(0)_":  "_BARTR("BI")_":  "_BARTR("I") R AWD 12/15/2013
 ;.S:$G(DEBUG) ^TMP($J,"BAR-"_BAR("SUBR"),"REASON REJECTED","NOT CHOSEN BILL ENTITY",$P(BARTR(0),U))=""
 I $D(BARY("ITYP")),BARY("ITYP")'=BARTR("BI") D  Q  ; Not chosen Ins Type
 .S:$G(DEBUG) ^TMP($J,"BAR-"_BAR("SUBR"),"REASON REJECTED","NOT CHOSEN INS TYPE",$P(BARTR(0),U))=""
 I $D(BARY("ALL")),(+BARY("ALL")=BARY("ALL")) S BARY("ALL")=$$CONVERT^BARRSL2(BARY("ALL"))
 I $D(BARY("ALL")),BARY("ALL")'=BARTR("ALL") D  Q     ; Not chosen Allow Cat
 .S:$G(DEBUG) ^TMP($J,"BAR-"_BAR("SUBR"),"REASON REJECTED","NOT CHOSEN ALLOW CAT",$P(BARTR(0),U))=""
 I $D(BARY("BATCH")),BARY("BATCH")'=BARTR("B") D  Q  ; Not chosen batch
 .S:$G(DEBUG) ^TMP($J,"BAR-"_BAR("SUBR"),"REASON REJECTED","NOT CHOSEN BATCH",$P(BARTR(0),U))=""
 I $D(BARY("ITEM")),BARY("ITEM")'=BARTR("IT") D  Q   ; Not chosen item
 .S:$G(DEBUG) ^TMP($J,"BAR-"_BAR("SUBR"),"REASON REJECTED","NOT CHOSEN ITEM",$P(BARTR(0),U))=""
 I $D(BARY("CLIN")),'$D(BARY("CLIN",BAR("C"))) D  Q  ; Not chosen clinic
 .S:$G(DEBUG) ^TMP($J,"BAR-"_BAR("SUBR"),"REASON REJECTED","NOT CHOSEN CLINIC",$P(BARTR(0),U))=""
 I $D(BARY("VTYP")),'$D(BARY("VTYP",BAR("V"))) D  Q  ; Not chosen visit typ
 .S:$G(DEBUG) ^TMP($J,"BAR-"_BAR("SUBR"),"REASON REJECTED","NOT CHOSEN VISIT TYP",$P(BARTR(0),U))=""
 I $D(BARY("DSCH")),BAR("DS")="" S BAR("DS")=99999
 I $D(BARY("DSCH")),'$D(BARY("DSCH",BAR("DS"))) D  Q  ;Not chosen discharge svc
 .S:$G(DEBUG) ^TMP($J,"BAR-"_BAR("SUBR"),"REASON REJECTED","NOT CHOSEN DISCHARGE SVC",$P(BARTR(0),U))=""
 K BAR("QUIT")
 I $G(BARY("DT"))="T" D  Q:$G(BAR("QUIT"))       ; Not chosen trans date
 . S:BARTR("DT")<BARY("DT",1) BAR("QUIT")=1
 . S:$P(BARTR("DT"),".")>BARY("DT",2) BAR("QUIT")=1
 . I $G(BAR("QUIT")) S:$G(DEBUG) ^TMP($J,"BAR-"_BAR("SUBR"),"REASON REJECTED","NOT CHOSEN TRANS DATE",$P(BARTR(0),U))=""
 I $D(BARY("PER")) D  Q:$G(BAR("QUIT"))   ; Not chosen period date range
 . S:BARTR("DT")<BARBDT BAR("QUIT")=1
 . S:$P(BARTR("DT"),".")>BAREDT BAR("QUIT")=1
 . I $G(BAR("QUIT")) S:$G(DEBUG) ^TMP($J,"BAR-"_BAR("SUBR"),"REASON REJECTED","NOT CHOSEN PERIOD DATE",$P(BARTR(0),U))=""
 I $D(BARY("DATA SRC")) D  Q:$G(BAR("QUIT"))
 .I BARY("DATA SRC")="MANUAL",(BARTR("DATA SRC")="e") S BAR("QUIT")=1
 .I BARY("DATA SRC")="ELECTRONIC",(BARTR("DATA SRC")="m") S BAR("QUIT")=1
 S BARP("HIT")=1
 Q