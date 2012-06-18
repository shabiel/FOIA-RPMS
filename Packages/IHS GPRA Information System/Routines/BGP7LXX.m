BGP7LXX ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 10, 2006 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;;BGP HDL LOINC CODES
 ;
 ; This routine loads Taxonomy BGP HDL LOINC CODES
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
 ;;21,"12772-0 ")
 ;;4
 ;;21,"14646-4 ")
 ;;5
 ;;21,"18263-4 ")
 ;;1
 ;;21,"2085-9 ")
 ;;2
 ;;21,"2086-7 ")
 ;;3
 ;;21,"35197-3 ")
 ;;6
 ;;9002226,328,.01)
 ;;BGP HDL LOINC CODES
 ;;9002226,328,.02)
 ;;@
 ;;9002226,328,.04)
 ;;n
 ;;9002226,328,.06)
 ;;@
 ;;9002226,328,.08)
 ;;@
 ;;9002226,328,.09)
 ;;@
 ;;9002226,328,.11)
 ;;@
 ;;9002226,328,.12)
 ;;@
 ;;9002226,328,.13)
 ;;1
 ;;9002226,328,.14)
 ;;FIHS
 ;;9002226,328,.15)
 ;;95.3
 ;;9002226,328,.16)
 ;;@
 ;;9002226,328,.17)
 ;;@
 ;;9002226,328,3101)
 ;;@
 ;;9002226.02101,"328,12772-0 ",.01)
 ;;12772-0
 ;;9002226.02101,"328,12772-0 ",.02)
 ;;12772-0
 ;;9002226.02101,"328,14646-4 ",.01)
 ;;14646-4
 ;;9002226.02101,"328,14646-4 ",.02)
 ;;14646-4
 ;;9002226.02101,"328,18263-4 ",.01)
 ;;18263-4
 ;;9002226.02101,"328,18263-4 ",.02)
 ;;18263-4
 ;;9002226.02101,"328,2085-9 ",.01)
 ;;2085-9
 ;;9002226.02101,"328,2085-9 ",.02)
 ;;2085-9
 ;;9002226.02101,"328,2086-7 ",.01)
 ;;2086-7
 ;;9002226.02101,"328,2086-7 ",.02)
 ;;2086-7
 ;;9002226.02101,"328,35197-3 ",.01)
 ;;35197-3
 ;;9002226.02101,"328,35197-3 ",.02)
 ;;35197-3
 ;
OTHER ; OTHER ROUTINES
 Q