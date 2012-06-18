APCDDISP ; IHS/CMI/LAB - DISPLAY VISIT ;
 ;;2.0;IHS PCC SUITE;**7**;MAY 14, 2009
 ;
 D GETPAT
 I APCDPAT="" W !!,"No PATIENT selected!" D EOJ Q
 D GETVISIT
 I APCDVSIT="" W !!,"No VISIT selected!" D EOJ Q
 D DSPLY
 D EOJ
 Q
 ;
ENB ;EP - entry point for limited lab display
 S APCDLIML=1
 G APCDDISP
GETPAT ;EP GET-  PATIENT
 W !
 S AUPNLK("INAC")=""
 S APCDPAT=""
 S DIC("A")="Enter PATIENT NAME: ",DIC="^AUPNPAT(",DIC(0)="AEMQ" D ^DIC K DIC
 Q:Y<0
 S APCDPAT=+Y
 Q
 ;
GETVISIT ;EP - this entry point called by the BVP package (View patient record)
 S APCDLOOK="",APCDVSIT=""
 K APCDVLK
 D ^APCDVLK
 K APCDLOOK
 Q
 ;
DSPLY ;EP
 D ^APCDVD
 Q
 ;
EOJ ; EP - EOJ HOUSE KEEPING - this ep called by the BVP package (View patient record)
 K AUPNLK("INAC")
 K %,%DT,%X,%Y,C,DIYS,X,Y
 K APCDCLN,APCDCAT,APCDDATE,APCDLOC,APCDPAT,APCDVSIT,APCDLOOK,APCDTYPE
 D KILL^AUPNPAT
 Q