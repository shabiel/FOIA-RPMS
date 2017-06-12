ATXDAW ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 12, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BQI VIBRIOSIS DXS
 ;
 ; This routine loads Taxonomy BQI VIBRIOSIS DXS
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
 ;;21,"027.9 ")
 ;;1
 ;;21,"A28.9 ")
 ;;2
 ;;9002226,1882,.01)
 ;;BQI VIBRIOSIS DXS
 ;;9002226,1882,.02)
 ;;Vibriosis
 ;;9002226,1882,.04)
 ;;n
 ;;9002226,1882,.06)
 ;;@
 ;;9002226,1882,.08)
 ;;0
 ;;9002226,1882,.09)
 ;;3140312
 ;;9002226,1882,.11)
 ;;@
 ;;9002226,1882,.12)
 ;;31
 ;;9002226,1882,.13)
 ;;1
 ;;9002226,1882,.14)
 ;;@
 ;;9002226,1882,.15)
 ;;80
 ;;9002226,1882,.16)
 ;;@
 ;;9002226,1882,.17)
 ;;@
 ;;9002226,1882,3101)
 ;;@
 ;;9002226.01101,"1882,1",.01)
 ;;CDC Nationally Notificable Disease
 ;;9002226.02101,"1882,027.9 ",.01)
 ;;027.9
 ;;9002226.02101,"1882,027.9 ",.02)
 ;;027.9
 ;;9002226.02101,"1882,027.9 ",.03)
 ;;1
 ;;9002226.02101,"1882,A28.9 ",.01)
 ;;A28.9 
 ;;9002226.02101,"1882,A28.9 ",.02)
 ;;A28.9 
 ;;9002226.02101,"1882,A28.9 ",.03)
 ;;30
 ;;9002226.04101,"1882,1",.01)
 ;;BQI
 ;;9002226.05101,"1882,1",.01)
 ;;VIBRIOSIS
 ;
OTHER ; OTHER ROUTINES
 Q