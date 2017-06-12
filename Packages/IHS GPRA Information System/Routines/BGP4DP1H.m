BGP4DP1H ; IHS/CMI/LAB - print ind 1 12 Nov 2010 7:38 AM ;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
 ;HIV SCREENING AGE DIST
I1AGE ;EP  special age tallies
 Q:$G(BGPSUMON)
 Q:BGPRTYPE'=9
 ;I DUZ=5634 W BOMB
 I BGPINDJ="W",BGPRTYPE=4 G FEM
 S BGPHD1="USER POPULATION PATIENTS ",BGPHD2="Total # User Pop"
 K BGPDAC,BGPDAP,BGPDAB S (BGPCC,BGPDD)=0 F BGPX="G.1","G.2","G.3","G.4","G.5","G.6","G.7","G.8","G.9","G.10","G.11","G.12","G.13" D I1AGE1
 D I1AGEP
 Q:BGPQUIT
 S BGPHD1="MALE USER POPULATION",BGPHD2="Total MALE User Pop"
 K BGPDAC,BGPDAP,BGPDAB S (BGPCC,BGPDD)=0 F BGPX="H.1","H.2","H.3","H.4","H.5","H.6","H.7","H.8","H.9","H.10","H.11","H.12","H.13" D I1AGE1
 D I1AGEP
 Q:BGPQUIT
FEM ;
 S BGPHD1="FEMALE USER POPULATION",BGPHD2="Total FEMALE User Pop"
 K BGPDAC,BGPDAP,BGPDAB S (BGPCC,BGPDD)=0 F BGPX="I.1","I.2","I.3","I.4","I.5","I.6","I.7","I.8","I.9","I.10","I.11","I.12","I.13" D I1AGE1
 D I1AGEP
 Q
I1AGE1 ;
 ;
 S BGPCC=BGPCC+1
 S BGPZ="A",BGPP1=2,BGPP2=3 D AGES
 S BGPZ="B",BGPP1=4,BGPP2=5 D AGES
 S BGPZ="C",BGPP1=6,BGPP2=7 D AGES
 S BGPZ="D",BGPP1=8,BGPP2=9 D AGES
 S BGPZ="E",BGPP1=10,BGPP2=11 D AGES
 Q
