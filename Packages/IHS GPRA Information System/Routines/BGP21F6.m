BGP21F6 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"29300-0188-13 ")
 ;;178
 ;;21,"29300-0189-01 ")
 ;;94
 ;;21,"29300-0189-05 ")
 ;;95
 ;;21,"29300-0189-13 ")
 ;;96
 ;;21,"33261-0221-30 ")
 ;;1161
 ;;21,"33261-0221-60 ")
 ;;1162
 ;;21,"33261-0221-90 ")
 ;;1163
 ;;21,"33261-0349-30 ")
 ;;720
 ;;21,"33261-0349-60 ")
 ;;721
 ;;21,"33261-0349-90 ")
 ;;722
 ;;21,"33261-0642-30 ")
 ;;2286
 ;;21,"33261-0642-60 ")
 ;;2287
 ;;21,"33261-0642-90 ")
 ;;2288
 ;;21,"33261-0643-30 ")
 ;;2356
 ;;21,"33261-0643-60 ")
 ;;2357
 ;;21,"33261-0643-90 ")
 ;;2358
 ;;21,"33358-0037-00 ")
 ;;438
 ;;21,"33358-0037-30 ")
 ;;439
 ;;21,"33358-0037-60 ")
 ;;440
 ;;21,"33358-0038-00 ")
 ;;601
 ;;21,"33358-0038-30 ")
 ;;602
 ;;21,"33358-0038-60 ")
 ;;603
 ;;21,"33358-0039-00 ")
 ;;305
 ;;21,"33358-0039-30 ")
 ;;306
 ;;21,"33358-0192-30 ")
 ;;2167
 ;;21,"33358-0193-30 ")
 ;;2243
 ;;21,"33358-0194-30 ")
 ;;2053
 ;;21,"33358-0242-00 ")
 ;;1711
 ;;21,"33358-0242-01 ")
 ;;1712
 ;;21,"33358-0242-30 ")
 ;;1713
 ;;21,"33358-0242-60 ")
 ;;1714
 ;;21,"33358-0242-90 ")
 ;;1715
 ;;21,"33358-0243-00 ")
 ;;1485
 ;;21,"33358-0243-30 ")
 ;;1486
 ;;21,"35356-0362-60 ")
 ;;1151
 ;;21,"35356-0415-30 ")
 ;;1716
 ;;21,"35356-0490-30 ")
 ;;812
 ;;21,"35356-0512-30 ")
 ;;1056
 ;;21,"35356-0513-30 ")
 ;;992
 ;;21,"35356-0518-30 ")
 ;;801
 ;;21,"35356-0526-00 ")
 ;;915
 ;;21,"38245-0724-20 ")
 ;;1937
 ;;21,"38245-0727-20 ")
 ;;1867
 ;;21,"42291-0171-90 ")
 ;;123
 ;;21,"42291-0172-90 ")
 ;;156
 ;;21,"42291-0173-90 ")
 ;;81
 ;;21,"42806-0038-01 ")
 ;;733
 ;;21,"42806-0039-01 ")
 ;;742
 ;;21,"43063-0006-01 ")
 ;;1487
 ;;21,"43063-0125-93 ")
 ;;834
 ;;21,"43063-0126-93 ")
 ;;993
 ;;21,"43063-0127-93 ")
 ;;1057
 ;;21,"43063-0129-93 ")
 ;;916
 ;;21,"43063-0134-30 ")
 ;;97
 ;;21,"43063-0134-90 ")
 ;;82
 ;;21,"43063-0135-90 ")
 ;;124
 ;;21,"43063-0210-30 ")
 ;;1328
 ;;21,"43063-0211-30 ")
 ;;1380
 ;;21,"43353-0111-30 ")
 ;;917
 ;;21,"43353-0111-53 ")
 ;;918
 ;;21,"43353-0111-60 ")
 ;;919
 ;;21,"43353-0111-80 ")
 ;;920
 ;;21,"43353-0119-30 ")
 ;;1058
 ;;21,"43353-0119-53 ")
 ;;1059
 ;;21,"43353-0119-60 ")
 ;;1060
 ;;21,"43353-0119-80 ")
 ;;1061
 ;;21,"43353-0122-30 ")
 ;;835
 ;;21,"43353-0122-53 ")
 ;;836
 ;;21,"43353-0122-60 ")
 ;;837
 ;;21,"43353-0133-60 ")
 ;;921
 ;;21,"43353-0134-45 ")
 ;;1250
 ;;21,"43353-0134-60 ")
 ;;1251
 ;;21,"43353-0160-30 ")
 ;;838
 ;;21,"43353-0160-53 ")
 ;;839
 ;;21,"43353-0160-60 ")
 ;;840
 ;;21,"43353-0160-70 ")
 ;;841
 ;;21,"43353-0160-80 ")
 ;;842
 ;;21,"43353-0173-30 ")
 ;;1381
 ;;21,"43353-0173-42 ")
 ;;1382
 ;;21,"43353-0173-45 ")
 ;;1383
 ;;21,"43353-0173-80 ")
 ;;1384
 ;;21,"43353-0348-30 ")
 ;;1385
 ;;21,"43353-0348-45 ")
 ;;1386
 ;;21,"43353-0399-60 ")
 ;;604
 ;;21,"43353-0440-30 ")
 ;;922
 ;;21,"43353-0440-53 ")
 ;;923
 ;;21,"43353-0440-60 ")
 ;;924
 ;;21,"43353-0440-80 ")
 ;;925
 ;;21,"43353-0478-30 ")
 ;;843
 ;;21,"43353-0478-53 ")
 ;;844
 ;;21,"43353-0478-60 ")
 ;;845
 ;;21,"43353-0485-53 ")
 ;;994
 ;;21,"43353-0485-60 ")
 ;;995
 ;;21,"43353-0486-30 ")
 ;;1062
 ;;21,"43353-0486-53 ")
 ;;1063
 ;;21,"43353-0486-60 ")
 ;;1064
 ;;21,"43353-0486-80 ")
 ;;1065
 ;;21,"43353-0508-60 ")
 ;;2244
 ;;21,"43353-0576-45 ")
 ;;1717
 ;;21,"43353-0576-53 ")
 ;;1718
 ;;21,"43353-0576-60 ")
 ;;1719
 ;;21,"43353-0576-70 ")
 ;;1720
 ;;21,"43353-0576-80 ")
 ;;1721
 ;;21,"43353-0576-92 ")
 ;;1722
 ;;21,"43353-0701-60 ")
 ;;2289
 ;;21,"43353-0706-60 ")
 ;;2359
 ;;21,"43478-0900-88 ")
 ;;2054
 ;;21,"43478-0901-88 ")
 ;;2079
 ;;21,"43478-0902-88 ")
 ;;2004
 ;;21,"43478-0903-88 ")
 ;;2028
 ;;21,"43547-0254-10 ")
 ;;996
 ;;21,"43547-0255-10 ")
 ;;1066
 ;;21,"43547-0256-10 ")
 ;;846
 ;;21,"43547-0257-10 ")
 ;;926
 ;;21,"43683-0142-30 ")
 ;;38
 ;;21,"43683-0143-30 ")
 ;;13
 ;;21,"43683-0144-30 ")
 ;;605
 ;;21,"43683-0146-30 ")
 ;;1723
 ;;21,"47463-0028-30 ")
 ;;517
 ;;21,"47463-0029-30 ")
 ;;723
 ;;21,"47463-0029-90 ")
 ;;724
 ;;21,"47463-0030-30 ")
 ;;375
 ;;21,"47463-0056-30 ")
 ;;889
 ;;21,"47463-0056-60 ")
 ;;890
 ;;21,"47463-0057-30 ")
 ;;1113
 ;;21,"47463-0057-60 ")
 ;;1114
 ;;21,"47463-0058-30 ")
 ;;971
 ;;21,"47463-0058-60 ")
 ;;972
 ;;21,"47463-0059-30 ")
 ;;1034
 ;;21,"47463-0059-60 ")
 ;;1035
 ;;21,"47463-0519-30 ")
 ;;1425
 ;;21,"47463-0519-60 ")
 ;;1426
 ;;21,"47463-0520-30 ")
 ;;1283
 ;;21,"47463-0521-30 ")
 ;;1357
 ;;21,"47463-0522-30 ")
 ;;1570
 ;;21,"47463-0523-30 ")
 ;;1621
 ;;21,"47463-0524-30 ")
 ;;1859
 ;;21,"47463-0524-60 ")
 ;;1860
 ;;21,"47463-0524-74 ")
 ;;1861
 ;;21,"49884-0282-01 ")
 ;;2042
 ;;21,"49884-0282-10 ")
 ;;2043
 ;;21,"49884-0328-01 ")
 ;;2070
 ;;21,"49884-0328-10 ")
 ;;2071
 ;;21,"49884-0329-01 ")
 ;;1994
 ;;21,"49884-0329-10 ")
 ;;1995
 ;;21,"49884-0330-01 ")
 ;;2019
 ;;21,"49884-0330-10 ")
 ;;2020
 ;;21,"49884-0404-01 ")
 ;;1329
 ;;21,"49884-0404-10 ")
 ;;1330
 ;;21,"49884-0405-01 ")
 ;;1387
 ;;21,"49884-0405-10 ")
 ;;1388