BGP7P1XA ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 07, 2007;
 ;;7.0;IHS CLINICAL REPORTING;**1**;JAN 24, 2007
 ;;BGP CPT MAMMOGRAM
 ;
 ; This routine loads Taxonomy BGP CPT MAMMOGRAM
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
 ;;21,"77056 ")
 ;;3
 ;;21,"77057 ")
 ;;4
 ;;21,"77059 ")
 ;;5
 ;;21,"G0202 ")
 ;;6
 ;;21,"G0204 ")
 ;;7
 ;;21,"G0206 ")
 ;;8
 ;;9002226,298,.01)
 ;;BGP CPT MAMMOGRAM
 ;;9002226,298,.02)
 ;;@
 ;;9002226,298,.04)
 ;;@
 ;;9002226,298,.06)
 ;;@
 ;;9002226,298,.08)
 ;;0
 ;;9002226,298,.09)
 ;;3070207
 ;;9002226,298,.11)
 ;;@
 ;;9002226,298,.12)
 ;;455
 ;;9002226,298,.13)
 ;;1
 ;;9002226,298,.14)
 ;;@
 ;;9002226,298,.15)
 ;;81
 ;;9002226,298,.16)
 ;;@
 ;;9002226,298,.17)
 ;;@
 ;;9002226,298,3101)
 ;;@
 ;;9002226.02101,"298,76090 ",.01)
 ;;76090 
 ;;9002226.02101,"298,76090 ",.02)
 ;;76092 
 ;;9002226.02101,"298,77055 ",.01)
 ;;77055 
 ;;9002226.02101,"298,77055 ",.02)
 ;;77055 
 ;;9002226.02101,"298,77056 ",.01)
 ;;77056 
 ;;9002226.02101,"298,77056 ",.02)
 ;;77056 
 ;;9002226.02101,"298,77057 ",.01)
 ;;77057 
 ;;9002226.02101,"298,77057 ",.02)
 ;;77058 
 ;;9002226.02101,"298,77059 ",.01)
 ;;77059 
 ;;9002226.02101,"298,77059 ",.02)
 ;;77059 
 ;;9002226.02101,"298,G0202 ",.01)
 ;;G0202 
 ;;9002226.02101,"298,G0202 ",.02)
 ;;G0202 
 ;;9002226.02101,"298,G0204 ",.01)
 ;;G0204 
 ;;9002226.02101,"298,G0204 ",.02)
 ;;G0204 
 ;;9002226.02101,"298,G0206 ",.01)
 ;;G0206 
 ;;9002226.02101,"298,G0206 ",.02)
 ;;G0206 
 ;
OTHER ; OTHER ROUTINES
 Q