BTPWUXG ;VNGT/HS/ALA-CREATED BY ^ATXSTX ON JAN 14, 2010;
 ;;1.0;CARE MANAGEMENT EVENT TRACKING;;Feb 07, 2011
 ;;BGP COLO PROCS
 ;
 ; This routine loads Taxonomy BGP COLO PROCS
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
 ;;21,"45.22 ")
 ;;1
 ;;21,"45.25 ")
 ;;2
 ;;21,"45.42 ")
 ;;3
 ;;9002226,1208,.01)
 ;;BGP COLO PROCS
 ;;9002226,1208,.02)
 ;;@
 ;;9002226,1208,.04)
 ;;n
 ;;9002226,1208,.06)
 ;;@
 ;;9002226,1208,.08)
 ;;0
 ;;9002226,1208,.09)
 ;;3081028
 ;;9002226,1208,.11)
 ;;@
 ;;9002226,1208,.12)
 ;;255
 ;;9002226,1208,.13)
 ;;1
 ;;9002226,1208,.14)
 ;;@
 ;;9002226,1208,.15)
 ;;80.1
 ;;9002226,1208,.16)
 ;;@
 ;;9002226,1208,.17)
 ;;@
 ;;9002226,1208,3101)
 ;;@
 ;;9002226.02101,"1208,45.22 ",.01)
 ;;45.22 
 ;;9002226.02101,"1208,45.22 ",.02)
 ;;45.23 
 ;;9002226.02101,"1208,45.25 ",.01)
 ;;45.25 
 ;;9002226.02101,"1208,45.25 ",.02)
 ;;45.25 
 ;;9002226.02101,"1208,45.42 ",.01)
 ;;45.42 
 ;;9002226.02101,"1208,45.42 ",.02)
 ;;45.43 
 ;
OTHER ; OTHER ROUTINES
 Q