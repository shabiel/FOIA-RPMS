BTPWXXA ;VNGT/HS/ALA-CREATED BY ^ATXSTX ON FEB 08, 2010;
 ;;1.0;CARE MANAGEMENT EVENT TRACKING;;Feb 07, 2011
 ;;BTPW MAMMOGRAM UNI DX CPTS
 ;
 ; This routine loads Taxonomy BTPW MAMMOGRAM UNI DX CPTS
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
 ;;21,"76090 ")
 ;;1
 ;;21,"77055 ")
 ;;2
 ;;21,"G0206 ")
 ;;3
 ;;9002226,1325,.01)
 ;;BTPW MAMMOGRAM UNI DX CPTS
 ;;9002226,1325,.02)
 ;;@
 ;;9002226,1325,.04)
 ;;n
 ;;9002226,1325,.06)
 ;;@
 ;;9002226,1325,.08)
 ;;0
 ;;9002226,1325,.09)
 ;;3061103
 ;;9002226,1325,.11)
 ;;@
 ;;9002226,1325,.12)
 ;;455
 ;;9002226,1325,.13)
 ;;1
 ;;9002226,1325,.14)
 ;;@
 ;;9002226,1325,.15)
 ;;81
 ;;9002226,1325,.16)
 ;;@
 ;;9002226,1325,.17)
 ;;@
 ;;9002226,1325,3101)
 ;;@
 ;;9002226.02101,"1325,76090 ",.01)
 ;;76090
 ;;9002226.02101,"1325,76090 ",.02)
 ;;76090
 ;;9002226.02101,"1325,77055 ",.01)
 ;;77055
 ;;9002226.02101,"1325,77055 ",.02)
 ;;77055
 ;;9002226.02101,"1325,G0206 ",.01)
 ;;G0206
 ;;9002226.02101,"1325,G0206 ",.02)
 ;;G0206
 ;
OTHER ; OTHER ROUTINES
 Q