BGP5PDL1 ; IHS/CMI/LAB - print ind 1 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;
 ;
I1 ;EP
 D H1
I1A1 ;001.A, 001.B, 001.C
 I BGPINDT'="E" F BGPPC1="1.1","1.2","1.3" D PI
 I BGPINDT="E" S BGPPC1="1.4" D PI
 D I1AGE^BGP5PDL9
 Q
I2 ;EP
 D H1
 F BGPPC1="2.1" D PI
 Q
I3 ;EP
 D H1
 F BGPPC1="3.1","3.2","3.3" D PI
 Q
I4 ;
 D H1
 F BGPPC1="4.1","4.2","4.3" D PI
 Q
I5 ;EP
 D H1
 F BGPPC1="5.1","5.2","5.3" D PI
 Q
I6 ;EP
 D H1
 F BGPPC1="6.1","6.2","6.3" D PI
 Q
I7 ;EP
 D H1
 F BGPPC1="7.1","7.2","7.3" D PI
 Q
I8 ;EP
 D H1
 F BGPPC1="8.1" D PI
 Q
I9 ;EP
 D H1
 F BGPPC1="9.1" D PI
 Q
I12 ;EP
 D H1
 F BGPPC1="12.1","12.2","12.3" D PI
 F BGPPC1="12.4","12.5" D PI
 F BGPPC1="12.6","12.7" D PI
 Q
I13 ;EP
 D H1
 F BGPPC1="13.1","13.2","13.3" D PI
 Q
I14 ;EP
 D H1
 F BGPPC1="14.1","14.2" D PI
 Q
I15 ;EP
 D H1
 F BGPPC1="15.1","15.2" D PI
 Q
I16 ;
 D H1
 F BGPPC1="16.1","16.2" D PI
 Q
I17 ;EP
 D H1
 F BGPPC1="17.1","17.2","17.3","17.4","17.5","17.6" D PI
 Q
I19 ;EP
 D H1
 F BGPPC1="19.1","19.2" D PI
 Q
I20 ;EP
 D H1
 F BGPPC1="20.1","20.2" D PI
 Q
I21 ;EP
 D H1
 F BGPPC1="21.1","21.2","21.3" D PI
 Q
I22 ;EP
 D H1
 F BGPPC1="22.1","22.2","22.3","22.4","22.5","22.6" D PI
 Q
I24 ;EP
 D H1
 F BGPPC1="24.1","24.2","24.3","24.4","24.5" D PI
 Q
I25 ;EP
 D H1
 F BGPPC1="25.1","25.2","25.3","25.4","25.5","25.6" D PI
 Q
I26 ;EP
 D H1
 F BGPPC1="26.1","26.2","26.3","26.4","26.5","26.6","26.7","26.8","26.9" D PI
 Q
I27 ;EP
 D H1
 F BGPPC1="27.1","27.2","27.3","27.4","27.5","27.6","27.7","27.8","27.9" D PI
 Q
I28 ;EP
 D H1
 F BGPPC1="28.1","28.2","28.3" D PI
 Q
I29 ;EP
 D H1
 F BGPPC1="29.1","29.2","29.3","29.4" D PI
 Q
I30 ;EP
 D H1
 F BGPPC1="30.1","30.2" D PI
 Q
I31 ;EP
 D H1
 F BGPPC1="31.1","31.2" D PI
 Q
I32 ;EP
 D H1
 F BGPPC1="32.1","32.2","32.3","32.4","32.5","32.6" D PI
 Q
I33 ;EP
 D H1
 F BGPPC1="33.1" D PI
 Q
I34 ;EP
 D H1
 F BGPPC1="34.1" D PI
 Q
I35 ;EP
 D H1
 F BGPPC1="35.1","35.2","35.3","35.4","35.5","35.6" D PI
 Q
I36 ;EP
 D H1
 F BGPPC1="36.1","36.2" D PI
 Q
I37 ;EP
 D H1
 F BGPPC1="37.1","37.2" D PI
 Q
