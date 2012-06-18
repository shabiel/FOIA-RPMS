BGP9HEP1 ; IHS/CMI/LAB - print ind 1 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;
 ;
IP ;EP
 I $Y>(BGPIOSL-13)!(BGPIC=1)!(BGPIC=17) D HEADER^BGP9DPH Q:BGPQUIT  W !!,^BGPHEIN(BGPIC,53,1,0)
 D H1^BGP9DPH
 S BGPPC1=$P(^BGPHEIN(BGPIC,0),U,6),BGPNDEN=$P(^BGPHEIN(BGPIC,12),U),BGPNODEN=$P(^BGPHEIN(BGPIC,12),U,2) Q:BGPQUIT  D PI
 Q
PI ;EP
 ;S BGPPC3=0 F  S BGPPC2=$O(^BGPHEIIN("AB",BGPPC1,BGPPC3)) Q:BGPPC3=""  S BGPPC=$O(^BGPHEIIN("ABC",BGPPC1,BGPPC3,0)),BGPPC2=$P(^BGPHEIIN(BGPPC,12),U,4) D PI1
 S BGPPC3=0 F  S BGPPC3=$O(^BGPHEIIN("AC",BGPPC1,BGPPC3)) Q:BGPPC3=""  D
 .;BGPPC3=1,2 pieces
 .S BGPPC4=0 F  S BGPPC4=$O(^BGPHEIIN("AC",BGPPC1,BGPPC3,BGPPC4)) Q:BGPPC4=""  D
 ..S BGPPC=$O(^BGPHEIIN("AC",BGPPC1,BGPPC3,BGPPC4,0))
 ..S BGPPC2=BGPPC3_"."_BGPPC4
 ..D PI1
 Q
PI1 ;
 S BGPDF=$P(^BGPHEIIN(BGPPC,0),U,8)
 ;get denominator value of measure
 S BGPNP=$P(^DD(90537.03,BGPDF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 S BGPCYD=$$V(1,BGPRPT,N,P)
 S BGPPRD=$$V(2,BGPRPT,N,P)
 S BGPBLD=$$V(3,BGPRPT,N,P)
 ;write out denominator
 I $P(BGPPC2,".",3)=1 D   ;only on 1st numerator, display denominator
 .I $Y>(BGPIOSL-13) D HEADER^BGP9DPH Q:BGPQUIT  W !!,^BGPHEIN(BGPIC,53,1,0) D H1^BGP9DPH
 .W !!,$P(^BGPHEIIN(BGPPC,0),U,17)
 .I $P(^BGPHEIIN(BGPPC,0),U,18)]"" D
 ..W !,$P(^BGPHEIIN(BGPPC,0),U,18)
 .I $P(^BGPHEIIN(BGPPC,0),U,21)]""  D
 ..W !,$P(^BGPHEIIN(BGPPC,0),U,21)
 .W ?20,$$C(BGPCYD,0,8),?35,$$C(BGPPRD,0,8),?58,$$C(BGPBLD,0,8),!
 S BGPNF=$P(^BGPHEIIN(BGPPC,0),U,9)
 S BGPNP=$P(^DD(90537.03,BGPNF,0),U,4),N=$P(BGPNP,";"),P=$P(BGPNP,";",2)
 D SETN
 ;write header for 1.A.1
 W !,$P(^BGPHEIIN(BGPPC,0),U,15)
 I $P(^BGPHEIIN(BGPPC,0),U,16)]"" W !?1,$P(^BGPHEIIN(BGPPC,0),U,16)
 I $P(^BGPHEIIN(BGPPC,0),U,19)]"" W !?1,$P(^BGPHEIIN(BGPPC,0),U,19)
 D H2^BGP9DPH
 Q
SETN ;set numerator fields
 S BGPCYN=$$V(1,BGPRPT,N,P)
 S BGPPRN=$$V(2,BGPRPT,N,P)
 S BGPBLN=$$V(3,BGPRPT,N,P)
 S BGPCYP=$S(BGPCYD:((BGPCYN/BGPCYD)*100),1:"")
 S BGPPRP=$S(BGPPRD:((BGPPRN/BGPPRD)*100),1:"")
 S BGPBLP=$S(BGPBLD:((BGPBLN/BGPBLD)*100),1:"")
 Q
SL(V) ;
 I V="" S V=0
 Q $$STRIP^XLFSTR($J(V,5,1)," ")
V(T,R,N,P) ;EP
 I $G(BGPAREAA) G VA
 I T=1 Q $P($G(^BGPHEDCN(R,N)),U,P)
 I T=2 Q $P($G(^BGPHEDPN(R,N)),U,P)
 I T=3 Q $P($G(^BGPHEDBN(R,N)),U,P)
 Q ""
VA ;
 NEW X,V,C S X=0,C="" F  S X=$O(BGPSUL(X)) Q:X'=+X  D
 .I T=1 S C=C+$P($G(^BGPHEDCN(X,N)),U,P)
 .I T=2 S C=C+$P($G(^BGPHEDPN(X,N)),U,P)
 .I T=3 S C=C+$P($G(^BGPHEDBN(X,N)),U,P)
 .Q
 Q C
C(X,X2,X3) ;
 D COMMA^%DTC
 Q X