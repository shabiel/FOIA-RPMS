BGP27C ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 19, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;;BGP MAMMOGRAM ICDS
 ;
 ; This routine loads Taxonomy BGP MAMMOGRAM ICDS
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 D OTHER
 I $O(^TMP("ATX",$J,3.6,0)) D BULL^ATXSTX2
 I $O(^TMP("ATX",$J,9002226,0)) D TAX^ATXSTX2
 D KILL^ATXSTX2
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"793.80 ")
 ;;1
 ;;21,"793.89 ")
 ;;2
 ;;21,"V76.11 ")
 ;;3
 ;;21,"V76.12 ")
 ;;4
 ;;9002226,628,.01)
 ;;BGP MAMMOGRAM ICDS
 ;;9002226,628,.02)
 ;;MAMMOGRAM ICDS
 ;;9002226,628,.04)
 ;;n
 ;;9002226,628,.06)
 ;;@
 ;;9002226,628,.08)
 ;;0
 ;;9002226,628,.09)
 ;;3050208
 ;;9002226,628,.11)
 ;;@
 ;;9002226,628,.12)
 ;;290
 ;;9002226,628,.13)
 ;;1
 ;;9002226,628,.14)
 ;;@
 ;;9002226,628,.15)
 ;;80
 ;;9002226,628,.16)
 ;;@
 ;;9002226,628,.17)
 ;;@
 ;;9002226,628,3101)
 ;;@
 ;;9002226.02101,"628,793.80 ",.01)
 ;;793.80
 ;;9002226.02101,"628,793.80 ",.02)
 ;;793.81
 ;;9002226.02101,"628,793.89 ",.01)
 ;;793.89
 ;;9002226.02101,"628,793.89 ",.02)
 ;;793.89
 ;;9002226.02101,"628,V76.11 ",.01)
 ;;V76.11
 ;;9002226.02101,"628,V76.11 ",.02)
 ;;V76.11
 ;;9002226.02101,"628,V76.12 ",.01)
 ;;V76.12
 ;;9002226.02101,"628,V76.12 ",.02)
 ;;V76.12
 ;
OTHER ; OTHER ROUTINES
 Q