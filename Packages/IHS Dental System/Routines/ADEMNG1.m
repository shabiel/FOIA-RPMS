ADEMNG1 ; IHS/HQT/MJL  - DENTAL FOLLOWUP MGT PT 2 ;  [ 03/24/1999   9:04 AM ]
 ;;6.0;ADE;;APRIL 1999
LINE W $E(ADELIN,1,40-($L(ADETITL)/2)),ADETITL,$E(ADELIN,1,39-($L(ADETITL)/2)) Q
RESET ;EP
 S ADETITL=" DENTAL "_$S(ADEREF:"REFERRAL",ADEWAI:"WAITING LIST",ADEREC:"RECALL")_$S($D(ADEFUNC):ADEFUNC,1:" MANAGEMENT ")
 D ^ADECLS,LINE
R2 ;EP
 K DIC S DIC("A")="Select "_$P(ADETITL," ",3)_" List: ",DIC("S")="I $P(^ADETYP(Y,0),U,4)=ADETYP",DIC="^ADETYP(",DIC(0)="AQEMZ" D ^DIC K DIC
 I Y<1 Q
 S ADESUB=$P(Y,U),ADESUBN=$P(Y,U,2),Y=1
 Q
PTLOOK ;EP
 D ^ADECLS D P1 Q:Y<1  D:ADEINT P2 S Y=1 Q
P1 S ADETITL=" "_ADESUBN_" "_$S(ADEREF:"REFERRAL",ADEWAI:"WAITING LIST",ADEREC:"RECALL")_$S($D(ADEFUNC):ADEFUNC,1:" MANAGEMENT ")
 K DIC,Y,ADEPAT D LINE R !!,"Select Dental Patient Name: ",X:DTIME
 I '$T!(X="")!(X["^") S Y=-1 Q
 I X["?" D PTHLP W ! W:'$D(ADEMDEL) " YOU MAY ADD A NEW PATIENT IF YOU WISH",! G P1
 S:$D(ADEMDEL) DIC("S")="I $D(^ADEFOL(""TYPE"",Y,ADETYP,ADESUB))"
 S DIC="^AUPNPAT(",DIC(0)="MEZQ" D ^DIC W ! K DIC
 G:Y<1 P1
 S ADEPAT=$P(Y,U)
 I $D(^ADEUTL("ADELOCK",ADEPAT)) W !!,"PATIENT'S RECORD CURRENTLY BEING EDITED.  TRY LATER." H 2 K ADEPAT,X D ^ADECLS G P1
 S ^ADEUTL("ADELOCK",ADEPAT)=""
 S ADENEWM=1 S:$D(^ADEFOL("TYPE",ADEPAT,ADETYP,ADESUB)) ADENEWM=0,ADEMDFN=$O(^ADEFOL("TYPE",ADEPAT,ADETYP,ADESUB,0))
 S Y=1 Q
P2 ;EP
 K Y
 ;
 S DIE("NO^")="OUTOK"
 S DIE="^DPT(",DR=".111;.114;.115;.116;.131",DA=ADEPAT D ^DIE
 ;
 Q:$D(Y)
 I '$D(^DPT(ADEPAT,.11)) S Y=1
 I '$D(Y) F J=1,4,5 I $P(^DPT(ADEPAT,.11),U,J)="" S Y=1 Q
 W:$D(Y) !,"***INCOMPLETE ADDRESS***"
 Q
PTHLP S DIC="^ADEFOL(",DIC(0)="EQMZ",X="??"
 S DIC("S")="I $P(^ADEFOL(Y,0),U,8)=ADETYP,$P(^(0),U,2)=ADESUB"
 D ^DIC Q