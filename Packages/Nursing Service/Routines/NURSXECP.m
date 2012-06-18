NURSXECP ;HIRMFO/MD-NURSING DATA EXCEPTION REPORT ;AUG 93
 ;;4.0;NURSING SERVICE;;Apr 25, 1997
EN1 ; CHECK NURSING EDUCATION DATA
 S (NURQUIT,NURQUEUE,NUROUT)=0
 S ZTRTN="START^NURSXECP" D EN7^NURSUT0 G:POP!($D(ZTSK)) QUIT
START ;
 K ^TMP($J) S (NURSW1,NURQUIT,NURPAGE)=0 F DA=0:0 S DA=$O(^NURSF(210,DA)) Q:DA'>0  I +$G(^NURSF(210,DA,0)) W:$R(100) "." D
 .     S NAME=$S($P($G(^VA(200,+$G(^NURSF(210,DA,0)),0)),U)'="":$P($G(^VA(200,+$G(^NURSF(210,DA,0)),0)),U),1:+$G(^NURSF(210,DA,0)))
 .     F D1=0:0 S D1=$O(^NURSF(210,DA,8,D1)) Q:D1'>0  I '($G(^NURSF(210,DA,8,D1,0))="") D
 .     .     S DATA=$G(^NURSF(210,DA,8,D1,0)),CLASS=$S($D(^NURSF(212.4,+$P(DATA,U,2),0)):$P($G(^NURSF(212.4,+$P(DATA,U,2),0)),U),'(+$P(DATA,U,2)>0):0,1:1),DATE=+DATA D CHKCLS
 .     .     Q
 .     F D2=0:0 S D2=$O(^NURSF(210,DA,18,D2)) Q:D2'>0  I '($G(^NURSF(210,DA,18,D2,0))="") D
 .     .     S DATA=$G(^NURSF(210,DA,18,D2,0)),CLASS=$S($P($G(^NURSF(210,DA,18,D2,0)),U)'="":$P($G(^(0)),U),1:0),DATE=+$P($G(^(0)),U,2) D CHKCLS
 .     .     Q
 .     Q
 I $O(^TMP("NURPRSE",$J,""))="" D HEADER W !,"THERE WERE NO EXCEPTION RECORDS FOUND!" G QUIT
 S NAME="" F  S NAME=$O(^TMP("NURPRSE",$J,NAME)) Q:NAME=""  S CLASS="" F  S CLASS=$O(^TMP("NURPRSE",$J,NAME,CLASS)) Q:CLASS=""  S DATE="" F  S DATE=$O(^TMP("NURPRSE",$J,NAME,CLASS,DATE)) Q:DATE=""  D
 .    I 'NURSW1!($Y>(IOSL-2)) D HEADER Q:NURQUIT
 .    W !,$S(CLASS="  BLANK":"",1:CLASS),?34,$S(DATE="  BLANK":"",1:$E(DATE,4,5)_"/"_$E(DATE,6,7)_"/"_$E(DATE,2,3)),?48,NAME,!,"DISCREPANCY: ",^TMP("NURPRSE",$J,NAME,CLASS,DATE),!!
 .    Q
QUIT ;
Q K ^TMP("NURPRSE",$J) D CLOSE^NURSUT1,^NURSKILL
 Q
CHKCLS I CLASS=0,+DATE S ^TMP("NURPRSE",$J,NAME,"  BLANK",DATE)="MISSING CLASS NAME"
 I CLASS=1,+DATE S ^TMP("NURPRSE",$J,NAME,"  BLANK",DATE)="POINTED TO CLASS IS MISSING" Q
 I '(+DATE>0) S ^TMP("NURPRSE",$J,NAME,CLASS,"  BLANK")="MISSING CLASS DATE" Q
 I +NAME S ^TMP("NURPRSE",$J,NAME,CLASS,DATE)="BAD NEW PERSON FILE POINTER"
 I $D(^TMP($J,NAME,CLASS,DATE)) S ^TMP("NURPRSE",$J,NAME,CLASS,DATE)="PREVIOUS ENTRY FOR THIS RECORD/EMPLOYEE"
 S ^TMP($J,NAME,CLASS,DATE)=""
 Q
HEADER I 'NURQUEUE,$E(IOST)="C",NURSW1 W $C(7),! R X:DTIME I '$T!(X="^") S NURQUIT=1 Q
 S X="T",NURPAGE=NURPAGE+1,NURSW1=1 D ^%DT D:+Y D^DIQ W @IOF,Y,?25,"NURSING EDUCATION DATA EXCEPTION REPORT",?72,"PAGE: ",NURPAGE
 W !!,"CLASS",?35,"DATE",?48,"EMPLOYEE NAME"
 S X="",$P(X,"-",80)="" W !,X
 Q