BQIATXJE ;PRXM/HC/ALA-CREATED BY ^ATXSTX ON SEP 19, 2006;
 ;;2.1;ICARE MANAGEMENT SYSTEM;;Feb 07, 2011
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"573,00071-0157-73 ",.02)
 ;;00071-0157-73
 ;;9002226.02101,"573,00071-0158-23 ",.01)
 ;;00071-0158-23
 ;;9002226.02101,"573,00071-0158-23 ",.02)
 ;;00071-0158-23
 ;;9002226.02101,"573,00071-0158-73 ",.01)
 ;;00071-0158-73
 ;;9002226.02101,"573,00071-0158-73 ",.02)
 ;;00071-0158-73
 ;;9002226.02101,"573,00078-0176-05 ",.01)
 ;;00078-0176-05
 ;;9002226.02101,"573,00078-0176-05 ",.02)
 ;;00078-0176-05
 ;;9002226.02101,"573,00078-0176-15 ",.01)
 ;;00078-0176-15
 ;;9002226.02101,"573,00078-0176-15 ",.02)
 ;;00078-0176-15
 ;;9002226.02101,"573,00078-0234-05 ",.01)
 ;;00078-0234-05
 ;;9002226.02101,"573,00078-0234-05 ",.02)
 ;;00078-0234-05
 ;;9002226.02101,"573,00078-0234-15 ",.01)
 ;;00078-0234-15
 ;;9002226.02101,"573,00078-0234-15 ",.02)
 ;;00078-0234-15
 ;;9002226.02101,"573,00078-0354-05 ",.01)
 ;;00078-0354-05
 ;;9002226.02101,"573,00078-0354-05 ",.02)
 ;;00078-0354-05
 ;;9002226.02101,"573,00078-0354-15 ",.01)
 ;;00078-0354-15
 ;;9002226.02101,"573,00078-0354-15 ",.02)
 ;;00078-0354-15
 ;;9002226.02101,"573,00093-0576-06 ",.01)
 ;;00093-0576-06
 ;;9002226.02101,"573,00093-0576-06 ",.02)
 ;;00093-0576-06
 ;;9002226.02101,"573,00093-0576-10 ",.01)
 ;;00093-0576-10
 ;;9002226.02101,"573,00093-0576-10 ",.02)
 ;;00093-0576-10
 ;;9002226.02101,"573,00093-0926-06 ",.01)
 ;;00093-0926-06
 ;;9002226.02101,"573,00093-0926-06 ",.02)
 ;;00093-0926-06
 ;;9002226.02101,"573,00093-0926-10 ",.01)
 ;;00093-0926-10
 ;;9002226.02101,"573,00093-0926-10 ",.02)
 ;;00093-0926-10
 ;;9002226.02101,"573,00093-0928-06 ",.01)
 ;;00093-0928-06
 ;;9002226.02101,"573,00093-0928-06 ",.02)
 ;;00093-0928-06
 ;;9002226.02101,"573,00093-0928-10 ",.01)
 ;;00093-0928-10
 ;;9002226.02101,"573,00093-0928-10 ",.02)
 ;;00093-0928-10
 ;;9002226.02101,"573,00185-0070-01 ",.01)
 ;;00185-0070-01
 ;;9002226.02101,"573,00185-0070-01 ",.02)
 ;;00185-0070-01
 ;;9002226.02101,"573,00185-0070-10 ",.01)
 ;;00185-0070-10
 ;;9002226.02101,"573,00185-0070-10 ",.02)
 ;;00185-0070-10
 ;;9002226.02101,"573,00185-0070-60 ",.01)
 ;;00185-0070-60
 ;;9002226.02101,"573,00185-0070-60 ",.02)
 ;;00185-0070-60
 ;;9002226.02101,"573,00185-0072-01 ",.01)
 ;;00185-0072-01
 ;;9002226.02101,"573,00185-0072-01 ",.02)
 ;;00185-0072-01
 ;;9002226.02101,"573,00185-0072-10 ",.01)
 ;;00185-0072-10
 ;;9002226.02101,"573,00185-0072-10 ",.02)
 ;;00185-0072-10
 ;;9002226.02101,"573,00185-0072-60 ",.01)
 ;;00185-0072-60
 ;;9002226.02101,"573,00185-0072-60 ",.02)
 ;;00185-0072-60
 ;;9002226.02101,"573,00185-0074-01 ",.01)
 ;;00185-0074-01
 ;;9002226.02101,"573,00185-0074-01 ",.02)
 ;;00185-0074-01
 ;;9002226.02101,"573,00185-0074-10 ",.01)
 ;;00185-0074-10
 ;;9002226.02101,"573,00185-0074-10 ",.02)
 ;;00185-0074-10
 ;;9002226.02101,"573,00185-0074-60 ",.01)
 ;;00185-0074-60
 ;;9002226.02101,"573,00185-0074-60 ",.02)
 ;;00185-0074-60
 ;;9002226.02101,"573,00228-2633-06 ",.01)
 ;;00228-2633-06
 ;;9002226.02101,"573,00228-2633-06 ",.02)
 ;;00228-2633-06
 ;;9002226.02101,"573,00228-2633-50 ",.01)
 ;;00228-2633-50
 ;;9002226.02101,"573,00228-2633-50 ",.02)
 ;;00228-2633-50
 ;;9002226.02101,"573,00228-2634-06 ",.01)
 ;;00228-2634-06
 ;;9002226.02101,"573,00228-2634-06 ",.02)
 ;;00228-2634-06
 ;;9002226.02101,"573,00228-2634-50 ",.01)
 ;;00228-2634-50
 ;;9002226.02101,"573,00228-2634-50 ",.02)
 ;;00228-2634-50
 ;;9002226.02101,"573,00228-2635-06 ",.01)
 ;;00228-2635-06
 ;;9002226.02101,"573,00228-2635-06 ",.02)
 ;;00228-2635-06
 ;;9002226.02101,"573,00228-2635-50 ",.01)
 ;;00228-2635-50
 ;;9002226.02101,"573,00228-2635-50 ",.02)
 ;;00228-2635-50
 ;;9002226.02101,"573,00247-1139-30 ",.01)
 ;;00247-1139-30
 ;;9002226.02101,"573,00247-1139-30 ",.02)
 ;;00247-1139-30
 ;;9002226.02101,"573,00247-1139-60 ",.01)
 ;;00247-1139-60
 ;;9002226.02101,"573,00247-1139-60 ",.02)
 ;;00247-1139-60
 ;;9002226.02101,"573,00247-1140-30 ",.01)
 ;;00247-1140-30
 ;;9002226.02101,"573,00247-1140-30 ",.02)
 ;;00247-1140-30
 ;;9002226.02101,"573,00247-1152-30 ",.01)
 ;;00247-1152-30
 ;;9002226.02101,"573,00247-1152-30 ",.02)
 ;;00247-1152-30
 ;;9002226.02101,"573,00247-1152-60 ",.01)
 ;;00247-1152-60
 ;;9002226.02101,"573,00247-1152-60 ",.02)
 ;;00247-1152-60
 ;;9002226.02101,"573,00247-1153-30 ",.01)
 ;;00247-1153-30
 ;;9002226.02101,"573,00247-1153-30 ",.02)
 ;;00247-1153-30
 ;;9002226.02101,"573,00247-1153-60 ",.01)
 ;;00247-1153-60
 ;;9002226.02101,"573,00247-1153-60 ",.02)
 ;;00247-1153-60
 ;;9002226.02101,"573,00247-1276-30 ",.01)
 ;;00247-1276-30
 ;;9002226.02101,"573,00247-1276-30 ",.02)
 ;;00247-1276-30
 ;;9002226.02101,"573,00310-0751-39 ",.01)
 ;;00310-0751-39
 ;;9002226.02101,"573,00310-0751-39 ",.02)
 ;;00310-0751-39
 ;;9002226.02101,"573,00310-0751-90 ",.01)
 ;;00310-0751-90
 ;;9002226.02101,"573,00310-0751-90 ",.02)
 ;;00310-0751-90
 ;;9002226.02101,"573,00310-0752-39 ",.01)
 ;;00310-0752-39
 ;;9002226.02101,"573,00310-0752-39 ",.02)
 ;;00310-0752-39
 ;;9002226.02101,"573,00310-0752-90 ",.01)
 ;;00310-0752-90
 ;;9002226.02101,"573,00310-0752-90 ",.02)
 ;;00310-0752-90
 ;;9002226.02101,"573,00310-0754-30 ",.01)
 ;;00310-0754-30
 ;;9002226.02101,"573,00310-0754-30 ",.02)
 ;;00310-0754-30
 ;;9002226.02101,"573,00310-0755-90 ",.01)
 ;;00310-0755-90