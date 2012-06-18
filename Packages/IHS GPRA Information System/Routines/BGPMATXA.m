BGPMATXA ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON FEB 02, 2011;
 ;;11.0;IHS CLINICAL REPORTING;**4**;JAN 06, 2011;Build 84
 ;;BGPMU FLU GRP ENCOUNT EM
 ;
 ; This routine loads Taxonomy BGPMU FLU GRP ENCOUNT EM
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
 ;;21,"99411 ")
 ;;1
 ;;9002226,752,.01)
 ;;BGPMU FLU GRP ENCOUNT EM
 ;;9002226,752,.02)
 ;;@
 ;;9002226,752,.04)
 ;;@
 ;;9002226,752,.06)
 ;;@
 ;;9002226,752,.08)
 ;;@
 ;;9002226,752,.09)
 ;;@
 ;;9002226,752,.11)
 ;;@
 ;;9002226,752,.12)
 ;;@
 ;;9002226,752,.13)
 ;;@
 ;;9002226,752,.14)
 ;;@
 ;;9002226,752,.15)
 ;;81
 ;;9002226,752,.16)
 ;;@
 ;;9002226,752,.17)
 ;;@
 ;;9002226,752,3101)
 ;;@
 ;;9002226.02101,"752,99411 ",.01)
 ;;99411
 ;;9002226.02101,"752,99411 ",.02)
 ;;99412
 ;
OTHER ; OTHER ROUTINES
 Q