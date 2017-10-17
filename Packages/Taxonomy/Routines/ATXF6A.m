ATXF6A ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON DEC 20, 2016 ;
 ;;5.1;TAXONOMY;**19**;FEB 04, 1997;Build 32
 ;;BGP ESRD PMS DXS
 ;
 ; This routine loads Taxonomy BGP ESRD PMS DXS
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
 ;;21,"I12.0 ")
 ;;14
 ;;21,"I13.11 ")
 ;;15
 ;;21,"I13.2 ")
 ;;16
 ;;21,"N18.5 ")
 ;;17
 ;;21,"N18.6 ")
 ;;2
 ;;21,"N19. ")
 ;;18
 ;;21,"V42.0 ")
 ;;3
 ;;21,"V45.1 ")
 ;;4
 ;;21,"V56.0 ")
 ;;5
 ;;21,"Z48.22 ")
 ;;6
 ;;21,"Z49.01 ")
 ;;7
 ;;21,"Z49.02 ")
 ;;8
 ;;21,"Z49.31 ")
 ;;9
 ;;21,"Z49.32 ")
 ;;10
 ;;21,"Z91.15 ")
 ;;11
 ;;21,"Z94.0 ")
 ;;12
 ;;21,"Z99.2 ")
 ;;13
 ;;9002226,799,.01)
 ;;BGP ESRD PMS DXS
 ;;9002226,799,.02)
 ;;@
 ;;9002226,799,.04)
 ;;n
 ;;9002226,799,.06)
 ;;@
 ;;9002226,799,.08)
 ;;0
 ;;9002226,799,.09)
 ;;3130515
 ;;9002226,799,.11)
 ;;@
 ;;9002226,799,.12)
 ;;31
 ;;9002226,799,.13)
 ;;1
 ;;9002226,799,.14)
 ;;@
 ;;9002226,799,.15)
 ;;80
 ;;9002226,799,.16)
 ;;@
 ;;9002226,799,.17)
 ;;@
 ;;9002226,799,.22)
 ;;1
 ;;9002226,799,3101)
 ;;@
 ;;9002226.02101,"799,585.6 ",.01)
 ;;585.6 
 ;;9002226.02101,"799,585.6 ",.02)
 ;;585.6 
 ;;9002226.02101,"799,585.6 ",.03)
 ;;1
 ;;9002226.02101,"799,I12.0 ",.01)
 ;;I12.0
 ;;9002226.02101,"799,I12.0 ",.02)
 ;;I12.0
 ;;9002226.02101,"799,I12.0 ",.03)
 ;;30
 ;;9002226.02101,"799,I13.11 ",.01)
 ;;I13.11
 ;;9002226.02101,"799,I13.11 ",.02)
 ;;I13.11
 ;;9002226.02101,"799,I13.11 ",.03)
 ;;30
 ;;9002226.02101,"799,I13.2 ",.01)
 ;;I13.2
 ;;9002226.02101,"799,I13.2 ",.02)
 ;;I13.2
 ;;9002226.02101,"799,I13.2 ",.03)
 ;;30
 ;;9002226.02101,"799,N18.5 ",.01)
 ;;N18.5
 ;;9002226.02101,"799,N18.5 ",.02)
 ;;N18.5
 ;;9002226.02101,"799,N18.5 ",.03)
 ;;30
 ;;9002226.02101,"799,N18.6 ",.01)
 ;;N18.6
 ;;9002226.02101,"799,N18.6 ",.02)
 ;;N18.6
 ;;9002226.02101,"799,N18.6 ",.03)
 ;;30
 ;;9002226.02101,"799,N19. ",.01)
 ;;N19.
 ;;9002226.02101,"799,N19. ",.02)
 ;;N19.
 ;;9002226.02101,"799,N19. ",.03)
 ;;30
 ;;9002226.02101,"799,V42.0 ",.01)
 ;;V42.0 
 ;;9002226.02101,"799,V42.0 ",.02)
 ;;V42.0 
 ;;9002226.02101,"799,V42.0 ",.03)
 ;;1
 ;;9002226.02101,"799,V45.1 ",.01)
 ;;V45.1 
 ;;9002226.02101,"799,V45.1 ",.02)
 ;;V45.12 
 ;;9002226.02101,"799,V45.1 ",.03)
 ;;1
 ;;9002226.02101,"799,V56.0 ",.01)
 ;;V56.0 
 ;;9002226.02101,"799,V56.0 ",.02)
 ;;V56.8 
 ;;9002226.02101,"799,V56.0 ",.03)
 ;;1
 ;;9002226.02101,"799,Z48.22 ",.01)
 ;;Z48.22
 ;;9002226.02101,"799,Z48.22 ",.02)
 ;;Z48.22
 ;;9002226.02101,"799,Z48.22 ",.03)
 ;;30
 ;;9002226.02101,"799,Z49.01 ",.01)
 ;;Z49.01
 ;;9002226.02101,"799,Z49.01 ",.02)
 ;;Z49.01
 ;;9002226.02101,"799,Z49.01 ",.03)
 ;;30
 ;;9002226.02101,"799,Z49.02 ",.01)
 ;;Z49.02
 ;;9002226.02101,"799,Z49.02 ",.02)
 ;;Z49.02
 ;;9002226.02101,"799,Z49.02 ",.03)
 ;;30
 ;;9002226.02101,"799,Z49.31 ",.01)
 ;;Z49.31
 ;;9002226.02101,"799,Z49.31 ",.02)
 ;;Z49.31
 ;;9002226.02101,"799,Z49.31 ",.03)
 ;;30
 ;;9002226.02101,"799,Z49.32 ",.01)
 ;;Z49.32
 ;;9002226.02101,"799,Z49.32 ",.02)
 ;;Z49.32
 ;;9002226.02101,"799,Z49.32 ",.03)
 ;;30
 ;;9002226.02101,"799,Z91.15 ",.01)
 ;;Z91.15
 ;;9002226.02101,"799,Z91.15 ",.02)
 ;;Z91.15
 ;;9002226.02101,"799,Z91.15 ",.03)
 ;;30
 ;;9002226.02101,"799,Z94.0 ",.01)
 ;;Z94.0
 ;;9002226.02101,"799,Z94.0 ",.02)
 ;;Z94.0
 ;;9002226.02101,"799,Z94.0 ",.03)
 ;;30
 ;;9002226.02101,"799,Z99.2 ",.01)
 ;;Z99.2
 ;;9002226.02101,"799,Z99.2 ",.02)
 ;;Z99.2
 ;;9002226.02101,"799,Z99.2 ",.03)
 ;;30
 ;;9002226.04101,"799,1",.01)
 ;;BGP
 ;
OTHER ; OTHER ROUTINES
 Q