I38 ;EP
 D H1
 F BGPPC1="38.1","38.2","38.3","38.4","38.5","38.6","38.7","38.8" D PI
 Q
I39 ;EP
 D H1
 F BGPPC1="39.1","39.2" D PI
 Q
I40 ;EP
 D H1
 F BGPPC1="40.1","40.2" D PI
 Q
PI ;EP
 S BGPDENP=0
 S BGPPC2=0 F  S BGPPC2=$O(^BGPINDVC("ABC",BGPPC1,BGPPC2)) Q:BGPPC2=""  S BGPPC=$O(^BGPINDVC("ABC",BGPPC1,BGPPC2,0)) D PI1
 Q
PI1 ;EP
 K BGPEXCT,BGPSDP
 I BGPRTYPE=1,$P(^BGPINDVC(BGPPC,0),U,5)'=1 Q  ;not on national
 ;I BGPRTYPE=4,$P(^BGPINDVC(BGPPC,0),U,4)="002.B.8" Q
 I BGPINDT="D",$P(^BGPINDVC(BGPPC,0),U,12)'=1 Q
 I BGPINDT="C",$P(^BGPINDVC(BGPPC,0),U,13)'=1 Q
 I BGPINDT="W",$P($G(^BGPINDVC(BGPPC,12)),U,2)'=1 Q
 I BGPINDT="E",$P($G(^BGPINDVC(BGPPC,12)),U,3)'=1 Q
 S BGPDF=$P(^BGPINDVC(BGPPC,0),U,8)
 ;get denominator value of indicator
 S BGPNP=$P(^DD(90371.03,BGPDF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S BGPCYD=$$V(1,BGPRPT,N,P,1) I $G(BGPAREAA) D SETEXA^BGP5DP1(1,N,P)
 S BGPPRD=$$V(2,BGPRPT,N,P,1) I $G(BGPAREAA) D SETEXA^BGP5DP1(2,N,P)
 S BGPBLD=$$V(3,BGPRPT,N,P,1) I $G(BGPAREAA) D SETEXA^BGP5DP1(3,N,P)
 ;write out denominator
 I 'BGPDENP S Y=" " D:$E($P($G(^BGPINDVC(BGPPC,12)),U,4),1,4)'=37.2!($P($G(^BGPINDVC(BGPPC,12)),U,4)="37.2.1") S(Y,1,1) D
 .I $E($P(^BGPINDVC(BGPPC,0),U,4),1,3)="I.B"!($E($P(^BGPINDVC(BGPPC,0),U,4),1,3)="I.F") Q
 .S Y=$P(^BGPINDVC(BGPPC,0),U,17) D S(Y,1,1)
 .I $P(^BGPINDVC(BGPPC,0),U,18)]"" D
 ..I $P(^BGPINDVC(BGPPC,0),U,4)="025.I.1" D S($P(^BGPINDVC(BGPPC,0),U,18),1,1) Q
 ..I $P(^BGPINDVC(BGPPC,0),U,4)="026.C.1" D S($P(^BGPINDVC(BGPPC,0),U,18),1,1) Q
 ..;I BGPRTYPE'=4,$P(^BGPINDVC(BGPPC,0),U,18)["GPRA D" Q
 ..D S($P(^BGPINDVC(BGPPC,0),U,18),1,1)
 .I $P(^BGPINDVC(BGPPC,0),U,21)]"" D
 ..I $P(^BGPINDVC(BGPPC,0),U,4)="025.I.1" D S($P(^BGPINDVC(BGPPC,0),U,21),1,1) Q
 ..I $P(^BGPINDVC(BGPPC,0),U,4)="026.C.1" D S($P(^BGPINDVC(BGPPC,0),U,21),1,1) Q
 ..;I BGPRTYPE'=4,$P(^BGPINDVC(BGPPC,0),U,21)["GPRA D" Q
 ..D S($P(^BGPINDVC(BGPPC,0),U,21),1,1)
 .S Y=BGPCYD_"^^"_BGPPRD_"^^^"_BGPBLD D S(Y,,2)
 .S BGPDENP=1
 ;get numerator value of indicator and calc %
 I $P(^BGPINDVC(BGPPC,0),U,4)["C-"!($P(^BGPINDVC(BGPPC,0),U,4)["I.") D
 .S BGPDF=$P(^BGPINDVC(BGPPC,0),U,8)
 .;get denominator value of indicator
 .S BGPNP=$P(^DD(90371.03,BGPDF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 .S BGPCYD=$$V(1,BGPRPT,N,P,1) I $G(BGPAREAA) D SETEXA^BGP5DP1(1,N,P)
 .S BGPPRD=$$V(2,BGPRPT,N,P,1) I $G(BGPAREAA) D SETEXA^BGP5DP1(2,N,P)
 .S BGPBLD=$$V(3,BGPRPT,N,P,1) I $G(BGPAREAA) D SETEXA^BGP5DP1(3,N,P)
 S BGPNF=$P(^BGPINDVC(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90371.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 D SETN
 I $P($G(^BGPINDVC(BGPPC,14)),U) D
 .S ^TMP($J,"SUMMARYDEL",$P(^BGPINDVC(BGPPC,14),U,5),$P(^BGPINDVC(BGPPC,14),U,6),BGPPC)=$$SB($J(BGPCYP,5,1))_U_$$SB($J(BGPPRP,5,1))_U_$$SB($J(BGPBLP,5,1))
 .Q:'$G(BGPAREAA)  ;SDPX
 .S X=0 F  S X=$O(BGPSDP(X)) Q:X'=+X  D  ;SDPX
 ..S ^TMP($J,"SUMMARYDEL DETAIL PAGE",$P(^BGPINDVC(BGPPC,14),U,5),$P(^BGPINDVC(BGPPC,14),U,6),BGPPC,X)=$$SB($J($P($G(BGPSDP(X,1)),U,3),5,1))_U_$$SB($J($P($G(BGPSDP(X,2)),U,3),5,1))_U_$$SB($J($P($G(BGPSDP(X,3)),U,3),5,1))_U_$$SB($J(BGPCYP,5,1))
 ;write header for 1.A.1
 ;I $P($G(^BGPINDVC(BGPPC,12)),U,4)="37.2.1" S X=" " D S(X,1,1)
 I $P($G(^BGPINDVC(BGPPC,12)),U,4)'="37.2.1" S Y=" " D S(Y,1,1)
 S Y=$P(^BGPINDVC(BGPPC,0),U,15) D:Y]"" S(Y,1,1) I BGPRTYPE=4,$P($G(^BGPINDVC(BGPPC,12)),U,5) S X=Y_" (GPRA)" D S(X,0,1)
 I $P(^BGPINDVC(BGPPC,0),U,16)]""!($P($G(^BGPINDVC(BGPPC,12)),U,6)&(BGPRTYPE=4)) S Y=$P(^BGPINDVC(BGPPC,0),U,16)_$S($P($G(^BGPINDVC(BGPPC,12)),U,6):" (GPRA)",1:"") D S(Y,1,1)
 I $P(^BGPINDVC(BGPPC,0),U,19)]""!($P($G(^BGPINDVC(BGPPC,12)),U,7)&(BGPRTYPE=4)) S Y=$P(^BGPINDVC(BGPPC,0),U,19)_$S($P($G(^BGPINDVC(BGPPC,12)),U,7):" (GPRA)",1:"") D S(Y,1,1)
 D H2
 Q
SETN ;set numerator fields
 S BGPIIDEL=1
 D SETN^BGP5DP1
 Q
V(T,R,N,P,ND) ;EP
 I $G(BGPAREAA) G VA
 NEW X
 I T=1 S X=$P($G(^BGPGPDCV(R,N)),U,P) Q $S(X]"":X,1:0)
 I T=2 S X=$P($G(^BGPGPDPV(R,N)),U,P) Q $S(X]"":X,1:0)
 I T=3 S X=$P($G(^BGPGPDBV(R,N)),U,P) Q $S(X]"":X,1:0)
 Q ""
