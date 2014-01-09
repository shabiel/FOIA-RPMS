BQIKTXB ;GDIT/HS/ALA-CREATED BY ^ATXSTX ON AUG 14, 2012;
 ;;2.3;ICARE MANAGEMENT SYSTEM;**1**;Apr 18, 2012;Build 43
 ;;BQI HIV QUANT NUC ACID LOINC
 ;
 ; This routine loads Taxonomy BQI HIV QUANT NUC ACID LOINC
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
 ;;21,"10351-5 ")
 ;;1
 ;;21,"20447-9 ")
 ;;2
 ;;21,"21008-8 ")
 ;;3
 ;;21,"23876-6 ")
 ;;4
 ;;21,"25836-8 ")
 ;;5
 ;;21,"29539-4 ")
 ;;6
 ;;21,"29541-0 ")
 ;;7
 ;;21,"41497-9 ")
 ;;8
 ;;21,"41498-7 ")
 ;;9
 ;;21,"41513-3 ")
 ;;10
 ;;21,"41514-1 ")
 ;;11
 ;;21,"41515-8 ")
 ;;12
 ;;21,"41516-6 ")
 ;;13
 ;;21,"48510-2 ")
 ;;14
 ;;21,"48511-0 ")
 ;;15
 ;;21,"48551-6 ")
 ;;16
 ;;21,"48552-4 ")
 ;;17
 ;;21,"49890-7 ")
 ;;18
 ;;9002226,1934,.01)
 ;;BQI HIV QUANT NUC ACID LOINC
 ;;9002226,1934,.02)
 ;;Quantitative Nucleic Acid
 ;;9002226,1934,.04)
 ;;@
 ;;9002226,1934,.06)
 ;;@
 ;;9002226,1934,.08)
 ;;0
 ;;9002226,1934,.09)
 ;;3110926
 ;;9002226,1934,.11)
 ;;@
 ;;9002226,1934,.12)
 ;;@
 ;;9002226,1934,.13)
 ;;1
 ;;9002226,1934,.14)
 ;;FIHS
 ;;9002226,1934,.15)
 ;;95.3
 ;;9002226,1934,.16)
 ;;@
 ;;9002226,1934,.17)
 ;;@
 ;;9002226,1934,3101)
 ;;@
 ;;9002226.02101,"1934,10351-5 ",.01)
 ;;10351-5
 ;;9002226.02101,"1934,10351-5 ",.02)
 ;;10351-5
 ;;9002226.02101,"1934,20447-9 ",.01)
 ;;20447-9
 ;;9002226.02101,"1934,20447-9 ",.02)
 ;;20447-9
 ;;9002226.02101,"1934,21008-8 ",.01)
 ;;21008-8
 ;;9002226.02101,"1934,21008-8 ",.02)
 ;;21008-8
 ;;9002226.02101,"1934,23876-6 ",.01)
 ;;23876-6
 ;;9002226.02101,"1934,23876-6 ",.02)
 ;;23876-6
 ;;9002226.02101,"1934,25836-8 ",.01)
 ;;25836-8
 ;;9002226.02101,"1934,25836-8 ",.02)
 ;;25836-8
 ;;9002226.02101,"1934,29539-4 ",.01)
 ;;29539-4
 ;;9002226.02101,"1934,29539-4 ",.02)
 ;;29539-4
 ;;9002226.02101,"1934,29541-0 ",.01)
 ;;29541-0
 ;;9002226.02101,"1934,29541-0 ",.02)
 ;;29541-0
 ;;9002226.02101,"1934,41497-9 ",.01)
 ;;41497-9
 ;;9002226.02101,"1934,41497-9 ",.02)
 ;;41497-9
 ;;9002226.02101,"1934,41498-7 ",.01)
 ;;41498-7
 ;;9002226.02101,"1934,41498-7 ",.02)
 ;;41498-7
 ;;9002226.02101,"1934,41513-3 ",.01)
 ;;41513-3
 ;;9002226.02101,"1934,41513-3 ",.02)
 ;;41513-3
 ;;9002226.02101,"1934,41514-1 ",.01)
 ;;41514-1
 ;;9002226.02101,"1934,41514-1 ",.02)
 ;;41514-1
 ;;9002226.02101,"1934,41515-8 ",.01)
 ;;41515-8
 ;;9002226.02101,"1934,41515-8 ",.02)
 ;;41515-8
 ;;9002226.02101,"1934,41516-6 ",.01)
 ;;41516-6
 ;;9002226.02101,"1934,41516-6 ",.02)
 ;;41516-6
 ;;9002226.02101,"1934,48510-2 ",.01)
 ;;48510-2
 ;;9002226.02101,"1934,48510-2 ",.02)
 ;;48510-2
 ;;9002226.02101,"1934,48511-0 ",.01)
 ;;48511-0
 ;;9002226.02101,"1934,48511-0 ",.02)
 ;;48511-0
 ;;9002226.02101,"1934,48551-6 ",.01)
 ;;48551-6
 ;;9002226.02101,"1934,48551-6 ",.02)
 ;;48551-6
 ;;9002226.02101,"1934,48552-4 ",.01)
 ;;48552-4
 ;;9002226.02101,"1934,48552-4 ",.02)
 ;;48552-4
 ;;9002226.02101,"1934,49890-7 ",.01)
 ;;49890-7
 ;;9002226.02101,"1934,49890-7 ",.02)
 ;;49890-7
 ;
OTHER ; OTHER ROUTINES
 Q