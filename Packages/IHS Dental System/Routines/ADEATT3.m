ADEATT3 ; IHS/HQT/MJL  - ATTENDING DDS STMNT PT 3 ;10:20 PM  [ 03/24/1999   9:04 AM ]
 ;;6.0;ADE;;APRIL 1999
 ;------->ADD TO ^AUPNPRVT
 I '$D(^AUPNPRVT(ADEPAT)) D ADD
 ;------->ADD INSURER SUBENTRY TO ^AUPNPRVT
 I '$D(^AUPNPRVT(ADEPAT,11,"B",ADEINS)) D INADD
 ;------->EDIT INSURER SUBENTRY TO ^AUPNPRVT
 D INEDIT
 ;------->END
END Q
ADD S DIC="^AUPNPRVT(",DIC(0)="L",X=ADEPAT,DINUM=X K DD,DO D FILE^DICN
 Q
INADD I '$D(^AUPNPRVT(ADEPAT,11,0)) S ^AUPNPRVT(ADEPAT,11,0)="^9000006.11P^^"
 ;Fileman requires that the zeroeth node of a subfile be defined
 ;before adding a subfile entry via DIE
 S DA(1)=ADEPAT,DA=$P(^AUPNPRVT(ADEPAT,11,0),U,3)+1,DR=".01///`"_ADEINS,DIE="^AUPNPRVT(ADEPAT,11," D ^DIE
 S $P(^AUPNPRVT(ADEPAT,11,0),U,3)=$P(^AUPNPRVT(ADEPAT,11,0),U,3)+1,$P(^(0),U,4)=$P(^(0),U,4)+1
 ;Fileman requires that the zeroeth node of a subfile be updated
 ;after adding a subfile entry via DIE
 Q
INEDIT S DIE="^AUPNPRVT(ADEPAT,11,",DA(1)=ADEPAT,DA=$O(^AUPNPRVT(ADEPAT,11,"B",ADEINS,0)),DR=".02;.03;.04;.05;.06;.07" D ^DIE
 ;DEFAULT NAME OF SUBSCRIBER TO ADEPNM; DEFAULT RELATIONSHIP TO SELF IF INSURED=ADEPNM
 Q