BGP47S16 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 16, 2014;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"804,33261-0377-02 ",.02)
 ;;33261-0377-02
 ;;9002226.02101,"804,33261-0377-07 ",.01)
 ;;33261-0377-07
 ;;9002226.02101,"804,33261-0377-07 ",.02)
 ;;33261-0377-07
 ;;9002226.02101,"804,33261-0377-10 ",.01)
 ;;33261-0377-10
 ;;9002226.02101,"804,33261-0377-10 ",.02)
 ;;33261-0377-10
 ;;9002226.02101,"804,33261-0377-12 ",.01)
 ;;33261-0377-12
 ;;9002226.02101,"804,33261-0377-12 ",.02)
 ;;33261-0377-12
 ;;9002226.02101,"804,33261-0377-14 ",.01)
 ;;33261-0377-14
 ;;9002226.02101,"804,33261-0377-14 ",.02)
 ;;33261-0377-14
 ;;9002226.02101,"804,33261-0377-20 ",.01)
 ;;33261-0377-20
 ;;9002226.02101,"804,33261-0377-20 ",.02)
 ;;33261-0377-20
 ;;9002226.02101,"804,33261-0377-21 ",.01)
 ;;33261-0377-21
 ;;9002226.02101,"804,33261-0377-21 ",.02)
 ;;33261-0377-21
 ;;9002226.02101,"804,33261-0377-25 ",.01)
 ;;33261-0377-25
 ;;9002226.02101,"804,33261-0377-25 ",.02)
 ;;33261-0377-25
 ;;9002226.02101,"804,33261-0377-28 ",.01)
 ;;33261-0377-28
 ;;9002226.02101,"804,33261-0377-28 ",.02)
 ;;33261-0377-28
 ;;9002226.02101,"804,33261-0377-30 ",.01)
 ;;33261-0377-30
 ;;9002226.02101,"804,33261-0377-30 ",.02)
 ;;33261-0377-30
 ;;9002226.02101,"804,33261-0377-40 ",.01)
 ;;33261-0377-40
 ;;9002226.02101,"804,33261-0377-40 ",.02)
 ;;33261-0377-40
 ;;9002226.02101,"804,33261-0377-50 ",.01)
 ;;33261-0377-50
 ;;9002226.02101,"804,33261-0377-50 ",.02)
 ;;33261-0377-50
 ;;9002226.02101,"804,33261-0377-60 ",.01)
 ;;33261-0377-60
 ;;9002226.02101,"804,33261-0377-60 ",.02)
 ;;33261-0377-60
 ;;9002226.02101,"804,33261-0377-90 ",.01)
 ;;33261-0377-90
 ;;9002226.02101,"804,33261-0377-90 ",.02)
 ;;33261-0377-90
 ;;9002226.02101,"804,33261-0387-00 ",.01)
 ;;33261-0387-00
 ;;9002226.02101,"804,33261-0387-00 ",.02)
 ;;33261-0387-00
 ;;9002226.02101,"804,33261-0387-02 ",.01)
 ;;33261-0387-02
 ;;9002226.02101,"804,33261-0387-02 ",.02)
 ;;33261-0387-02
 ;;9002226.02101,"804,33261-0387-03 ",.01)
 ;;33261-0387-03
 ;;9002226.02101,"804,33261-0387-03 ",.02)
 ;;33261-0387-03
 ;;9002226.02101,"804,33261-0387-07 ",.01)
 ;;33261-0387-07
 ;;9002226.02101,"804,33261-0387-07 ",.02)
 ;;33261-0387-07
 ;;9002226.02101,"804,33261-0387-12 ",.01)
 ;;33261-0387-12
 ;;9002226.02101,"804,33261-0387-12 ",.02)
 ;;33261-0387-12
 ;;9002226.02101,"804,33261-0387-14 ",.01)
 ;;33261-0387-14
 ;;9002226.02101,"804,33261-0387-14 ",.02)
 ;;33261-0387-14
 ;;9002226.02101,"804,33261-0387-20 ",.01)
 ;;33261-0387-20
 ;;9002226.02101,"804,33261-0387-20 ",.02)
 ;;33261-0387-20
 ;;9002226.02101,"804,33261-0387-21 ",.01)
 ;;33261-0387-21
 ;;9002226.02101,"804,33261-0387-21 ",.02)
 ;;33261-0387-21
 ;;9002226.02101,"804,33261-0387-24 ",.01)
 ;;33261-0387-24
 ;;9002226.02101,"804,33261-0387-24 ",.02)
 ;;33261-0387-24
 ;;9002226.02101,"804,33261-0387-25 ",.01)
 ;;33261-0387-25
 ;;9002226.02101,"804,33261-0387-25 ",.02)
 ;;33261-0387-25
 ;;9002226.02101,"804,33261-0387-28 ",.01)
 ;;33261-0387-28
 ;;9002226.02101,"804,33261-0387-28 ",.02)
 ;;33261-0387-28
 ;;9002226.02101,"804,33261-0387-30 ",.01)
 ;;33261-0387-30
 ;;9002226.02101,"804,33261-0387-30 ",.02)
 ;;33261-0387-30
 ;;9002226.02101,"804,33261-0387-36 ",.01)
 ;;33261-0387-36
 ;;9002226.02101,"804,33261-0387-36 ",.02)
 ;;33261-0387-36
 ;;9002226.02101,"804,33261-0387-40 ",.01)
 ;;33261-0387-40
 ;;9002226.02101,"804,33261-0387-40 ",.02)
 ;;33261-0387-40
 ;;9002226.02101,"804,33261-0387-50 ",.01)
 ;;33261-0387-50
 ;;9002226.02101,"804,33261-0387-50 ",.02)
 ;;33261-0387-50
 ;;9002226.02101,"804,33261-0387-60 ",.01)
 ;;33261-0387-60
 ;;9002226.02101,"804,33261-0387-60 ",.02)
 ;;33261-0387-60
 ;;9002226.02101,"804,33261-0387-90 ",.01)
 ;;33261-0387-90
 ;;9002226.02101,"804,33261-0387-90 ",.02)
 ;;33261-0387-90
 ;;9002226.02101,"804,33261-0531-14 ",.01)
 ;;33261-0531-14
 ;;9002226.02101,"804,33261-0531-14 ",.02)
 ;;33261-0531-14
 ;;9002226.02101,"804,33261-0531-30 ",.01)
 ;;33261-0531-30
 ;;9002226.02101,"804,33261-0531-30 ",.02)
 ;;33261-0531-30
 ;;9002226.02101,"804,33261-0531-60 ",.01)
 ;;33261-0531-60
 ;;9002226.02101,"804,33261-0531-60 ",.02)
 ;;33261-0531-60
 ;;9002226.02101,"804,33261-0531-90 ",.01)
 ;;33261-0531-90
 ;;9002226.02101,"804,33261-0531-90 ",.02)
 ;;33261-0531-90
 ;;9002226.02101,"804,33261-0724-00 ",.01)
 ;;33261-0724-00
 ;;9002226.02101,"804,33261-0724-00 ",.02)
 ;;33261-0724-00
 ;;9002226.02101,"804,33261-0724-15 ",.01)
 ;;33261-0724-15
 ;;9002226.02101,"804,33261-0724-15 ",.02)
 ;;33261-0724-15
 ;;9002226.02101,"804,33261-0724-30 ",.01)
 ;;33261-0724-30
 ;;9002226.02101,"804,33261-0724-30 ",.02)
 ;;33261-0724-30
 ;;9002226.02101,"804,33261-0724-60 ",.01)
 ;;33261-0724-60
 ;;9002226.02101,"804,33261-0724-60 ",.02)
 ;;33261-0724-60
 ;;9002226.02101,"804,33261-0859-00 ",.01)
 ;;33261-0859-00
 ;;9002226.02101,"804,33261-0859-00 ",.02)
 ;;33261-0859-00
 ;;9002226.02101,"804,33261-0859-15 ",.01)
 ;;33261-0859-15
 ;;9002226.02101,"804,33261-0859-15 ",.02)
 ;;33261-0859-15
 ;;9002226.02101,"804,33261-0859-30 ",.01)
 ;;33261-0859-30
 ;;9002226.02101,"804,33261-0859-30 ",.02)
 ;;33261-0859-30
 ;;9002226.02101,"804,33261-0859-60 ",.01)
 ;;33261-0859-60
 ;;9002226.02101,"804,33261-0859-60 ",.02)
 ;;33261-0859-60
 ;;9002226.02101,"804,33261-0859-90 ",.01)
 ;;33261-0859-90
 ;;9002226.02101,"804,33261-0859-90 ",.02)
 ;;33261-0859-90
 ;;9002226.02101,"804,33358-0064-00 ",.01)
 ;;33358-0064-00
 ;;9002226.02101,"804,33358-0064-00 ",.02)
 ;;33358-0064-00
 ;;9002226.02101,"804,33358-0064-01 ",.01)
 ;;33358-0064-01
 ;;9002226.02101,"804,33358-0064-01 ",.02)
 ;;33358-0064-01
 ;;9002226.02101,"804,33358-0064-15 ",.01)
 ;;33358-0064-15
 ;;9002226.02101,"804,33358-0064-15 ",.02)
 ;;33358-0064-15
 ;;9002226.02101,"804,33358-0064-20 ",.01)
 ;;33358-0064-20
 ;;9002226.02101,"804,33358-0064-20 ",.02)
 ;;33358-0064-20
 ;;9002226.02101,"804,33358-0064-30 ",.01)
 ;;33358-0064-30
 ;;9002226.02101,"804,33358-0064-30 ",.02)
 ;;33358-0064-30
 ;;9002226.02101,"804,33358-0064-50 ",.01)
 ;;33358-0064-50
 ;;9002226.02101,"804,33358-0064-50 ",.02)
 ;;33358-0064-50
 ;;9002226.02101,"804,33358-0064-60 ",.01)
 ;;33358-0064-60
 ;;9002226.02101,"804,33358-0064-60 ",.02)
 ;;33358-0064-60
 ;;9002226.02101,"804,33358-0064-90 ",.01)
 ;;33358-0064-90
 ;;9002226.02101,"804,33358-0064-90 ",.02)
 ;;33358-0064-90
 ;;9002226.02101,"804,33358-0073-20 ",.01)
 ;;33358-0073-20
 ;;9002226.02101,"804,33358-0073-20 ",.02)
 ;;33358-0073-20
 ;;9002226.02101,"804,33358-0073-30 ",.01)
 ;;33358-0073-30
 ;;9002226.02101,"804,33358-0073-30 ",.02)
 ;;33358-0073-30
 ;;9002226.02101,"804,33358-0073-60 ",.01)
 ;;33358-0073-60
 ;;9002226.02101,"804,33358-0073-60 ",.02)
 ;;33358-0073-60
 ;;9002226.02101,"804,33358-0073-90 ",.01)
 ;;33358-0073-90
 ;;9002226.02101,"804,33358-0073-90 ",.02)
 ;;33358-0073-90
 ;;9002226.02101,"804,33358-0097-00 ",.01)
 ;;33358-0097-00
 ;;9002226.02101,"804,33358-0097-00 ",.02)
 ;;33358-0097-00
 ;;9002226.02101,"804,33358-0097-01 ",.01)
 ;;33358-0097-01
 ;;9002226.02101,"804,33358-0097-01 ",.02)
 ;;33358-0097-01
 ;;9002226.02101,"804,33358-0097-15 ",.01)
 ;;33358-0097-15
 ;;9002226.02101,"804,33358-0097-15 ",.02)
 ;;33358-0097-15
 ;;9002226.02101,"804,33358-0097-20 ",.01)
 ;;33358-0097-20
 ;;9002226.02101,"804,33358-0097-20 ",.02)
 ;;33358-0097-20
 ;;9002226.02101,"804,33358-0097-28 ",.01)
 ;;33358-0097-28
 ;;9002226.02101,"804,33358-0097-28 ",.02)
 ;;33358-0097-28
 ;;9002226.02101,"804,33358-0097-30 ",.01)
 ;;33358-0097-30
 ;;9002226.02101,"804,33358-0097-30 ",.02)
 ;;33358-0097-30
 ;;9002226.02101,"804,33358-0097-60 ",.01)
 ;;33358-0097-60
 ;;9002226.02101,"804,33358-0097-60 ",.02)
 ;;33358-0097-60
 ;;9002226.02101,"804,33358-0097-90 ",.01)
 ;;33358-0097-90
 ;;9002226.02101,"804,33358-0097-90 ",.02)
 ;;33358-0097-90
 ;;9002226.02101,"804,33358-0239-14 ",.01)
 ;;33358-0239-14
 ;;9002226.02101,"804,33358-0239-14 ",.02)
 ;;33358-0239-14
 ;;9002226.02101,"804,33358-0239-20 ",.01)
 ;;33358-0239-20
 ;;9002226.02101,"804,33358-0239-20 ",.02)
 ;;33358-0239-20
 ;;9002226.02101,"804,33358-0239-30 ",.01)
 ;;33358-0239-30
 ;;9002226.02101,"804,33358-0239-30 ",.02)
 ;;33358-0239-30
 ;;9002226.02101,"804,33358-0239-60 ",.01)
 ;;33358-0239-60
 ;;9002226.02101,"804,33358-0239-60 ",.02)
 ;;33358-0239-60
 ;;9002226.02101,"804,33358-0239-90 ",.01)
 ;;33358-0239-90
 ;;9002226.02101,"804,33358-0239-90 ",.02)
 ;;33358-0239-90
 ;;9002226.02101,"804,33358-0240-01 ",.01)
 ;;33358-0240-01
 ;;9002226.02101,"804,33358-0240-01 ",.02)
 ;;33358-0240-01
 ;;9002226.02101,"804,33358-0240-20 ",.01)
 ;;33358-0240-20
 ;;9002226.02101,"804,33358-0240-20 ",.02)
 ;;33358-0240-20
 ;;9002226.02101,"804,33358-0240-30 ",.01)
 ;;33358-0240-30
 ;;9002226.02101,"804,33358-0240-30 ",.02)
 ;;33358-0240-30
 ;;9002226.02101,"804,33358-0240-40 ",.01)
 ;;33358-0240-40
 ;;9002226.02101,"804,33358-0240-40 ",.02)
 ;;33358-0240-40
 ;;9002226.02101,"804,33358-0240-60 ",.01)
 ;;33358-0240-60
 ;;9002226.02101,"804,33358-0240-60 ",.02)
 ;;33358-0240-60
 ;;9002226.02101,"804,33358-0240-90 ",.01)
 ;;33358-0240-90
 ;;9002226.02101,"804,33358-0240-90 ",.02)
 ;;33358-0240-90
 ;;9002226.02101,"804,33358-0274-20 ",.01)
 ;;33358-0274-20
 ;;9002226.02101,"804,33358-0274-20 ",.02)
 ;;33358-0274-20
 ;;9002226.02101,"804,33358-0274-30 ",.01)
 ;;33358-0274-30
 ;;9002226.02101,"804,33358-0274-30 ",.02)
 ;;33358-0274-30
 ;;9002226.02101,"804,33358-0274-60 ",.01)
 ;;33358-0274-60
 ;;9002226.02101,"804,33358-0274-60 ",.02)
 ;;33358-0274-60
 ;;9002226.02101,"804,33358-0325-01 ",.01)
 ;;33358-0325-01
 ;;9002226.02101,"804,33358-0325-01 ",.02)
 ;;33358-0325-01
 ;;9002226.02101,"804,33358-0325-30 ",.01)
 ;;33358-0325-30
 ;;9002226.02101,"804,33358-0325-30 ",.02)
 ;;33358-0325-30
 ;;9002226.02101,"804,33358-0325-45 ",.01)
 ;;33358-0325-45
 ;;9002226.02101,"804,33358-0325-45 ",.02)
 ;;33358-0325-45
 ;;9002226.02101,"804,33358-0325-60 ",.01)
 ;;33358-0325-60
 ;;9002226.02101,"804,33358-0325-60 ",.02)
 ;;33358-0325-60
 ;;9002226.02101,"804,33358-0325-90 ",.01)
 ;;33358-0325-90
 ;;9002226.02101,"804,33358-0325-90 ",.02)
 ;;33358-0325-90
 ;;9002226.02101,"804,35356-0262-10 ",.01)
 ;;35356-0262-10
 ;;9002226.02101,"804,35356-0262-10 ",.02)
 ;;35356-0262-10
 ;;9002226.02101,"804,35356-0262-30 ",.01)
 ;;35356-0262-30
 ;;9002226.02101,"804,35356-0262-30 ",.02)
 ;;35356-0262-30
 ;;9002226.02101,"804,35356-0262-60 ",.01)
 ;;35356-0262-60
 ;;9002226.02101,"804,35356-0262-60 ",.02)
 ;;35356-0262-60
 ;;9002226.02101,"804,35356-0262-90 ",.01)
 ;;35356-0262-90
 ;;9002226.02101,"804,35356-0262-90 ",.02)
 ;;35356-0262-90
 ;;9002226.02101,"804,35356-0263-01 ",.01)
 ;;35356-0263-01
 ;;9002226.02101,"804,35356-0263-01 ",.02)
 ;;35356-0263-01
 ;;9002226.02101,"804,35356-0263-30 ",.01)
 ;;35356-0263-30
 ;;9002226.02101,"804,35356-0263-30 ",.02)
 ;;35356-0263-30
 ;;9002226.02101,"804,35356-0265-15 ",.01)
 ;;35356-0265-15
 ;;9002226.02101,"804,35356-0265-15 ",.02)
 ;;35356-0265-15
 ;;9002226.02101,"804,35356-0265-20 ",.01)
 ;;35356-0265-20
 ;;9002226.02101,"804,35356-0265-20 ",.02)
 ;;35356-0265-20
 ;;9002226.02101,"804,35356-0501-30 ",.01)
 ;;35356-0501-30
 ;;9002226.02101,"804,35356-0501-30 ",.02)
 ;;35356-0501-30
 ;;9002226.02101,"804,35356-0501-60 ",.01)
 ;;35356-0501-60
 ;;9002226.02101,"804,35356-0501-60 ",.02)
 ;;35356-0501-60
 ;;9002226.02101,"804,35356-0570-15 ",.01)
 ;;35356-0570-15
 ;;9002226.02101,"804,35356-0570-15 ",.02)
 ;;35356-0570-15
 ;;9002226.02101,"804,35356-0570-20 ",.01)
 ;;35356-0570-20
 ;;9002226.02101,"804,35356-0570-20 ",.02)
 ;;35356-0570-20
 ;;9002226.02101,"804,35356-0570-30 ",.01)
 ;;35356-0570-30
 ;;9002226.02101,"804,35356-0570-30 ",.02)
 ;;35356-0570-30
 ;;9002226.02101,"804,35356-0570-60 ",.01)
 ;;35356-0570-60
 ;;9002226.02101,"804,35356-0570-60 ",.02)
 ;;35356-0570-60
 ;;9002226.02101,"804,35356-0570-90 ",.01)
 ;;35356-0570-90
 ;;9002226.02101,"804,35356-0570-90 ",.02)
 ;;35356-0570-90
 ;;9002226.02101,"804,35356-0617-90 ",.01)
 ;;35356-0617-90
 ;;9002226.02101,"804,35356-0617-90 ",.02)
 ;;35356-0617-90
 ;;9002226.02101,"804,35356-0653-01 ",.01)
 ;;35356-0653-01
 ;;9002226.02101,"804,35356-0653-01 ",.02)
 ;;35356-0653-01
 ;;9002226.02101,"804,35356-0653-07 ",.01)
 ;;35356-0653-07
 ;;9002226.02101,"804,35356-0653-07 ",.02)
 ;;35356-0653-07
 ;;9002226.02101,"804,35356-0653-12 ",.01)
 ;;35356-0653-12
 ;;9002226.02101,"804,35356-0653-12 ",.02)
 ;;35356-0653-12
 ;;9002226.02101,"804,35356-0653-15 ",.01)
 ;;35356-0653-15
 ;;9002226.02101,"804,35356-0653-15 ",.02)
 ;;35356-0653-15
 ;;9002226.02101,"804,35356-0653-20 ",.01)
 ;;35356-0653-20
 ;;9002226.02101,"804,35356-0653-20 ",.02)
 ;;35356-0653-20
 ;;9002226.02101,"804,35356-0653-21 ",.01)
 ;;35356-0653-21
 ;;9002226.02101,"804,35356-0653-21 ",.02)
 ;;35356-0653-21
 ;;9002226.02101,"804,35356-0653-30 ",.01)
 ;;35356-0653-30
 ;;9002226.02101,"804,35356-0653-30 ",.02)
 ;;35356-0653-30
 ;;9002226.02101,"804,35356-0653-60 ",.01)
 ;;35356-0653-60
 ;;9002226.02101,"804,35356-0653-60 ",.02)
 ;;35356-0653-60
 ;;9002226.02101,"804,35356-0653-90 ",.01)
 ;;35356-0653-90
 ;;9002226.02101,"804,35356-0653-90 ",.02)
 ;;35356-0653-90
 ;;9002226.02101,"804,35356-0689-01 ",.01)
 ;;35356-0689-01
 ;;9002226.02101,"804,35356-0689-01 ",.02)
 ;;35356-0689-01
 ;;9002226.02101,"804,35356-0689-20 ",.01)
 ;;35356-0689-20
 ;;9002226.02101,"804,35356-0689-20 ",.02)
 ;;35356-0689-20
 ;;9002226.02101,"804,35356-0689-30 ",.01)
 ;;35356-0689-30
 ;;9002226.02101,"804,35356-0689-30 ",.02)
 ;;35356-0689-30
 ;;9002226.02101,"804,35356-0689-40 ",.01)
 ;;35356-0689-40