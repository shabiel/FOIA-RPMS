ATXDCD ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JUN 04, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;DM AUDIT ABNORMAL GLUCOSE
 ;
 ; This routine loads Taxonomy DM AUDIT ABNORMAL GLUCOSE
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
 ;;21,"790.29 ")
 ;;1
 ;;21,"R73.09 ")
 ;;2
 ;;9002226,976,.01)
 ;;DM AUDIT ABNORMAL GLUCOSE
 ;;9002226,976,.02)
 ;;@
 ;;9002226,976,.04)
 ;;n
 ;;9002226,976,.06)
 ;;@
 ;;9002226,976,.08)
 ;;@
 ;;9002226,976,.09)
 ;;3140604
 ;;9002226,976,.11)
 ;;@
 ;;9002226,976,.12)
 ;;31
 ;;9002226,976,.13)
 ;;1
 ;;9002226,976,.14)
 ;;@
 ;;9002226,976,.15)
 ;;80
 ;;9002226,976,.16)
 ;;@
 ;;9002226,976,.17)
 ;;@
 ;;9002226,976,3101)
 ;;@
 ;;9002226.02101,"976,790.29 ",.01)
 ;;790.29 
 ;;9002226.02101,"976,790.29 ",.02)
 ;;790.29 
 ;;9002226.02101,"976,790.29 ",.03)
 ;;1
 ;;9002226.02101,"976,R73.09 ",.01)
 ;;R73.09 
 ;;9002226.02101,"976,R73.09 ",.02)
 ;;R73.09 
 ;;9002226.02101,"976,R73.09 ",.03)
 ;;30
 ;
OTHER ; OTHER ROUTINES
 Q