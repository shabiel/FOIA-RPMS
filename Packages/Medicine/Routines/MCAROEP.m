MCAROEP ; GENERATED FROM 'MCAREP1' PRINT TEMPLATE (#3701) ; 11/29/04 ; (FILE 691.8, MARGIN=80)
 G BEGIN
N W !
T W:$X ! I '$D(DIOT(2)),DN,$D(IOSL),$S('$D(DIWF):1,$P(DIWF,"B",2):$P(DIWF,"B",2),1:1)+$Y'<IOSL,$D(^UTILITY($J,1))#2,^(1)?1U1P1E.E X ^(1)
 S DISTP=DISTP+1,DILCT=DILCT+1 D:'(DISTP#100) CSTP^DIO2
 Q
DT I $G(DUZ("LANG"))>1,Y W $$OUT^DIALOGU(Y,"DD") Q
 I Y W $P("JAN^FEB^MAR^APR^MAY^JUN^JUL^AUG^SEP^OCT^NOV^DEC",U,$E(Y,4,5))_" " W:Y#100 $J(Y#100\1,2)_"," W Y\10000+1700 W:Y#1 "  "_$E(Y_0,9,10)_":"_$E(Y_"000",11,12) Q
 W Y Q
M D @DIXX
 Q
BEGIN ;
 S:'$D(DN) DN=1 S DISTP=$G(DISTP),DILCT=$G(DILCT)
 I $D(DXS)<9 M DXS=^DIPT(3701,"DXS")
 S I(0)="^MCAR(691.8,",J(0)=691.8
 D N:$X>44 Q:'DN  W ?44 W "WARD/CLINIC: "
 S X=$G(^MCAR(691.8,D0,15)) S Y=$P(X,U,3) S Y=$S(Y="":Y,$D(^SC(Y,0))#2:$P(^(0),U),1:Y) W $E(Y,1,20)
 D T Q:'DN  D N D N:$X>4 Q:'DN  W ?4 W "ARRHYTHMIA DIAGNOSIS:"
 S I(1)=5,J(1)=691.805 F D1=0:0 Q:$O(^MCAR(691.8,D0,5,D1))'>0  X:$D(DSC(691.805)) DSC(691.805) S D1=$O(^(D1)) Q:D1'>0  D:$X>27 T Q:'DN  D A1
 G A1R
A1 ;
 S X=$G(^MCAR(691.8,D0,5,D1,0)) D N:$X>26 Q:'DN  W ?26 S Y=$P(X,U,1) S Y=$S(Y="":Y,$D(^MCAR(697.5,Y,0))#2:$P(^(0),U),1:Y) W $E(Y,1,50)
 Q
A1R ;
 D N:$X>4 Q:'DN  W ?4 W "CARDIAC DIAGNOSIS:"
 S X=$G(^MCAR(691.8,D0,6)) D N:$X>24 Q:'DN  W ?24 S Y=$P(X,U,1) S Y=$S(Y="":Y,$D(^MCAR(697.5,Y,0))#2:$P(^(0),U),1:Y) W $E(Y,1,50)
 D N:$X>4 Q:'DN  W ?4 W "REASON FOR STUDY:"
 S X=$G(^MCAR(691.8,D0,4)) D N:$X>24 Q:'DN  S DIWL=25,DIWR=79 S Y=$P(X,U,4) S X=Y D ^DIWP
 D 0^DIWW
 D ^DIWW
 D N:$X>4 Q:'DN  W ?4 W "SYMPTOMS:"
 S I(1)=1,J(1)=691.801 F D1=0:0 Q:$O(^MCAR(691.8,D0,1,D1))'>0  X:$D(DSC(691.801)) DSC(691.801) S D1=$O(^(D1)) Q:D1'>0  D:$X>15 T Q:'DN  D B1
 G B1R
B1 ;
 S X=$G(^MCAR(691.8,D0,1,D1,0)) D N:$X>15 Q:'DN  S DIWL=16,DIWR=75 S Y=$P(X,U,1) S Y=$S(Y="":Y,$D(^MCAR(695.5,Y,0))#2:$P(^(0),U),1:Y) S X=Y D ^DIWP
 D 0^DIWW
 D ^DIWW
 Q
B1R ;
 D N:$X>4 Q:'DN  W ?4 W "RISK FACTORS:"
 S I(1)=2,J(1)=691.802 F D1=0:0 Q:$O(^MCAR(691.8,D0,2,D1))'>0  X:$D(DSC(691.802)) DSC(691.802) S D1=$O(^(D1)) Q:D1'>0  D:$X>19 T Q:'DN  D C1
 G C1R
C1 ;
 S X=$G(^MCAR(691.8,D0,2,D1,0)) D N:$X>18 Q:'DN  W ?18 S Y=$P(X,U,1) S Y=$S(Y="":Y,$D(^MCAR(695.4,Y,0))#2:$P(^(0),U),1:Y) W $E(Y,1,40)
 Q
C1R ;
 D T Q:'DN  D N D N:$X>4 Q:'DN  W ?4 W "HX:"
 S I(1)=7,J(1)=691.87 F D1=0:0 Q:$O(^MCAR(691.8,D0,7,D1))'>0  S D1=$O(^(D1)) D:$X>9 T Q:'DN  D D1
 G D1R
D1 ;
 S X=$G(^MCAR(691.8,D0,7,D1,0)) S DIWL=10,DIWR=78 D ^DIWP
 Q
D1R ;
 D 0^DIWW
 D ^DIWW
 D T Q:'DN  D N D N:$X>4 Q:'DN  W ?4 X DXS(1,9.2) S X=$S(DIP(2):DIP(3),DIP(4):X) K DIP K:DN Y W X
 D N:$X>44 Q:'DN  W ?44 X DXS(2,9.3) S X=$S(DIP(3):DIP(4),DIP(5):X) K DIP K:DN Y W X
 S I(1)=9,J(1)=691.804 F D1=0:0 Q:$O(^MCAR(691.8,D0,9,D1))'>0  X:$D(DSC(691.804)) DSC(691.804) S D1=$O(^(D1)) Q:D1'>0  D:$X>55 T Q:'DN  D E1
 G E1R
E1 ;
 D T Q:'DN  D N D N:$X>4 Q:'DN  W ?4 X DXS(3,9) K DIP K:DN Y W X
 D N:$X>7 Q:'DN  W ?7 W "RHYTHM:"
 S X=$G(^MCAR(691.8,D0,9,D1,0)) D N:$X>16 Q:'DN  S DIWL=17,DIWR=76 S Y=$P(X,U,2) S X=Y D ^DIWP
 D 0^DIWW
 D ^DIWW
 D N:$X>7 Q:'DN  W ?7 W "RESPONSE TO ATROPINE:"
 S X=$G(^MCAR(691.8,D0,9,D1,0)) D N:$X>30 Q:'DN  S DIWL=31,DIWR=77 S Y=$P(X,U,3) S X=Y D ^DIWP
 D 0^DIWW
 D ^DIWW
 D N:$X>7 Q:'DN  W ?7 W "RESPONSE TO EXERCISE:"
 S X=$G(^MCAR(691.8,D0,9,D1,1)) D N:$X>30 Q:'DN  S DIWL=31,DIWR=77 S Y=$P(X,U,1) S X=Y D ^DIWP
 D 0^DIWW
 D ^DIWW
 D N:$X>7 Q:'DN  W ?7 W "RESPONSE TO CAROTID MASSAGE:"
 S X=$G(^MCAR(691.8,D0,9,D1,2)) D N:$X>37 Q:'DN  S DIWL=38,DIWR=77 S Y=$P(X,U,1) S X=Y D ^DIWP
 D 0^DIWW
 D ^DIWW
 Q
E1R ;
 S I(1)=10,J(1)=691.811 F D1=0:0 Q:$O(^MCAR(691.8,D0,10,D1))'>0  X:$D(DSC(691.811)) DSC(691.811) S D1=$O(^(D1)) Q:D1'>0  D:$X>79 T Q:'DN  D F1
 G F1R
F1 ;
 D N:$X>4 Q:'DN  W ?4 X DXS(4,9) K DIP K:DN Y W X
 D N:$X>7 Q:'DN  W ?7 X DXS(5,9.2) S X=$S(DIP(2):DIP(3),DIP(4):X) K DIP K:DN Y W X
 S X=$G(^MCAR(691.8,D0,10,D1,0)) S Y=$P(X,U,2) W:Y]"" $J(Y,5,1)
 Q
