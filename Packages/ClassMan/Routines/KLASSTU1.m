KLASSTU1 ; DIRECT KEYBOARD INPUT TO GLOBAL (FOR TAPE) ;DEC 18,1990@13:54:58
 ;;1.0
ST S M=LIMIT,TC="",TMC="X ^%ZOSF(""TRMRD"")",C=KLSTMC,CC=$C(CTRL),X=240 X ^%ZOSF("RM"),^("EON"),^("TRMON")
 U IO(0) W !,"Entering Direct Mode",!
 K DIC,DIE S DIE="^KLAS(1200,JOB,""M"",",DA(1)=JOB,DA=STUDA,DR="1///"_"BDIRECT" D ^DIE
CON W !,"Enter CTRL-",$C(CTRL+64)," twice to Exit Direct Mode",!
RD W TC,*17 R X#200:1 X TMC W *19 S X=TC_X,TC="" I $T G:Y=CTRL QRD S TC=$C(Y)
 G:$D(^KLAS(1200,JOB,"M",STUDA,"AMSG")) QRD1
 I $L(X) S:C=M C=0 S C=C+1,^KLAS(1200,JOB,"R",C,0)=X,^KLAS(1200,JOB,"R1")=C,KLSTMC=C G RD
 G RD
QRD W *17,*7 R X#1:8 X TMC W *19 I $T G:Y=CTRL QRD1 S TC=$C(CTRL)_X G RD
 I X=CC G QRD1
 G RD
QRD1 S KLSTMC=C,X=0 X ^%ZOSF("RM"),^("EOFF") U IO(0) W !,"Ending Direct Mode",! U IO(0) W *17
 K DIE,DIC S DIE="^KLAS(1200,JOB,""M"",",DA=STUDA,DA(1)=JOB,DR="1///"_"EDIRECT" D ^DIE K DIE,DR,DA
 S (KLMCNT,KLWCNT)=^KLAS(1200,JOB,"P1")
 Q
VIEW ;
 R *X:3 D:X=39 XRAY^KLASMAN Q:X'=42  W ! S KLNS=0 F KLNSC=1:1 S KLNS=$O(^KLAS(1200,JOB,"M",KLNS)) Q:+KLNS'>0  D PSTU
 R !!,"<CR> TO CONTINUE ",X:10 W ! Q
PSTU F KLZZ=4:1:6 S KLZZ(KLZZ)=$P(^KLAS(1200,JOB,"M",KLNS,0),U,KLZZ)
 S Y=KLZZ(4) X ^DD("DD") W !,KLNSC,?5,$P(^KLAS(1200,JOB,"M",KLNS,0),"^"),?20,Y,?30," PORT: ",KLZZ(5)," JOB/PID: ",KLZZ(6) K KLZZ,Y 
 Q
PURGE I ^KLAS(1200,JOB,"P3")'="PURGE" G STOP^KLASSTU
 F I=1:1:20 W *7
 R !,"Please enter a Carriage Return to show you are ALIVE !! (you have 60 seconds) ",X:60 G:$T=0&(X="") STOP^KLASSTU
 W !,"Glad you are still with us !!",!
 S DIC(0)="QMLZ",DIC="^KLAS(1200,"_JOB_",""M"",",X=NAME_" "_STUDA_" "_IO_" "_$J,DA(1)=JOB,DINUM=STUDA,DIC("DR")="1///"_NAME_" HAS JOINED" D FILE^DICN
 H 3 G LOOP^KLASSTU
 Q  ;---------------------------------------------