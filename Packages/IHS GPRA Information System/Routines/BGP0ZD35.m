BGP0ZD35 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAY 23, 2010;
 ;;10.0;IHS CLINICAL REPORTING;;JUN 18, 2010
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"976,61392-0298-91 ",.02)
 ;;61392-0298-91
 ;;9002226.02101,"976,61392-0301-30 ",.01)
 ;;61392-0301-30
 ;;9002226.02101,"976,61392-0301-30 ",.02)
 ;;61392-0301-30
 ;;9002226.02101,"976,61392-0301-31 ",.01)
 ;;61392-0301-31
 ;;9002226.02101,"976,61392-0301-31 ",.02)
 ;;61392-0301-31
 ;;9002226.02101,"976,61392-0301-32 ",.01)
 ;;61392-0301-32
 ;;9002226.02101,"976,61392-0301-32 ",.02)
 ;;61392-0301-32
 ;;9002226.02101,"976,61392-0301-39 ",.01)
 ;;61392-0301-39
 ;;9002226.02101,"976,61392-0301-39 ",.02)
 ;;61392-0301-39
 ;;9002226.02101,"976,61392-0301-45 ",.01)
 ;;61392-0301-45
 ;;9002226.02101,"976,61392-0301-45 ",.02)
 ;;61392-0301-45
 ;;9002226.02101,"976,61392-0301-51 ",.01)
 ;;61392-0301-51
 ;;9002226.02101,"976,61392-0301-51 ",.02)
 ;;61392-0301-51
 ;;9002226.02101,"976,61392-0301-54 ",.01)
 ;;61392-0301-54
 ;;9002226.02101,"976,61392-0301-54 ",.02)
 ;;61392-0301-54
 ;;9002226.02101,"976,61392-0301-56 ",.01)
 ;;61392-0301-56
 ;;9002226.02101,"976,61392-0301-56 ",.02)
 ;;61392-0301-56
 ;;9002226.02101,"976,61392-0301-60 ",.01)
 ;;61392-0301-60
 ;;9002226.02101,"976,61392-0301-60 ",.02)
 ;;61392-0301-60
 ;;9002226.02101,"976,61392-0301-90 ",.01)
 ;;61392-0301-90
 ;;9002226.02101,"976,61392-0301-90 ",.02)
 ;;61392-0301-90
 ;;9002226.02101,"976,61392-0301-91 ",.01)
 ;;61392-0301-91
 ;;9002226.02101,"976,61392-0301-91 ",.02)
 ;;61392-0301-91
 ;;9002226.02101,"976,61392-0398-30 ",.01)
 ;;61392-0398-30
 ;;9002226.02101,"976,61392-0398-30 ",.02)
 ;;61392-0398-30
 ;;9002226.02101,"976,61392-0398-31 ",.01)
 ;;61392-0398-31
 ;;9002226.02101,"976,61392-0398-31 ",.02)
 ;;61392-0398-31
 ;;9002226.02101,"976,61392-0398-32 ",.01)
 ;;61392-0398-32
 ;;9002226.02101,"976,61392-0398-32 ",.02)
 ;;61392-0398-32
 ;;9002226.02101,"976,61392-0398-39 ",.01)
 ;;61392-0398-39
 ;;9002226.02101,"976,61392-0398-39 ",.02)
 ;;61392-0398-39
 ;;9002226.02101,"976,61392-0398-45 ",.01)
 ;;61392-0398-45
 ;;9002226.02101,"976,61392-0398-45 ",.02)
 ;;61392-0398-45
 ;;9002226.02101,"976,61392-0398-51 ",.01)
 ;;61392-0398-51
 ;;9002226.02101,"976,61392-0398-51 ",.02)
 ;;61392-0398-51
 ;;9002226.02101,"976,61392-0398-54 ",.01)
 ;;61392-0398-54
 ;;9002226.02101,"976,61392-0398-54 ",.02)
 ;;61392-0398-54
 ;;9002226.02101,"976,61392-0398-56 ",.01)
 ;;61392-0398-56
 ;;9002226.02101,"976,61392-0398-56 ",.02)
 ;;61392-0398-56
 ;;9002226.02101,"976,61392-0398-60 ",.01)
 ;;61392-0398-60
 ;;9002226.02101,"976,61392-0398-60 ",.02)
 ;;61392-0398-60
 ;;9002226.02101,"976,61392-0398-90 ",.01)
 ;;61392-0398-90
 ;;9002226.02101,"976,61392-0398-90 ",.02)
 ;;61392-0398-90
 ;;9002226.02101,"976,61392-0398-91 ",.01)
 ;;61392-0398-91
 ;;9002226.02101,"976,61392-0398-91 ",.02)
 ;;61392-0398-91
 ;;9002226.02101,"976,61392-0401-30 ",.01)
 ;;61392-0401-30
 ;;9002226.02101,"976,61392-0401-30 ",.02)
 ;;61392-0401-30
 ;;9002226.02101,"976,61392-0401-31 ",.01)
 ;;61392-0401-31
 ;;9002226.02101,"976,61392-0401-31 ",.02)
 ;;61392-0401-31
 ;;9002226.02101,"976,61392-0401-32 ",.01)
 ;;61392-0401-32
 ;;9002226.02101,"976,61392-0401-32 ",.02)
 ;;61392-0401-32
 ;;9002226.02101,"976,61392-0401-39 ",.01)
 ;;61392-0401-39
 ;;9002226.02101,"976,61392-0401-39 ",.02)
 ;;61392-0401-39
 ;;9002226.02101,"976,61392-0401-45 ",.01)
 ;;61392-0401-45
 ;;9002226.02101,"976,61392-0401-45 ",.02)
 ;;61392-0401-45
 ;;9002226.02101,"976,61392-0401-51 ",.01)
 ;;61392-0401-51
 ;;9002226.02101,"976,61392-0401-51 ",.02)
 ;;61392-0401-51
 ;;9002226.02101,"976,61392-0401-54 ",.01)
 ;;61392-0401-54
 ;;9002226.02101,"976,61392-0401-54 ",.02)
 ;;61392-0401-54
 ;;9002226.02101,"976,61392-0401-56 ",.01)
 ;;61392-0401-56
 ;;9002226.02101,"976,61392-0401-56 ",.02)
 ;;61392-0401-56
 ;;9002226.02101,"976,61392-0401-60 ",.01)
 ;;61392-0401-60
 ;;9002226.02101,"976,61392-0401-60 ",.02)
 ;;61392-0401-60
 ;;9002226.02101,"976,61392-0401-90 ",.01)
 ;;61392-0401-90
 ;;9002226.02101,"976,61392-0401-90 ",.02)
 ;;61392-0401-90
 ;;9002226.02101,"976,61392-0401-91 ",.01)
 ;;61392-0401-91
 ;;9002226.02101,"976,61392-0401-91 ",.02)
 ;;61392-0401-91
 ;;9002226.02101,"976,61392-0527-30 ",.01)
 ;;61392-0527-30
 ;;9002226.02101,"976,61392-0527-30 ",.02)
 ;;61392-0527-30
 ;;9002226.02101,"976,61392-0527-31 ",.01)
 ;;61392-0527-31
 ;;9002226.02101,"976,61392-0527-31 ",.02)
 ;;61392-0527-31
 ;;9002226.02101,"976,61392-0527-32 ",.01)
 ;;61392-0527-32
 ;;9002226.02101,"976,61392-0527-32 ",.02)
 ;;61392-0527-32
 ;;9002226.02101,"976,61392-0527-39 ",.01)
 ;;61392-0527-39
 ;;9002226.02101,"976,61392-0527-39 ",.02)
 ;;61392-0527-39
 ;;9002226.02101,"976,61392-0527-45 ",.01)
 ;;61392-0527-45
 ;;9002226.02101,"976,61392-0527-45 ",.02)
 ;;61392-0527-45
 ;;9002226.02101,"976,61392-0527-51 ",.01)
 ;;61392-0527-51
 ;;9002226.02101,"976,61392-0527-51 ",.02)
 ;;61392-0527-51
 ;;9002226.02101,"976,61392-0527-54 ",.01)
 ;;61392-0527-54
 ;;9002226.02101,"976,61392-0527-54 ",.02)
 ;;61392-0527-54
 ;;9002226.02101,"976,61392-0527-60 ",.01)
 ;;61392-0527-60
 ;;9002226.02101,"976,61392-0527-60 ",.02)
 ;;61392-0527-60
 ;;9002226.02101,"976,61392-0527-90 ",.01)
 ;;61392-0527-90
 ;;9002226.02101,"976,61392-0527-90 ",.02)
 ;;61392-0527-90
 ;;9002226.02101,"976,61392-0527-91 ",.01)
 ;;61392-0527-91
 ;;9002226.02101,"976,61392-0527-91 ",.02)
 ;;61392-0527-91
 ;;9002226.02101,"976,61392-0528-30 ",.01)
 ;;61392-0528-30
 ;;9002226.02101,"976,61392-0528-30 ",.02)
 ;;61392-0528-30
 ;;9002226.02101,"976,61392-0528-31 ",.01)
 ;;61392-0528-31
 ;;9002226.02101,"976,61392-0528-31 ",.02)
 ;;61392-0528-31
 ;;9002226.02101,"976,61392-0528-32 ",.01)
 ;;61392-0528-32
 ;;9002226.02101,"976,61392-0528-32 ",.02)
 ;;61392-0528-32
 ;;9002226.02101,"976,61392-0528-39 ",.01)
 ;;61392-0528-39
 ;;9002226.02101,"976,61392-0528-39 ",.02)
 ;;61392-0528-39
 ;;9002226.02101,"976,61392-0528-45 ",.01)
 ;;61392-0528-45
 ;;9002226.02101,"976,61392-0528-45 ",.02)
 ;;61392-0528-45
 ;;9002226.02101,"976,61392-0528-51 ",.01)
 ;;61392-0528-51
 ;;9002226.02101,"976,61392-0528-51 ",.02)
 ;;61392-0528-51
 ;;9002226.02101,"976,61392-0528-54 ",.01)
 ;;61392-0528-54
 ;;9002226.02101,"976,61392-0528-54 ",.02)
 ;;61392-0528-54
 ;;9002226.02101,"976,61392-0528-60 ",.01)
 ;;61392-0528-60
 ;;9002226.02101,"976,61392-0528-60 ",.02)
 ;;61392-0528-60
 ;;9002226.02101,"976,61392-0528-90 ",.01)
 ;;61392-0528-90
 ;;9002226.02101,"976,61392-0528-90 ",.02)
 ;;61392-0528-90
 ;;9002226.02101,"976,61392-0528-91 ",.01)
 ;;61392-0528-91
 ;;9002226.02101,"976,61392-0528-91 ",.02)
 ;;61392-0528-91
 ;;9002226.02101,"976,61392-0529-30 ",.01)
 ;;61392-0529-30
 ;;9002226.02101,"976,61392-0529-30 ",.02)
 ;;61392-0529-30
 ;;9002226.02101,"976,61392-0529-31 ",.01)
 ;;61392-0529-31
 ;;9002226.02101,"976,61392-0529-31 ",.02)
 ;;61392-0529-31
 ;;9002226.02101,"976,61392-0529-32 ",.01)
 ;;61392-0529-32
 ;;9002226.02101,"976,61392-0529-32 ",.02)
 ;;61392-0529-32
 ;;9002226.02101,"976,61392-0529-39 ",.01)
 ;;61392-0529-39
 ;;9002226.02101,"976,61392-0529-39 ",.02)
 ;;61392-0529-39
 ;;9002226.02101,"976,61392-0529-45 ",.01)
 ;;61392-0529-45
 ;;9002226.02101,"976,61392-0529-45 ",.02)
 ;;61392-0529-45
 ;;9002226.02101,"976,61392-0529-51 ",.01)
 ;;61392-0529-51
 ;;9002226.02101,"976,61392-0529-51 ",.02)
 ;;61392-0529-51
 ;;9002226.02101,"976,61392-0529-54 ",.01)
 ;;61392-0529-54
 ;;9002226.02101,"976,61392-0529-54 ",.02)
 ;;61392-0529-54
 ;;9002226.02101,"976,61392-0529-60 ",.01)
 ;;61392-0529-60
 ;;9002226.02101,"976,61392-0529-60 ",.02)
 ;;61392-0529-60
 ;;9002226.02101,"976,61392-0529-90 ",.01)
 ;;61392-0529-90
 ;;9002226.02101,"976,61392-0529-90 ",.02)
 ;;61392-0529-90
 ;;9002226.02101,"976,61392-0529-91 ",.01)
 ;;61392-0529-91
 ;;9002226.02101,"976,61392-0529-91 ",.02)
 ;;61392-0529-91
 ;;9002226.02101,"976,61392-0573-30 ",.01)
 ;;61392-0573-30
 ;;9002226.02101,"976,61392-0573-30 ",.02)
 ;;61392-0573-30
 ;;9002226.02101,"976,61392-0573-31 ",.01)
 ;;61392-0573-31
 ;;9002226.02101,"976,61392-0573-31 ",.02)
 ;;61392-0573-31
 ;;9002226.02101,"976,61392-0573-32 ",.01)
 ;;61392-0573-32
 ;;9002226.02101,"976,61392-0573-32 ",.02)
 ;;61392-0573-32
 ;;9002226.02101,"976,61392-0573-39 ",.01)
 ;;61392-0573-39
 ;;9002226.02101,"976,61392-0573-39 ",.02)
 ;;61392-0573-39
 ;;9002226.02101,"976,61392-0573-45 ",.01)
 ;;61392-0573-45
 ;;9002226.02101,"976,61392-0573-45 ",.02)
 ;;61392-0573-45
 ;;9002226.02101,"976,61392-0573-51 ",.01)
 ;;61392-0573-51
 ;;9002226.02101,"976,61392-0573-51 ",.02)
 ;;61392-0573-51
 ;;9002226.02101,"976,61392-0573-54 ",.01)
 ;;61392-0573-54
 ;;9002226.02101,"976,61392-0573-54 ",.02)
 ;;61392-0573-54
 ;;9002226.02101,"976,61392-0573-56 ",.01)
 ;;61392-0573-56
 ;;9002226.02101,"976,61392-0573-56 ",.02)
 ;;61392-0573-56
 ;;9002226.02101,"976,61392-0573-60 ",.01)
 ;;61392-0573-60
 ;;9002226.02101,"976,61392-0573-60 ",.02)
 ;;61392-0573-60
 ;;9002226.02101,"976,61392-0573-90 ",.01)
 ;;61392-0573-90
 ;;9002226.02101,"976,61392-0573-90 ",.02)
 ;;61392-0573-90
 ;;9002226.02101,"976,61392-0573-91 ",.01)
 ;;61392-0573-91
 ;;9002226.02101,"976,61392-0573-91 ",.02)
 ;;61392-0573-91
 ;;9002226.02101,"976,61392-0784-30 ",.01)
 ;;61392-0784-30
 ;;9002226.02101,"976,61392-0784-30 ",.02)
 ;;61392-0784-30
 ;;9002226.02101,"976,61392-0784-31 ",.01)
 ;;61392-0784-31
 ;;9002226.02101,"976,61392-0784-31 ",.02)
 ;;61392-0784-31
 ;;9002226.02101,"976,61392-0784-32 ",.01)
 ;;61392-0784-32
 ;;9002226.02101,"976,61392-0784-32 ",.02)
 ;;61392-0784-32
 ;;9002226.02101,"976,61392-0784-39 ",.01)
 ;;61392-0784-39
 ;;9002226.02101,"976,61392-0784-39 ",.02)
 ;;61392-0784-39
 ;;9002226.02101,"976,61392-0784-45 ",.01)
 ;;61392-0784-45
 ;;9002226.02101,"976,61392-0784-45 ",.02)
 ;;61392-0784-45
 ;;9002226.02101,"976,61392-0784-51 ",.01)
 ;;61392-0784-51
 ;;9002226.02101,"976,61392-0784-51 ",.02)
 ;;61392-0784-51
 ;;9002226.02101,"976,61392-0784-54 ",.01)
 ;;61392-0784-54
 ;;9002226.02101,"976,61392-0784-54 ",.02)
 ;;61392-0784-54
 ;;9002226.02101,"976,61392-0784-60 ",.01)
 ;;61392-0784-60
 ;;9002226.02101,"976,61392-0784-60 ",.02)
 ;;61392-0784-60
 ;;9002226.02101,"976,61392-0784-90 ",.01)
 ;;61392-0784-90
 ;;9002226.02101,"976,61392-0784-90 ",.02)
 ;;61392-0784-90
 ;;9002226.02101,"976,61392-0784-91 ",.01)
 ;;61392-0784-91
 ;;9002226.02101,"976,61392-0784-91 ",.02)
 ;;61392-0784-91
 ;;9002226.02101,"976,61392-0785-30 ",.01)
 ;;61392-0785-30
 ;;9002226.02101,"976,61392-0785-30 ",.02)
 ;;61392-0785-30
 ;;9002226.02101,"976,61392-0785-31 ",.01)
 ;;61392-0785-31
 ;;9002226.02101,"976,61392-0785-31 ",.02)
 ;;61392-0785-31
 ;;9002226.02101,"976,61392-0785-32 ",.01)
 ;;61392-0785-32
 ;;9002226.02101,"976,61392-0785-32 ",.02)
 ;;61392-0785-32
 ;;9002226.02101,"976,61392-0785-39 ",.01)
 ;;61392-0785-39
 ;;9002226.02101,"976,61392-0785-39 ",.02)
 ;;61392-0785-39
 ;;9002226.02101,"976,61392-0785-45 ",.01)
 ;;61392-0785-45
 ;;9002226.02101,"976,61392-0785-45 ",.02)
 ;;61392-0785-45
 ;;9002226.02101,"976,61392-0785-51 ",.01)
 ;;61392-0785-51
 ;;9002226.02101,"976,61392-0785-51 ",.02)
 ;;61392-0785-51
 ;;9002226.02101,"976,61392-0785-54 ",.01)
 ;;61392-0785-54
 ;;9002226.02101,"976,61392-0785-54 ",.02)
 ;;61392-0785-54
 ;;9002226.02101,"976,61392-0785-60 ",.01)
 ;;61392-0785-60
 ;;9002226.02101,"976,61392-0785-60 ",.02)
 ;;61392-0785-60
 ;;9002226.02101,"976,61392-0785-90 ",.01)
 ;;61392-0785-90
 ;;9002226.02101,"976,61392-0785-90 ",.02)
 ;;61392-0785-90
 ;;9002226.02101,"976,61392-0785-91 ",.01)
 ;;61392-0785-91
 ;;9002226.02101,"976,61392-0785-91 ",.02)
 ;;61392-0785-91
 ;;9002226.02101,"976,61562-0077-11 ",.01)
 ;;61562-0077-11
 ;;9002226.02101,"976,61562-0077-11 ",.02)
 ;;61562-0077-11
 ;;9002226.02101,"976,62037-0520-01 ",.01)
 ;;62037-0520-01
 ;;9002226.02101,"976,62037-0520-01 ",.02)
 ;;62037-0520-01
 ;;9002226.02101,"976,62037-0826-75 ",.01)
 ;;62037-0826-75
 ;;9002226.02101,"976,62037-0826-75 ",.02)
 ;;62037-0826-75
 ;;9002226.02101,"976,62584-0746-01 ",.01)
 ;;62584-0746-01
 ;;9002226.02101,"976,62584-0746-01 ",.02)
 ;;62584-0746-01
 ;;9002226.02101,"976,62584-0746-85 ",.01)
 ;;62584-0746-85
 ;;9002226.02101,"976,62584-0746-85 ",.02)
 ;;62584-0746-85
 ;;9002226.02101,"976,62584-0747-01 ",.01)
 ;;62584-0747-01
 ;;9002226.02101,"976,62584-0747-01 ",.02)
 ;;62584-0747-01
 ;;9002226.02101,"976,62584-0747-85 ",.01)
 ;;62584-0747-85
 ;;9002226.02101,"976,62584-0747-85 ",.02)
 ;;62584-0747-85
 ;;9002226.02101,"976,62584-0748-01 ",.01)
 ;;62584-0748-01
 ;;9002226.02101,"976,62584-0748-01 ",.02)
 ;;62584-0748-01
 ;;9002226.02101,"976,62584-0748-85 ",.01)
 ;;62584-0748-85
 ;;9002226.02101,"976,62584-0748-85 ",.02)
 ;;62584-0748-85
 ;;9002226.02101,"976,62682-2019-01 ",.01)
 ;;62682-2019-01
 ;;9002226.02101,"976,62682-2019-01 ",.02)
 ;;62682-2019-01
 ;;9002226.02101,"976,62682-2019-02 ",.01)
 ;;62682-2019-02
 ;;9002226.02101,"976,62682-2019-02 ",.02)
 ;;62682-2019-02
 ;;9002226.02101,"976,62991-1081-01 ",.01)
 ;;62991-1081-01
 ;;9002226.02101,"976,62991-1081-01 ",.02)
 ;;62991-1081-01
 ;;9002226.02101,"976,62991-1081-02 ",.01)
 ;;62991-1081-02
 ;;9002226.02101,"976,62991-1081-02 ",.02)
 ;;62991-1081-02
 ;;9002226.02101,"976,62991-1081-03 ",.01)
 ;;62991-1081-03
 ;;9002226.02101,"976,62991-1081-03 ",.02)
 ;;62991-1081-03
 ;;9002226.02101,"976,62991-1081-04 ",.01)
 ;;62991-1081-04
 ;;9002226.02101,"976,62991-1081-04 ",.02)
 ;;62991-1081-04
 ;;9002226.02101,"976,62991-1088-01 ",.01)
 ;;62991-1088-01
 ;;9002226.02101,"976,62991-1088-01 ",.02)
 ;;62991-1088-01
 ;;9002226.02101,"976,62991-1088-02 ",.01)
 ;;62991-1088-02