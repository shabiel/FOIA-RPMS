BPCRC1 ; IHS/OIT/MJL - REFERRED CARE GUI RPC ROUTINES ;
 ;;1.5;BPC;;MAY 26, 2005
RPRVLIST(BPCRES,BPCX,BPCMAX,BPCMORE,BPCPARAM) ;EP CALL FROM REMOTE PROC: BPC GETRCISPROV
 S BPCGUI=1
EN2 ;
 S U="^",XWBWRAP=1,BPCCTR=0,BPCSUB=$J,BPCC="",BPCMORE=$G(BPCMORE),BPCGUI=$G(BPCGUI),BPCMAX=$G(BPCMAX),BPCX=$G(BPCX),BPCPARAM=$G(BPCPARAM),BPCLEN=$L(BPCX)
 S BPCRES="^BPCRES("_BPCSUB_")",BPCN=""
 S:BPCX'="" BPCN=$O(^BMCLPRV("B",BPCX),-1)
 S:'BPCMAX BPCMAX=$S(BPCGUI:50,1:1E10)
 K ^BPCRES(BPCSUB)
 I BPCMORE'="" D MORERPRV,KILL Q
 D GETPRV1,KILL
 Q
GETPRV1 ;
 S BPCFLAG=0 F  S BPCN=$O(^BMCLPRV("B",BPCN)) Q:BPCN=""  D GETPRV2 Q:BPCFLAG
 S ^BPCRES(BPCSUB,0)=BPCCTR
 Q
GETPRV2 ;
 I BPCX'="",$E(BPCN,1,BPCLEN)'=BPCX S BPCFLAG=1 Q
 S BPCIEN="" F  S BPCIEN=$O(^BMCLPRV("B",BPCN,BPCIEN)) Q:BPCIEN=""  D SETRES Q:BPCFLAG
 Q
MORERPRV ;
 S BPCFLAG=0,BPCN=$P(BPCMORE,"|",1),BPCIEN=$P(BPCMORE,"|",2) D SETRES Q:BPCFLAG
 F  S BPCIEN=$O(^BMCLPRV("B",BPCN,BPCIEN)) Q:BPCIEN=""  D SETRES Q:BPCFLAG
 Q:BPCFLAG
 D GETPRV1
 Q
CLNLIST(BPCRES,BPCX,BPCMAX,BPCMORE,BPCPARAM) ;EP CALL FROM REMOTE PROC: BPC GETCLINLIST
 S BPCGUI=1
EN1 ;
 S U="^",XWBWRAP=1,BPCCTR=0,BPCSUB=$J,BPCC="",BPCMORE=$G(BPCMORE),BPCGUI=$G(BPCGUI),BPCMAX=$G(BPCMAX),BPCX=$G(BPCX),BPCPARAM=$G(BPCPARAM),BPCLEN=$L(BPCX)
 S BPCRES="^BPCRES("_BPCSUB_")",BPCN=""
 S:'BPCMAX BPCMAX=$S(BPCGUI:50,1:1E10)
 K ^BPCRES(BPCSUB)
 I BPCX'="" I $D(^DIC(40.7,"C",BPCX)) S BPCFLG=0 D GETCLN I BPCFLG D KILL Q
 S:BPCX'="" BPCN=$O(^DIC(40.7,"B",BPCX),-1)
 I BPCMORE'="" D MORECLN,KILL Q
 D GETCLN1,KILL
 Q
GETCLN ;
 S BPCIEN=$O(^DIC(40.7,"C",BPCX,""))
 I BPCIEN S ^BPCRES(BPCSUB,0)=1,^BPCRES(BPCSUB,1)=$P($G(^DIC(40.7,BPCIEN,0)),U,1)_U_BPCIEN,BPCFLG=1
 Q
GETCLN1 ;
 S BPCFLAG=0 F  S BPCN=$O(^DIC(40.7,"B",BPCN)) Q:BPCN=""  D GETCLN2 Q:BPCFLAG
 S ^BPCRES(BPCSUB,0)=BPCCTR
 Q
GETCLN2 ;
 I BPCX'="",$E(BPCN,1,BPCLEN)'=BPCX S BPCFLAG=1 Q
 S BPCIEN="" F  S BPCIEN=$O(^DIC(40.7,"B",BPCN,BPCIEN)) Q:BPCIEN=""  D SETRES Q:BPCFLAG
 Q
