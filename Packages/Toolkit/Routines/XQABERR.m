XQABERR ;ISC-SF.SEA/JLI - TRACK ERRORS IN ALPHA/BETA ROUTINES BACK TO ISC ;7/23/93  12:49 [ 04/02/2003   8:29 AM ]
 ;;8.0;KERNEL;**1002,1003,1004,1005,1007**;APR 1, 2003
 ;;8.0;KERNEL;;Jul 10, 1995
DOIT ;
 S $P(XQASPAC," ",30)=" " S X="T",%DT="" D ^%DT S XQADT=+Y
 F XQAAB=0:0 S XQAAB=$O(^XTV(8989.3,1,"ABPKG",XQAAB)) Q:XQAAB'>0  S XQAPK=+^(XQAAB,0),XQAAD=$P(^(0),U,3),XQAAD=$P(XQAAD,"@",2) I XQAAD'="" D
 . S X=+$P(^XTV(8989.3,1,"ABPKG",XQAAB,0),U,5) S:X'>0 X=+$P(^(0),U,2) S $P(^(0),U,5)=XQADT
 . D H^%DTC S XQALD=%H-1 D
 .. K ^TMP($J) S XQALIN=1
 .. X ^%ZOSF("UCI") S ^TMP($J,"A",XQALIN)=Y
 .. F XQAK=0:0 S XQAK=$O(^XTV(8989.3,1,"ABPKG",XQAAB,1,XQAK)) Q:XQAK'>0  K XQASTR S XQASTR=^(XQAK,0) I XQASTR'="" D  D T9
 ... F XQAJ=0:0 S XQAJ=$O(^XTV(8989.3,1,"ABPKG",XQAAB,1,XQAK,1,XQAJ)) Q:XQAJ'>0  I $P(^(XQAJ,0),U)'="" S XQASTR(XQAJ)=$P(^(0),U)
 . I XQALIN>1 D MAILIT
 K %DT,%H,X,XMDUZ,XMSUB,XMTEXT,XMY,XQAA,XQAAB,XQAAD,XQAB,XQABY0,XQABYD,XQABYI,XQABYO,XQABYX,XQAD,XQADT,XQAI,XQAJ,XQAK,XQALD,XQALIN,XQAPK,XQASPAC,XQASTR,XQAX,XQAY,Y
 Q
T9 ;
 K ^TMP("XQA",$J)
 S XQADAT=XQALD F XQAI=0:0 S XQADAT=$O(^%ZTER(1,XQADAT)) Q:XQADAT'>0  F X=0:0 S X=$O(^%ZTER(1,XQADAT,1,X)) Q:X'>0  D
 . K XQABY0 S XQABY0="" D  S XQABY0=$P(XQABY0,U)
 .. F XQAJ=0:0 S XQAJ=$O(^%ZTER(1,XQADAT,1,X,"ZV",XQAJ)) Q:XQAJ'>0  I $D(^(XQAJ,0)),$E(^(0),1,3)="XQY" S XQABYX=^(0) I $D(^("D")) S XQABYD=^("D") D  Q:XQABY0'=""
 ... I XQABYX="XQY",XQABYD'="",$D(^DIC(19,XQABYD,0)) S XQABY0(1)=$P(^(0),U) Q
 ... I XQABYX="XQY0",XQABYD'="" S XQABY0=XQABYD
 .. I XQABY0="",$D(XQABYO(1)) S XQABY0=XQABY0(1)
 . I ^%ZTER(1,XQADAT,1,X,"ZE")[(U_XQASTR) S ^TMP("XQA",$J,XQADAT,X)=XQABY0 Q
 . I $E(XQABY0,1,$L(XQASTR))=XQASTR S ^TMP("XQA",$J,XQADAT,X)=XQABY0 Q
 F XQAI=0:0 S XQAI=$O(^TMP("XQA",$J,XQAI)) Q:XQAI'>0  F X=0:0 S X=$O(^TMP("XQA",$J,XQAI,X)) Q:X'>0  S XQADAT=XQAI,XQAD=0,XQAY=^(X) S:XQAY="" XQAY=" " D
 . I ^%ZTER(1,XQADAT,1,X,"ZE")["," S XQAR=$P($P(^("ZE"),",",4),"-",4),XQAR=$P($P(^("ZE"),",",2),"-",3)_$S(XQAR="":"",1:"(")_XQAR_$S(XQAR="":"",1:")")
 . S %H=XQADAT,XQAX=X D YMD^%DTC S XQAR(1)=X,X=XQAX
 . I ^%ZTER(1,XQADAT,1,X,"ZE")["," S XQAR(2)="<"_XQAR_">"_$P(^%ZTER(1,XQADAT,1,X,"ZE"),",",1)_" "
 . I ^%ZTER(1,XQADAT,1,X,"ZE")'["," S XQAR(2)=^("ZE")
 . Q:XQAR(2)'[(U_XQASTR)&($E(XQAY,1,$L(XQASTR))'=XQASTR)  S ^(XQAR(1))=$G(^TMP($J,"B",XQASTR,XQAR(2),XQAY,XQAR(1)))+1
 S XQAA=""
 F  S XQAA=$O(^TMP($J,"B",XQASTR,XQAA)) Q:XQAA=""  S XQAY="" F  S XQAY=$O(^TMP($J,"B",XQASTR,XQAA,XQAY)) Q:XQAY=""  F XQAD=0:0 S XQAD=$O(^TMP($J,"B",XQASTR,XQAA,XQAY,XQAD)) Q:XQAD'>0  D
 . S XQALIN=XQALIN+1,XQAB=XQAA_U S:$L(XQAB)<31 XQAB=$E(XQAB_XQASPAC,1,31) S ^TMP($J,"A",XQALIN)=XQAB_"       "_XQAD_"      "_^(XQAD)_$S(XQAY'=" ":"  "_XQAY,1:"")
Z Q
 ;
MAILIT ;
 S XMY("S.XQAB ERROR LOG SERVER@"_XQAAD)="",XMSUB="ALPHA/BETA TEST ERRORS LOGGED ",XMTEXT="^TMP($J,""A"",",XMDUZ=.5 D ^XMD
 Q