APCP20P3 ; IHS/TUCSON/LAB - post init patch 3 ; [ 08/18/2003   7:44 AM ]
 ;;2.0;IHS PCC DATA EXTRACTION;**3**;APR 03, 1998
 ;
 ;
 W !,"Re-setting .14 of visit... Hold on, this will take a little while.."
 S APCPLOG=0 NEW X S X=$O(^APCPLOG("B",2980801))
 I X S APCPLOG=$O(^APCPLOG("B",X,0))
 I 'APCPLOG S APCPLOG=$P(^APCPLOG(0),U,4)-4 I APCPLOG<0 S APCPLOG=0
 F  S APCPLOG=$O(^APCPLOG(APCPLOG)) Q:APCPLOG'=+APCPLOG  D
 .W ":",APCPLOG
 .S APCPD=$P($P(^APCPLOG(APCPLOG,0),U,3),".")
 .S APCPV=0 F  S APCPV=$O(^APCPLOG(APCPLOG,21,APCPV)) Q:APCPV'=+APCPV  D
 ..Q:'$D(^AUPNVSIT(APCPV,0))
 ..S Y=$P(^APCPLOG(APCPLOG,21,APCPV,0),U,7)
 ..Q:'Y
 ..I $P(^AUPNVSIT(APCPV,0),U,14)="" S $P(^AUPNVSIT(APCPV,0),U,14)=APCPD
 ..S $P(^APCPLOG(APCPLOG,21,APCPV,0),U,5)=1
 .Q
 W "ALL DONE"
 NEW X
 S X=$$ADD^XPDMENU("APCPMENU","APCP RE-EXPORT MENU","REX",99)
 I 'X W "Attempt to add Re-Export Menu failed." H 3
 K APCPLOG,APCPV,Y,X
 Q