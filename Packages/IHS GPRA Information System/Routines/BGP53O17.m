BGP53O17 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 24, 2015;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1064,54569-5434-05 ",.01)
 ;;54569-5434-05
 ;;9002226.02101,"1064,54569-5434-05 ",.02)
 ;;54569-5434-05
 ;;9002226.02101,"1064,54569-5435-00 ",.01)
 ;;54569-5435-00
 ;;9002226.02101,"1064,54569-5435-00 ",.02)
 ;;54569-5435-00
 ;;9002226.02101,"1064,54569-5435-03 ",.01)
 ;;54569-5435-03
 ;;9002226.02101,"1064,54569-5435-03 ",.02)
 ;;54569-5435-03
 ;;9002226.02101,"1064,54569-5435-04 ",.01)
 ;;54569-5435-04
 ;;9002226.02101,"1064,54569-5435-04 ",.02)
 ;;54569-5435-04
 ;;9002226.02101,"1064,54569-5435-05 ",.01)
 ;;54569-5435-05
 ;;9002226.02101,"1064,54569-5435-05 ",.02)
 ;;54569-5435-05
 ;;9002226.02101,"1064,54569-5437-00 ",.01)
 ;;54569-5437-00
 ;;9002226.02101,"1064,54569-5437-00 ",.02)
 ;;54569-5437-00
 ;;9002226.02101,"1064,54569-5437-02 ",.01)
 ;;54569-5437-02
 ;;9002226.02101,"1064,54569-5437-02 ",.02)
 ;;54569-5437-02
 ;;9002226.02101,"1064,54569-5438-00 ",.01)
 ;;54569-5438-00
 ;;9002226.02101,"1064,54569-5438-00 ",.02)
 ;;54569-5438-00
 ;;9002226.02101,"1064,54569-5438-03 ",.01)
 ;;54569-5438-03
 ;;9002226.02101,"1064,54569-5438-03 ",.02)
 ;;54569-5438-03
 ;;9002226.02101,"1064,54569-5472-00 ",.01)
 ;;54569-5472-00
 ;;9002226.02101,"1064,54569-5472-00 ",.02)
 ;;54569-5472-00
 ;;9002226.02101,"1064,54569-5472-02 ",.01)
 ;;54569-5472-02
 ;;9002226.02101,"1064,54569-5472-02 ",.02)
 ;;54569-5472-02
 ;;9002226.02101,"1064,54569-5621-00 ",.01)
 ;;54569-5621-00
 ;;9002226.02101,"1064,54569-5621-00 ",.02)
 ;;54569-5621-00
 ;;9002226.02101,"1064,54569-5668-00 ",.01)
 ;;54569-5668-00
 ;;9002226.02101,"1064,54569-5668-00 ",.02)
 ;;54569-5668-00
 ;;9002226.02101,"1064,54569-5668-01 ",.01)
 ;;54569-5668-01
 ;;9002226.02101,"1064,54569-5668-01 ",.02)
 ;;54569-5668-01
 ;;9002226.02101,"1064,54569-5668-02 ",.01)
 ;;54569-5668-02
 ;;9002226.02101,"1064,54569-5668-02 ",.02)
 ;;54569-5668-02
 ;;9002226.02101,"1064,54569-5669-00 ",.01)
 ;;54569-5669-00
 ;;9002226.02101,"1064,54569-5669-00 ",.02)
 ;;54569-5669-00
 ;;9002226.02101,"1064,54569-5669-01 ",.01)
 ;;54569-5669-01
 ;;9002226.02101,"1064,54569-5669-01 ",.02)
 ;;54569-5669-01
 ;;9002226.02101,"1064,54569-5670-00 ",.01)
 ;;54569-5670-00
 ;;9002226.02101,"1064,54569-5670-00 ",.02)
 ;;54569-5670-00
 ;;9002226.02101,"1064,54569-5670-01 ",.01)
 ;;54569-5670-01
 ;;9002226.02101,"1064,54569-5670-01 ",.02)
 ;;54569-5670-01
 ;;9002226.02101,"1064,54569-5685-00 ",.01)
 ;;54569-5685-00
 ;;9002226.02101,"1064,54569-5685-00 ",.02)
 ;;54569-5685-00
 ;;9002226.02101,"1064,54569-5685-01 ",.01)
 ;;54569-5685-01
 ;;9002226.02101,"1064,54569-5685-01 ",.02)
 ;;54569-5685-01
 ;;9002226.02101,"1064,54569-5709-00 ",.01)
 ;;54569-5709-00
 ;;9002226.02101,"1064,54569-5709-00 ",.02)
 ;;54569-5709-00
 ;;9002226.02101,"1064,54569-5710-00 ",.01)
 ;;54569-5710-00
 ;;9002226.02101,"1064,54569-5710-00 ",.02)
 ;;54569-5710-00
 ;;9002226.02101,"1064,54569-5711-00 ",.01)
 ;;54569-5711-00
 ;;9002226.02101,"1064,54569-5711-00 ",.02)
 ;;54569-5711-00
 ;;9002226.02101,"1064,54569-5728-00 ",.01)
 ;;54569-5728-00
 ;;9002226.02101,"1064,54569-5728-00 ",.02)
 ;;54569-5728-00
 ;;9002226.02101,"1064,54569-5878-00 ",.01)
 ;;54569-5878-00
 ;;9002226.02101,"1064,54569-5878-00 ",.02)
 ;;54569-5878-00
 ;;9002226.02101,"1064,54569-5936-00 ",.01)
 ;;54569-5936-00
 ;;9002226.02101,"1064,54569-5936-00 ",.02)
 ;;54569-5936-00
 ;;9002226.02101,"1064,54569-5937-00 ",.01)
 ;;54569-5937-00
 ;;9002226.02101,"1064,54569-5937-00 ",.02)
 ;;54569-5937-00
 ;;9002226.02101,"1064,54569-5938-00 ",.01)
 ;;54569-5938-00
 ;;9002226.02101,"1064,54569-5938-00 ",.02)
 ;;54569-5938-00
 ;;9002226.02101,"1064,54569-6091-00 ",.01)
 ;;54569-6091-00
 ;;9002226.02101,"1064,54569-6091-00 ",.02)
 ;;54569-6091-00
 ;;9002226.02101,"1064,54569-6091-01 ",.01)
 ;;54569-6091-01
 ;;9002226.02101,"1064,54569-6091-01 ",.02)
 ;;54569-6091-01
 ;;9002226.02101,"1064,54569-6092-00 ",.01)
 ;;54569-6092-00
 ;;9002226.02101,"1064,54569-6092-00 ",.02)
 ;;54569-6092-00
 ;;9002226.02101,"1064,54569-6092-01 ",.01)
 ;;54569-6092-01
 ;;9002226.02101,"1064,54569-6092-01 ",.02)
 ;;54569-6092-01
 ;;9002226.02101,"1064,54569-6098-00 ",.01)
 ;;54569-6098-00
 ;;9002226.02101,"1064,54569-6098-00 ",.02)
 ;;54569-6098-00
 ;;9002226.02101,"1064,54569-6111-00 ",.01)
 ;;54569-6111-00
 ;;9002226.02101,"1064,54569-6111-00 ",.02)
 ;;54569-6111-00
 ;;9002226.02101,"1064,54569-6111-01 ",.01)
 ;;54569-6111-01
 ;;9002226.02101,"1064,54569-6111-01 ",.02)
 ;;54569-6111-01
 ;;9002226.02101,"1064,54569-6112-00 ",.01)
 ;;54569-6112-00
 ;;9002226.02101,"1064,54569-6112-00 ",.02)
 ;;54569-6112-00
 ;;9002226.02101,"1064,54569-6112-01 ",.01)
 ;;54569-6112-01
 ;;9002226.02101,"1064,54569-6112-01 ",.02)
 ;;54569-6112-01
 ;;9002226.02101,"1064,54569-6228-00 ",.01)
 ;;54569-6228-00
 ;;9002226.02101,"1064,54569-6228-00 ",.02)
 ;;54569-6228-00
 ;;9002226.02101,"1064,54569-6228-01 ",.01)
 ;;54569-6228-01
 ;;9002226.02101,"1064,54569-6228-01 ",.02)
 ;;54569-6228-01
 ;;9002226.02101,"1064,54569-8515-00 ",.01)
 ;;54569-8515-00
 ;;9002226.02101,"1064,54569-8515-00 ",.02)
 ;;54569-8515-00
 ;;9002226.02101,"1064,54569-8527-00 ",.01)
 ;;54569-8527-00
 ;;9002226.02101,"1064,54569-8527-00 ",.02)
 ;;54569-8527-00
 ;;9002226.02101,"1064,54569-8583-00 ",.01)
 ;;54569-8583-00
 ;;9002226.02101,"1064,54569-8583-00 ",.02)
 ;;54569-8583-00
 ;;9002226.02101,"1064,54569-8584-00 ",.01)
 ;;54569-8584-00
 ;;9002226.02101,"1064,54569-8584-00 ",.02)
 ;;54569-8584-00
 ;;9002226.02101,"1064,54569-8595-00 ",.01)
 ;;54569-8595-00
 ;;9002226.02101,"1064,54569-8595-00 ",.02)
 ;;54569-8595-00
 ;;9002226.02101,"1064,54868-0541-00 ",.01)
 ;;54868-0541-00
 ;;9002226.02101,"1064,54868-0541-00 ",.02)
 ;;54868-0541-00
 ;;9002226.02101,"1064,54868-0541-01 ",.01)
 ;;54868-0541-01
 ;;9002226.02101,"1064,54868-0541-01 ",.02)
 ;;54868-0541-01
 ;;9002226.02101,"1064,54868-0541-03 ",.01)
 ;;54868-0541-03
 ;;9002226.02101,"1064,54868-0541-03 ",.02)
 ;;54868-0541-03
 ;;9002226.02101,"1064,54868-0620-01 ",.01)
 ;;54868-0620-01
 ;;9002226.02101,"1064,54868-0620-01 ",.02)
 ;;54868-0620-01
 ;;9002226.02101,"1064,54868-0620-02 ",.01)
 ;;54868-0620-02
 ;;9002226.02101,"1064,54868-0620-02 ",.02)
 ;;54868-0620-02
 ;;9002226.02101,"1064,54868-0620-03 ",.01)
 ;;54868-0620-03
 ;;9002226.02101,"1064,54868-0620-03 ",.02)
 ;;54868-0620-03
 ;;9002226.02101,"1064,54868-0620-05 ",.01)
 ;;54868-0620-05
 ;;9002226.02101,"1064,54868-0620-05 ",.02)
 ;;54868-0620-05
 ;;9002226.02101,"1064,54868-1001-01 ",.01)
 ;;54868-1001-01
 ;;9002226.02101,"1064,54868-1001-01 ",.02)
 ;;54868-1001-01
 ;;9002226.02101,"1064,54868-1090-01 ",.01)
 ;;54868-1090-01
 ;;9002226.02101,"1064,54868-1090-01 ",.02)
 ;;54868-1090-01
 ;;9002226.02101,"1064,54868-1090-05 ",.01)
 ;;54868-1090-05
 ;;9002226.02101,"1064,54868-1090-05 ",.02)
 ;;54868-1090-05
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