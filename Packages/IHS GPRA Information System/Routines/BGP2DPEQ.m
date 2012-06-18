BGP2DPEQ ; IHS/CMI/LAB - IHS gpra print ;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
7 ;EP
 I $Y>(BGPIOSL-6) D HEADER^BGP2DPEP Q:BGPQUIT  W !,$P(^BGPPEIW(BGPIC,0),U,2)
 D H1^BGP2DPH
 S BGPCYD=$$V^BGP2DPEP(1,BGPRPT,11,19)
 S BGPPRD=$$V^BGP2DPEP(2,BGPRPT,11,19)
 S BGPBLD=$$V^BGP2DPEP(3,BGPRPT,11,19)
 I '$G(BGPSEAT) W !!,"# User Pop w/ Pat Ed"
 I $G(BGPSEAT) W !!,$P(^DIBT(BGPSEAT,0),U,1)," Population",!," w/ Pat Ed"
 W ?20,$$C^BGP2DPEP(BGPCYD,0,8),?35,$$C^BGP2DPEP(BGPPRD,0,8),?58,$$C^BGP2DPEP(BGPBLD,0,8),!
 W !,"Goal Setting"
 S N=11,P=20 D SETN^BGP2DPEP
 W !,"# w/goal set"
 D H2^BGP2DPH
 S N=11,P=21 D SETN^BGP2DPEP
 W !,"# w/goal not set"
 D H2^BGP2DPH
 S N=11,P=22 D SETN^BGP2DPEP
 W !,"# w/goal met"
 D H2^BGP2DPH
 S N=11,P=23 D SETN^BGP2DPEP
 W !,"# w/goal not met"
 D H2^BGP2DPH
 Q