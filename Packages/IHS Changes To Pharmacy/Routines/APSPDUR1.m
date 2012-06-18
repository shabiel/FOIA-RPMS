APSPDUR1 ;IHS/DSD/JCM/ENM - PHARMACY DUR PRINT;14-Oct-2009 14:36;SM
 ;;7.0;IHS PHARMACY MODIFICATIONS;**1008**;Sep 23, 2004
 ;THIS ROUTINE PRINTS THE PHARMACY DUR LISTING
 ;IT IS CALLED BY APSPDUR
 ;
 ;IHS/MSC/PLS - 01/02/09 - Routine updated
 ;
 Q
EN ;EP
 N APSPPG,APSPDT,DFN,RDATE,RX,TOTAL,DIV,NXT
 S (DX,DY)=1 X:$D(^%ZOSF("XY"))#2 ^("XY")
 U IO
 S (APSPPG,TOTAL)=0
 S DIV=0 F  S DIV=$O(^TMP($J,"PSODUR",DIV)) Q:'DIV  D
 .D HDR
 .S DFN=0 F  S DFN=$O(^TMP($J,"PSODUR",DIV,DFN)) Q:'DFN  D DATE
 I $E(IOST,1,2)'="P-" W !,"Press Return to Continue...." R X:DTIME Q:X="^"!($D(DTOUT))
 W !!,"TOTAL NUMBER OF ISSUES :  ",TOTAL
 I $E(IOST,1,2)="P-" W !,@IOF
 Q
DATE ;EP
 S RDATE=0 F  S RDATE=$O(^TMP($J,"PSODUR",DIV,DFN,RDATE)) Q:'RDATE  D RX
 Q
RX ;EP
 S RX=0 F  S RX=$O(^TMP($J,"PSODUR",DIV,DFN,RDATE,RX)) Q:'RX  D
 .S NXT=0 F  S NXT=$O(^TMP($J,"PSODUR",DIV,DFN,RDATE,RX,NXT)) Q:'NXT  D PRINT
 ;I $Y+4>IOSL,IOST["C-" S DIR("A")="ENTER '^' TO HALT",DIR(0)="FO" D ^DIR Q:$D(DTOUT)!($D(DUOUT))!($D(DIROUT))  W @IOF
 Q
PRINT ;EP
 N DATA,REM
 I $Y+4>IOSL W @IOF D HDR
 S DATA=^TMP($J,"DATA",NXT)
 W !,$$GET1^DIQ(2,DFN,.01)  ; Patient Name
 W ?35,$J($$HRN^AUPNPAT(DFN,DUZ(2)),7) ;Chart Number
 W ?45,$$FMTE^XLFDT(RDATE,"5ZD")  ; Release Date
 W ?55,$J($P(DATA,U,4),4) ;QTY
 W ?61,$E($$GET1^DIQ(200,$P(DATA,U,6),.01),1,18) ;Provider
 S REM=$P(DATA,U,7)
 I $L(REM),REM'["RENEWED FROM" W !,"Remarks: ",REM,! ;Remarks
 S TOTAL=TOTAL+1
 Q
HDR ;
 N DN,CT,APSPDV
 S APSPPG=APSPPG+1
 S APSPDV=$P(^PS(59,DIV,0),U)
 W !!,$S($G(DUZ(2)):$P(^DIC(4,DUZ(2),0),U)_" ",1:""),"DRUG USE EVALUATION LIST"
 W ?73,"Page ",APSPPG
 W !,"DATE OF LISTING: "_$$FMTE^XLFDT($$DT^XLFDT(),"5Z")
 I APSPDIV="*" W !,"All Divisions for: ",$P(^DIC(4,DUZ(2),0),U,1)
 W !,"Division: ",$G(APSPDV)
 W !!,"This list will include all Outpatients dispensed one or any"
 W " combination ",!,"of the following drug(s) from "
 W APSPBDF," through ",APSPEDF,!!
 S (DN,CT)=0
 F  S DN=$O(APSPDARY(DN)) Q:'DN  W $P(^PSDRUG(DN,0),U),", " S CT=CT+1 I CT=3 W ! S CT=0
 W !!,"PATIENT",?35,"CHART",?45,"DATE"
 W !,"NAME",?35,"NUMBER",?45,"DISPENSED",?55,"QTY",?61,"MD"
 W ! F I=1:1:IOM W "_"
 I '$D(^TMP($J,"PSODUR")) W !!?20,"NO PATIENTS RECEIVED MEDICATION"
 W !
 Q