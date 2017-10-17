BGP73G67 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 05, 2017;
 ;;17.1;IHS CLINICAL REPORTING;;MAY 10, 2017;Build 29
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"869,68645-0425-54 ",.02)
 ;;68645-0425-54
 ;;9002226.02101,"869,68645-0426-54 ",.01)
 ;;68645-0426-54
 ;;9002226.02101,"869,68645-0426-54 ",.02)
 ;;68645-0426-54
 ;;9002226.02101,"869,68645-0447-70 ",.01)
 ;;68645-0447-70
 ;;9002226.02101,"869,68645-0447-70 ",.02)
 ;;68645-0447-70
 ;;9002226.02101,"869,68645-0448-70 ",.01)
 ;;68645-0448-70
 ;;9002226.02101,"869,68645-0448-70 ",.02)
 ;;68645-0448-70
 ;;9002226.02101,"869,68645-0451-70 ",.01)
 ;;68645-0451-70
 ;;9002226.02101,"869,68645-0451-70 ",.02)
 ;;68645-0451-70
 ;;9002226.02101,"869,68645-0452-70 ",.01)
 ;;68645-0452-70
 ;;9002226.02101,"869,68645-0452-70 ",.02)
 ;;68645-0452-70
 ;;9002226.02101,"869,68645-0467-54 ",.01)
 ;;68645-0467-54
 ;;9002226.02101,"869,68645-0467-54 ",.02)
 ;;68645-0467-54
 ;;9002226.02101,"869,68645-0487-70 ",.01)
 ;;68645-0487-70
 ;;9002226.02101,"869,68645-0487-70 ",.02)
 ;;68645-0487-70
 ;;9002226.02101,"869,68645-0488-70 ",.01)
 ;;68645-0488-70
 ;;9002226.02101,"869,68645-0488-70 ",.02)
 ;;68645-0488-70
 ;;9002226.02101,"869,68645-0489-70 ",.01)
 ;;68645-0489-70
 ;;9002226.02101,"869,68645-0489-70 ",.02)
 ;;68645-0489-70
 ;;9002226.02101,"869,68645-0498-01 ",.01)
 ;;68645-0498-01
 ;;9002226.02101,"869,68645-0498-01 ",.02)
 ;;68645-0498-01
 ;;9002226.02101,"869,68645-0499-01 ",.01)
 ;;68645-0499-01
 ;;9002226.02101,"869,68645-0499-01 ",.02)
 ;;68645-0499-01
 ;;9002226.02101,"869,68645-0500-01 ",.01)
 ;;68645-0500-01
 ;;9002226.02101,"869,68645-0500-01 ",.02)
 ;;68645-0500-01
 ;;9002226.02101,"869,68727-0600-01 ",.01)
 ;;68727-0600-01
 ;;9002226.02101,"869,68727-0600-01 ",.02)
 ;;68727-0600-01
 ;;9002226.02101,"869,68727-0601-01 ",.01)
 ;;68727-0601-01
 ;;9002226.02101,"869,68727-0601-01 ",.02)
 ;;68727-0601-01
 ;;9002226.02101,"869,68968-2010-01 ",.01)
 ;;68968-2010-01
 ;;9002226.02101,"869,68968-2010-01 ",.02)
 ;;68968-2010-01
 ;;9002226.02101,"869,68968-2020-01 ",.01)
 ;;68968-2020-01
 ;;9002226.02101,"869,68968-2020-01 ",.02)
 ;;68968-2020-01
 ;;9002226.02101,"869,68968-2030-01 ",.01)
 ;;68968-2030-01
 ;;9002226.02101,"869,68968-2030-01 ",.02)
 ;;68968-2030-01
 ;;9002226.02101,"869,68968-2040-01 ",.01)
 ;;68968-2040-01
 ;;9002226.02101,"869,68968-2040-01 ",.02)
 ;;68968-2040-01
 ;;9002226.02101,"869,68968-9075-03 ",.01)
 ;;68968-9075-03
 ;;9002226.02101,"869,68968-9075-03 ",.02)
 ;;68968-9075-03
 ;;9002226.02101,"869,69097-0297-03 ",.01)
 ;;69097-0297-03
 ;;9002226.02101,"869,69097-0297-03 ",.02)
 ;;69097-0297-03
 ;;9002226.02101,"869,69097-0298-02 ",.01)
 ;;69097-0298-02
 ;;9002226.02101,"869,69097-0298-02 ",.02)
 ;;69097-0298-02
 ;;9002226.02101,"869,69097-0299-02 ",.01)
 ;;69097-0299-02
 ;;9002226.02101,"869,69097-0299-02 ",.02)
 ;;69097-0299-02
 ;;9002226.02101,"869,69097-0822-07 ",.01)
 ;;69097-0822-07
 ;;9002226.02101,"869,69097-0822-07 ",.02)
 ;;69097-0822-07
 ;;9002226.02101,"869,69097-0822-12 ",.01)
 ;;69097-0822-12
 ;;9002226.02101,"869,69097-0822-12 ",.02)
 ;;69097-0822-12
 ;;9002226.02101,"869,69097-0823-07 ",.01)
 ;;69097-0823-07
 ;;9002226.02101,"869,69097-0823-07 ",.02)
 ;;69097-0823-07
 ;;9002226.02101,"869,69097-0823-12 ",.01)
 ;;69097-0823-12
 ;;9002226.02101,"869,69097-0823-12 ",.02)
 ;;69097-0823-12
 ;;9002226.02101,"869,69097-0824-07 ",.01)
 ;;69097-0824-07
 ;;9002226.02101,"869,69097-0824-07 ",.02)
 ;;69097-0824-07
 ;;9002226.02101,"869,69097-0824-12 ",.01)
 ;;69097-0824-12
 ;;9002226.02101,"869,69097-0824-12 ",.02)
 ;;69097-0824-12
 ;;9002226.02101,"869,69097-0833-02 ",.01)
 ;;69097-0833-02
 ;;9002226.02101,"869,69097-0833-02 ",.02)
 ;;69097-0833-02
 ;;9002226.02101,"869,69097-0833-12 ",.01)
 ;;69097-0833-12
 ;;9002226.02101,"869,69097-0833-12 ",.02)
 ;;69097-0833-12
 ;;9002226.02101,"869,69097-0834-02 ",.01)
 ;;69097-0834-02
 ;;9002226.02101,"869,69097-0834-02 ",.02)
 ;;69097-0834-02
 ;;9002226.02101,"869,69097-0834-12 ",.01)
 ;;69097-0834-12
 ;;9002226.02101,"869,69097-0834-12 ",.02)
 ;;69097-0834-12
 ;;9002226.02101,"869,69097-0835-02 ",.01)
 ;;69097-0835-02
 ;;9002226.02101,"869,69097-0835-02 ",.02)
 ;;69097-0835-02
 ;;9002226.02101,"869,69097-0835-12 ",.01)
 ;;69097-0835-12
 ;;9002226.02101,"869,69097-0835-12 ",.02)
 ;;69097-0835-12
 ;;9002226.02101,"869,69097-0847-05 ",.01)
 ;;69097-0847-05
 ;;9002226.02101,"869,69097-0847-05 ",.02)
 ;;69097-0847-05
 ;;9002226.02101,"869,69097-0848-05 ",.01)
 ;;69097-0848-05
 ;;9002226.02101,"869,69097-0848-05 ",.02)
 ;;69097-0848-05
 ;;9002226.02101,"869,69097-0849-05 ",.01)
 ;;69097-0849-05
 ;;9002226.02101,"869,69097-0849-05 ",.02)
 ;;69097-0849-05
 ;;9002226.02101,"869,69238-1053-01 ",.01)
 ;;69238-1053-01
 ;;9002226.02101,"869,69238-1053-01 ",.02)
 ;;69238-1053-01
 ;;9002226.02101,"869,69238-1053-03 ",.01)
 ;;69238-1053-03
 ;;9002226.02101,"869,69238-1053-03 ",.02)
 ;;69238-1053-03
 ;;9002226.02101,"869,69238-1055-01 ",.01)
 ;;69238-1055-01
 ;;9002226.02101,"869,69238-1055-01 ",.02)
 ;;69238-1055-01
 ;;9002226.02101,"869,69238-1057-01 ",.01)
 ;;69238-1057-01
 ;;9002226.02101,"869,69238-1057-01 ",.02)
 ;;69238-1057-01
 ;;9002226.02101,"869,69238-1059-01 ",.01)
 ;;69238-1059-01
 ;;9002226.02101,"869,69238-1059-01 ",.02)
 ;;69238-1059-01
 ;;9002226.02101,"869,69238-1061-01 ",.01)
 ;;69238-1061-01
 ;;9002226.02101,"869,69238-1061-01 ",.02)
 ;;69238-1061-01
 ;;9002226.02101,"869,69238-1063-02 ",.01)
 ;;69238-1063-02
 ;;9002226.02101,"869,69238-1063-02 ",.02)
 ;;69238-1063-02
 ;;9002226.02101,"869,69315-0133-01 ",.01)
 ;;69315-0133-01
 ;;9002226.02101,"869,69315-0133-01 ",.02)
 ;;69315-0133-01
 ;;9002226.02101,"869,69315-0133-10 ",.01)
 ;;69315-0133-10
 ;;9002226.02101,"869,69315-0133-10 ",.02)
 ;;69315-0133-10
 ;;9002226.02101,"869,69315-0134-01 ",.01)
 ;;69315-0134-01
 ;;9002226.02101,"869,69315-0134-01 ",.02)
 ;;69315-0134-01
 ;;9002226.02101,"869,69315-0134-10 ",.01)
 ;;69315-0134-10
 ;;9002226.02101,"869,69315-0134-10 ",.02)
 ;;69315-0134-10
 ;;9002226.02101,"869,69315-0135-01 ",.01)
 ;;69315-0135-01
 ;;9002226.02101,"869,69315-0135-01 ",.02)
 ;;69315-0135-01
 ;;9002226.02101,"869,69315-0135-10 ",.01)
 ;;69315-0135-10
 ;;9002226.02101,"869,69315-0135-10 ",.02)
 ;;69315-0135-10
 ;;9002226.02101,"869,69874-0422-10 ",.01)
 ;;69874-0422-10
 ;;9002226.02101,"869,69874-0422-10 ",.02)
 ;;69874-0422-10
 ;;9002226.02101,"869,76282-0206-01 ",.01)
 ;;76282-0206-01
 ;;9002226.02101,"869,76282-0206-01 ",.02)
 ;;76282-0206-01
 ;;9002226.02101,"869,76282-0206-05 ",.01)
 ;;76282-0206-05
 ;;9002226.02101,"869,76282-0206-05 ",.02)
 ;;76282-0206-05
 ;;9002226.02101,"869,76282-0206-10 ",.01)
 ;;76282-0206-10
 ;;9002226.02101,"869,76282-0206-10 ",.02)
 ;;76282-0206-10
 ;;9002226.02101,"869,76282-0207-01 ",.01)
 ;;76282-0207-01
 ;;9002226.02101,"869,76282-0207-01 ",.02)
 ;;76282-0207-01
 ;;9002226.02101,"869,76282-0207-05 ",.01)
 ;;76282-0207-05
 ;;9002226.02101,"869,76282-0207-05 ",.02)
 ;;76282-0207-05
 ;;9002226.02101,"869,76282-0207-10 ",.01)
 ;;76282-0207-10
 ;;9002226.02101,"869,76282-0207-10 ",.02)
 ;;76282-0207-10
 ;;9002226.02101,"869,76282-0207-30 ",.01)
 ;;76282-0207-30
 ;;9002226.02101,"869,76282-0207-30 ",.02)
 ;;76282-0207-30
 ;;9002226.02101,"869,76282-0208-01 ",.01)
 ;;76282-0208-01
 ;;9002226.02101,"869,76282-0208-01 ",.02)
 ;;76282-0208-01
 ;;9002226.02101,"869,76282-0208-05 ",.01)
 ;;76282-0208-05
 ;;9002226.02101,"869,76282-0208-05 ",.02)
 ;;76282-0208-05
 ;;9002226.02101,"869,76282-0208-10 ",.01)
 ;;76282-0208-10
 ;;9002226.02101,"869,76282-0208-10 ",.02)
 ;;76282-0208-10
 ;;9002226.02101,"869,76282-0208-30 ",.01)
 ;;76282-0208-30
 ;;9002226.02101,"869,76282-0208-30 ",.02)
 ;;76282-0208-30
 ;;9002226.02101,"869,76282-0212-01 ",.01)
 ;;76282-0212-01
 ;;9002226.02101,"869,76282-0212-01 ",.02)
 ;;76282-0212-01
 ;;9002226.02101,"869,76282-0212-05 ",.01)
 ;;76282-0212-05
 ;;9002226.02101,"869,76282-0212-05 ",.02)
 ;;76282-0212-05
 ;;9002226.02101,"869,76282-0212-90 ",.01)
 ;;76282-0212-90
 ;;9002226.02101,"869,76282-0212-90 ",.02)
 ;;76282-0212-90
 ;;9002226.02101,"869,76282-0213-01 ",.01)
 ;;76282-0213-01
 ;;9002226.02101,"869,76282-0213-01 ",.02)
 ;;76282-0213-01
 ;;9002226.02101,"869,76282-0213-05 ",.01)
 ;;76282-0213-05
 ;;9002226.02101,"869,76282-0213-05 ",.02)
 ;;76282-0213-05
 ;;9002226.02101,"869,76282-0213-30 ",.01)
 ;;76282-0213-30
 ;;9002226.02101,"869,76282-0213-30 ",.02)
 ;;76282-0213-30
 ;;9002226.02101,"869,76282-0213-90 ",.01)
 ;;76282-0213-90
 ;;9002226.02101,"869,76282-0213-90 ",.02)
 ;;76282-0213-90
 ;;9002226.02101,"869,76282-0214-01 ",.01)
 ;;76282-0214-01
 ;;9002226.02101,"869,76282-0214-01 ",.02)
 ;;76282-0214-01
 ;;9002226.02101,"869,76282-0214-05 ",.01)
 ;;76282-0214-05
 ;;9002226.02101,"869,76282-0214-05 ",.02)
 ;;76282-0214-05
 ;;9002226.02101,"869,76282-0214-90 ",.01)
 ;;76282-0214-90
 ;;9002226.02101,"869,76282-0214-90 ",.02)
 ;;76282-0214-90
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