VA ;
 NEW X,V,C S X=0,C="" F  S X=$O(BGPSUL(X)) Q:X'=+X  D
 .I T=1 S C=C+$P($G(^BGPGPDCV(X,N)),U,P)
 .I T=2 S C=C+$P($G(^BGPGPDPV(X,N)),U,P)
 .I T=3 S C=C+$P($G(^BGPGPDBV(X,N)),U,P)
 .I $G(BGPAREAA),$P($G(^BGPINDVC(BGPPC,14)),U) D  ;SPDX
 ..I T=1 S $P(BGPSDP(X,T),U,ND)=$P($G(^BGPGPDCV(X,N)),U,P) ;SPDX
 ..I T=2 S $P(BGPSDP(X,T),U,ND)=$P($G(^BGPGPDPV(X,N)),U,P) ;SPDX
 ..I T=3 S $P(BGPSDP(X,T),U,ND)=$P($G(^BGPGPDBV(X,N)),U,P) ;SPDX
 .Q
 Q $S(C:C,1:0)
C(X,X2,X3) ;
 D COMMA^%DTC
 Q X
S(Y,F,P) ;set up array
 I '$G(F) S F=0
 S %=$P(^TMP($J,"BGPDEL",0),U)+F,$P(^TMP($J,"BGPDEL",0),U)=%
 I '$D(^TMP($J,"BGPDEL",%)) S ^TMP($J,"BGPDEL",%)=""
 S $P(^TMP($J,"BGPDEL",%),U,P)=Y
 Q
