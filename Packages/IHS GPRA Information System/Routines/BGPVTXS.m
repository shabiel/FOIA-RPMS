BGPVTXS ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 21, 2005 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;;;BGPV;;APR 21, 2005
 ;;BGP MICROALBUM LOINC CODES
 ;
 ; This routine loads Taxonomy BGP MICROALBUM LOINC CODES
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
 ;;21,"11218-5 ")
 ;;1
 ;;21,"14956-7 ")
 ;;2
 ;;21,"14957-5 ")
 ;;3
 ;;21,"14958-3 ")
 ;;4
 ;;21,"14959-1 ")
 ;;5
 ;;21,"30000-4 ")
 ;;6
 ;;21,"30001-2 ")
 ;;7
 ;;21,"30003-8 ")
 ;;8
 ;;9002226,332,.01)
 ;;BGP MICROALBUM LOINC CODES
 ;;9002226,332,.02)
 ;;@
 ;;9002226,332,.04)
 ;;n
 ;;9002226,332,.06)
 ;;@
 ;;9002226,332,.08)
 ;;@
 ;;9002226,332,.09)
 ;;@
 ;;9002226,332,.11)
 ;;@
 ;;9002226,332,.12)
 ;;@
 ;;9002226,332,.13)
 ;;1
 ;;9002226,332,.14)
 ;;FIHS
 ;;9002226,332,.15)
 ;;95.3
 ;;9002226,332,.16)
 ;;@
 ;;9002226,332,.17)
 ;;@
 ;;9002226,332,3101)
 ;;@
 ;;9002226.02101,"332,11218-5 ",.01)
 ;;11218-5
 ;;9002226.02101,"332,11218-5 ",.02)
 ;;11218-5
 ;;9002226.02101,"332,14956-7 ",.01)
 ;;14956-7
 ;;9002226.02101,"332,14956-7 ",.02)
 ;;14956-7
 ;;9002226.02101,"332,14957-5 ",.01)
 ;;14957-5
 ;;9002226.02101,"332,14957-5 ",.02)
 ;;14957-5
 ;;9002226.02101,"332,14958-3 ",.01)
 ;;14958-3
 ;;9002226.02101,"332,14958-3 ",.02)
 ;;14958-3
 ;;9002226.02101,"332,14959-1 ",.01)
 ;;14959-1
 ;;9002226.02101,"332,14959-1 ",.02)
 ;;14959-1
 ;;9002226.02101,"332,30000-4 ",.01)
 ;;30000-4
 ;;9002226.02101,"332,30000-4 ",.02)
 ;;30000-4
 ;;9002226.02101,"332,30001-2 ",.01)
 ;;30001-2
 ;;9002226.02101,"332,30001-2 ",.02)
 ;;30001-2
 ;;9002226.02101,"332,30003-8 ",.01)
 ;;30003-8
 ;;9002226.02101,"332,30003-8 ",.02)
 ;;30003-8
 ;
OTHER ; OTHER ROUTINES
 Q