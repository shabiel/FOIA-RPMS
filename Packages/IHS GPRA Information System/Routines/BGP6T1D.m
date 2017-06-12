BGP6T1D ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 04, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;;BGP CABG CPTS
 ;
 ; This routine loads Taxonomy BGP CABG CPTS
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
 ;;21,"33510 ")
 ;;1
 ;;21,"33521 ")
 ;;2
 ;;21,"33530 ")
 ;;3
 ;;21,"33572 ")
 ;;4
 ;;21,"35500 ")
 ;;5
 ;;21,"35600 ")
 ;;6
 ;;21,"S2205 ")
 ;;7
 ;;9002226,350,.01)
 ;;BGP CABG CPTS
 ;;9002226,350,.02)
 ;;@
 ;;9002226,350,.04)
 ;;@
 ;;9002226,350,.06)
 ;;@
 ;;9002226,350,.08)
 ;;0
 ;;9002226,350,.09)
 ;;3150804
 ;;9002226,350,.11)
 ;;@
 ;;9002226,350,.12)
 ;;455
 ;;9002226,350,.13)
 ;;1
 ;;9002226,350,.14)
 ;;@
 ;;9002226,350,.15)
 ;;81
 ;;9002226,350,.16)
 ;;@
 ;;9002226,350,.17)
 ;;@
 ;;9002226,350,3101)
 ;;@
 ;;9002226.02101,"350,33510 ",.01)
 ;;33510 
 ;;9002226.02101,"350,33510 ",.02)
 ;;33519 
 ;;9002226.02101,"350,33521 ",.01)
 ;;33521 
 ;;9002226.02101,"350,33521 ",.02)
 ;;33523 
 ;;9002226.02101,"350,33530 ",.01)
 ;;33530 
 ;;9002226.02101,"350,33530 ",.02)
 ;;33536 
 ;;9002226.02101,"350,33572 ",.01)
 ;;33572 
 ;;9002226.02101,"350,33572 ",.02)
 ;;33572 
 ;;9002226.02101,"350,35500 ",.01)
 ;;35500 
 ;;9002226.02101,"350,35500 ",.02)
 ;;35500 
 ;;9002226.02101,"350,35600 ",.01)
 ;;35600 
 ;;9002226.02101,"350,35600 ",.02)
 ;;35600 
 ;;9002226.02101,"350,S2205 ",.01)
 ;;S2205 
 ;;9002226.02101,"350,S2205 ",.02)
 ;;S2209 
 ;
OTHER ; OTHER ROUTINES
 Q