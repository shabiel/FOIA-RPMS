BGPM5AYS ;IHS/MSC/SAT-CREATED BY ^ATXSTX ON AUG 31, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1027,76497 ",.01)
 ;;76497
 ;;9002226.02101,"1027,76497 ",.02)
 ;;76497
 ;;9002226.02101,"1027,76498 ",.01)
 ;;76498
 ;;9002226.02101,"1027,76498 ",.02)
 ;;76498
 ;;9002226.02101,"1027,76499 ",.01)
 ;;76499
 ;;9002226.02101,"1027,76499 ",.02)
 ;;76499