SETRES ;
 I BPCCTR=BPCMAX D SETMORE S BPCFLAG=1 Q
 S BPCCTR=BPCCTR+1,^BPCRES(BPCSUB,BPCCTR)=BPCN_U_BPCIEN
 Q
MORECLN ;
 S BPCFLAG=0,BPCN=$P(BPCMORE,"|",1),BPCIEN=$P(BPCMORE,"|",2) D SETRES Q:BPCFLAG
 F  S BPCIEN=$O(^DIC(40.7,"B",BPCN,BPCIEN)) Q:BPCIEN=""  D SETRES Q:BPCFLAG
 Q:BPCFLAG
 D GETCLN1
 Q
 ;
REFLIST(BPCRES,BPCIEN,BPCMAX,BPCMORE,BPCPARAM) ;EP CALL FROM REMOTE PROC: BPC GETREFERRALS
 ;POSSIBLE RETURN VALUES
 ; Regular String: (DELIMITED BY "^")
 ; 1. Referral IEN
 ; 2. Referral #
 ; 3. Purpose
 ; 4. Provider Name
 ; 5. Provider IEN
 ; 6. Initiated Date (internal)
 ; 7. Estimated Service Date (internal)
 ; 8. Actual Service Date (internal)
 ; (More to be added)
 ;More String: (DELIMITED BY "|")
 ; 1. "..MORE"
 ; 2. Last Referral IEN
 ; 3. Patient IEN
 ;
 S BPCGUI=1
EN ;
 S U="^",XWBWRAP=1,BPCCTR=0,BPCSUB=$J,BPCC="",BPCMORE=$G(BPCMORE),BPCGUI=$G(BPCGUI),BPCMAX=$G(BPCMAX),BPCPARAM=$G(BPCPARAM),BPCN=""
 S BPCRES="^BPCRES("_BPCSUB_")"
 S:'BPCMAX BPCMAX=$S(BPCGUI:50,1:1E10)
 K ^BPCRES(BPCSUB)
 I BPCIEN="" S ^BPCRES(BPCSUB,0)=-1,^BPCRES(BPCSUB,1)="NO PATIENT IEN SENT WITH REQUEST!"  D KILL Q
 I BPCMORE'="" D MORE,KILL Q
 D GETRES1,KILL
 Q
GETRES1 ;
 I $D(^BMCREF("D",BPCIEN)) S BPCFLAG=0 F  S BPCN=$O(^BMCREF("D",BPCIEN,BPCN),-1) Q:BPCN=""  D GETRES2 Q:BPCFLAG
 S ^BPCRES(BPCSUB,0)=BPCCTR
 Q
GETRES2 ;
 I BPCCTR=BPCMAX D SETMORE S BPCFLAG=1 Q
 S BPCDTA=^BMCREF(BPCN,0),BPCIDATE=$P(BPCDTA,U,1),BPCRNUM=$P(BPCDTA,U,2),BPCPURP=$P($G(^BMCREF(BPCN,12)),U,1),BPCPIEN=$P(BPCDTA,U,6)
 S:BPCPIEN BPCPNAM=$P(^VA(200,BPCPIEN,0),U,1)
 I 'BPCPIEN S BPCPNAM="NO PROVIDER INDICATED"
 S BPCIDAT=$P(BPCDTA,U,1),BPCDTA=$G(^BMCREF(BPCN,11)),BPCEDAT=$P(BPCDTA,U,5),BPCADAT=$P(BPCDTA,U,6)
 S BPCDTA=BPCN_U_BPCRNUM_U_BPCPURP_U_BPCPNAM_U_BPCPIEN_U_BPCIDAT_U_BPCEDAT_U_BPCADAT
 S BPCCTR=BPCCTR+1,^BPCRES(BPCSUB,BPCCTR)=BPCDTA
 Q
SETMORE ;
 S BPCCTR=BPCCTR+1,^BPCRES(BPCSUB,BPCCTR)="..MORE"_U_BPCN_"|"_BPCIEN
 Q
MORE ;
 S BPCFLAG=0,BPCN=$P(BPCMORE,"|",1),BPCIEN=$P(BPCMORE,"|",2) D GETRES2 Q:BPCFLAG
 D GETRES1
 Q
KILL ;
 K BPCX,BPCMAX,BPCMORE,BPCPARAM,BPCGUI,BPCCTR,BPCSUB,BPCC,BPCLEN,BPCN,BPCFLAG,BPCIEN,BPCFLG,BPCDTA,BPCIDATE,BPCRNUM,BPCPURP,BPCPIEN,BPCPNAM,BPCEDAT,BPCADAT
 Q