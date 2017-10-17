BGP73K29 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 05, 2017;
 ;;17.1;IHS CLINICAL REPORTING;;MAY 10, 2017;Build 29
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"872,63304-0835-10 ",.01)
 ;;63304-0835-10
 ;;9002226.02101,"872,63304-0835-10 ",.02)
 ;;63304-0835-10
 ;;9002226.02101,"872,63304-0836-01 ",.01)
 ;;63304-0836-01
 ;;9002226.02101,"872,63304-0836-01 ",.02)
 ;;63304-0836-01
 ;;9002226.02101,"872,63304-0836-10 ",.01)
 ;;63304-0836-10
 ;;9002226.02101,"872,63304-0836-10 ",.02)
 ;;63304-0836-10
 ;;9002226.02101,"872,63304-0837-01 ",.01)
 ;;63304-0837-01
 ;;9002226.02101,"872,63304-0837-01 ",.02)
 ;;63304-0837-01
 ;;9002226.02101,"872,63304-0837-10 ",.01)
 ;;63304-0837-10
 ;;9002226.02101,"872,63304-0837-10 ",.02)
 ;;63304-0837-10
 ;;9002226.02101,"872,63629-1240-01 ",.01)
 ;;63629-1240-01
 ;;9002226.02101,"872,63629-1240-01 ",.02)
 ;;63629-1240-01
 ;;9002226.02101,"872,63629-1241-01 ",.01)
 ;;63629-1241-01
 ;;9002226.02101,"872,63629-1241-01 ",.02)
 ;;63629-1241-01
 ;;9002226.02101,"872,63629-1242-01 ",.01)
 ;;63629-1242-01
 ;;9002226.02101,"872,63629-1242-01 ",.02)
 ;;63629-1242-01
 ;;9002226.02101,"872,63629-1254-01 ",.01)
 ;;63629-1254-01
 ;;9002226.02101,"872,63629-1254-01 ",.02)
 ;;63629-1254-01
 ;;9002226.02101,"872,63629-1338-01 ",.01)
 ;;63629-1338-01
 ;;9002226.02101,"872,63629-1338-01 ",.02)
 ;;63629-1338-01
 ;;9002226.02101,"872,63629-1454-01 ",.01)
 ;;63629-1454-01
 ;;9002226.02101,"872,63629-1454-01 ",.02)
 ;;63629-1454-01
 ;;9002226.02101,"872,63629-1522-01 ",.01)
 ;;63629-1522-01
 ;;9002226.02101,"872,63629-1522-01 ",.02)
 ;;63629-1522-01
 ;;9002226.02101,"872,63629-1522-02 ",.01)
 ;;63629-1522-02
 ;;9002226.02101,"872,63629-1522-02 ",.02)
 ;;63629-1522-02
 ;;9002226.02101,"872,63629-1522-03 ",.01)
 ;;63629-1522-03
 ;;9002226.02101,"872,63629-1522-03 ",.02)
 ;;63629-1522-03
 ;;9002226.02101,"872,63629-1525-01 ",.01)
 ;;63629-1525-01
 ;;9002226.02101,"872,63629-1525-01 ",.02)
 ;;63629-1525-01
 ;;9002226.02101,"872,63629-1525-02 ",.01)
 ;;63629-1525-02
 ;;9002226.02101,"872,63629-1525-02 ",.02)
 ;;63629-1525-02
 ;;9002226.02101,"872,63629-1525-03 ",.01)
 ;;63629-1525-03
 ;;9002226.02101,"872,63629-1525-03 ",.02)
 ;;63629-1525-03
 ;;9002226.02101,"872,63629-1526-01 ",.01)
 ;;63629-1526-01
 ;;9002226.02101,"872,63629-1526-01 ",.02)
 ;;63629-1526-01
 ;;9002226.02101,"872,63629-1526-02 ",.01)
 ;;63629-1526-02
 ;;9002226.02101,"872,63629-1526-02 ",.02)
 ;;63629-1526-02
 ;;9002226.02101,"872,63629-1679-01 ",.01)
 ;;63629-1679-01
 ;;9002226.02101,"872,63629-1679-01 ",.02)
 ;;63629-1679-01
 ;;9002226.02101,"872,63629-1679-02 ",.01)
 ;;63629-1679-02
 ;;9002226.02101,"872,63629-1679-02 ",.02)
 ;;63629-1679-02
 ;;9002226.02101,"872,63629-1679-03 ",.01)
 ;;63629-1679-03
 ;;9002226.02101,"872,63629-1679-03 ",.02)
 ;;63629-1679-03
 ;;9002226.02101,"872,63629-1706-01 ",.01)
 ;;63629-1706-01
 ;;9002226.02101,"872,63629-1706-01 ",.02)
 ;;63629-1706-01
 ;;9002226.02101,"872,63629-1728-01 ",.01)
 ;;63629-1728-01
 ;;9002226.02101,"872,63629-1728-01 ",.02)
 ;;63629-1728-01
 ;;9002226.02101,"872,63629-1809-01 ",.01)
 ;;63629-1809-01
 ;;9002226.02101,"872,63629-1809-01 ",.02)
 ;;63629-1809-01
 ;;9002226.02101,"872,63629-2541-01 ",.01)
 ;;63629-2541-01
 ;;9002226.02101,"872,63629-2541-01 ",.02)
 ;;63629-2541-01
 ;;9002226.02101,"872,63629-2672-01 ",.01)
 ;;63629-2672-01
 ;;9002226.02101,"872,63629-2672-01 ",.02)
 ;;63629-2672-01
 ;;9002226.02101,"872,63629-2680-01 ",.01)
 ;;63629-2680-01
 ;;9002226.02101,"872,63629-2680-01 ",.02)
 ;;63629-2680-01
 ;;9002226.02101,"872,63629-2680-02 ",.01)
 ;;63629-2680-02
 ;;9002226.02101,"872,63629-2680-02 ",.02)
 ;;63629-2680-02
 ;;9002226.02101,"872,63629-2688-01 ",.01)
 ;;63629-2688-01
 ;;9002226.02101,"872,63629-2688-01 ",.02)
 ;;63629-2688-01
 ;;9002226.02101,"872,63629-2735-01 ",.01)
 ;;63629-2735-01
 ;;9002226.02101,"872,63629-2735-01 ",.02)
 ;;63629-2735-01
 ;;9002226.02101,"872,63629-2908-01 ",.01)
 ;;63629-2908-01
 ;;9002226.02101,"872,63629-2908-01 ",.02)
 ;;63629-2908-01
 ;;9002226.02101,"872,63629-2908-02 ",.01)
 ;;63629-2908-02
 ;;9002226.02101,"872,63629-2908-02 ",.02)
 ;;63629-2908-02
 ;;9002226.02101,"872,63629-2908-03 ",.01)
 ;;63629-2908-03
 ;;9002226.02101,"872,63629-2908-03 ",.02)
 ;;63629-2908-03
 ;;9002226.02101,"872,63629-2923-01 ",.01)
 ;;63629-2923-01
 ;;9002226.02101,"872,63629-2923-01 ",.02)
 ;;63629-2923-01
 ;;9002226.02101,"872,63629-2935-01 ",.01)
 ;;63629-2935-01
 ;;9002226.02101,"872,63629-2935-01 ",.02)
 ;;63629-2935-01
 ;;9002226.02101,"872,63739-0042-01 ",.01)
 ;;63739-0042-01
 ;;9002226.02101,"872,63739-0042-01 ",.02)
 ;;63739-0042-01
 ;;9002226.02101,"872,63739-0043-01 ",.01)
 ;;63739-0043-01
 ;;9002226.02101,"872,63739-0043-01 ",.02)
 ;;63739-0043-01
 ;;9002226.02101,"872,63739-0302-10 ",.01)
 ;;63739-0302-10
 ;;9002226.02101,"872,63739-0302-10 ",.02)
 ;;63739-0302-10
 ;;9002226.02101,"872,63739-0322-05 ",.01)
 ;;63739-0322-05
 ;;9002226.02101,"872,63739-0322-05 ",.02)
 ;;63739-0322-05
 ;;9002226.02101,"872,63739-0348-10 ",.01)
 ;;63739-0348-10
 ;;9002226.02101,"872,63739-0348-10 ",.02)
 ;;63739-0348-10
 ;;9002226.02101,"872,63739-0349-10 ",.01)
 ;;63739-0349-10
 ;;9002226.02101,"872,63739-0349-10 ",.02)
 ;;63739-0349-10
 ;;9002226.02101,"872,63739-0350-10 ",.01)
 ;;63739-0350-10
 ;;9002226.02101,"872,63739-0350-10 ",.02)
 ;;63739-0350-10
 ;;9002226.02101,"872,63874-0058-10 ",.01)
 ;;63874-0058-10
 ;;9002226.02101,"872,63874-0058-10 ",.02)
 ;;63874-0058-10
 ;;9002226.02101,"872,63874-0058-15 ",.01)
 ;;63874-0058-15
 ;;9002226.02101,"872,63874-0058-15 ",.02)
 ;;63874-0058-15
 ;;9002226.02101,"872,63874-0058-30 ",.01)
 ;;63874-0058-30
 ;;9002226.02101,"872,63874-0058-30 ",.02)
 ;;63874-0058-30
 ;;9002226.02101,"872,63874-0058-90 ",.01)
 ;;63874-0058-90
 ;;9002226.02101,"872,63874-0058-90 ",.02)
 ;;63874-0058-90
 ;;9002226.02101,"872,63874-0347-01 ",.01)
 ;;63874-0347-01
 ;;9002226.02101,"872,63874-0347-01 ",.02)
 ;;63874-0347-01
 ;;9002226.02101,"872,63874-0347-02 ",.01)
 ;;63874-0347-02
 ;;9002226.02101,"872,63874-0347-02 ",.02)
 ;;63874-0347-02
 ;;9002226.02101,"872,63874-0347-05 ",.01)
 ;;63874-0347-05
 ;;9002226.02101,"872,63874-0347-05 ",.02)
 ;;63874-0347-05
 ;;9002226.02101,"872,63874-0347-20 ",.01)
 ;;63874-0347-20
 ;;9002226.02101,"872,63874-0347-20 ",.02)
 ;;63874-0347-20
 ;;9002226.02101,"872,63874-0347-30 ",.01)
 ;;63874-0347-30
 ;;9002226.02101,"872,63874-0347-30 ",.02)
 ;;63874-0347-30
 ;;9002226.02101,"872,63874-0347-40 ",.01)
 ;;63874-0347-40
 ;;9002226.02101,"872,63874-0347-40 ",.02)
 ;;63874-0347-40
 ;;9002226.02101,"872,63874-0347-42 ",.01)
 ;;63874-0347-42
 ;;9002226.02101,"872,63874-0347-42 ",.02)
 ;;63874-0347-42
 ;;9002226.02101,"872,63874-0347-45 ",.01)
 ;;63874-0347-45
 ;;9002226.02101,"872,63874-0347-45 ",.02)
 ;;63874-0347-45
 ;;9002226.02101,"872,63874-0347-90 ",.01)
 ;;63874-0347-90
 ;;9002226.02101,"872,63874-0347-90 ",.02)
 ;;63874-0347-90
 ;;9002226.02101,"872,63874-0348-01 ",.01)
 ;;63874-0348-01
 ;;9002226.02101,"872,63874-0348-01 ",.02)
 ;;63874-0348-01
 ;;9002226.02101,"872,63874-0348-10 ",.01)
 ;;63874-0348-10
 ;;9002226.02101,"872,63874-0348-10 ",.02)
 ;;63874-0348-10
 ;;9002226.02101,"872,63874-0348-14 ",.01)
 ;;63874-0348-14
 ;;9002226.02101,"872,63874-0348-14 ",.02)
 ;;63874-0348-14
 ;;9002226.02101,"872,63874-0348-20 ",.01)
 ;;63874-0348-20
 ;;9002226.02101,"872,63874-0348-20 ",.02)
 ;;63874-0348-20
 ;;9002226.02101,"872,63874-0348-30 ",.01)
 ;;63874-0348-30
 ;;9002226.02101,"872,63874-0348-30 ",.02)
 ;;63874-0348-30
 ;;9002226.02101,"872,63874-0348-60 ",.01)
 ;;63874-0348-60
 ;;9002226.02101,"872,63874-0348-60 ",.02)
 ;;63874-0348-60
 ;;9002226.02101,"872,63874-0348-90 ",.01)
 ;;63874-0348-90
 ;;9002226.02101,"872,63874-0348-90 ",.02)
 ;;63874-0348-90
 ;;9002226.02101,"872,63874-0379-10 ",.01)
 ;;63874-0379-10
 ;;9002226.02101,"872,63874-0379-10 ",.02)
 ;;63874-0379-10
 ;;9002226.02101,"872,63874-0379-30 ",.01)
 ;;63874-0379-30
 ;;9002226.02101,"872,63874-0379-30 ",.02)
 ;;63874-0379-30
 ;;9002226.02101,"872,63874-0423-01 ",.01)
 ;;63874-0423-01
 ;;9002226.02101,"872,63874-0423-01 ",.02)
 ;;63874-0423-01
 ;;9002226.02101,"872,63874-0423-07 ",.01)
 ;;63874-0423-07
 ;;9002226.02101,"872,63874-0423-07 ",.02)
 ;;63874-0423-07
 ;;9002226.02101,"872,63874-0423-10 ",.01)
 ;;63874-0423-10
 ;;9002226.02101,"872,63874-0423-10 ",.02)
 ;;63874-0423-10
 ;;9002226.02101,"872,63874-0423-14 ",.01)
 ;;63874-0423-14
 ;;9002226.02101,"872,63874-0423-14 ",.02)
 ;;63874-0423-14
 ;;9002226.02101,"872,63874-0423-20 ",.01)
 ;;63874-0423-20
 ;;9002226.02101,"872,63874-0423-20 ",.02)
 ;;63874-0423-20
 ;;9002226.02101,"872,63874-0423-30 ",.01)
 ;;63874-0423-30
 ;;9002226.02101,"872,63874-0423-30 ",.02)
 ;;63874-0423-30
 ;;9002226.02101,"872,63874-0423-60 ",.01)
 ;;63874-0423-60
 ;;9002226.02101,"872,63874-0423-60 ",.02)
 ;;63874-0423-60
 ;;9002226.02101,"872,63874-0514-01 ",.01)
 ;;63874-0514-01
 ;;9002226.02101,"872,63874-0514-01 ",.02)
 ;;63874-0514-01
 ;;9002226.02101,"872,63874-0514-10 ",.01)
 ;;63874-0514-10
 ;;9002226.02101,"872,63874-0514-10 ",.02)
 ;;63874-0514-10
 ;;9002226.02101,"872,63874-0514-14 ",.01)
 ;;63874-0514-14
 ;;9002226.02101,"872,63874-0514-14 ",.02)
 ;;63874-0514-14
 ;;9002226.02101,"872,63874-0514-15 ",.01)
 ;;63874-0514-15
 ;;9002226.02101,"872,63874-0514-15 ",.02)
 ;;63874-0514-15
 ;;9002226.02101,"872,63874-0514-16 ",.01)
 ;;63874-0514-16
 ;;9002226.02101,"872,63874-0514-16 ",.02)
 ;;63874-0514-16
 ;;9002226.02101,"872,63874-0514-20 ",.01)
 ;;63874-0514-20
 ;;9002226.02101,"872,63874-0514-20 ",.02)
 ;;63874-0514-20
 ;;9002226.02101,"872,63874-0514-28 ",.01)
 ;;63874-0514-28
 ;;9002226.02101,"872,63874-0514-28 ",.02)
 ;;63874-0514-28
 ;;9002226.02101,"872,63874-0514-30 ",.01)
 ;;63874-0514-30
 ;;9002226.02101,"872,63874-0514-30 ",.02)
 ;;63874-0514-30
 ;;9002226.02101,"872,63874-0514-60 ",.01)
 ;;63874-0514-60
 ;;9002226.02101,"872,63874-0514-60 ",.02)
 ;;63874-0514-60
 ;;9002226.02101,"872,63874-0514-90 ",.01)
 ;;63874-0514-90
 ;;9002226.02101,"872,63874-0514-90 ",.02)
 ;;63874-0514-90
 ;;9002226.02101,"872,63874-0522-01 ",.01)
 ;;63874-0522-01
 ;;9002226.02101,"872,63874-0522-01 ",.02)
 ;;63874-0522-01
 ;;9002226.02101,"872,63874-0522-15 ",.01)
 ;;63874-0522-15
 ;;9002226.02101,"872,63874-0522-15 ",.02)
 ;;63874-0522-15
 ;;9002226.02101,"872,63874-0522-30 ",.01)
 ;;63874-0522-30
 ;;9002226.02101,"872,63874-0522-30 ",.02)
 ;;63874-0522-30
 ;;9002226.02101,"872,63874-0522-60 ",.01)
 ;;63874-0522-60
 ;;9002226.02101,"872,63874-0522-60 ",.02)
 ;;63874-0522-60
 ;;9002226.02101,"872,63874-0558-01 ",.01)
 ;;63874-0558-01
 ;;9002226.02101,"872,63874-0558-01 ",.02)
 ;;63874-0558-01
 ;;9002226.02101,"872,63874-0558-10 ",.01)
 ;;63874-0558-10
 ;;9002226.02101,"872,63874-0558-10 ",.02)
 ;;63874-0558-10
 ;;9002226.02101,"872,63874-0558-14 ",.01)
 ;;63874-0558-14
 ;;9002226.02101,"872,63874-0558-14 ",.02)
 ;;63874-0558-14
 ;;9002226.02101,"872,63874-0558-16 ",.01)
 ;;63874-0558-16
 ;;9002226.02101,"872,63874-0558-16 ",.02)
 ;;63874-0558-16
 ;;9002226.02101,"872,63874-0558-28 ",.01)
 ;;63874-0558-28
 ;;9002226.02101,"872,63874-0558-28 ",.02)
 ;;63874-0558-28
 ;;9002226.02101,"872,63874-0558-30 ",.01)
 ;;63874-0558-30
 ;;9002226.02101,"872,63874-0558-30 ",.02)
 ;;63874-0558-30
 ;;9002226.02101,"872,63874-0558-60 ",.01)
 ;;63874-0558-60
 ;;9002226.02101,"872,63874-0558-60 ",.02)
 ;;63874-0558-60
 ;;9002226.02101,"872,63874-0558-90 ",.01)
 ;;63874-0558-90
 ;;9002226.02101,"872,63874-0558-90 ",.02)
 ;;63874-0558-90
 ;;9002226.02101,"872,63874-0581-10 ",.01)
 ;;63874-0581-10
 ;;9002226.02101,"872,63874-0581-10 ",.02)
 ;;63874-0581-10
 ;;9002226.02101,"872,63874-0581-30 ",.01)
 ;;63874-0581-30
 ;;9002226.02101,"872,63874-0581-30 ",.02)
 ;;63874-0581-30