BUDD1D12 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON NOV 30, 2016 ;
 ;;11.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 18, 2017;Build 66
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1078,00310-6205-30 ",.03)
 ;;30
 ;;9002226.02101,"1078,00310-6210-30 ",.01)
 ;;00310-6210-30
 ;;9002226.02101,"1078,00310-6210-30 ",.02)
 ;;00310-6210-30
 ;;9002226.02101,"1078,00310-6210-30 ",.03)
 ;;30
 ;;9002226.02101,"1078,00310-6512-01 ",.01)
 ;;00310-6512-01
 ;;9002226.02101,"1078,00310-6512-01 ",.02)
 ;;00310-6512-01
 ;;9002226.02101,"1078,00310-6512-01 ",.03)
 ;;30
 ;;9002226.02101,"1078,00310-6520-04 ",.01)
 ;;00310-6520-04
 ;;9002226.02101,"1078,00310-6520-04 ",.02)
 ;;00310-6520-04
 ;;9002226.02101,"1078,00310-6520-04 ",.03)
 ;;30
 ;;9002226.02101,"1078,00310-6524-01 ",.01)
 ;;00310-6524-01
 ;;9002226.02101,"1078,00310-6524-01 ",.02)
 ;;00310-6524-01
 ;;9002226.02101,"1078,00310-6524-01 ",.03)
 ;;30
 ;;9002226.02101,"1078,00310-6530-04 ",.01)
 ;;00310-6530-04
 ;;9002226.02101,"1078,00310-6530-04 ",.02)
 ;;00310-6530-04
 ;;9002226.02101,"1078,00310-6530-04 ",.03)
 ;;30
 ;;9002226.02101,"1078,00310-6615-02 ",.01)
 ;;00310-6615-02
 ;;9002226.02101,"1078,00310-6615-02 ",.02)
 ;;00310-6615-02
 ;;9002226.02101,"1078,00310-6615-02 ",.03)
 ;;30
 ;;9002226.02101,"1078,00310-6627-02 ",.01)
 ;;00310-6627-02
 ;;9002226.02101,"1078,00310-6627-02 ",.02)
 ;;00310-6627-02
 ;;9002226.02101,"1078,00310-6627-02 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-0048-05 ",.01)
 ;;00378-0048-05
 ;;9002226.02101,"1078,00378-0048-05 ",.02)
 ;;00378-0048-05
 ;;9002226.02101,"1078,00378-0048-05 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-0048-77 ",.01)
 ;;00378-0048-77
 ;;9002226.02101,"1078,00378-0048-77 ",.02)
 ;;00378-0048-77
 ;;9002226.02101,"1078,00378-0048-77 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-0048-93 ",.01)
 ;;00378-0048-93
 ;;9002226.02101,"1078,00378-0048-93 ",.02)
 ;;00378-0048-93
 ;;9002226.02101,"1078,00378-0048-93 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-0197-01 ",.01)
 ;;00378-0197-01
 ;;9002226.02101,"1078,00378-0197-01 ",.02)
 ;;00378-0197-01
 ;;9002226.02101,"1078,00378-0197-01 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-0197-05 ",.01)
 ;;00378-0197-05
 ;;9002226.02101,"1078,00378-0197-05 ",.02)
 ;;00378-0197-05
 ;;9002226.02101,"1078,00378-0197-05 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-0210-01 ",.01)
 ;;00378-0210-01
 ;;9002226.02101,"1078,00378-0210-01 ",.02)
 ;;00378-0210-01
 ;;9002226.02101,"1078,00378-0210-01 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-0210-10 ",.01)
 ;;00378-0210-10
 ;;9002226.02101,"1078,00378-0210-10 ",.02)
 ;;00378-0210-10
 ;;9002226.02101,"1078,00378-0210-10 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-0215-01 ",.01)
 ;;00378-0215-01
 ;;9002226.02101,"1078,00378-0215-01 ",.02)
 ;;00378-0215-01
 ;;9002226.02101,"1078,00378-0215-01 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-0215-05 ",.01)
 ;;00378-0215-05
 ;;9002226.02101,"1078,00378-0215-05 ",.02)
 ;;00378-0215-05
 ;;9002226.02101,"1078,00378-0215-05 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-0217-01 ",.01)
 ;;00378-0217-01
 ;;9002226.02101,"1078,00378-0217-01 ",.02)
 ;;00378-0217-01
 ;;9002226.02101,"1078,00378-0217-01 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-0228-05 ",.01)
 ;;00378-0228-05
 ;;9002226.02101,"1078,00378-0228-05 ",.02)
 ;;00378-0228-05
 ;;9002226.02101,"1078,00378-0228-05 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-0228-77 ",.01)
 ;;00378-0228-77
 ;;9002226.02101,"1078,00378-0228-77 ",.02)
 ;;00378-0228-77
 ;;9002226.02101,"1078,00378-0228-77 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-0228-93 ",.01)
 ;;00378-0228-93
 ;;9002226.02101,"1078,00378-0228-93 ",.02)
 ;;00378-0228-93
 ;;9002226.02101,"1078,00378-0228-93 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-0551-01 ",.01)
 ;;00378-0551-01
 ;;9002226.02101,"1078,00378-0551-01 ",.02)
 ;;00378-0551-01
 ;;9002226.02101,"1078,00378-0551-01 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-1105-01 ",.01)
 ;;00378-1105-01
 ;;9002226.02101,"1078,00378-1105-01 ",.02)
 ;;00378-1105-01
 ;;9002226.02101,"1078,00378-1105-01 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-1105-05 ",.01)
 ;;00378-1105-05
 ;;9002226.02101,"1078,00378-1105-05 ",.02)
 ;;00378-1105-05
 ;;9002226.02101,"1078,00378-1105-05 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-1110-01 ",.01)
 ;;00378-1110-01
 ;;9002226.02101,"1078,00378-1110-01 ",.02)
 ;;00378-1110-01
 ;;9002226.02101,"1078,00378-1110-01 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-1110-05 ",.01)
 ;;00378-1110-05
 ;;9002226.02101,"1078,00378-1110-05 ",.02)
 ;;00378-1110-05
 ;;9002226.02101,"1078,00378-1110-05 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-1113-01 ",.01)
 ;;00378-1113-01
 ;;9002226.02101,"1078,00378-1113-01 ",.02)
 ;;00378-1113-01
 ;;9002226.02101,"1078,00378-1113-01 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-1125-01 ",.01)
 ;;00378-1125-01
 ;;9002226.02101,"1078,00378-1125-01 ",.02)
 ;;00378-1125-01
 ;;9002226.02101,"1078,00378-1125-01 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-1125-10 ",.01)
 ;;00378-1125-10
 ;;9002226.02101,"1078,00378-1125-10 ",.02)
 ;;00378-1125-10
 ;;9002226.02101,"1078,00378-1125-10 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-1142-01 ",.01)
 ;;00378-1142-01
 ;;9002226.02101,"1078,00378-1142-01 ",.02)
 ;;00378-1142-01
 ;;9002226.02101,"1078,00378-1142-01 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-1550-91 ",.01)
 ;;00378-1550-91
 ;;9002226.02101,"1078,00378-1550-91 ",.02)
 ;;00378-1550-91
 ;;9002226.02101,"1078,00378-1550-91 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-1575-91 ",.01)
 ;;00378-1575-91
 ;;9002226.02101,"1078,00378-1575-91 ",.02)
 ;;00378-1575-91
 ;;9002226.02101,"1078,00378-1575-91 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-2820-10 ",.01)
 ;;00378-2820-10
 ;;9002226.02101,"1078,00378-2820-10 ",.02)
 ;;00378-2820-10
 ;;9002226.02101,"1078,00378-2820-10 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-2820-77 ",.01)
 ;;00378-2820-77
 ;;9002226.02101,"1078,00378-2820-77 ",.02)
 ;;00378-2820-77
 ;;9002226.02101,"1078,00378-2820-77 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-2821-10 ",.01)
 ;;00378-2821-10
 ;;9002226.02101,"1078,00378-2821-10 ",.02)
 ;;00378-2821-10
 ;;9002226.02101,"1078,00378-2821-10 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-2821-77 ",.01)
 ;;00378-2821-77
 ;;9002226.02101,"1078,00378-2821-77 ",.02)
 ;;00378-2821-77
 ;;9002226.02101,"1078,00378-2821-77 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-2822-10 ",.01)
 ;;00378-2822-10
 ;;9002226.02101,"1078,00378-2822-10 ",.02)
 ;;00378-2822-10
 ;;9002226.02101,"1078,00378-2822-10 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-2822-77 ",.01)
 ;;00378-2822-77
 ;;9002226.02101,"1078,00378-2822-77 ",.02)
 ;;00378-2822-77
 ;;9002226.02101,"1078,00378-2822-77 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-3121-01 ",.01)
 ;;00378-3121-01
 ;;9002226.02101,"1078,00378-3121-01 ",.02)
 ;;00378-3121-01
 ;;9002226.02101,"1078,00378-3121-01 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-3121-05 ",.01)
 ;;00378-3121-05
 ;;9002226.02101,"1078,00378-3121-05 ",.02)
 ;;00378-3121-05
 ;;9002226.02101,"1078,00378-3121-05 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-3122-01 ",.01)
 ;;00378-3122-01
 ;;9002226.02101,"1078,00378-3122-01 ",.02)
 ;;00378-3122-01
 ;;9002226.02101,"1078,00378-3122-01 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-3123-01 ",.01)
 ;;00378-3123-01
 ;;9002226.02101,"1078,00378-3123-01 ",.02)
 ;;00378-3123-01
 ;;9002226.02101,"1078,00378-3123-01 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-3131-01 ",.01)
 ;;00378-3131-01
 ;;9002226.02101,"1078,00378-3131-01 ",.02)
 ;;00378-3131-01
 ;;9002226.02101,"1078,00378-3131-01 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-3132-01 ",.01)
 ;;00378-3132-01
 ;;9002226.02101,"1078,00378-3132-01 ",.02)
 ;;00378-3132-01
 ;;9002226.02101,"1078,00378-3132-01 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-3133-01 ",.01)
 ;;00378-3133-01
 ;;9002226.02101,"1078,00378-3133-01 ",.02)
 ;;00378-3133-01
 ;;9002226.02101,"1078,00378-3133-01 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-4011-01 ",.01)
 ;;00378-4011-01
 ;;9002226.02101,"1078,00378-4011-01 ",.02)
 ;;00378-4011-01
 ;;9002226.02101,"1078,00378-4011-01 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-4012-01 ",.01)
 ;;00378-4012-01
 ;;9002226.02101,"1078,00378-4012-01 ",.02)
 ;;00378-4012-01
 ;;9002226.02101,"1078,00378-4012-01 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378-4013-01 ",.01)
 ;;00378-4013-01
 ;;9002226.02101,"1078,00378-4013-01 ",.02)
 ;;00378-4013-01
 ;;9002226.02101,"1078,00378-4013-01 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378031805 ",.01)
 ;;00378031805
 ;;9002226.02101,"1078,00378031805 ",.02)
 ;;00378031805
 ;;9002226.02101,"1078,00378031805 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378031877 ",.01)
 ;;00378031877
 ;;9002226.02101,"1078,00378031877 ",.02)
 ;;00378031877
 ;;9002226.02101,"1078,00378031877 ",.03)
 ;;30
 ;;9002226.02101,"1078,00378031893 ",.01)
 ;;00378031893
 ;;9002226.02101,"1078,00378031893 ",.02)
 ;;00378031893
 ;;9002226.02101,"1078,00378031893 ",.03)
 ;;30
 ;;9002226.02101,"1078,00440-7566-30 ",.01)
 ;;00440-7566-30
 ;;9002226.02101,"1078,00440-7566-30 ",.02)
 ;;00440-7566-30
 ;;9002226.02101,"1078,00440-7566-30 ",.03)
 ;;30
 ;;9002226.02101,"1078,00555-0625-02 ",.01)
 ;;00555-0625-02
 ;;9002226.02101,"1078,00555-0625-02 ",.02)
 ;;00555-0625-02
 ;;9002226.02101,"1078,00555-0625-02 ",.03)
 ;;30
 ;;9002226.02101,"1078,00555-0626-02 ",.01)
 ;;00555-0626-02
 ;;9002226.02101,"1078,00555-0626-02 ",.02)
 ;;00555-0626-02
 ;;9002226.02101,"1078,00555-0626-02 ",.03)
 ;;30
 ;;9002226.02101,"1078,00555-0627-02 ",.01)
 ;;00555-0627-02
 ;;9002226.02101,"1078,00555-0627-02 ",.02)
 ;;00555-0627-02
 ;;9002226.02101,"1078,00555-0627-02 ",.03)
 ;;30
 ;;9002226.02101,"1078,00574-0240-01 ",.01)
 ;;00574-0240-01
 ;;9002226.02101,"1078,00574-0240-01 ",.02)
 ;;00574-0240-01
 ;;9002226.02101,"1078,00574-0240-01 ",.03)
 ;;30
 ;;9002226.02101,"1078,00574-0241-01 ",.01)
 ;;00574-0241-01
 ;;9002226.02101,"1078,00574-0241-01 ",.02)
 ;;00574-0241-01
 ;;9002226.02101,"1078,00574-0241-01 ",.03)
 ;;30
 ;;9002226.02101,"1078,00574-0242-01 ",.01)
 ;;00574-0242-01
 ;;9002226.02101,"1078,00574-0242-01 ",.02)
 ;;00574-0242-01
 ;;9002226.02101,"1078,00574-0242-01 ",.03)
 ;;30
 ;;9002226.02101,"1078,00591-0460-01 ",.01)
 ;;00591-0460-01
 ;;9002226.02101,"1078,00591-0460-01 ",.02)
 ;;00591-0460-01
 ;;9002226.02101,"1078,00591-0460-01 ",.03)
 ;;30
 ;;9002226.02101,"1078,00591-0460-05 ",.01)
 ;;00591-0460-05
 ;;9002226.02101,"1078,00591-0460-05 ",.02)
 ;;00591-0460-05
 ;;9002226.02101,"1078,00591-0460-05 ",.03)
 ;;30
 ;;9002226.02101,"1078,00591-0460-10 ",.01)
 ;;00591-0460-10
 ;;9002226.02101,"1078,00591-0460-10 ",.02)
 ;;00591-0460-10
 ;;9002226.02101,"1078,00591-0460-10 ",.03)
 ;;30
 ;;9002226.02101,"1078,00591-0461-01 ",.01)
 ;;00591-0461-01
 ;;9002226.02101,"1078,00591-0461-01 ",.02)
 ;;00591-0461-01
 ;;9002226.02101,"1078,00591-0461-01 ",.03)
 ;;30
 ;;9002226.02101,"1078,00591-0461-05 ",.01)
 ;;00591-0461-05
 ;;9002226.02101,"1078,00591-0461-05 ",.02)
 ;;00591-0461-05
 ;;9002226.02101,"1078,00591-0461-05 ",.03)
 ;;30
 ;;9002226.02101,"1078,00591-0461-10 ",.01)
 ;;00591-0461-10
 ;;9002226.02101,"1078,00591-0461-10 ",.02)
 ;;00591-0461-10
 ;;9002226.02101,"1078,00591-0461-10 ",.03)
 ;;30
 ;;9002226.02101,"1078,00591-0844-01 ",.01)
 ;;00591-0844-01
 ;;9002226.02101,"1078,00591-0844-01 ",.02)
 ;;00591-0844-01
 ;;9002226.02101,"1078,00591-0844-01 ",.03)
 ;;30
 ;;9002226.02101,"1078,00591-0844-10 ",.01)
 ;;00591-0844-10
 ;;9002226.02101,"1078,00591-0844-10 ",.02)
 ;;00591-0844-10
 ;;9002226.02101,"1078,00591-0844-10 ",.03)
 ;;30
 ;;9002226.02101,"1078,00591-0844-15 ",.01)
 ;;00591-0844-15
 ;;9002226.02101,"1078,00591-0844-15 ",.02)
 ;;00591-0844-15
 ;;9002226.02101,"1078,00591-0844-15 ",.03)
 ;;30
 ;;9002226.02101,"1078,00591-0845-01 ",.01)
 ;;00591-0845-01
 ;;9002226.02101,"1078,00591-0845-01 ",.02)
 ;;00591-0845-01