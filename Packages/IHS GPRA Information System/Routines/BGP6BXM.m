BGP6BXM ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 21, 2005 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;;;BGP6;;AUG 21, 2005
 ;;BGP COPD DXS
 ;
 ; This routine loads Taxonomy BGP COPD DXS
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
 ;;21,"491.2 ")
 ;;1
 ;;21,"496. ")
 ;;2
 ;;21,"506.0 ")
 ;;3
 ;;9002226,396,.01)
 ;;BGP COPD DXS
 ;;9002226,396,.02)
 ;;@
 ;;9002226,396,.04)
 ;;n
 ;;9002226,396,.06)
 ;;@
 ;;9002226,396,.08)
 ;;0
 ;;9002226,396,.09)
 ;;3050320
 ;;9002226,396,.11)
 ;;@
 ;;9002226,396,.12)
 ;;31
 ;;9002226,396,.13)
 ;;1
 ;;9002226,396,.14)
 ;;@
 ;;9002226,396,.15)
 ;;80
 ;;9002226,396,.16)
 ;;@
 ;;9002226,396,.17)
 ;;@
 ;;9002226,396,3101)
 ;;@
 ;;9002226.02101,"396,491.2 ",.01)
 ;;491.2 
 ;;9002226.02101,"396,491.2 ",.02)
 ;;491.22 
 ;;9002226.02101,"396,496. ",.01)
 ;;496. 
 ;;9002226.02101,"396,496. ",.02)
 ;;496. 
 ;;9002226.02101,"396,506.0 ",.01)
 ;;506.0 
 ;;9002226.02101,"396,506.0 ",.02)
 ;;506.9 
 ;
OTHER ; OTHER ROUTINES
 Q