BQIATXF ;PRXM/HC/ALA-CREATED BY ^ATXSTX ON SEP 19, 2006;
 ;;2.1;ICARE MANAGEMENT SYSTEM;;Feb 07, 2011
 ;;BQI KNOWN CVD-MULT CPTS
 ;
 ; This routine loads Taxonomy BQI KNOWN CVD-MULT CPTS
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
 ;;21,"0001T ")
 ;;1
 ;;21,"0002T ")
 ;;2
 ;;21,"0033T ")
 ;;3
 ;;21,"0034T ")
 ;;4
 ;;21,"0035T ")
 ;;5
 ;;21,"0036T ")
 ;;6
 ;;21,"0037T ")
 ;;7
 ;;21,"33877 ")
 ;;8
 ;;21,"34800 ")
 ;;9
 ;;21,"34802 ")
 ;;10
 ;;21,"34804 ")
 ;;11
 ;;21,"34830 ")
 ;;12
 ;;21,"34831 ")
 ;;13
 ;;21,"34832 ")
 ;;14
 ;;9002226,574,.01)
 ;;BQI KNOWN CVD-MULT CPTS
 ;;9002226,574,.02)
 ;;@
 ;;9002226,574,.04)
 ;;@
 ;;9002226,574,.06)
 ;;@
 ;;9002226,574,.08)
 ;;0
 ;;9002226,574,.09)
 ;;3060525
 ;;9002226,574,.11)
 ;;@
 ;;9002226,574,.12)
 ;;255
 ;;9002226,574,.13)
 ;;0
 ;;9002226,574,.14)
 ;;@
 ;;9002226,574,.15)
 ;;81
 ;;9002226,574,.16)
 ;;@
 ;;9002226,574,.17)
 ;;@
 ;;9002226,574,3101)
 ;;@
 ;;9002226.02101,"574,0001T ",.01)
 ;;0001T 
 ;;9002226.02101,"574,0001T ",.02)
 ;;0001T 
 ;;9002226.02101,"574,0002T ",.01)
 ;;0002T 
 ;;9002226.02101,"574,0002T ",.02)
 ;;0002T 
 ;;9002226.02101,"574,0033T ",.01)
 ;;0033T 
 ;;9002226.02101,"574,0033T ",.02)
 ;;0033T 
 ;;9002226.02101,"574,0034T ",.01)
 ;;0034T 
 ;;9002226.02101,"574,0034T ",.02)
 ;;0034T 
 ;;9002226.02101,"574,0035T ",.01)
 ;;0035T 
 ;;9002226.02101,"574,0035T ",.02)
 ;;0035T 
 ;;9002226.02101,"574,0036T ",.01)
 ;;0036T 
 ;;9002226.02101,"574,0036T ",.02)
 ;;0036T 
 ;;9002226.02101,"574,0037T ",.01)
 ;;0037T 
 ;;9002226.02101,"574,0037T ",.02)
 ;;0037T 
 ;;9002226.02101,"574,33877 ",.01)
 ;;33877
 ;;9002226.02101,"574,33877 ",.02)
 ;;33877
 ;;9002226.02101,"574,34800 ",.01)
 ;;34800 
 ;;9002226.02101,"574,34800 ",.02)
 ;;34800 
 ;;9002226.02101,"574,34802 ",.01)
 ;;34802
 ;;9002226.02101,"574,34802 ",.02)
 ;;34802
 ;;9002226.02101,"574,34804 ",.01)
 ;;34804
 ;;9002226.02101,"574,34804 ",.02)
 ;;34804
 ;;9002226.02101,"574,34830 ",.01)
 ;;34830 
 ;;9002226.02101,"574,34830 ",.02)
 ;;34830 
 ;;9002226.02101,"574,34831 ",.01)
 ;;34831
 ;;9002226.02101,"574,34831 ",.02)
 ;;34831
 ;;9002226.02101,"574,34832 ",.01)
 ;;34832
 ;;9002226.02101,"574,34832 ",.02)
 ;;34832
 ;
OTHER ; OTHER ROUTINES
 Q