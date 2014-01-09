BGP33O19 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 23, 2013;
 ;;13.0;IHS CLINICAL REPORTING;**1**;NOV 20, 2012;Build 7
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1064,54868-1090-06 ",.01)
 ;;54868-1090-06
 ;;9002226.02101,"1064,54868-1090-06 ",.02)
 ;;54868-1090-06
 ;;9002226.02101,"1064,54868-1296-01 ",.01)
 ;;54868-1296-01
 ;;9002226.02101,"1064,54868-1296-01 ",.02)
 ;;54868-1296-01
 ;;9002226.02101,"1064,54868-1296-02 ",.01)
 ;;54868-1296-02
 ;;9002226.02101,"1064,54868-1296-02 ",.02)
 ;;54868-1296-02
 ;;9002226.02101,"1064,54868-1415-01 ",.01)
 ;;54868-1415-01
 ;;9002226.02101,"1064,54868-1415-01 ",.02)
 ;;54868-1415-01
 ;;9002226.02101,"1064,54868-1501-00 ",.01)
 ;;54868-1501-00
 ;;9002226.02101,"1064,54868-1501-00 ",.02)
 ;;54868-1501-00
 ;;9002226.02101,"1064,54868-1501-01 ",.01)
 ;;54868-1501-01
 ;;9002226.02101,"1064,54868-1501-01 ",.02)
 ;;54868-1501-01
 ;;9002226.02101,"1064,54868-1502-00 ",.01)
 ;;54868-1502-00
 ;;9002226.02101,"1064,54868-1502-00 ",.02)
 ;;54868-1502-00
 ;;9002226.02101,"1064,54868-1775-01 ",.01)
 ;;54868-1775-01
 ;;9002226.02101,"1064,54868-1775-01 ",.02)
 ;;54868-1775-01
 ;;9002226.02101,"1064,54868-1775-04 ",.01)
 ;;54868-1775-04
 ;;9002226.02101,"1064,54868-1775-04 ",.02)
 ;;54868-1775-04
 ;;9002226.02101,"1064,54868-1802-00 ",.01)
 ;;54868-1802-00
 ;;9002226.02101,"1064,54868-1802-00 ",.02)
 ;;54868-1802-00
 ;;9002226.02101,"1064,54868-1960-00 ",.01)
 ;;54868-1960-00
 ;;9002226.02101,"1064,54868-1960-00 ",.02)
 ;;54868-1960-00
 ;;9002226.02101,"1064,54868-1961-01 ",.01)
 ;;54868-1961-01
 ;;9002226.02101,"1064,54868-1961-01 ",.02)
 ;;54868-1961-01
 ;;9002226.02101,"1064,54868-1961-02 ",.01)
 ;;54868-1961-02
 ;;9002226.02101,"1064,54868-1961-02 ",.02)
 ;;54868-1961-02
 ;;9002226.02101,"1064,54868-1970-01 ",.01)
 ;;54868-1970-01
 ;;9002226.02101,"1064,54868-1970-01 ",.02)
 ;;54868-1970-01
 ;;9002226.02101,"1064,54868-1970-02 ",.01)
 ;;54868-1970-02
 ;;9002226.02101,"1064,54868-1970-02 ",.02)
 ;;54868-1970-02
 ;;9002226.02101,"1064,54868-2280-00 ",.01)
 ;;54868-2280-00
 ;;9002226.02101,"1064,54868-2280-00 ",.02)
 ;;54868-2280-00
 ;;9002226.02101,"1064,54868-2280-02 ",.01)
 ;;54868-2280-02
 ;;9002226.02101,"1064,54868-2280-02 ",.02)
 ;;54868-2280-02
 ;;9002226.02101,"1064,54868-2350-01 ",.01)
 ;;54868-2350-01
 ;;9002226.02101,"1064,54868-2350-01 ",.02)
 ;;54868-2350-01
 ;;9002226.02101,"1064,54868-2350-02 ",.01)
 ;;54868-2350-02
 ;;9002226.02101,"1064,54868-2350-02 ",.02)
 ;;54868-2350-02
 ;;9002226.02101,"1064,54868-2350-03 ",.01)
 ;;54868-2350-03
 ;;9002226.02101,"1064,54868-2350-03 ",.02)
 ;;54868-2350-03
 ;;9002226.02101,"1064,54868-2350-04 ",.01)
 ;;54868-2350-04
 ;;9002226.02101,"1064,54868-2350-04 ",.02)
 ;;54868-2350-04
 ;;9002226.02101,"1064,54868-2351-00 ",.01)
 ;;54868-2351-00
 ;;9002226.02101,"1064,54868-2351-00 ",.02)
 ;;54868-2351-00
 ;;9002226.02101,"1064,54868-2351-02 ",.01)
 ;;54868-2351-02
 ;;9002226.02101,"1064,54868-2351-02 ",.02)
 ;;54868-2351-02
 ;;9002226.02101,"1064,54868-2351-03 ",.01)
 ;;54868-2351-03
 ;;9002226.02101,"1064,54868-2351-03 ",.02)
 ;;54868-2351-03
 ;;9002226.02101,"1064,54868-2352-00 ",.01)
 ;;54868-2352-00
 ;;9002226.02101,"1064,54868-2352-00 ",.02)
 ;;54868-2352-00
 ;;9002226.02101,"1064,54868-2352-01 ",.01)
 ;;54868-2352-01
 ;;9002226.02101,"1064,54868-2352-01 ",.02)
 ;;54868-2352-01
 ;;9002226.02101,"1064,54868-2368-00 ",.01)
 ;;54868-2368-00
 ;;9002226.02101,"1064,54868-2368-00 ",.02)
 ;;54868-2368-00
 ;;9002226.02101,"1064,54868-2368-01 ",.01)
 ;;54868-2368-01
 ;;9002226.02101,"1064,54868-2368-01 ",.02)
 ;;54868-2368-01
 ;;9002226.02101,"1064,54868-2368-02 ",.01)
 ;;54868-2368-02
 ;;9002226.02101,"1064,54868-2368-02 ",.02)
 ;;54868-2368-02
 ;;9002226.02101,"1064,54868-2644-00 ",.01)
 ;;54868-2644-00
 ;;9002226.02101,"1064,54868-2644-00 ",.02)
 ;;54868-2644-00
 ;;9002226.02101,"1064,54868-2644-01 ",.01)
 ;;54868-2644-01
 ;;9002226.02101,"1064,54868-2644-01 ",.02)
 ;;54868-2644-01
 ;;9002226.02101,"1064,54868-2644-02 ",.01)
 ;;54868-2644-02
 ;;9002226.02101,"1064,54868-2644-02 ",.02)
 ;;54868-2644-02
 ;;9002226.02101,"1064,54868-2645-00 ",.01)
 ;;54868-2645-00
 ;;9002226.02101,"1064,54868-2645-00 ",.02)
 ;;54868-2645-00
 ;;9002226.02101,"1064,54868-2645-01 ",.01)
 ;;54868-2645-01
 ;;9002226.02101,"1064,54868-2645-01 ",.02)
 ;;54868-2645-01
 ;;9002226.02101,"1064,54868-2645-03 ",.01)
 ;;54868-2645-03
 ;;9002226.02101,"1064,54868-2645-03 ",.02)
 ;;54868-2645-03
 ;;9002226.02101,"1064,54868-2665-00 ",.01)
 ;;54868-2665-00
 ;;9002226.02101,"1064,54868-2665-00 ",.02)
 ;;54868-2665-00
 ;;9002226.02101,"1064,54868-2665-01 ",.01)
 ;;54868-2665-01
 ;;9002226.02101,"1064,54868-2665-01 ",.02)
 ;;54868-2665-01
 ;;9002226.02101,"1064,54868-2666-01 ",.01)
 ;;54868-2666-01
 ;;9002226.02101,"1064,54868-2666-01 ",.02)
 ;;54868-2666-01
 ;;9002226.02101,"1064,54868-2666-02 ",.01)
 ;;54868-2666-02
 ;;9002226.02101,"1064,54868-2666-02 ",.02)
 ;;54868-2666-02
 ;;9002226.02101,"1064,54868-2666-03 ",.01)
 ;;54868-2666-03
 ;;9002226.02101,"1064,54868-2666-03 ",.02)
 ;;54868-2666-03
 ;;9002226.02101,"1064,54868-2666-04 ",.01)
 ;;54868-2666-04
 ;;9002226.02101,"1064,54868-2666-04 ",.02)
 ;;54868-2666-04
 ;;9002226.02101,"1064,54868-3279-00 ",.01)
 ;;54868-3279-00
 ;;9002226.02101,"1064,54868-3279-00 ",.02)
 ;;54868-3279-00
 ;;9002226.02101,"1064,54868-3279-02 ",.01)
 ;;54868-3279-02
 ;;9002226.02101,"1064,54868-3279-02 ",.02)
 ;;54868-3279-02
 ;;9002226.02101,"1064,54868-3279-03 ",.01)
 ;;54868-3279-03
 ;;9002226.02101,"1064,54868-3279-03 ",.02)
 ;;54868-3279-03
 ;;9002226.02101,"1064,54868-3307-00 ",.01)
 ;;54868-3307-00
 ;;9002226.02101,"1064,54868-3307-00 ",.02)
 ;;54868-3307-00
 ;;9002226.02101,"1064,54868-3307-01 ",.01)
 ;;54868-3307-01
 ;;9002226.02101,"1064,54868-3307-01 ",.02)
 ;;54868-3307-01
 ;;9002226.02101,"1064,54868-3443-00 ",.01)
 ;;54868-3443-00
 ;;9002226.02101,"1064,54868-3443-00 ",.02)
 ;;54868-3443-00
 ;;9002226.02101,"1064,54868-3443-01 ",.01)
 ;;54868-3443-01
 ;;9002226.02101,"1064,54868-3443-01 ",.02)
 ;;54868-3443-01
 ;;9002226.02101,"1064,54868-3445-00 ",.01)
 ;;54868-3445-00
 ;;9002226.02101,"1064,54868-3445-00 ",.02)
 ;;54868-3445-00
 ;;9002226.02101,"1064,54868-3445-01 ",.01)
 ;;54868-3445-01
 ;;9002226.02101,"1064,54868-3445-01 ",.02)
 ;;54868-3445-01
 ;;9002226.02101,"1064,54868-3690-01 ",.01)
 ;;54868-3690-01
 ;;9002226.02101,"1064,54868-3690-01 ",.02)
 ;;54868-3690-01
 ;;9002226.02101,"1064,54868-3723-01 ",.01)
 ;;54868-3723-01
 ;;9002226.02101,"1064,54868-3723-01 ",.02)
 ;;54868-3723-01
 ;;9002226.02101,"1064,54868-3724-01 ",.01)
 ;;54868-3724-01
 ;;9002226.02101,"1064,54868-3724-01 ",.02)
 ;;54868-3724-01
 ;;9002226.02101,"1064,54868-3724-02 ",.01)
 ;;54868-3724-02
 ;;9002226.02101,"1064,54868-3724-02 ",.02)
 ;;54868-3724-02
 ;;9002226.02101,"1064,54868-3724-03 ",.01)
 ;;54868-3724-03
 ;;9002226.02101,"1064,54868-3724-03 ",.02)
 ;;54868-3724-03
 ;;9002226.02101,"1064,54868-3725-01 ",.01)
 ;;54868-3725-01
 ;;9002226.02101,"1064,54868-3725-01 ",.02)
 ;;54868-3725-01
 ;;9002226.02101,"1064,54868-3725-02 ",.01)
 ;;54868-3725-02
 ;;9002226.02101,"1064,54868-3725-02 ",.02)
 ;;54868-3725-02
 ;;9002226.02101,"1064,54868-3769-00 ",.01)
 ;;54868-3769-00
 ;;9002226.02101,"1064,54868-3769-00 ",.02)
 ;;54868-3769-00
 ;;9002226.02101,"1064,54868-3846-00 ",.01)
 ;;54868-3846-00
 ;;9002226.02101,"1064,54868-3846-00 ",.02)
 ;;54868-3846-00
 ;;9002226.02101,"1064,54868-3906-00 ",.01)
 ;;54868-3906-00
 ;;9002226.02101,"1064,54868-3906-00 ",.02)
 ;;54868-3906-00
 ;;9002226.02101,"1064,54868-3906-01 ",.01)
 ;;54868-3906-01
 ;;9002226.02101,"1064,54868-3906-01 ",.02)
 ;;54868-3906-01
 ;;9002226.02101,"1064,54868-4003-00 ",.01)
 ;;54868-4003-00
 ;;9002226.02101,"1064,54868-4003-00 ",.02)
 ;;54868-4003-00
 ;;9002226.02101,"1064,54868-4062-00 ",.01)
 ;;54868-4062-00
 ;;9002226.02101,"1064,54868-4062-00 ",.02)
 ;;54868-4062-00
 ;;9002226.02101,"1064,54868-4062-01 ",.01)
 ;;54868-4062-01
 ;;9002226.02101,"1064,54868-4062-01 ",.02)
 ;;54868-4062-01
 ;;9002226.02101,"1064,54868-4066-00 ",.01)
 ;;54868-4066-00
 ;;9002226.02101,"1064,54868-4066-00 ",.02)
 ;;54868-4066-00
 ;;9002226.02101,"1064,54868-4066-01 ",.01)
 ;;54868-4066-01
 ;;9002226.02101,"1064,54868-4066-01 ",.02)
 ;;54868-4066-01
 ;;9002226.02101,"1064,54868-4073-00 ",.01)
 ;;54868-4073-00
 ;;9002226.02101,"1064,54868-4073-00 ",.02)
 ;;54868-4073-00
 ;;9002226.02101,"1064,54868-4073-01 ",.01)
 ;;54868-4073-01
 ;;9002226.02101,"1064,54868-4073-01 ",.02)
 ;;54868-4073-01
 ;;9002226.02101,"1064,54868-4073-02 ",.01)
 ;;54868-4073-02
 ;;9002226.02101,"1064,54868-4073-02 ",.02)
 ;;54868-4073-02
 ;;9002226.02101,"1064,54868-4073-03 ",.01)
 ;;54868-4073-03
 ;;9002226.02101,"1064,54868-4073-03 ",.02)
 ;;54868-4073-03
 ;;9002226.02101,"1064,54868-4074-00 ",.01)
 ;;54868-4074-00
 ;;9002226.02101,"1064,54868-4074-00 ",.02)
 ;;54868-4074-00
 ;;9002226.02101,"1064,54868-4074-01 ",.01)
 ;;54868-4074-01
 ;;9002226.02101,"1064,54868-4074-01 ",.02)
 ;;54868-4074-01
 ;;9002226.02101,"1064,54868-4074-02 ",.01)
 ;;54868-4074-02
 ;;9002226.02101,"1064,54868-4074-02 ",.02)
 ;;54868-4074-02
 ;;9002226.02101,"1064,54868-4074-03 ",.01)
 ;;54868-4074-03
 ;;9002226.02101,"1064,54868-4074-03 ",.02)
 ;;54868-4074-03
 ;;9002226.02101,"1064,54868-4074-04 ",.01)
 ;;54868-4074-04
 ;;9002226.02101,"1064,54868-4074-04 ",.02)
 ;;54868-4074-04
 ;;9002226.02101,"1064,54868-4088-00 ",.01)
 ;;54868-4088-00
 ;;9002226.02101,"1064,54868-4088-00 ",.02)
 ;;54868-4088-00
 ;;9002226.02101,"1064,54868-4088-01 ",.01)
 ;;54868-4088-01
 ;;9002226.02101,"1064,54868-4088-01 ",.02)
 ;;54868-4088-01
 ;;9002226.02101,"1064,54868-4088-02 ",.01)
 ;;54868-4088-02
 ;;9002226.02101,"1064,54868-4088-02 ",.02)
 ;;54868-4088-02
 ;;9002226.02101,"1064,54868-4209-00 ",.01)
 ;;54868-4209-00
 ;;9002226.02101,"1064,54868-4209-00 ",.02)
 ;;54868-4209-00
 ;;9002226.02101,"1064,54868-4331-00 ",.01)
 ;;54868-4331-00
 ;;9002226.02101,"1064,54868-4331-00 ",.02)
 ;;54868-4331-00
 ;;9002226.02101,"1064,54868-4331-01 ",.01)
 ;;54868-4331-01
 ;;9002226.02101,"1064,54868-4331-01 ",.02)
 ;;54868-4331-01
 ;;9002226.02101,"1064,54868-4331-02 ",.01)
 ;;54868-4331-02
 ;;9002226.02101,"1064,54868-4331-02 ",.02)
 ;;54868-4331-02
 ;;9002226.02101,"1064,54868-4332-00 ",.01)
 ;;54868-4332-00
 ;;9002226.02101,"1064,54868-4332-00 ",.02)
 ;;54868-4332-00
 ;;9002226.02101,"1064,54868-4332-01 ",.01)
 ;;54868-4332-01
 ;;9002226.02101,"1064,54868-4332-01 ",.02)
 ;;54868-4332-01
 ;;9002226.02101,"1064,54868-4332-02 ",.01)
 ;;54868-4332-02
 ;;9002226.02101,"1064,54868-4332-02 ",.02)
 ;;54868-4332-02
 ;;9002226.02101,"1064,54868-4357-00 ",.01)
 ;;54868-4357-00
 ;;9002226.02101,"1064,54868-4357-00 ",.02)
 ;;54868-4357-00
 ;;9002226.02101,"1064,54868-4357-01 ",.01)
 ;;54868-4357-01
 ;;9002226.02101,"1064,54868-4357-01 ",.02)
 ;;54868-4357-01
 ;;9002226.02101,"1064,54868-4357-02 ",.01)
 ;;54868-4357-02
 ;;9002226.02101,"1064,54868-4357-02 ",.02)
 ;;54868-4357-02
 ;;9002226.02101,"1064,54868-4357-03 ",.01)
 ;;54868-4357-03
 ;;9002226.02101,"1064,54868-4357-03 ",.02)
 ;;54868-4357-03
 ;;9002226.02101,"1064,54868-4358-00 ",.01)
 ;;54868-4358-00
 ;;9002226.02101,"1064,54868-4358-00 ",.02)
 ;;54868-4358-00
 ;;9002226.02101,"1064,54868-4358-01 ",.01)
 ;;54868-4358-01
 ;;9002226.02101,"1064,54868-4358-01 ",.02)
 ;;54868-4358-01
 ;;9002226.02101,"1064,54868-4358-02 ",.01)
 ;;54868-4358-02
 ;;9002226.02101,"1064,54868-4358-02 ",.02)
 ;;54868-4358-02
 ;;9002226.02101,"1064,54868-4479-00 ",.01)
 ;;54868-4479-00
 ;;9002226.02101,"1064,54868-4479-00 ",.02)
 ;;54868-4479-00
 ;;9002226.02101,"1064,54868-4479-01 ",.01)
 ;;54868-4479-01
 ;;9002226.02101,"1064,54868-4479-01 ",.02)
 ;;54868-4479-01
 ;;9002226.02101,"1064,54868-4479-02 ",.01)
 ;;54868-4479-02
 ;;9002226.02101,"1064,54868-4479-02 ",.02)
 ;;54868-4479-02
 ;;9002226.02101,"1064,54868-4552-00 ",.01)
 ;;54868-4552-00
 ;;9002226.02101,"1064,54868-4552-00 ",.02)
 ;;54868-4552-00
 ;;9002226.02101,"1064,54868-4552-01 ",.01)
 ;;54868-4552-01
 ;;9002226.02101,"1064,54868-4552-01 ",.02)
 ;;54868-4552-01
 ;;9002226.02101,"1064,54868-4555-00 ",.01)
 ;;54868-4555-00
 ;;9002226.02101,"1064,54868-4555-00 ",.02)
 ;;54868-4555-00
 ;;9002226.02101,"1064,54868-4555-01 ",.01)
 ;;54868-4555-01
 ;;9002226.02101,"1064,54868-4555-01 ",.02)
 ;;54868-4555-01
 ;;9002226.02101,"1064,54868-4637-00 ",.01)
 ;;54868-4637-00
 ;;9002226.02101,"1064,54868-4637-00 ",.02)
 ;;54868-4637-00
 ;;9002226.02101,"1064,54868-4637-01 ",.01)
 ;;54868-4637-01
 ;;9002226.02101,"1064,54868-4637-01 ",.02)
 ;;54868-4637-01
 ;;9002226.02101,"1064,54868-4637-02 ",.01)
 ;;54868-4637-02
 ;;9002226.02101,"1064,54868-4637-02 ",.02)
 ;;54868-4637-02
 ;;9002226.02101,"1064,54868-4637-03 ",.01)
 ;;54868-4637-03
 ;;9002226.02101,"1064,54868-4637-03 ",.02)
 ;;54868-4637-03
 ;;9002226.02101,"1064,54868-4646-00 ",.01)
 ;;54868-4646-00
 ;;9002226.02101,"1064,54868-4646-00 ",.02)
 ;;54868-4646-00
 ;;9002226.02101,"1064,54868-4646-01 ",.01)
 ;;54868-4646-01
 ;;9002226.02101,"1064,54868-4646-01 ",.02)
 ;;54868-4646-01
 ;;9002226.02101,"1064,54868-4646-02 ",.01)
 ;;54868-4646-02
 ;;9002226.02101,"1064,54868-4646-02 ",.02)
 ;;54868-4646-02
 ;;9002226.02101,"1064,54868-4646-03 ",.01)
 ;;54868-4646-03
 ;;9002226.02101,"1064,54868-4646-03 ",.02)
 ;;54868-4646-03
 ;;9002226.02101,"1064,54868-4656-00 ",.01)
 ;;54868-4656-00
 ;;9002226.02101,"1064,54868-4656-00 ",.02)
 ;;54868-4656-00
 ;;9002226.02101,"1064,54868-4656-01 ",.01)
 ;;54868-4656-01
 ;;9002226.02101,"1064,54868-4656-01 ",.02)
 ;;54868-4656-01
 ;;9002226.02101,"1064,54868-4657-00 ",.01)
 ;;54868-4657-00