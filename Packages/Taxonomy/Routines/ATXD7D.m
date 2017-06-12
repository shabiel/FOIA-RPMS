ATXD7D ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 12, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BTPW OB GYN CONSULT DXS
 ;
 ; This routine loads Taxonomy BTPW OB GYN CONSULT DXS
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
 ;;21,"V72.31 ")
 ;;1
 ;;21,"Z01.411 ")
 ;;2
 ;;21,"Z01.419 ")
 ;;3
 ;;9002226,1431,.01)
 ;;BTPW OB GYN CONSULT DXS
 ;;9002226,1431,.02)
 ;;@
 ;;9002226,1431,.04)
 ;;n
 ;;9002226,1431,.06)
 ;;@
 ;;9002226,1431,.08)
 ;;@
 ;;9002226,1431,.09)
 ;;3131112
 ;;9002226,1431,.11)
 ;;@
 ;;9002226,1431,.12)
 ;;31
 ;;9002226,1431,.13)
 ;;1
 ;;9002226,1431,.14)
 ;;@
 ;;9002226,1431,.15)
 ;;80
 ;;9002226,1431,.16)
 ;;@
 ;;9002226,1431,.17)
 ;;@
 ;;9002226,1431,3101)
 ;;@
 ;;9002226.02101,"1431,V72.31 ",.01)
 ;;V72.31
 ;;9002226.02101,"1431,V72.31 ",.02)
 ;;V72.31
 ;;9002226.02101,"1431,V72.31 ",.03)
 ;;1
 ;;9002226.02101,"1431,Z01.411 ",.01)
 ;;Z01.411 
 ;;9002226.02101,"1431,Z01.411 ",.02)
 ;;Z01.411 
 ;;9002226.02101,"1431,Z01.411 ",.03)
 ;;30
 ;;9002226.02101,"1431,Z01.419 ",.01)
 ;;Z01.419 
 ;;9002226.02101,"1431,Z01.419 ",.02)
 ;;Z01.419 
 ;;9002226.02101,"1431,Z01.419 ",.03)
 ;;30
 ;
OTHER ; OTHER ROUTINES
 Q