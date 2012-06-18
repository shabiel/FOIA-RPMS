BGP06P5 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAY 23, 2010;
 ;;10.0;IHS CLINICAL REPORTING;;JUN 18, 2010
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"700,00904-7700-40 ",.02)
 ;;00904-7700-40
 ;;9002226.02101,"700,00904-7700-60 ",.01)
 ;;00904-7700-60
 ;;9002226.02101,"700,00904-7700-60 ",.02)
 ;;00904-7700-60
 ;;9002226.02101,"700,00904-7700-61 ",.01)
 ;;00904-7700-61
 ;;9002226.02101,"700,00904-7700-61 ",.02)
 ;;00904-7700-61
 ;;9002226.02101,"700,00904-7700-80 ",.01)
 ;;00904-7700-80
 ;;9002226.02101,"700,00904-7700-80 ",.02)
 ;;00904-7700-80
 ;;9002226.02101,"700,00904-7701-40 ",.01)
 ;;00904-7701-40
 ;;9002226.02101,"700,00904-7701-40 ",.02)
 ;;00904-7701-40
 ;;9002226.02101,"700,00904-7701-60 ",.01)
 ;;00904-7701-60
 ;;9002226.02101,"700,00904-7701-60 ",.02)
 ;;00904-7701-60
 ;;9002226.02101,"700,00904-7701-80 ",.01)
 ;;00904-7701-80
 ;;9002226.02101,"700,00904-7701-80 ",.02)
 ;;00904-7701-80
 ;;9002226.02101,"700,00904-7702-80 ",.01)
 ;;00904-7702-80
 ;;9002226.02101,"700,00904-7702-80 ",.02)
 ;;00904-7702-80
 ;;9002226.02101,"700,10019-0151-44 ",.01)
 ;;10019-0151-44
 ;;9002226.02101,"700,10019-0151-44 ",.02)
 ;;10019-0151-44
 ;;9002226.02101,"700,10019-0151-47 ",.01)
 ;;10019-0151-47
 ;;9002226.02101,"700,10019-0151-47 ",.02)
 ;;10019-0151-47
 ;;9002226.02101,"700,10019-0155-68 ",.01)
 ;;10019-0155-68
 ;;9002226.02101,"700,10019-0155-68 ",.02)
 ;;10019-0155-68
 ;;9002226.02101,"700,10019-0156-68 ",.01)
 ;;10019-0156-68
 ;;9002226.02101,"700,10019-0156-68 ",.02)
 ;;10019-0156-68
 ;;9002226.02101,"700,10019-0157-68 ",.01)
 ;;10019-0157-68
 ;;9002226.02101,"700,10019-0157-68 ",.02)
 ;;10019-0157-68
 ;;9002226.02101,"700,10019-0158-68 ",.01)
 ;;10019-0158-68
 ;;9002226.02101,"700,10019-0158-68 ",.02)
 ;;10019-0158-68
 ;;9002226.02101,"700,10019-0159-01 ",.01)
 ;;10019-0159-01
 ;;9002226.02101,"700,10019-0159-01 ",.02)
 ;;10019-0159-01
 ;;9002226.02101,"700,10019-0159-44 ",.01)
 ;;10019-0159-44
 ;;9002226.02101,"700,10019-0159-44 ",.02)
 ;;10019-0159-44
 ;;9002226.02101,"700,10019-0160-01 ",.01)
 ;;10019-0160-01
 ;;9002226.02101,"700,10019-0160-01 ",.02)
 ;;10019-0160-01
 ;;9002226.02101,"700,10019-0160-44 ",.01)
 ;;10019-0160-44
 ;;9002226.02101,"700,10019-0160-44 ",.02)
 ;;10019-0160-44
 ;;9002226.02101,"700,10019-0161-01 ",.01)
 ;;10019-0161-01
 ;;9002226.02101,"700,10019-0161-01 ",.02)
 ;;10019-0161-01
 ;;9002226.02101,"700,10019-0161-44 ",.01)
 ;;10019-0161-44
 ;;9002226.02101,"700,10019-0161-44 ",.02)
 ;;10019-0161-44
 ;;9002226.02101,"700,10019-0162-01 ",.01)
 ;;10019-0162-01
 ;;9002226.02101,"700,10019-0162-01 ",.02)
 ;;10019-0162-01
 ;;9002226.02101,"700,10019-0162-44 ",.01)
 ;;10019-0162-44
 ;;9002226.02101,"700,10019-0162-44 ",.02)
 ;;10019-0162-44
 ;;9002226.02101,"700,10122-0301-10 ",.01)
 ;;10122-0301-10
 ;;9002226.02101,"700,10122-0301-10 ",.02)
 ;;10122-0301-10
 ;;9002226.02101,"700,12280-0160-00 ",.01)
 ;;12280-0160-00
 ;;9002226.02101,"700,12280-0160-00 ",.02)
 ;;12280-0160-00
 ;;9002226.02101,"700,16590-0196-15 ",.01)
 ;;16590-0196-15
 ;;9002226.02101,"700,16590-0196-15 ",.02)
 ;;16590-0196-15
 ;;9002226.02101,"700,16590-0196-20 ",.01)
 ;;16590-0196-20
 ;;9002226.02101,"700,16590-0196-20 ",.02)
 ;;16590-0196-20
 ;;9002226.02101,"700,16590-0196-30 ",.01)
 ;;16590-0196-30
 ;;9002226.02101,"700,16590-0196-30 ",.02)
 ;;16590-0196-30
 ;;9002226.02101,"700,16590-0197-15 ",.01)
 ;;16590-0197-15
 ;;9002226.02101,"700,16590-0197-15 ",.02)
 ;;16590-0197-15
 ;;9002226.02101,"700,16590-0197-28 ",.01)
 ;;16590-0197-28
 ;;9002226.02101,"700,16590-0197-28 ",.02)
 ;;16590-0197-28
 ;;9002226.02101,"700,16590-0197-30 ",.01)
 ;;16590-0197-30
 ;;9002226.02101,"700,16590-0197-30 ",.02)
 ;;16590-0197-30
 ;;9002226.02101,"700,16590-0197-40 ",.01)
 ;;16590-0197-40
 ;;9002226.02101,"700,16590-0197-40 ",.02)
 ;;16590-0197-40
 ;;9002226.02101,"700,16590-0197-45 ",.01)
 ;;16590-0197-45
 ;;9002226.02101,"700,16590-0197-45 ",.02)
 ;;16590-0197-45
 ;;9002226.02101,"700,16590-0197-60 ",.01)
 ;;16590-0197-60
 ;;9002226.02101,"700,16590-0197-60 ",.02)
 ;;16590-0197-60
 ;;9002226.02101,"700,16590-0197-72 ",.01)
 ;;16590-0197-72
 ;;9002226.02101,"700,16590-0197-72 ",.02)
 ;;16590-0197-72
 ;;9002226.02101,"700,16590-0197-75 ",.01)
 ;;16590-0197-75
 ;;9002226.02101,"700,16590-0197-75 ",.02)
 ;;16590-0197-75
 ;;9002226.02101,"700,16590-0197-90 ",.01)
 ;;16590-0197-90
 ;;9002226.02101,"700,16590-0197-90 ",.02)
 ;;16590-0197-90
 ;;9002226.02101,"700,16590-0198-30 ",.01)
 ;;16590-0198-30
 ;;9002226.02101,"700,16590-0198-30 ",.02)
 ;;16590-0198-30
 ;;9002226.02101,"700,16590-0198-60 ",.01)
 ;;16590-0198-60
 ;;9002226.02101,"700,16590-0198-60 ",.02)
 ;;16590-0198-60
 ;;9002226.02101,"700,16590-0198-72 ",.01)
 ;;16590-0198-72
 ;;9002226.02101,"700,16590-0198-72 ",.02)
 ;;16590-0198-72
 ;;9002226.02101,"700,16590-0198-90 ",.01)
 ;;16590-0198-90
 ;;9002226.02101,"700,16590-0198-90 ",.02)
 ;;16590-0198-90
 ;;9002226.02101,"700,18837-0128-15 ",.01)
 ;;18837-0128-15
 ;;9002226.02101,"700,18837-0128-15 ",.02)
 ;;18837-0128-15
 ;;9002226.02101,"700,18837-0128-28 ",.01)
 ;;18837-0128-28
 ;;9002226.02101,"700,18837-0128-28 ",.02)
 ;;18837-0128-28
 ;;9002226.02101,"700,18837-0128-30 ",.01)
 ;;18837-0128-30
 ;;9002226.02101,"700,18837-0128-30 ",.02)
 ;;18837-0128-30
 ;;9002226.02101,"700,18837-0128-40 ",.01)
 ;;18837-0128-40
 ;;9002226.02101,"700,18837-0128-40 ",.02)
 ;;18837-0128-40
 ;;9002226.02101,"700,18837-0128-50 ",.01)
 ;;18837-0128-50
 ;;9002226.02101,"700,18837-0128-50 ",.02)
 ;;18837-0128-50
 ;;9002226.02101,"700,18837-0128-60 ",.01)
 ;;18837-0128-60
 ;;9002226.02101,"700,18837-0128-60 ",.02)
 ;;18837-0128-60
 ;;9002226.02101,"700,18837-0128-90 ",.01)
 ;;18837-0128-90
 ;;9002226.02101,"700,18837-0128-90 ",.02)
 ;;18837-0128-90
 ;;9002226.02101,"700,18837-0128-98 ",.01)
 ;;18837-0128-98
 ;;9002226.02101,"700,18837-0128-98 ",.02)
 ;;18837-0128-98
 ;;9002226.02101,"700,21695-0241-01 ",.01)
 ;;21695-0241-01
 ;;9002226.02101,"700,21695-0241-01 ",.02)
 ;;21695-0241-01
 ;;9002226.02101,"700,21695-0280-12 ",.01)
 ;;21695-0280-12
 ;;9002226.02101,"700,21695-0280-12 ",.02)
 ;;21695-0280-12
 ;;9002226.02101,"700,21695-0280-15 ",.01)
 ;;21695-0280-15
 ;;9002226.02101,"700,21695-0280-15 ",.02)
 ;;21695-0280-15
 ;;9002226.02101,"700,21695-0280-20 ",.01)
 ;;21695-0280-20
 ;;9002226.02101,"700,21695-0280-20 ",.02)
 ;;21695-0280-20
 ;;9002226.02101,"700,21695-0280-28 ",.01)
 ;;21695-0280-28
 ;;9002226.02101,"700,21695-0280-28 ",.02)
 ;;21695-0280-28
 ;;9002226.02101,"700,21695-0280-30 ",.01)
 ;;21695-0280-30
 ;;9002226.02101,"700,21695-0280-30 ",.02)
 ;;21695-0280-30
 ;;9002226.02101,"700,21695-0280-60 ",.01)
 ;;21695-0280-60
 ;;9002226.02101,"700,21695-0280-60 ",.02)
 ;;21695-0280-60
 ;;9002226.02101,"700,21695-0280-72 ",.01)
 ;;21695-0280-72
 ;;9002226.02101,"700,21695-0280-72 ",.02)
 ;;21695-0280-72
 ;;9002226.02101,"700,21695-0280-90 ",.01)
 ;;21695-0280-90
 ;;9002226.02101,"700,21695-0280-90 ",.02)
 ;;21695-0280-90
 ;;9002226.02101,"700,21695-0364-28 ",.01)
 ;;21695-0364-28
 ;;9002226.02101,"700,21695-0364-28 ",.02)
 ;;21695-0364-28
 ;;9002226.02101,"700,21695-0364-60 ",.01)
 ;;21695-0364-60
 ;;9002226.02101,"700,21695-0364-60 ",.02)
 ;;21695-0364-60
 ;;9002226.02101,"700,21695-0364-72 ",.01)
 ;;21695-0364-72
 ;;9002226.02101,"700,21695-0364-72 ",.02)
 ;;21695-0364-72
 ;;9002226.02101,"700,23155-0012-01 ",.01)
 ;;23155-0012-01
 ;;9002226.02101,"700,23155-0012-01 ",.02)
 ;;23155-0012-01
 ;;9002226.02101,"700,23155-0012-05 ",.01)
 ;;23155-0012-05
 ;;9002226.02101,"700,23155-0012-05 ",.02)
 ;;23155-0012-05
 ;;9002226.02101,"700,23490-0120-03 ",.01)
 ;;23490-0120-03
 ;;9002226.02101,"700,23490-0120-03 ",.02)
 ;;23490-0120-03
 ;;9002226.02101,"700,23490-0120-06 ",.01)
 ;;23490-0120-06
 ;;9002226.02101,"700,23490-0120-06 ",.02)
 ;;23490-0120-06
 ;;9002226.02101,"700,23490-6073-01 ",.01)
 ;;23490-6073-01
 ;;9002226.02101,"700,23490-6073-01 ",.02)
 ;;23490-6073-01
 ;;9002226.02101,"700,23490-6073-03 ",.01)
 ;;23490-6073-03
 ;;9002226.02101,"700,23490-6073-03 ",.02)
 ;;23490-6073-03
 ;;9002226.02101,"700,23490-6073-08 ",.01)
 ;;23490-6073-08
 ;;9002226.02101,"700,23490-6073-08 ",.02)
 ;;23490-6073-08
 ;;9002226.02101,"700,23490-6197-00 ",.01)
 ;;23490-6197-00
 ;;9002226.02101,"700,23490-6197-00 ",.02)
 ;;23490-6197-00
 ;;9002226.02101,"700,23490-6197-01 ",.01)
 ;;23490-6197-01
 ;;9002226.02101,"700,23490-6197-01 ",.02)
 ;;23490-6197-01
 ;;9002226.02101,"700,23490-6197-02 ",.01)
 ;;23490-6197-02
 ;;9002226.02101,"700,23490-6197-02 ",.02)
 ;;23490-6197-02
 ;;9002226.02101,"700,23490-6197-03 ",.01)
 ;;23490-6197-03
 ;;9002226.02101,"700,23490-6197-03 ",.02)
 ;;23490-6197-03
 ;;9002226.02101,"700,23490-6197-04 ",.01)
 ;;23490-6197-04
 ;;9002226.02101,"700,23490-6197-04 ",.02)
 ;;23490-6197-04
 ;;9002226.02101,"700,23490-6197-05 ",.01)
 ;;23490-6197-05
 ;;9002226.02101,"700,23490-6197-05 ",.02)
 ;;23490-6197-05
 ;;9002226.02101,"700,23490-6197-07 ",.01)
 ;;23490-6197-07
 ;;9002226.02101,"700,23490-6197-07 ",.02)
 ;;23490-6197-07
 ;;9002226.02101,"700,23490-6197-08 ",.01)
 ;;23490-6197-08
 ;;9002226.02101,"700,23490-6197-08 ",.02)
 ;;23490-6197-08
 ;;9002226.02101,"700,23490-6197-09 ",.01)
 ;;23490-6197-09
 ;;9002226.02101,"700,23490-6197-09 ",.02)
 ;;23490-6197-09
 ;;9002226.02101,"700,23490-7775-01 ",.01)
 ;;23490-7775-01
 ;;9002226.02101,"700,23490-7775-01 ",.02)
 ;;23490-7775-01
 ;;9002226.02101,"700,23490-7775-02 ",.01)
 ;;23490-7775-02
 ;;9002226.02101,"700,23490-7775-02 ",.02)
 ;;23490-7775-02
 ;;9002226.02101,"700,23490-7775-03 ",.01)
 ;;23490-7775-03
 ;;9002226.02101,"700,23490-7775-03 ",.02)
 ;;23490-7775-03
 ;;9002226.02101,"700,23490-7775-04 ",.01)
 ;;23490-7775-04
 ;;9002226.02101,"700,23490-7775-04 ",.02)
 ;;23490-7775-04
 ;;9002226.02101,"700,23490-7930-04 ",.01)
 ;;23490-7930-04
 ;;9002226.02101,"700,23490-7930-04 ",.02)
 ;;23490-7930-04
 ;;9002226.02101,"700,23490-7930-07 ",.01)
 ;;23490-7930-07
 ;;9002226.02101,"700,23490-7930-07 ",.02)
 ;;23490-7930-07
 ;;9002226.02101,"700,23490-7930-08 ",.01)
 ;;23490-7930-08
 ;;9002226.02101,"700,23490-7930-08 ",.02)
 ;;23490-7930-08
 ;;9002226.02101,"700,23490-9300-03 ",.01)
 ;;23490-9300-03
 ;;9002226.02101,"700,23490-9300-03 ",.02)
 ;;23490-9300-03
 ;;9002226.02101,"700,23490-9300-06 ",.01)
 ;;23490-9300-06
 ;;9002226.02101,"700,23490-9300-06 ",.02)
 ;;23490-9300-06
 ;;9002226.02101,"700,23490-9300-09 ",.01)
 ;;23490-9300-09
 ;;9002226.02101,"700,23490-9300-09 ",.02)
 ;;23490-9300-09
 ;;9002226.02101,"700,24200-0359-80 ",.01)
 ;;24200-0359-80
 ;;9002226.02101,"700,24200-0359-80 ",.02)
 ;;24200-0359-80
 ;;9002226.02101,"700,24486-0325-10 ",.01)
 ;;24486-0325-10
 ;;9002226.02101,"700,24486-0325-10 ",.02)
 ;;24486-0325-10
 ;;9002226.02101,"700,24486-0326-10 ",.01)
 ;;24486-0326-10
 ;;9002226.02101,"700,24486-0326-10 ",.02)
 ;;24486-0326-10
 ;;9002226.02101,"700,33358-0308-60 ",.01)
 ;;33358-0308-60
 ;;9002226.02101,"700,33358-0308-60 ",.02)
 ;;33358-0308-60
 ;;9002226.02101,"700,33358-0309-20 ",.01)
 ;;33358-0309-20
 ;;9002226.02101,"700,33358-0309-20 ",.02)
 ;;33358-0309-20
 ;;9002226.02101,"700,33358-0309-30 ",.01)
 ;;33358-0309-30
 ;;9002226.02101,"700,33358-0309-30 ",.02)
 ;;33358-0309-30
 ;;9002226.02101,"700,33358-0309-60 ",.01)
 ;;33358-0309-60
 ;;9002226.02101,"700,33358-0309-60 ",.02)
 ;;33358-0309-60
 ;;9002226.02101,"700,43063-0023-06 ",.01)
 ;;43063-0023-06
 ;;9002226.02101,"700,43063-0023-06 ",.02)
 ;;43063-0023-06
 ;;9002226.02101,"700,43063-0142-20 ",.01)
 ;;43063-0142-20
 ;;9002226.02101,"700,43063-0142-20 ",.02)
 ;;43063-0142-20
 ;;9002226.02101,"700,49884-0120-01 ",.01)
 ;;49884-0120-01
 ;;9002226.02101,"700,49884-0120-01 ",.02)
 ;;49884-0120-01
 ;;9002226.02101,"700,49884-0120-10 ",.01)
 ;;49884-0120-10
 ;;9002226.02101,"700,49884-0120-10 ",.02)
 ;;49884-0120-10
 ;;9002226.02101,"700,49884-0314-01 ",.01)
 ;;49884-0314-01
 ;;9002226.02101,"700,49884-0314-01 ",.02)
 ;;49884-0314-01
 ;;9002226.02101,"700,49884-0314-10 ",.01)
 ;;49884-0314-10
 ;;9002226.02101,"700,49884-0314-10 ",.02)
 ;;49884-0314-10
 ;;9002226.02101,"700,49999-0767-00 ",.01)
 ;;49999-0767-00
 ;;9002226.02101,"700,49999-0767-00 ",.02)
 ;;49999-0767-00
 ;;9002226.02101,"700,49999-0767-01 ",.01)
 ;;49999-0767-01
 ;;9002226.02101,"700,49999-0767-01 ",.02)
 ;;49999-0767-01
 ;;9002226.02101,"700,49999-0767-06 ",.01)
 ;;49999-0767-06
 ;;9002226.02101,"700,49999-0767-06 ",.02)
 ;;49999-0767-06
 ;;9002226.02101,"700,49999-0767-10 ",.01)
 ;;49999-0767-10
 ;;9002226.02101,"700,49999-0767-10 ",.02)
 ;;49999-0767-10
 ;;9002226.02101,"700,49999-0767-12 ",.01)
 ;;49999-0767-12
 ;;9002226.02101,"700,49999-0767-12 ",.02)
 ;;49999-0767-12
 ;;9002226.02101,"700,49999-0767-15 ",.01)
 ;;49999-0767-15
 ;;9002226.02101,"700,49999-0767-15 ",.02)
 ;;49999-0767-15
 ;;9002226.02101,"700,49999-0767-20 ",.01)
 ;;49999-0767-20
 ;;9002226.02101,"700,49999-0767-20 ",.02)
 ;;49999-0767-20
 ;;9002226.02101,"700,49999-0767-30 ",.01)
 ;;49999-0767-30
 ;;9002226.02101,"700,49999-0767-30 ",.02)
 ;;49999-0767-30
 ;;9002226.02101,"700,49999-0767-50 ",.01)
 ;;49999-0767-50
 ;;9002226.02101,"700,49999-0767-50 ",.02)
 ;;49999-0767-50
 ;;9002226.02101,"700,49999-0767-60 ",.01)
 ;;49999-0767-60
 ;;9002226.02101,"700,49999-0767-60 ",.02)
 ;;49999-0767-60
 ;;9002226.02101,"700,49999-0767-90 ",.01)
 ;;49999-0767-90
 ;;9002226.02101,"700,49999-0767-90 ",.02)
 ;;49999-0767-90
 ;;9002226.02101,"700,49999-0798-30 ",.01)
 ;;49999-0798-30
 ;;9002226.02101,"700,49999-0798-30 ",.02)
 ;;49999-0798-30
 ;;9002226.02101,"700,49999-0798-60 ",.01)
 ;;49999-0798-60