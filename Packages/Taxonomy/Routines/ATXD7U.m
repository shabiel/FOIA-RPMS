ATXD7U ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 11, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BQI NEUROSYPHILIS DXS
 ;
 ; This routine loads Taxonomy BQI NEUROSYPHILIS DXS
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
 ;;21,"094.0 ")
 ;;1
 ;;21,"A52.10 ")
 ;;2
 ;;21,"A52.11 ")
 ;;3
 ;;21,"A52.12 ")
 ;;4
 ;;21,"A52.13 ")
 ;;5
 ;;21,"A52.14 ")
 ;;6
 ;;21,"A52.15 ")
 ;;7
 ;;21,"A52.16 ")
 ;;8
 ;;21,"A52.17 ")
 ;;9
 ;;21,"A52.19 ")
 ;;10
 ;;21,"A52.2 ")
 ;;11
 ;;21,"A52.3 ")
 ;;12
 ;;9002226,1848,.01)
 ;;BQI NEUROSYPHILIS DXS
 ;;9002226,1848,.02)
 ;;Neurosyphilis
 ;;9002226,1848,.04)
 ;;n
 ;;9002226,1848,.06)
 ;;@
 ;;9002226,1848,.08)
 ;;0
 ;;9002226,1848,.09)
 ;;3140311
 ;;9002226,1848,.11)
 ;;@
 ;;9002226,1848,.12)
 ;;31
 ;;9002226,1848,.13)
 ;;1
 ;;9002226,1848,.14)
 ;;@
 ;;9002226,1848,.15)
 ;;80
 ;;9002226,1848,.16)
 ;;@
 ;;9002226,1848,.17)
 ;;@
 ;;9002226,1848,3101)
 ;;@
 ;;9002226.01101,"1848,1",.01)
 ;;CDC Nationally Notificable Disease
 ;;9002226.02101,"1848,094.0 ",.01)
 ;;094.0
 ;;9002226.02101,"1848,094.0 ",.02)
 ;;094.9
 ;;9002226.02101,"1848,094.0 ",.03)
 ;;1
 ;;9002226.02101,"1848,A52.10 ",.01)
 ;;A52.10 
 ;;9002226.02101,"1848,A52.10 ",.02)
 ;;A52.10 
 ;;9002226.02101,"1848,A52.10 ",.03)
 ;;30
 ;;9002226.02101,"1848,A52.11 ",.01)
 ;;A52.11 
 ;;9002226.02101,"1848,A52.11 ",.02)
 ;;A52.11 
 ;;9002226.02101,"1848,A52.11 ",.03)
 ;;30
 ;;9002226.02101,"1848,A52.12 ",.01)
 ;;A52.12 
 ;;9002226.02101,"1848,A52.12 ",.02)
 ;;A52.12 
 ;;9002226.02101,"1848,A52.12 ",.03)
 ;;30
 ;;9002226.02101,"1848,A52.13 ",.01)
 ;;A52.13 
 ;;9002226.02101,"1848,A52.13 ",.02)
 ;;A52.13 
 ;;9002226.02101,"1848,A52.13 ",.03)
 ;;30
 ;;9002226.02101,"1848,A52.14 ",.01)
 ;;A52.14 
 ;;9002226.02101,"1848,A52.14 ",.02)
 ;;A52.14 
 ;;9002226.02101,"1848,A52.14 ",.03)
 ;;30
 ;;9002226.02101,"1848,A52.15 ",.01)
 ;;A52.15 
 ;;9002226.02101,"1848,A52.15 ",.02)
 ;;A52.15 
 ;;9002226.02101,"1848,A52.15 ",.03)
 ;;30
 ;;9002226.02101,"1848,A52.16 ",.01)
 ;;A52.16 
 ;;9002226.02101,"1848,A52.16 ",.02)
 ;;A52.16 
 ;;9002226.02101,"1848,A52.16 ",.03)
 ;;30
 ;;9002226.02101,"1848,A52.17 ",.01)
 ;;A52.17 
 ;;9002226.02101,"1848,A52.17 ",.02)
 ;;A52.17 
 ;;9002226.02101,"1848,A52.17 ",.03)
 ;;30
 ;;9002226.02101,"1848,A52.19 ",.01)
 ;;A52.19 
 ;;9002226.02101,"1848,A52.19 ",.02)
 ;;A52.19 
 ;;9002226.02101,"1848,A52.19 ",.03)
 ;;30
 ;;9002226.02101,"1848,A52.2 ",.01)
 ;;A52.2 
 ;;9002226.02101,"1848,A52.2 ",.02)
 ;;A52.2 
 ;;9002226.02101,"1848,A52.2 ",.03)
 ;;30
 ;;9002226.02101,"1848,A52.3 ",.01)
 ;;A52.3 
 ;;9002226.02101,"1848,A52.3 ",.02)
 ;;A52.3 
 ;;9002226.02101,"1848,A52.3 ",.03)
 ;;30
 ;;9002226.04101,"1848,1",.01)
 ;;BQI
 ;;9002226.05101,"1848,1",.01)
 ;;NEUROSYPHILIS
 ;
OTHER ; OTHER ROUTINES
 Q