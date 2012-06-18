BGP9VXS ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;;BGP CMS PNEUMONIA DXS
 ;
 ; This routine loads Taxonomy BGP CMS PNEUMONIA DXS
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
 ;;21,"481. ")
 ;;1
 ;;21,"482.30 ")
 ;;2
 ;;21,"482.40 ")
 ;;3
 ;;21,"482.81 ")
 ;;4
 ;;21,"483.0 ")
 ;;5
 ;;21,"485. ")
 ;;6
 ;;9002226,484,.01)
 ;;BGP CMS PNEUMONIA DXS
 ;;9002226,484,.02)
 ;;@
 ;;9002226,484,.04)
 ;;n
 ;;9002226,484,.06)
 ;;@
 ;;9002226,484,.08)
 ;;0
 ;;9002226,484,.09)
 ;;3060327
 ;;9002226,484,.11)
 ;;@
 ;;9002226,484,.12)
 ;;31
 ;;9002226,484,.13)
 ;;1
 ;;9002226,484,.14)
 ;;@
 ;;9002226,484,.15)
 ;;80
 ;;9002226,484,.16)
 ;;@
 ;;9002226,484,.17)
 ;;@
 ;;9002226,484,3101)
 ;;@
 ;;9002226.02101,"484,481. ",.01)
 ;;481. 
 ;;9002226.02101,"484,481. ",.02)
 ;;482.2 
 ;;9002226.02101,"484,482.30 ",.01)
 ;;482.30 
 ;;9002226.02101,"484,482.30 ",.02)
 ;;482.39 
 ;;9002226.02101,"484,482.40 ",.01)
 ;;482.40 
 ;;9002226.02101,"484,482.40 ",.02)
 ;;482.49 
 ;;9002226.02101,"484,482.81 ",.01)
 ;;482.81 
 ;;9002226.02101,"484,482.81 ",.02)
 ;;482.9 
 ;;9002226.02101,"484,483.0 ",.01)
 ;;483.0 
 ;;9002226.02101,"484,483.0 ",.02)
 ;;483.8 
 ;;9002226.02101,"484,485. ",.01)
 ;;485. 
 ;;9002226.02101,"484,485. ",.02)
 ;;487.0 
 ;
OTHER ; OTHER ROUTINES
 Q