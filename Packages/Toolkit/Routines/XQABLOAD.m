XQABLOAD ;ISC-SF.SEA/JLI - SETUP IF ALPHA/BETA TEST SITE ;04/17/96  13:25 [ 04/02/2003   8:29 AM ]
 ;;8.0;KERNEL;**1002,1003,1004,1005,1007**;APR 1, 2003
 ;;8.0;KERNEL;**28**;Jul 10, 1995
EN(DAINSTAL) ;
 N DIFROM,XPD0,XPD1,XPD,XPDV,Y,D0,DA,DIC,DIE,DIK,DLAYGO,DR,X,XMY,XMDUZ,XMSUB,XMTEXT
 Q:'$D(^XPD(9.6,+$G(DAINSTAL),0))  S XPD0=^(0)
 S XPD=$P(^DIC(9.4,+$P(XPD0,U,2),0),U)
 S XPDV=$$VER^XPDUTL($P(XPD0,U))
 X ^%ZOSF("UCI") I Y'=^%ZOSF("PROD") G KILL
 S X=$G(^XPD(9.6,DAINSTAL,"ABPKG")) Q:X=""  S XQADRS=$P(X,U,3) G:XQADRS="" KILL G:XQADRS'["@" KILL
 S (X,XQPKG)=XPD G:X="" KILL
 S DIC(0)="MX",DIC="^XTV(8989.3,1,""ABPKG"",",DA(1)=1,D0=1 D ^DIC S XQDA=+Y K DIC
 S Y=$P(^XPD(9.6,DAINSTAL,"ABPKG"),U) I Y'="y" D:XQDA>0 RMVTEST G SENDMESG
 D:XQDA>0 CLROPTS I XQDA'>0 S DA(1)=1,D0=1,DIC(0)="L",DLAYGO=8989.3,DIC="^XTV(8989.3,1,""ABPKG"",",DIC("P")=8989.332 D ^DIC S XQDA=+Y
 D:XQDA>0 SETOPTS
 ;
SENDMESG ;
KILL K X1,X2,X3,XQ0,XQ1,XQ2,XQ3,XQ4,XQA,XQADRS,XQBLNK,XQC,XQD1,XQDA,XQI,XQID,XQJ,XQN,XQPKG,XQZ
 Q
 Q
 ;
SETOPTS ;
 S $P(^XTV(8989.3,1,"ABPKG",XQDA,0),U,2,4)=DT_U_XQADRS_U_XPDV
 F XQI=0:0 S XQI=$O(^XPD(9.6,DAINSTAL,"ABNS",XQI)) Q:XQI'>0  D
 . S X=^XPD(9.6,DAINSTAL,"ABNS",XQI,0),DIC="^XTV(8989.3,1,""ABPKG"",XQDA,1,",DA(1)=XQDA,DA(2)=1,DIC(0)="ML",DLAYGO=8989.3,DIC("P")=8989.3321 D:$E(X)="%" FILE^DICN D:$E(X)'="%" ^DIC K DIC I Y>0 K XQID(X) D SET1
 S XQID="" F XQI=0:0 S XQID=$O(XQID(XQID)) Q:XQID=""  S DIC="^XTV(8989.3,1,""ABPKG"",XQDA,1,",DIC(0)="M",X=XQID,DA(1)=XQDA,DA(2)=1 K XQID(XQID) D ^DIC I Y>0 S DA=+Y,DIE=DIC,DR=".01///@" D ^DIE
 Q
SET1 ;
 S XQD1=+Y F XQJ=0:0 S XQJ=$O(^XBD(9.6,DAINSTAL,"ABNS",XQI,1,XQJ)) Q:XQJ'>0  S X=^(XQJ,0) S DIC="^XTV(8989.3,1,""ABPKG"",XQDA,1,XQD1,1,",DIC(0)="ML",DLAYGO=8989.3,DIC("P")=8989.33211,DA(3)=1,DA(2)=XQDA,DA(1)=XQD1 D ^DIC K DIC
 Q
 ;
