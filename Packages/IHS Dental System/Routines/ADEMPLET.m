ADEMPLET ; IHS/HQT/MJL  - INDIV RECALL LETTER ;07:01 PM  [ 03/24/1999   9:04 AM ]
 ;;6.0;ADE;;APRIL 1999
 ;------->LOOKUP ENTRY IN ^ADEFOL
 S DIC("S")="I $P(^ADEFOL(Y,0),U,8)=ADEMCAT"
 S DIC("A")="Select Dental Patient for Followup Letter: "
 S DIC="^ADEFOL(",DIC(0)="AEQMZ" D ^DIC K DIC G:Y<1 END
 ;------->CALL ^ADEMP
 S ADEMDFN=+Y D EN^ADEMP
END K ADEMDFN,ADEMCAT Q