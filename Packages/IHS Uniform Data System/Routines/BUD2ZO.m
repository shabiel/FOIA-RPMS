BUD2ZO ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON DEC 31, 2012;
 ;;7.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 23, 2013;Build 31
 ;;BUD COLO CPTS
 ;
 ; This routine loads Taxonomy BUD COLO CPTS
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
 ;;21,"44388 ")
 ;;1
 ;;21,"45355 ")
 ;;2
 ;;9002226,1758,.01)
 ;;BUD COLO CPTS
 ;;9002226,1758,.02)
 ;;@
 ;;9002226,1758,.04)
 ;;@
 ;;9002226,1758,.06)
 ;;@
 ;;9002226,1758,.08)
 ;;0
 ;;9002226,1758,.09)
 ;;3121231
 ;;9002226,1758,.11)
 ;;@
 ;;9002226,1758,.12)
 ;;455
 ;;9002226,1758,.13)
 ;;1
 ;;9002226,1758,.14)
 ;;@
 ;;9002226,1758,.15)
 ;;81
 ;;9002226,1758,.16)
 ;;@
 ;;9002226,1758,.17)
 ;;@
 ;;9002226,1758,3101)
 ;;@
 ;;9002226.02101,"1758,44388 ",.01)
 ;;44388 
 ;;9002226.02101,"1758,44388 ",.02)
 ;;44397 
 ;;9002226.02101,"1758,45355 ",.01)
 ;;45355 
 ;;9002226.02101,"1758,45355 ",.02)
 ;;45392 
 ;
OTHER ; OTHER ROUTINES
 Q