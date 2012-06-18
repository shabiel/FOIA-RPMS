BGP06B16 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAY 23, 2010;
 ;;10.0;IHS CLINICAL REPORTING;;JUN 18, 2010
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"975,00405-4534-01 ",.01)
 ;;00405-4534-01
 ;;9002226.02101,"975,00405-4534-01 ",.02)
 ;;00405-4534-01
 ;;9002226.02101,"975,00405-4534-03 ",.01)
 ;;00405-4534-03
 ;;9002226.02101,"975,00405-4534-03 ",.02)
 ;;00405-4534-03
 ;;9002226.02101,"975,00405-4535-01 ",.01)
 ;;00405-4535-01
 ;;9002226.02101,"975,00405-4535-01 ",.02)
 ;;00405-4535-01
 ;;9002226.02101,"975,00405-4535-03 ",.01)
 ;;00405-4535-03
 ;;9002226.02101,"975,00405-4535-03 ",.02)
 ;;00405-4535-03
 ;;9002226.02101,"975,00405-4536-01 ",.01)
 ;;00405-4536-01
 ;;9002226.02101,"975,00405-4536-01 ",.02)
 ;;00405-4536-01
 ;;9002226.02101,"975,00405-4536-03 ",.01)
 ;;00405-4536-03
 ;;9002226.02101,"975,00405-4536-03 ",.02)
 ;;00405-4536-03
 ;;9002226.02101,"975,00405-4594-01 ",.01)
 ;;00405-4594-01
 ;;9002226.02101,"975,00405-4594-01 ",.02)
 ;;00405-4594-01
 ;;9002226.02101,"975,00405-4595-01 ",.01)
 ;;00405-4595-01
 ;;9002226.02101,"975,00405-4595-01 ",.02)
 ;;00405-4595-01
 ;;9002226.02101,"975,00405-4596-01 ",.01)
 ;;00405-4596-01
 ;;9002226.02101,"975,00405-4596-01 ",.02)
 ;;00405-4596-01
 ;;9002226.02101,"975,00405-4705-01 ",.01)
 ;;00405-4705-01
 ;;9002226.02101,"975,00405-4705-01 ",.02)
 ;;00405-4705-01
 ;;9002226.02101,"975,00405-4706-01 ",.01)
 ;;00405-4706-01
 ;;9002226.02101,"975,00405-4706-01 ",.02)
 ;;00405-4706-01
 ;;9002226.02101,"975,00405-4707-01 ",.01)
 ;;00405-4707-01
 ;;9002226.02101,"975,00405-4707-01 ",.02)
 ;;00405-4707-01
 ;;9002226.02101,"975,00405-4708-01 ",.01)
 ;;00405-4708-01
 ;;9002226.02101,"975,00405-4708-01 ",.02)
 ;;00405-4708-01
 ;;9002226.02101,"975,00405-4787-01 ",.01)
 ;;00405-4787-01
 ;;9002226.02101,"975,00405-4787-01 ",.02)
 ;;00405-4787-01
 ;;9002226.02101,"975,00405-4788-01 ",.01)
 ;;00405-4788-01
 ;;9002226.02101,"975,00405-4788-01 ",.02)
 ;;00405-4788-01
 ;;9002226.02101,"975,00405-4789-01 ",.01)
 ;;00405-4789-01
 ;;9002226.02101,"975,00405-4789-01 ",.02)
 ;;00405-4789-01
 ;;9002226.02101,"975,00405-4790-01 ",.01)
 ;;00405-4790-01
 ;;9002226.02101,"975,00405-4790-01 ",.02)
 ;;00405-4790-01
 ;;9002226.02101,"975,00405-5036-01 ",.01)
 ;;00405-5036-01
 ;;9002226.02101,"975,00405-5036-01 ",.02)
 ;;00405-5036-01
 ;;9002226.02101,"975,00405-5036-03 ",.01)
 ;;00405-5036-03
 ;;9002226.02101,"975,00405-5036-03 ",.02)
 ;;00405-5036-03
 ;;9002226.02101,"975,00405-5037-01 ",.01)
 ;;00405-5037-01
 ;;9002226.02101,"975,00405-5037-01 ",.02)
 ;;00405-5037-01
 ;;9002226.02101,"975,00405-5038-01 ",.01)
 ;;00405-5038-01
 ;;9002226.02101,"975,00405-5038-01 ",.02)
 ;;00405-5038-01
 ;;9002226.02101,"975,00406-0661-01 ",.01)
 ;;00406-0661-01
 ;;9002226.02101,"975,00406-0661-01 ",.02)
 ;;00406-0661-01
 ;;9002226.02101,"975,00406-0661-05 ",.01)
 ;;00406-0661-05
 ;;9002226.02101,"975,00406-0661-05 ",.02)
 ;;00406-0661-05
 ;;9002226.02101,"975,00406-0661-91 ",.01)
 ;;00406-0661-91
 ;;9002226.02101,"975,00406-0661-91 ",.02)
 ;;00406-0661-91
 ;;9002226.02101,"975,00406-0663-01 ",.01)
 ;;00406-0663-01
 ;;9002226.02101,"975,00406-0663-01 ",.02)
 ;;00406-0663-01
 ;;9002226.02101,"975,00406-0663-03 ",.01)
 ;;00406-0663-03
 ;;9002226.02101,"975,00406-0663-03 ",.02)
 ;;00406-0663-03
 ;;9002226.02101,"975,00406-0663-05 ",.01)
 ;;00406-0663-05
 ;;9002226.02101,"975,00406-0663-05 ",.02)
 ;;00406-0663-05
 ;;9002226.02101,"975,00406-0663-62 ",.01)
 ;;00406-0663-62
 ;;9002226.02101,"975,00406-0663-62 ",.02)
 ;;00406-0663-62
 ;;9002226.02101,"975,00406-0663-91 ",.01)
 ;;00406-0663-91
 ;;9002226.02101,"975,00406-0663-91 ",.02)
 ;;00406-0663-91
 ;;9002226.02101,"975,00406-0667-01 ",.01)
 ;;00406-0667-01
 ;;9002226.02101,"975,00406-0667-01 ",.02)
 ;;00406-0667-01
 ;;9002226.02101,"975,00406-9906-01 ",.01)
 ;;00406-9906-01
 ;;9002226.02101,"975,00406-9906-01 ",.02)
 ;;00406-9906-01
 ;;9002226.02101,"975,00406-9906-03 ",.01)
 ;;00406-9906-03
 ;;9002226.02101,"975,00406-9906-03 ",.02)
 ;;00406-9906-03
 ;;9002226.02101,"975,00406-9906-62 ",.01)
 ;;00406-9906-62
 ;;9002226.02101,"975,00406-9906-62 ",.02)
 ;;00406-9906-62
 ;;9002226.02101,"975,00406-9907-01 ",.01)
 ;;00406-9907-01
 ;;9002226.02101,"975,00406-9907-01 ",.02)
 ;;00406-9907-01
 ;;9002226.02101,"975,00406-9907-03 ",.01)
 ;;00406-9907-03
 ;;9002226.02101,"975,00406-9907-03 ",.02)
 ;;00406-9907-03
 ;;9002226.02101,"975,00406-9907-62 ",.01)
 ;;00406-9907-62
 ;;9002226.02101,"975,00406-9907-62 ",.02)
 ;;00406-9907-62
 ;;9002226.02101,"975,00406-9908-01 ",.01)
 ;;00406-9908-01
 ;;9002226.02101,"975,00406-9908-01 ",.02)
 ;;00406-9908-01
 ;;9002226.02101,"975,00406-9908-03 ",.01)
 ;;00406-9908-03
 ;;9002226.02101,"975,00406-9908-03 ",.02)
 ;;00406-9908-03
 ;;9002226.02101,"975,00406-9910-01 ",.01)
 ;;00406-9910-01
 ;;9002226.02101,"975,00406-9910-01 ",.02)
 ;;00406-9910-01
 ;;9002226.02101,"975,00406-9911-01 ",.01)
 ;;00406-9911-01
 ;;9002226.02101,"975,00406-9911-01 ",.02)
 ;;00406-9911-01
 ;;9002226.02101,"975,00406-9912-01 ",.01)
 ;;00406-9912-01
 ;;9002226.02101,"975,00406-9912-01 ",.02)
 ;;00406-9912-01
 ;;9002226.02101,"975,00406-9913-01 ",.01)
 ;;00406-9913-01
 ;;9002226.02101,"975,00406-9913-01 ",.02)
 ;;00406-9913-01
 ;;9002226.02101,"975,00406-9918-16 ",.01)
 ;;00406-9918-16
 ;;9002226.02101,"975,00406-9918-16 ",.02)
 ;;00406-9918-16
 ;;9002226.02101,"975,00406-9920-01 ",.01)
 ;;00406-9920-01
 ;;9002226.02101,"975,00406-9920-01 ",.02)
 ;;00406-9920-01
 ;;9002226.02101,"975,00406-9921-01 ",.01)
 ;;00406-9921-01
 ;;9002226.02101,"975,00406-9921-01 ",.02)
 ;;00406-9921-01
 ;;9002226.02101,"975,00406-9922-01 ",.01)
 ;;00406-9922-01
 ;;9002226.02101,"975,00406-9922-01 ",.02)
 ;;00406-9922-01
 ;;9002226.02101,"975,00406-9923-01 ",.01)
 ;;00406-9923-01
 ;;9002226.02101,"975,00406-9923-01 ",.02)
 ;;00406-9923-01
 ;;9002226.02101,"975,00406-9923-03 ",.01)
 ;;00406-9923-03
 ;;9002226.02101,"975,00406-9923-03 ",.02)
 ;;00406-9923-03
 ;;9002226.02101,"975,00406-9924-01 ",.01)
 ;;00406-9924-01
 ;;9002226.02101,"975,00406-9924-01 ",.02)
 ;;00406-9924-01
 ;;9002226.02101,"975,00406-9924-03 ",.01)
 ;;00406-9924-03
 ;;9002226.02101,"975,00406-9924-03 ",.02)
 ;;00406-9924-03
 ;;9002226.02101,"975,00406-9925-01 ",.01)
 ;;00406-9925-01
 ;;9002226.02101,"975,00406-9925-01 ",.02)
 ;;00406-9925-01
 ;;9002226.02101,"975,00406-9925-03 ",.01)
 ;;00406-9925-03
 ;;9002226.02101,"975,00406-9925-03 ",.02)
 ;;00406-9925-03
 ;;9002226.02101,"975,00406-9926-01 ",.01)
 ;;00406-9926-01
 ;;9002226.02101,"975,00406-9926-01 ",.02)
 ;;00406-9926-01
 ;;9002226.02101,"975,00406-9926-03 ",.01)
 ;;00406-9926-03
 ;;9002226.02101,"975,00406-9926-03 ",.02)
 ;;00406-9926-03
 ;;9002226.02101,"975,00406-9931-03 ",.01)
 ;;00406-9931-03
 ;;9002226.02101,"975,00406-9931-03 ",.02)
 ;;00406-9931-03
 ;;9002226.02101,"975,00406-9932-03 ",.01)
 ;;00406-9932-03
 ;;9002226.02101,"975,00406-9932-03 ",.02)
 ;;00406-9932-03
 ;;9002226.02101,"975,00406-9933-03 ",.01)
 ;;00406-9933-03
 ;;9002226.02101,"975,00406-9933-03 ",.02)
 ;;00406-9933-03
 ;;9002226.02101,"975,00406-9934-03 ",.01)
 ;;00406-9934-03
 ;;9002226.02101,"975,00406-9934-03 ",.02)
 ;;00406-9934-03
 ;;9002226.02101,"975,00430-0435-14 ",.01)
 ;;00430-0435-14
 ;;9002226.02101,"975,00430-0435-14 ",.02)
 ;;00430-0435-14
 ;;9002226.02101,"975,00430-0436-14 ",.01)
 ;;00430-0436-14
 ;;9002226.02101,"975,00430-0436-14 ",.02)
 ;;00430-0436-14
 ;;9002226.02101,"975,00456-2005-01 ",.01)
 ;;00456-2005-01
 ;;9002226.02101,"975,00456-2005-01 ",.02)
 ;;00456-2005-01
 ;;9002226.02101,"975,00456-2010-01 ",.01)
 ;;00456-2010-01
 ;;9002226.02101,"975,00456-2010-01 ",.02)
 ;;00456-2010-01
 ;;9002226.02101,"975,00456-2010-63 ",.01)
 ;;00456-2010-63
 ;;9002226.02101,"975,00456-2010-63 ",.02)
 ;;00456-2010-63
 ;;9002226.02101,"975,00456-2020-01 ",.01)
 ;;00456-2020-01
 ;;9002226.02101,"975,00456-2020-01 ",.02)
 ;;00456-2020-01
 ;;9002226.02101,"975,00456-2020-63 ",.01)
 ;;00456-2020-63
 ;;9002226.02101,"975,00456-2020-63 ",.02)
 ;;00456-2020-63
 ;;9002226.02101,"975,00456-2101-08 ",.01)
 ;;00456-2101-08
 ;;9002226.02101,"975,00456-2101-08 ",.02)
 ;;00456-2101-08
 ;;9002226.02101,"975,00456-4010-01 ",.01)
 ;;00456-4010-01
 ;;9002226.02101,"975,00456-4010-01 ",.02)
 ;;00456-4010-01
 ;;9002226.02101,"975,00456-4020-01 ",.01)
 ;;00456-4020-01
 ;;9002226.02101,"975,00456-4020-01 ",.02)
 ;;00456-4020-01
 ;;9002226.02101,"975,00456-4020-63 ",.01)
 ;;00456-4020-63
 ;;9002226.02101,"975,00456-4020-63 ",.02)
 ;;00456-4020-63
 ;;9002226.02101,"975,00456-4040-01 ",.01)
 ;;00456-4040-01
 ;;9002226.02101,"975,00456-4040-01 ",.02)
 ;;00456-4040-01
 ;;9002226.02101,"975,00456-4040-63 ",.01)
 ;;00456-4040-63
 ;;9002226.02101,"975,00456-4040-63 ",.02)
 ;;00456-4040-63
 ;;9002226.02101,"975,00456-4130-04 ",.01)
 ;;00456-4130-04
 ;;9002226.02101,"975,00456-4130-04 ",.02)
 ;;00456-4130-04
 ;;9002226.02101,"975,00456-4130-08 ",.01)
 ;;00456-4130-08
 ;;9002226.02101,"975,00456-4130-08 ",.02)
 ;;00456-4130-08
 ;;9002226.02101,"975,00472-0021-04 ",.01)
 ;;00472-0021-04
 ;;9002226.02101,"975,00472-0021-04 ",.02)
 ;;00472-0021-04
 ;;9002226.02101,"975,00536-3083-05 ",.01)
 ;;00536-3083-05
 ;;9002226.02101,"975,00536-3083-05 ",.02)
 ;;00536-3083-05
 ;;9002226.02101,"975,00536-4563-10 ",.01)
 ;;00536-4563-10
 ;;9002226.02101,"975,00536-4563-10 ",.02)
 ;;00536-4563-10
 ;;9002226.02101,"975,00536-4691-01 ",.01)
 ;;00536-4691-01
 ;;9002226.02101,"975,00536-4691-01 ",.02)
 ;;00536-4691-01
 ;;9002226.02101,"975,00536-4715-01 ",.01)
 ;;00536-4715-01
 ;;9002226.02101,"975,00536-4715-01 ",.02)
 ;;00536-4715-01
 ;;9002226.02101,"975,00536-4881-01 ",.01)
 ;;00536-4881-01
 ;;9002226.02101,"975,00536-4881-01 ",.02)
 ;;00536-4881-01
 ;;9002226.02101,"975,00536-4881-05 ",.01)
 ;;00536-4881-05
 ;;9002226.02101,"975,00536-4881-05 ",.02)
 ;;00536-4881-05
 ;;9002226.02101,"975,00536-4882-01 ",.01)
 ;;00536-4882-01
 ;;9002226.02101,"975,00536-4882-01 ",.02)
 ;;00536-4882-01
 ;;9002226.02101,"975,00536-4882-05 ",.01)
 ;;00536-4882-05
 ;;9002226.02101,"975,00536-4882-05 ",.02)
 ;;00536-4882-05
 ;;9002226.02101,"975,00536-4883-01 ",.01)
 ;;00536-4883-01
 ;;9002226.02101,"975,00536-4883-01 ",.02)
 ;;00536-4883-01
 ;;9002226.02101,"975,00555-0201-01 ",.01)
 ;;00555-0201-01
 ;;9002226.02101,"975,00555-0201-01 ",.02)
 ;;00555-0201-01
 ;;9002226.02101,"975,00555-0241-71 ",.01)
 ;;00555-0241-71
 ;;9002226.02101,"975,00555-0241-71 ",.02)
 ;;00555-0241-71
 ;;9002226.02101,"975,00555-0242-71 ",.01)
 ;;00555-0242-71
 ;;9002226.02101,"975,00555-0242-71 ",.02)
 ;;00555-0242-71
 ;;9002226.02101,"975,00555-0489-02 ",.01)
 ;;00555-0489-02
 ;;9002226.02101,"975,00555-0489-02 ",.02)
 ;;00555-0489-02
 ;;9002226.02101,"975,00555-0489-04 ",.01)
 ;;00555-0489-04
 ;;9002226.02101,"975,00555-0489-04 ",.02)
 ;;00555-0489-04
 ;;9002226.02101,"975,00555-0490-02 ",.01)
 ;;00555-0490-02
 ;;9002226.02101,"975,00555-0490-02 ",.02)
 ;;00555-0490-02
 ;;9002226.02101,"975,00555-0490-04 ",.01)
 ;;00555-0490-04
 ;;9002226.02101,"975,00555-0490-04 ",.02)
 ;;00555-0490-04
 ;;9002226.02101,"975,00555-0732-02 ",.01)
 ;;00555-0732-02
 ;;9002226.02101,"975,00555-0732-02 ",.02)
 ;;00555-0732-02
 ;;9002226.02101,"975,00555-0732-04 ",.01)
 ;;00555-0732-04
 ;;9002226.02101,"975,00555-0732-04 ",.02)
 ;;00555-0732-04
 ;;9002226.02101,"975,00555-0733-02 ",.01)
 ;;00555-0733-02
 ;;9002226.02101,"975,00555-0733-02 ",.02)
 ;;00555-0733-02
 ;;9002226.02101,"975,00555-0876-02 ",.01)
 ;;00555-0876-02
 ;;9002226.02101,"975,00555-0876-02 ",.02)
 ;;00555-0876-02
 ;;9002226.02101,"975,00555-0877-02 ",.01)
 ;;00555-0877-02
 ;;9002226.02101,"975,00555-0877-02 ",.02)
 ;;00555-0877-02
 ;;9002226.02101,"975,00555-0877-07 ",.01)
 ;;00555-0877-07
 ;;9002226.02101,"975,00555-0877-07 ",.02)
 ;;00555-0877-07
 ;;9002226.02101,"975,00555-0967-02 ",.01)
 ;;00555-0967-02
 ;;9002226.02101,"975,00555-0967-02 ",.02)
 ;;00555-0967-02
 ;;9002226.02101,"975,00555-0968-02 ",.01)
 ;;00555-0968-02
 ;;9002226.02101,"975,00555-0968-02 ",.02)
 ;;00555-0968-02
 ;;9002226.02101,"975,00555-0969-02 ",.01)
 ;;00555-0969-02
 ;;9002226.02101,"975,00555-0969-02 ",.02)
 ;;00555-0969-02
 ;;9002226.02101,"975,00555-7243-71 ",.01)
 ;;00555-7243-71
 ;;9002226.02101,"975,00555-7243-71 ",.02)
 ;;00555-7243-71
 ;;9002226.02101,"975,00591-0379-01 ",.01)
 ;;00591-0379-01
 ;;9002226.02101,"975,00591-0379-01 ",.02)
 ;;00591-0379-01
 ;;9002226.02101,"975,00591-0381-01 ",.01)
 ;;00591-0381-01
 ;;9002226.02101,"975,00591-0381-01 ",.02)
 ;;00591-0381-01
 ;;9002226.02101,"975,00591-0382-30 ",.01)
 ;;00591-0382-30
 ;;9002226.02101,"975,00591-0382-30 ",.02)
 ;;00591-0382-30
 ;;9002226.02101,"975,00591-0545-01 ",.01)
 ;;00591-0545-01
 ;;9002226.02101,"975,00591-0545-01 ",.02)
 ;;00591-0545-01
 ;;9002226.02101,"975,00591-0764-60 ",.01)
 ;;00591-0764-60
 ;;9002226.02101,"975,00591-0764-60 ",.02)
 ;;00591-0764-60
 ;;9002226.02101,"975,00591-0765-60 ",.01)
 ;;00591-0765-60
 ;;9002226.02101,"975,00591-0765-60 ",.02)
 ;;00591-0765-60
 ;;9002226.02101,"975,00591-0766-60 ",.01)
 ;;00591-0766-60
 ;;9002226.02101,"975,00591-0766-60 ",.02)
 ;;00591-0766-60
 ;;9002226.02101,"975,00591-0767-60 ",.01)
 ;;00591-0767-60
 ;;9002226.02101,"975,00591-0767-60 ",.02)
 ;;00591-0767-60
 ;;9002226.02101,"975,00591-0808-01 ",.01)
 ;;00591-0808-01
 ;;9002226.02101,"975,00591-0808-01 ",.02)
 ;;00591-0808-01
 ;;9002226.02101,"975,00591-0808-05 ",.01)
 ;;00591-0808-05
 ;;9002226.02101,"975,00591-0808-05 ",.02)
 ;;00591-0808-05
 ;;9002226.02101,"975,00591-0809-01 ",.01)
 ;;00591-0809-01
 ;;9002226.02101,"975,00591-0809-01 ",.02)
 ;;00591-0809-01