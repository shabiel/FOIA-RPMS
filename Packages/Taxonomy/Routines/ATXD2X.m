ATXD2X ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 28, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BGP IPV/DV COUNSELING ICDS
 ;
 ; This routine loads Taxonomy BGP IPV/DV COUNSELING ICDS
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
 ;;21,"V61.11 ")
 ;;1
 ;;21,"Z69.11 ")
 ;;2
 ;;9002226,409,.01)
 ;;BGP IPV/DV COUNSELING ICDS
 ;;9002226,409,.02)
 ;;IPV/DV COUNSELING ICDS
 ;;9002226,409,.04)
 ;;n
 ;;9002226,409,.06)
 ;;@
 ;;9002226,409,.08)
 ;;0
 ;;9002226,409,.09)
 ;;3121218
 ;;9002226,409,.11)
 ;;@
 ;;9002226,409,.12)
 ;;31
 ;;9002226,409,.13)
 ;;1
 ;;9002226,409,.14)
 ;;@
 ;;9002226,409,.15)
 ;;80
 ;;9002226,409,.16)
 ;;@
 ;;9002226,409,.17)
 ;;@
 ;;9002226,409,3101)
 ;;@
 ;;9002226.02101,"409,V61.11 ",.01)
 ;;V61.11 
 ;;9002226.02101,"409,V61.11 ",.02)
 ;;V61.11 
 ;;9002226.02101,"409,V61.11 ",.03)
 ;;1
 ;;9002226.02101,"409,Z69.11 ",.01)
 ;;Z69.11
 ;;9002226.02101,"409,Z69.11 ",.02)
 ;;Z69.11
 ;;9002226.02101,"409,Z69.11 ",.03)
 ;;30
 ;;9002226.04101,"409,1",.01)
 ;;BGP
 ;
OTHER ; OTHER ROUTINES
 Q