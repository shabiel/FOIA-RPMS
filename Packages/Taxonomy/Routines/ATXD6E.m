ATXD6E ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 12, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BKM CHANCROID DXS
 ;
 ; This routine loads Taxonomy BKM CHANCROID DXS
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
 ;;21,"099.0 ")
 ;;1
 ;;21,"A57. ")
 ;;2
 ;;9002226,883,.01)
 ;;BKM CHANCROID DXS
 ;;9002226,883,.02)
 ;;Chancroid DX
 ;;9002226,883,.04)
 ;;@
 ;;9002226,883,.06)
 ;;@
 ;;9002226,883,.08)
 ;;0
 ;;9002226,883,.09)
 ;;3070227
 ;;9002226,883,.11)
 ;;@
 ;;9002226,883,.12)
 ;;31
 ;;9002226,883,.13)
 ;;1
 ;;9002226,883,.14)
 ;;@
 ;;9002226,883,.15)
 ;;80
 ;;9002226,883,.16)
 ;;@
 ;;9002226,883,.17)
 ;;@
 ;;9002226,883,3101)
 ;;@
 ;;9002226.02101,"883,099.0 ",.01)
 ;;099.0 
 ;;9002226.02101,"883,099.0 ",.02)
 ;;099.0 
 ;;9002226.02101,"883,099.0 ",.03)
 ;;1
 ;;9002226.02101,"883,A57. ",.01)
 ;;A57. 
 ;;9002226.02101,"883,A57. ",.02)
 ;;A57. 
 ;;9002226.02101,"883,A57. ",.03)
 ;;30
 ;
OTHER ; OTHER ROUTINES
 Q