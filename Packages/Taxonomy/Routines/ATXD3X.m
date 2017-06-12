ATXD3X ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 28, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BGP SUICIDAL IDEATION DXS
 ;
 ; This routine loads Taxonomy BGP SUICIDAL IDEATION DXS
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
 ;;21,"R45.851 ")
 ;;1
 ;;21,"V62.84 ")
 ;;2
 ;;9002226,1531,.01)
 ;;BGP SUICIDAL IDEATION DXS
 ;;9002226,1531,.02)
 ;;@
 ;;9002226,1531,.04)
 ;;n
 ;;9002226,1531,.06)
 ;;@
 ;;9002226,1531,.08)
 ;;0
 ;;9002226,1531,.09)
 ;;3120216
 ;;9002226,1531,.11)
 ;;@
 ;;9002226,1531,.12)
 ;;31
 ;;9002226,1531,.13)
 ;;1
 ;;9002226,1531,.14)
 ;;@
 ;;9002226,1531,.15)
 ;;80
 ;;9002226,1531,.16)
 ;;@
 ;;9002226,1531,.17)
 ;;@
 ;;9002226,1531,3101)
 ;;@
 ;;9002226.02101,"1531,R45.851 ",.01)
 ;;R45.851 
 ;;9002226.02101,"1531,R45.851 ",.02)
 ;;R45.851 
 ;;9002226.02101,"1531,R45.851 ",.03)
 ;;30
 ;;9002226.02101,"1531,V62.84 ",.01)
 ;;V62.84 
 ;;9002226.02101,"1531,V62.84 ",.02)
 ;;V62.84 
 ;;9002226.02101,"1531,V62.84 ",.03)
 ;;1
 ;;9002226.04101,"1531,1",.01)
 ;;BGP
 ;
OTHER ; OTHER ROUTINES
 Q