DGRPE1 ;ALB/MRL,RTK - REGISTRATIONS EDITS (CONTINUED) ;06 JUN 88@2300
 ;;5.3;Registration;**114,327**;Aug 13, 1993
 ;
 ;***CONTAINS ISM SPECIFIC CODE TO AVOID STORE ERRORS WITH ELIG.***
 ;
 I DGRPS'=7 F I=1:1 S J=$P(DGDR,",",I) Q:J=""  F J1=J,J*1000 Q:'$T(@J1)  S DGDRD=$P($T(@J1),";;",2) D S
 I DGRPS=7 S DR="[DG LOAD EDIT SCREEN 7]"
 ;S DR(2,2.0361)=".01"
 D ^DIE K DIE,DR,DGCT,DGDR,DGDRD,DGDRS,I,J,J1
 ;update/set ELIGIBILITY VERIF. SOURCE field (327/Ineligible Project)
 I $D(^DPT(DFN,.361)) S DGELG=^DPT(DFN,.361) D
 .I $P(DGELG,U,5)["VIVA",$P(DGELG,U,6)=.5 S DATA(.3613)="H"
 .E  S DATA(.3613)="V"
 .I '$$UPD^DGENDBS(2,DFN,.DATA)
 Q
S I $L(@DGDRS)+$L(DGDRD)<241 S @DGDRS=@DGDRS_DGDRD Q
 S DGCT=DGCT+1,DGDRS="DR(1,2,"_DGCT_")",@DGDRS=DGDRD Q
701 ;;391;D SC7^DGRPV;1901;.301;S:X'="Y" Y=.313;.302;.313;.312;
702 ;;.361;D AAC1^DGLOCK2 S:DGAAC(1)']"" Y=361;.309;361;.323;D ^DGYZODS;S:'DGODS Y=.36265;11500.02;11500.03;.36265;S:X='"Y" Y="@72";.3626;@72;
703 ;;.3731;
1001 ;;.152;S:X="" Y="@101";.1651;.1653;.1654;.307;.1656;@101;
1002 ;;.153;S:X="" Y="@102";.1657:.1659;.16;@102;
1101 ;;.3611;.3612;.3614;.3615;
1102 ;;.306;
1103 ;;.322;
1104 ;;S:$S('$D(^DPT(DFN,"VET")):0,^("VET")="Y":1,1:0) Y="@114";S:'$S('$D(^("TYPE")):1,'$D(^DG(391,+^("TYPE"),0)):1,$P(^(0),"^",2):0,1:1) Y="@114";W !,"Patient is not a veteran.  Can't enter rated disabilities",! H 3 S Y=0;@114;.3721;