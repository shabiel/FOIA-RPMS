BUD0ZA17 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON DEC 13, 2010 ;
 ;;6.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 23, 2012;Build 25
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1062,00172-5710-00 ",.02)
 ;;00172-5710-00
 ;;9002226.02101,"1062,00172-5710-10 ",.01)
 ;;00172-5710-10
 ;;9002226.02101,"1062,00172-5710-10 ",.02)
 ;;00172-5710-10
 ;;9002226.02101,"1062,00172-5710-60 ",.01)
 ;;00172-5710-60
 ;;9002226.02101,"1062,00172-5710-60 ",.02)
 ;;00172-5710-60
 ;;9002226.02101,"1062,00172-5710-70 ",.01)
 ;;00172-5710-70
 ;;9002226.02101,"1062,00172-5710-70 ",.02)
 ;;00172-5710-70
 ;;9002226.02101,"1062,00172-5710-84 ",.01)
 ;;00172-5710-84
 ;;9002226.02101,"1062,00172-5710-84 ",.02)
 ;;00172-5710-84
 ;;9002226.02101,"1062,00172-5711-10 ",.01)
 ;;00172-5711-10
 ;;9002226.02101,"1062,00172-5711-10 ",.02)
 ;;00172-5711-10
 ;;9002226.02101,"1062,00172-5711-60 ",.01)
 ;;00172-5711-60
 ;;9002226.02101,"1062,00172-5711-60 ",.02)
 ;;00172-5711-60
 ;;9002226.02101,"1062,00172-5711-70 ",.01)
 ;;00172-5711-70
 ;;9002226.02101,"1062,00172-5711-70 ",.02)
 ;;00172-5711-70
 ;;9002226.02101,"1062,00172-5711-88 ",.01)
 ;;00172-5711-88
 ;;9002226.02101,"1062,00172-5711-88 ",.02)
 ;;00172-5711-88
 ;;9002226.02101,"1062,00172-5712-10 ",.01)
 ;;00172-5712-10
 ;;9002226.02101,"1062,00172-5712-10 ",.02)
 ;;00172-5712-10
 ;;9002226.02101,"1062,00172-5712-60 ",.01)
 ;;00172-5712-60
 ;;9002226.02101,"1062,00172-5712-60 ",.02)
 ;;00172-5712-60
 ;;9002226.02101,"1062,00172-5712-70 ",.01)
 ;;00172-5712-70
 ;;9002226.02101,"1062,00172-5712-70 ",.02)
 ;;00172-5712-70
 ;;9002226.02101,"1062,00172-5712-88 ",.01)
 ;;00172-5712-88
 ;;9002226.02101,"1062,00172-5712-88 ",.02)
 ;;00172-5712-88
 ;;9002226.02101,"1062,00182-1851-01 ",.01)
 ;;00182-1851-01
 ;;9002226.02101,"1062,00182-1851-01 ",.02)
 ;;00182-1851-01
 ;;9002226.02101,"1062,00182-1851-89 ",.01)
 ;;00182-1851-89
 ;;9002226.02101,"1062,00182-1851-89 ",.02)
 ;;00182-1851-89
 ;;9002226.02101,"1062,00182-1994-00 ",.01)
 ;;00182-1994-00
 ;;9002226.02101,"1062,00182-1994-00 ",.02)
 ;;00182-1994-00
 ;;9002226.02101,"1062,00182-1994-89 ",.01)
 ;;00182-1994-89
 ;;9002226.02101,"1062,00182-1994-89 ",.02)
 ;;00182-1994-89
 ;;9002226.02101,"1062,00182-1995-00 ",.01)
 ;;00182-1995-00
 ;;9002226.02101,"1062,00182-1995-00 ",.02)
 ;;00182-1995-00
 ;;9002226.02101,"1062,00182-1995-89 ",.01)
 ;;00182-1995-89
 ;;9002226.02101,"1062,00182-1995-89 ",.02)
 ;;00182-1995-89
 ;;9002226.02101,"1062,00182-2646-00 ",.01)
 ;;00182-2646-00
 ;;9002226.02101,"1062,00182-2646-00 ",.02)
 ;;00182-2646-00
 ;;9002226.02101,"1062,00182-2646-89 ",.01)
 ;;00182-2646-89
 ;;9002226.02101,"1062,00182-2646-89 ",.02)
 ;;00182-2646-89
 ;;9002226.02101,"1062,00182-2647-00 ",.01)
 ;;00182-2647-00
 ;;9002226.02101,"1062,00182-2647-00 ",.02)
 ;;00182-2647-00
 ;;9002226.02101,"1062,00182-2647-89 ",.01)
 ;;00182-2647-89
 ;;9002226.02101,"1062,00182-2647-89 ",.02)
 ;;00182-2647-89
 ;;9002226.02101,"1062,00223-1076-01 ",.01)
 ;;00223-1076-01
 ;;9002226.02101,"1062,00223-1076-01 ",.02)
 ;;00223-1076-01
 ;;9002226.02101,"1062,00223-1076-02 ",.01)
 ;;00223-1076-02
 ;;9002226.02101,"1062,00223-1076-02 ",.02)
 ;;00223-1076-02
 ;;9002226.02101,"1062,00223-2081-01 ",.01)
 ;;00223-2081-01
 ;;9002226.02101,"1062,00223-2081-01 ",.02)
 ;;00223-2081-01
 ;;9002226.02101,"1062,00223-2081-05 ",.01)
 ;;00223-2081-05
 ;;9002226.02101,"1062,00223-2081-05 ",.02)
 ;;00223-2081-05
 ;;9002226.02101,"1062,00223-2082-01 ",.01)
 ;;00223-2082-01
 ;;9002226.02101,"1062,00223-2082-01 ",.02)
 ;;00223-2082-01
 ;;9002226.02101,"1062,00223-2082-02 ",.01)
 ;;00223-2082-02
 ;;9002226.02101,"1062,00223-2082-02 ",.02)
 ;;00223-2082-02
 ;;9002226.02101,"1062,00223-2083-01 ",.01)
 ;;00223-2083-01
 ;;9002226.02101,"1062,00223-2083-01 ",.02)
 ;;00223-2083-01
 ;;9002226.02101,"1062,00223-2083-05 ",.01)
 ;;00223-2083-05
 ;;9002226.02101,"1062,00223-2083-05 ",.02)
 ;;00223-2083-05
 ;;9002226.02101,"1062,00228-2751-11 ",.01)
 ;;00228-2751-11
 ;;9002226.02101,"1062,00228-2751-11 ",.02)
 ;;00228-2751-11
 ;;9002226.02101,"1062,00228-2751-50 ",.01)
 ;;00228-2751-50
 ;;9002226.02101,"1062,00228-2751-50 ",.02)
 ;;00228-2751-50
 ;;9002226.02101,"1062,00228-2752-11 ",.01)
 ;;00228-2752-11
 ;;9002226.02101,"1062,00228-2752-11 ",.02)
 ;;00228-2752-11
 ;;9002226.02101,"1062,00228-2752-50 ",.01)
 ;;00228-2752-50
 ;;9002226.02101,"1062,00228-2752-50 ",.02)
 ;;00228-2752-50
 ;;9002226.02101,"1062,00228-2753-11 ",.01)
 ;;00228-2753-11
 ;;9002226.02101,"1062,00228-2753-11 ",.02)
 ;;00228-2753-11
 ;;9002226.02101,"1062,00228-2753-50 ",.01)
 ;;00228-2753-50
 ;;9002226.02101,"1062,00228-2753-50 ",.02)
 ;;00228-2753-50
 ;;9002226.02101,"1062,00228-2898-03 ",.01)
 ;;00228-2898-03
 ;;9002226.02101,"1062,00228-2898-03 ",.02)
 ;;00228-2898-03
 ;;9002226.02101,"1062,00228-2899-10 ",.01)
 ;;00228-2899-10
 ;;9002226.02101,"1062,00228-2899-10 ",.02)
 ;;00228-2899-10
 ;;9002226.02101,"1062,00228-2899-50 ",.01)
 ;;00228-2899-50
 ;;9002226.02101,"1062,00228-2899-50 ",.02)
 ;;00228-2899-50
 ;;9002226.02101,"1062,00228-2900-10 ",.01)
 ;;00228-2900-10
 ;;9002226.02101,"1062,00228-2900-10 ",.02)
 ;;00228-2900-10
 ;;9002226.02101,"1062,00228-2900-50 ",.01)
 ;;00228-2900-50
 ;;9002226.02101,"1062,00228-2900-50 ",.02)
 ;;00228-2900-50
 ;;9002226.02101,"1062,00247-0444-00 ",.01)
 ;;00247-0444-00
 ;;9002226.02101,"1062,00247-0444-00 ",.02)
 ;;00247-0444-00