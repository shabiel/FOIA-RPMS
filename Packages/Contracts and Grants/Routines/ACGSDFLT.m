ACGSDFLT ;IHS/OIRM/DSD/THL,AEF - EDIT VARIOUS DEFAULTS;  [ 03/27/2000   2:22 PM ]
 ;;2.0t1;CONTRACT INFORMATION SYSTEM;;FEB 16, 2000
 ;;UTILITY TO EDIT VARIOUS DEFAULT DATA
CAN ;EP;EDIT CAN NO.
 W @IOF
 W !?22,"EDIT COMMON ACCOUNTING NUMBERS"
 F  D CAN1 Q:$D(ACGQUIT)!$D(ACGOUT)
 K ACGQUIT
 Q
CAN1 S DIC(0)="AEMLQZ",DIC="^AUTTCAN(",DIC("A")="CAN NO..............: "
 W !!?21,"|=======|"
 D DIC^ACGSDIC
 I U[$E(X)!(+Y<1) S ACGQUIT="" Q
 S DA=+Y,DR=".01T",DIE="^AUTTCAN("
 D DIE^ACGSDIC
 Q