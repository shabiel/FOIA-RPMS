BGP6HXP ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 21, 2005 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;;;BGP6;;AUG 21, 2005
 ;;BGP OSTEOPOROSIS DXS
 ;
 ; This routine loads Taxonomy BGP OSTEOPOROSIS DXS
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
 ;;21,"733.00 ")
 ;;1
 ;;9002226,451,.01)
 ;;BGP OSTEOPOROSIS DXS
 ;;9002226,451,.02)
 ;;@
 ;;9002226,451,.04)
 ;;@
 ;;9002226,451,.06)
 ;;@
 ;;9002226,451,.08)
 ;;0
 ;;9002226,451,.09)
 ;;3050809
 ;;9002226,451,.11)
 ;;@
 ;;9002226,451,.12)
 ;;31
 ;;9002226,451,.13)
 ;;1
 ;;9002226,451,.14)
 ;;@
 ;;9002226,451,.15)
 ;;80
 ;;9002226,451,.16)
 ;;@
 ;;9002226,451,.17)
 ;;@
 ;;9002226,451,3101)
 ;;@
 ;;9002226.02101,"451,733.00 ",.01)
 ;;733.00 
 ;;9002226.02101,"451,733.00 ",.02)
 ;;733.99 
 ;
OTHER ; OTHER ROUTINES
 Q