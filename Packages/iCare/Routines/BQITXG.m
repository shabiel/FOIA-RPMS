BQITXG ;PRXM/HC/ALA-CREATED BY ^ATXSTX ON SEP 06, 2006;
 ;;2.1;ICARE MANAGEMENT SYSTEM;;Feb 07, 2011
 ;;BGP CMS PCI-PTCA PROCEDURES
 ;
 ; This routine loads Taxonomy BGP CMS PCI-PTCA PROCEDURES
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
 ;;21,"36.01 ")
 ;;1
 ;;21,"36.02 ")
 ;;2
 ;;21,"36.05 ")
 ;;3
 ;;21,"36.06 ")
 ;;4
 ;;21,"36.09 ")
 ;;5
 ;;9002226,563,.01)
 ;;BGP CMS PCI-PTCA PROCEDURES
 ;;9002226,563,.02)
 ;;BGP CMS PCI-PTCA PROCEDURES
 ;;9002226,563,.04)
 ;;n
 ;;9002226,563,.06)
 ;;@
 ;;9002226,563,.08)
 ;;0
 ;;9002226,563,.09)
 ;;3060503
 ;;9002226,563,.11)
 ;;@
 ;;9002226,563,.12)
 ;;255
 ;;9002226,563,.13)
 ;;1
 ;;9002226,563,.14)
 ;;@
 ;;9002226,563,.15)
 ;;80.1
 ;;9002226,563,.16)
 ;;@
 ;;9002226,563,.17)
 ;;@
 ;;9002226,563,3101)
 ;;@
 ;;9002226.02101,"563,36.01 ",.01)
 ;;36.01
 ;;9002226.02101,"563,36.01 ",.02)
 ;;36.01
 ;;9002226.02101,"563,36.02 ",.01)
 ;;36.02
 ;;9002226.02101,"563,36.02 ",.02)
 ;;36.02
 ;;9002226.02101,"563,36.05 ",.01)
 ;;36.05
 ;;9002226.02101,"563,36.05 ",.02)
 ;;36.05
 ;;9002226.02101,"563,36.06 ",.01)
 ;;36.06
 ;;9002226.02101,"563,36.06 ",.02)
 ;;36.06
 ;;9002226.02101,"563,36.09 ",.01)
 ;;36.09
 ;;9002226.02101,"563,36.09 ",.02)
 ;;36.09
 ;
OTHER ; OTHER ROUTINES
 Q