BGP32L ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 06, 2012;
 ;;13.0;IHS CLINICAL REPORTING;;NOV 20, 2012;Build 81
 ;;BGP TRIGLYCERIDE LOINC CODES
 ;
 ; This routine loads Taxonomy BGP TRIGLYCERIDE LOINC CODES
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
 ;;21,"12951-0 ")
 ;;1
 ;;21,"14927-8 ")
 ;;2
 ;;21,"1644-4 ")
 ;;3
 ;;21,"17081-1 ")
 ;;4
 ;;21,"2571-8 ")
 ;;6
 ;;21,"28554-4 ")
 ;;7
 ;;21,"3043-7 ")
 ;;8
 ;;21,"3048-6 ")
 ;;9
 ;;21,"3049-4 ")
 ;;10
 ;;21,"30524-3 ")
 ;;11
 ;;21,"35217-9 ")
 ;;13
 ;;21,"47210-0 ")
 ;;14
 ;;9002226,298,.01)
 ;;BGP TRIGLYCERIDE LOINC CODES
 ;;9002226,298,.02)
 ;;@
 ;;9002226,298,.04)
 ;;n
 ;;9002226,298,.06)
 ;;@
 ;;9002226,298,.08)
 ;;@
 ;;9002226,298,.09)
 ;;@
 ;;9002226,298,.11)
 ;;@
 ;;9002226,298,.12)
 ;;@
 ;;9002226,298,.13)
 ;;1
 ;;9002226,298,.14)
 ;;FIHS
 ;;9002226,298,.15)
 ;;95.3
 ;;9002226,298,.16)
 ;;@
 ;;9002226,298,.17)
 ;;@
 ;;9002226,298,3101)
 ;;@
 ;;9002226.02101,"298,12951-0 ",.01)
 ;;12951-0
 ;;9002226.02101,"298,12951-0 ",.02)
 ;;12951-0
 ;;9002226.02101,"298,14927-8 ",.01)
 ;;14927-8
 ;;9002226.02101,"298,14927-8 ",.02)
 ;;14927-8
 ;;9002226.02101,"298,1644-4 ",.01)
 ;;1644-4
 ;;9002226.02101,"298,1644-4 ",.02)
 ;;1644-4
 ;;9002226.02101,"298,17081-1 ",.01)
 ;;17081-1
 ;;9002226.02101,"298,17081-1 ",.02)
 ;;17081-1
 ;;9002226.02101,"298,2571-8 ",.01)
 ;;2571-8
 ;;9002226.02101,"298,2571-8 ",.02)
 ;;2571-8
 ;;9002226.02101,"298,28554-4 ",.01)
 ;;28554-4
 ;;9002226.02101,"298,28554-4 ",.02)
 ;;28554-4
 ;;9002226.02101,"298,3043-7 ",.01)
 ;;3043-7
 ;;9002226.02101,"298,3043-7 ",.02)
 ;;3043-7
 ;;9002226.02101,"298,3048-6 ",.01)
 ;;3048-6
 ;;9002226.02101,"298,3048-6 ",.02)
 ;;3048-6
 ;;9002226.02101,"298,3049-4 ",.01)
 ;;3049-4
 ;;9002226.02101,"298,3049-4 ",.02)
 ;;3049-4
 ;;9002226.02101,"298,30524-3 ",.01)
 ;;30524-3
 ;;9002226.02101,"298,30524-3 ",.02)
 ;;30524-3
 ;;9002226.02101,"298,35217-9 ",.01)
 ;;35217-9
 ;;9002226.02101,"298,35217-9 ",.02)
 ;;35217-9
 ;;9002226.02101,"298,47210-0 ",.01)
 ;;47210-0
 ;;9002226.02101,"298,47210-0 ",.02)
 ;;47210-0
 ;
OTHER ; OTHER ROUTINES
 Q