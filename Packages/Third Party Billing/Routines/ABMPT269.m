ABMPT269 ; IHS/SD/SDR - 3P BILLING 2.6 Patch 9 POST INIT ;  
 ;;2.6;IHS Third Party Billing;**9**;NOV 12, 2009
 ;
 Q
POST ;
 D ^XBFMK
 S DIE="^ABMMUPRM("
 S DA=1
 S DR=".01////PATIENT VOLUME"
 D ^DIE
ERRCODES ;
 ;241 - CPT NARRATIVE missing
 K DIC,X
 S DIC="^ABMDERR("
 S DIC(0)="LM"
 S DINUM=241
 S X="CPT NARRATIVE missing"
 S DIC("DR")=".02///Populate CPT NARRATIVE"
 S DIC("DR")=DIC("DR")_";.03///W"
 K DD,DO
 D FILE^DICN
 D SITE(241)
 Q
SITE(ABMX) ;Add SITE multiple
 S DUZHOLD=DUZ(2)
 S DUZ(2)=0
 F  S DUZ(2)=$O(^ABMDCLM(DUZ(2))) Q:'+DUZ(2)  D
 .S DIC(0)="LX"
 .S DA(1)=ABMX
 .S DIC="^ABMDERR("_DA(1)_",31,"
 .S DIC("P")=$P(^DD(9002274.04,31,0),U,2)
 .S DINUM=DUZ(2)
 .S X=$P($G(^DIC(4,DUZ(2),0)),U)
 .S DIC("DR")=".03////W"
 .D ^DIC
 .K DA,DIC,DINUM
 S DUZ(2)=DUZHOLD
 K DUZHOLD,DLAYGO,ABMX
 Q
 Q