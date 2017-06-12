ATXF3J ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 08, 2016;
 ;;5.1;TAXONOMY;**14**;FEB 04, 1997;Build 18
 ;;BGP UNI RIGHT MASTECTOMY PROCS
 ;
 ; This routine loads Taxonomy BGP UNI RIGHT MASTECTOMY PROCS
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
 ;;21,"07T50ZZ ")
 ;;1
 ;;21,"07T80ZZ ")
 ;;2
 ;;21,"0HBT0ZZ ")
 ;;3
 ;;21,"0HCT0ZZ ")
 ;;4
 ;;21,"0HTT0ZZ ")
 ;;5
 ;;9002226,2105,.01)
 ;;BGP UNI RIGHT MASTECTOMY PROCS
 ;;9002226,2105,.02)
 ;;@
 ;;9002226,2105,.04)
 ;;@
 ;;9002226,2105,.06)
 ;;@
 ;;9002226,2105,.08)
 ;;0
 ;;9002226,2105,.09)
 ;;3160105
 ;;9002226,2105,.11)
 ;;@
 ;;9002226,2105,.12)
 ;;255
 ;;9002226,2105,.13)
 ;;1
 ;;9002226,2105,.14)
 ;;@
 ;;9002226,2105,.15)
 ;;80.1
 ;;9002226,2105,.16)
 ;;@
 ;;9002226,2105,.17)
 ;;@
 ;;9002226,2105,3101)
 ;;@
 ;;9002226.02101,"2105,07T50ZZ ",.01)
 ;;07T50ZZ 
 ;;9002226.02101,"2105,07T50ZZ ",.02)
 ;;07T50ZZ 
 ;;9002226.02101,"2105,07T50ZZ ",.03)
 ;;31
 ;;9002226.02101,"2105,07T80ZZ ",.01)
 ;;07T80ZZ 
 ;;9002226.02101,"2105,07T80ZZ ",.02)
 ;;07T80ZZ 
 ;;9002226.02101,"2105,07T80ZZ ",.03)
 ;;31
 ;;9002226.02101,"2105,0HBT0ZZ ",.01)
 ;;0HBT0ZZ 
 ;;9002226.02101,"2105,0HBT0ZZ ",.02)
 ;;0HBT0ZZ 
 ;;9002226.02101,"2105,0HBT0ZZ ",.03)
 ;;31
 ;;9002226.02101,"2105,0HCT0ZZ ",.01)
 ;;0HCT0ZZ 
 ;;9002226.02101,"2105,0HCT0ZZ ",.02)
 ;;0HCT0ZZ 
 ;;9002226.02101,"2105,0HCT0ZZ ",.03)
 ;;31
 ;;9002226.02101,"2105,0HTT0ZZ ",.01)
 ;;0HTT0ZZ 
 ;;9002226.02101,"2105,0HTT0ZZ ",.02)
 ;;0HTT0ZZ 
 ;;9002226.02101,"2105,0HTT0ZZ ",.03)
 ;;31
 ;
OTHER ; OTHER ROUTINES
 Q