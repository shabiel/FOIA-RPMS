BGP44N20 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON SEP 11, 2013;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1195,55111-0468-01 ",.01)
 ;;55111-0468-01
 ;;9002226.02101,"1195,55111-0468-01 ",.02)
 ;;55111-0468-01
 ;;9002226.02101,"1195,55111-0468-05 ",.01)
 ;;55111-0468-05
 ;;9002226.02101,"1195,55111-0468-05 ",.02)
 ;;55111-0468-05
 ;;9002226.02101,"1195,55111-0469-01 ",.01)
 ;;55111-0469-01
 ;;9002226.02101,"1195,55111-0469-01 ",.02)
 ;;55111-0469-01
 ;;9002226.02101,"1195,55111-0469-05 ",.01)
 ;;55111-0469-05
 ;;9002226.02101,"1195,55111-0469-05 ",.02)
 ;;55111-0469-05
 ;;9002226.02101,"1195,55289-0093-30 ",.01)
 ;;55289-0093-30
 ;;9002226.02101,"1195,55289-0093-30 ",.02)
 ;;55289-0093-30
 ;;9002226.02101,"1195,55289-0093-60 ",.01)
 ;;55289-0093-60
 ;;9002226.02101,"1195,55289-0093-60 ",.02)
 ;;55289-0093-60
 ;;9002226.02101,"1195,55289-0093-90 ",.01)
 ;;55289-0093-90
 ;;9002226.02101,"1195,55289-0093-90 ",.02)
 ;;55289-0093-90
 ;;9002226.02101,"1195,55289-0093-93 ",.01)
 ;;55289-0093-93
 ;;9002226.02101,"1195,55289-0093-93 ",.02)
 ;;55289-0093-93
 ;;9002226.02101,"1195,55289-0227-01 ",.01)
 ;;55289-0227-01
 ;;9002226.02101,"1195,55289-0227-01 ",.02)
 ;;55289-0227-01
 ;;9002226.02101,"1195,55289-0227-30 ",.01)
 ;;55289-0227-30
 ;;9002226.02101,"1195,55289-0227-30 ",.02)
 ;;55289-0227-30
 ;;9002226.02101,"1195,55289-0227-90 ",.01)
 ;;55289-0227-90
 ;;9002226.02101,"1195,55289-0227-90 ",.02)
 ;;55289-0227-90
 ;;9002226.02101,"1195,55289-0228-01 ",.01)
 ;;55289-0228-01
 ;;9002226.02101,"1195,55289-0228-01 ",.02)
 ;;55289-0228-01
 ;;9002226.02101,"1195,55289-0228-03 ",.01)
 ;;55289-0228-03
 ;;9002226.02101,"1195,55289-0228-03 ",.02)
 ;;55289-0228-03
 ;;9002226.02101,"1195,55289-0228-06 ",.01)
 ;;55289-0228-06
 ;;9002226.02101,"1195,55289-0228-06 ",.02)
 ;;55289-0228-06
 ;;9002226.02101,"1195,55289-0228-14 ",.01)
 ;;55289-0228-14
 ;;9002226.02101,"1195,55289-0228-14 ",.02)
 ;;55289-0228-14
 ;;9002226.02101,"1195,55289-0228-30 ",.01)
 ;;55289-0228-30
 ;;9002226.02101,"1195,55289-0228-30 ",.02)
 ;;55289-0228-30
 ;;9002226.02101,"1195,55289-0228-60 ",.01)
 ;;55289-0228-60
 ;;9002226.02101,"1195,55289-0228-60 ",.02)
 ;;55289-0228-60
 ;;9002226.02101,"1195,55289-0228-90 ",.01)
 ;;55289-0228-90
 ;;9002226.02101,"1195,55289-0228-90 ",.02)
 ;;55289-0228-90
 ;;9002226.02101,"1195,55289-0233-01 ",.01)
 ;;55289-0233-01
 ;;9002226.02101,"1195,55289-0233-01 ",.02)
 ;;55289-0233-01
 ;;9002226.02101,"1195,55289-0233-12 ",.01)
 ;;55289-0233-12
 ;;9002226.02101,"1195,55289-0233-12 ",.02)
 ;;55289-0233-12
 ;;9002226.02101,"1195,55289-0233-60 ",.01)
 ;;55289-0233-60
 ;;9002226.02101,"1195,55289-0233-60 ",.02)
 ;;55289-0233-60
 ;;9002226.02101,"1195,55289-0233-90 ",.01)
 ;;55289-0233-90
 ;;9002226.02101,"1195,55289-0233-90 ",.02)
 ;;55289-0233-90
 ;;9002226.02101,"1195,55289-0234-01 ",.01)
 ;;55289-0234-01
 ;;9002226.02101,"1195,55289-0234-01 ",.02)
 ;;55289-0234-01
 ;;9002226.02101,"1195,55289-0234-30 ",.01)
 ;;55289-0234-30
 ;;9002226.02101,"1195,55289-0234-30 ",.02)
 ;;55289-0234-30
 ;;9002226.02101,"1195,55289-0234-90 ",.01)
 ;;55289-0234-90
 ;;9002226.02101,"1195,55289-0234-90 ",.02)
 ;;55289-0234-90
 ;;9002226.02101,"1195,55289-0254-30 ",.01)
 ;;55289-0254-30
 ;;9002226.02101,"1195,55289-0254-30 ",.02)
 ;;55289-0254-30
 ;;9002226.02101,"1195,55289-0382-30 ",.01)
 ;;55289-0382-30
 ;;9002226.02101,"1195,55289-0382-30 ",.02)
 ;;55289-0382-30
 ;;9002226.02101,"1195,55289-0382-93 ",.01)
 ;;55289-0382-93
 ;;9002226.02101,"1195,55289-0382-93 ",.02)
 ;;55289-0382-93
 ;;9002226.02101,"1195,55289-0413-30 ",.01)
 ;;55289-0413-30
 ;;9002226.02101,"1195,55289-0413-30 ",.02)
 ;;55289-0413-30
 ;;9002226.02101,"1195,55289-0413-60 ",.01)
 ;;55289-0413-60
 ;;9002226.02101,"1195,55289-0413-60 ",.02)
 ;;55289-0413-60
 ;;9002226.02101,"1195,55289-0413-90 ",.01)
 ;;55289-0413-90
 ;;9002226.02101,"1195,55289-0413-90 ",.02)
 ;;55289-0413-90
 ;;9002226.02101,"1195,55289-0413-93 ",.01)
 ;;55289-0413-93
 ;;9002226.02101,"1195,55289-0413-93 ",.02)
 ;;55289-0413-93
 ;;9002226.02101,"1195,55289-0413-94 ",.01)
 ;;55289-0413-94
 ;;9002226.02101,"1195,55289-0413-94 ",.02)
 ;;55289-0413-94
 ;;9002226.02101,"1195,55289-0587-30 ",.01)
 ;;55289-0587-30
 ;;9002226.02101,"1195,55289-0587-30 ",.02)
 ;;55289-0587-30
 ;;9002226.02101,"1195,55289-0627-30 ",.01)
 ;;55289-0627-30
 ;;9002226.02101,"1195,55289-0627-30 ",.02)
 ;;55289-0627-30
 ;;9002226.02101,"1195,55289-0630-30 ",.01)
 ;;55289-0630-30
 ;;9002226.02101,"1195,55289-0630-30 ",.02)
 ;;55289-0630-30
 ;;9002226.02101,"1195,55289-0630-90 ",.01)
 ;;55289-0630-90
 ;;9002226.02101,"1195,55289-0630-90 ",.02)
 ;;55289-0630-90
 ;;9002226.02101,"1195,55289-0653-30 ",.01)
 ;;55289-0653-30
 ;;9002226.02101,"1195,55289-0653-30 ",.02)
 ;;55289-0653-30
 ;;9002226.02101,"1195,55289-0653-90 ",.01)
 ;;55289-0653-90
 ;;9002226.02101,"1195,55289-0653-90 ",.02)
 ;;55289-0653-90
 ;;9002226.02101,"1195,55289-0855-30 ",.01)
 ;;55289-0855-30
 ;;9002226.02101,"1195,55289-0855-30 ",.02)
 ;;55289-0855-30
 ;;9002226.02101,"1195,55289-0902-30 ",.01)
 ;;55289-0902-30
 ;;9002226.02101,"1195,55289-0902-30 ",.02)
 ;;55289-0902-30
 ;;9002226.02101,"1195,55289-0986-30 ",.01)
 ;;55289-0986-30
 ;;9002226.02101,"1195,55289-0986-30 ",.02)
 ;;55289-0986-30
 ;;9002226.02101,"1195,55289-0988-30 ",.01)
 ;;55289-0988-30
 ;;9002226.02101,"1195,55289-0988-30 ",.02)
 ;;55289-0988-30
 ;;9002226.02101,"1195,55289-0993-30 ",.01)
 ;;55289-0993-30
 ;;9002226.02101,"1195,55289-0993-30 ",.02)
 ;;55289-0993-30
 ;;9002226.02101,"1195,55289-0993-60 ",.01)
 ;;55289-0993-60
 ;;9002226.02101,"1195,55289-0993-60 ",.02)
 ;;55289-0993-60
 ;;9002226.02101,"1195,55289-0993-90 ",.01)
 ;;55289-0993-90
 ;;9002226.02101,"1195,55289-0993-90 ",.02)
 ;;55289-0993-90
 ;;9002226.02101,"1195,57664-0166-08 ",.01)
 ;;57664-0166-08
 ;;9002226.02101,"1195,57664-0166-08 ",.02)
 ;;57664-0166-08
 ;;9002226.02101,"1195,57664-0166-18 ",.01)
 ;;57664-0166-18
 ;;9002226.02101,"1195,57664-0166-18 ",.02)
 ;;57664-0166-18
 ;;9002226.02101,"1195,57664-0166-52 ",.01)
 ;;57664-0166-52
 ;;9002226.02101,"1195,57664-0166-52 ",.02)
 ;;57664-0166-52
 ;;9002226.02101,"1195,57664-0166-58 ",.01)
 ;;57664-0166-58
 ;;9002226.02101,"1195,57664-0166-58 ",.02)
 ;;57664-0166-58
 ;;9002226.02101,"1195,57664-0167-08 ",.01)
 ;;57664-0167-08
 ;;9002226.02101,"1195,57664-0167-08 ",.02)
 ;;57664-0167-08
 ;;9002226.02101,"1195,57664-0167-18 ",.01)
 ;;57664-0167-18
 ;;9002226.02101,"1195,57664-0167-18 ",.02)
 ;;57664-0167-18
 ;;9002226.02101,"1195,57664-0167-52 ",.01)
 ;;57664-0167-52
 ;;9002226.02101,"1195,57664-0167-52 ",.02)
 ;;57664-0167-52
 ;;9002226.02101,"1195,57664-0167-58 ",.01)
 ;;57664-0167-58
 ;;9002226.02101,"1195,57664-0167-58 ",.02)
 ;;57664-0167-58
 ;;9002226.02101,"1195,57664-0242-13 ",.01)
 ;;57664-0242-13
 ;;9002226.02101,"1195,57664-0242-13 ",.02)
 ;;57664-0242-13
 ;;9002226.02101,"1195,57664-0242-18 ",.01)
 ;;57664-0242-18
 ;;9002226.02101,"1195,57664-0242-18 ",.02)
 ;;57664-0242-18
 ;;9002226.02101,"1195,57664-0242-88 ",.01)
 ;;57664-0242-88
 ;;9002226.02101,"1195,57664-0242-88 ",.02)
 ;;57664-0242-88
 ;;9002226.02101,"1195,57664-0244-13 ",.01)
 ;;57664-0244-13
 ;;9002226.02101,"1195,57664-0244-13 ",.02)
 ;;57664-0244-13
 ;;9002226.02101,"1195,57664-0244-18 ",.01)
 ;;57664-0244-18
 ;;9002226.02101,"1195,57664-0244-18 ",.02)
 ;;57664-0244-18
 ;;9002226.02101,"1195,57664-0244-88 ",.01)
 ;;57664-0244-88
 ;;9002226.02101,"1195,57664-0244-88 ",.02)
 ;;57664-0244-88
 ;;9002226.02101,"1195,57664-0245-13 ",.01)
 ;;57664-0245-13
 ;;9002226.02101,"1195,57664-0245-13 ",.02)
 ;;57664-0245-13
 ;;9002226.02101,"1195,57664-0245-18 ",.01)
 ;;57664-0245-18
 ;;9002226.02101,"1195,57664-0245-18 ",.02)
 ;;57664-0245-18
 ;;9002226.02101,"1195,57664-0245-88 ",.01)
 ;;57664-0245-88
 ;;9002226.02101,"1195,57664-0245-88 ",.02)
 ;;57664-0245-88
 ;;9002226.02101,"1195,57664-0247-13 ",.01)
 ;;57664-0247-13
 ;;9002226.02101,"1195,57664-0247-13 ",.02)
 ;;57664-0247-13
 ;;9002226.02101,"1195,57664-0247-18 ",.01)
 ;;57664-0247-18
 ;;9002226.02101,"1195,57664-0247-18 ",.02)
 ;;57664-0247-18
 ;;9002226.02101,"1195,57664-0247-88 ",.01)
 ;;57664-0247-88
 ;;9002226.02101,"1195,57664-0247-88 ",.02)
 ;;57664-0247-88
 ;;9002226.02101,"1195,57664-0264-18 ",.01)
 ;;57664-0264-18
 ;;9002226.02101,"1195,57664-0264-18 ",.02)
 ;;57664-0264-18
 ;;9002226.02101,"1195,57664-0264-88 ",.01)
 ;;57664-0264-88
 ;;9002226.02101,"1195,57664-0264-88 ",.02)
 ;;57664-0264-88
 ;;9002226.02101,"1195,57664-0265-18 ",.01)
 ;;57664-0265-18
 ;;9002226.02101,"1195,57664-0265-18 ",.02)
 ;;57664-0265-18
 ;;9002226.02101,"1195,57664-0265-88 ",.01)
 ;;57664-0265-88
 ;;9002226.02101,"1195,57664-0265-88 ",.02)
 ;;57664-0265-88
 ;;9002226.02101,"1195,57664-0266-18 ",.01)
 ;;57664-0266-18
 ;;9002226.02101,"1195,57664-0266-18 ",.02)
 ;;57664-0266-18
 ;;9002226.02101,"1195,57664-0266-88 ",.01)
 ;;57664-0266-88
 ;;9002226.02101,"1195,57664-0266-88 ",.02)
 ;;57664-0266-88
 ;;9002226.02101,"1195,57664-0477-08 ",.01)
 ;;57664-0477-08
 ;;9002226.02101,"1195,57664-0477-08 ",.02)
 ;;57664-0477-08
 ;;9002226.02101,"1195,57664-0477-18 ",.01)
 ;;57664-0477-18
 ;;9002226.02101,"1195,57664-0477-18 ",.02)
 ;;57664-0477-18
 ;;9002226.02101,"1195,57664-0477-52 ",.01)
 ;;57664-0477-52
 ;;9002226.02101,"1195,57664-0477-52 ",.02)
 ;;57664-0477-52
 ;;9002226.02101,"1195,57664-0477-58 ",.01)
 ;;57664-0477-58
 ;;9002226.02101,"1195,57664-0477-58 ",.02)
 ;;57664-0477-58
 ;;9002226.02101,"1195,57664-0506-08 ",.01)
 ;;57664-0506-08
 ;;9002226.02101,"1195,57664-0506-08 ",.02)
 ;;57664-0506-08
 ;;9002226.02101,"1195,57664-0506-18 ",.01)
 ;;57664-0506-18
 ;;9002226.02101,"1195,57664-0506-18 ",.02)
 ;;57664-0506-18
 ;;9002226.02101,"1195,57664-0506-52 ",.01)
 ;;57664-0506-52
 ;;9002226.02101,"1195,57664-0506-52 ",.02)
 ;;57664-0506-52
 ;;9002226.02101,"1195,57664-0506-58 ",.01)
 ;;57664-0506-58
 ;;9002226.02101,"1195,57664-0506-58 ",.02)
 ;;57664-0506-58
 ;;9002226.02101,"1195,58016-0001-00 ",.01)
 ;;58016-0001-00
 ;;9002226.02101,"1195,58016-0001-00 ",.02)
 ;;58016-0001-00
 ;;9002226.02101,"1195,58016-0001-30 ",.01)
 ;;58016-0001-30
 ;;9002226.02101,"1195,58016-0001-30 ",.02)
 ;;58016-0001-30
 ;;9002226.02101,"1195,58016-0001-60 ",.01)
 ;;58016-0001-60
 ;;9002226.02101,"1195,58016-0001-60 ",.02)
 ;;58016-0001-60
 ;;9002226.02101,"1195,58016-0001-90 ",.01)
 ;;58016-0001-90
 ;;9002226.02101,"1195,58016-0001-90 ",.02)
 ;;58016-0001-90
 ;;9002226.02101,"1195,58016-0045-00 ",.01)
 ;;58016-0045-00
 ;;9002226.02101,"1195,58016-0045-00 ",.02)
 ;;58016-0045-00
 ;;9002226.02101,"1195,58016-0045-30 ",.01)
 ;;58016-0045-30
 ;;9002226.02101,"1195,58016-0045-30 ",.02)
 ;;58016-0045-30
 ;;9002226.02101,"1195,58016-0045-60 ",.01)
 ;;58016-0045-60
 ;;9002226.02101,"1195,58016-0045-60 ",.02)
 ;;58016-0045-60
 ;;9002226.02101,"1195,58016-0045-90 ",.01)
 ;;58016-0045-90
 ;;9002226.02101,"1195,58016-0045-90 ",.02)
 ;;58016-0045-90
 ;;9002226.02101,"1195,58016-0286-00 ",.01)
 ;;58016-0286-00
 ;;9002226.02101,"1195,58016-0286-00 ",.02)
 ;;58016-0286-00
 ;;9002226.02101,"1195,58016-0286-02 ",.01)
 ;;58016-0286-02
 ;;9002226.02101,"1195,58016-0286-02 ",.02)
 ;;58016-0286-02
 ;;9002226.02101,"1195,58016-0286-30 ",.01)
 ;;58016-0286-30
 ;;9002226.02101,"1195,58016-0286-30 ",.02)
 ;;58016-0286-30
 ;;9002226.02101,"1195,58016-0286-60 ",.01)
 ;;58016-0286-60
 ;;9002226.02101,"1195,58016-0286-60 ",.02)
 ;;58016-0286-60
 ;;9002226.02101,"1195,58016-0286-90 ",.01)
 ;;58016-0286-90
 ;;9002226.02101,"1195,58016-0286-90 ",.02)
 ;;58016-0286-90
 ;;9002226.02101,"1195,58016-0300-00 ",.01)
 ;;58016-0300-00
 ;;9002226.02101,"1195,58016-0300-00 ",.02)
 ;;58016-0300-00
 ;;9002226.02101,"1195,58016-0300-30 ",.01)
 ;;58016-0300-30
 ;;9002226.02101,"1195,58016-0300-30 ",.02)
 ;;58016-0300-30
 ;;9002226.02101,"1195,58016-0300-60 ",.01)
 ;;58016-0300-60
 ;;9002226.02101,"1195,58016-0300-60 ",.02)
 ;;58016-0300-60
 ;;9002226.02101,"1195,58016-0300-90 ",.01)
 ;;58016-0300-90
 ;;9002226.02101,"1195,58016-0300-90 ",.02)
 ;;58016-0300-90
 ;;9002226.02101,"1195,58016-0331-00 ",.01)
 ;;58016-0331-00
 ;;9002226.02101,"1195,58016-0331-00 ",.02)
 ;;58016-0331-00
 ;;9002226.02101,"1195,58016-0331-30 ",.01)
 ;;58016-0331-30
 ;;9002226.02101,"1195,58016-0331-30 ",.02)
 ;;58016-0331-30
 ;;9002226.02101,"1195,58016-0331-60 ",.01)
 ;;58016-0331-60
 ;;9002226.02101,"1195,58016-0331-60 ",.02)
 ;;58016-0331-60
 ;;9002226.02101,"1195,58016-0331-90 ",.01)
 ;;58016-0331-90
 ;;9002226.02101,"1195,58016-0331-90 ",.02)
 ;;58016-0331-90
 ;;9002226.02101,"1195,58016-0333-00 ",.01)
 ;;58016-0333-00
 ;;9002226.02101,"1195,58016-0333-00 ",.02)
 ;;58016-0333-00
 ;;9002226.02101,"1195,58016-0333-15 ",.01)
 ;;58016-0333-15
 ;;9002226.02101,"1195,58016-0333-15 ",.02)
 ;;58016-0333-15
 ;;9002226.02101,"1195,58016-0333-30 ",.01)
 ;;58016-0333-30
 ;;9002226.02101,"1195,58016-0333-30 ",.02)
 ;;58016-0333-30
 ;;9002226.02101,"1195,58016-0333-60 ",.01)
 ;;58016-0333-60
 ;;9002226.02101,"1195,58016-0333-60 ",.02)
 ;;58016-0333-60
 ;;9002226.02101,"1195,58016-0373-00 ",.01)
 ;;58016-0373-00
 ;;9002226.02101,"1195,58016-0373-00 ",.02)
 ;;58016-0373-00
 ;;9002226.02101,"1195,58016-0373-02 ",.01)
 ;;58016-0373-02
 ;;9002226.02101,"1195,58016-0373-02 ",.02)
 ;;58016-0373-02
 ;;9002226.02101,"1195,58016-0373-30 ",.01)
 ;;58016-0373-30
 ;;9002226.02101,"1195,58016-0373-30 ",.02)
 ;;58016-0373-30
 ;;9002226.02101,"1195,58016-0373-60 ",.01)
 ;;58016-0373-60
 ;;9002226.02101,"1195,58016-0373-60 ",.02)
 ;;58016-0373-60
 ;;9002226.02101,"1195,58016-0373-90 ",.01)
 ;;58016-0373-90