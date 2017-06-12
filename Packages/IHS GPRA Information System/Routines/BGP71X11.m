BGP71X11 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1222,55111-0320-01 ",.02)
 ;;55111-0320-01
 ;;9002226.02101,"1222,55111-0320-05 ",.01)
 ;;55111-0320-05
 ;;9002226.02101,"1222,55111-0320-05 ",.02)
 ;;55111-0320-05
 ;;9002226.02101,"1222,55111-0321-01 ",.01)
 ;;55111-0321-01
 ;;9002226.02101,"1222,55111-0321-01 ",.02)
 ;;55111-0321-01
 ;;9002226.02101,"1222,55111-0321-05 ",.01)
 ;;55111-0321-05
 ;;9002226.02101,"1222,55111-0321-05 ",.02)
 ;;55111-0321-05
 ;;9002226.02101,"1222,55111-0322-01 ",.01)
 ;;55111-0322-01
 ;;9002226.02101,"1222,55111-0322-01 ",.02)
 ;;55111-0322-01
 ;;9002226.02101,"1222,55111-0322-05 ",.01)
 ;;55111-0322-05
 ;;9002226.02101,"1222,55111-0322-05 ",.02)
 ;;55111-0322-05
 ;;9002226.02101,"1222,55111-0695-01 ",.01)
 ;;55111-0695-01
 ;;9002226.02101,"1222,55111-0695-01 ",.02)
 ;;55111-0695-01
 ;;9002226.02101,"1222,55111-0696-01 ",.01)
 ;;55111-0696-01
 ;;9002226.02101,"1222,55111-0696-01 ",.02)
 ;;55111-0696-01
 ;;9002226.02101,"1222,55111-0696-10 ",.01)
 ;;55111-0696-10
 ;;9002226.02101,"1222,55111-0696-10 ",.02)
 ;;55111-0696-10
 ;;9002226.02101,"1222,55111-0697-01 ",.01)
 ;;55111-0697-01
 ;;9002226.02101,"1222,55111-0697-01 ",.02)
 ;;55111-0697-01
 ;;9002226.02101,"1222,55111-0697-10 ",.01)
 ;;55111-0697-10
 ;;9002226.02101,"1222,55111-0697-10 ",.02)
 ;;55111-0697-10
 ;;9002226.02101,"1222,55289-0066-90 ",.01)
 ;;55289-0066-90
 ;;9002226.02101,"1222,55289-0066-90 ",.02)
 ;;55289-0066-90
 ;;9002226.02101,"1222,55289-0125-30 ",.01)
 ;;55289-0125-30
 ;;9002226.02101,"1222,55289-0125-30 ",.02)
 ;;55289-0125-30
 ;;9002226.02101,"1222,55289-0265-90 ",.01)
 ;;55289-0265-90
 ;;9002226.02101,"1222,55289-0265-90 ",.02)
 ;;55289-0265-90
 ;;9002226.02101,"1222,55289-0281-30 ",.01)
 ;;55289-0281-30
 ;;9002226.02101,"1222,55289-0281-30 ",.02)
 ;;55289-0281-30
 ;;9002226.02101,"1222,55289-0281-60 ",.01)
 ;;55289-0281-60
 ;;9002226.02101,"1222,55289-0281-60 ",.02)
 ;;55289-0281-60
 ;;9002226.02101,"1222,55289-0281-86 ",.01)
 ;;55289-0281-86
 ;;9002226.02101,"1222,55289-0281-86 ",.02)
 ;;55289-0281-86
 ;;9002226.02101,"1222,55289-0281-90 ",.01)
 ;;55289-0281-90
 ;;9002226.02101,"1222,55289-0281-90 ",.02)
 ;;55289-0281-90
 ;;9002226.02101,"1222,55289-0301-90 ",.01)
 ;;55289-0301-90
 ;;9002226.02101,"1222,55289-0301-90 ",.02)
 ;;55289-0301-90
 ;;9002226.02101,"1222,55289-0301-93 ",.01)
 ;;55289-0301-93
 ;;9002226.02101,"1222,55289-0301-93 ",.02)
 ;;55289-0301-93
 ;;9002226.02101,"1222,55289-0424-30 ",.01)
 ;;55289-0424-30
 ;;9002226.02101,"1222,55289-0424-30 ",.02)
 ;;55289-0424-30
 ;;9002226.02101,"1222,55289-0606-30 ",.01)
 ;;55289-0606-30
 ;;9002226.02101,"1222,55289-0606-30 ",.02)
 ;;55289-0606-30
 ;;9002226.02101,"1222,55289-0606-90 ",.01)
 ;;55289-0606-90
 ;;9002226.02101,"1222,55289-0606-90 ",.02)
 ;;55289-0606-90
 ;;9002226.02101,"1222,55289-0779-07 ",.01)
 ;;55289-0779-07
 ;;9002226.02101,"1222,55289-0779-07 ",.02)
 ;;55289-0779-07
 ;;9002226.02101,"1222,55289-0806-14 ",.01)
 ;;55289-0806-14
 ;;9002226.02101,"1222,55289-0806-14 ",.02)
 ;;55289-0806-14
 ;;9002226.02101,"1222,55289-0806-30 ",.01)
 ;;55289-0806-30
 ;;9002226.02101,"1222,55289-0806-30 ",.02)
 ;;55289-0806-30
 ;;9002226.02101,"1222,55289-0806-60 ",.01)
 ;;55289-0806-60
 ;;9002226.02101,"1222,55289-0806-60 ",.02)
 ;;55289-0806-60
 ;;9002226.02101,"1222,55289-0806-86 ",.01)
 ;;55289-0806-86
 ;;9002226.02101,"1222,55289-0806-86 ",.02)
 ;;55289-0806-86
 ;;9002226.02101,"1222,55289-0806-90 ",.01)
 ;;55289-0806-90
 ;;9002226.02101,"1222,55289-0806-90 ",.02)
 ;;55289-0806-90
 ;;9002226.02101,"1222,55289-0806-93 ",.01)
 ;;55289-0806-93
 ;;9002226.02101,"1222,55289-0806-93 ",.02)
 ;;55289-0806-93
 ;;9002226.02101,"1222,55289-0892-01 ",.01)
 ;;55289-0892-01
 ;;9002226.02101,"1222,55289-0892-01 ",.02)
 ;;55289-0892-01
 ;;9002226.02101,"1222,55289-0892-14 ",.01)
 ;;55289-0892-14
 ;;9002226.02101,"1222,55289-0892-14 ",.02)
 ;;55289-0892-14
 ;;9002226.02101,"1222,55289-0892-15 ",.01)
 ;;55289-0892-15
 ;;9002226.02101,"1222,55289-0892-15 ",.02)
 ;;55289-0892-15
 ;;9002226.02101,"1222,55289-0892-30 ",.01)
 ;;55289-0892-30
 ;;9002226.02101,"1222,55289-0892-30 ",.02)
 ;;55289-0892-30
 ;;9002226.02101,"1222,55289-0892-60 ",.01)
 ;;55289-0892-60
 ;;9002226.02101,"1222,55289-0892-60 ",.02)
 ;;55289-0892-60
 ;;9002226.02101,"1222,55289-0892-86 ",.01)
 ;;55289-0892-86
 ;;9002226.02101,"1222,55289-0892-86 ",.02)
 ;;55289-0892-86
 ;;9002226.02101,"1222,55289-0892-90 ",.01)
 ;;55289-0892-90
 ;;9002226.02101,"1222,55289-0892-90 ",.02)
 ;;55289-0892-90
 ;;9002226.02101,"1222,55289-0892-93 ",.01)
 ;;55289-0892-93
 ;;9002226.02101,"1222,55289-0892-93 ",.02)
 ;;55289-0892-93
 ;;9002226.02101,"1222,55289-0892-98 ",.01)
 ;;55289-0892-98
 ;;9002226.02101,"1222,55289-0892-98 ",.02)
 ;;55289-0892-98
 ;;9002226.02101,"1222,55289-0976-01 ",.01)
 ;;55289-0976-01
 ;;9002226.02101,"1222,55289-0976-01 ",.02)
 ;;55289-0976-01
 ;;9002226.02101,"1222,55289-0976-14 ",.01)
 ;;55289-0976-14
 ;;9002226.02101,"1222,55289-0976-14 ",.02)
 ;;55289-0976-14
 ;;9002226.02101,"1222,55289-0976-30 ",.01)
 ;;55289-0976-30
 ;;9002226.02101,"1222,55289-0976-30 ",.02)
 ;;55289-0976-30
 ;;9002226.02101,"1222,55289-0976-60 ",.01)
 ;;55289-0976-60
 ;;9002226.02101,"1222,55289-0976-60 ",.02)
 ;;55289-0976-60
 ;;9002226.02101,"1222,55289-0976-90 ",.01)
 ;;55289-0976-90
 ;;9002226.02101,"1222,55289-0976-90 ",.02)
 ;;55289-0976-90
 ;;9002226.02101,"1222,55289-0976-93 ",.01)
 ;;55289-0976-93
 ;;9002226.02101,"1222,55289-0976-93 ",.02)
 ;;55289-0976-93
 ;;9002226.02101,"1222,55700-0022-30 ",.01)
 ;;55700-0022-30
 ;;9002226.02101,"1222,55700-0022-30 ",.02)
 ;;55700-0022-30
 ;;9002226.02101,"1222,55700-0256-30 ",.01)
 ;;55700-0256-30
 ;;9002226.02101,"1222,55700-0256-30 ",.02)
 ;;55700-0256-30
 ;;9002226.02101,"1222,55700-0256-60 ",.01)
 ;;55700-0256-60
 ;;9002226.02101,"1222,55700-0256-60 ",.02)
 ;;55700-0256-60
 ;;9002226.02101,"1222,55700-0256-90 ",.01)
 ;;55700-0256-90
 ;;9002226.02101,"1222,55700-0256-90 ",.02)
 ;;55700-0256-90
 ;;9002226.02101,"1222,55700-0395-30 ",.01)
 ;;55700-0395-30
 ;;9002226.02101,"1222,55700-0395-30 ",.02)
 ;;55700-0395-30
 ;;9002226.02101,"1222,55700-0395-60 ",.01)
 ;;55700-0395-60
 ;;9002226.02101,"1222,55700-0395-60 ",.02)
 ;;55700-0395-60
 ;;9002226.02101,"1222,55700-0395-90 ",.01)
 ;;55700-0395-90
 ;;9002226.02101,"1222,55700-0395-90 ",.02)
 ;;55700-0395-90
 ;;9002226.02101,"1222,57237-0020-01 ",.01)
 ;;57237-0020-01
 ;;9002226.02101,"1222,57237-0020-01 ",.02)
 ;;57237-0020-01
 ;;9002226.02101,"1222,57237-0021-01 ",.01)
 ;;57237-0021-01
 ;;9002226.02101,"1222,57237-0021-01 ",.02)
 ;;57237-0021-01
 ;;9002226.02101,"1222,57237-0021-05 ",.01)
 ;;57237-0021-05
 ;;9002226.02101,"1222,57237-0021-05 ",.02)
 ;;57237-0021-05
 ;;9002226.02101,"1222,57237-0021-99 ",.01)
 ;;57237-0021-99
 ;;9002226.02101,"1222,57237-0021-99 ",.02)
 ;;57237-0021-99
 ;;9002226.02101,"1222,57237-0022-01 ",.01)
 ;;57237-0022-01
 ;;9002226.02101,"1222,57237-0022-01 ",.02)
 ;;57237-0022-01
 ;;9002226.02101,"1222,57237-0022-05 ",.01)
 ;;57237-0022-05
 ;;9002226.02101,"1222,57237-0022-05 ",.02)
 ;;57237-0022-05
 ;;9002226.02101,"1222,57237-0022-99 ",.01)
 ;;57237-0022-99
 ;;9002226.02101,"1222,57237-0022-99 ",.02)
 ;;57237-0022-99
 ;;9002226.02101,"1222,57237-0023-01 ",.01)
 ;;57237-0023-01
 ;;9002226.02101,"1222,57237-0023-01 ",.02)
 ;;57237-0023-01
 ;;9002226.02101,"1222,57237-0023-05 ",.01)
 ;;57237-0023-05
 ;;9002226.02101,"1222,57237-0023-05 ",.02)
 ;;57237-0023-05
 ;;9002226.02101,"1222,57237-0024-01 ",.01)
 ;;57237-0024-01
 ;;9002226.02101,"1222,57237-0024-01 ",.02)
 ;;57237-0024-01
 ;;9002226.02101,"1222,57237-0024-05 ",.01)
 ;;57237-0024-05
 ;;9002226.02101,"1222,57237-0024-05 ",.02)
 ;;57237-0024-05
 ;;9002226.02101,"1222,57237-0025-01 ",.01)
 ;;57237-0025-01
 ;;9002226.02101,"1222,57237-0025-01 ",.02)
 ;;57237-0025-01
 ;;9002226.02101,"1222,57237-0025-05 ",.01)
 ;;57237-0025-05
 ;;9002226.02101,"1222,57237-0025-05 ",.02)
 ;;57237-0025-05
 ;;9002226.02101,"1222,57664-0398-13 ",.01)
 ;;57664-0398-13
 ;;9002226.02101,"1222,57664-0398-13 ",.02)
 ;;57664-0398-13
 ;;9002226.02101,"1222,57664-0398-18 ",.01)
 ;;57664-0398-18
 ;;9002226.02101,"1222,57664-0398-18 ",.02)
 ;;57664-0398-18
 ;;9002226.02101,"1222,57664-0398-88 ",.01)
 ;;57664-0398-88
 ;;9002226.02101,"1222,57664-0398-88 ",.02)
 ;;57664-0398-88
 ;;9002226.02101,"1222,57664-0399-13 ",.01)
 ;;57664-0399-13
 ;;9002226.02101,"1222,57664-0399-13 ",.02)
 ;;57664-0399-13
 ;;9002226.02101,"1222,57664-0399-18 ",.01)
 ;;57664-0399-18
 ;;9002226.02101,"1222,57664-0399-18 ",.02)
 ;;57664-0399-18
 ;;9002226.02101,"1222,57664-0399-88 ",.01)
 ;;57664-0399-88
 ;;9002226.02101,"1222,57664-0399-88 ",.02)
 ;;57664-0399-88
 ;;9002226.02101,"1222,58118-0321-03 ",.01)
 ;;58118-0321-03
 ;;9002226.02101,"1222,58118-0321-03 ",.02)
 ;;58118-0321-03
 ;;9002226.02101,"1222,58118-0321-06 ",.01)
 ;;58118-0321-06
 ;;9002226.02101,"1222,58118-0321-06 ",.02)
 ;;58118-0321-06
 ;;9002226.02101,"1222,58118-0322-03 ",.01)
 ;;58118-0322-03
 ;;9002226.02101,"1222,58118-0322-03 ",.02)
 ;;58118-0322-03
 ;;9002226.02101,"1222,58118-0322-06 ",.01)
 ;;58118-0322-06
 ;;9002226.02101,"1222,58118-0322-06 ",.02)
 ;;58118-0322-06
 ;;9002226.02101,"1222,58118-0461-06 ",.01)
 ;;58118-0461-06
 ;;9002226.02101,"1222,58118-0461-06 ",.02)
 ;;58118-0461-06
 ;;9002226.02101,"1222,58118-0461-08 ",.01)
 ;;58118-0461-08
 ;;9002226.02101,"1222,58118-0461-08 ",.02)
 ;;58118-0461-08
 ;;9002226.02101,"1222,58118-0461-09 ",.01)
 ;;58118-0461-09
 ;;9002226.02101,"1222,58118-0461-09 ",.02)
 ;;58118-0461-09
 ;;9002226.02101,"1222,58118-1452-03 ",.01)
 ;;58118-1452-03
 ;;9002226.02101,"1222,58118-1452-03 ",.02)
 ;;58118-1452-03
 ;;9002226.02101,"1222,58118-1452-06 ",.01)
 ;;58118-1452-06
 ;;9002226.02101,"1222,58118-1452-06 ",.02)
 ;;58118-1452-06
 ;;9002226.02101,"1222,58118-1452-09 ",.01)
 ;;58118-1452-09
 ;;9002226.02101,"1222,58118-1452-09 ",.02)
 ;;58118-1452-09
 ;;9002226.02101,"1222,58118-2331-03 ",.01)
 ;;58118-2331-03
 ;;9002226.02101,"1222,58118-2331-03 ",.02)
 ;;58118-2331-03
 ;;9002226.02101,"1222,58118-2331-09 ",.01)
 ;;58118-2331-09
 ;;9002226.02101,"1222,58118-2331-09 ",.02)
 ;;58118-2331-09
 ;;9002226.02101,"1222,58118-2332-03 ",.01)
 ;;58118-2332-03
 ;;9002226.02101,"1222,58118-2332-03 ",.02)
 ;;58118-2332-03
 ;;9002226.02101,"1222,58118-2332-09 ",.01)
 ;;58118-2332-09
 ;;9002226.02101,"1222,58118-2332-09 ",.02)
 ;;58118-2332-09
 ;;9002226.02101,"1222,58118-8343-08 ",.01)
 ;;58118-8343-08
 ;;9002226.02101,"1222,58118-8343-08 ",.02)
 ;;58118-8343-08
 ;;9002226.02101,"1222,58118-8343-09 ",.01)
 ;;58118-8343-09
 ;;9002226.02101,"1222,58118-8343-09 ",.02)
 ;;58118-8343-09
 ;;9002226.02101,"1222,58864-0027-14 ",.01)
 ;;58864-0027-14
 ;;9002226.02101,"1222,58864-0027-14 ",.02)
 ;;58864-0027-14
 ;;9002226.02101,"1222,58864-0027-30 ",.01)
 ;;58864-0027-30
 ;;9002226.02101,"1222,58864-0027-30 ",.02)
 ;;58864-0027-30
 ;;9002226.02101,"1222,58864-0027-60 ",.01)
 ;;58864-0027-60
 ;;9002226.02101,"1222,58864-0027-60 ",.02)
 ;;58864-0027-60
 ;;9002226.02101,"1222,58864-0027-90 ",.01)
 ;;58864-0027-90
 ;;9002226.02101,"1222,58864-0027-90 ",.02)
 ;;58864-0027-90
 ;;9002226.02101,"1222,58864-0161-30 ",.01)
 ;;58864-0161-30
 ;;9002226.02101,"1222,58864-0161-30 ",.02)
 ;;58864-0161-30
 ;;9002226.02101,"1222,58864-0161-60 ",.01)
 ;;58864-0161-60
 ;;9002226.02101,"1222,58864-0161-60 ",.02)
 ;;58864-0161-60
 ;;9002226.02101,"1222,58864-0224-30 ",.01)
 ;;58864-0224-30
 ;;9002226.02101,"1222,58864-0224-30 ",.02)
 ;;58864-0224-30
 ;;9002226.02101,"1222,58864-0224-60 ",.01)
 ;;58864-0224-60
 ;;9002226.02101,"1222,58864-0224-60 ",.02)
 ;;58864-0224-60