BTPWAA ;GDIT/HS/ALA-CREATED BY ^ATXSTX ON MAR 31, 2014;
 ;;1.1;CARE MANAGEMENT EVENT TRACKING;;Apr 01, 2015;Build 25
 ;;BTPW CONE BX CPTS
 ;
 ; This routine loads Taxonomy BTPW CONE BX CPTS
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
 ;;21,"57520 ")
 ;;1
 ;;9002226,1524,.01)
 ;;BTPW CONE BX CPTS
 ;;9002226,1524,.02)
 ;;@
 ;;9002226,1524,.04)
 ;;n
 ;;9002226,1524,.06)
 ;;@
 ;;9002226,1524,.08)
 ;;@
 ;;9002226,1524,.09)
 ;;3060516
 ;;9002226,1524,.11)
 ;;@
 ;;9002226,1524,.12)
 ;;455
 ;;9002226,1524,.13)
 ;;1
 ;;9002226,1524,.14)
 ;;@
 ;;9002226,1524,.15)
 ;;81
 ;;9002226,1524,.16)
 ;;@
 ;;9002226,1524,.17)
 ;;@
 ;;9002226,1524,3101)
 ;;@
 ;;9002226.02101,"1524,57520 ",.01)
 ;;57520
 ;;9002226.02101,"1524,57520 ",.02)
 ;;57520
 ;;9002226.04101,"1524,1",.01)
 ;;BTPW
 ;;9002226.05101,"1524,1",.01)
 ;;CONE
 ;;9002226.05101,"1524,2",.01)
 ;;BIOPSY
 ;
OTHER ; OTHER ROUTINES
 Q