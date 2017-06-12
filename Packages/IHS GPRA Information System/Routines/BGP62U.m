BGP62U ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 11, 2016;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;;BGP FOBT LOINC CODES
 ;
 ; This routine loads Taxonomy BGP FOBT LOINC CODES
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
 ;;21,"12503-9 ")
 ;;1
 ;;21,"12504-7 ")
 ;;2
 ;;21,"14563-1 ")
 ;;3
 ;;21,"14564-9 ")
 ;;4
 ;;21,"14565-6 ")
 ;;5
 ;;21,"2335-8 ")
 ;;6
 ;;21,"27396-1 ")
 ;;7
 ;;21,"27401-9 ")
 ;;8
 ;;21,"27925-7 ")
 ;;9
 ;;21,"27926-5 ")
 ;;10
 ;;21,"29771-3 ")
 ;;11
 ;;21,"42912-6 ")
 ;;16
 ;;21,"42913-4 ")
 ;;17
 ;;21,"50196-5 ")
 ;;18
 ;;21,"56490-6 ")
 ;;12
 ;;21,"56491-4 ")
 ;;13
 ;;21,"57803-9 ")
 ;;19
 ;;21,"57905-2 ")
 ;;14
 ;;21,"58453-2 ")
 ;;15
 ;;9002226,209,.01)
 ;;BGP FOBT LOINC CODES
 ;;9002226,209,.02)
 ;;@
 ;;9002226,209,.04)
 ;;n
 ;;9002226,209,.06)
 ;;@
 ;;9002226,209,.08)
 ;;@
 ;;9002226,209,.09)
 ;;@
 ;;9002226,209,.11)
 ;;@
 ;;9002226,209,.12)
 ;;@
 ;;9002226,209,.13)
 ;;1
 ;;9002226,209,.14)
 ;;FIHS
 ;;9002226,209,.15)
 ;;95.3
 ;;9002226,209,.16)
 ;;@
 ;;9002226,209,.17)
 ;;@
 ;;9002226,209,3101)
 ;;@
 ;;9002226.02101,"209,12503-9 ",.01)
 ;;12503-9
 ;;9002226.02101,"209,12503-9 ",.02)
 ;;12503-9
 ;;9002226.02101,"209,12504-7 ",.01)
 ;;12504-7
 ;;9002226.02101,"209,12504-7 ",.02)
 ;;12504-7
 ;;9002226.02101,"209,14563-1 ",.01)
 ;;14563-1
 ;;9002226.02101,"209,14563-1 ",.02)
 ;;14563-1
 ;;9002226.02101,"209,14564-9 ",.01)
 ;;14564-9
 ;;9002226.02101,"209,14564-9 ",.02)
 ;;14564-9
 ;;9002226.02101,"209,14565-6 ",.01)
 ;;14565-6
 ;;9002226.02101,"209,14565-6 ",.02)
 ;;14565-6
 ;;9002226.02101,"209,2335-8 ",.01)
 ;;2335-8
 ;;9002226.02101,"209,2335-8 ",.02)
 ;;2335-8
 ;;9002226.02101,"209,27396-1 ",.01)
 ;;27396-1
 ;;9002226.02101,"209,27396-1 ",.02)
 ;;27396-1
 ;;9002226.02101,"209,27401-9 ",.01)
 ;;27401-9
 ;;9002226.02101,"209,27401-9 ",.02)
 ;;27401-9
 ;;9002226.02101,"209,27925-7 ",.01)
 ;;27925-7
 ;;9002226.02101,"209,27925-7 ",.02)
 ;;27925-7
 ;;9002226.02101,"209,27926-5 ",.01)
 ;;27926-5
 ;;9002226.02101,"209,27926-5 ",.02)
 ;;27926-5
 ;;9002226.02101,"209,29771-3 ",.01)
 ;;29771-3
 ;;9002226.02101,"209,29771-3 ",.02)
 ;;29771-3
 ;;9002226.02101,"209,42912-6 ",.01)
 ;;42912-6
 ;;9002226.02101,"209,42912-6 ",.02)
 ;;42912-6
 ;;9002226.02101,"209,42913-4 ",.01)
 ;;42913-4
 ;;9002226.02101,"209,42913-4 ",.02)
 ;;42913-4
 ;;9002226.02101,"209,50196-5 ",.01)
 ;;50196-5
 ;;9002226.02101,"209,50196-5 ",.02)
 ;;50195-5
 ;;9002226.02101,"209,56490-6 ",.01)
 ;;56490-6
 ;;9002226.02101,"209,56490-6 ",.02)
 ;;56490-6
 ;;9002226.02101,"209,56491-4 ",.01)
 ;;56491-4
 ;;9002226.02101,"209,56491-4 ",.02)
 ;;56491-4
 ;;9002226.02101,"209,57803-9 ",.01)
 ;;57803-9
 ;;9002226.02101,"209,57803-9 ",.02)
 ;;57803-9
 ;;9002226.02101,"209,57905-2 ",.01)
 ;;57905-2
 ;;9002226.02101,"209,57905-2 ",.02)
 ;;57905-2
 ;;9002226.02101,"209,58453-2 ",.01)
 ;;58453-2
 ;;9002226.02101,"209,58453-2 ",.02)
 ;;58453-2
 ;;9002226.04101,"209,1",.01)
 ;;BGP
 ;
OTHER ; OTHER ROUTINES
 Q