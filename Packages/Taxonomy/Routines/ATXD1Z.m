ATXD1Z ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 28, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BGP DENTAL EXAM DXS
 ;
 ; This routine loads Taxonomy BGP DENTAL EXAM DXS
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
 ;;21,"V72.2 ")
 ;;1
 ;;21,"Z01.20 ")
 ;;2
 ;;21,"Z01.21 ")
 ;;3
 ;;9002226,1517,.01)
 ;;BGP DENTAL EXAM DXS
 ;;9002226,1517,.02)
 ;;@
 ;;9002226,1517,.04)
 ;;n
 ;;9002226,1517,.06)
 ;;@
 ;;9002226,1517,.08)
 ;;0
 ;;9002226,1517,.09)
 ;;3130515
 ;;9002226,1517,.11)
 ;;@
 ;;9002226,1517,.12)
 ;;31
 ;;9002226,1517,.13)
 ;;1
 ;;9002226,1517,.14)
 ;;@
 ;;9002226,1517,.15)
 ;;80
 ;;9002226,1517,.16)
 ;;@
 ;;9002226,1517,.17)
 ;;@
 ;;9002226,1517,3101)
 ;;@
 ;;9002226.02101,"1517,V72.2 ",.01)
 ;;V72.2 
 ;;9002226.02101,"1517,V72.2 ",.02)
 ;;V72.2 
 ;;9002226.02101,"1517,V72.2 ",.03)
 ;;1
 ;;9002226.02101,"1517,Z01.20 ",.01)
 ;;Z01.20
 ;;9002226.02101,"1517,Z01.20 ",.02)
 ;;Z01.20
 ;;9002226.02101,"1517,Z01.20 ",.03)
 ;;30
 ;;9002226.02101,"1517,Z01.21 ",.01)
 ;;Z01.21
 ;;9002226.02101,"1517,Z01.21 ",.02)
 ;;Z01.21
 ;;9002226.02101,"1517,Z01.21 ",.03)
 ;;30
 ;;9002226.04101,"1517,1",.01)
 ;;BGP
 ;
OTHER ; OTHER ROUTINES
 Q