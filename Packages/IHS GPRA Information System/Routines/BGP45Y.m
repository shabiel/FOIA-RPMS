BGP45Y ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON SEP 26, 2013;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;;BGP RA CYCLOSPORINE VAPI
 ;
 ; This routine loads Taxonomy BGP RA CYCLOSPORINE VAPI
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
 ;;21,"C0861 ")
 ;;1
 ;;21,"C0862 ")
 ;;2
 ;;21,"C0864 ")
 ;;3
 ;;21,"C0865 ")
 ;;4
 ;;21,"C0974 ")
 ;;5
 ;;21,"C0975 ")
 ;;6
 ;;21,"C1211 ")
 ;;7
 ;;21,"C1212 ")
 ;;8
 ;;9002226,1840,.01)
 ;;BGP RA CYCLOSPORINE VAPI
 ;;9002226,1840,.02)
 ;;@
 ;;9002226,1840,.04)
 ;;@
 ;;9002226,1840,.06)
 ;;@
 ;;9002226,1840,.08)
 ;;@
 ;;9002226,1840,.09)
 ;;3130926
 ;;9002226,1840,.11)
 ;;@
 ;;9002226,1840,.12)
 ;;@
 ;;9002226,1840,.13)
 ;;1
 ;;9002226,1840,.14)
 ;;@
 ;;9002226,1840,.15)
 ;;50.68
 ;;9002226,1840,.16)
 ;;@
 ;;9002226,1840,.17)
 ;;@
 ;;9002226,1840,3101)
 ;;@
 ;;9002226.02101,"1840,C0861 ",.01)
 ;;C0861
 ;;9002226.02101,"1840,C0861 ",.02)
 ;;C0861
 ;;9002226.02101,"1840,C0862 ",.01)
 ;;C0862
 ;;9002226.02101,"1840,C0862 ",.02)
 ;;C0862
 ;;9002226.02101,"1840,C0864 ",.01)
 ;;C0864
 ;;9002226.02101,"1840,C0864 ",.02)
 ;;C0864
 ;;9002226.02101,"1840,C0865 ",.01)
 ;;C0865
 ;;9002226.02101,"1840,C0865 ",.02)
 ;;C0865
 ;;9002226.02101,"1840,C0974 ",.01)
 ;;C0974
 ;;9002226.02101,"1840,C0974 ",.02)
 ;;C0974
 ;;9002226.02101,"1840,C0975 ",.01)
 ;;C0975
 ;;9002226.02101,"1840,C0975 ",.02)
 ;;C0975
 ;;9002226.02101,"1840,C1211 ",.01)
 ;;C1211
 ;;9002226.02101,"1840,C1211 ",.02)
 ;;C1211
 ;;9002226.02101,"1840,C1212 ",.01)
 ;;C1212
 ;;9002226.02101,"1840,C1212 ",.02)
 ;;C1212
 ;
OTHER ; OTHER ROUTINES
 Q