BGP2WC ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 19, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;;BGP PED WH DXS
 ;
 ; This routine loads Taxonomy BGP PED WH DXS
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
 ;;21,"256.31 ")
 ;;1
 ;;21,"625.4 ")
 ;;2
 ;;21,"626.0 ")
 ;;3
 ;;9002226,1718,.01)
 ;;BGP PED WH DXS
 ;;9002226,1718,.02)
 ;;@
 ;;9002226,1718,.04)
 ;;@
 ;;9002226,1718,.06)
 ;;@
 ;;9002226,1718,.08)
 ;;0
 ;;9002226,1718,.09)
 ;;3120219
 ;;9002226,1718,.11)
 ;;@
 ;;9002226,1718,.12)
 ;;31
 ;;9002226,1718,.13)
 ;;1
 ;;9002226,1718,.14)
 ;;@
 ;;9002226,1718,.15)
 ;;80
 ;;9002226,1718,.16)
 ;;@
 ;;9002226,1718,.17)
 ;;@
 ;;9002226,1718,3101)
 ;;@
 ;;9002226.02101,"1718,256.31 ",.01)
 ;;256.31 
 ;;9002226.02101,"1718,256.31 ",.02)
 ;;256.31 
 ;;9002226.02101,"1718,625.4 ",.01)
 ;;625.4 
 ;;9002226.02101,"1718,625.4 ",.02)
 ;;625.4 
 ;;9002226.02101,"1718,626.0 ",.01)
 ;;626.0 
 ;;9002226.02101,"1718,626.0 ",.02)
 ;;627.9 
 ;
OTHER ; OTHER ROUTINES
 Q