BQILTXB ;GDIT/HS/ALA-CREATED BY ^ATXSTX ON AUG 14, 2012;
 ;;2.3;ICARE MANAGEMENT SYSTEM;**1**;Apr 18, 2012;Build 43
 ;;BQI SYPHILIS QUANT TEST LOINC
 ;
 ; This routine loads Taxonomy BQI SYPHILIS QUANT TEST LOINC
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
 ;;21,"13288-6 ")
 ;;1
 ;;21,"17724-6 ")
 ;;2
 ;;21,"17727-9 ")
 ;;3
 ;;21,"17728-7 ")
 ;;4
 ;;21,"26009-1 ")
 ;;5
 ;;21,"26465-5 ")
 ;;6
 ;;21,"2880-3 ")
 ;;7
 ;;21,"31146-4 ")
 ;;8
 ;;21,"31147-2 ")
 ;;9
 ;;21,"34382-2 ")
 ;;10
 ;;21,"47051-8 ")
 ;;11
 ;;21,"47063-3 ")
 ;;12
 ;;21,"47235-7 ")
 ;;13
 ;;21,"50690-7 ")
 ;;14
 ;;21,"51838-1 ")
 ;;15
 ;;21,"51839-9 ")
 ;;16
 ;;21,"805-2 ")
 ;;17
 ;;21,"806-0 ")
 ;;18
 ;;9002226,1953,.01)
 ;;BQI SYPHILIS QUANT TEST LOINC
 ;;9002226,1953,.02)
 ;;Syphilis Quantitative LOINCs
 ;;9002226,1953,.04)
 ;;@
 ;;9002226,1953,.06)
 ;;@
 ;;9002226,1953,.08)
 ;;0
 ;;9002226,1953,.09)
 ;;3110926
 ;;9002226,1953,.11)
 ;;@
 ;;9002226,1953,.12)
 ;;@
 ;;9002226,1953,.13)
 ;;1
 ;;9002226,1953,.14)
 ;;FIHS
 ;;9002226,1953,.15)
 ;;95.3
 ;;9002226,1953,.16)
 ;;@
 ;;9002226,1953,.17)
 ;;@
 ;;9002226,1953,3101)
 ;;@
 ;;9002226.02101,"1953,13288-6 ",.01)
 ;;13288-6
 ;;9002226.02101,"1953,13288-6 ",.02)
 ;;13288-6
 ;;9002226.02101,"1953,17724-6 ",.01)
 ;;17724-6
 ;;9002226.02101,"1953,17724-6 ",.02)
 ;;17724-6
 ;;9002226.02101,"1953,17727-9 ",.01)
 ;;17727-9
 ;;9002226.02101,"1953,17727-9 ",.02)
 ;;17727-9
 ;;9002226.02101,"1953,17728-7 ",.01)
 ;;17728-7
 ;;9002226.02101,"1953,17728-7 ",.02)
 ;;17728-7
 ;;9002226.02101,"1953,26009-1 ",.01)
 ;;26009-1
 ;;9002226.02101,"1953,26009-1 ",.02)
 ;;26009-1
 ;;9002226.02101,"1953,26465-5 ",.01)
 ;;26465-5
 ;;9002226.02101,"1953,26465-5 ",.02)
 ;;26465-5
 ;;9002226.02101,"1953,2880-3 ",.01)
 ;;2880-3
 ;;9002226.02101,"1953,2880-3 ",.02)
 ;;2880-3
 ;;9002226.02101,"1953,31146-4 ",.01)
 ;;31146-4
 ;;9002226.02101,"1953,31146-4 ",.02)
 ;;31146-4
 ;;9002226.02101,"1953,31147-2 ",.01)
 ;;31147-2
 ;;9002226.02101,"1953,31147-2 ",.02)
 ;;31147-2
 ;;9002226.02101,"1953,34382-2 ",.01)
 ;;34382-2
 ;;9002226.02101,"1953,34382-2 ",.02)
 ;;34382-2
 ;;9002226.02101,"1953,47051-8 ",.01)
 ;;47051-8
 ;;9002226.02101,"1953,47051-8 ",.02)
 ;;47051-8
 ;;9002226.02101,"1953,47063-3 ",.01)
 ;;47063-3
 ;;9002226.02101,"1953,47063-3 ",.02)
 ;;47063-3
 ;;9002226.02101,"1953,47235-7 ",.01)
 ;;47235-7
 ;;9002226.02101,"1953,47235-7 ",.02)
 ;;47235-7
 ;;9002226.02101,"1953,50690-7 ",.01)
 ;;50690-7
 ;;9002226.02101,"1953,50690-7 ",.02)
 ;;50690-7
 ;;9002226.02101,"1953,51838-1 ",.01)
 ;;51838-1
 ;;9002226.02101,"1953,51838-1 ",.02)
 ;;51838-1
 ;;9002226.02101,"1953,51839-9 ",.01)
 ;;51839-9
 ;;9002226.02101,"1953,51839-9 ",.02)
 ;;51839-9
 ;;9002226.02101,"1953,805-2 ",.01)
 ;;805-2
 ;;9002226.02101,"1953,805-2 ",.02)
 ;;805-2
 ;;9002226.02101,"1953,806-0 ",.01)
 ;;806-0
 ;;9002226.02101,"1953,806-0 ",.02)
 ;;806-0
 ;
OTHER ; OTHER ROUTINES
 Q