RMVTEST D CLROPTS S DIK="^XTV(8989.3,1,""ABPKG"",",DA(1)=1,DA=XQDA D ^DIK I $O(^XTV(8989.3,1,"ABPKG",0))'>0 K ^XTV(8989.3,1,"ABOPT")
 Q
 ;
CLROPTS S $P(XQBLNK," ",30)=" "
 K ^TMP($J,"XQAB"),^("XQOPT")
 S X1=$P(^XTV(8989.3,1,"ABPKG",XQDA,0),U,2),X2=$P(^(0),U,3),X3=$P(^(0),U,4),X3=$S(X3="":$E(XPDV,1,$L(XPDV)-1)_($E(XPDV,$L(XPDV))-1),1:X3)
 S ^TMP($J,"XQAB",1)="  "_XQPKG_"   v"_X3_"    OPTION USAGE SINCE "_$E(X1,4,5)_"-"_$E(X1,6,7)_"-"_$E(X1,2,3),^(2)=" ",XQC=2 D GETDATA I $D(^TMP($J,"XQOPT")) D OUTPUT
 Q
GETDATA ;
 F XQ1=0:0 S XQ1=$O(^XTV(8989.3,1,"ABPKG",XQDA,1,XQ1)) Q:XQ1'>0  S XQID=$P(^(XQ1,0),U),XQID(XQID)="" D CHECK
 Q
 ;
CHECK S XQA=$E(XQID,1,$L(XQID)-1)_$C($A($E(XQID,$L(XQID)))-1)_"z"
 F XQ2=0:0 S XQA=$O(^DIC(19,"B",XQA)) Q:XQA=""!($E(XQA,1,$L(XQID))'=XQID)  I $E(XQA,$L(XQID)+1)'="Z" D CHK2
 Q
 ;
CHK2 F XQ3=0:0 S XQ3=$O(^XTV(8989.3,1,"ABPKG",XQDA,1,XQ1,1,XQ3)) Q:XQ3'>0  S XQ4=$P(^(XQ3,0),U) Q:$E(XQA,1,$L(XQ4))=XQ4
 I XQ3'>0 F XQ4=0:0 S XQ4=$O(^DIC(19,"B",XQA,XQ4)) Q:XQ4'>0  S XQN=$P(^DIC(19,XQ4,0),U,1,4),X=$S($D(^XTV(8989.3,1,"ABOPT",XQ4,0)):+$P(^(0),U,2),1:0) K ^XTV(8989.3,1,"ABOPT",XQ4,0) S ^TMP($J,"XQOPT",XQID,(X+1),XQA,XQ4)=XQ4_U_X_U_XQN
 Q
 ;
OUTPUT S XQID=""
 F XQ0=0:0 S XQID=$O(^TMP($J,"XQOPT",XQID)) Q:XQID=""  D SPACE F XQ1=0:0 S XQ1=$O(^TMP($J,"XQOPT",XQID,XQ1)) Q:XQ1'>0  S XQA="" F XQ2=0:0 S XQA=$O(^TMP($J,"XQOPT",XQID,XQ1,XQA)) Q:XQA=""  D OUTA
 S XMY(XQADRS)="",XMY(DUZ)="",XMDUZ=.5,XMSUB=XQPKG_" "_XQ3_" ALPHA/BETA TEST OPTION USAGE",XMTEXT="^TMP($J,""XQAB""," D ^XMD K ^TMP($J,"XQAB"),^("XQOPT"),XMY,XMDUZ,XMSUB,XMTEXT
 Q
 Q
 ;
SPACE S XQC=XQC+1,^TMP($J,"XQAB",XQC)=" "
 Q
OUTA ;
 F XQ3=0:0 S XQ3=$O(^TMP($J,"XQOPT",XQID,XQ1,XQA,XQ3)) Q:XQ3'>0  S X=^(XQ3),XQZ=$P(X,U,2),Y=$P(X,U,3,99) D MAIL
 Q
MAIL ;
 S XQC=XQC+1,^TMP($J,"XQAB",XQC)=$E($E($P(Y,U),1,24)_XQBLNK,1,26)_$P(Y,U,4)_"    "_$J(+XQZ,6)_"   "_$E($P(Y,U,2),1,38)
 Q
 ;