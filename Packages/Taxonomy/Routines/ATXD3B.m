ATXD3B ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 28, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BGP MAMMOGRAM DXS
 ;
 ; This routine loads Taxonomy BGP MAMMOGRAM DXS
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
 ;;21,"793.80 ")
 ;;1
 ;;21,"793.89 ")
 ;;2
 ;;21,"R92.0 ")
 ;;3
 ;;21,"R92.1 ")
 ;;4
 ;;21,"R92.8 ")
 ;;5
 ;;21,"V76.11 ")
 ;;6
 ;;21,"Z12.31 ")
 ;;7
 ;;9002226,1702,.01)
 ;;BGP MAMMOGRAM DXS
 ;;9002226,1702,.02)
 ;;@
 ;;9002226,1702,.04)
 ;;n
 ;;9002226,1702,.06)
 ;;@
 ;;9002226,1702,.08)
 ;;0
 ;;9002226,1702,.09)
 ;;3130515
 ;;9002226,1702,.11)
 ;;@
 ;;9002226,1702,.12)
 ;;31
 ;;9002226,1702,.13)
 ;;1
 ;;9002226,1702,.14)
 ;;@
 ;;9002226,1702,.15)
 ;;80
 ;;9002226,1702,.16)
 ;;@
 ;;9002226,1702,.17)
 ;;@
 ;;9002226,1702,3101)
 ;;@
 ;;9002226.02101,"1702,793.80 ",.01)
 ;;793.80 
 ;;9002226.02101,"1702,793.80 ",.02)
 ;;793.81 
 ;;9002226.02101,"1702,793.80 ",.03)
 ;;1
 ;;9002226.02101,"1702,793.89 ",.01)
 ;;793.89 
 ;;9002226.02101,"1702,793.89 ",.02)
 ;;793.89 
 ;;9002226.02101,"1702,793.89 ",.03)
 ;;1
 ;;9002226.02101,"1702,R92.0 ",.01)
 ;;R92.0
 ;;9002226.02101,"1702,R92.0 ",.02)
 ;;R92.0
 ;;9002226.02101,"1702,R92.0 ",.03)
 ;;30
 ;;9002226.02101,"1702,R92.1 ",.01)
 ;;R92.1
 ;;9002226.02101,"1702,R92.1 ",.02)
 ;;R92.1
 ;;9002226.02101,"1702,R92.1 ",.03)
 ;;30
 ;;9002226.02101,"1702,R92.8 ",.01)
 ;;R92.8
 ;;9002226.02101,"1702,R92.8 ",.02)
 ;;R92.8
 ;;9002226.02101,"1702,R92.8 ",.03)
 ;;30
 ;;9002226.02101,"1702,V76.11 ",.01)
 ;;V76.11 
 ;;9002226.02101,"1702,V76.11 ",.02)
 ;;V76.12 
 ;;9002226.02101,"1702,V76.11 ",.03)
 ;;1
 ;;9002226.02101,"1702,Z12.31 ",.01)
 ;;Z12.31
 ;;9002226.02101,"1702,Z12.31 ",.02)
 ;;Z12.31
 ;;9002226.02101,"1702,Z12.31 ",.03)
 ;;30
 ;;9002226.04101,"1702,1",.01)
 ;;BGP
 ;
OTHER ; OTHER ROUTINES
 Q