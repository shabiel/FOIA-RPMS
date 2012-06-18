BGP06B34 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAY 23, 2010;
 ;;10.0;IHS CLINICAL REPORTING;;JUN 18, 2010
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"975,61392-0140-65 ",.01)
 ;;61392-0140-65
 ;;9002226.02101,"975,61392-0140-65 ",.02)
 ;;61392-0140-65
 ;;9002226.02101,"975,61392-0140-90 ",.01)
 ;;61392-0140-90
 ;;9002226.02101,"975,61392-0140-90 ",.02)
 ;;61392-0140-90
 ;;9002226.02101,"975,61392-0140-91 ",.01)
 ;;61392-0140-91
 ;;9002226.02101,"975,61392-0140-91 ",.02)
 ;;61392-0140-91
 ;;9002226.02101,"975,61392-0140-95 ",.01)
 ;;61392-0140-95
 ;;9002226.02101,"975,61392-0140-95 ",.02)
 ;;61392-0140-95
 ;;9002226.02101,"975,61392-0141-30 ",.01)
 ;;61392-0141-30
 ;;9002226.02101,"975,61392-0141-30 ",.02)
 ;;61392-0141-30
 ;;9002226.02101,"975,61392-0141-31 ",.01)
 ;;61392-0141-31
 ;;9002226.02101,"975,61392-0141-31 ",.02)
 ;;61392-0141-31
 ;;9002226.02101,"975,61392-0141-32 ",.01)
 ;;61392-0141-32
 ;;9002226.02101,"975,61392-0141-32 ",.02)
 ;;61392-0141-32
 ;;9002226.02101,"975,61392-0141-39 ",.01)
 ;;61392-0141-39
 ;;9002226.02101,"975,61392-0141-39 ",.02)
 ;;61392-0141-39
 ;;9002226.02101,"975,61392-0141-45 ",.01)
 ;;61392-0141-45
 ;;9002226.02101,"975,61392-0141-45 ",.02)
 ;;61392-0141-45
 ;;9002226.02101,"975,61392-0141-51 ",.01)
 ;;61392-0141-51
 ;;9002226.02101,"975,61392-0141-51 ",.02)
 ;;61392-0141-51
 ;;9002226.02101,"975,61392-0141-54 ",.01)
 ;;61392-0141-54
 ;;9002226.02101,"975,61392-0141-54 ",.02)
 ;;61392-0141-54
 ;;9002226.02101,"975,61392-0141-56 ",.01)
 ;;61392-0141-56
 ;;9002226.02101,"975,61392-0141-56 ",.02)
 ;;61392-0141-56
 ;;9002226.02101,"975,61392-0141-60 ",.01)
 ;;61392-0141-60
 ;;9002226.02101,"975,61392-0141-60 ",.02)
 ;;61392-0141-60
 ;;9002226.02101,"975,61392-0141-65 ",.01)
 ;;61392-0141-65
 ;;9002226.02101,"975,61392-0141-65 ",.02)
 ;;61392-0141-65
 ;;9002226.02101,"975,61392-0141-90 ",.01)
 ;;61392-0141-90
 ;;9002226.02101,"975,61392-0141-90 ",.02)
 ;;61392-0141-90
 ;;9002226.02101,"975,61392-0141-91 ",.01)
 ;;61392-0141-91
 ;;9002226.02101,"975,61392-0141-91 ",.02)
 ;;61392-0141-91
 ;;9002226.02101,"975,61392-0141-95 ",.01)
 ;;61392-0141-95
 ;;9002226.02101,"975,61392-0141-95 ",.02)
 ;;61392-0141-95
 ;;9002226.02101,"975,61392-0143-30 ",.01)
 ;;61392-0143-30
 ;;9002226.02101,"975,61392-0143-30 ",.02)
 ;;61392-0143-30
 ;;9002226.02101,"975,61392-0143-31 ",.01)
 ;;61392-0143-31
 ;;9002226.02101,"975,61392-0143-31 ",.02)
 ;;61392-0143-31
 ;;9002226.02101,"975,61392-0143-32 ",.01)
 ;;61392-0143-32
 ;;9002226.02101,"975,61392-0143-32 ",.02)
 ;;61392-0143-32
 ;;9002226.02101,"975,61392-0143-34 ",.01)
 ;;61392-0143-34
 ;;9002226.02101,"975,61392-0143-34 ",.02)
 ;;61392-0143-34
 ;;9002226.02101,"975,61392-0143-39 ",.01)
 ;;61392-0143-39
 ;;9002226.02101,"975,61392-0143-39 ",.02)
 ;;61392-0143-39
 ;;9002226.02101,"975,61392-0143-45 ",.01)
 ;;61392-0143-45
 ;;9002226.02101,"975,61392-0143-45 ",.02)
 ;;61392-0143-45
 ;;9002226.02101,"975,61392-0143-51 ",.01)
 ;;61392-0143-51
 ;;9002226.02101,"975,61392-0143-51 ",.02)
 ;;61392-0143-51
 ;;9002226.02101,"975,61392-0143-54 ",.01)
 ;;61392-0143-54
 ;;9002226.02101,"975,61392-0143-54 ",.02)
 ;;61392-0143-54
 ;;9002226.02101,"975,61392-0143-56 ",.01)
 ;;61392-0143-56
 ;;9002226.02101,"975,61392-0143-56 ",.02)
 ;;61392-0143-56
 ;;9002226.02101,"975,61392-0143-60 ",.01)
 ;;61392-0143-60
 ;;9002226.02101,"975,61392-0143-60 ",.02)
 ;;61392-0143-60
 ;;9002226.02101,"975,61392-0143-65 ",.01)
 ;;61392-0143-65
 ;;9002226.02101,"975,61392-0143-65 ",.02)
 ;;61392-0143-65
 ;;9002226.02101,"975,61392-0143-90 ",.01)
 ;;61392-0143-90
 ;;9002226.02101,"975,61392-0143-90 ",.02)
 ;;61392-0143-90
 ;;9002226.02101,"975,61392-0143-91 ",.01)
 ;;61392-0143-91
 ;;9002226.02101,"975,61392-0143-91 ",.02)
 ;;61392-0143-91
 ;;9002226.02101,"975,61392-0143-95 ",.01)
 ;;61392-0143-95
 ;;9002226.02101,"975,61392-0143-95 ",.02)
 ;;61392-0143-95
 ;;9002226.02101,"975,61392-0153-30 ",.01)
 ;;61392-0153-30
 ;;9002226.02101,"975,61392-0153-30 ",.02)
 ;;61392-0153-30
 ;;9002226.02101,"975,61392-0153-31 ",.01)
 ;;61392-0153-31
 ;;9002226.02101,"975,61392-0153-31 ",.02)
 ;;61392-0153-31
 ;;9002226.02101,"975,61392-0153-32 ",.01)
 ;;61392-0153-32
 ;;9002226.02101,"975,61392-0153-32 ",.02)
 ;;61392-0153-32
 ;;9002226.02101,"975,61392-0153-39 ",.01)
 ;;61392-0153-39
 ;;9002226.02101,"975,61392-0153-39 ",.02)
 ;;61392-0153-39
 ;;9002226.02101,"975,61392-0153-45 ",.01)
 ;;61392-0153-45
 ;;9002226.02101,"975,61392-0153-45 ",.02)
 ;;61392-0153-45
 ;;9002226.02101,"975,61392-0153-51 ",.01)
 ;;61392-0153-51
 ;;9002226.02101,"975,61392-0153-51 ",.02)
 ;;61392-0153-51
 ;;9002226.02101,"975,61392-0153-54 ",.01)
 ;;61392-0153-54
 ;;9002226.02101,"975,61392-0153-54 ",.02)
 ;;61392-0153-54
 ;;9002226.02101,"975,61392-0153-56 ",.01)
 ;;61392-0153-56
 ;;9002226.02101,"975,61392-0153-56 ",.02)
 ;;61392-0153-56
 ;;9002226.02101,"975,61392-0153-60 ",.01)
 ;;61392-0153-60
 ;;9002226.02101,"975,61392-0153-60 ",.02)
 ;;61392-0153-60
 ;;9002226.02101,"975,61392-0153-90 ",.01)
 ;;61392-0153-90
 ;;9002226.02101,"975,61392-0153-90 ",.02)
 ;;61392-0153-90
 ;;9002226.02101,"975,61392-0153-91 ",.01)
 ;;61392-0153-91
 ;;9002226.02101,"975,61392-0153-91 ",.02)
 ;;61392-0153-91
 ;;9002226.02101,"975,61392-0234-30 ",.01)
 ;;61392-0234-30
 ;;9002226.02101,"975,61392-0234-30 ",.02)
 ;;61392-0234-30
 ;;9002226.02101,"975,61392-0234-51 ",.01)
 ;;61392-0234-51
 ;;9002226.02101,"975,61392-0234-51 ",.02)
 ;;61392-0234-51
 ;;9002226.02101,"975,61392-0234-54 ",.01)
 ;;61392-0234-54
 ;;9002226.02101,"975,61392-0234-54 ",.02)
 ;;61392-0234-54
 ;;9002226.02101,"975,61392-0234-56 ",.01)
 ;;61392-0234-56
 ;;9002226.02101,"975,61392-0234-56 ",.02)
 ;;61392-0234-56
 ;;9002226.02101,"975,61392-0234-60 ",.01)
 ;;61392-0234-60
 ;;9002226.02101,"975,61392-0234-60 ",.02)
 ;;61392-0234-60
 ;;9002226.02101,"975,61392-0234-90 ",.01)
 ;;61392-0234-90
 ;;9002226.02101,"975,61392-0234-90 ",.02)
 ;;61392-0234-90
 ;;9002226.02101,"975,61392-0234-91 ",.01)
 ;;61392-0234-91
 ;;9002226.02101,"975,61392-0234-91 ",.02)
 ;;61392-0234-91
 ;;9002226.02101,"975,61392-0235-15 ",.01)
 ;;61392-0235-15
 ;;9002226.02101,"975,61392-0235-15 ",.02)
 ;;61392-0235-15
 ;;9002226.02101,"975,61392-0235-30 ",.01)
 ;;61392-0235-30
 ;;9002226.02101,"975,61392-0235-30 ",.02)
 ;;61392-0235-30
 ;;9002226.02101,"975,61392-0235-45 ",.01)
 ;;61392-0235-45
 ;;9002226.02101,"975,61392-0235-45 ",.02)
 ;;61392-0235-45
 ;;9002226.02101,"975,61392-0235-51 ",.01)
 ;;61392-0235-51
 ;;9002226.02101,"975,61392-0235-51 ",.02)
 ;;61392-0235-51
 ;;9002226.02101,"975,61392-0235-54 ",.01)
 ;;61392-0235-54
 ;;9002226.02101,"975,61392-0235-54 ",.02)
 ;;61392-0235-54
 ;;9002226.02101,"975,61392-0235-56 ",.01)
 ;;61392-0235-56
 ;;9002226.02101,"975,61392-0235-56 ",.02)
 ;;61392-0235-56
 ;;9002226.02101,"975,61392-0235-60 ",.01)
 ;;61392-0235-60
 ;;9002226.02101,"975,61392-0235-60 ",.02)
 ;;61392-0235-60
 ;;9002226.02101,"975,61392-0235-90 ",.01)
 ;;61392-0235-90
 ;;9002226.02101,"975,61392-0235-90 ",.02)
 ;;61392-0235-90
 ;;9002226.02101,"975,61392-0235-91 ",.01)
 ;;61392-0235-91
 ;;9002226.02101,"975,61392-0235-91 ",.02)
 ;;61392-0235-91
 ;;9002226.02101,"975,61392-0361-30 ",.01)
 ;;61392-0361-30
 ;;9002226.02101,"975,61392-0361-30 ",.02)
 ;;61392-0361-30
 ;;9002226.02101,"975,61392-0361-31 ",.01)
 ;;61392-0361-31
 ;;9002226.02101,"975,61392-0361-31 ",.02)
 ;;61392-0361-31
 ;;9002226.02101,"975,61392-0361-32 ",.01)
 ;;61392-0361-32
 ;;9002226.02101,"975,61392-0361-32 ",.02)
 ;;61392-0361-32
 ;;9002226.02101,"975,61392-0361-39 ",.01)
 ;;61392-0361-39
 ;;9002226.02101,"975,61392-0361-39 ",.02)
 ;;61392-0361-39
 ;;9002226.02101,"975,61392-0361-45 ",.01)
 ;;61392-0361-45
 ;;9002226.02101,"975,61392-0361-45 ",.02)
 ;;61392-0361-45
 ;;9002226.02101,"975,61392-0361-51 ",.01)
 ;;61392-0361-51
 ;;9002226.02101,"975,61392-0361-51 ",.02)
 ;;61392-0361-51
 ;;9002226.02101,"975,61392-0361-54 ",.01)
 ;;61392-0361-54
 ;;9002226.02101,"975,61392-0361-54 ",.02)
 ;;61392-0361-54
 ;;9002226.02101,"975,61392-0361-56 ",.01)
 ;;61392-0361-56
 ;;9002226.02101,"975,61392-0361-56 ",.02)
 ;;61392-0361-56
 ;;9002226.02101,"975,61392-0361-60 ",.01)
 ;;61392-0361-60
 ;;9002226.02101,"975,61392-0361-60 ",.02)
 ;;61392-0361-60
 ;;9002226.02101,"975,61392-0361-90 ",.01)
 ;;61392-0361-90
 ;;9002226.02101,"975,61392-0361-90 ",.02)
 ;;61392-0361-90
 ;;9002226.02101,"975,61392-0361-91 ",.01)
 ;;61392-0361-91
 ;;9002226.02101,"975,61392-0361-91 ",.02)
 ;;61392-0361-91
 ;;9002226.02101,"975,61392-0364-30 ",.01)
 ;;61392-0364-30
 ;;9002226.02101,"975,61392-0364-30 ",.02)
 ;;61392-0364-30
 ;;9002226.02101,"975,61392-0364-31 ",.01)
 ;;61392-0364-31
 ;;9002226.02101,"975,61392-0364-31 ",.02)
 ;;61392-0364-31
 ;;9002226.02101,"975,61392-0364-32 ",.01)
 ;;61392-0364-32
 ;;9002226.02101,"975,61392-0364-32 ",.02)
 ;;61392-0364-32
 ;;9002226.02101,"975,61392-0364-39 ",.01)
 ;;61392-0364-39
 ;;9002226.02101,"975,61392-0364-39 ",.02)
 ;;61392-0364-39
 ;;9002226.02101,"975,61392-0364-45 ",.01)
 ;;61392-0364-45
 ;;9002226.02101,"975,61392-0364-45 ",.02)
 ;;61392-0364-45
 ;;9002226.02101,"975,61392-0364-51 ",.01)
 ;;61392-0364-51
 ;;9002226.02101,"975,61392-0364-51 ",.02)
 ;;61392-0364-51
 ;;9002226.02101,"975,61392-0364-54 ",.01)
 ;;61392-0364-54
 ;;9002226.02101,"975,61392-0364-54 ",.02)
 ;;61392-0364-54
 ;;9002226.02101,"975,61392-0364-56 ",.01)
 ;;61392-0364-56
 ;;9002226.02101,"975,61392-0364-56 ",.02)
 ;;61392-0364-56
 ;;9002226.02101,"975,61392-0364-60 ",.01)
 ;;61392-0364-60
 ;;9002226.02101,"975,61392-0364-60 ",.02)
 ;;61392-0364-60
 ;;9002226.02101,"975,61392-0364-90 ",.01)
 ;;61392-0364-90
 ;;9002226.02101,"975,61392-0364-90 ",.02)
 ;;61392-0364-90
 ;;9002226.02101,"975,61392-0364-91 ",.01)
 ;;61392-0364-91
 ;;9002226.02101,"975,61392-0364-91 ",.02)
 ;;61392-0364-91
 ;;9002226.02101,"975,61392-0367-30 ",.01)
 ;;61392-0367-30
 ;;9002226.02101,"975,61392-0367-30 ",.02)
 ;;61392-0367-30
 ;;9002226.02101,"975,61392-0367-31 ",.01)
 ;;61392-0367-31
 ;;9002226.02101,"975,61392-0367-31 ",.02)
 ;;61392-0367-31
 ;;9002226.02101,"975,61392-0367-32 ",.01)
 ;;61392-0367-32
 ;;9002226.02101,"975,61392-0367-32 ",.02)
 ;;61392-0367-32
 ;;9002226.02101,"975,61392-0367-39 ",.01)
 ;;61392-0367-39
 ;;9002226.02101,"975,61392-0367-39 ",.02)
 ;;61392-0367-39
 ;;9002226.02101,"975,61392-0367-45 ",.01)
 ;;61392-0367-45
 ;;9002226.02101,"975,61392-0367-45 ",.02)
 ;;61392-0367-45
 ;;9002226.02101,"975,61392-0367-51 ",.01)
 ;;61392-0367-51
 ;;9002226.02101,"975,61392-0367-51 ",.02)
 ;;61392-0367-51
 ;;9002226.02101,"975,61392-0367-54 ",.01)
 ;;61392-0367-54
 ;;9002226.02101,"975,61392-0367-54 ",.02)
 ;;61392-0367-54
 ;;9002226.02101,"975,61392-0367-56 ",.01)
 ;;61392-0367-56
 ;;9002226.02101,"975,61392-0367-56 ",.02)
 ;;61392-0367-56
 ;;9002226.02101,"975,61392-0367-60 ",.01)
 ;;61392-0367-60
 ;;9002226.02101,"975,61392-0367-60 ",.02)
 ;;61392-0367-60
 ;;9002226.02101,"975,61392-0367-90 ",.01)
 ;;61392-0367-90
 ;;9002226.02101,"975,61392-0367-90 ",.02)
 ;;61392-0367-90
 ;;9002226.02101,"975,61392-0367-91 ",.01)
 ;;61392-0367-91
 ;;9002226.02101,"975,61392-0367-91 ",.02)
 ;;61392-0367-91
 ;;9002226.02101,"975,61392-0370-30 ",.01)
 ;;61392-0370-30
 ;;9002226.02101,"975,61392-0370-30 ",.02)
 ;;61392-0370-30
 ;;9002226.02101,"975,61392-0370-31 ",.01)
 ;;61392-0370-31
 ;;9002226.02101,"975,61392-0370-31 ",.02)
 ;;61392-0370-31
 ;;9002226.02101,"975,61392-0370-32 ",.01)
 ;;61392-0370-32
 ;;9002226.02101,"975,61392-0370-32 ",.02)
 ;;61392-0370-32
 ;;9002226.02101,"975,61392-0370-39 ",.01)
 ;;61392-0370-39
 ;;9002226.02101,"975,61392-0370-39 ",.02)
 ;;61392-0370-39
 ;;9002226.02101,"975,61392-0370-45 ",.01)
 ;;61392-0370-45
 ;;9002226.02101,"975,61392-0370-45 ",.02)
 ;;61392-0370-45
 ;;9002226.02101,"975,61392-0370-51 ",.01)
 ;;61392-0370-51
 ;;9002226.02101,"975,61392-0370-51 ",.02)
 ;;61392-0370-51
 ;;9002226.02101,"975,61392-0370-54 ",.01)
 ;;61392-0370-54
 ;;9002226.02101,"975,61392-0370-54 ",.02)
 ;;61392-0370-54
 ;;9002226.02101,"975,61392-0370-56 ",.01)
 ;;61392-0370-56
 ;;9002226.02101,"975,61392-0370-56 ",.02)
 ;;61392-0370-56
 ;;9002226.02101,"975,61392-0370-60 ",.01)
 ;;61392-0370-60
 ;;9002226.02101,"975,61392-0370-60 ",.02)
 ;;61392-0370-60
 ;;9002226.02101,"975,61392-0370-90 ",.01)
 ;;61392-0370-90
 ;;9002226.02101,"975,61392-0370-90 ",.02)
 ;;61392-0370-90
 ;;9002226.02101,"975,61392-0370-91 ",.01)
 ;;61392-0370-91
 ;;9002226.02101,"975,61392-0370-91 ",.02)
 ;;61392-0370-91
 ;;9002226.02101,"975,61392-0487-30 ",.01)
 ;;61392-0487-30
 ;;9002226.02101,"975,61392-0487-30 ",.02)
 ;;61392-0487-30
 ;;9002226.02101,"975,61392-0487-31 ",.01)
 ;;61392-0487-31
 ;;9002226.02101,"975,61392-0487-31 ",.02)
 ;;61392-0487-31
 ;;9002226.02101,"975,61392-0487-32 ",.01)
 ;;61392-0487-32
 ;;9002226.02101,"975,61392-0487-32 ",.02)
 ;;61392-0487-32
 ;;9002226.02101,"975,61392-0487-39 ",.01)
 ;;61392-0487-39
 ;;9002226.02101,"975,61392-0487-39 ",.02)
 ;;61392-0487-39
 ;;9002226.02101,"975,61392-0487-45 ",.01)
 ;;61392-0487-45
 ;;9002226.02101,"975,61392-0487-45 ",.02)
 ;;61392-0487-45
 ;;9002226.02101,"975,61392-0487-51 ",.01)
 ;;61392-0487-51
 ;;9002226.02101,"975,61392-0487-51 ",.02)
 ;;61392-0487-51
 ;;9002226.02101,"975,61392-0487-54 ",.01)
 ;;61392-0487-54
 ;;9002226.02101,"975,61392-0487-54 ",.02)
 ;;61392-0487-54
 ;;9002226.02101,"975,61392-0487-56 ",.01)
 ;;61392-0487-56
 ;;9002226.02101,"975,61392-0487-56 ",.02)
 ;;61392-0487-56
 ;;9002226.02101,"975,61392-0487-60 ",.01)
 ;;61392-0487-60
 ;;9002226.02101,"975,61392-0487-60 ",.02)
 ;;61392-0487-60