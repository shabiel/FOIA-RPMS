ATXO5U ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 01, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BQI PCI-PTCA PROCEDURES
 ;
 ; This routine loads Taxonomy BQI PCI-PTCA PROCEDURES
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
 ;;21,"021K0Z8 ")
 ;;6
 ;;21,"021K0Z9 ")
 ;;7
 ;;21,"021K0ZC ")
 ;;8
 ;;21,"021K0ZW ")
 ;;9
 ;;21,"021K4Z8 ")
 ;;10
 ;;21,"021K4Z9 ")
 ;;11
 ;;21,"021K4ZC ")
 ;;12
 ;;21,"021K4ZW ")
 ;;13
 ;;21,"021L0Z8 ")
 ;;14
 ;;21,"021L0Z9 ")
 ;;15
 ;;21,"021L0ZC ")
 ;;16
 ;;21,"021L4Z8 ")
 ;;17
 ;;21,"021L4Z9 ")
 ;;18
 ;;21,"021L4ZC ")
 ;;19
 ;;21,"02C03ZZ ")
 ;;20
 ;;21,"02C04ZZ ")
 ;;21
 ;;21,"02C13ZZ ")
 ;;22
 ;;21,"02C14ZZ ")
 ;;23
 ;;21,"02C23ZZ ")
 ;;24
 ;;21,"02C24ZZ ")
 ;;25
 ;;21,"02C33ZZ ")
 ;;26
 ;;21,"02C34ZZ ")
 ;;27
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
 ;;9002226,1851,.01)
 ;;BQI PCI-PTCA PROCEDURES
 ;;9002226,1851,.02)
 ;;CVD Procedures
 ;;9002226,1851,.04)
 ;;n
 ;;9002226,1851,.06)
 ;;@
 ;;9002226,1851,.08)
 ;;0
 ;;9002226,1851,.09)
 ;;3140401
 ;;9002226,1851,.11)
 ;;@
 ;;9002226,1851,.12)
 ;;255
 ;;9002226,1851,.13)
 ;;1
 ;;9002226,1851,.14)
 ;;@
 ;;9002226,1851,.15)
 ;;80.1
 ;;9002226,1851,.16)
 ;;@
 ;;9002226,1851,.17)
 ;;@
 ;;9002226,1851,3101)
 ;;@
 ;;9002226.01101,"1851,1",.01)
 ;;Used in iCare for CVD Known Diagnostic Tag.
 ;;9002226.02101,"1851,021K0Z8 ",.01)
 ;;021K0Z8 
 ;;9002226.02101,"1851,021K0Z8 ",.02)
 ;;021K0Z8 
 ;;9002226.02101,"1851,021K0Z8 ",.03)
 ;;31
 ;;9002226.02101,"1851,021K0Z9 ",.01)
 ;;021K0Z9 
 ;;9002226.02101,"1851,021K0Z9 ",.02)
 ;;021K0Z9 
 ;;9002226.02101,"1851,021K0Z9 ",.03)
 ;;31
 ;;9002226.02101,"1851,021K0ZC ",.01)
 ;;021K0ZC 
 ;;9002226.02101,"1851,021K0ZC ",.02)
 ;;021K0ZC 
 ;;9002226.02101,"1851,021K0ZC ",.03)
 ;;31
 ;;9002226.02101,"1851,021K0ZW ",.01)
 ;;021K0ZW 
 ;;9002226.02101,"1851,021K0ZW ",.02)
 ;;021K0ZW 
 ;;9002226.02101,"1851,021K0ZW ",.03)
 ;;31
 ;;9002226.02101,"1851,021K4Z8 ",.01)
 ;;021K4Z8 
 ;;9002226.02101,"1851,021K4Z8 ",.02)
 ;;021K4Z8 
 ;;9002226.02101,"1851,021K4Z8 ",.03)
 ;;31
 ;;9002226.02101,"1851,021K4Z9 ",.01)
 ;;021K4Z9 
 ;;9002226.02101,"1851,021K4Z9 ",.02)
 ;;021K4Z9 
 ;;9002226.02101,"1851,021K4Z9 ",.03)
 ;;31
 ;;9002226.02101,"1851,021K4ZC ",.01)
 ;;021K4ZC 
 ;;9002226.02101,"1851,021K4ZC ",.02)
 ;;021K4ZC 
 ;;9002226.02101,"1851,021K4ZC ",.03)
 ;;31
 ;;9002226.02101,"1851,021K4ZW ",.01)
 ;;021K4ZW 
 ;;9002226.02101,"1851,021K4ZW ",.02)
 ;;021K4ZW 
 ;;9002226.02101,"1851,021K4ZW ",.03)
 ;;31
 ;;9002226.02101,"1851,021L0Z8 ",.01)
 ;;021L0Z8 
 ;;9002226.02101,"1851,021L0Z8 ",.02)
 ;;021L0Z8 
 ;;9002226.02101,"1851,021L0Z8 ",.03)
 ;;31
 ;;9002226.02101,"1851,021L0Z9 ",.01)
 ;;021L0Z9 
 ;;9002226.02101,"1851,021L0Z9 ",.02)
 ;;021L0Z9 
 ;;9002226.02101,"1851,021L0Z9 ",.03)
 ;;31
 ;;9002226.02101,"1851,021L0ZC ",.01)
 ;;021L0ZC 
 ;;9002226.02101,"1851,021L0ZC ",.02)
 ;;021L0ZC 
 ;;9002226.02101,"1851,021L0ZC ",.03)
 ;;31
 ;;9002226.02101,"1851,021L4Z8 ",.01)
 ;;021L4Z8 
 ;;9002226.02101,"1851,021L4Z8 ",.02)
 ;;021L4Z8 
 ;;9002226.02101,"1851,021L4Z8 ",.03)
 ;;31
 ;;9002226.02101,"1851,021L4Z9 ",.01)
 ;;021L4Z9 
 ;;9002226.02101,"1851,021L4Z9 ",.02)
 ;;021L4Z9 
 ;;9002226.02101,"1851,021L4Z9 ",.03)
 ;;31
 ;;9002226.02101,"1851,021L4ZC ",.01)
 ;;021L4ZC 
 ;;9002226.02101,"1851,021L4ZC ",.02)
 ;;021L4ZC 
 ;;9002226.02101,"1851,021L4ZC ",.03)
 ;;31
 ;;9002226.02101,"1851,02C03ZZ ",.01)
 ;;02C03ZZ 
 ;;9002226.02101,"1851,02C03ZZ ",.02)
 ;;02C03ZZ 
 ;;9002226.02101,"1851,02C03ZZ ",.03)
 ;;31
 ;;9002226.02101,"1851,02C04ZZ ",.01)
 ;;02C04ZZ 
 ;;9002226.02101,"1851,02C04ZZ ",.02)
 ;;02C04ZZ 
 ;;9002226.02101,"1851,02C04ZZ ",.03)
 ;;31
 ;;9002226.02101,"1851,02C13ZZ ",.01)
 ;;02C13ZZ 
 ;;9002226.02101,"1851,02C13ZZ ",.02)
 ;;02C13ZZ 
 ;;9002226.02101,"1851,02C13ZZ ",.03)
 ;;31
 ;;9002226.02101,"1851,02C14ZZ ",.01)
 ;;02C14ZZ 
 ;;9002226.02101,"1851,02C14ZZ ",.02)
 ;;02C14ZZ 
 ;;9002226.02101,"1851,02C14ZZ ",.03)
 ;;31
 ;;9002226.02101,"1851,02C23ZZ ",.01)
 ;;02C23ZZ 
 ;;9002226.02101,"1851,02C23ZZ ",.02)
 ;;02C23ZZ 
 ;;9002226.02101,"1851,02C23ZZ ",.03)
 ;;31
 ;;9002226.02101,"1851,02C24ZZ ",.01)
 ;;02C24ZZ 
 ;;9002226.02101,"1851,02C24ZZ ",.02)
 ;;02C24ZZ 
 ;;9002226.02101,"1851,02C24ZZ ",.03)
 ;;31
 ;;9002226.02101,"1851,02C33ZZ ",.01)
 ;;02C33ZZ 
 ;;9002226.02101,"1851,02C33ZZ ",.02)
 ;;02C33ZZ 
 ;;9002226.02101,"1851,02C33ZZ ",.03)
 ;;31
 ;;9002226.02101,"1851,02C34ZZ ",.01)
 ;;02C34ZZ 
 ;;9002226.02101,"1851,02C34ZZ ",.02)
 ;;02C34ZZ 
 ;;9002226.02101,"1851,02C34ZZ ",.03)
 ;;31
 ;;9002226.02101,"1851,36.01 ",.01)
 ;;36.01
 ;;9002226.02101,"1851,36.01 ",.02)
 ;;36.01
 ;;9002226.02101,"1851,36.01 ",.03)
 ;;2
 ;;9002226.02101,"1851,36.02 ",.01)
 ;;36.02
 ;;9002226.02101,"1851,36.02 ",.02)
 ;;36.02
 ;;9002226.02101,"1851,36.02 ",.03)
 ;;2
 ;;9002226.02101,"1851,36.05 ",.01)
 ;;36.05
 ;;9002226.02101,"1851,36.05 ",.02)
 ;;36.05
 ;;9002226.02101,"1851,36.05 ",.03)
 ;;2
 ;;9002226.02101,"1851,36.06 ",.01)
 ;;36.06
 ;;9002226.02101,"1851,36.06 ",.02)
 ;;36.06
 ;;9002226.02101,"1851,36.06 ",.03)
 ;;2
 ;;9002226.02101,"1851,36.09 ",.01)
 ;;36.09
 ;;9002226.02101,"1851,36.09 ",.02)
 ;;36.09
 ;;9002226.02101,"1851,36.09 ",.03)
 ;;2
 ;;9002226.04101,"1851,1",.01)
 ;;BQI
 ;;9002226.05101,"1851,1",.01)
 ;;CARDIOVASCULAR
 ;
OTHER ; OTHER ROUTINES
 Q