CALC(N,O) ;
 NEW Z
 S Z=N-O,Z=$FN(Z,"+,",1)
 Q Z
H3 ;EP
 S X="Age specific Diabetes Prevalence" D S(X,1,1) S Y=" " D S(Y,1,1) S X=BGPHD1 D S(X,1,1) S Y=" " D S(Y,1,1)
 S X="Age Distribution" D S(X,1,1) S X=" " D S(X,1,1)
 S Y="<15" D S(Y,1,2)
 S Y="15-19" D S(Y,,3)
 S Y="20-24" D S(Y,,4)
 S Y="25-34" D S(Y,,5)
 S Y="35-44" D S(Y,,6)
 S Y="45-54" D S(Y,,7)
 S Y="55-64" D S(Y,,8)
 S Y=">64 yrs" D S(Y,,9)
 Q
SB(X) ;EP - Strip leading and trailing blanks from X.
 NEW %
 X ^DD("FUNC",$O(^DD("FUNC","B","STRIPBLANKS",0)),1)
 Q X
H2 ;
 S BGPX="",BGPX=BGPCYN,$P(BGPX,U,2)=$$SB($J(BGPCYP,5,1)),$P(BGPX,U,3)=BGPPRN,$P(BGPX,U,4)=$$SB($J(BGPPRP,5,1)),$P(BGPX,U,5)=$$SB($J($$CALC(BGPCYP,BGPPRP),6)),$P(BGPX,U,6)=BGPBLN,$P(BGPX,U,7)=$$SB($J(BGPBLP,5,1))
 S $P(BGPX,U,8)=$$SB($J($$CALC(BGPCYP,BGPBLP),6))
 D S(BGPX,,2)
 Q
H1 ;EP
 S Y="" D S(Y,1,1)
 S Y="REPORT" D S(Y,1,2)
 S Y="%" D S(Y,,3)
 S Y="PREV YR" D S(Y,,4)
 S Y="%" D S(Y,,5)
 S Y="CHG from" D S(Y,,6)
 S Y="BASE" D S(Y,,7)
 S Y="%" D S(Y,,8)
 S Y="CHG from" D S(Y,,9)
 S Y="PERIOD" D S(Y,1,2)
 S Y="PERIOD" D S(Y,,4)
 S Y="PREV YR %" D S(Y,,6)
 S Y="PERIOD" D S(Y,,7)
 S Y="BASE %" D S(Y,,9)
 Q