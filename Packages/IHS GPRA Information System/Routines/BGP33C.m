BGP33C ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 21, 2013;
 ;;13.0;IHS CLINICAL REPORTING;**1**;NOV 20, 2012;Build 7
 ;;BGP HYSTERECTOMY PROCEDURES
 ;
 ; This routine loads Taxonomy BGP HYSTERECTOMY PROCEDURES
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
 ;;21,"68.4 ")
 ;;1
 ;;9002226,408,.01)
 ;;BGP HYSTERECTOMY PROCEDURES
 ;;9002226,408,.02)
 ;;@
 ;;9002226,408,.04)
 ;;@
 ;;9002226,408,.06)
 ;;@
 ;;9002226,408,.08)
 ;;0
 ;;9002226,408,.09)
 ;;3130114
 ;;9002226,408,.11)
 ;;@
 ;;9002226,408,.12)
 ;;255
 ;;9002226,408,.13)
 ;;1
 ;;9002226,408,.14)
 ;;@
 ;;9002226,408,.15)
 ;;80.1
 ;;9002226,408,.16)
 ;;@
 ;;9002226,408,.17)
 ;;@
 ;;9002226,408,3101)
 ;;@
 ;;9002226.02101,"408,68.4 ",.01)
 ;;68.4 
 ;;9002226.02101,"408,68.4 ",.02)
 ;;68.9 
 ;
OTHER ; OTHER ROUTINES
 Q