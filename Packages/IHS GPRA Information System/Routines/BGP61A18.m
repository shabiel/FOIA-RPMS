BGP61A18 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1799,49884-0054-10 ",.01)
 ;;49884-0054-10
 ;;9002226.02101,"1799,49884-0054-10 ",.02)
 ;;49884-0054-10
 ;;9002226.02101,"1799,49884-0055-01 ",.01)
 ;;49884-0055-01
 ;;9002226.02101,"1799,49884-0055-01 ",.02)
 ;;49884-0055-01
 ;;9002226.02101,"1799,49884-0055-10 ",.01)
 ;;49884-0055-10
 ;;9002226.02101,"1799,49884-0055-10 ",.02)
 ;;49884-0055-10
 ;;9002226.02101,"1799,49884-0056-01 ",.01)
 ;;49884-0056-01
 ;;9002226.02101,"1799,49884-0056-01 ",.02)
 ;;49884-0056-01
 ;;9002226.02101,"1799,49884-0056-10 ",.01)
 ;;49884-0056-10
 ;;9002226.02101,"1799,49884-0056-10 ",.02)
 ;;49884-0056-10
 ;;9002226.02101,"1799,49884-0222-01 ",.01)
 ;;49884-0222-01
 ;;9002226.02101,"1799,49884-0222-01 ",.02)
 ;;49884-0222-01
 ;;9002226.02101,"1799,49884-0222-03 ",.01)
 ;;49884-0222-03
 ;;9002226.02101,"1799,49884-0222-03 ",.02)
 ;;49884-0222-03
 ;;9002226.02101,"1799,49884-0222-05 ",.01)
 ;;49884-0222-05
 ;;9002226.02101,"1799,49884-0222-05 ",.02)
 ;;49884-0222-05
 ;;9002226.02101,"1799,49999-0037-00 ",.01)
 ;;49999-0037-00
 ;;9002226.02101,"1799,49999-0037-00 ",.02)
 ;;49999-0037-00
 ;;9002226.02101,"1799,49999-0037-10 ",.01)
 ;;49999-0037-10
 ;;9002226.02101,"1799,49999-0037-10 ",.02)
 ;;49999-0037-10
 ;;9002226.02101,"1799,49999-0037-15 ",.01)
 ;;49999-0037-15
 ;;9002226.02101,"1799,49999-0037-15 ",.02)
 ;;49999-0037-15
 ;;9002226.02101,"1799,49999-0037-20 ",.01)
 ;;49999-0037-20
 ;;9002226.02101,"1799,49999-0037-20 ",.02)
 ;;49999-0037-20
 ;;9002226.02101,"1799,49999-0037-30 ",.01)
 ;;49999-0037-30
 ;;9002226.02101,"1799,49999-0037-30 ",.02)
 ;;49999-0037-30
 ;;9002226.02101,"1799,49999-0037-60 ",.01)
 ;;49999-0037-60
 ;;9002226.02101,"1799,49999-0037-60 ",.02)
 ;;49999-0037-60
 ;;9002226.02101,"1799,49999-0037-90 ",.01)
 ;;49999-0037-90
 ;;9002226.02101,"1799,49999-0037-90 ",.02)
 ;;49999-0037-90
 ;;9002226.02101,"1799,49999-0063-00 ",.01)
 ;;49999-0063-00
 ;;9002226.02101,"1799,49999-0063-00 ",.02)
 ;;49999-0063-00
 ;;9002226.02101,"1799,49999-0063-15 ",.01)
 ;;49999-0063-15
 ;;9002226.02101,"1799,49999-0063-15 ",.02)
 ;;49999-0063-15
 ;;9002226.02101,"1799,49999-0063-30 ",.01)
 ;;49999-0063-30
 ;;9002226.02101,"1799,49999-0063-30 ",.02)
 ;;49999-0063-30
 ;;9002226.02101,"1799,49999-0063-50 ",.01)
 ;;49999-0063-50
 ;;9002226.02101,"1799,49999-0063-50 ",.02)
 ;;49999-0063-50
 ;;9002226.02101,"1799,49999-0063-60 ",.01)
 ;;49999-0063-60
 ;;9002226.02101,"1799,49999-0063-60 ",.02)
 ;;49999-0063-60
 ;;9002226.02101,"1799,49999-0063-90 ",.01)
 ;;49999-0063-90
 ;;9002226.02101,"1799,49999-0063-90 ",.02)
 ;;49999-0063-90
 ;;9002226.02101,"1799,49999-0115-60 ",.01)
 ;;49999-0115-60
 ;;9002226.02101,"1799,49999-0115-60 ",.02)
 ;;49999-0115-60
 ;;9002226.02101,"1799,49999-0151-08 ",.01)
 ;;49999-0151-08
 ;;9002226.02101,"1799,49999-0151-08 ",.02)
 ;;49999-0151-08
 ;;9002226.02101,"1799,49999-0151-20 ",.01)
 ;;49999-0151-20
 ;;9002226.02101,"1799,49999-0151-20 ",.02)
 ;;49999-0151-20
 ;;9002226.02101,"1799,49999-0151-30 ",.01)
 ;;49999-0151-30
 ;;9002226.02101,"1799,49999-0151-30 ",.02)
 ;;49999-0151-30
 ;;9002226.02101,"1799,49999-0151-60 ",.01)
 ;;49999-0151-60
 ;;9002226.02101,"1799,49999-0151-60 ",.02)
 ;;49999-0151-60
 ;;9002226.02101,"1799,49999-0190-30 ",.01)
 ;;49999-0190-30
 ;;9002226.02101,"1799,49999-0190-30 ",.02)
 ;;49999-0190-30
 ;;9002226.02101,"1799,49999-0205-00 ",.01)
 ;;49999-0205-00
 ;;9002226.02101,"1799,49999-0205-00 ",.02)
 ;;49999-0205-00
 ;;9002226.02101,"1799,49999-0205-30 ",.01)
 ;;49999-0205-30
 ;;9002226.02101,"1799,49999-0205-30 ",.02)
 ;;49999-0205-30
 ;;9002226.02101,"1799,49999-0205-60 ",.01)
 ;;49999-0205-60
 ;;9002226.02101,"1799,49999-0205-60 ",.02)
 ;;49999-0205-60
 ;;9002226.02101,"1799,49999-0228-00 ",.01)
 ;;49999-0228-00
 ;;9002226.02101,"1799,49999-0228-00 ",.02)
 ;;49999-0228-00
 ;;9002226.02101,"1799,49999-0228-30 ",.01)
 ;;49999-0228-30
 ;;9002226.02101,"1799,49999-0228-30 ",.02)
 ;;49999-0228-30
 ;;9002226.02101,"1799,49999-0228-60 ",.01)
 ;;49999-0228-60
 ;;9002226.02101,"1799,49999-0228-60 ",.02)
 ;;49999-0228-60
 ;;9002226.02101,"1799,49999-0228-90 ",.01)
 ;;49999-0228-90
 ;;9002226.02101,"1799,49999-0228-90 ",.02)
 ;;49999-0228-90
 ;;9002226.02101,"1799,49999-0318-00 ",.01)
 ;;49999-0318-00
 ;;9002226.02101,"1799,49999-0318-00 ",.02)
 ;;49999-0318-00
 ;;9002226.02101,"1799,49999-0318-30 ",.01)
 ;;49999-0318-30
 ;;9002226.02101,"1799,49999-0318-30 ",.02)
 ;;49999-0318-30
 ;;9002226.02101,"1799,49999-0318-60 ",.01)
 ;;49999-0318-60
 ;;9002226.02101,"1799,49999-0318-60 ",.02)
 ;;49999-0318-60
 ;;9002226.02101,"1799,49999-0394-30 ",.01)
 ;;49999-0394-30
 ;;9002226.02101,"1799,49999-0394-30 ",.02)
 ;;49999-0394-30
 ;;9002226.02101,"1799,49999-0394-60 ",.01)
 ;;49999-0394-60
 ;;9002226.02101,"1799,49999-0394-60 ",.02)
 ;;49999-0394-60
 ;;9002226.02101,"1799,49999-0394-90 ",.01)
 ;;49999-0394-90
 ;;9002226.02101,"1799,49999-0394-90 ",.02)
 ;;49999-0394-90
 ;;9002226.02101,"1799,49999-0400-30 ",.01)
 ;;49999-0400-30
 ;;9002226.02101,"1799,49999-0400-30 ",.02)
 ;;49999-0400-30
 ;;9002226.02101,"1799,49999-0453-15 ",.01)
 ;;49999-0453-15
 ;;9002226.02101,"1799,49999-0453-15 ",.02)
 ;;49999-0453-15
 ;;9002226.02101,"1799,49999-0453-30 ",.01)
 ;;49999-0453-30
 ;;9002226.02101,"1799,49999-0453-30 ",.02)
 ;;49999-0453-30
 ;;9002226.02101,"1799,49999-0551-30 ",.01)
 ;;49999-0551-30
 ;;9002226.02101,"1799,49999-0551-30 ",.02)
 ;;49999-0551-30
 ;;9002226.02101,"1799,49999-0604-15 ",.01)
 ;;49999-0604-15
 ;;9002226.02101,"1799,49999-0604-15 ",.02)
 ;;49999-0604-15
 ;;9002226.02101,"1799,49999-0604-30 ",.01)
 ;;49999-0604-30
 ;;9002226.02101,"1799,49999-0604-30 ",.02)
 ;;49999-0604-30
 ;;9002226.02101,"1799,49999-0604-60 ",.01)
 ;;49999-0604-60
 ;;9002226.02101,"1799,49999-0604-60 ",.02)
 ;;49999-0604-60
 ;;9002226.02101,"1799,49999-0737-00 ",.01)
 ;;49999-0737-00
 ;;9002226.02101,"1799,49999-0737-00 ",.02)
 ;;49999-0737-00
 ;;9002226.02101,"1799,49999-0737-14 ",.01)
 ;;49999-0737-14
 ;;9002226.02101,"1799,49999-0737-14 ",.02)
 ;;49999-0737-14
 ;;9002226.02101,"1799,49999-0737-15 ",.01)
 ;;49999-0737-15
 ;;9002226.02101,"1799,49999-0737-15 ",.02)
 ;;49999-0737-15
 ;;9002226.02101,"1799,49999-0737-30 ",.01)
 ;;49999-0737-30
 ;;9002226.02101,"1799,49999-0737-30 ",.02)
 ;;49999-0737-30
 ;;9002226.02101,"1799,49999-0737-60 ",.01)
 ;;49999-0737-60
 ;;9002226.02101,"1799,49999-0737-60 ",.02)
 ;;49999-0737-60
 ;;9002226.02101,"1799,49999-0737-90 ",.01)
 ;;49999-0737-90
 ;;9002226.02101,"1799,49999-0737-90 ",.02)
 ;;49999-0737-90
 ;;9002226.02101,"1799,49999-0763-00 ",.01)
 ;;49999-0763-00
 ;;9002226.02101,"1799,49999-0763-00 ",.02)
 ;;49999-0763-00
 ;;9002226.02101,"1799,49999-0763-30 ",.01)
 ;;49999-0763-30
 ;;9002226.02101,"1799,49999-0763-30 ",.02)
 ;;49999-0763-30
 ;;9002226.02101,"1799,49999-0764-30 ",.01)
 ;;49999-0764-30
 ;;9002226.02101,"1799,49999-0764-30 ",.02)
 ;;49999-0764-30
 ;;9002226.02101,"1799,49999-0764-60 ",.01)
 ;;49999-0764-60
 ;;9002226.02101,"1799,49999-0764-60 ",.02)
 ;;49999-0764-60
 ;;9002226.02101,"1799,49999-0778-30 ",.01)
 ;;49999-0778-30
 ;;9002226.02101,"1799,49999-0778-30 ",.02)
 ;;49999-0778-30
 ;;9002226.02101,"1799,49999-0779-15 ",.01)
 ;;49999-0779-15
 ;;9002226.02101,"1799,49999-0779-15 ",.02)
 ;;49999-0779-15
 ;;9002226.02101,"1799,49999-0779-30 ",.01)
 ;;49999-0779-30
 ;;9002226.02101,"1799,49999-0779-30 ",.02)
 ;;49999-0779-30
 ;;9002226.02101,"1799,49999-0867-00 ",.01)
 ;;49999-0867-00
 ;;9002226.02101,"1799,49999-0867-00 ",.02)
 ;;49999-0867-00
 ;;9002226.02101,"1799,49999-0909-00 ",.01)
 ;;49999-0909-00
 ;;9002226.02101,"1799,49999-0909-00 ",.02)
 ;;49999-0909-00
 ;;9002226.02101,"1799,49999-0909-30 ",.01)
 ;;49999-0909-30
 ;;9002226.02101,"1799,49999-0909-30 ",.02)
 ;;49999-0909-30
 ;;9002226.02101,"1799,49999-0909-60 ",.01)
 ;;49999-0909-60
 ;;9002226.02101,"1799,49999-0909-60 ",.02)
 ;;49999-0909-60
 ;;9002226.02101,"1799,49999-0931-00 ",.01)
 ;;49999-0931-00
 ;;9002226.02101,"1799,49999-0931-00 ",.02)
 ;;49999-0931-00
 ;;9002226.02101,"1799,49999-0931-02 ",.01)
 ;;49999-0931-02
 ;;9002226.02101,"1799,49999-0931-02 ",.02)
 ;;49999-0931-02
 ;;9002226.02101,"1799,49999-0931-15 ",.01)
 ;;49999-0931-15
 ;;9002226.02101,"1799,49999-0931-15 ",.02)
 ;;49999-0931-15
 ;;9002226.02101,"1799,49999-0931-30 ",.01)
 ;;49999-0931-30
 ;;9002226.02101,"1799,49999-0931-30 ",.02)
 ;;49999-0931-30
 ;;9002226.02101,"1799,49999-0931-60 ",.01)
 ;;49999-0931-60
 ;;9002226.02101,"1799,49999-0931-60 ",.02)
 ;;49999-0931-60
 ;;9002226.02101,"1799,49999-0932-00 ",.01)
 ;;49999-0932-00
 ;;9002226.02101,"1799,49999-0932-00 ",.02)
 ;;49999-0932-00
 ;;9002226.02101,"1799,49999-0932-30 ",.01)
 ;;49999-0932-30
 ;;9002226.02101,"1799,49999-0932-30 ",.02)
 ;;49999-0932-30
 ;;9002226.02101,"1799,49999-0932-60 ",.01)
 ;;49999-0932-60
 ;;9002226.02101,"1799,49999-0932-60 ",.02)
 ;;49999-0932-60
 ;;9002226.02101,"1799,50436-0193-01 ",.01)
 ;;50436-0193-01
 ;;9002226.02101,"1799,50436-0193-01 ",.02)
 ;;50436-0193-01
 ;;9002226.02101,"1799,50436-1006-01 ",.01)
 ;;50436-1006-01
 ;;9002226.02101,"1799,50436-1006-01 ",.02)
 ;;50436-1006-01
 ;;9002226.02101,"1799,50436-3026-01 ",.01)
 ;;50436-3026-01
 ;;9002226.02101,"1799,50436-3026-01 ",.02)
 ;;50436-3026-01
 ;;9002226.02101,"1799,50436-3030-01 ",.01)
 ;;50436-3030-01
 ;;9002226.02101,"1799,50436-3030-01 ",.02)
 ;;50436-3030-01
 ;;9002226.02101,"1799,50436-3030-02 ",.01)
 ;;50436-3030-02
 ;;9002226.02101,"1799,50436-3030-02 ",.02)
 ;;50436-3030-02
 ;;9002226.02101,"1799,50436-3031-01 ",.01)
 ;;50436-3031-01
 ;;9002226.02101,"1799,50436-3031-01 ",.02)
 ;;50436-3031-01
 ;;9002226.02101,"1799,50436-3071-01 ",.01)
 ;;50436-3071-01
 ;;9002226.02101,"1799,50436-3071-01 ",.02)
 ;;50436-3071-01
 ;;9002226.02101,"1799,50436-3071-02 ",.01)
 ;;50436-3071-02
 ;;9002226.02101,"1799,50436-3071-02 ",.02)
 ;;50436-3071-02
 ;;9002226.02101,"1799,50436-3071-05 ",.01)
 ;;50436-3071-05
 ;;9002226.02101,"1799,50436-3071-05 ",.02)
 ;;50436-3071-05
 ;;9002226.02101,"1799,50436-3072-01 ",.01)
 ;;50436-3072-01
 ;;9002226.02101,"1799,50436-3072-01 ",.02)
 ;;50436-3072-01
 ;;9002226.02101,"1799,50436-3072-02 ",.01)
 ;;50436-3072-02
 ;;9002226.02101,"1799,50436-3072-02 ",.02)
 ;;50436-3072-02
 ;;9002226.02101,"1799,50436-3072-05 ",.01)
 ;;50436-3072-05
 ;;9002226.02101,"1799,50436-3072-05 ",.02)
 ;;50436-3072-05
 ;;9002226.02101,"1799,50436-3073-01 ",.01)
 ;;50436-3073-01
 ;;9002226.02101,"1799,50436-3073-01 ",.02)
 ;;50436-3073-01
 ;;9002226.02101,"1799,50436-3073-02 ",.01)
 ;;50436-3073-02
 ;;9002226.02101,"1799,50436-3073-02 ",.02)
 ;;50436-3073-02
 ;;9002226.02101,"1799,50436-3074-01 ",.01)
 ;;50436-3074-01
 ;;9002226.02101,"1799,50436-3074-01 ",.02)
 ;;50436-3074-01
 ;;9002226.02101,"1799,50436-3075-01 ",.01)
 ;;50436-3075-01
 ;;9002226.02101,"1799,50436-3075-01 ",.02)
 ;;50436-3075-01
 ;;9002226.02101,"1799,50436-4565-01 ",.01)
 ;;50436-4565-01
 ;;9002226.02101,"1799,50436-4565-01 ",.02)
 ;;50436-4565-01
 ;;9002226.02101,"1799,50436-4856-01 ",.01)
 ;;50436-4856-01
 ;;9002226.02101,"1799,50436-4856-01 ",.02)
 ;;50436-4856-01
 ;;9002226.02101,"1799,50436-4856-02 ",.01)
 ;;50436-4856-02
 ;;9002226.02101,"1799,50436-4856-02 ",.02)
 ;;50436-4856-02
 ;;9002226.02101,"1799,50436-5537-01 ",.01)
 ;;50436-5537-01
 ;;9002226.02101,"1799,50436-5537-01 ",.02)
 ;;50436-5537-01
 ;;9002226.02101,"1799,50436-5538-01 ",.01)
 ;;50436-5538-01
 ;;9002226.02101,"1799,50436-5538-01 ",.02)
 ;;50436-5538-01
 ;;9002226.02101,"1799,50436-5538-04 ",.01)
 ;;50436-5538-04
 ;;9002226.02101,"1799,50436-5538-04 ",.02)
 ;;50436-5538-04
 ;;9002226.02101,"1799,50436-5539-01 ",.01)
 ;;50436-5539-01