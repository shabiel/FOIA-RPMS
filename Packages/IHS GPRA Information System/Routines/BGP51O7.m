BGP51O7 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"68387-0600-12 ")
 ;;427
 ;;21,"68387-0600-15 ")
 ;;428
 ;;21,"68387-0600-30 ")
 ;;429
 ;;21,"68387-0600-45 ")
 ;;430
 ;;21,"68387-0600-60 ")
 ;;431
 ;;21,"68387-0600-90 ")
 ;;432
 ;;21,"68405-0028-06 ")
 ;;523
 ;;21,"68405-0058-36 ")
 ;;1423
 ;;21,"68405-0158-36 ")
 ;;1421
 ;;21,"68405-0580-26 ")
 ;;1422
 ;;21,"68453-0950-10 ")
 ;;926
 ;;21,"68462-0552-01 ")
 ;;820
 ;;21,"68462-0553-01 ")
 ;;1087
 ;;21,"68462-0553-10 ")
 ;;1088
 ;;21,"68645-0449-70 ")
 ;;818
 ;;21,"68645-0449-90 ")
 ;;819
 ;;21,"68645-0450-70 ")
 ;;1089
 ;;21,"68645-0450-90 ")
 ;;1090
 ;;21,"76218-1219-01 ")
 ;;904
 ;;21,"76420-0991-06 ")
 ;;1385
 ;;21,"76420-0992-01 ")
 ;;1386
 ;;21,"76439-0134-10 ")
 ;;1865
 ;;21,"76439-0134-50 ")
 ;;1866
 ;;21,"76439-0135-10 ")
 ;;2013
 ;;21,"76439-0135-50 ")
 ;;2014
 ;;21,"76519-0100-01 ")
 ;;897
 ;;21,"76519-0100-02 ")
 ;;898
 ;;21,"76519-0100-03 ")
 ;;899
 ;;21,"76519-0100-05 ")
 ;;900
 ;;21,"76519-0100-06 ")
 ;;901
 ;;21,"76519-0100-07 ")
 ;;902
 ;;21,"76519-0100-09 ")
 ;;903
 ;;9002226,804,.01)
 ;;BGP HEDIS SKL MUSCLE RELAX NDC
 ;;9002226,804,.02)
 ;;@
 ;;9002226,804,.04)
 ;;n
 ;;9002226,804,.06)
 ;;@
 ;;9002226,804,.08)
 ;;@
 ;;9002226,804,.09)
 ;;3140819
 ;;9002226,804,.11)
 ;;@
 ;;9002226,804,.12)
 ;;@
 ;;9002226,804,.13)
 ;;1
 ;;9002226,804,.14)
 ;;@
 ;;9002226,804,.15)
 ;;50.67
 ;;9002226,804,.16)
 ;;@
 ;;9002226,804,.17)
 ;;@
 ;;9002226,804,3101)
 ;;@
 ;;9002226.02101,"804,00037-2001-01 ",.01)
 ;;00037-2001-01
 ;;9002226.02101,"804,00037-2001-01 ",.02)
 ;;00037-2001-01
 ;;9002226.02101,"804,00037-2250-10 ",.01)
 ;;00037-2250-10
 ;;9002226.02101,"804,00037-2250-10 ",.02)
 ;;00037-2250-10
 ;;9002226.02101,"804,00037-2250-30 ",.01)
 ;;00037-2250-30
 ;;9002226.02101,"804,00037-2250-30 ",.02)
 ;;00037-2250-30
 ;;9002226.02101,"804,00045-0325-60 ",.01)
 ;;00045-0325-60
 ;;9002226.02101,"804,00045-0325-60 ",.02)
 ;;00045-0325-60
 ;;9002226.02101,"804,00091-7429-63 ",.01)
 ;;00091-7429-63
 ;;9002226.02101,"804,00091-7429-63 ",.02)
 ;;00091-7429-63
 ;;9002226.02101,"804,00091-7449-63 ",.01)
 ;;00091-7449-63
 ;;9002226.02101,"804,00091-7449-63 ",.02)
 ;;00091-7449-63
 ;;9002226.02101,"804,00115-2011-01 ",.01)
 ;;00115-2011-01
 ;;9002226.02101,"804,00115-2011-01 ",.02)
 ;;00115-2011-01
 ;;9002226.02101,"804,00115-2011-02 ",.01)
 ;;00115-2011-02
 ;;9002226.02101,"804,00115-2011-02 ",.02)
 ;;00115-2011-02
 ;;9002226.02101,"804,00143-1176-01 ",.01)
 ;;00143-1176-01
 ;;9002226.02101,"804,00143-1176-01 ",.02)
 ;;00143-1176-01
 ;;9002226.02101,"804,00143-1176-05 ",.01)
 ;;00143-1176-05
 ;;9002226.02101,"804,00143-1176-05 ",.02)
 ;;00143-1176-05
 ;;9002226.02101,"804,00143-1176-10 ",.01)
 ;;00143-1176-10
 ;;9002226.02101,"804,00143-1176-10 ",.02)
 ;;00143-1176-10
 ;;9002226.02101,"804,00143-1290-01 ",.01)
 ;;00143-1290-01
 ;;9002226.02101,"804,00143-1290-01 ",.02)
 ;;00143-1290-01
 ;;9002226.02101,"804,00143-1290-05 ",.01)
 ;;00143-1290-05
 ;;9002226.02101,"804,00143-1290-05 ",.02)
 ;;00143-1290-05
 ;;9002226.02101,"804,00143-1292-01 ",.01)
 ;;00143-1292-01
 ;;9002226.02101,"804,00143-1292-01 ",.02)
 ;;00143-1292-01
 ;;9002226.02101,"804,00143-1292-05 ",.01)
 ;;00143-1292-05
 ;;9002226.02101,"804,00143-1292-05 ",.02)
 ;;00143-1292-05
 ;;9002226.02101,"804,00143-9749-01 ",.01)
 ;;00143-9749-01
 ;;9002226.02101,"804,00143-9749-01 ",.02)
 ;;00143-9749-01
 ;;9002226.02101,"804,00143-9749-05 ",.01)
 ;;00143-9749-05
 ;;9002226.02101,"804,00143-9749-05 ",.02)
 ;;00143-9749-05
 ;;9002226.02101,"804,00143-9749-10 ",.01)
 ;;00143-9749-10
 ;;9002226.02101,"804,00143-9749-10 ",.02)
 ;;00143-9749-10
 ;;9002226.02101,"804,00179-0057-30 ",.01)
 ;;00179-0057-30
 ;;9002226.02101,"804,00179-0057-30 ",.02)
 ;;00179-0057-30
 ;;9002226.02101,"804,00185-0022-01 ",.01)
 ;;00185-0022-01
 ;;9002226.02101,"804,00185-0022-01 ",.02)
 ;;00185-0022-01
 ;;9002226.02101,"804,00185-0022-10 ",.01)
 ;;00185-0022-10
 ;;9002226.02101,"804,00185-0022-10 ",.02)
 ;;00185-0022-10
 ;;9002226.02101,"804,00185-0448-01 ",.01)
 ;;00185-0448-01
 ;;9002226.02101,"804,00185-0448-01 ",.02)
 ;;00185-0448-01
 ;;9002226.02101,"804,00185-0448-10 ",.01)
 ;;00185-0448-10
 ;;9002226.02101,"804,00185-0448-10 ",.02)
 ;;00185-0448-10
 ;;9002226.02101,"804,00185-0713-01 ",.01)
 ;;00185-0713-01
 ;;9002226.02101,"804,00185-0713-01 ",.02)
 ;;00185-0713-01
 ;;9002226.02101,"804,00185-0713-05 ",.01)
 ;;00185-0713-05
 ;;9002226.02101,"804,00185-0713-05 ",.02)
 ;;00185-0713-05
 ;;9002226.02101,"804,00185-0714-01 ",.01)
 ;;00185-0714-01
 ;;9002226.02101,"804,00185-0714-01 ",.02)
 ;;00185-0714-01
 ;;9002226.02101,"804,00185-0724-01 ",.01)
 ;;00185-0724-01
 ;;9002226.02101,"804,00185-0724-01 ",.02)
 ;;00185-0724-01
 ;;9002226.02101,"804,00185-0724-05 ",.01)
 ;;00185-0724-05
 ;;9002226.02101,"804,00185-0724-05 ",.02)
 ;;00185-0724-05
 ;;9002226.02101,"804,00185-0749-01 ",.01)
 ;;00185-0749-01
 ;;9002226.02101,"804,00185-0749-01 ",.02)
 ;;00185-0749-01
 ;;9002226.02101,"804,00378-0751-01 ",.01)
 ;;00378-0751-01
 ;;9002226.02101,"804,00378-0751-01 ",.02)
 ;;00378-0751-01
 ;;9002226.02101,"804,00378-0751-05 ",.01)
 ;;00378-0751-05
 ;;9002226.02101,"804,00378-0751-05 ",.02)
 ;;00378-0751-05
 ;;9002226.02101,"804,00378-0751-10 ",.01)
 ;;00378-0751-10
 ;;9002226.02101,"804,00378-0751-10 ",.02)
 ;;00378-0751-10
 ;;9002226.02101,"804,00378-0751-93 ",.01)
 ;;00378-0751-93
 ;;9002226.02101,"804,00378-0751-93 ",.02)
 ;;00378-0751-93
 ;;9002226.02101,"804,00378-0761-01 ",.01)
 ;;00378-0761-01
 ;;9002226.02101,"804,00378-0761-01 ",.02)
 ;;00378-0761-01
 ;;9002226.02101,"804,00378-0771-01 ",.01)
 ;;00378-0771-01
 ;;9002226.02101,"804,00378-0771-01 ",.02)
 ;;00378-0771-01
 ;;9002226.02101,"804,00378-0771-05 ",.01)
 ;;00378-0771-05
 ;;9002226.02101,"804,00378-0771-05 ",.02)
 ;;00378-0771-05
 ;;9002226.02101,"804,00378-0771-93 ",.01)
 ;;00378-0771-93
 ;;9002226.02101,"804,00378-0771-93 ",.02)
 ;;00378-0771-93
 ;;9002226.02101,"804,00378-8815-91 ",.01)
 ;;00378-8815-91
 ;;9002226.02101,"804,00378-8815-91 ",.02)
 ;;00378-8815-91
 ;;9002226.02101,"804,00378-8816-91 ",.01)
 ;;00378-8816-91
 ;;9002226.02101,"804,00378-8816-91 ",.02)
 ;;00378-8816-91
 ;;9002226.02101,"804,00440-1350-09 ",.01)
 ;;00440-1350-09
 ;;9002226.02101,"804,00440-1350-09 ",.02)
 ;;00440-1350-09
 ;;9002226.02101,"804,00440-1740-40 ",.01)
 ;;00440-1740-40
 ;;9002226.02101,"804,00440-1740-40 ",.02)
 ;;00440-1740-40
 ;;9002226.02101,"804,00440-7238-04 ",.01)
 ;;00440-7238-04
 ;;9002226.02101,"804,00440-7238-04 ",.02)
 ;;00440-7238-04
 ;;9002226.02101,"804,00440-7238-20 ",.01)
 ;;00440-7238-20
 ;;9002226.02101,"804,00440-7238-20 ",.02)
 ;;00440-7238-20
 ;;9002226.02101,"804,00440-7238-30 ",.01)
 ;;00440-7238-30
 ;;9002226.02101,"804,00440-7238-30 ",.02)
 ;;00440-7238-30
 ;;9002226.02101,"804,00440-7238-40 ",.01)
 ;;00440-7238-40
 ;;9002226.02101,"804,00440-7238-40 ",.02)
 ;;00440-7238-40
 ;;9002226.02101,"804,00440-7238-90 ",.01)
 ;;00440-7238-90
 ;;9002226.02101,"804,00440-7238-90 ",.02)
 ;;00440-7238-90
 ;;9002226.02101,"804,00440-7238-91 ",.01)
 ;;00440-7238-91
 ;;9002226.02101,"804,00440-7238-91 ",.02)
 ;;00440-7238-91
 ;;9002226.02101,"804,00440-7239-20 ",.01)
 ;;00440-7239-20
 ;;9002226.02101,"804,00440-7239-20 ",.02)
 ;;00440-7239-20
 ;;9002226.02101,"804,00440-7239-40 ",.01)
 ;;00440-7239-40
 ;;9002226.02101,"804,00440-7239-40 ",.02)
 ;;00440-7239-40
 ;;9002226.02101,"804,00440-7270-10 ",.01)
 ;;00440-7270-10
 ;;9002226.02101,"804,00440-7270-10 ",.02)
 ;;00440-7270-10
 ;;9002226.02101,"804,00440-7270-20 ",.01)
 ;;00440-7270-20
 ;;9002226.02101,"804,00440-7270-20 ",.02)
 ;;00440-7270-20
 ;;9002226.02101,"804,00440-7270-28 ",.01)
 ;;00440-7270-28
 ;;9002226.02101,"804,00440-7270-28 ",.02)
 ;;00440-7270-28
 ;;9002226.02101,"804,00440-7270-30 ",.01)
 ;;00440-7270-30
 ;;9002226.02101,"804,00440-7270-30 ",.02)
 ;;00440-7270-30
 ;;9002226.02101,"804,00440-7270-40 ",.01)
 ;;00440-7270-40
 ;;9002226.02101,"804,00440-7270-40 ",.02)
 ;;00440-7270-40
 ;;9002226.02101,"804,00440-7350-02 ",.01)
 ;;00440-7350-02
 ;;9002226.02101,"804,00440-7350-02 ",.02)
 ;;00440-7350-02
 ;;9002226.02101,"804,00440-7350-03 ",.01)
 ;;00440-7350-03
 ;;9002226.02101,"804,00440-7350-03 ",.02)
 ;;00440-7350-03
 ;;9002226.02101,"804,00440-7350-04 ",.01)
 ;;00440-7350-04
 ;;9002226.02101,"804,00440-7350-04 ",.02)
 ;;00440-7350-04
 ;;9002226.02101,"804,00440-7350-06 ",.01)
 ;;00440-7350-06
 ;;9002226.02101,"804,00440-7350-06 ",.02)
 ;;00440-7350-06
 ;;9002226.02101,"804,00440-7350-09 ",.01)
 ;;00440-7350-09
 ;;9002226.02101,"804,00440-7350-09 ",.02)
 ;;00440-7350-09
 ;;9002226.02101,"804,00440-7350-10 ",.01)
 ;;00440-7350-10
 ;;9002226.02101,"804,00440-7350-10 ",.02)
 ;;00440-7350-10
 ;;9002226.02101,"804,00440-7350-12 ",.01)
 ;;00440-7350-12
 ;;9002226.02101,"804,00440-7350-12 ",.02)
 ;;00440-7350-12
 ;;9002226.02101,"804,00440-7350-15 ",.01)
 ;;00440-7350-15
 ;;9002226.02101,"804,00440-7350-15 ",.02)
 ;;00440-7350-15
 ;;9002226.02101,"804,00440-7350-21 ",.01)
 ;;00440-7350-21
 ;;9002226.02101,"804,00440-7350-21 ",.02)
 ;;00440-7350-21
 ;;9002226.02101,"804,00440-7350-30 ",.01)
 ;;00440-7350-30
 ;;9002226.02101,"804,00440-7350-30 ",.02)
 ;;00440-7350-30
 ;;9002226.02101,"804,00440-7350-60 ",.01)
 ;;00440-7350-60
 ;;9002226.02101,"804,00440-7350-60 ",.02)
 ;;00440-7350-60
 ;;9002226.02101,"804,00440-7350-81 ",.01)
 ;;00440-7350-81
 ;;9002226.02101,"804,00440-7350-81 ",.02)
 ;;00440-7350-81
 ;;9002226.02101,"804,00440-7350-85 ",.01)
 ;;00440-7350-85
 ;;9002226.02101,"804,00440-7350-85 ",.02)
 ;;00440-7350-85
 ;;9002226.02101,"804,00440-7350-89 ",.01)
 ;;00440-7350-89
 ;;9002226.02101,"804,00440-7350-89 ",.02)
 ;;00440-7350-89
 ;;9002226.02101,"804,00440-7350-90 ",.01)
 ;;00440-7350-90
 ;;9002226.02101,"804,00440-7350-90 ",.02)
 ;;00440-7350-90
 ;;9002226.02101,"804,00440-7740-10 ",.01)
 ;;00440-7740-10
 ;;9002226.02101,"804,00440-7740-10 ",.02)
 ;;00440-7740-10
 ;;9002226.02101,"804,00440-7740-12 ",.01)
 ;;00440-7740-12
 ;;9002226.02101,"804,00440-7740-12 ",.02)
 ;;00440-7740-12
 ;;9002226.02101,"804,00440-7740-20 ",.01)
 ;;00440-7740-20
 ;;9002226.02101,"804,00440-7740-20 ",.02)
 ;;00440-7740-20
 ;;9002226.02101,"804,00440-7740-24 ",.01)
 ;;00440-7740-24
 ;;9002226.02101,"804,00440-7740-24 ",.02)
 ;;00440-7740-24
 ;;9002226.02101,"804,00440-7740-28 ",.01)
 ;;00440-7740-28
 ;;9002226.02101,"804,00440-7740-28 ",.02)
 ;;00440-7740-28
 ;;9002226.02101,"804,00440-7740-40 ",.01)
 ;;00440-7740-40
 ;;9002226.02101,"804,00440-7740-40 ",.02)
 ;;00440-7740-40
 ;;9002226.02101,"804,00440-7740-60 ",.01)
 ;;00440-7740-60
 ;;9002226.02101,"804,00440-7740-60 ",.02)
 ;;00440-7740-60
 ;;9002226.02101,"804,00440-7740-81 ",.01)
 ;;00440-7740-81
 ;;9002226.02101,"804,00440-7740-81 ",.02)
 ;;00440-7740-81
 ;;9002226.02101,"804,00440-7740-85 ",.01)
 ;;00440-7740-85
 ;;9002226.02101,"804,00440-7740-85 ",.02)
 ;;00440-7740-85
 ;;9002226.02101,"804,00440-7740-89 ",.01)
 ;;00440-7740-89
 ;;9002226.02101,"804,00440-7740-89 ",.02)
 ;;00440-7740-89
 ;;9002226.02101,"804,00440-7740-90 ",.01)
 ;;00440-7740-90
 ;;9002226.02101,"804,00440-7740-90 ",.02)
 ;;00440-7740-90
 ;;9002226.02101,"804,00440-7740-91 ",.01)
 ;;00440-7740-91
 ;;9002226.02101,"804,00440-7740-91 ",.02)
 ;;00440-7740-91
 ;;9002226.02101,"804,00440-7740-92 ",.01)
 ;;00440-7740-92
 ;;9002226.02101,"804,00440-7740-92 ",.02)
 ;;00440-7740-92
 ;;9002226.02101,"804,00440-7741-04 ",.01)
 ;;00440-7741-04
 ;;9002226.02101,"804,00440-7741-04 ",.02)
 ;;00440-7741-04
 ;;9002226.02101,"804,00440-7741-06 ",.01)
 ;;00440-7741-06
 ;;9002226.02101,"804,00440-7741-06 ",.02)
 ;;00440-7741-06
 ;;9002226.02101,"804,00440-7741-20 ",.01)
 ;;00440-7741-20
 ;;9002226.02101,"804,00440-7741-20 ",.02)
 ;;00440-7741-20
 ;;9002226.02101,"804,00440-7741-30 ",.01)
 ;;00440-7741-30
 ;;9002226.02101,"804,00440-7741-30 ",.02)
 ;;00440-7741-30
 ;;9002226.02101,"804,00440-7741-40 ",.01)
 ;;00440-7741-40
 ;;9002226.02101,"804,00440-7741-40 ",.02)
 ;;00440-7741-40
 ;;9002226.02101,"804,00440-7741-90 ",.01)
 ;;00440-7741-90
 ;;9002226.02101,"804,00440-7741-90 ",.02)
 ;;00440-7741-90
 ;;9002226.02101,"804,00440-7741-92 ",.01)
 ;;00440-7741-92
 ;;9002226.02101,"804,00440-7741-92 ",.02)
 ;;00440-7741-92
 ;;9002226.02101,"804,00440-7874-28 ",.01)
 ;;00440-7874-28
 ;;9002226.02101,"804,00440-7874-28 ",.02)
 ;;00440-7874-28
 ;;9002226.02101,"804,00440-7880-14 ",.01)
 ;;00440-7880-14
 ;;9002226.02101,"804,00440-7880-14 ",.02)
 ;;00440-7880-14
 ;;9002226.02101,"804,00440-7880-20 ",.01)
 ;;00440-7880-20
 ;;9002226.02101,"804,00440-7880-20 ",.02)
 ;;00440-7880-20
 ;;9002226.02101,"804,00440-7880-28 ",.01)
 ;;00440-7880-28
 ;;9002226.02101,"804,00440-7880-28 ",.02)
 ;;00440-7880-28
 ;;9002226.02101,"804,00440-7880-40 ",.01)
 ;;00440-7880-40
 ;;9002226.02101,"804,00440-7880-40 ",.02)
 ;;00440-7880-40
 ;;9002226.02101,"804,00440-7880-60 ",.01)
 ;;00440-7880-60
 ;;9002226.02101,"804,00440-7880-60 ",.02)
 ;;00440-7880-60
 ;;9002226.02101,"804,00527-1152-01 ",.01)
 ;;00527-1152-01
 ;;9002226.02101,"804,00527-1152-01 ",.02)
 ;;00527-1152-01
 ;;9002226.02101,"804,00527-1152-05 ",.01)
 ;;00527-1152-05
 ;;9002226.02101,"804,00527-1152-05 ",.02)
 ;;00527-1152-05
 ;;9002226.02101,"804,00527-1302-01 ",.01)
 ;;00527-1302-01
 ;;9002226.02101,"804,00527-1302-01 ",.02)
 ;;00527-1302-01
 ;;9002226.02101,"804,00527-1302-05 ",.01)
 ;;00527-1302-05