F1R ;
 D T Q:'DN  D N D N:$X>4 Q:'DN  W ?4 W "HEART MEDICATIONS:"
 S I(1)=3,J(1)=691.803 F D1=0:0 Q:$O(^MCAR(691.8,D0,3,D1))'>0  X:$D(DSC(691.803)) DSC(691.803) S D1=$O(^(D1)) Q:D1'>0  D:$X>24 T Q:'DN  D G1
 G G1R
G1 ;
 S X=$G(^MCAR(691.8,D0,3,D1,0)) D N:$X>7 Q:'DN  W ?7 S Y=$P(X,U,1) S Y=$S(Y="":Y,$D(^MCAR(695,Y,0))#2:$P(^(0),U),1:Y) S Y=$S(Y="":Y,$D(^PSDRUG(Y,0))#2:$P(^(0),U),1:Y) W $E(Y,1,40)
 S DIP(1)=$S($D(^MCAR(691.8,D0,3,D1,0)):^(0),1:"") S X=" "_$P(DIP(1),U,2) K DIP K:DN Y W X
 S DIP(1)=$S($D(^MCAR(691.8,D0,3,D1,0)):^(0),1:"") S X=" "_$P(DIP(1),U,3) K DIP K:DN Y W X
 Q
G1R ;
 D T Q:'DN  D N D N:$X>4 Q:'DN  W ?4 W "SVT TYPE: "
 S DICMX="D L^DIWP" S DIWL=17,DIWR=78 X DXS(6,9.4) S X=$P($P(DIP(103),$C(59)_$P(DIP(102),U,1)_":",2),$C(59),1) S D0=I(0,0) S D1=I(1,0) K DIP K:DN Y
 D 0^DIWW
 D ^DIWW
 D T Q:'DN  D N D N:$X>4 Q:'DN  W ?4 W "INTERPRETATION:"
 S I(1)=12,J(1)=691.813 F D1=0:0 Q:$O(^MCAR(691.8,D0,12,D1))'>0  S D1=$O(^(D1)) D:$X>21 T Q:'DN  D H1
 G H1R
