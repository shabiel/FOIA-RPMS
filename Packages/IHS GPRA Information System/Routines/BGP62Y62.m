BGP62Y62 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 11, 2016;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"868,54868-0153-01 ",.02)
 ;;54868-0153-01
 ;;9002226.02101,"868,54868-0153-03 ",.01)
 ;;54868-0153-03
 ;;9002226.02101,"868,54868-0153-03 ",.02)
 ;;54868-0153-03
 ;;9002226.02101,"868,54868-0153-05 ",.01)
 ;;54868-0153-05
 ;;9002226.02101,"868,54868-0153-05 ",.02)
 ;;54868-0153-05
 ;;9002226.02101,"868,54868-0153-08 ",.01)
 ;;54868-0153-08
 ;;9002226.02101,"868,54868-0153-08 ",.02)
 ;;54868-0153-08
 ;;9002226.02101,"868,54868-0153-09 ",.01)
 ;;54868-0153-09
 ;;9002226.02101,"868,54868-0153-09 ",.02)
 ;;54868-0153-09
 ;;9002226.02101,"868,54868-0154-00 ",.01)
 ;;54868-0154-00
 ;;9002226.02101,"868,54868-0154-00 ",.02)
 ;;54868-0154-00
 ;;9002226.02101,"868,54868-0154-01 ",.01)
 ;;54868-0154-01
 ;;9002226.02101,"868,54868-0154-01 ",.02)
 ;;54868-0154-01
 ;;9002226.02101,"868,54868-0154-02 ",.01)
 ;;54868-0154-02
 ;;9002226.02101,"868,54868-0154-02 ",.02)
 ;;54868-0154-02
 ;;9002226.02101,"868,54868-0154-03 ",.01)
 ;;54868-0154-03
 ;;9002226.02101,"868,54868-0154-03 ",.02)
 ;;54868-0154-03
 ;;9002226.02101,"868,54868-0154-04 ",.01)
 ;;54868-0154-04
 ;;9002226.02101,"868,54868-0154-04 ",.02)
 ;;54868-0154-04
 ;;9002226.02101,"868,54868-0154-06 ",.01)
 ;;54868-0154-06
 ;;9002226.02101,"868,54868-0154-06 ",.02)
 ;;54868-0154-06
 ;;9002226.02101,"868,54868-0154-07 ",.01)
 ;;54868-0154-07
 ;;9002226.02101,"868,54868-0154-07 ",.02)
 ;;54868-0154-07
 ;;9002226.02101,"868,54868-0154-08 ",.01)
 ;;54868-0154-08
 ;;9002226.02101,"868,54868-0154-08 ",.02)
 ;;54868-0154-08
 ;;9002226.02101,"868,54868-0154-09 ",.01)
 ;;54868-0154-09
 ;;9002226.02101,"868,54868-0154-09 ",.02)
 ;;54868-0154-09
 ;;9002226.02101,"868,54868-0191-01 ",.01)
 ;;54868-0191-01
 ;;9002226.02101,"868,54868-0191-01 ",.02)
 ;;54868-0191-01
 ;;9002226.02101,"868,54868-0191-02 ",.01)
 ;;54868-0191-02
 ;;9002226.02101,"868,54868-0191-02 ",.02)
 ;;54868-0191-02
 ;;9002226.02101,"868,54868-0191-03 ",.01)
 ;;54868-0191-03
 ;;9002226.02101,"868,54868-0191-03 ",.02)
 ;;54868-0191-03
 ;;9002226.02101,"868,54868-0191-04 ",.01)
 ;;54868-0191-04
 ;;9002226.02101,"868,54868-0191-04 ",.02)
 ;;54868-0191-04
 ;;9002226.02101,"868,54868-0191-05 ",.01)
 ;;54868-0191-05
 ;;9002226.02101,"868,54868-0191-05 ",.02)
 ;;54868-0191-05
 ;;9002226.02101,"868,54868-0191-06 ",.01)
 ;;54868-0191-06
 ;;9002226.02101,"868,54868-0191-06 ",.02)
 ;;54868-0191-06
 ;;9002226.02101,"868,54868-0199-00 ",.01)
 ;;54868-0199-00
 ;;9002226.02101,"868,54868-0199-00 ",.02)
 ;;54868-0199-00
 ;;9002226.02101,"868,54868-0199-03 ",.01)
 ;;54868-0199-03
 ;;9002226.02101,"868,54868-0199-03 ",.02)
 ;;54868-0199-03
 ;;9002226.02101,"868,54868-0200-00 ",.01)
 ;;54868-0200-00
 ;;9002226.02101,"868,54868-0200-00 ",.02)
 ;;54868-0200-00
 ;;9002226.02101,"868,54868-0200-01 ",.01)
 ;;54868-0200-01
 ;;9002226.02101,"868,54868-0200-01 ",.02)
 ;;54868-0200-01
 ;;9002226.02101,"868,54868-0224-01 ",.01)
 ;;54868-0224-01
 ;;9002226.02101,"868,54868-0224-01 ",.02)
 ;;54868-0224-01
 ;;9002226.02101,"868,54868-0224-03 ",.01)
 ;;54868-0224-03
 ;;9002226.02101,"868,54868-0224-03 ",.02)
 ;;54868-0224-03
 ;;9002226.02101,"868,54868-0224-04 ",.01)
 ;;54868-0224-04
 ;;9002226.02101,"868,54868-0224-04 ",.02)
 ;;54868-0224-04
 ;;9002226.02101,"868,54868-0224-06 ",.01)
 ;;54868-0224-06
 ;;9002226.02101,"868,54868-0224-06 ",.02)
 ;;54868-0224-06
 ;;9002226.02101,"868,54868-0286-00 ",.01)
 ;;54868-0286-00
 ;;9002226.02101,"868,54868-0286-00 ",.02)
 ;;54868-0286-00
 ;;9002226.02101,"868,54868-0333-01 ",.01)
 ;;54868-0333-01
 ;;9002226.02101,"868,54868-0333-01 ",.02)
 ;;54868-0333-01
 ;;9002226.02101,"868,54868-0333-02 ",.01)
 ;;54868-0333-02
 ;;9002226.02101,"868,54868-0333-02 ",.02)
 ;;54868-0333-02
 ;;9002226.02101,"868,54868-0333-04 ",.01)
 ;;54868-0333-04
 ;;9002226.02101,"868,54868-0333-04 ",.02)
 ;;54868-0333-04
 ;;9002226.02101,"868,54868-0333-06 ",.01)
 ;;54868-0333-06
 ;;9002226.02101,"868,54868-0333-06 ",.02)
 ;;54868-0333-06
 ;;9002226.02101,"868,54868-0333-07 ",.01)
 ;;54868-0333-07
 ;;9002226.02101,"868,54868-0333-07 ",.02)
 ;;54868-0333-07
 ;;9002226.02101,"868,54868-0337-00 ",.01)
 ;;54868-0337-00
 ;;9002226.02101,"868,54868-0337-00 ",.02)
 ;;54868-0337-00
 ;;9002226.02101,"868,54868-0337-01 ",.01)
 ;;54868-0337-01
 ;;9002226.02101,"868,54868-0337-01 ",.02)
 ;;54868-0337-01
 ;;9002226.02101,"868,54868-0337-03 ",.01)
 ;;54868-0337-03
 ;;9002226.02101,"868,54868-0337-03 ",.02)
 ;;54868-0337-03
 ;;9002226.02101,"868,54868-0388-01 ",.01)
 ;;54868-0388-01
 ;;9002226.02101,"868,54868-0388-01 ",.02)
 ;;54868-0388-01
 ;;9002226.02101,"868,54868-0388-02 ",.01)
 ;;54868-0388-02
 ;;9002226.02101,"868,54868-0388-02 ",.02)
 ;;54868-0388-02
 ;;9002226.02101,"868,54868-0388-04 ",.01)
 ;;54868-0388-04
 ;;9002226.02101,"868,54868-0388-04 ",.02)
 ;;54868-0388-04
 ;;9002226.02101,"868,54868-0388-05 ",.01)
 ;;54868-0388-05
 ;;9002226.02101,"868,54868-0388-05 ",.02)
 ;;54868-0388-05
 ;;9002226.02101,"868,54868-0425-00 ",.01)
 ;;54868-0425-00
 ;;9002226.02101,"868,54868-0425-00 ",.02)
 ;;54868-0425-00
 ;;9002226.02101,"868,54868-0538-01 ",.01)
 ;;54868-0538-01
 ;;9002226.02101,"868,54868-0538-01 ",.02)
 ;;54868-0538-01
 ;;9002226.02101,"868,54868-0538-02 ",.01)
 ;;54868-0538-02
 ;;9002226.02101,"868,54868-0538-02 ",.02)
 ;;54868-0538-02
 ;;9002226.02101,"868,54868-0559-00 ",.01)
 ;;54868-0559-00
 ;;9002226.02101,"868,54868-0559-00 ",.02)
 ;;54868-0559-00
 ;;9002226.02101,"868,54868-0654-00 ",.01)
 ;;54868-0654-00
 ;;9002226.02101,"868,54868-0654-00 ",.02)
 ;;54868-0654-00
 ;;9002226.02101,"868,54868-0737-01 ",.01)
 ;;54868-0737-01
 ;;9002226.02101,"868,54868-0737-01 ",.02)
 ;;54868-0737-01
 ;;9002226.02101,"868,54868-0840-00 ",.01)
 ;;54868-0840-00
 ;;9002226.02101,"868,54868-0840-00 ",.02)
 ;;54868-0840-00
 ;;9002226.02101,"868,54868-0840-01 ",.01)
 ;;54868-0840-01
 ;;9002226.02101,"868,54868-0840-01 ",.02)
 ;;54868-0840-01
 ;;9002226.02101,"868,54868-0840-02 ",.01)
 ;;54868-0840-02
 ;;9002226.02101,"868,54868-0840-02 ",.02)
 ;;54868-0840-02
 ;;9002226.02101,"868,54868-0840-03 ",.01)
 ;;54868-0840-03
 ;;9002226.02101,"868,54868-0840-03 ",.02)
 ;;54868-0840-03
 ;;9002226.02101,"868,54868-0840-04 ",.01)
 ;;54868-0840-04
 ;;9002226.02101,"868,54868-0840-04 ",.02)
 ;;54868-0840-04
 ;;9002226.02101,"868,54868-0937-00 ",.01)
 ;;54868-0937-00
 ;;9002226.02101,"868,54868-0937-00 ",.02)
 ;;54868-0937-00
 ;;9002226.02101,"868,54868-0937-01 ",.01)
 ;;54868-0937-01
 ;;9002226.02101,"868,54868-0937-01 ",.02)
 ;;54868-0937-01
 ;;9002226.02101,"868,54868-0937-02 ",.01)
 ;;54868-0937-02
 ;;9002226.02101,"868,54868-0937-02 ",.02)
 ;;54868-0937-02
 ;;9002226.02101,"868,54868-0939-05 ",.01)
 ;;54868-0939-05
 ;;9002226.02101,"868,54868-0939-05 ",.02)
 ;;54868-0939-05
 ;;9002226.02101,"868,54868-0971-00 ",.01)
 ;;54868-0971-00
 ;;9002226.02101,"868,54868-0971-00 ",.02)
 ;;54868-0971-00
 ;;9002226.02101,"868,54868-0971-01 ",.01)
 ;;54868-0971-01
 ;;9002226.02101,"868,54868-0971-01 ",.02)
 ;;54868-0971-01
 ;;9002226.02101,"868,54868-1080-00 ",.01)
 ;;54868-1080-00
 ;;9002226.02101,"868,54868-1080-00 ",.02)
 ;;54868-1080-00
 ;;9002226.02101,"868,54868-1080-01 ",.01)
 ;;54868-1080-01
 ;;9002226.02101,"868,54868-1080-01 ",.02)
 ;;54868-1080-01
 ;;9002226.02101,"868,54868-1080-03 ",.01)
 ;;54868-1080-03
 ;;9002226.02101,"868,54868-1080-03 ",.02)
 ;;54868-1080-03
 ;;9002226.02101,"868,54868-1171-00 ",.01)
 ;;54868-1171-00
 ;;9002226.02101,"868,54868-1171-00 ",.02)
 ;;54868-1171-00
 ;;9002226.02101,"868,54868-1171-01 ",.01)
 ;;54868-1171-01
 ;;9002226.02101,"868,54868-1171-01 ",.02)
 ;;54868-1171-01
 ;;9002226.02101,"868,54868-1171-02 ",.01)
 ;;54868-1171-02
 ;;9002226.02101,"868,54868-1171-02 ",.02)
 ;;54868-1171-02
 ;;9002226.02101,"868,54868-1171-03 ",.01)
 ;;54868-1171-03
 ;;9002226.02101,"868,54868-1171-03 ",.02)
 ;;54868-1171-03
 ;;9002226.02101,"868,54868-1173-00 ",.01)
 ;;54868-1173-00
 ;;9002226.02101,"868,54868-1173-00 ",.02)
 ;;54868-1173-00
 ;;9002226.02101,"868,54868-1173-01 ",.01)
 ;;54868-1173-01
 ;;9002226.02101,"868,54868-1173-01 ",.02)
 ;;54868-1173-01
 ;;9002226.02101,"868,54868-1173-02 ",.01)
 ;;54868-1173-02
 ;;9002226.02101,"868,54868-1173-02 ",.02)
 ;;54868-1173-02
 ;;9002226.02101,"868,54868-1173-04 ",.01)
 ;;54868-1173-04
 ;;9002226.02101,"868,54868-1173-04 ",.02)
 ;;54868-1173-04
 ;;9002226.02101,"868,54868-1173-05 ",.01)
 ;;54868-1173-05
 ;;9002226.02101,"868,54868-1173-05 ",.02)
 ;;54868-1173-05
 ;;9002226.02101,"868,54868-1173-06 ",.01)
 ;;54868-1173-06
 ;;9002226.02101,"868,54868-1173-06 ",.02)
 ;;54868-1173-06
 ;;9002226.02101,"868,54868-1380-00 ",.01)
 ;;54868-1380-00
 ;;9002226.02101,"868,54868-1380-00 ",.02)
 ;;54868-1380-00
 ;;9002226.02101,"868,54868-1380-01 ",.01)
 ;;54868-1380-01
 ;;9002226.02101,"868,54868-1380-01 ",.02)
 ;;54868-1380-01
 ;;9002226.02101,"868,54868-1380-02 ",.01)
 ;;54868-1380-02
 ;;9002226.02101,"868,54868-1380-02 ",.02)
 ;;54868-1380-02
 ;;9002226.02101,"868,54868-1380-03 ",.01)
 ;;54868-1380-03
 ;;9002226.02101,"868,54868-1380-03 ",.02)
 ;;54868-1380-03
 ;;9002226.02101,"868,54868-1385-01 ",.01)
 ;;54868-1385-01
 ;;9002226.02101,"868,54868-1385-01 ",.02)
 ;;54868-1385-01
 ;;9002226.02101,"868,54868-1385-02 ",.01)
 ;;54868-1385-02
 ;;9002226.02101,"868,54868-1385-02 ",.02)
 ;;54868-1385-02
 ;;9002226.02101,"868,54868-1386-01 ",.01)
 ;;54868-1386-01
 ;;9002226.02101,"868,54868-1386-01 ",.02)
 ;;54868-1386-01
 ;;9002226.02101,"868,54868-1386-02 ",.01)
 ;;54868-1386-02
 ;;9002226.02101,"868,54868-1386-02 ",.02)
 ;;54868-1386-02
 ;;9002226.02101,"868,54868-1386-03 ",.01)
 ;;54868-1386-03
 ;;9002226.02101,"868,54868-1386-03 ",.02)
 ;;54868-1386-03
 ;;9002226.02101,"868,54868-1386-04 ",.01)
 ;;54868-1386-04
 ;;9002226.02101,"868,54868-1386-04 ",.02)
 ;;54868-1386-04
 ;;9002226.02101,"868,54868-1386-05 ",.01)
 ;;54868-1386-05
 ;;9002226.02101,"868,54868-1386-05 ",.02)
 ;;54868-1386-05
 ;;9002226.02101,"868,54868-1387-00 ",.01)
 ;;54868-1387-00
 ;;9002226.02101,"868,54868-1387-00 ",.02)
 ;;54868-1387-00
 ;;9002226.02101,"868,54868-1387-01 ",.01)
 ;;54868-1387-01
 ;;9002226.02101,"868,54868-1387-01 ",.02)
 ;;54868-1387-01
 ;;9002226.02101,"868,54868-1387-02 ",.01)
 ;;54868-1387-02
 ;;9002226.02101,"868,54868-1387-02 ",.02)
 ;;54868-1387-02
 ;;9002226.02101,"868,54868-1387-04 ",.01)
 ;;54868-1387-04
 ;;9002226.02101,"868,54868-1387-04 ",.02)
 ;;54868-1387-04
 ;;9002226.02101,"868,54868-1392-00 ",.01)
 ;;54868-1392-00
 ;;9002226.02101,"868,54868-1392-00 ",.02)
 ;;54868-1392-00
 ;;9002226.02101,"868,54868-1616-02 ",.01)
 ;;54868-1616-02
 ;;9002226.02101,"868,54868-1616-02 ",.02)
 ;;54868-1616-02
 ;;9002226.02101,"868,54868-1710-00 ",.01)
 ;;54868-1710-00
 ;;9002226.02101,"868,54868-1710-00 ",.02)
 ;;54868-1710-00
 ;;9002226.02101,"868,54868-1774-00 ",.01)
 ;;54868-1774-00
 ;;9002226.02101,"868,54868-1774-00 ",.02)
 ;;54868-1774-00
 ;;9002226.02101,"868,54868-1774-02 ",.01)
 ;;54868-1774-02
 ;;9002226.02101,"868,54868-1774-02 ",.02)
 ;;54868-1774-02
 ;;9002226.02101,"868,54868-1780-01 ",.01)
 ;;54868-1780-01
 ;;9002226.02101,"868,54868-1780-01 ",.02)
 ;;54868-1780-01
 ;;9002226.02101,"868,54868-1780-02 ",.01)
 ;;54868-1780-02
 ;;9002226.02101,"868,54868-1780-02 ",.02)
 ;;54868-1780-02
 ;;9002226.02101,"868,54868-1857-00 ",.01)
 ;;54868-1857-00
 ;;9002226.02101,"868,54868-1857-00 ",.02)
 ;;54868-1857-00
 ;;9002226.02101,"868,54868-1857-01 ",.01)
 ;;54868-1857-01
 ;;9002226.02101,"868,54868-1857-01 ",.02)
 ;;54868-1857-01
 ;;9002226.02101,"868,54868-1857-02 ",.01)
 ;;54868-1857-02
 ;;9002226.02101,"868,54868-1857-02 ",.02)
 ;;54868-1857-02
 ;;9002226.02101,"868,54868-1857-05 ",.01)
 ;;54868-1857-05