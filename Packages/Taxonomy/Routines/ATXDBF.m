ATXDBF ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 17, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BQI ESRD DXS
 ;
 ; This routine loads Taxonomy BQI ESRD DXS
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
 ;;21,"585.6 ")
 ;;1
 ;;21,"N18.6 ")
 ;;4
 ;;21,"V45.1 ")
 ;;2
 ;;21,"Z99.2 ")
 ;;3
 ;;9002226,1827,.01)
 ;;BQI ESRD DXS
 ;;9002226,1827,.02)
 ;;End Stage Renal Disease
 ;;9002226,1827,.04)
 ;;n
 ;;9002226,1827,.06)
 ;;@
 ;;9002226,1827,.08)
 ;;0
 ;;9002226,1827,.09)
 ;;3140317
 ;;9002226,1827,.11)
 ;;@
 ;;9002226,1827,.12)
 ;;31
 ;;9002226,1827,.13)
 ;;1
 ;;9002226,1827,.14)
 ;;@
 ;;9002226,1827,.15)
 ;;80
 ;;9002226,1827,.16)
 ;;@
 ;;9002226,1827,.17)
 ;;@
 ;;9002226,1827,3101)
 ;;@
 ;;9002226.01101,"1827,1",.01)
 ;;End Stage Renal Disease definition used in the CVD Highest Risk 
 ;;9002226.01101,"1827,2",.01)
 ;;Diagnostic Tag in iCare.
 ;;9002226.02101,"1827,585.6 ",.01)
 ;;585.6
 ;;9002226.02101,"1827,585.6 ",.02)
 ;;585.6
 ;;9002226.02101,"1827,585.6 ",.03)
 ;;1
 ;;9002226.02101,"1827,N18.6 ",.01)
 ;;N18.6 
 ;;9002226.02101,"1827,N18.6 ",.02)
 ;;N18.6 
 ;;9002226.02101,"1827,N18.6 ",.03)
 ;;30
 ;;9002226.02101,"1827,V45.1 ",.01)
 ;;V45.1
 ;;9002226.02101,"1827,V45.1 ",.02)
 ;;V45.1
 ;;9002226.02101,"1827,V45.1 ",.03)
 ;;1
 ;;9002226.02101,"1827,Z99.2 ",.01)
 ;;Z99.2 
 ;;9002226.02101,"1827,Z99.2 ",.02)
 ;;Z99.2 
 ;;9002226.02101,"1827,Z99.2 ",.03)
 ;;30
 ;;9002226.04101,"1827,1",.01)
 ;;BQI
 ;;9002226.05101,"1827,1",.01)
 ;;RENAL
 ;;9002226.05101,"1827,2",.01)
 ;;END STAGE
 ;
OTHER ; OTHER ROUTINES
 Q