H1 ;
 S X=$G(^MCAR(691.8,D0,12,D1,0)) S DIWL=22,DIWR=78 D ^DIWP
 Q
H1R ;
 D 0^DIWW
 D ^DIWW
 D T Q:'DN  D N D N:$X>4 Q:'DN  W ?4 W "COMMENTS: "
 S I(1)=13,J(1)=691.814 F D1=0:0 Q:$O(^MCAR(691.8,D0,13,D1))'>0  S D1=$O(^(D1)) D:$X>16 T Q:'DN  D I1
 G I1R
I1 ;
 S X=$G(^MCAR(691.8,D0,13,D1,0)) S DIWL=17,DIWR=76 D ^DIWP
 Q
I1R ;
 D 0^DIWW
 D ^DIWW
 D T Q:'DN  D N D N:$X>4 Q:'DN  W ?4 W "FOLLOW UP: "
 S I(1)=14,J(1)=691.815 F D1=0:0 Q:$O(^MCAR(691.8,D0,14,D1))'>0  X:$D(DSC(691.815)) DSC(691.815) S D1=$O(^(D1)) Q:D1'>0  D:$X>17 T Q:'DN  D J1
 G J1R
J1 ;
 S X=$G(^MCAR(691.8,D0,14,D1,0)) D N:$X>16 Q:'DN  W ?16 S Y=$P(X,U,1) W:Y]"" $S($D(DXS(7,Y)):DXS(7,Y),1:Y)
 Q
J1R ;
 D T Q:'DN  D N D N D N:$X>4 Q:'DN  W ?4 W "CARDIOLOGY STAFF: "
 S X=$G(^MCAR(691.8,D0,15)) W ?24 S Y=$P(X,U,1) S Y=$S(Y="":Y,$D(^VA(200,Y,0))#2:$P(^(0),U),1:Y) W $E(Y,1,35)
 D N:$X>4 Q:'DN  W ?4 W "CARDIOLOGY STAFF (2nd): "
 W ?30 S Y=$P(X,U,4) S Y=$S(Y="":Y,$D(^VA(200,Y,0))#2:$P(^(0),U),1:Y) W $E(Y,1,35)
 D T Q:'DN  D N D N:$X>4 Q:'DN  W ?4 W "CARDIOLOGY FELLOW: "
 W ?25 S Y=$P(X,U,2) S Y=$S(Y="":Y,$D(^VA(200,Y,0))#2:$P(^(0),U),1:Y) W $E(Y,1,35)
 D N:$X>4 Q:'DN  W ?4 W "CARDIOLOGY FELLOW (2ND) "
 W ?30 S Y=$P(X,U,5) S Y=$S(Y="":Y,$D(^VA(200,Y,0))#2:$P(^(0),U),1:Y) W $E(Y,1,35)
 K Y K DIWF
 Q
HEAD ;
 W !,"--------------------------------------------------------------------------------",!!