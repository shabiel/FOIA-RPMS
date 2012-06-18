BGP14C16 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1105,63304-0793-90 ",.01)
 ;;63304-0793-90
 ;;9002226.02101,"1105,63304-0793-90 ",.02)
 ;;63304-0793-90
 ;;9002226.02101,"1105,63629-1447-01 ",.01)
 ;;63629-1447-01
 ;;9002226.02101,"1105,63629-1447-01 ",.02)
 ;;63629-1447-01
 ;;9002226.02101,"1105,63629-1464-01 ",.01)
 ;;63629-1464-01
 ;;9002226.02101,"1105,63629-1464-01 ",.02)
 ;;63629-1464-01
 ;;9002226.02101,"1105,63629-1464-02 ",.01)
 ;;63629-1464-02
 ;;9002226.02101,"1105,63629-1464-02 ",.02)
 ;;63629-1464-02
 ;;9002226.02101,"1105,63629-1464-03 ",.01)
 ;;63629-1464-03
 ;;9002226.02101,"1105,63629-1464-03 ",.02)
 ;;63629-1464-03
 ;;9002226.02101,"1105,63629-1606-01 ",.01)
 ;;63629-1606-01
 ;;9002226.02101,"1105,63629-1606-01 ",.02)
 ;;63629-1606-01
 ;;9002226.02101,"1105,63629-1606-02 ",.01)
 ;;63629-1606-02
 ;;9002226.02101,"1105,63629-1606-02 ",.02)
 ;;63629-1606-02
 ;;9002226.02101,"1105,63629-1784-01 ",.01)
 ;;63629-1784-01
 ;;9002226.02101,"1105,63629-1784-01 ",.02)
 ;;63629-1784-01
 ;;9002226.02101,"1105,63629-1784-02 ",.01)
 ;;63629-1784-02
 ;;9002226.02101,"1105,63629-1784-02 ",.02)
 ;;63629-1784-02
 ;;9002226.02101,"1105,63629-3366-01 ",.01)
 ;;63629-3366-01
 ;;9002226.02101,"1105,63629-3366-01 ",.02)
 ;;63629-3366-01
 ;;9002226.02101,"1105,63629-3366-02 ",.01)
 ;;63629-3366-02
 ;;9002226.02101,"1105,63629-3366-02 ",.02)
 ;;63629-3366-02
 ;;9002226.02101,"1105,63629-3366-03 ",.01)
 ;;63629-3366-03
 ;;9002226.02101,"1105,63629-3366-03 ",.02)
 ;;63629-3366-03
 ;;9002226.02101,"1105,63629-3366-04 ",.01)
 ;;63629-3366-04
 ;;9002226.02101,"1105,63629-3366-04 ",.02)
 ;;63629-3366-04
 ;;9002226.02101,"1105,63629-3381-01 ",.01)
 ;;63629-3381-01
 ;;9002226.02101,"1105,63629-3381-01 ",.02)
 ;;63629-3381-01
 ;;9002226.02101,"1105,63629-3381-02 ",.01)
 ;;63629-3381-02
 ;;9002226.02101,"1105,63629-3381-02 ",.02)
 ;;63629-3381-02
 ;;9002226.02101,"1105,63629-3381-03 ",.01)
 ;;63629-3381-03
 ;;9002226.02101,"1105,63629-3381-03 ",.02)
 ;;63629-3381-03
 ;;9002226.02101,"1105,63629-3381-04 ",.01)
 ;;63629-3381-04
 ;;9002226.02101,"1105,63629-3381-04 ",.02)
 ;;63629-3381-04
 ;;9002226.02101,"1105,63629-3385-01 ",.01)
 ;;63629-3385-01
 ;;9002226.02101,"1105,63629-3385-01 ",.02)
 ;;63629-3385-01
 ;;9002226.02101,"1105,63629-3385-02 ",.01)
 ;;63629-3385-02
 ;;9002226.02101,"1105,63629-3385-02 ",.02)
 ;;63629-3385-02
 ;;9002226.02101,"1105,63629-3385-03 ",.01)
 ;;63629-3385-03
 ;;9002226.02101,"1105,63629-3385-03 ",.02)
 ;;63629-3385-03
 ;;9002226.02101,"1105,63629-3385-04 ",.01)
 ;;63629-3385-04
 ;;9002226.02101,"1105,63629-3385-04 ",.02)
 ;;63629-3385-04
 ;;9002226.02101,"1105,63629-3385-05 ",.01)
 ;;63629-3385-05
 ;;9002226.02101,"1105,63629-3385-05 ",.02)
 ;;63629-3385-05
 ;;9002226.02101,"1105,63629-3392-01 ",.01)
 ;;63629-3392-01
 ;;9002226.02101,"1105,63629-3392-01 ",.02)
 ;;63629-3392-01
 ;;9002226.02101,"1105,63629-3393-01 ",.01)
 ;;63629-3393-01
 ;;9002226.02101,"1105,63629-3393-01 ",.02)
 ;;63629-3393-01
 ;;9002226.02101,"1105,63629-3393-02 ",.01)
 ;;63629-3393-02
 ;;9002226.02101,"1105,63629-3393-02 ",.02)
 ;;63629-3393-02
 ;;9002226.02101,"1105,63629-3393-03 ",.01)
 ;;63629-3393-03
 ;;9002226.02101,"1105,63629-3393-03 ",.02)
 ;;63629-3393-03
 ;;9002226.02101,"1105,63629-3393-04 ",.01)
 ;;63629-3393-04
 ;;9002226.02101,"1105,63629-3393-04 ",.02)
 ;;63629-3393-04
 ;;9002226.02101,"1105,63629-3408-01 ",.01)
 ;;63629-3408-01
 ;;9002226.02101,"1105,63629-3408-01 ",.02)
 ;;63629-3408-01
 ;;9002226.02101,"1105,63629-3408-02 ",.01)
 ;;63629-3408-02
 ;;9002226.02101,"1105,63629-3408-02 ",.02)
 ;;63629-3408-02
 ;;9002226.02101,"1105,63629-3408-03 ",.01)
 ;;63629-3408-03
 ;;9002226.02101,"1105,63629-3408-03 ",.02)
 ;;63629-3408-03
 ;;9002226.02101,"1105,63629-3408-04 ",.01)
 ;;63629-3408-04
 ;;9002226.02101,"1105,63629-3408-04 ",.02)
 ;;63629-3408-04
 ;;9002226.02101,"1105,63629-3563-01 ",.01)
 ;;63629-3563-01
 ;;9002226.02101,"1105,63629-3563-01 ",.02)
 ;;63629-3563-01
 ;;9002226.02101,"1105,63629-3583-01 ",.01)
 ;;63629-3583-01
 ;;9002226.02101,"1105,63629-3583-01 ",.02)
 ;;63629-3583-01
 ;;9002226.02101,"1105,63629-3583-02 ",.01)
 ;;63629-3583-02
 ;;9002226.02101,"1105,63629-3583-02 ",.02)
 ;;63629-3583-02
 ;;9002226.02101,"1105,63739-0280-10 ",.01)
 ;;63739-0280-10
 ;;9002226.02101,"1105,63739-0280-10 ",.02)
 ;;63739-0280-10
 ;;9002226.02101,"1105,63739-0280-15 ",.01)
 ;;63739-0280-15
 ;;9002226.02101,"1105,63739-0280-15 ",.02)
 ;;63739-0280-15
 ;;9002226.02101,"1105,63739-0281-03 ",.01)
 ;;63739-0281-03
 ;;9002226.02101,"1105,63739-0281-03 ",.02)
 ;;63739-0281-03
 ;;9002226.02101,"1105,63739-0281-10 ",.01)
 ;;63739-0281-10
 ;;9002226.02101,"1105,63739-0281-10 ",.02)
 ;;63739-0281-10
 ;;9002226.02101,"1105,63739-0281-15 ",.01)
 ;;63739-0281-15
 ;;9002226.02101,"1105,63739-0281-15 ",.02)
 ;;63739-0281-15
 ;;9002226.02101,"1105,63739-0282-03 ",.01)
 ;;63739-0282-03
 ;;9002226.02101,"1105,63739-0282-03 ",.02)
 ;;63739-0282-03
 ;;9002226.02101,"1105,63739-0282-10 ",.01)
 ;;63739-0282-10
 ;;9002226.02101,"1105,63739-0282-10 ",.02)
 ;;63739-0282-10
 ;;9002226.02101,"1105,63739-0419-10 ",.01)
 ;;63739-0419-10
 ;;9002226.02101,"1105,63739-0419-10 ",.02)
 ;;63739-0419-10
 ;;9002226.02101,"1105,63739-0420-10 ",.01)
 ;;63739-0420-10
 ;;9002226.02101,"1105,63739-0420-10 ",.02)
 ;;63739-0420-10
 ;;9002226.02101,"1105,63739-0421-10 ",.01)
 ;;63739-0421-10
 ;;9002226.02101,"1105,63739-0421-10 ",.02)
 ;;63739-0421-10
 ;;9002226.02101,"1105,63739-0422-10 ",.01)
 ;;63739-0422-10
 ;;9002226.02101,"1105,63739-0422-10 ",.02)
 ;;63739-0422-10
 ;;9002226.02101,"1105,63739-0435-10 ",.01)
 ;;63739-0435-10
 ;;9002226.02101,"1105,63739-0435-10 ",.02)
 ;;63739-0435-10
 ;;9002226.02101,"1105,63739-0436-10 ",.01)
 ;;63739-0436-10
 ;;9002226.02101,"1105,63739-0436-10 ",.02)
 ;;63739-0436-10
 ;;9002226.02101,"1105,63739-0437-10 ",.01)
 ;;63739-0437-10
 ;;9002226.02101,"1105,63739-0437-10 ",.02)
 ;;63739-0437-10
 ;;9002226.02101,"1105,63739-0438-10 ",.01)
 ;;63739-0438-10
 ;;9002226.02101,"1105,63739-0438-10 ",.02)
 ;;63739-0438-10
 ;;9002226.02101,"1105,63874-0319-10 ",.01)
 ;;63874-0319-10
 ;;9002226.02101,"1105,63874-0319-10 ",.02)
 ;;63874-0319-10
 ;;9002226.02101,"1105,63874-0319-15 ",.01)
 ;;63874-0319-15
 ;;9002226.02101,"1105,63874-0319-15 ",.02)
 ;;63874-0319-15
 ;;9002226.02101,"1105,63874-0319-30 ",.01)
 ;;63874-0319-30
 ;;9002226.02101,"1105,63874-0319-30 ",.02)
 ;;63874-0319-30
 ;;9002226.02101,"1105,63874-0319-90 ",.01)
 ;;63874-0319-90
 ;;9002226.02101,"1105,63874-0319-90 ",.02)
 ;;63874-0319-90
 ;;9002226.02101,"1105,63874-0589-01 ",.01)
 ;;63874-0589-01
 ;;9002226.02101,"1105,63874-0589-01 ",.02)
 ;;63874-0589-01
 ;;9002226.02101,"1105,63874-0589-10 ",.01)
 ;;63874-0589-10
 ;;9002226.02101,"1105,63874-0589-10 ",.02)
 ;;63874-0589-10
 ;;9002226.02101,"1105,63874-0589-30 ",.01)
 ;;63874-0589-30
 ;;9002226.02101,"1105,63874-0589-30 ",.02)
 ;;63874-0589-30
 ;;9002226.02101,"1105,63874-0589-90 ",.01)
 ;;63874-0589-90
 ;;9002226.02101,"1105,63874-0589-90 ",.02)
 ;;63874-0589-90
 ;;9002226.02101,"1105,63874-0590-01 ",.01)
 ;;63874-0590-01
 ;;9002226.02101,"1105,63874-0590-01 ",.02)
 ;;63874-0590-01
 ;;9002226.02101,"1105,63874-0590-10 ",.01)
 ;;63874-0590-10
 ;;9002226.02101,"1105,63874-0590-10 ",.02)
 ;;63874-0590-10
 ;;9002226.02101,"1105,63874-0590-15 ",.01)
 ;;63874-0590-15
 ;;9002226.02101,"1105,63874-0590-15 ",.02)
 ;;63874-0590-15
 ;;9002226.02101,"1105,63874-0590-30 ",.01)
 ;;63874-0590-30
 ;;9002226.02101,"1105,63874-0590-30 ",.02)
 ;;63874-0590-30
 ;;9002226.02101,"1105,63874-0590-90 ",.01)
 ;;63874-0590-90
 ;;9002226.02101,"1105,63874-0590-90 ",.02)
 ;;63874-0590-90
 ;;9002226.02101,"1105,65243-0065-15 ",.01)
 ;;65243-0065-15
 ;;9002226.02101,"1105,65243-0065-15 ",.02)
 ;;65243-0065-15
 ;;9002226.02101,"1105,65243-0065-45 ",.01)
 ;;65243-0065-45
 ;;9002226.02101,"1105,65243-0065-45 ",.02)
 ;;65243-0065-45
 ;;9002226.02101,"1105,65243-0082-15 ",.01)
 ;;65243-0082-15
 ;;9002226.02101,"1105,65243-0082-15 ",.02)
 ;;65243-0082-15
 ;;9002226.02101,"1105,65243-0082-45 ",.01)
 ;;65243-0082-45
 ;;9002226.02101,"1105,65243-0082-45 ",.02)
 ;;65243-0082-45
 ;;9002226.02101,"1105,65243-0127-45 ",.01)
 ;;65243-0127-45
 ;;9002226.02101,"1105,65243-0127-45 ",.02)
 ;;65243-0127-45
 ;;9002226.02101,"1105,65243-0348-15 ",.01)
 ;;65243-0348-15
 ;;9002226.02101,"1105,65243-0348-15 ",.02)
 ;;65243-0348-15
 ;;9002226.02101,"1105,65243-0348-45 ",.01)
 ;;65243-0348-45
 ;;9002226.02101,"1105,65243-0348-45 ",.02)
 ;;65243-0348-45
 ;;9002226.02101,"1105,65243-0349-15 ",.01)
 ;;65243-0349-15
 ;;9002226.02101,"1105,65243-0349-15 ",.02)
 ;;65243-0349-15
 ;;9002226.02101,"1105,65243-0349-45 ",.01)
 ;;65243-0349-45
 ;;9002226.02101,"1105,65243-0349-45 ",.02)
 ;;65243-0349-45
 ;;9002226.02101,"1105,65243-0350-45 ",.01)
 ;;65243-0350-45
 ;;9002226.02101,"1105,65243-0350-45 ",.02)
 ;;65243-0350-45
 ;;9002226.02101,"1105,65243-0352-03 ",.01)
 ;;65243-0352-03
 ;;9002226.02101,"1105,65243-0352-03 ",.02)
 ;;65243-0352-03
 ;;9002226.02101,"1105,65243-0352-09 ",.01)
 ;;65243-0352-09
 ;;9002226.02101,"1105,65243-0352-09 ",.02)
 ;;65243-0352-09
 ;;9002226.02101,"1105,65243-0352-45 ",.01)
 ;;65243-0352-45
 ;;9002226.02101,"1105,65243-0352-45 ",.02)
 ;;65243-0352-45
 ;;9002226.02101,"1105,65243-0360-45 ",.01)
 ;;65243-0360-45
 ;;9002226.02101,"1105,65243-0360-45 ",.02)
 ;;65243-0360-45
 ;;9002226.02101,"1105,65243-0361-45 ",.01)
 ;;65243-0361-45
 ;;9002226.02101,"1105,65243-0361-45 ",.02)
 ;;65243-0361-45
 ;;9002226.02101,"1105,65243-0365-45 ",.01)
 ;;65243-0365-45
 ;;9002226.02101,"1105,65243-0365-45 ",.02)
 ;;65243-0365-45
 ;;9002226.02101,"1105,65243-0367-09 ",.01)
 ;;65243-0367-09
 ;;9002226.02101,"1105,65243-0367-09 ",.02)
 ;;65243-0367-09
 ;;9002226.02101,"1105,65243-0367-45 ",.01)
 ;;65243-0367-45
 ;;9002226.02101,"1105,65243-0367-45 ",.02)
 ;;65243-0367-45
 ;;9002226.02101,"1105,65862-0050-30 ",.01)
 ;;65862-0050-30
 ;;9002226.02101,"1105,65862-0050-30 ",.02)
 ;;65862-0050-30
 ;;9002226.02101,"1105,65862-0050-90 ",.01)
 ;;65862-0050-90
 ;;9002226.02101,"1105,65862-0050-90 ",.02)
 ;;65862-0050-90
 ;;9002226.02101,"1105,65862-0050-99 ",.01)
 ;;65862-0050-99
 ;;9002226.02101,"1105,65862-0050-99 ",.02)
 ;;65862-0050-99
 ;;9002226.02101,"1105,65862-0051-26 ",.01)
 ;;65862-0051-26
 ;;9002226.02101,"1105,65862-0051-26 ",.02)
 ;;65862-0051-26
 ;;9002226.02101,"1105,65862-0051-30 ",.01)
 ;;65862-0051-30
 ;;9002226.02101,"1105,65862-0051-30 ",.02)
 ;;65862-0051-30
 ;;9002226.02101,"1105,65862-0051-90 ",.01)
 ;;65862-0051-90
 ;;9002226.02101,"1105,65862-0051-90 ",.02)
 ;;65862-0051-90
 ;;9002226.02101,"1105,65862-0051-99 ",.01)
 ;;65862-0051-99
 ;;9002226.02101,"1105,65862-0051-99 ",.02)
 ;;65862-0051-99
 ;;9002226.02101,"1105,65862-0052-26 ",.01)
 ;;65862-0052-26
 ;;9002226.02101,"1105,65862-0052-26 ",.02)
 ;;65862-0052-26
 ;;9002226.02101,"1105,65862-0052-30 ",.01)
 ;;65862-0052-30
 ;;9002226.02101,"1105,65862-0052-30 ",.02)
 ;;65862-0052-30
 ;;9002226.02101,"1105,65862-0052-90 ",.01)
 ;;65862-0052-90
 ;;9002226.02101,"1105,65862-0052-90 ",.02)
 ;;65862-0052-90
 ;;9002226.02101,"1105,65862-0052-99 ",.01)
 ;;65862-0052-99
 ;;9002226.02101,"1105,65862-0052-99 ",.02)
 ;;65862-0052-99
 ;;9002226.02101,"1105,65862-0053-22 ",.01)
 ;;65862-0053-22
 ;;9002226.02101,"1105,65862-0053-22 ",.02)
 ;;65862-0053-22
 ;;9002226.02101,"1105,65862-0053-30 ",.01)
 ;;65862-0053-30
 ;;9002226.02101,"1105,65862-0053-30 ",.02)
 ;;65862-0053-30
 ;;9002226.02101,"1105,65862-0053-90 ",.01)
 ;;65862-0053-90
 ;;9002226.02101,"1105,65862-0053-90 ",.02)
 ;;65862-0053-90
 ;;9002226.02101,"1105,65862-0053-99 ",.01)
 ;;65862-0053-99
 ;;9002226.02101,"1105,65862-0053-99 ",.02)
 ;;65862-0053-99
 ;;9002226.02101,"1105,65862-0054-30 ",.01)
 ;;65862-0054-30
 ;;9002226.02101,"1105,65862-0054-30 ",.02)
 ;;65862-0054-30
 ;;9002226.02101,"1105,65862-0054-39 ",.01)
 ;;65862-0054-39
 ;;9002226.02101,"1105,65862-0054-39 ",.02)
 ;;65862-0054-39
 ;;9002226.02101,"1105,65862-0054-90 ",.01)
 ;;65862-0054-90
 ;;9002226.02101,"1105,65862-0054-90 ",.02)
 ;;65862-0054-90
 ;;9002226.02101,"1105,65862-0054-99 ",.01)
 ;;65862-0054-99
 ;;9002226.02101,"1105,65862-0054-99 ",.02)
 ;;65862-0054-99
 ;;9002226.02101,"1105,66105-0120-01 ",.01)
 ;;66105-0120-01
 ;;9002226.02101,"1105,66105-0120-01 ",.02)
 ;;66105-0120-01
 ;;9002226.02101,"1105,66105-0120-03 ",.01)
 ;;66105-0120-03
 ;;9002226.02101,"1105,66105-0120-03 ",.02)
 ;;66105-0120-03
 ;;9002226.02101,"1105,66105-0120-06 ",.01)
 ;;66105-0120-06
 ;;9002226.02101,"1105,66105-0120-06 ",.02)
 ;;66105-0120-06