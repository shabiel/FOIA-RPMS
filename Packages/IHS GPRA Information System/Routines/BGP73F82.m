BGP73F82 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 05, 2017;
 ;;17.1;IHS CLINICAL REPORTING;;MAY 10, 2017;Build 29
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"868,66336-0617-40 ",.02)
 ;;66336-0617-40
 ;;9002226.02101,"868,66336-0634-08 ",.01)
 ;;66336-0634-08
 ;;9002226.02101,"868,66336-0634-08 ",.02)
 ;;66336-0634-08
 ;;9002226.02101,"868,66336-0634-15 ",.01)
 ;;66336-0634-15
 ;;9002226.02101,"868,66336-0634-15 ",.02)
 ;;66336-0634-15
 ;;9002226.02101,"868,66336-0634-21 ",.01)
 ;;66336-0634-21
 ;;9002226.02101,"868,66336-0634-21 ",.02)
 ;;66336-0634-21
 ;;9002226.02101,"868,66336-0634-30 ",.01)
 ;;66336-0634-30
 ;;9002226.02101,"868,66336-0634-30 ",.02)
 ;;66336-0634-30
 ;;9002226.02101,"868,66336-0634-40 ",.01)
 ;;66336-0634-40
 ;;9002226.02101,"868,66336-0634-40 ",.02)
 ;;66336-0634-40
 ;;9002226.02101,"868,66336-0634-42 ",.01)
 ;;66336-0634-42
 ;;9002226.02101,"868,66336-0634-42 ",.02)
 ;;66336-0634-42
 ;;9002226.02101,"868,66336-0644-40 ",.01)
 ;;66336-0644-40
 ;;9002226.02101,"868,66336-0644-40 ",.02)
 ;;66336-0644-40
 ;;9002226.02101,"868,66336-0655-21 ",.01)
 ;;66336-0655-21
 ;;9002226.02101,"868,66336-0655-21 ",.02)
 ;;66336-0655-21
 ;;9002226.02101,"868,66336-0655-30 ",.01)
 ;;66336-0655-30
 ;;9002226.02101,"868,66336-0655-30 ",.02)
 ;;66336-0655-30
 ;;9002226.02101,"868,66336-0830-05 ",.01)
 ;;66336-0830-05
 ;;9002226.02101,"868,66336-0830-05 ",.02)
 ;;66336-0830-05
 ;;9002226.02101,"868,66336-0903-10 ",.01)
 ;;66336-0903-10
 ;;9002226.02101,"868,66336-0903-10 ",.02)
 ;;66336-0903-10
 ;;9002226.02101,"868,66336-0903-14 ",.01)
 ;;66336-0903-14
 ;;9002226.02101,"868,66336-0903-14 ",.02)
 ;;66336-0903-14
 ;;9002226.02101,"868,66336-0903-20 ",.01)
 ;;66336-0903-20
 ;;9002226.02101,"868,66336-0903-20 ",.02)
 ;;66336-0903-20
 ;;9002226.02101,"868,66336-0903-28 ",.01)
 ;;66336-0903-28
 ;;9002226.02101,"868,66336-0903-28 ",.02)
 ;;66336-0903-28
 ;;9002226.02101,"868,66336-0903-99 ",.01)
 ;;66336-0903-99
 ;;9002226.02101,"868,66336-0903-99 ",.02)
 ;;66336-0903-99
 ;;9002226.02101,"868,66336-0906-28 ",.01)
 ;;66336-0906-28
 ;;9002226.02101,"868,66336-0906-28 ",.02)
 ;;66336-0906-28
 ;;9002226.02101,"868,66647-6152-11 ",.01)
 ;;66647-6152-11
 ;;9002226.02101,"868,66647-6152-11 ",.02)
 ;;66647-6152-11
 ;;9002226.02101,"868,66647-6153-11 ",.01)
 ;;66647-6153-11
 ;;9002226.02101,"868,66647-6153-11 ",.02)
 ;;66647-6153-11
 ;;9002226.02101,"868,66647-8025-42 ",.01)
 ;;66647-8025-42
 ;;9002226.02101,"868,66647-8025-42 ",.02)
 ;;66647-8025-42
 ;;9002226.02101,"868,66647-8526-65 ",.01)
 ;;66647-8526-65
 ;;9002226.02101,"868,66647-8526-65 ",.02)
 ;;66647-8526-65
 ;;9002226.02101,"868,66685-1001-00 ",.01)
 ;;66685-1001-00
 ;;9002226.02101,"868,66685-1001-00 ",.02)
 ;;66685-1001-00
 ;;9002226.02101,"868,66685-1001-01 ",.01)
 ;;66685-1001-01
 ;;9002226.02101,"868,66685-1001-01 ",.02)
 ;;66685-1001-01
 ;;9002226.02101,"868,66685-1002-00 ",.01)
 ;;66685-1002-00
 ;;9002226.02101,"868,66685-1002-00 ",.02)
 ;;66685-1002-00
 ;;9002226.02101,"868,66685-1002-02 ",.01)
 ;;66685-1002-02
 ;;9002226.02101,"868,66685-1002-02 ",.02)
 ;;66685-1002-02
 ;;9002226.02101,"868,66685-1011-00 ",.01)
 ;;66685-1011-00
 ;;9002226.02101,"868,66685-1011-00 ",.02)
 ;;66685-1011-00
 ;;9002226.02101,"868,66685-1011-01 ",.01)
 ;;66685-1011-01
 ;;9002226.02101,"868,66685-1011-01 ",.02)
 ;;66685-1011-01
 ;;9002226.02101,"868,66685-1011-02 ",.01)
 ;;66685-1011-02
 ;;9002226.02101,"868,66685-1011-02 ",.02)
 ;;66685-1011-02
 ;;9002226.02101,"868,66685-1012-00 ",.01)
 ;;66685-1012-00
 ;;9002226.02101,"868,66685-1012-00 ",.02)
 ;;66685-1012-00
 ;;9002226.02101,"868,66685-1012-01 ",.01)
 ;;66685-1012-01
 ;;9002226.02101,"868,66685-1012-01 ",.02)
 ;;66685-1012-01
 ;;9002226.02101,"868,66685-1012-02 ",.01)
 ;;66685-1012-02
 ;;9002226.02101,"868,66685-1012-02 ",.02)
 ;;66685-1012-02
 ;;9002226.02101,"868,66860-0001-03 ",.01)
 ;;66860-0001-03
 ;;9002226.02101,"868,66860-0001-03 ",.02)
 ;;66860-0001-03
 ;;9002226.02101,"868,66860-0002-03 ",.01)
 ;;66860-0002-03
 ;;9002226.02101,"868,66860-0002-03 ",.02)
 ;;66860-0002-03
 ;;9002226.02101,"868,66860-0003-02 ",.01)
 ;;66860-0003-02
 ;;9002226.02101,"868,66860-0003-02 ",.02)
 ;;66860-0003-02
 ;;9002226.02101,"868,66860-0011-02 ",.01)
 ;;66860-0011-02
 ;;9002226.02101,"868,66860-0011-02 ",.02)
 ;;66860-0011-02
 ;;9002226.02101,"868,66860-0071-02 ",.01)
 ;;66860-0071-02
 ;;9002226.02101,"868,66860-0071-02 ",.02)
 ;;66860-0071-02
 ;;9002226.02101,"868,66860-0072-02 ",.01)
 ;;66860-0072-02
 ;;9002226.02101,"868,66860-0072-02 ",.02)
 ;;66860-0072-02
 ;;9002226.02101,"868,66860-0073-02 ",.01)
 ;;66860-0073-02
 ;;9002226.02101,"868,66860-0073-02 ",.02)
 ;;66860-0073-02
 ;;9002226.02101,"868,66860-0074-02 ",.01)
 ;;66860-0074-02
 ;;9002226.02101,"868,66860-0074-02 ",.02)
 ;;66860-0074-02
 ;;9002226.02101,"868,66860-0902-03 ",.01)
 ;;66860-0902-03
 ;;9002226.02101,"868,66860-0902-03 ",.02)
 ;;66860-0902-03
 ;;9002226.02101,"868,66993-0815-30 ",.01)
 ;;66993-0815-30
 ;;9002226.02101,"868,66993-0815-30 ",.02)
 ;;66993-0815-30
 ;;9002226.02101,"868,67046-0020-21 ",.01)
 ;;67046-0020-21
 ;;9002226.02101,"868,67046-0020-21 ",.02)
 ;;67046-0020-21
 ;;9002226.02101,"868,67046-0090-21 ",.01)
 ;;67046-0090-21
 ;;9002226.02101,"868,67046-0090-21 ",.02)
 ;;67046-0090-21
 ;;9002226.02101,"868,67046-0090-28 ",.01)
 ;;67046-0090-28
 ;;9002226.02101,"868,67046-0090-28 ",.02)
 ;;67046-0090-28
 ;;9002226.02101,"868,67046-0090-30 ",.01)
 ;;67046-0090-30
 ;;9002226.02101,"868,67046-0090-30 ",.02)
 ;;67046-0090-30
 ;;9002226.02101,"868,67046-0135-14 ",.01)
 ;;67046-0135-14
 ;;9002226.02101,"868,67046-0135-14 ",.02)
 ;;67046-0135-14
 ;;9002226.02101,"868,67046-0135-20 ",.01)
 ;;67046-0135-20
 ;;9002226.02101,"868,67046-0135-20 ",.02)
 ;;67046-0135-20
 ;;9002226.02101,"868,67046-0135-30 ",.01)
 ;;67046-0135-30
 ;;9002226.02101,"868,67046-0135-30 ",.02)
 ;;67046-0135-30
 ;;9002226.02101,"868,67046-0576-21 ",.01)
 ;;67046-0576-21
 ;;9002226.02101,"868,67046-0576-21 ",.02)
 ;;67046-0576-21
 ;;9002226.02101,"868,67046-0576-28 ",.01)
 ;;67046-0576-28
 ;;9002226.02101,"868,67046-0576-28 ",.02)
 ;;67046-0576-28
 ;;9002226.02101,"868,67046-0576-30 ",.01)
 ;;67046-0576-30
 ;;9002226.02101,"868,67046-0576-30 ",.02)
 ;;67046-0576-30
 ;;9002226.02101,"868,67046-0728-30 ",.01)
 ;;67046-0728-30
 ;;9002226.02101,"868,67046-0728-30 ",.02)
 ;;67046-0728-30
 ;;9002226.02101,"868,67253-0008-46 ",.01)
 ;;67253-0008-46
 ;;9002226.02101,"868,67253-0008-46 ",.02)
 ;;67253-0008-46
 ;;9002226.02101,"868,67253-0009-41 ",.01)
 ;;67253-0009-41
 ;;9002226.02101,"868,67253-0009-41 ",.02)
 ;;67253-0009-41
 ;;9002226.02101,"868,67253-0009-46 ",.01)
 ;;67253-0009-46
 ;;9002226.02101,"868,67253-0009-46 ",.02)
 ;;67253-0009-46
 ;;9002226.02101,"868,67253-0011-06 ",.01)
 ;;67253-0011-06
 ;;9002226.02101,"868,67253-0011-06 ",.02)
 ;;67253-0011-06
 ;;9002226.02101,"868,67253-0012-41 ",.01)
 ;;67253-0012-41
 ;;9002226.02101,"868,67253-0012-41 ",.02)
 ;;67253-0012-41
 ;;9002226.02101,"868,67253-0012-42 ",.01)
 ;;67253-0012-42
 ;;9002226.02101,"868,67253-0012-42 ",.02)
 ;;67253-0012-42
 ;;9002226.02101,"868,67253-0013-41 ",.01)
 ;;67253-0013-41
 ;;9002226.02101,"868,67253-0013-41 ",.02)
 ;;67253-0013-41
 ;;9002226.02101,"868,67253-0013-42 ",.01)
 ;;67253-0013-42
 ;;9002226.02101,"868,67253-0013-42 ",.02)
 ;;67253-0013-42
 ;;9002226.02101,"868,67253-0140-10 ",.01)
 ;;67253-0140-10
 ;;9002226.02101,"868,67253-0140-10 ",.02)
 ;;67253-0140-10
 ;;9002226.02101,"868,67253-0140-50 ",.01)
 ;;67253-0140-50
 ;;9002226.02101,"868,67253-0140-50 ",.02)
 ;;67253-0140-50
 ;;9002226.02101,"868,67253-0141-10 ",.01)
 ;;67253-0141-10
 ;;9002226.02101,"868,67253-0141-10 ",.02)
 ;;67253-0141-10
 ;;9002226.02101,"868,67253-0141-50 ",.01)
 ;;67253-0141-50
 ;;9002226.02101,"868,67253-0141-50 ",.02)
 ;;67253-0141-50
 ;;9002226.02101,"868,67253-0142-08 ",.01)
 ;;67253-0142-08
 ;;9002226.02101,"868,67253-0142-08 ",.02)
 ;;67253-0142-08
 ;;9002226.02101,"868,67253-0142-10 ",.01)
 ;;67253-0142-10
 ;;9002226.02101,"868,67253-0142-10 ",.02)
 ;;67253-0142-10
 ;;9002226.02101,"868,67253-0142-15 ",.01)
 ;;67253-0142-15
 ;;9002226.02101,"868,67253-0142-15 ",.02)
 ;;67253-0142-15
 ;;9002226.02101,"868,67253-0143-08 ",.01)
 ;;67253-0143-08
 ;;9002226.02101,"868,67253-0143-08 ",.02)
 ;;67253-0143-08
 ;;9002226.02101,"868,67253-0143-10 ",.01)
 ;;67253-0143-10
 ;;9002226.02101,"868,67253-0143-10 ",.02)
 ;;67253-0143-10
 ;;9002226.02101,"868,67253-0143-15 ",.01)
 ;;67253-0143-15
 ;;9002226.02101,"868,67253-0143-15 ",.02)
 ;;67253-0143-15
 ;;9002226.02101,"868,67253-0144-10 ",.01)
 ;;67253-0144-10
 ;;9002226.02101,"868,67253-0144-10 ",.02)
 ;;67253-0144-10
 ;;9002226.02101,"868,67253-0144-50 ",.01)
 ;;67253-0144-50
 ;;9002226.02101,"868,67253-0144-50 ",.02)
 ;;67253-0144-50
 ;;9002226.02101,"868,67253-0145-10 ",.01)
 ;;67253-0145-10
 ;;9002226.02101,"868,67253-0145-10 ",.02)
 ;;67253-0145-10
 ;;9002226.02101,"868,67253-0146-45 ",.01)
 ;;67253-0146-45
 ;;9002226.02101,"868,67253-0146-45 ",.02)
 ;;67253-0146-45
 ;;9002226.02101,"868,67253-0146-46 ",.01)
 ;;67253-0146-46
 ;;9002226.02101,"868,67253-0146-46 ",.02)
 ;;67253-0146-46
 ;;9002226.02101,"868,67253-0146-47 ",.01)
 ;;67253-0146-47
 ;;9002226.02101,"868,67253-0146-47 ",.02)
 ;;67253-0146-47
 ;;9002226.02101,"868,67253-0147-40 ",.01)
 ;;67253-0147-40
 ;;9002226.02101,"868,67253-0147-40 ",.02)
 ;;67253-0147-40
 ;;9002226.02101,"868,67253-0147-43 ",.01)
 ;;67253-0147-43
 ;;9002226.02101,"868,67253-0147-43 ",.02)
 ;;67253-0147-43
 ;;9002226.02101,"868,67253-0147-44 ",.01)
 ;;67253-0147-44
 ;;9002226.02101,"868,67253-0147-44 ",.02)
 ;;67253-0147-44
 ;;9002226.02101,"868,67253-0148-45 ",.01)
 ;;67253-0148-45
 ;;9002226.02101,"868,67253-0148-45 ",.02)
 ;;67253-0148-45
 ;;9002226.02101,"868,67253-0148-46 ",.01)
 ;;67253-0148-46
 ;;9002226.02101,"868,67253-0148-46 ",.02)
 ;;67253-0148-46
 ;;9002226.02101,"868,67253-0148-47 ",.01)
 ;;67253-0148-47
 ;;9002226.02101,"868,67253-0148-47 ",.02)
 ;;67253-0148-47
 ;;9002226.02101,"868,67253-0149-40 ",.01)
 ;;67253-0149-40
 ;;9002226.02101,"868,67253-0149-40 ",.02)
 ;;67253-0149-40
 ;;9002226.02101,"868,67253-0149-43 ",.01)
 ;;67253-0149-43
 ;;9002226.02101,"868,67253-0149-43 ",.02)
 ;;67253-0149-43
 ;;9002226.02101,"868,67253-0149-44 ",.01)
 ;;67253-0149-44
 ;;9002226.02101,"868,67253-0149-44 ",.02)
 ;;67253-0149-44
 ;;9002226.02101,"868,67253-0150-10 ",.01)
 ;;67253-0150-10
 ;;9002226.02101,"868,67253-0150-10 ",.02)
 ;;67253-0150-10
 ;;9002226.02101,"868,67253-0150-50 ",.01)
 ;;67253-0150-50
 ;;9002226.02101,"868,67253-0150-50 ",.02)
 ;;67253-0150-50
 ;;9002226.02101,"868,67253-0180-10 ",.01)
 ;;67253-0180-10
 ;;9002226.02101,"868,67253-0180-10 ",.02)
 ;;67253-0180-10
 ;;9002226.02101,"868,67253-0180-50 ",.01)
 ;;67253-0180-50
 ;;9002226.02101,"868,67253-0180-50 ",.02)
 ;;67253-0180-50
 ;;9002226.02101,"868,67253-0181-10 ",.01)
 ;;67253-0181-10
 ;;9002226.02101,"868,67253-0181-10 ",.02)
 ;;67253-0181-10
 ;;9002226.02101,"868,67253-0181-50 ",.01)
 ;;67253-0181-50
 ;;9002226.02101,"868,67253-0181-50 ",.02)
 ;;67253-0181-50
 ;;9002226.02101,"868,67253-0182-10 ",.01)
 ;;67253-0182-10
 ;;9002226.02101,"868,67253-0182-10 ",.02)
 ;;67253-0182-10
 ;;9002226.02101,"868,67253-0182-20 ",.01)
 ;;67253-0182-20
 ;;9002226.02101,"868,67253-0182-20 ",.02)
 ;;67253-0182-20
 ;;9002226.02101,"868,67253-0183-10 ",.01)
 ;;67253-0183-10
 ;;9002226.02101,"868,67253-0183-10 ",.02)
 ;;67253-0183-10
 ;;9002226.02101,"868,67253-0183-20 ",.01)
 ;;67253-0183-20
 ;;9002226.02101,"868,67253-0183-20 ",.02)
 ;;67253-0183-20
 ;;9002226.02101,"868,67253-0200-10 ",.01)
 ;;67253-0200-10
 ;;9002226.02101,"868,67253-0200-10 ",.02)
 ;;67253-0200-10
 ;;9002226.02101,"868,67253-0200-11 ",.01)
 ;;67253-0200-11