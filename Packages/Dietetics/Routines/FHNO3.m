FHNO3	; HISC/REL - Supplemental Feeding Lists ;5/14/93  13:36 
	;;5.0;Dietetics;;Oct 11, 1995
	W @IOF,!!?24,"WARD SUPPLEMENTAL FEEDING LISTS",!!
D0	R !!,"Select by S=SUPPLEMENTAL FEEDING SITE or W=WARD: ",XX:DTIME G:'$T!("^"[XX) KIL I "sw"[XX S X=XX D TR^FH S XX=X
	I XX'?1U!("SW"'[XX) W *7," Enter S or W" G D0
	I XX="S" S WRDS=$O(^FH(119.74,0)) I WRDS'<1,$O(^FH(119.74,WRDS))<1 G AR
	I XX="W" S WRDS=$O(^FH(119.6,0)) I WRDS'<1,$O(^FH(119.6,WRDS))<1 S WRDS=0 G AR
	I XX="S" G D2
D1	R !!,"Select WARD (or ALL): ",X:DTIME G:'$T!("^"[X) KIL D:X="all" TR^FH I X="ALL" S WRDS=0,XX="W"
	I X'="ALL" K DIC S DIC="^FH(119.6,",DIC(0)="EMQ" D ^DIC G:Y<1 D1 S WRDS=+Y
	G AR
D2	R !!,"Select SUPPLEMENTAL FEEDING SITE (or ALL): ",X:DTIME G:'$T!("^"[X) KIL D:X="all" TR^FH I X="ALL" S WRDS=0,XX="S"
	I X'="ALL" K DIC S DIC="^FH(119.74,",DIC(0)="EMQ" D ^DIC G:Y<1 D2 S WRDS=+Y
AR	R !!,"Print Patients: (A=Alphabetically  R=Room-Bed) R// ",PRN:DTIME G:'$T!(PRN["^") KIL S:PRN="" PRN="R" I "ar"[PRN S X=PRN D TR^FH S PRN=X
	I PRN'?1U!("AR"'[PRN) W *7," Enter A or R" G AR
L0	W ! K IOP,%ZIS S %ZIS("A")="Select LIST Printer: ",%ZIS="MQ" D ^%ZIS K %ZIS,IOP G:POP KIL
	I $D(IO("Q")) S FHPGM="^FHNO31",FHLST="WRDS^XX^PRN" D EN2^FH G KIL:'WRDS,D0
	U IO D ^FHNO31 D ^%ZISC K %ZIS,IOP G KIL:'WRDS,D0
KIL	K ^TMP($J),^TMP("FH",$J) G KILL^XUSCLEAN