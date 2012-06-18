BGP5DP ; IHS/CMI/LAB - IHS gpra print ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;
 ;
PRINT ;
 K ^TMP($J)
 S BGPIOSL=$S($G(BGPGUI):55,1:$G(IOSL))
 I $G(BGPAREAA) D SETEXCEL
 I BGPROT="D" G DEL
 D ^BGP5DH
 S BGPGPG=0
 S BGPQUIT=""
 D PRINT1
 K ^TMP($J)
 I BGPROT="P" D KITM Q
 ;
DEL ;create delimited output file
 I '$D(BGPGUI) D ^%ZISC ;close printer device
 K ^TMP($J)
 D ^BGP5PDL ;create ^tmp of delimited report
 K ^XTMP("BGP5D",BGPJ,BGPH)
 K ^XTMP("BGP5DNP",BGPJ,BGPH)
 K ^TMP($J)
 Q
 ;
PRINT1 ;EP
 S BGPIC=0 F  S BGPIC=$O(BGPIND(BGPIC)) Q:BGPIC=""!(BGPQUIT)  D
 .D HEADER^BGP5DPH ;header for all indicators
 .I $Y>(BGPIOSL-3) D HEADER^BGP5DPH Q:BGPQUIT
 .W !,$P(^BGPINDV(BGPIC,0),U,3),!
 .I $Y>(BGPIOSL-3) D HEADER^BGP5DPH Q:BGPQUIT
 .W !,"Denominator(s):"
 .S BGPX=0 F  S BGPX=$O(^BGPINDV(BGPIC,61,"B",BGPX)) Q:BGPX'=+BGPX!(BGPQUIT)  D
 ..S BGPY=0 F  S BGPY=$O(^BGPINDV(BGPIC,61,"B",BGPX,BGPY)) Q:BGPY'=+BGPY!(BGPQUIT)  D
 ...I $P(^BGPINDV(BGPIC,61,BGPY,0),U,2)'[BGPRTYPE Q  ;not a denom def for this report
 ...I BGPRTYPE=4,$P(^BGPINDV(BGPIC,61,BGPY,0),U,3)'[BGPINDT Q  ;don't display
 ...S BGPZ=0 F  S BGPZ=$O(^BGPINDV(BGPIC,61,BGPY,1,BGPZ)) Q:BGPZ'=+BGPZ!(BGPQUIT)  D
 ....I $Y>(BGPIOSL-3) D HEADER^BGP5DPH Q:BGPQUIT
 ....W !,^BGPINDV(BGPIC,61,BGPY,1,BGPZ,0)
 ....Q
 ...;W !
 ...Q
 ..Q
 .I $Y>(BGPIOSL-3) D HEADER^BGP5DPH Q:BGPQUIT
 .W !!,"Numerator(s):"
 .S BGPX=0 F  S BGPX=$O(^BGPINDV(BGPIC,62,"B",BGPX)) Q:BGPX'=+BGPX!(BGPQUIT)  D
 ..S BGPY=0 F  S BGPY=$O(^BGPINDV(BGPIC,62,"B",BGPX,BGPY)) Q:BGPY'=+BGPY!(BGPQUIT)  D
 ...I $P(^BGPINDV(BGPIC,62,BGPY,0),U,2)'[BGPRTYPE Q  ;not a denom def for this report
 ...I BGPRTYPE=4,BGPINDT'="S",$P(^BGPINDV(BGPIC,62,BGPY,0),U,3)'[BGPINDT Q  ;don't display
 ...S BGPZ=0 F  S BGPZ=$O(^BGPINDV(BGPIC,62,BGPY,1,BGPZ)) Q:BGPZ'=+BGPZ!(BGPQUIT)  D
 ....I $Y>(BGPIOSL-3) D HEADER^BGP5DPH Q:BGPQUIT
 ....W !,^BGPINDV(BGPIC,62,BGPY,1,BGPZ,0)
 ....Q
 ...;W !
 ...Q
 ..Q
 .W ! S BGPX=0 F  S BGPX=$O(^BGPINDV(BGPIC,11,BGPX)) Q:BGPX'=+BGPX  D
 ..I $Y>(BGPIOSL-3) D HEADER^BGP5DPH Q:BGPQUIT
 ..W !,^BGPINDV(BGPIC,11,BGPX,0)
 .W ! S BGPX=0 F  S BGPX=$O(^BGPINDV(BGPIC,51,BGPX)) Q:BGPX'=+BGPX  D
 ..I $Y>(BGPIOSL-3) D HEADER^BGP5DPH Q:BGPQUIT
 ..W !,^BGPINDV(BGPIC,51,BGPX,0)
 .W ! S BGPX=0 F  S BGPX=$O(^BGPINDV(BGPIC,52,BGPX)) Q:BGPX'=+BGPX  D
 ..I $Y>(BGPIOSL-3) D HEADER^BGP5DPH Q:BGPQUIT
 ..W !,^BGPINDV(BGPIC,52,BGPX,0)
 .X ^BGPINDV(BGPIC,3)
 .I $G(BGPNPL),$D(BGPINDL(BGPIC)) S BGPINDN=BGPIC D NPL1^BGP5NPLP
 ;
 D ^BGP5DSP
 D ^BGP5DS
 D EXIT
 Q
KITM ;
 K ^TMP($J)
 K ^XTMP("BGP5D",BGPJ,BGPH)
 K ^XTMP("BGP5DNP",BGPJ,BGPH)
 Q
SETEXCEL ;EP
 I $G(BGPAREAA) D  Q
 .S X=0 F  S X=$O(BGPSUL(X)) Q:X'=+X  D
 ..S N=^BGPGPDCV(X,0)
 ..S L=$P(N,U,9),L=$O(^AUTTLOC("C",L,0)) S D=$P($G(^AUTTLOC(L,1)),U,3),L=$S(L:$P(^DIC(4,L,0),U),1:"?????")
 ..S BGPEI(X)=L_U_$P(N,U,9)_U_D_U_$$DATE^BGP5UTL($P(N,U,13)) S P=5 F Y=1:1:6 S $P(BGPEI(X),U,P)=$$DATE^BGP5UTL($P(N,U,Y)),P=P+1
 ..Q
 .Q
 S X=BGPRPT
 S N=^BGPGPDCV(X,0)
 S L=$P(N,U,9),L=$O(^AUTTLOC("C",L,0)) S D=$P($G(^AUTTLOC(L,1)),U,3),L=$S(L:$P(^DIC(4,L,0),U),1:"?????")
 S BGPEI(X)=L_U_$P(N,U,9)_U_D_U_$$DATE^BGP5UTL($P(N,U,13)) S P=5 F Y=1:1:6 S $P(BGPEI(X),U,P)=$$DATE^BGP5UTL($P(N,U,Y)),P=P+1
 Q
EXIT ;
 I $E(IOST)="C",IO=IO(0),'$D(ZTQUEUED) W ! S DIR(0)="EO",DIR("A")="End of report.  Press ENTER" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 Q
C(X,X2,X3) ;
 D COMMA^%DTC
 Q X