AGES ;
 S BGPF="E-2."_BGPX_BGPZ S BGPPC=$O(^BGPINDJC("C",BGPF,0))
 I BGPZ="A" D
 .S BGPDF=$P(^BGPINDJC(BGPPC,0),U,8)
 .S BGPNP=$P(^DD(90552.03,BGPDF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 .S $P(BGPDAC(BGPCC),U)=$$V^BGP4DP1C(1,BGPRPT,N,P)
 .S $P(BGPDAP(BGPCC),U)=$$V^BGP4DP1C(2,BGPRPT,N,P)
 .S $P(BGPDAB(BGPCC),U)=$$V^BGP4DP1C(3,BGPRPT,N,P)
 S BGPCYD=$$V^BGP4DP1C(1,BGPRPT,N,P,1) I $G(BGPAREAA) D SETEXA^BGP4DP1C(1,N,P)
 S BGPPRD=$$V^BGP4DP1C(2,BGPRPT,N,P,1) I $G(BGPAREAA) D SETEXA^BGP4DP1C(2,N,P)
 S BGPBLD=$$V^BGP4DP1C(3,BGPRPT,N,P,1) I $G(BGPAREAA) D SETEXA^BGP4DP1C(3,N,P)
 ;set 2nd piece to numerator and 3rd to %
 S J=$P(BGPF,".",3)
 S Q=1
 I J["B" S Q=2
 I J["C" S Q=2
 I J["D" S Q=2
 S BGPNF=$P(^BGPINDJC(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90552.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S $P(BGPDAC(BGPCC),U,BGPP1)=$$V^BGP4DP1C(1,BGPRPT,N,P),$P(BGPDAC(BGPCC),U,BGPP2)=$S($P(BGPDAC(BGPCC),U,Q):($P(BGPDAC(BGPCC),U,BGPP1)/$P(BGPDAC(BGPCC),U,Q)*100),1:"")
 S $P(BGPDAP(BGPCC),U,BGPP1)=$$V^BGP4DP1C(2,BGPRPT,N,P),$P(BGPDAP(BGPCC),U,BGPP2)=$S($P(BGPDAP(BGPCC),U,Q):($P(BGPDAP(BGPCC),U,BGPP1)/$P(BGPDAP(BGPCC),U,Q)*100),1:"")
 S $P(BGPDAB(BGPCC),U,BGPP1)=$$V^BGP4DP1C(3,BGPRPT,N,P),$P(BGPDAB(BGPCC),U,BGPP2)=$S($P(BGPDAB(BGPCC),U,Q):($P(BGPDAB(BGPCC),U,BGPP1)/$P(BGPDAB(BGPCC),U,Q)*100),1:"")
 S BGPCYN=$$V^BGP4DP1C(1,BGPRPT,N,P,2)
 S BGPPRN=$$V^BGP4DP1C(2,BGPRPT,N,P,2)
 S BGPBLN=$$V^BGP4DP1C(3,BGPRPT,N,P,2)
 S BGPCYP=$S(BGPCYD:((BGPCYN/BGPCYD)*100),1:"")
 S BGPPRP=$S(BGPPRD:((BGPPRN/BGPPRD)*100),1:"")
 S BGPBLP=$S(BGPBLD:((BGPBLN/BGPBLD)*100),1:"")
 D SETN1^BGP4DP1C
 Q
I1AGEP ;
 S BGPYSTP=1
 I '$G(BGPSUMON),BGPPTYPE="P" D HEADER^BGP4DPH Q:BGPQUIT  D W^BGP4DP(^BGPINDJ(BGPIC,53,1,0),0,1,BGPPTYPE) D:$D(^BGPINDJ(BGPIC,53,2,0)) W^BGP4DP(^BGPINDJ(BGPIC,53,2,0),0,1,BGPPTYPE) D AH
 I BGPPTYPE'="P" D W^BGP4DP("",0,2,BGPPTYPE) D AH
 D W^BGP4DP("CURRENT REPORT PERIOD",0,1,BGPPTYPE)
 D W^BGP4DP(BGPHD2,0,1,BGPPTYPE)
 S T=23 F X=1:1:$S(BGPPTYPE="P":8,1:13) S V=$P(BGPDAC(X),U) D W^BGP4DP($S(BGPPTYPE="P":$$C(V,0,6),1:$S(V:V,1:0)),0,0,BGPPTYPE,X+1,T) S T=T+7
 I BGPPTYPE="P" D W^BGP4DP("# w/HIV screening-No",0,2,BGPPTYPE)
 D W^BGP4DP($S(BGPPTYPE="P":" Refusals (GPRA Dev.)",1:"# w/HIV screening-No Refusals (GPRA Dev.)"),0,$S(BGPPTYPE="P":1,1:2),BGPPTYPE,1,1)
 S T=23 F X=1:1:$S(BGPPTYPE="P":8,1:13) S V=$P(BGPDAC(X),U,2) D W^BGP4DP($S(BGPPTYPE="P":$$C(V,0,6),1:$S(V:V,1:0)),0,0,BGPPTYPE,X+1,T) S T=T+7
 I BGPPTYPE="P" D W^BGP4DP("% w/HIV screening-No",0,1,BGPPTYPE)
 D W^BGP4DP($S(BGPPTYPE="P":" Refusals (GPRA Dev.)",1:"% w/HIV screening-No Refusals (GPRA Dev.)"),0,$S(BGPPTYPE="P":1,1:1),BGPPTYPE,1,1)
 S T=23 F X=1:1:$S(BGPPTYPE="P":8,1:13) S V=$P(BGPDAC(X),U,3) D W^BGP4DP($S(BGPPTYPE="P":$J(V,6,1),1:$$SB($J(V,6,1))),0,0,BGPPTYPE,X+1,T) S T=T+7
 I BGPPTYPE="D" D W^BGP4DP("A. # w/ positive result w/ % of Total Screened",0,2,BGPPTYPE)
 I BGPPTYPE="P" D W^BGP4DP("A. # w/ positive result w/",0,2,BGPPTYPE),W^BGP4DP(" % of Total Screened",0,1,BGPPTYPE)
 S T=23 F X=1:1:$S(BGPPTYPE="P":8,1:13) S V=$P(BGPDAC(X),U,4) D W^BGP4DP($S(BGPPTYPE="P":$$C(V,0,6),1:$S(V:V,1:0)),0,0,BGPPTYPE,X+1,T) S T=T+7
 I BGPPTYPE="D" D W^BGP4DP("A. % w/ positive result w/ % of Total Screened",0,1,BGPPTYPE)
 I BGPPTYPE="P" D W^BGP4DP("A. % w/ positive result w/",0,1,BGPPTYPE),W^BGP4DP(" % of Total Screened",0,1,BGPPTYPE)
 S T=23 F X=1:1:$S(BGPPTYPE="P":8,1:13) S V=$P(BGPDAC(X),U,5) D W^BGP4DP($S(BGPPTYPE="P":$J(V,6,1),1:$$SB($J(V,6,1))),0,0,BGPPTYPE,X+1,T) S T=T+7
 I BGPPTYPE="D" D W^BGP4DP("B. # w/ negative result w/ % of Total Screened",0,2,BGPPTYPE)
 I BGPPTYPE="P" D W^BGP4DP("B. # w/ negative result w/",0,2,BGPPTYPE),W^BGP4DP(" % of Total Screened",0,1,BGPPTYPE)
 S T=23 F X=1:1:$S(BGPPTYPE="P":8,1:13) S V=$P(BGPDAC(X),U,6) D W^BGP4DP($S(BGPPTYPE="P":$$C(V,0,6),1:$S(V:V,1:0)),0,0,BGPPTYPE,X+1,T) S T=T+7
 I BGPPTYPE="D" D W^BGP4DP("B. % w/ negative result w/ % of Total Screened",0,1,BGPPTYPE)
 I BGPPTYPE="P" D W^BGP4DP("B. % w/ negative result w/",0,1,BGPPTYPE),W^BGP4DP(" % of Total Screened",0,1,BGPPTYPE)
 S T=23 F X=1:1:$S(BGPPTYPE="P":8,1:13) S V=$P(BGPDAC(X),U,7) D W^BGP4DP($S(BGPPTYPE="P":$J(V,6,1),1:$$SB($J(V,6,1))),0,0,BGPPTYPE,X+1,T) S T=T+7
 I BGPPTYPE="D" D W^BGP4DP("C. # w/ No result w/ % of Total Screened",0,2,BGPPTYPE)
 I BGPPTYPE="P" D W^BGP4DP("C. # w/ No result w/",0,2,BGPPTYPE),W^BGP4DP(" % of Total Screened",0,1,BGPPTYPE)
 S T=23 F X=1:1:$S(BGPPTYPE="P":8,1:13) S V=$P(BGPDAC(X),U,8) D W^BGP4DP($S(BGPPTYPE="P":$$C(V,0,6),1:$S(V:V,1:0)),0,0,BGPPTYPE,X+1,T) S T=T+7
 I BGPPTYPE="D" D W^BGP4DP("C. % # w/ No result w/ % of Total Screened",0,1,BGPPTYPE)
 I BGPPTYPE="P" D W^BGP4DP("C. % # w/ No result w/",0,1,BGPPTYPE),W^BGP4DP(" % of Total Screened",0,1,BGPPTYPE)
 S T=23 F X=1:1:$S(BGPPTYPE="P":8,1:13) S V=$P(BGPDAC(X),U,9) D W^BGP4DP($S(BGPPTYPE="P":$J(V,6,1),1:$$SB($J(V,6,1))),0,0,BGPPTYPE,X+1,T) S T=T+7
 I BGPPTYPE="P" D W^BGP4DP("# w/HIV screening",0,2,BGPPTYPE)
 D W^BGP4DP($S(BGPPTYPE="P":" Refusal",1:"# w/HIV screening Refusal"),0,$S(BGPPTYPE="P":1,1:2),BGPPTYPE,1,1)
 S T=23 F X=1:1:$S(BGPPTYPE="P":8,1:13) S V=$P(BGPDAC(X),U,10) D W^BGP4DP($S(BGPPTYPE="P":$$C(V,0,6),1:$S(V:V,1:0)),0,0,BGPPTYPE,X+1,T) S T=T+7
 I BGPPTYPE="P" D W^BGP4DP("% w/HIV screening",0,1,BGPPTYPE)
 D W^BGP4DP($S(BGPPTYPE="P":" Refusal",1:"% w/HIV screening Refusal"),0,$S(BGPPTYPE="P":1,1:1),BGPPTYPE,1,1)
 S T=23 F X=1:1:$S(BGPPTYPE="P":8,1:13) S V=$P(BGPDAC(X),U,11) D W^BGP4DP($S(BGPPTYPE="P":$J(V,6,1),1:$$SB($J(V,6,1))),0,0,BGPPTYPE,X+1,T) S T=T+7
 I BGPPTYPE="P" D SNDPG^BGP4DP1I
 D I1AGEP^BGP4DP1J
 Q
C(X,X2,X3) ;
 D COMMA^%DTC
 Q X
AH ;EP
 Q:$G(BGPSUMON)
 D W^BGP4DP(BGPHD1,1,2,BGPPTYPE)
 D W^BGP4DP("Age Specific HIV Screening",0,1,BGPPTYPE)
 I BGPPTYPE="P",BGPYSTP=0 G G2
 D W^BGP4DP("<13",0,1,BGPPTYPE,2,25)
 D W^BGP4DP("13-14",0,0,BGPPTYPE,3,30)
 D W^BGP4DP("15-19",0,0,BGPPTYPE,4,37)
 D W^BGP4DP("20-24",0,0,BGPPTYPE,5,44)
 D W^BGP4DP("25-29",0,0,BGPPTYPE,6,51)
 D W^BGP4DP("30-34",0,0,BGPPTYPE,7,58)
 D W^BGP4DP("35-39",0,0,BGPPTYPE,8,65)
 D W^BGP4DP("40-44",0,0,BGPPTYPE,9,72)
 I BGPPTYPE="P",BGPYSTP=1 Q
G2 ;
 D W^BGP4DP("45-49",0,$S(BGPPTYPE="P":1,1:0),BGPPTYPE,10,28)
 D W^BGP4DP("50-54",0,0,BGPPTYPE,11,37)
 D W^BGP4DP("55-59",0,0,BGPPTYPE,12,46)
 D W^BGP4DP("60-64",0,0,BGPPTYPE,13,55)
 D W^BGP4DP("65+",0,0,BGPPTYPE,14,65)
 Q
SB(X) ;EP - Strip
 X ^DD("FUNC",$O(^DD("FUNC","B","STRIPBLANKS",0)),1)
 Q X