ACGSIMP2 ;IHS/OIRM/DSD/THL,AEF - CON'T OF ACGSIMP1 SETS LOCAL VARIABLES;  [ 03/27/2000   2:22 PM ]
 ;;2.0t1;CONTRACT INFORMATION SYSTEM;;FEB 16, 2000
OUT ;EP;TO UPDATE ENVIRONMENT AFTER IMPORT COMPLETED
 W !!,"CIS CROSS-REFERENCING IN PROGRESS.",!,"DO NOT DISTURB."
 S DIE="^ACGPARA(",DR=".03////1",DA=1 D ^DIE K DIE,DA,DR
 S DIK="^ACGS(" F DIK(1)=".03","2","4","5","10","11","14","15","16","19^K","23","30","103","121","1005^H" D ENALL^DIK
 K DIK,DA,ACGNEW,DIC
 S DIK="^AUTTVNDR(",DIK(1)="1125" D ENALL^DIK K DIK,DA,ACGNEW,DIC
OUT1 ;EP
 S ACGX="TERM W !!,*7,*7,""The import procedure has already been run."",!! H 4 Q",ACG="ZL ACGSIMP ZI ACGX:ACGSIMP+1 ZI ACGX:HFS+1 ZS ACGSIMP" X ACG K ACG,ACGX,ACGQUIT
 Q