BGP13T56 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"992,60505-2659-01 ",.02)
 ;;60505-2659-01
 ;;9002226.02101,"992,60760-0212-15 ",.01)
 ;;60760-0212-15
 ;;9002226.02101,"992,60760-0212-15 ",.02)
 ;;60760-0212-15
 ;;9002226.02101,"992,60760-0212-30 ",.01)
 ;;60760-0212-30
 ;;9002226.02101,"992,60760-0212-30 ",.02)
 ;;60760-0212-30
 ;;9002226.02101,"992,60760-0221-30 ",.01)
 ;;60760-0221-30
 ;;9002226.02101,"992,60760-0221-30 ",.02)
 ;;60760-0221-30
 ;;9002226.02101,"992,60760-0367-30 ",.01)
 ;;60760-0367-30
 ;;9002226.02101,"992,60760-0367-30 ",.02)
 ;;60760-0367-30
 ;;9002226.02101,"992,60760-0367-60 ",.01)
 ;;60760-0367-60
 ;;9002226.02101,"992,60760-0367-60 ",.02)
 ;;60760-0367-60
 ;;9002226.02101,"992,60760-0434-30 ",.01)
 ;;60760-0434-30
 ;;9002226.02101,"992,60760-0434-30 ",.02)
 ;;60760-0434-30
 ;;9002226.02101,"992,60760-0434-60 ",.01)
 ;;60760-0434-60
 ;;9002226.02101,"992,60760-0434-60 ",.02)
 ;;60760-0434-60
 ;;9002226.02101,"992,60760-0440-30 ",.01)
 ;;60760-0440-30
 ;;9002226.02101,"992,60760-0440-30 ",.02)
 ;;60760-0440-30
 ;;9002226.02101,"992,60760-0440-60 ",.01)
 ;;60760-0440-60
 ;;9002226.02101,"992,60760-0440-60 ",.02)
 ;;60760-0440-60
 ;;9002226.02101,"992,60760-0508-30 ",.01)
 ;;60760-0508-30
 ;;9002226.02101,"992,60760-0508-30 ",.02)
 ;;60760-0508-30
 ;;9002226.02101,"992,60760-0508-60 ",.01)
 ;;60760-0508-60
 ;;9002226.02101,"992,60760-0508-60 ",.02)
 ;;60760-0508-60
 ;;9002226.02101,"992,60760-0647-30 ",.01)
 ;;60760-0647-30
 ;;9002226.02101,"992,60760-0647-30 ",.02)
 ;;60760-0647-30
 ;;9002226.02101,"992,60760-0811-30 ",.01)
 ;;60760-0811-30
 ;;9002226.02101,"992,60760-0811-30 ",.02)
 ;;60760-0811-30
 ;;9002226.02101,"992,60760-0811-60 ",.01)
 ;;60760-0811-60
 ;;9002226.02101,"992,60760-0811-60 ",.02)
 ;;60760-0811-60
 ;;9002226.02101,"992,61392-0025-30 ",.01)
 ;;61392-0025-30
 ;;9002226.02101,"992,61392-0025-30 ",.02)
 ;;61392-0025-30
 ;;9002226.02101,"992,61392-0025-31 ",.01)
 ;;61392-0025-31
 ;;9002226.02101,"992,61392-0025-31 ",.02)
 ;;61392-0025-31
 ;;9002226.02101,"992,61392-0025-32 ",.01)
 ;;61392-0025-32
 ;;9002226.02101,"992,61392-0025-32 ",.02)
 ;;61392-0025-32
 ;;9002226.02101,"992,61392-0025-39 ",.01)
 ;;61392-0025-39
 ;;9002226.02101,"992,61392-0025-39 ",.02)
 ;;61392-0025-39
 ;;9002226.02101,"992,61392-0025-45 ",.01)
 ;;61392-0025-45
 ;;9002226.02101,"992,61392-0025-45 ",.02)
 ;;61392-0025-45
 ;;9002226.02101,"992,61392-0025-51 ",.01)
 ;;61392-0025-51
 ;;9002226.02101,"992,61392-0025-51 ",.02)
 ;;61392-0025-51
 ;;9002226.02101,"992,61392-0025-54 ",.01)
 ;;61392-0025-54
 ;;9002226.02101,"992,61392-0025-54 ",.02)
 ;;61392-0025-54
 ;;9002226.02101,"992,61392-0025-56 ",.01)
 ;;61392-0025-56
 ;;9002226.02101,"992,61392-0025-56 ",.02)
 ;;61392-0025-56
 ;;9002226.02101,"992,61392-0025-60 ",.01)
 ;;61392-0025-60
 ;;9002226.02101,"992,61392-0025-60 ",.02)
 ;;61392-0025-60
 ;;9002226.02101,"992,61392-0025-90 ",.01)
 ;;61392-0025-90
 ;;9002226.02101,"992,61392-0025-90 ",.02)
 ;;61392-0025-90
 ;;9002226.02101,"992,61392-0025-91 ",.01)
 ;;61392-0025-91
 ;;9002226.02101,"992,61392-0025-91 ",.02)
 ;;61392-0025-91
 ;;9002226.02101,"992,61392-0026-30 ",.01)
 ;;61392-0026-30
 ;;9002226.02101,"992,61392-0026-30 ",.02)
 ;;61392-0026-30
 ;;9002226.02101,"992,61392-0026-31 ",.01)
 ;;61392-0026-31
 ;;9002226.02101,"992,61392-0026-31 ",.02)
 ;;61392-0026-31
 ;;9002226.02101,"992,61392-0026-32 ",.01)
 ;;61392-0026-32
 ;;9002226.02101,"992,61392-0026-32 ",.02)
 ;;61392-0026-32
 ;;9002226.02101,"992,61392-0026-39 ",.01)
 ;;61392-0026-39
 ;;9002226.02101,"992,61392-0026-39 ",.02)
 ;;61392-0026-39
 ;;9002226.02101,"992,61392-0026-45 ",.01)
 ;;61392-0026-45
 ;;9002226.02101,"992,61392-0026-45 ",.02)
 ;;61392-0026-45
 ;;9002226.02101,"992,61392-0026-51 ",.01)
 ;;61392-0026-51
 ;;9002226.02101,"992,61392-0026-51 ",.02)
 ;;61392-0026-51
 ;;9002226.02101,"992,61392-0026-54 ",.01)
 ;;61392-0026-54
 ;;9002226.02101,"992,61392-0026-54 ",.02)
 ;;61392-0026-54
 ;;9002226.02101,"992,61392-0026-56 ",.01)
 ;;61392-0026-56
 ;;9002226.02101,"992,61392-0026-56 ",.02)
 ;;61392-0026-56
 ;;9002226.02101,"992,61392-0026-60 ",.01)
 ;;61392-0026-60
 ;;9002226.02101,"992,61392-0026-60 ",.02)
 ;;61392-0026-60
 ;;9002226.02101,"992,61392-0026-90 ",.01)
 ;;61392-0026-90
 ;;9002226.02101,"992,61392-0026-90 ",.02)
 ;;61392-0026-90
 ;;9002226.02101,"992,61392-0026-91 ",.01)
 ;;61392-0026-91
 ;;9002226.02101,"992,61392-0026-91 ",.02)
 ;;61392-0026-91
 ;;9002226.02101,"992,61392-0027-30 ",.01)
 ;;61392-0027-30
 ;;9002226.02101,"992,61392-0027-30 ",.02)
 ;;61392-0027-30
 ;;9002226.02101,"992,61392-0027-31 ",.01)
 ;;61392-0027-31
 ;;9002226.02101,"992,61392-0027-31 ",.02)
 ;;61392-0027-31
 ;;9002226.02101,"992,61392-0027-32 ",.01)
 ;;61392-0027-32
 ;;9002226.02101,"992,61392-0027-32 ",.02)
 ;;61392-0027-32
 ;;9002226.02101,"992,61392-0027-39 ",.01)
 ;;61392-0027-39
 ;;9002226.02101,"992,61392-0027-39 ",.02)
 ;;61392-0027-39
 ;;9002226.02101,"992,61392-0027-45 ",.01)
 ;;61392-0027-45
 ;;9002226.02101,"992,61392-0027-45 ",.02)
 ;;61392-0027-45
 ;;9002226.02101,"992,61392-0027-51 ",.01)
 ;;61392-0027-51
 ;;9002226.02101,"992,61392-0027-51 ",.02)
 ;;61392-0027-51
 ;;9002226.02101,"992,61392-0027-54 ",.01)
 ;;61392-0027-54
 ;;9002226.02101,"992,61392-0027-54 ",.02)
 ;;61392-0027-54
 ;;9002226.02101,"992,61392-0027-56 ",.01)
 ;;61392-0027-56
 ;;9002226.02101,"992,61392-0027-56 ",.02)
 ;;61392-0027-56
 ;;9002226.02101,"992,61392-0027-60 ",.01)
 ;;61392-0027-60
 ;;9002226.02101,"992,61392-0027-60 ",.02)
 ;;61392-0027-60
 ;;9002226.02101,"992,61392-0027-90 ",.01)
 ;;61392-0027-90
 ;;9002226.02101,"992,61392-0027-90 ",.02)
 ;;61392-0027-90
 ;;9002226.02101,"992,61392-0027-91 ",.01)
 ;;61392-0027-91
 ;;9002226.02101,"992,61392-0027-91 ",.02)
 ;;61392-0027-91
 ;;9002226.02101,"992,61392-0071-30 ",.01)
 ;;61392-0071-30
 ;;9002226.02101,"992,61392-0071-30 ",.02)
 ;;61392-0071-30
 ;;9002226.02101,"992,61392-0071-31 ",.01)
 ;;61392-0071-31
 ;;9002226.02101,"992,61392-0071-31 ",.02)
 ;;61392-0071-31
 ;;9002226.02101,"992,61392-0071-32 ",.01)
 ;;61392-0071-32
 ;;9002226.02101,"992,61392-0071-32 ",.02)
 ;;61392-0071-32
 ;;9002226.02101,"992,61392-0071-39 ",.01)
 ;;61392-0071-39
 ;;9002226.02101,"992,61392-0071-39 ",.02)
 ;;61392-0071-39
 ;;9002226.02101,"992,61392-0071-45 ",.01)
 ;;61392-0071-45
 ;;9002226.02101,"992,61392-0071-45 ",.02)
 ;;61392-0071-45
 ;;9002226.02101,"992,61392-0071-51 ",.01)
 ;;61392-0071-51
 ;;9002226.02101,"992,61392-0071-51 ",.02)
 ;;61392-0071-51
 ;;9002226.02101,"992,61392-0071-54 ",.01)
 ;;61392-0071-54
 ;;9002226.02101,"992,61392-0071-54 ",.02)
 ;;61392-0071-54
 ;;9002226.02101,"992,61392-0071-60 ",.01)
 ;;61392-0071-60
 ;;9002226.02101,"992,61392-0071-60 ",.02)
 ;;61392-0071-60
 ;;9002226.02101,"992,61392-0071-90 ",.01)
 ;;61392-0071-90
 ;;9002226.02101,"992,61392-0071-90 ",.02)
 ;;61392-0071-90
 ;;9002226.02101,"992,61392-0071-91 ",.01)
 ;;61392-0071-91
 ;;9002226.02101,"992,61392-0071-91 ",.02)
 ;;61392-0071-91
 ;;9002226.02101,"992,61392-0072-30 ",.01)
 ;;61392-0072-30
 ;;9002226.02101,"992,61392-0072-30 ",.02)
 ;;61392-0072-30
 ;;9002226.02101,"992,61392-0072-31 ",.01)
 ;;61392-0072-31
 ;;9002226.02101,"992,61392-0072-31 ",.02)
 ;;61392-0072-31
 ;;9002226.02101,"992,61392-0072-32 ",.01)
 ;;61392-0072-32
 ;;9002226.02101,"992,61392-0072-32 ",.02)
 ;;61392-0072-32
 ;;9002226.02101,"992,61392-0072-39 ",.01)
 ;;61392-0072-39
 ;;9002226.02101,"992,61392-0072-39 ",.02)
 ;;61392-0072-39
 ;;9002226.02101,"992,61392-0072-45 ",.01)
 ;;61392-0072-45
 ;;9002226.02101,"992,61392-0072-45 ",.02)
 ;;61392-0072-45
 ;;9002226.02101,"992,61392-0072-51 ",.01)
 ;;61392-0072-51
 ;;9002226.02101,"992,61392-0072-51 ",.02)
 ;;61392-0072-51
 ;;9002226.02101,"992,61392-0072-54 ",.01)
 ;;61392-0072-54
 ;;9002226.02101,"992,61392-0072-54 ",.02)
 ;;61392-0072-54
 ;;9002226.02101,"992,61392-0072-60 ",.01)
 ;;61392-0072-60
 ;;9002226.02101,"992,61392-0072-60 ",.02)
 ;;61392-0072-60
 ;;9002226.02101,"992,61392-0072-90 ",.01)
 ;;61392-0072-90
 ;;9002226.02101,"992,61392-0072-90 ",.02)
 ;;61392-0072-90
 ;;9002226.02101,"992,61392-0072-91 ",.01)
 ;;61392-0072-91
 ;;9002226.02101,"992,61392-0072-91 ",.02)
 ;;61392-0072-91
 ;;9002226.02101,"992,61392-0140-30 ",.01)
 ;;61392-0140-30
 ;;9002226.02101,"992,61392-0140-30 ",.02)
 ;;61392-0140-30
 ;;9002226.02101,"992,61392-0140-31 ",.01)
 ;;61392-0140-31
 ;;9002226.02101,"992,61392-0140-31 ",.02)
 ;;61392-0140-31
 ;;9002226.02101,"992,61392-0140-32 ",.01)
 ;;61392-0140-32
 ;;9002226.02101,"992,61392-0140-32 ",.02)
 ;;61392-0140-32
 ;;9002226.02101,"992,61392-0140-34 ",.01)
 ;;61392-0140-34
 ;;9002226.02101,"992,61392-0140-34 ",.02)
 ;;61392-0140-34
 ;;9002226.02101,"992,61392-0140-39 ",.01)
 ;;61392-0140-39
 ;;9002226.02101,"992,61392-0140-39 ",.02)
 ;;61392-0140-39
 ;;9002226.02101,"992,61392-0140-45 ",.01)
 ;;61392-0140-45
 ;;9002226.02101,"992,61392-0140-45 ",.02)
 ;;61392-0140-45
 ;;9002226.02101,"992,61392-0140-51 ",.01)
 ;;61392-0140-51
 ;;9002226.02101,"992,61392-0140-51 ",.02)
 ;;61392-0140-51
 ;;9002226.02101,"992,61392-0140-54 ",.01)
 ;;61392-0140-54
 ;;9002226.02101,"992,61392-0140-54 ",.02)
 ;;61392-0140-54
 ;;9002226.02101,"992,61392-0140-56 ",.01)
 ;;61392-0140-56
 ;;9002226.02101,"992,61392-0140-56 ",.02)
 ;;61392-0140-56
 ;;9002226.02101,"992,61392-0140-60 ",.01)
 ;;61392-0140-60
 ;;9002226.02101,"992,61392-0140-60 ",.02)
 ;;61392-0140-60
 ;;9002226.02101,"992,61392-0140-65 ",.01)
 ;;61392-0140-65
 ;;9002226.02101,"992,61392-0140-65 ",.02)
 ;;61392-0140-65
 ;;9002226.02101,"992,61392-0140-90 ",.01)
 ;;61392-0140-90
 ;;9002226.02101,"992,61392-0140-90 ",.02)
 ;;61392-0140-90
 ;;9002226.02101,"992,61392-0140-91 ",.01)
 ;;61392-0140-91
 ;;9002226.02101,"992,61392-0140-91 ",.02)
 ;;61392-0140-91
 ;;9002226.02101,"992,61392-0140-95 ",.01)
 ;;61392-0140-95
 ;;9002226.02101,"992,61392-0140-95 ",.02)
 ;;61392-0140-95
 ;;9002226.02101,"992,61392-0141-30 ",.01)
 ;;61392-0141-30
 ;;9002226.02101,"992,61392-0141-30 ",.02)
 ;;61392-0141-30
 ;;9002226.02101,"992,61392-0141-31 ",.01)
 ;;61392-0141-31
 ;;9002226.02101,"992,61392-0141-31 ",.02)
 ;;61392-0141-31
 ;;9002226.02101,"992,61392-0141-32 ",.01)
 ;;61392-0141-32
 ;;9002226.02101,"992,61392-0141-32 ",.02)
 ;;61392-0141-32
 ;;9002226.02101,"992,61392-0141-39 ",.01)
 ;;61392-0141-39
 ;;9002226.02101,"992,61392-0141-39 ",.02)
 ;;61392-0141-39
 ;;9002226.02101,"992,61392-0141-45 ",.01)
 ;;61392-0141-45
 ;;9002226.02101,"992,61392-0141-45 ",.02)
 ;;61392-0141-45
 ;;9002226.02101,"992,61392-0141-51 ",.01)
 ;;61392-0141-51
 ;;9002226.02101,"992,61392-0141-51 ",.02)
 ;;61392-0141-51
 ;;9002226.02101,"992,61392-0141-54 ",.01)
 ;;61392-0141-54
 ;;9002226.02101,"992,61392-0141-54 ",.02)
 ;;61392-0141-54
 ;;9002226.02101,"992,61392-0141-56 ",.01)
 ;;61392-0141-56
 ;;9002226.02101,"992,61392-0141-56 ",.02)
 ;;61392-0141-56
 ;;9002226.02101,"992,61392-0141-60 ",.01)
 ;;61392-0141-60
 ;;9002226.02101,"992,61392-0141-60 ",.02)
 ;;61392-0141-60
 ;;9002226.02101,"992,61392-0141-65 ",.01)
 ;;61392-0141-65
 ;;9002226.02101,"992,61392-0141-65 ",.02)
 ;;61392-0141-65
 ;;9002226.02101,"992,61392-0141-90 ",.01)
 ;;61392-0141-90
 ;;9002226.02101,"992,61392-0141-90 ",.02)
 ;;61392-0141-90
 ;;9002226.02101,"992,61392-0141-91 ",.01)
 ;;61392-0141-91
 ;;9002226.02101,"992,61392-0141-91 ",.02)
 ;;61392-0141-91
 ;;9002226.02101,"992,61392-0141-95 ",.01)
 ;;61392-0141-95
 ;;9002226.02101,"992,61392-0141-95 ",.02)
 ;;61392-0141-95
 ;;9002226.02101,"992,61392-0143-30 ",.01)
 ;;61392-0143-30
 ;;9002226.02101,"992,61392-0143-30 ",.02)
 ;;61392-0143-30
 ;;9002226.02101,"992,61392-0143-31 ",.01)
 ;;61392-0143-31
 ;;9002226.02101,"992,61392-0143-31 ",.02)
 ;;61392-0143-31
 ;;9002226.02101,"992,61392-0143-32 ",.01)
 ;;61392-0143-32
 ;;9002226.02101,"992,61392-0143-32 ",.02)
 ;;61392-0143-32
 ;;9002226.02101,"992,61392-0143-34 ",.01)
 ;;61392-0143-34
 ;;9002226.02101,"992,61392-0143-34 ",.02)
 ;;61392-0143-34
 ;;9002226.02101,"992,61392-0143-39 ",.01)
 ;;61392-0143-39
 ;;9002226.02101,"992,61392-0143-39 ",.02)
 ;;61392-0143-39
 ;;9002226.02101,"992,61392-0143-45 ",.01)
 ;;61392-0143-45
 ;;9002226.02101,"992,61392-0143-45 ",.02)
 ;;61392-0143-45
 ;;9002226.02101,"992,61392-0143-51 ",.01)
 ;;61392-0143-51
 ;;9002226.02101,"992,61392-0143-51 ",.02)
 ;;61392-0143-51
 ;;9002226.02101,"992,61392-0143-54 ",.01)
 ;;61392-0143-54
 ;;9002226.02101,"992,61392-0143-54 ",.02)
 ;;61392-0143-54
 ;;9002226.02101,"992,61392-0143-56 ",.01)
 ;;61392-0143-56
 ;;9002226.02101,"992,61392-0143-56 ",.02)
 ;;61392-0143-56