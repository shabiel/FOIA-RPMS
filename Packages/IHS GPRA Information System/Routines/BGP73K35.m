BGP73K35 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 05, 2017;
 ;;17.1;IHS CLINICAL REPORTING;;MAY 10, 2017;Build 29
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"872,76282-0272-01 ",.01)
 ;;76282-0272-01
 ;;9002226.02101,"872,76282-0272-01 ",.02)
 ;;76282-0272-01
 ;;9002226.02101,"872,76282-0272-05 ",.01)
 ;;76282-0272-05
 ;;9002226.02101,"872,76282-0272-05 ",.02)
 ;;76282-0272-05
 ;;9002226.02101,"872,76282-0273-01 ",.01)
 ;;76282-0273-01
 ;;9002226.02101,"872,76282-0273-01 ",.02)
 ;;76282-0273-01
 ;;9002226.02101,"872,76282-0273-05 ",.01)
 ;;76282-0273-05
 ;;9002226.02101,"872,76282-0273-05 ",.02)
 ;;76282-0273-05
 ;;9002226.02101,"872,76282-0274-01 ",.01)
 ;;76282-0274-01
 ;;9002226.02101,"872,76282-0274-01 ",.02)
 ;;76282-0274-01
 ;;9002226.02101,"872,76282-0274-05 ",.01)
 ;;76282-0274-05
 ;;9002226.02101,"872,76282-0274-05 ",.02)
 ;;76282-0274-05
 ;;9002226.02101,"872,76282-0417-05 ",.01)
 ;;76282-0417-05
 ;;9002226.02101,"872,76282-0417-05 ",.02)
 ;;76282-0417-05
 ;;9002226.02101,"872,76282-0418-10 ",.01)
 ;;76282-0418-10
 ;;9002226.02101,"872,76282-0418-10 ",.02)
 ;;76282-0418-10
 ;;9002226.02101,"872,76282-0418-45 ",.01)
 ;;76282-0418-45
 ;;9002226.02101,"872,76282-0418-45 ",.02)
 ;;76282-0418-45
 ;;9002226.02101,"872,76282-0418-90 ",.01)
 ;;76282-0418-90
 ;;9002226.02101,"872,76282-0418-90 ",.02)
 ;;76282-0418-90
 ;;9002226.02101,"872,76282-0419-10 ",.01)
 ;;76282-0419-10
 ;;9002226.02101,"872,76282-0419-10 ",.02)
 ;;76282-0419-10
 ;;9002226.02101,"872,76282-0419-45 ",.01)
 ;;76282-0419-45
 ;;9002226.02101,"872,76282-0419-45 ",.02)
 ;;76282-0419-45
 ;;9002226.02101,"872,76282-0419-90 ",.01)
 ;;76282-0419-90
 ;;9002226.02101,"872,76282-0419-90 ",.02)
 ;;76282-0419-90
 ;;9002226.02101,"872,76282-0420-10 ",.01)
 ;;76282-0420-10
 ;;9002226.02101,"872,76282-0420-10 ",.02)
 ;;76282-0420-10
 ;;9002226.02101,"872,76282-0420-18 ",.01)
 ;;76282-0420-18
 ;;9002226.02101,"872,76282-0420-18 ",.02)
 ;;76282-0420-18
 ;;9002226.02101,"872,76282-0420-45 ",.01)
 ;;76282-0420-45
 ;;9002226.02101,"872,76282-0420-45 ",.02)
 ;;76282-0420-45
 ;;9002226.02101,"872,76282-0420-90 ",.01)
 ;;76282-0420-90
 ;;9002226.02101,"872,76282-0420-90 ",.02)
 ;;76282-0420-90
 ;;9002226.02101,"872,76282-0421-01 ",.01)
 ;;76282-0421-01
 ;;9002226.02101,"872,76282-0421-01 ",.02)
 ;;76282-0421-01
 ;;9002226.02101,"872,76282-0422-05 ",.01)
 ;;76282-0422-05
 ;;9002226.02101,"872,76282-0422-05 ",.02)
 ;;76282-0422-05
 ;;9002226.02101,"872,76282-0422-10 ",.01)
 ;;76282-0422-10
 ;;9002226.02101,"872,76282-0422-10 ",.02)
 ;;76282-0422-10
 ;;9002226.02101,"872,76282-0422-18 ",.01)
 ;;76282-0422-18
 ;;9002226.02101,"872,76282-0422-18 ",.02)
 ;;76282-0422-18
 ;;9002226.02101,"872,76282-0422-45 ",.01)
 ;;76282-0422-45
 ;;9002226.02101,"872,76282-0422-45 ",.02)
 ;;76282-0422-45
 ;;9002226.02101,"872,76282-0422-90 ",.01)
 ;;76282-0422-90
 ;;9002226.02101,"872,76282-0422-90 ",.02)
 ;;76282-0422-90
 ;;9002226.04101,"872,1",.01)
 ;;EN
 ;;9002226.04101,"872,2",.01)
 ;;BGP