BGP44I9 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON SEP 06, 2013;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1788,00378-0048-05 ",.02)
 ;;00378-0048-05
 ;;9002226.02101,"1788,00378-0048-77 ",.01)
 ;;00378-0048-77
 ;;9002226.02101,"1788,00378-0048-77 ",.02)
 ;;00378-0048-77
 ;;9002226.02101,"1788,00378-0048-93 ",.01)
 ;;00378-0048-93
 ;;9002226.02101,"1788,00378-0048-93 ",.02)
 ;;00378-0048-93
 ;;9002226.02101,"1788,00378-0197-01 ",.01)
 ;;00378-0197-01
 ;;9002226.02101,"1788,00378-0197-01 ",.02)
 ;;00378-0197-01
 ;;9002226.02101,"1788,00378-0197-05 ",.01)
 ;;00378-0197-05
 ;;9002226.02101,"1788,00378-0197-05 ",.02)
 ;;00378-0197-05
 ;;9002226.02101,"1788,00378-0210-01 ",.01)
 ;;00378-0210-01
 ;;9002226.02101,"1788,00378-0210-01 ",.02)
 ;;00378-0210-01
 ;;9002226.02101,"1788,00378-0210-10 ",.01)
 ;;00378-0210-10
 ;;9002226.02101,"1788,00378-0210-10 ",.02)
 ;;00378-0210-10
 ;;9002226.02101,"1788,00378-0215-01 ",.01)
 ;;00378-0215-01
 ;;9002226.02101,"1788,00378-0215-01 ",.02)
 ;;00378-0215-01
 ;;9002226.02101,"1788,00378-0215-05 ",.01)
 ;;00378-0215-05
 ;;9002226.02101,"1788,00378-0215-05 ",.02)
 ;;00378-0215-05
 ;;9002226.02101,"1788,00378-0217-01 ",.01)
 ;;00378-0217-01
 ;;9002226.02101,"1788,00378-0217-01 ",.02)
 ;;00378-0217-01
 ;;9002226.02101,"1788,00378-0228-05 ",.01)
 ;;00378-0228-05
 ;;9002226.02101,"1788,00378-0228-05 ",.02)
 ;;00378-0228-05
 ;;9002226.02101,"1788,00378-0228-77 ",.01)
 ;;00378-0228-77
 ;;9002226.02101,"1788,00378-0228-77 ",.02)
 ;;00378-0228-77
 ;;9002226.02101,"1788,00378-0228-93 ",.01)
 ;;00378-0228-93
 ;;9002226.02101,"1788,00378-0228-93 ",.02)
 ;;00378-0228-93
 ;;9002226.02101,"1788,00378-0234-01 ",.01)
 ;;00378-0234-01
 ;;9002226.02101,"1788,00378-0234-01 ",.02)
 ;;00378-0234-01
 ;;9002226.02101,"1788,00378-0234-05 ",.01)
 ;;00378-0234-05
 ;;9002226.02101,"1788,00378-0234-05 ",.02)
 ;;00378-0234-05
 ;;9002226.02101,"1788,00378-0240-01 ",.01)
 ;;00378-0240-01
 ;;9002226.02101,"1788,00378-0240-01 ",.02)
 ;;00378-0240-01
 ;;9002226.02101,"1788,00378-0244-01 ",.01)
 ;;00378-0244-01
 ;;9002226.02101,"1788,00378-0244-01 ",.02)
 ;;00378-0244-01
 ;;9002226.02101,"1788,00378-0318-05 ",.01)
 ;;00378-0318-05
 ;;9002226.02101,"1788,00378-0318-05 ",.02)
 ;;00378-0318-05
 ;;9002226.02101,"1788,00378-0318-77 ",.01)
 ;;00378-0318-77
 ;;9002226.02101,"1788,00378-0318-77 ",.02)
 ;;00378-0318-77
 ;;9002226.02101,"1788,00378-0318-93 ",.01)
 ;;00378-0318-93
 ;;9002226.02101,"1788,00378-0318-93 ",.02)
 ;;00378-0318-93
 ;;9002226.02101,"1788,00378-0350-01 ",.01)
 ;;00378-0350-01
 ;;9002226.02101,"1788,00378-0350-01 ",.02)
 ;;00378-0350-01
 ;;9002226.02101,"1788,00378-0352-01 ",.01)
 ;;00378-0352-01
 ;;9002226.02101,"1788,00378-0352-01 ",.02)
 ;;00378-0352-01
 ;;9002226.02101,"1788,00378-0352-05 ",.01)
 ;;00378-0352-05
 ;;9002226.02101,"1788,00378-0352-05 ",.02)
 ;;00378-0352-05
 ;;9002226.02101,"1788,00378-0551-01 ",.01)
 ;;00378-0551-01
 ;;9002226.02101,"1788,00378-0551-01 ",.02)
 ;;00378-0551-01
 ;;9002226.02101,"1788,00378-1105-01 ",.01)
 ;;00378-1105-01
 ;;9002226.02101,"1788,00378-1105-01 ",.02)
 ;;00378-1105-01
 ;;9002226.02101,"1788,00378-1105-05 ",.01)
 ;;00378-1105-05
 ;;9002226.02101,"1788,00378-1105-05 ",.02)
 ;;00378-1105-05
 ;;9002226.02101,"1788,00378-1110-01 ",.01)
 ;;00378-1110-01
 ;;9002226.02101,"1788,00378-1110-01 ",.02)
 ;;00378-1110-01
 ;;9002226.02101,"1788,00378-1110-05 ",.01)
 ;;00378-1110-05
 ;;9002226.02101,"1788,00378-1110-05 ",.02)
 ;;00378-1110-05
 ;;9002226.02101,"1788,00378-1113-01 ",.01)
 ;;00378-1113-01
 ;;9002226.02101,"1788,00378-1113-01 ",.02)
 ;;00378-1113-01
 ;;9002226.02101,"1788,00378-1125-01 ",.01)
 ;;00378-1125-01
 ;;9002226.02101,"1788,00378-1125-01 ",.02)
 ;;00378-1125-01
 ;;9002226.02101,"1788,00378-1125-10 ",.01)
 ;;00378-1125-10
 ;;9002226.02101,"1788,00378-1125-10 ",.02)
 ;;00378-1125-10
 ;;9002226.02101,"1788,00378-1142-01 ",.01)
 ;;00378-1142-01
 ;;9002226.02101,"1788,00378-1142-01 ",.02)
 ;;00378-1142-01
 ;;9002226.02101,"1788,00378-1550-91 ",.01)
 ;;00378-1550-91
 ;;9002226.02101,"1788,00378-1550-91 ",.02)
 ;;00378-1550-91
 ;;9002226.02101,"1788,00378-1575-91 ",.01)
 ;;00378-1575-91
 ;;9002226.02101,"1788,00378-1575-91 ",.02)
 ;;00378-1575-91
 ;;9002226.02101,"1788,00378-3131-01 ",.01)
 ;;00378-3131-01
 ;;9002226.02101,"1788,00378-3131-01 ",.02)
 ;;00378-3131-01
 ;;9002226.02101,"1788,00378-3132-01 ",.01)
 ;;00378-3132-01
 ;;9002226.02101,"1788,00378-3132-01 ",.02)
 ;;00378-3132-01
 ;;9002226.02101,"1788,00378-3133-01 ",.01)
 ;;00378-3133-01
 ;;9002226.02101,"1788,00378-3133-01 ",.02)
 ;;00378-3133-01
 ;;9002226.02101,"1788,00378-4011-01 ",.01)
 ;;00378-4011-01
 ;;9002226.02101,"1788,00378-4011-01 ",.02)
 ;;00378-4011-01
 ;;9002226.02101,"1788,00378-4012-01 ",.01)
 ;;00378-4012-01
 ;;9002226.02101,"1788,00378-4012-01 ",.02)
 ;;00378-4012-01
 ;;9002226.02101,"1788,00378-4013-01 ",.01)
 ;;00378-4013-01
 ;;9002226.02101,"1788,00378-4013-01 ",.02)
 ;;00378-4013-01
 ;;9002226.02101,"1788,00378-7185-05 ",.01)
 ;;00378-7185-05
 ;;9002226.02101,"1788,00378-7185-05 ",.02)
 ;;00378-7185-05
 ;;9002226.02101,"1788,00378-7186-05 ",.01)
 ;;00378-7186-05
 ;;9002226.02101,"1788,00378-7186-05 ",.02)
 ;;00378-7186-05
 ;;9002226.02101,"1788,00378-7187-05 ",.01)
 ;;00378-7187-05
 ;;9002226.02101,"1788,00378-7187-05 ",.02)
 ;;00378-7187-05
 ;;9002226.02101,"1788,00406-2028-01 ",.01)
 ;;00406-2028-01
 ;;9002226.02101,"1788,00406-2028-01 ",.02)
 ;;00406-2028-01
 ;;9002226.02101,"1788,00406-2028-05 ",.01)
 ;;00406-2028-05
 ;;9002226.02101,"1788,00406-2028-05 ",.02)
 ;;00406-2028-05
 ;;9002226.02101,"1788,00406-2028-10 ",.01)
 ;;00406-2028-10
 ;;9002226.02101,"1788,00406-2028-10 ",.02)
 ;;00406-2028-10
 ;;9002226.02101,"1788,00406-2029-01 ",.01)
 ;;00406-2029-01
 ;;9002226.02101,"1788,00406-2029-01 ",.02)
 ;;00406-2029-01
 ;;9002226.02101,"1788,00406-2029-05 ",.01)
 ;;00406-2029-05
 ;;9002226.02101,"1788,00406-2029-05 ",.02)
 ;;00406-2029-05
 ;;9002226.02101,"1788,00406-2029-10 ",.01)
 ;;00406-2029-10
 ;;9002226.02101,"1788,00406-2029-10 ",.02)
 ;;00406-2029-10
 ;;9002226.02101,"1788,00406-2030-05 ",.01)
 ;;00406-2030-05
 ;;9002226.02101,"1788,00406-2030-05 ",.02)
 ;;00406-2030-05
 ;;9002226.02101,"1788,00406-2030-10 ",.01)
 ;;00406-2030-10
 ;;9002226.02101,"1788,00406-2030-10 ",.02)
 ;;00406-2030-10
 ;;9002226.02101,"1788,00440-7562-95 ",.01)
 ;;00440-7562-95
 ;;9002226.02101,"1788,00440-7562-95 ",.02)
 ;;00440-7562-95
 ;;9002226.02101,"1788,00440-7565-14 ",.01)
 ;;00440-7565-14
 ;;9002226.02101,"1788,00440-7565-14 ",.02)
 ;;00440-7565-14
 ;;9002226.02101,"1788,00440-7565-30 ",.01)
 ;;00440-7565-30
 ;;9002226.02101,"1788,00440-7565-30 ",.02)
 ;;00440-7565-30
 ;;9002226.02101,"1788,00440-7565-60 ",.01)
 ;;00440-7565-60
 ;;9002226.02101,"1788,00440-7565-60 ",.02)
 ;;00440-7565-60
 ;;9002226.02101,"1788,00440-7565-90 ",.01)
 ;;00440-7565-90
 ;;9002226.02101,"1788,00440-7565-90 ",.02)
 ;;00440-7565-90
 ;;9002226.02101,"1788,00440-7566-30 ",.01)
 ;;00440-7566-30
 ;;9002226.02101,"1788,00440-7566-30 ",.02)
 ;;00440-7566-30
 ;;9002226.02101,"1788,00440-7566-60 ",.01)
 ;;00440-7566-60
 ;;9002226.02101,"1788,00440-7566-60 ",.02)
 ;;00440-7566-60
 ;;9002226.02101,"1788,00440-7566-90 ",.01)
 ;;00440-7566-90
 ;;9002226.02101,"1788,00440-7566-90 ",.02)
 ;;00440-7566-90
 ;;9002226.02101,"1788,00440-7566-91 ",.01)
 ;;00440-7566-91
 ;;9002226.02101,"1788,00440-7566-91 ",.02)
 ;;00440-7566-91
 ;;9002226.02101,"1788,00440-7566-92 ",.01)
 ;;00440-7566-92
 ;;9002226.02101,"1788,00440-7566-92 ",.02)
 ;;00440-7566-92
 ;;9002226.02101,"1788,00440-7568-90 ",.01)
 ;;00440-7568-90
 ;;9002226.02101,"1788,00440-7568-90 ",.02)
 ;;00440-7568-90
 ;;9002226.02101,"1788,00440-7568-92 ",.01)
 ;;00440-7568-92
 ;;9002226.02101,"1788,00440-7568-92 ",.02)
 ;;00440-7568-92
 ;;9002226.02101,"1788,00440-7569-90 ",.01)
 ;;00440-7569-90
 ;;9002226.02101,"1788,00440-7569-90 ",.02)
 ;;00440-7569-90
 ;;9002226.02101,"1788,00440-7569-92 ",.01)
 ;;00440-7569-92
 ;;9002226.02101,"1788,00440-7569-92 ",.02)
 ;;00440-7569-92
 ;;9002226.02101,"1788,00440-7570-20 ",.01)
 ;;00440-7570-20
 ;;9002226.02101,"1788,00440-7570-20 ",.02)
 ;;00440-7570-20
 ;;9002226.02101,"1788,00440-7571-14 ",.01)
 ;;00440-7571-14
 ;;9002226.02101,"1788,00440-7571-14 ",.02)
 ;;00440-7571-14
 ;;9002226.02101,"1788,00440-7571-30 ",.01)
 ;;00440-7571-30
 ;;9002226.02101,"1788,00440-7571-30 ",.02)
 ;;00440-7571-30
 ;;9002226.02101,"1788,00440-7571-60 ",.01)
 ;;00440-7571-60
 ;;9002226.02101,"1788,00440-7571-60 ",.02)
 ;;00440-7571-60
 ;;9002226.02101,"1788,00440-7571-90 ",.01)
 ;;00440-7571-90
 ;;9002226.02101,"1788,00440-7571-90 ",.02)
 ;;00440-7571-90
 ;;9002226.02101,"1788,00440-7571-91 ",.01)
 ;;00440-7571-91
 ;;9002226.02101,"1788,00440-7571-91 ",.02)
 ;;00440-7571-91
 ;;9002226.02101,"1788,00440-7571-92 ",.01)
 ;;00440-7571-92
 ;;9002226.02101,"1788,00440-7571-92 ",.02)
 ;;00440-7571-92
 ;;9002226.02101,"1788,00440-7571-94 ",.01)
 ;;00440-7571-94
 ;;9002226.02101,"1788,00440-7571-94 ",.02)
 ;;00440-7571-94
 ;;9002226.02101,"1788,00440-7571-95 ",.01)
 ;;00440-7571-95
 ;;9002226.02101,"1788,00440-7571-95 ",.02)
 ;;00440-7571-95
 ;;9002226.02101,"1788,00440-7585-90 ",.01)
 ;;00440-7585-90
 ;;9002226.02101,"1788,00440-7585-90 ",.02)
 ;;00440-7585-90
 ;;9002226.02101,"1788,00440-7587-90 ",.01)
 ;;00440-7587-90
 ;;9002226.02101,"1788,00440-7587-90 ",.02)
 ;;00440-7587-90
 ;;9002226.02101,"1788,00440-7589-90 ",.01)
 ;;00440-7589-90
 ;;9002226.02101,"1788,00440-7589-90 ",.02)
 ;;00440-7589-90
 ;;9002226.02101,"1788,00440-7589-95 ",.01)
 ;;00440-7589-95
 ;;9002226.02101,"1788,00440-7589-95 ",.02)
 ;;00440-7589-95
 ;;9002226.02101,"1788,00440-7739-14 ",.01)
 ;;00440-7739-14
 ;;9002226.02101,"1788,00440-7739-14 ",.02)
 ;;00440-7739-14
 ;;9002226.02101,"1788,00440-7739-60 ",.01)
 ;;00440-7739-60
 ;;9002226.02101,"1788,00440-7739-60 ",.02)
 ;;00440-7739-60
 ;;9002226.02101,"1788,00440-7739-90 ",.01)
 ;;00440-7739-90
 ;;9002226.02101,"1788,00440-7739-90 ",.02)
 ;;00440-7739-90
 ;;9002226.02101,"1788,00440-7739-92 ",.01)
 ;;00440-7739-92
 ;;9002226.02101,"1788,00440-7739-92 ",.02)
 ;;00440-7739-92
 ;;9002226.02101,"1788,00440-7739-94 ",.01)
 ;;00440-7739-94
 ;;9002226.02101,"1788,00440-7739-94 ",.02)
 ;;00440-7739-94
 ;;9002226.02101,"1788,00440-7739-95 ",.01)
 ;;00440-7739-95
 ;;9002226.02101,"1788,00440-7739-95 ",.02)
 ;;00440-7739-95
 ;;9002226.02101,"1788,00440-7745-90 ",.01)
 ;;00440-7745-90
 ;;9002226.02101,"1788,00440-7745-90 ",.02)
 ;;00440-7745-90
 ;;9002226.02101,"1788,00440-7745-92 ",.01)
 ;;00440-7745-92
 ;;9002226.02101,"1788,00440-7745-92 ",.02)
 ;;00440-7745-92
 ;;9002226.02101,"1788,00440-7746-90 ",.01)
 ;;00440-7746-90
 ;;9002226.02101,"1788,00440-7746-90 ",.02)
 ;;00440-7746-90
 ;;9002226.02101,"1788,00440-7746-92 ",.01)
 ;;00440-7746-92
 ;;9002226.02101,"1788,00440-7746-92 ",.02)
 ;;00440-7746-92
 ;;9002226.02101,"1788,00440-7748-90 ",.01)
 ;;00440-7748-90
 ;;9002226.02101,"1788,00440-7748-90 ",.02)
 ;;00440-7748-90
 ;;9002226.02101,"1788,00440-7748-92 ",.01)
 ;;00440-7748-92
 ;;9002226.02101,"1788,00440-7748-92 ",.02)
 ;;00440-7748-92
 ;;9002226.02101,"1788,00591-0460-01 ",.01)
 ;;00591-0460-01
 ;;9002226.02101,"1788,00591-0460-01 ",.02)
 ;;00591-0460-01
 ;;9002226.02101,"1788,00591-0460-05 ",.01)
 ;;00591-0460-05
 ;;9002226.02101,"1788,00591-0460-05 ",.02)
 ;;00591-0460-05
 ;;9002226.02101,"1788,00591-0460-10 ",.01)
 ;;00591-0460-10
 ;;9002226.02101,"1788,00591-0460-10 ",.02)
 ;;00591-0460-10
 ;;9002226.02101,"1788,00591-0461-01 ",.01)
 ;;00591-0461-01
 ;;9002226.02101,"1788,00591-0461-01 ",.02)
 ;;00591-0461-01
 ;;9002226.02101,"1788,00591-0461-05 ",.01)
 ;;00591-0461-05
 ;;9002226.02101,"1788,00591-0461-05 ",.02)
 ;;00591-0461-05
 ;;9002226.02101,"1788,00591-0461-10 ",.01)
 ;;00591-0461-10
 ;;9002226.02101,"1788,00591-0461-10 ",.02)
 ;;00591-0461-10
 ;;9002226.02101,"1788,00591-0844-01 ",.01)
 ;;00591-0844-01
 ;;9002226.02101,"1788,00591-0844-01 ",.02)
 ;;00591-0844-01
 ;;9002226.02101,"1788,00591-0844-10 ",.01)
 ;;00591-0844-10
 ;;9002226.02101,"1788,00591-0844-10 ",.02)
 ;;00591-0844-10
 ;;9002226.02101,"1788,00591-0844-15 ",.01)
 ;;00591-0844-15
 ;;9002226.02101,"1788,00591-0844-15 ",.02)
 ;;00591-0844-15
 ;;9002226.02101,"1788,00591-0845-01 ",.01)
 ;;00591-0845-01
 ;;9002226.02101,"1788,00591-0845-01 ",.02)
 ;;00591-0845-01
 ;;9002226.02101,"1788,00591-0845-10 ",.01)
 ;;00591-0845-10
 ;;9002226.02101,"1788,00591-0845-10 ",.02)
 ;;00591-0845-10
 ;;9002226.02101,"1788,00591-0845-15 ",.01)
 ;;00591-0845-15
 ;;9002226.02101,"1788,00591-0845-15 ",.02)
 ;;00591-0845-15
 ;;9002226.02101,"1788,00591-0900-30 ",.01)
 ;;00591-0900-30
 ;;9002226.02101,"1788,00591-0900-30 ",.02)
 ;;00591-0900-30
 ;;9002226.02101,"1788,00591-2719-60 ",.01)
 ;;00591-2719-60
 ;;9002226.02101,"1788,00591-2719-60 ",.02)
 ;;00591-2719-60
 ;;9002226.02101,"1788,00591-2720-60 ",.01)
 ;;00591-2720-60
 ;;9002226.02101,"1788,00591-2720-60 ",.02)
 ;;00591-2720-60
 ;;9002226.02101,"1788,00591-3205-05 ",.01)
 ;;00591-3205-05
 ;;9002226.02101,"1788,00591-3205-05 ",.02)
 ;;00591-3205-05
 ;;9002226.02101,"1788,00591-3205-19 ",.01)
 ;;00591-3205-19
 ;;9002226.02101,"1788,00591-3205-19 ",.02)
 ;;00591-3205-19
 ;;9002226.02101,"1788,00591-3205-30 ",.01)
 ;;00591-3205-30
 ;;9002226.02101,"1788,00591-3205-30 ",.02)
 ;;00591-3205-30
 ;;9002226.02101,"1788,00591-3206-05 ",.01)
 ;;00591-3206-05
 ;;9002226.02101,"1788,00591-3206-05 ",.02)
 ;;00591-3206-05
 ;;9002226.02101,"1788,00591-3206-19 ",.01)
 ;;00591-3206-19
 ;;9002226.02101,"1788,00591-3206-19 ",.02)
 ;;00591-3206-19