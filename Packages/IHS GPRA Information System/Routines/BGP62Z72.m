BGP62Z72 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 11, 2016;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"869,76282-0213-05 ",.01)
 ;;76282-0213-05
 ;;9002226.02101,"869,76282-0213-05 ",.02)
 ;;76282-0213-05
 ;;9002226.02101,"869,76282-0213-30 ",.01)
 ;;76282-0213-30
 ;;9002226.02101,"869,76282-0213-30 ",.02)
 ;;76282-0213-30
 ;;9002226.02101,"869,76282-0214-01 ",.01)
 ;;76282-0214-01
 ;;9002226.02101,"869,76282-0214-01 ",.02)
 ;;76282-0214-01
 ;;9002226.02101,"869,76282-0214-05 ",.01)
 ;;76282-0214-05
 ;;9002226.02101,"869,76282-0214-05 ",.02)
 ;;76282-0214-05
 ;;9002226.02101,"869,76282-0214-30 ",.01)
 ;;76282-0214-30
 ;;9002226.02101,"869,76282-0214-30 ",.02)
 ;;76282-0214-30
 ;;9002226.02101,"869,76282-0249-90 ",.01)
 ;;76282-0249-90
 ;;9002226.02101,"869,76282-0249-90 ",.02)
 ;;76282-0249-90
 ;;9002226.02101,"869,76282-0250-10 ",.01)
 ;;76282-0250-10
 ;;9002226.02101,"869,76282-0250-10 ",.02)
 ;;76282-0250-10
 ;;9002226.02101,"869,76282-0250-90 ",.01)
 ;;76282-0250-90
 ;;9002226.02101,"869,76282-0250-90 ",.02)
 ;;76282-0250-90
 ;;9002226.02101,"869,76282-0251-10 ",.01)
 ;;76282-0251-10
 ;;9002226.02101,"869,76282-0251-10 ",.02)
 ;;76282-0251-10
 ;;9002226.02101,"869,76282-0251-90 ",.01)
 ;;76282-0251-90
 ;;9002226.02101,"869,76282-0251-90 ",.02)
 ;;76282-0251-90
 ;;9002226.04101,"869,1",.01)
 ;;APSA
 ;;9002226.04101,"869,2",.01)
 ;;BGP