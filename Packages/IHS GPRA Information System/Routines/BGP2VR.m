BGP2VR ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 12, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;;BGP HEDIS CALCIUM CHANNEL NDC
 ;
 ; This routine loads Taxonomy BGP HEDIS CALCIUM CHANNEL NDC
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 D OTHER
 I $O(^TMP("ATX",$J,3.6,0)) D BULL^ATXSTX2
 I $O(^TMP("ATX",$J,9002226,0)) D TAX^ATXSTX2
 D KILL^ATXSTX2
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"00069-2600-66 ")
 ;;1
 ;;21,"00182-1547-01 ")
 ;;2
 ;;21,"00182-1547-96 ")
 ;;3
 ;;21,"00182-1548-01 ")
 ;;87
 ;;21,"00182-1548-96 ")
 ;;88
 ;;21,"00228-2497-10 ")
 ;;4
 ;;21,"00228-2530-10 ")
 ;;89
 ;;21,"00247-0206-00 ")
 ;;5
 ;;21,"00247-0206-01 ")
 ;;6
 ;;21,"00247-0206-02 ")
 ;;7
 ;;21,"00247-0206-03 ")
 ;;8
 ;;21,"00247-0206-05 ")
 ;;9
 ;;21,"00247-0206-06 ")
 ;;10
 ;;21,"00247-0206-09 ")
 ;;11
 ;;21,"00247-0206-10 ")
 ;;12
 ;;21,"00247-0206-12 ")
 ;;13
 ;;21,"00247-0206-14 ")
 ;;14
 ;;21,"00247-0206-15 ")
 ;;15
 ;;21,"00247-0206-20 ")
 ;;16
 ;;21,"00247-0206-30 ")
 ;;17
 ;;21,"00247-0206-40 ")
 ;;18
 ;;21,"00247-0206-60 ")
 ;;19
 ;;21,"00247-0206-90 ")
 ;;20
 ;;21,"00247-1269-00 ")
 ;;90
 ;;21,"00247-1269-99 ")
 ;;91
 ;;21,"00339-5717-12 ")
 ;;21
 ;;21,"00339-5718-12 ")
 ;;92
 ;;21,"00615-0359-13 ")
 ;;93
 ;;21,"33358-0261-00 ")
 ;;22
 ;;21,"33358-0261-20 ")
 ;;23
 ;;21,"33358-0261-30 ")
 ;;24
 ;;21,"33358-0261-90 ")
 ;;25
 ;;21,"43386-0440-24 ")
 ;;26
 ;;21,"49999-0161-90 ")
 ;;27
 ;;21,"52959-0273-00 ")
 ;;28
 ;;21,"52959-0273-01 ")
 ;;29
 ;;21,"52959-0273-08 ")
 ;;30
 ;;21,"52959-0273-10 ")
 ;;31
 ;;21,"52959-0273-20 ")
 ;;32
 ;;21,"52959-0273-30 ")
 ;;33
 ;;21,"52959-0273-40 ")
 ;;34
 ;;21,"52959-0273-50 ")
 ;;35
 ;;21,"52959-0273-60 ")
 ;;36
 ;;21,"52959-0273-80 ")
 ;;37
 ;;21,"52959-0488-30 ")
 ;;94
 ;;21,"54569-3121-00 ")
 ;;38
 ;;21,"54569-3121-01 ")
 ;;39
 ;;21,"54569-3121-02 ")
 ;;40
 ;;21,"54569-3121-03 ")
 ;;41
 ;;21,"54569-3121-04 ")
 ;;42
 ;;21,"54569-3121-05 ")
 ;;43
 ;;21,"54569-3122-02 ")
 ;;95
 ;;21,"54868-1326-00 ")
 ;;44
 ;;21,"54868-1326-02 ")
 ;;45
 ;;21,"54868-1326-04 ")
 ;;46
 ;;21,"54868-1326-05 ")
 ;;47
 ;;21,"54868-1326-06 ")
 ;;48
 ;;21,"54868-1521-00 ")
 ;;96
 ;;21,"54868-1521-02 ")
 ;;97
 ;;21,"55289-0907-08 ")
 ;;49
 ;;21,"55289-0907-30 ")
 ;;50
 ;;21,"55289-0907-79 ")
 ;;51
 ;;21,"55289-0907-97 ")
 ;;52
 ;;21,"55887-0668-01 ")
 ;;53
 ;;21,"55887-0668-10 ")
 ;;54
 ;;21,"55887-0668-13 ")
 ;;55
 ;;21,"55887-0668-15 ")
 ;;56
 ;;21,"55887-0668-30 ")
 ;;57
 ;;21,"58016-0620-00 ")
 ;;98
 ;;21,"58016-0620-12 ")
 ;;99
 ;;21,"58016-0620-15 ")
 ;;100
 ;;21,"58016-0620-20 ")
 ;;101
 ;;21,"58016-0620-30 ")
 ;;102
 ;;21,"58016-0620-90 ")
 ;;103
 ;;21,"58016-0622-00 ")
 ;;58
 ;;21,"58016-0622-08 ")
 ;;59
 ;;21,"58016-0622-12 ")
 ;;60
 ;;21,"58016-0622-15 ")
 ;;61
 ;;21,"58016-0622-20 ")
 ;;62
 ;;21,"58016-0622-30 ")
 ;;63
 ;;21,"58016-0622-50 ")
 ;;64
 ;;21,"58016-0622-60 ")
 ;;65
 ;;21,"58016-0622-90 ")
 ;;66
 ;;21,"58864-0796-20 ")
 ;;67
 ;;21,"58864-0797-30 ")
 ;;104
 ;;21,"61392-0353-34 ")
 ;;105
 ;;21,"61392-0353-36 ")
 ;;106
 ;;21,"61392-0353-45 ")
 ;;107
 ;;21,"61392-0353-54 ")
 ;;108
 ;;21,"61392-0353-56 ")
 ;;109
 ;;21,"61392-0353-91 ")
 ;;110
 ;;21,"61392-0356-15 ")
 ;;68
 ;;21,"61392-0356-45 ")
 ;;69
 ;;21,"61392-0356-56 ")
 ;;70
 ;;21,"63629-1558-01 ")
 ;;71
 ;;21,"63629-1558-02 ")
 ;;72
 ;;21,"63629-1558-03 ")
 ;;73
 ;;21,"63629-1558-04 ")
 ;;74
 ;;21,"63874-0338-01 ")
 ;;75
 ;;21,"63874-0338-03 ")
 ;;76
 ;;21,"63874-0338-08 ")
 ;;77
 ;;21,"63874-0338-10 ")
 ;;78
 ;;21,"63874-0338-12 ")
 ;;79
 ;;21,"63874-0338-15 ")
 ;;80
 ;;21,"63874-0338-20 ")
 ;;81
 ;;21,"63874-0338-30 ")
 ;;82
 ;;21,"63874-0338-50 ")
 ;;83
 ;;21,"63874-0338-60 ")
 ;;84
 ;;21,"63874-0338-90 ")
 ;;85
 ;;21,"68115-0255-30 ")
 ;;86
 ;;21,"68115-0472-60 ")
 ;;111
 ;;9002226,731,.01)
 ;;BGP HEDIS CALCIUM CHANNEL NDC
 ;;9002226,731,.02)
 ;;@
 ;;9002226,731,.04)
 ;;n
 ;;9002226,731,.06)
 ;;@
 ;;9002226,731,.08)
 ;;@
 ;;9002226,731,.09)
 ;;3120312
 ;;9002226,731,.11)
 ;;@
 ;;9002226,731,.12)
 ;;@
 ;;9002226,731,.13)
 ;;1
 ;;9002226,731,.14)
 ;;@
 ;;9002226,731,.15)
 ;;@
 ;;9002226,731,.16)
 ;;@
 ;;9002226,731,.17)
 ;;@
 ;;9002226,731,3101)
 ;;@
 ;;9002226.02101,"731,00069-2600-66 ",.01)
 ;;00069-2600-66
 ;;9002226.02101,"731,00069-2600-66 ",.02)
 ;;00069-2600-66
 ;;9002226.02101,"731,00182-1547-01 ",.01)
 ;;00182-1547-01
 ;;9002226.02101,"731,00182-1547-01 ",.02)
 ;;00182-1547-01
 ;;9002226.02101,"731,00182-1547-96 ",.01)
 ;;00182-1547-96
 ;;9002226.02101,"731,00182-1547-96 ",.02)
 ;;00182-1547-96
 ;;9002226.02101,"731,00182-1548-01 ",.01)
 ;;00182-1548-01
 ;;9002226.02101,"731,00182-1548-01 ",.02)
 ;;00182-1548-01
 ;;9002226.02101,"731,00182-1548-96 ",.01)
 ;;00182-1548-96
 ;;9002226.02101,"731,00182-1548-96 ",.02)
 ;;00182-1548-96
 ;;9002226.02101,"731,00228-2497-10 ",.01)
 ;;00228-2497-10
 ;;9002226.02101,"731,00228-2497-10 ",.02)
 ;;00228-2497-10
 ;;9002226.02101,"731,00228-2530-10 ",.01)
 ;;00228-2530-10
 ;;9002226.02101,"731,00228-2530-10 ",.02)
 ;;00228-2530-10
 ;;9002226.02101,"731,00247-0206-00 ",.01)
 ;;00247-0206-00
 ;;9002226.02101,"731,00247-0206-00 ",.02)
 ;;00247-0206-00
 ;;9002226.02101,"731,00247-0206-01 ",.01)
 ;;00247-0206-01
 ;;9002226.02101,"731,00247-0206-01 ",.02)
 ;;00247-0206-01
 ;;9002226.02101,"731,00247-0206-02 ",.01)
 ;;00247-0206-02
 ;;9002226.02101,"731,00247-0206-02 ",.02)
 ;;00247-0206-02
 ;;9002226.02101,"731,00247-0206-03 ",.01)
 ;;00247-0206-03
 ;;9002226.02101,"731,00247-0206-03 ",.02)
 ;;00247-0206-03
 ;;9002226.02101,"731,00247-0206-05 ",.01)
 ;;00247-0206-05
 ;;9002226.02101,"731,00247-0206-05 ",.02)
 ;;00247-0206-05
 ;;9002226.02101,"731,00247-0206-06 ",.01)
 ;;00247-0206-06
 ;;9002226.02101,"731,00247-0206-06 ",.02)
 ;;00247-0206-06
 ;;9002226.02101,"731,00247-0206-09 ",.01)
 ;;00247-0206-09
 ;;9002226.02101,"731,00247-0206-09 ",.02)
 ;;00247-0206-09
 ;;9002226.02101,"731,00247-0206-10 ",.01)
 ;;00247-0206-10
 ;;9002226.02101,"731,00247-0206-10 ",.02)
 ;;00247-0206-10
 ;;9002226.02101,"731,00247-0206-12 ",.01)
 ;;00247-0206-12
 ;;9002226.02101,"731,00247-0206-12 ",.02)
 ;;00247-0206-12
 ;;9002226.02101,"731,00247-0206-14 ",.01)
 ;;00247-0206-14
 ;;9002226.02101,"731,00247-0206-14 ",.02)
 ;;00247-0206-14
 ;;9002226.02101,"731,00247-0206-15 ",.01)
 ;;00247-0206-15
 ;;9002226.02101,"731,00247-0206-15 ",.02)
 ;;00247-0206-15
 ;;9002226.02101,"731,00247-0206-20 ",.01)
 ;;00247-0206-20
 ;;9002226.02101,"731,00247-0206-20 ",.02)
 ;;00247-0206-20
 ;;9002226.02101,"731,00247-0206-30 ",.01)
 ;;00247-0206-30
 ;;9002226.02101,"731,00247-0206-30 ",.02)
 ;;00247-0206-30
 ;;9002226.02101,"731,00247-0206-40 ",.01)
 ;;00247-0206-40
 ;;9002226.02101,"731,00247-0206-40 ",.02)
 ;;00247-0206-40
 ;;9002226.02101,"731,00247-0206-60 ",.01)
 ;;00247-0206-60
 ;;9002226.02101,"731,00247-0206-60 ",.02)
 ;;00247-0206-60
 ;;9002226.02101,"731,00247-0206-90 ",.01)
 ;;00247-0206-90
 ;;9002226.02101,"731,00247-0206-90 ",.02)
 ;;00247-0206-90
 ;;9002226.02101,"731,00247-1269-00 ",.01)
 ;;00247-1269-00
 ;;9002226.02101,"731,00247-1269-00 ",.02)
 ;;00247-1269-00
 ;;9002226.02101,"731,00247-1269-99 ",.01)
 ;;00247-1269-99
 ;;9002226.02101,"731,00247-1269-99 ",.02)
 ;;00247-1269-99
 ;;9002226.02101,"731,00339-5717-12 ",.01)
 ;;00339-5717-12
 ;;9002226.02101,"731,00339-5717-12 ",.02)
 ;;00339-5717-12
 ;;9002226.02101,"731,00339-5718-12 ",.01)
 ;;00339-5718-12
 ;;9002226.02101,"731,00339-5718-12 ",.02)
 ;;00339-5718-12
 ;;9002226.02101,"731,00615-0359-13 ",.01)
 ;;00615-0359-13
 ;;9002226.02101,"731,00615-0359-13 ",.02)
 ;;00615-0359-13
 ;;9002226.02101,"731,33358-0261-00 ",.01)
 ;;33358-0261-00
 ;;9002226.02101,"731,33358-0261-00 ",.02)
 ;;33358-0261-00
 ;;9002226.02101,"731,33358-0261-20 ",.01)
 ;;33358-0261-20
 ;;9002226.02101,"731,33358-0261-20 ",.02)
 ;;33358-0261-20
 ;;9002226.02101,"731,33358-0261-30 ",.01)
 ;;33358-0261-30
 ;;9002226.02101,"731,33358-0261-30 ",.02)
 ;;33358-0261-30
 ;;9002226.02101,"731,33358-0261-90 ",.01)
 ;;33358-0261-90
 ;;9002226.02101,"731,33358-0261-90 ",.02)
 ;;33358-0261-90
 ;;9002226.02101,"731,43386-0440-24 ",.01)
 ;;43386-0440-24
 ;;9002226.02101,"731,43386-0440-24 ",.02)
 ;;43386-0440-24
 ;;9002226.02101,"731,49999-0161-90 ",.01)
 ;;49999-0161-90
 ;;9002226.02101,"731,49999-0161-90 ",.02)
 ;;49999-0161-90
 ;;9002226.02101,"731,52959-0273-00 ",.01)
 ;;52959-0273-00
 ;;9002226.02101,"731,52959-0273-00 ",.02)
 ;;52959-0273-00
 ;;9002226.02101,"731,52959-0273-01 ",.01)
 ;;52959-0273-01
 ;;9002226.02101,"731,52959-0273-01 ",.02)
 ;;52959-0273-01
 ;;9002226.02101,"731,52959-0273-08 ",.01)
 ;;52959-0273-08
 ;;9002226.02101,"731,52959-0273-08 ",.02)
 ;;52959-0273-08
 ;;9002226.02101,"731,52959-0273-10 ",.01)
 ;;52959-0273-10
 ;;9002226.02101,"731,52959-0273-10 ",.02)
 ;;52959-0273-10
 ;;9002226.02101,"731,52959-0273-20 ",.01)
 ;;52959-0273-20
 ;;9002226.02101,"731,52959-0273-20 ",.02)
 ;;52959-0273-20
 ;;9002226.02101,"731,52959-0273-30 ",.01)
 ;;52959-0273-30
 ;;9002226.02101,"731,52959-0273-30 ",.02)
 ;;52959-0273-30
 ;;9002226.02101,"731,52959-0273-40 ",.01)
 ;;52959-0273-40
 ;;9002226.02101,"731,52959-0273-40 ",.02)
 ;;52959-0273-40
 ;;9002226.02101,"731,52959-0273-50 ",.01)
 ;;52959-0273-50
 ;;9002226.02101,"731,52959-0273-50 ",.02)
 ;;52959-0273-50
 ;;9002226.02101,"731,52959-0273-60 ",.01)
 ;;52959-0273-60
 ;;9002226.02101,"731,52959-0273-60 ",.02)
 ;;52959-0273-60
 ;;9002226.02101,"731,52959-0273-80 ",.01)
 ;;52959-0273-80
 ;;9002226.02101,"731,52959-0273-80 ",.02)
 ;;52959-0273-80
 ;;9002226.02101,"731,52959-0488-30 ",.01)
 ;;52959-0488-30
 ;;9002226.02101,"731,52959-0488-30 ",.02)
 ;;52959-0488-30
 ;;9002226.02101,"731,54569-3121-00 ",.01)
 ;;54569-3121-00
 ;;9002226.02101,"731,54569-3121-00 ",.02)
 ;;54569-3121-00
 ;;9002226.02101,"731,54569-3121-01 ",.01)
 ;;54569-3121-01
 ;;9002226.02101,"731,54569-3121-01 ",.02)
 ;;54569-3121-01
 ;;9002226.02101,"731,54569-3121-02 ",.01)
 ;;54569-3121-02
 ;;9002226.02101,"731,54569-3121-02 ",.02)
 ;;54569-3121-02
 ;;9002226.02101,"731,54569-3121-03 ",.01)
 ;;54569-3121-03
 ;;9002226.02101,"731,54569-3121-03 ",.02)
 ;;54569-3121-03
 ;;9002226.02101,"731,54569-3121-04 ",.01)
 ;;54569-3121-04
 ;;9002226.02101,"731,54569-3121-04 ",.02)
 ;;54569-3121-04
 ;;9002226.02101,"731,54569-3121-05 ",.01)
 ;;54569-3121-05
 ;;9002226.02101,"731,54569-3121-05 ",.02)
 ;;54569-3121-05
 ;;9002226.02101,"731,54569-3122-02 ",.01)
 ;;54569-3122-02
 ;;9002226.02101,"731,54569-3122-02 ",.02)
 ;;54569-3122-02
 ;;9002226.02101,"731,54868-1326-00 ",.01)
 ;;54868-1326-00
 ;;9002226.02101,"731,54868-1326-00 ",.02)
 ;;54868-1326-00
 ;;9002226.02101,"731,54868-1326-02 ",.01)
 ;;54868-1326-02
 ;;9002226.02101,"731,54868-1326-02 ",.02)
 ;;54868-1326-02
 ;;9002226.02101,"731,54868-1326-04 ",.01)
 ;;54868-1326-04
 ;;9002226.02101,"731,54868-1326-04 ",.02)
 ;;54868-1326-04
 ;;9002226.02101,"731,54868-1326-05 ",.01)
 ;;54868-1326-05
 ;;9002226.02101,"731,54868-1326-05 ",.02)
 ;;54868-1326-05
 ;;9002226.02101,"731,54868-1326-06 ",.01)
 ;;54868-1326-06
 ;;9002226.02101,"731,54868-1326-06 ",.02)
 ;;54868-1326-06
 ;;9002226.02101,"731,54868-1521-00 ",.01)
 ;;54868-1521-00
 ;;9002226.02101,"731,54868-1521-00 ",.02)
 ;;54868-1521-00
 ;;9002226.02101,"731,54868-1521-02 ",.01)
 ;;54868-1521-02
 ;;9002226.02101,"731,54868-1521-02 ",.02)
 ;;54868-1521-02
 ;;9002226.02101,"731,55289-0907-08 ",.01)
 ;;55289-0907-08
 ;;9002226.02101,"731,55289-0907-08 ",.02)
 ;;55289-0907-08
 ;;9002226.02101,"731,55289-0907-30 ",.01)
 ;;55289-0907-30
 ;;9002226.02101,"731,55289-0907-30 ",.02)
 ;;55289-0907-30
 ;;9002226.02101,"731,55289-0907-79 ",.01)
 ;;55289-0907-79
 ;;9002226.02101,"731,55289-0907-79 ",.02)
 ;;55289-0907-79
 ;;9002226.02101,"731,55289-0907-97 ",.01)
 ;;55289-0907-97
 ;;9002226.02101,"731,55289-0907-97 ",.02)
 ;;55289-0907-97
 ;;9002226.02101,"731,55887-0668-01 ",.01)
 ;;55887-0668-01
 ;;9002226.02101,"731,55887-0668-01 ",.02)
 ;;55887-0668-01
 ;;9002226.02101,"731,55887-0668-10 ",.01)
 ;;55887-0668-10
 ;;9002226.02101,"731,55887-0668-10 ",.02)
 ;;55887-0668-10
 ;;9002226.02101,"731,55887-0668-13 ",.01)
 ;;55887-0668-13
 ;;9002226.02101,"731,55887-0668-13 ",.02)
 ;;55887-0668-13
 ;;9002226.02101,"731,55887-0668-15 ",.01)
 ;;55887-0668-15
 ;;9002226.02101,"731,55887-0668-15 ",.02)
 ;;55887-0668-15
 ;;9002226.02101,"731,55887-0668-30 ",.01)
 ;;55887-0668-30
 ;;9002226.02101,"731,55887-0668-30 ",.02)
 ;;55887-0668-30
 ;;9002226.02101,"731,58016-0620-00 ",.01)
 ;;58016-0620-00
 ;;9002226.02101,"731,58016-0620-00 ",.02)
 ;;58016-0620-00
 ;;9002226.02101,"731,58016-0620-12 ",.01)
 ;;58016-0620-12
 ;;9002226.02101,"731,58016-0620-12 ",.02)
 ;;58016-0620-12
 ;;9002226.02101,"731,58016-0620-15 ",.01)
 ;;58016-0620-15
 ;;9002226.02101,"731,58016-0620-15 ",.02)
 ;;58016-0620-15
 ;;9002226.02101,"731,58016-0620-20 ",.01)
 ;;58016-0620-20
 ;;9002226.02101,"731,58016-0620-20 ",.02)
 ;;58016-0620-20
 ;;9002226.02101,"731,58016-0620-30 ",.01)
 ;;58016-0620-30
 ;;9002226.02101,"731,58016-0620-30 ",.02)
 ;;58016-0620-30
 ;;9002226.02101,"731,58016-0620-90 ",.01)
 ;;58016-0620-90
 ;;9002226.02101,"731,58016-0620-90 ",.02)
 ;;58016-0620-90
 ;;9002226.02101,"731,58016-0622-00 ",.01)
 ;;58016-0622-00
 ;;9002226.02101,"731,58016-0622-00 ",.02)
 ;;58016-0622-00
 ;;9002226.02101,"731,58016-0622-08 ",.01)
 ;;58016-0622-08
 ;
OTHER ; OTHER ROUTINES
 D ^BGP2VR2
 Q