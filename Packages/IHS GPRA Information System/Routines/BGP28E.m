BGP28E ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 19, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;;BGP PED CA DXS
 ;
 ; This routine loads Taxonomy BGP PED CA DXS
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
 ;;21,"140.0 ")
 ;;1
 ;;21,"230.0 ")
 ;;2
 ;;9002226,1565,.01)
 ;;BGP PED CA DXS
 ;;9002226,1565,.02)
 ;;@
 ;;9002226,1565,.04)
 ;;@
 ;;9002226,1565,.06)
 ;;@
 ;;9002226,1565,.08)
 ;;0
 ;;9002226,1565,.09)
 ;;3120218
 ;;9002226,1565,.11)
 ;;@
 ;;9002226,1565,.12)
 ;;31
 ;;9002226,1565,.13)
 ;;1
 ;;9002226,1565,.14)
 ;;@
 ;;9002226,1565,.15)
 ;;80
 ;;9002226,1565,.16)
 ;;@
 ;;9002226,1565,.17)
 ;;@
 ;;9002226,1565,3101)
 ;;@
 ;;9002226.02101,"1565,140.0 ",.01)
 ;;140.0 
 ;;9002226.02101,"1565,140.0 ",.02)
 ;;208.92 
 ;;9002226.02101,"1565,230.0 ",.01)
 ;;230.0 
 ;;9002226.02101,"1565,230.0 ",.02)
 ;;234.9 
 ;
OTHER ; OTHER ROUTINES
 Q