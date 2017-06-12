BGP44I17 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON SEP 06, 2013;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1788,53002-1251-00 ",.02)
 ;;53002-1251-00
 ;;9002226.02101,"1788,53002-1251-03 ",.01)
 ;;53002-1251-03
 ;;9002226.02101,"1788,53002-1251-03 ",.02)
 ;;53002-1251-03
 ;;9002226.02101,"1788,53002-1251-06 ",.01)
 ;;53002-1251-06
 ;;9002226.02101,"1788,53002-1251-06 ",.02)
 ;;53002-1251-06
 ;;9002226.02101,"1788,53002-1422-00 ",.01)
 ;;53002-1422-00
 ;;9002226.02101,"1788,53002-1422-00 ",.02)
 ;;53002-1422-00
 ;;9002226.02101,"1788,53002-1422-03 ",.01)
 ;;53002-1422-03
 ;;9002226.02101,"1788,53002-1422-03 ",.02)
 ;;53002-1422-03
 ;;9002226.02101,"1788,53002-1422-06 ",.01)
 ;;53002-1422-06
 ;;9002226.02101,"1788,53002-1422-06 ",.02)
 ;;53002-1422-06
 ;;9002226.02101,"1788,53002-1445-00 ",.01)
 ;;53002-1445-00
 ;;9002226.02101,"1788,53002-1445-00 ",.02)
 ;;53002-1445-00
 ;;9002226.02101,"1788,53002-1445-03 ",.01)
 ;;53002-1445-03
 ;;9002226.02101,"1788,53002-1445-03 ",.02)
 ;;53002-1445-03
 ;;9002226.02101,"1788,53002-1445-06 ",.01)
 ;;53002-1445-06
 ;;9002226.02101,"1788,53002-1445-06 ",.02)
 ;;53002-1445-06
 ;;9002226.02101,"1788,53746-0178-01 ",.01)
 ;;53746-0178-01
 ;;9002226.02101,"1788,53746-0178-01 ",.02)
 ;;53746-0178-01
 ;;9002226.02101,"1788,53746-0178-05 ",.01)
 ;;53746-0178-05
 ;;9002226.02101,"1788,53746-0178-05 ",.02)
 ;;53746-0178-05
 ;;9002226.02101,"1788,53746-0178-10 ",.01)
 ;;53746-0178-10
 ;;9002226.02101,"1788,53746-0178-10 ",.02)
 ;;53746-0178-10
 ;;9002226.02101,"1788,53746-0178-90 ",.01)
 ;;53746-0178-90
 ;;9002226.02101,"1788,53746-0178-90 ",.02)
 ;;53746-0178-90
 ;;9002226.02101,"1788,53746-0179-01 ",.01)
 ;;53746-0179-01
 ;;9002226.02101,"1788,53746-0179-01 ",.02)
 ;;53746-0179-01
 ;;9002226.02101,"1788,53746-0179-05 ",.01)
 ;;53746-0179-05
 ;;9002226.02101,"1788,53746-0179-05 ",.02)
 ;;53746-0179-05
 ;;9002226.02101,"1788,54348-0098-30 ",.01)
 ;;54348-0098-30
 ;;9002226.02101,"1788,54348-0098-30 ",.02)
 ;;54348-0098-30
 ;;9002226.02101,"1788,54348-0104-30 ",.01)
 ;;54348-0104-30
 ;;9002226.02101,"1788,54348-0104-30 ",.02)
 ;;54348-0104-30
 ;;9002226.02101,"1788,54458-0966-10 ",.01)
 ;;54458-0966-10
 ;;9002226.02101,"1788,54458-0966-10 ",.02)
 ;;54458-0966-10
 ;;9002226.02101,"1788,54458-0967-10 ",.01)
 ;;54458-0967-10
 ;;9002226.02101,"1788,54458-0967-10 ",.02)
 ;;54458-0967-10
 ;;9002226.02101,"1788,54458-0968-10 ",.01)
 ;;54458-0968-10
 ;;9002226.02101,"1788,54458-0968-10 ",.02)
 ;;54458-0968-10
 ;;9002226.02101,"1788,54569-3830-00 ",.01)
 ;;54569-3830-00
 ;;9002226.02101,"1788,54569-3830-00 ",.02)
 ;;54569-3830-00
 ;;9002226.02101,"1788,54569-3830-02 ",.01)
 ;;54569-3830-02
 ;;9002226.02101,"1788,54569-3830-02 ",.02)
 ;;54569-3830-02
 ;;9002226.02101,"1788,54569-3831-00 ",.01)
 ;;54569-3831-00
 ;;9002226.02101,"1788,54569-3831-00 ",.02)
 ;;54569-3831-00
 ;;9002226.02101,"1788,54569-3831-01 ",.01)
 ;;54569-3831-01
 ;;9002226.02101,"1788,54569-3831-01 ",.02)
 ;;54569-3831-01
 ;;9002226.02101,"1788,54569-3831-02 ",.01)
 ;;54569-3831-02
 ;;9002226.02101,"1788,54569-3831-02 ",.02)
 ;;54569-3831-02
 ;;9002226.02101,"1788,54569-3831-08 ",.01)
 ;;54569-3831-08
 ;;9002226.02101,"1788,54569-3831-08 ",.02)
 ;;54569-3831-08
 ;;9002226.02101,"1788,54569-3841-00 ",.01)
 ;;54569-3841-00
 ;;9002226.02101,"1788,54569-3841-00 ",.02)
 ;;54569-3841-00
 ;;9002226.02101,"1788,54569-3841-01 ",.01)
 ;;54569-3841-01
 ;;9002226.02101,"1788,54569-3841-01 ",.02)
 ;;54569-3841-01
 ;;9002226.02101,"1788,54569-3841-02 ",.01)
 ;;54569-3841-02
 ;;9002226.02101,"1788,54569-3841-02 ",.02)
 ;;54569-3841-02
 ;;9002226.02101,"1788,54569-3842-00 ",.01)
 ;;54569-3842-00
 ;;9002226.02101,"1788,54569-3842-00 ",.02)
 ;;54569-3842-00
 ;;9002226.02101,"1788,54569-3842-01 ",.01)
 ;;54569-3842-01
 ;;9002226.02101,"1788,54569-3842-01 ",.02)
 ;;54569-3842-01
 ;;9002226.02101,"1788,54569-3842-02 ",.01)
 ;;54569-3842-02
 ;;9002226.02101,"1788,54569-3842-02 ",.02)
 ;;54569-3842-02
 ;;9002226.02101,"1788,54569-3842-04 ",.01)
 ;;54569-3842-04
 ;;9002226.02101,"1788,54569-3842-04 ",.02)
 ;;54569-3842-04
 ;;9002226.02101,"1788,54569-3937-00 ",.01)
 ;;54569-3937-00
 ;;9002226.02101,"1788,54569-3937-00 ",.02)
 ;;54569-3937-00
 ;;9002226.02101,"1788,54569-3938-00 ",.01)
 ;;54569-3938-00
 ;;9002226.02101,"1788,54569-3938-00 ",.02)
 ;;54569-3938-00
 ;;9002226.02101,"1788,54569-4202-02 ",.01)
 ;;54569-4202-02
 ;;9002226.02101,"1788,54569-4202-02 ",.02)
 ;;54569-4202-02
 ;;9002226.02101,"1788,54569-4740-00 ",.01)
 ;;54569-4740-00
 ;;9002226.02101,"1788,54569-4740-00 ",.02)
 ;;54569-4740-00
 ;;9002226.02101,"1788,54569-4880-00 ",.01)
 ;;54569-4880-00
 ;;9002226.02101,"1788,54569-4880-00 ",.02)
 ;;54569-4880-00
 ;;9002226.02101,"1788,54569-4881-00 ",.01)
 ;;54569-4881-00
 ;;9002226.02101,"1788,54569-4881-00 ",.02)
 ;;54569-4881-00
 ;;9002226.02101,"1788,54569-4882-00 ",.01)
 ;;54569-4882-00
 ;;9002226.02101,"1788,54569-4882-00 ",.02)
 ;;54569-4882-00
 ;;9002226.02101,"1788,54569-5353-00 ",.01)
 ;;54569-5353-00
 ;;9002226.02101,"1788,54569-5353-00 ",.02)
 ;;54569-5353-00
 ;;9002226.02101,"1788,54569-5353-02 ",.01)
 ;;54569-5353-02
 ;;9002226.02101,"1788,54569-5353-02 ",.02)
 ;;54569-5353-02
 ;;9002226.02101,"1788,54569-5353-03 ",.01)
 ;;54569-5353-03
 ;;9002226.02101,"1788,54569-5353-03 ",.02)
 ;;54569-5353-03
 ;;9002226.02101,"1788,54569-5353-04 ",.01)
 ;;54569-5353-04
 ;;9002226.02101,"1788,54569-5353-04 ",.02)
 ;;54569-5353-04
 ;;9002226.02101,"1788,54569-5353-05 ",.01)
 ;;54569-5353-05
 ;;9002226.02101,"1788,54569-5353-05 ",.02)
 ;;54569-5353-05
 ;;9002226.02101,"1788,54569-5353-06 ",.01)
 ;;54569-5353-06
 ;;9002226.02101,"1788,54569-5353-06 ",.02)
 ;;54569-5353-06
 ;;9002226.02101,"1788,54569-5360-00 ",.01)
 ;;54569-5360-00
 ;;9002226.02101,"1788,54569-5360-00 ",.02)
 ;;54569-5360-00
 ;;9002226.02101,"1788,54569-5360-03 ",.01)
 ;;54569-5360-03
 ;;9002226.02101,"1788,54569-5360-03 ",.02)
 ;;54569-5360-03
 ;;9002226.02101,"1788,54569-5373-00 ",.01)
 ;;54569-5373-00
 ;;9002226.02101,"1788,54569-5373-00 ",.02)
 ;;54569-5373-00
 ;;9002226.02101,"1788,54569-5373-02 ",.01)
 ;;54569-5373-02
 ;;9002226.02101,"1788,54569-5373-02 ",.02)
 ;;54569-5373-02
 ;;9002226.02101,"1788,54569-5546-00 ",.01)
 ;;54569-5546-00
 ;;9002226.02101,"1788,54569-5546-00 ",.02)
 ;;54569-5546-00
 ;;9002226.02101,"1788,54569-5546-01 ",.01)
 ;;54569-5546-01
 ;;9002226.02101,"1788,54569-5546-01 ",.02)
 ;;54569-5546-01
 ;;9002226.02101,"1788,54569-5546-02 ",.01)
 ;;54569-5546-02
 ;;9002226.02101,"1788,54569-5546-02 ",.02)
 ;;54569-5546-02
 ;;9002226.02101,"1788,54569-5546-03 ",.01)
 ;;54569-5546-03
 ;;9002226.02101,"1788,54569-5546-03 ",.02)
 ;;54569-5546-03
 ;;9002226.02101,"1788,54569-5547-00 ",.01)
 ;;54569-5547-00
 ;;9002226.02101,"1788,54569-5547-00 ",.02)
 ;;54569-5547-00
 ;;9002226.02101,"1788,54569-5547-02 ",.01)
 ;;54569-5547-02
 ;;9002226.02101,"1788,54569-5547-02 ",.02)
 ;;54569-5547-02
 ;;9002226.02101,"1788,54569-5548-00 ",.01)
 ;;54569-5548-00
 ;;9002226.02101,"1788,54569-5548-00 ",.02)
 ;;54569-5548-00
 ;;9002226.02101,"1788,54569-5548-01 ",.01)
 ;;54569-5548-01
 ;;9002226.02101,"1788,54569-5548-01 ",.02)
 ;;54569-5548-01
 ;;9002226.02101,"1788,54569-5548-02 ",.01)
 ;;54569-5548-02
 ;;9002226.02101,"1788,54569-5548-02 ",.02)
 ;;54569-5548-02
 ;;9002226.02101,"1788,54569-5618-00 ",.01)
 ;;54569-5618-00
 ;;9002226.02101,"1788,54569-5618-00 ",.02)
 ;;54569-5618-00
 ;;9002226.02101,"1788,54569-5618-01 ",.01)
 ;;54569-5618-01
 ;;9002226.02101,"1788,54569-5618-01 ",.02)
 ;;54569-5618-01
 ;;9002226.02101,"1788,54569-5618-02 ",.01)
 ;;54569-5618-02
 ;;9002226.02101,"1788,54569-5618-02 ",.02)
 ;;54569-5618-02
 ;;9002226.02101,"1788,54569-5618-03 ",.01)
 ;;54569-5618-03
 ;;9002226.02101,"1788,54569-5618-03 ",.02)
 ;;54569-5618-03
 ;;9002226.02101,"1788,54569-5619-00 ",.01)
 ;;54569-5619-00
 ;;9002226.02101,"1788,54569-5619-00 ",.02)
 ;;54569-5619-00
 ;;9002226.02101,"1788,54569-5619-01 ",.01)
 ;;54569-5619-01
 ;;9002226.02101,"1788,54569-5619-01 ",.02)
 ;;54569-5619-01
 ;;9002226.02101,"1788,54569-5619-02 ",.01)
 ;;54569-5619-02
 ;;9002226.02101,"1788,54569-5619-02 ",.02)
 ;;54569-5619-02
 ;;9002226.02101,"1788,54569-5619-03 ",.01)
 ;;54569-5619-03
 ;;9002226.02101,"1788,54569-5619-03 ",.02)
 ;;54569-5619-03
 ;;9002226.02101,"1788,54569-5619-04 ",.01)
 ;;54569-5619-04
 ;;9002226.02101,"1788,54569-5619-04 ",.02)
 ;;54569-5619-04
 ;;9002226.02101,"1788,54569-5855-00 ",.01)
 ;;54569-5855-00
 ;;9002226.02101,"1788,54569-5855-00 ",.02)
 ;;54569-5855-00
 ;;9002226.02101,"1788,54569-5855-01 ",.01)
 ;;54569-5855-01
 ;;9002226.02101,"1788,54569-5855-01 ",.02)
 ;;54569-5855-01
 ;;9002226.02101,"1788,54569-5855-02 ",.01)
 ;;54569-5855-02
 ;;9002226.02101,"1788,54569-5855-02 ",.02)
 ;;54569-5855-02
 ;;9002226.02101,"1788,54569-5855-03 ",.01)
 ;;54569-5855-03
 ;;9002226.02101,"1788,54569-5855-03 ",.02)
 ;;54569-5855-03
 ;;9002226.02101,"1788,54569-5925-00 ",.01)
 ;;54569-5925-00
 ;;9002226.02101,"1788,54569-5925-00 ",.02)
 ;;54569-5925-00
 ;;9002226.02101,"1788,54569-5992-00 ",.01)
 ;;54569-5992-00
 ;;9002226.02101,"1788,54569-5992-00 ",.02)
 ;;54569-5992-00
 ;;9002226.02101,"1788,54569-5992-01 ",.01)
 ;;54569-5992-01
 ;;9002226.02101,"1788,54569-5992-01 ",.02)
 ;;54569-5992-01
 ;;9002226.02101,"1788,54569-5993-00 ",.01)
 ;;54569-5993-00
 ;;9002226.02101,"1788,54569-5993-00 ",.02)
 ;;54569-5993-00
 ;;9002226.02101,"1788,54569-5993-01 ",.01)
 ;;54569-5993-01
 ;;9002226.02101,"1788,54569-5993-01 ",.02)
 ;;54569-5993-01
 ;;9002226.02101,"1788,54569-6072-00 ",.01)
 ;;54569-6072-00
 ;;9002226.02101,"1788,54569-6072-00 ",.02)
 ;;54569-6072-00
 ;;9002226.02101,"1788,54569-6072-01 ",.01)
 ;;54569-6072-01
 ;;9002226.02101,"1788,54569-6072-01 ",.02)
 ;;54569-6072-01
 ;;9002226.02101,"1788,54569-6072-02 ",.01)
 ;;54569-6072-02
 ;;9002226.02101,"1788,54569-6072-02 ",.02)
 ;;54569-6072-02
 ;;9002226.02101,"1788,54569-6072-03 ",.01)
 ;;54569-6072-03
 ;;9002226.02101,"1788,54569-6072-03 ",.02)
 ;;54569-6072-03
 ;;9002226.02101,"1788,54569-6354-00 ",.01)
 ;;54569-6354-00
 ;;9002226.02101,"1788,54569-6354-00 ",.02)
 ;;54569-6354-00
 ;;9002226.02101,"1788,54569-6354-01 ",.01)
 ;;54569-6354-01
 ;;9002226.02101,"1788,54569-6354-01 ",.02)
 ;;54569-6354-01
 ;;9002226.02101,"1788,54569-6355-00 ",.01)
 ;;54569-6355-00
 ;;9002226.02101,"1788,54569-6355-00 ",.02)
 ;;54569-6355-00
 ;;9002226.02101,"1788,54569-6355-01 ",.01)
 ;;54569-6355-01
 ;;9002226.02101,"1788,54569-6355-01 ",.02)
 ;;54569-6355-01
 ;;9002226.02101,"1788,54569-6356-00 ",.01)
 ;;54569-6356-00
 ;;9002226.02101,"1788,54569-6356-00 ",.02)
 ;;54569-6356-00
 ;;9002226.02101,"1788,54569-6356-01 ",.01)
 ;;54569-6356-01
 ;;9002226.02101,"1788,54569-6356-01 ",.02)
 ;;54569-6356-01
 ;;9002226.02101,"1788,54738-0925-01 ",.01)
 ;;54738-0925-01
 ;;9002226.02101,"1788,54738-0925-01 ",.02)
 ;;54738-0925-01
 ;;9002226.02101,"1788,54738-0925-02 ",.01)
 ;;54738-0925-02
 ;;9002226.02101,"1788,54738-0925-02 ",.02)
 ;;54738-0925-02
 ;;9002226.02101,"1788,54738-0925-03 ",.01)
 ;;54738-0925-03
 ;;9002226.02101,"1788,54738-0925-03 ",.02)
 ;;54738-0925-03
 ;;9002226.02101,"1788,54738-0926-01 ",.01)
 ;;54738-0926-01
 ;;9002226.02101,"1788,54738-0926-01 ",.02)
 ;;54738-0926-01
 ;;9002226.02101,"1788,54738-0926-02 ",.01)
 ;;54738-0926-02
 ;;9002226.02101,"1788,54738-0926-02 ",.02)
 ;;54738-0926-02
 ;;9002226.02101,"1788,54738-0926-03 ",.01)
 ;;54738-0926-03
 ;;9002226.02101,"1788,54738-0926-03 ",.02)
 ;;54738-0926-03
 ;;9002226.02101,"1788,54738-0927-01 ",.01)
 ;;54738-0927-01
 ;;9002226.02101,"1788,54738-0927-01 ",.02)
 ;;54738-0927-01
 ;;9002226.02101,"1788,54738-0927-02 ",.01)
 ;;54738-0927-02
 ;;9002226.02101,"1788,54738-0927-02 ",.02)
 ;;54738-0927-02
 ;;9002226.02101,"1788,54738-0927-03 ",.01)
 ;;54738-0927-03
 ;;9002226.02101,"1788,54738-0927-03 ",.02)
 ;;54738-0927-03
 ;;9002226.02101,"1788,54868-0036-00 ",.01)
 ;;54868-0036-00
 ;;9002226.02101,"1788,54868-0036-00 ",.02)
 ;;54868-0036-00
 ;;9002226.02101,"1788,54868-0036-02 ",.01)
 ;;54868-0036-02
 ;;9002226.02101,"1788,54868-0036-02 ",.02)
 ;;54868-0036-02
 ;;9002226.02101,"1788,54868-0036-04 ",.01)
 ;;54868-0036-04
 ;;9002226.02101,"1788,54868-0036-04 ",.02)
 ;;54868-0036-04
 ;;9002226.02101,"1788,54868-0795-00 ",.01)
 ;;54868-0795-00
 ;;9002226.02101,"1788,54868-0795-00 ",.02)
 ;;54868-0795-00
 ;;9002226.02101,"1788,54868-0830-00 ",.01)
 ;;54868-0830-00
 ;;9002226.02101,"1788,54868-0830-00 ",.02)
 ;;54868-0830-00
 ;;9002226.02101,"1788,54868-0830-01 ",.01)
 ;;54868-0830-01
 ;;9002226.02101,"1788,54868-0830-01 ",.02)
 ;;54868-0830-01
 ;;9002226.02101,"1788,54868-0877-01 ",.01)
 ;;54868-0877-01
 ;;9002226.02101,"1788,54868-0877-01 ",.02)
 ;;54868-0877-01
 ;;9002226.02101,"1788,54868-1020-00 ",.01)
 ;;54868-1020-00
 ;;9002226.02101,"1788,54868-1020-00 ",.02)
 ;;54868-1020-00
 ;;9002226.02101,"1788,54868-1097-00 ",.01)
 ;;54868-1097-00
 ;;9002226.02101,"1788,54868-1097-00 ",.02)
 ;;54868-1097-00
 ;;9002226.02101,"1788,54868-1097-01 ",.01)
 ;;54868-1097-01
 ;;9002226.02101,"1788,54868-1097-01 ",.02)
 ;;54868-1097-01
 ;;9002226.02101,"1788,54868-1361-01 ",.01)
 ;;54868-1361-01
 ;;9002226.02101,"1788,54868-1361-01 ",.02)
 ;;54868-1361-01
 ;;9002226.02101,"1788,54868-2894-00 ",.01)
 ;;54868-2894-00
 ;;9002226.02101,"1788,54868-2894-00 ",.02)
 ;;54868-2894-00
 ;;9002226.02101,"1788,54868-3017-00 ",.01)
 ;;54868-3017-00
 ;;9002226.02101,"1788,54868-3017-00 ",.02)
 ;;54868-3017-00
 ;;9002226.02101,"1788,54868-3265-00 ",.01)
 ;;54868-3265-00
 ;;9002226.02101,"1788,54868-3265-00 ",.02)
 ;;54868-3265-00