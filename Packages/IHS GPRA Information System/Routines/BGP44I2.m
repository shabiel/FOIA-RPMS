BGP44I2 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON SEP 06, 2013;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"00904-5849-89 ")
 ;;1026
 ;;21,"00904-5849-93 ")
 ;;1027
 ;;21,"00904-5850-40 ")
 ;;1279
 ;;21,"00904-5850-52 ")
 ;;1280
 ;;21,"00904-5850-53 ")
 ;;1281
 ;;21,"00904-5850-89 ")
 ;;1282
 ;;21,"00904-5850-93 ")
 ;;1283
 ;;21,"00904-5851-40 ")
 ;;1457
 ;;21,"00904-5851-52 ")
 ;;1458
 ;;21,"00904-5851-89 ")
 ;;1459
 ;;21,"00904-5851-93 ")
 ;;1420
 ;;21,"00904-6090-61 ")
 ;;955
 ;;21,"00904-6091-61 ")
 ;;1242
 ;;21,"00904-6092-61 ")
 ;;1419
 ;;21,"00904-6107-40 ")
 ;;1693
 ;;21,"00904-6107-61 ")
 ;;1694
 ;;21,"00904-6108-60 ")
 ;;1734
 ;;21,"00904-6108-61 ")
 ;;1735
 ;;21,"00904-6123-61 ")
 ;;438
 ;;21,"00904-6124-61 ")
 ;;262
 ;;21,"00904-6137-60 ")
 ;;580
 ;;21,"00904-6138-40 ")
 ;;614
 ;;21,"00904-6138-60 ")
 ;;615
 ;;21,"10544-0058-30 ")
 ;;1499
 ;;21,"10544-0192-30 ")
 ;;326
 ;;21,"10544-0253-30 ")
 ;;1482
 ;;21,"10544-0254-30 ")
 ;;975
 ;;21,"10544-0255-30 ")
 ;;1266
 ;;21,"10631-0206-01 ")
 ;;1600
 ;;21,"10631-0206-02 ")
 ;;1601
 ;;21,"13411-0101-01 ")
 ;;1910
 ;;21,"13411-0101-03 ")
 ;;1911
 ;;21,"13411-0101-06 ")
 ;;1912
 ;;21,"13411-0101-09 ")
 ;;1913
 ;;21,"13411-0101-15 ")
 ;;1914
 ;;21,"13411-0102-01 ")
 ;;1973
 ;;21,"13411-0102-03 ")
 ;;1974
 ;;21,"13411-0102-06 ")
 ;;1975
 ;;21,"13411-0102-09 ")
 ;;1976
 ;;21,"13411-0102-15 ")
 ;;1977
 ;;21,"13411-0103-01 ")
 ;;1839
 ;;21,"13411-0103-03 ")
 ;;1840
 ;;21,"13411-0103-06 ")
 ;;1841
 ;;21,"13411-0103-09 ")
 ;;1842
 ;;21,"13411-0103-15 ")
 ;;1843
 ;;21,"13411-0163-02 ")
 ;;915
 ;;21,"13411-0163-03 ")
 ;;916
 ;;21,"13411-0163-06 ")
 ;;917
 ;;21,"13411-0163-09 ")
 ;;918
 ;;21,"13411-0163-10 ")
 ;;919
 ;;21,"13411-0164-02 ")
 ;;1217
 ;;21,"13411-0164-03 ")
 ;;1289
 ;;21,"13411-0164-06 ")
 ;;1290
 ;;21,"13411-0164-09 ")
 ;;1291
 ;;21,"13411-0164-10 ")
 ;;1292
 ;;21,"13668-0119-05 ")
 ;;1932
 ;;21,"13668-0119-30 ")
 ;;1933
 ;;21,"13668-0119-90 ")
 ;;1934
 ;;21,"13668-0120-05 ")
 ;;1991
 ;;21,"13668-0120-30 ")
 ;;1992
 ;;21,"13668-0120-90 ")
 ;;1993
 ;;21,"13668-0140-05 ")
 ;;1866
 ;;21,"13668-0140-30 ")
 ;;1867
 ;;21,"13668-0140-90 ")
 ;;1868
 ;;21,"13668-0280-33 ")
 ;;2334
 ;;21,"13668-0280-60 ")
 ;;2335
 ;;21,"13668-0281-33 ")
 ;;2348
 ;;21,"13668-0281-60 ")
 ;;2349
 ;;21,"13913-0002-13 ")
 ;;1605
 ;;21,"13913-0003-16 ")
 ;;1768
 ;;21,"14565-0202-10 ")
 ;;1686
 ;;21,"14565-0202-50 ")
 ;;1687
 ;;21,"16590-0286-30 ")
 ;;189
 ;;21,"16590-0286-60 ")
 ;;190
 ;;21,"16590-0286-90 ")
 ;;191
 ;;21,"16590-0287-30 ")
 ;;369
 ;;21,"16590-0287-60 ")
 ;;370
 ;;21,"16590-0287-90 ")
 ;;371
 ;;21,"16590-0313-30 ")
 ;;920
 ;;21,"16590-0313-60 ")
 ;;921
 ;;21,"16590-0313-72 ")
 ;;922
 ;;21,"16590-0313-82 ")
 ;;923
 ;;21,"16590-0313-90 ")
 ;;924
 ;;21,"16590-0397-30 ")
 ;;1397
 ;;21,"16590-0397-60 ")
 ;;1398
 ;;21,"16590-0397-90 ")
 ;;1399
 ;;21,"16590-0940-60 ")
 ;;751
 ;;21,"16729-0001-01 ")
 ;;49
 ;;21,"16729-0002-01 ")
 ;;88
 ;;21,"16729-0003-01 ")
 ;;158
 ;;21,"16729-0020-10 ")
 ;;1858
 ;;21,"16729-0020-15 ")
 ;;1859
 ;;21,"16729-0020-16 ")
 ;;1860
 ;;21,"16729-0021-10 ")
 ;;1927
 ;;21,"16729-0021-15 ")
 ;;1928
 ;;21,"16729-0021-16 ")
 ;;1929
 ;;21,"16729-0022-10 ")
 ;;1983
 ;;21,"16729-0022-15 ")
 ;;1984
 ;;21,"16729-0022-16 ")
 ;;1985
 ;;21,"16729-0139-00 ")
 ;;205
 ;;21,"16729-0139-16 ")
 ;;206
 ;;21,"16729-0140-00 ")
 ;;344
 ;;21,"16729-0140-16 ")
 ;;345
 ;;21,"20091-0531-01 ")
 ;;981
 ;;21,"20091-0531-05 ")
 ;;982
 ;;21,"20091-0531-10 ")
 ;;983
 ;;21,"20091-0533-01 ")
 ;;1260
 ;;21,"20091-0533-05 ")
 ;;1261
 ;;21,"20091-0533-10 ")
 ;;1262
 ;;21,"20091-0535-01 ")
 ;;1479
 ;;21,"20091-0535-05 ")
 ;;1480
 ;;21,"20091-0535-10 ")
 ;;1481
 ;;21,"21695-0147-15 ")
 ;;1835
 ;;21,"21695-0148-15 ")
 ;;1906
 ;;21,"21695-0467-30 ")
 ;;616
 ;;21,"21695-0467-60 ")
 ;;617
 ;;21,"21695-0468-30 ")
 ;;735
 ;;21,"21695-0468-60 ")
 ;;736
 ;;21,"21695-0468-72 ")
 ;;737
 ;;21,"21695-0468-78 ")
 ;;738
 ;;21,"21695-0469-30 ")
 ;;258
 ;;21,"21695-0469-60 ")
 ;;259
 ;;21,"21695-0469-78 ")
 ;;260
 ;;21,"21695-0469-90 ")
 ;;261
 ;;21,"21695-0470-00 ")
 ;;433
 ;;21,"21695-0470-30 ")
 ;;434
 ;;21,"21695-0470-60 ")
 ;;435
 ;;21,"21695-0470-78 ")
 ;;436
 ;;21,"21695-0470-90 ")
 ;;437
 ;;21,"21695-0471-00 ")
 ;;956
 ;;21,"21695-0471-30 ")
 ;;957
 ;;21,"21695-0471-60 ")
 ;;958
 ;;21,"21695-0471-72 ")
 ;;959
 ;;21,"21695-0471-78 ")
 ;;960
 ;;21,"21695-0471-90 ")
 ;;961
 ;;21,"21695-0472-30 ")
 ;;1240
 ;;21,"21695-0472-60 ")
 ;;1241
 ;;21,"21695-0473-00 ")
 ;;1421
 ;;21,"21695-0473-30 ")
 ;;1422
 ;;21,"21695-0473-60 ")
 ;;1526
 ;;21,"21695-0473-78 ")
 ;;1527
 ;;21,"21695-0473-90 ")
 ;;1528
 ;;21,"21695-0568-30 ")
 ;;2309
 ;;21,"21695-0568-60 ")
 ;;2254
 ;;21,"21695-0746-30 ")
 ;;106
 ;;21,"21695-0746-90 ")
 ;;107
 ;;21,"21695-0747-30 ")
 ;;139
 ;;21,"21695-0747-60 ")
 ;;140
 ;;21,"21695-0747-90 ")
 ;;141
 ;;21,"21695-0828-30 ")
 ;;1634
 ;;21,"21695-0828-60 ")
 ;;1635
 ;;21,"21695-0828-90 ")
 ;;1636
 ;;21,"21695-0894-00 ")
 ;;2151
 ;;21,"21695-0967-30 ")
 ;;455
 ;;21,"21695-0993-72 ")
 ;;56
 ;;21,"23155-0056-01 ")
 ;;584
 ;;21,"23155-0057-01 ")
 ;;639
 ;;21,"23155-0058-01 ")
 ;;801
 ;;21,"23155-0058-10 ")
 ;;802
 ;;21,"23155-0102-01 ")
 ;;1106
 ;;21,"23155-0102-05 ")
 ;;1107
 ;;21,"23155-0102-10 ")
 ;;1108
 ;;21,"23155-0103-01 ")
 ;;1336
 ;;21,"23155-0103-05 ")
 ;;1337
 ;;21,"23155-0103-10 ")
 ;;1338
 ;;21,"23155-0104-01 ")
 ;;1566
 ;;21,"23155-0104-05 ")
 ;;1567
 ;;21,"23155-0104-10 ")
 ;;1568
 ;;21,"23155-0115-01 ")
 ;;2134
 ;;21,"23155-0116-01 ")
 ;;2145
 ;;21,"23155-0117-01 ")
 ;;2155
 ;;21,"23155-0233-01 ")
 ;;2173
 ;;21,"23155-0233-05 ")
 ;;2174
 ;;21,"23155-0234-01 ")
 ;;2225
 ;;21,"23155-0234-05 ")
 ;;2226
 ;;21,"23155-0235-01 ")
 ;;2255
 ;;21,"23155-0235-05 ")
 ;;2256
 ;;21,"23490-0104-03 ")
 ;;1857
 ;;21,"23490-0105-03 ")
 ;;1916
 ;;21,"23490-0106-03 ")
 ;;1979
 ;;21,"23490-0112-03 ")
 ;;1812
 ;;21,"23490-5632-01 ")
 ;;423
 ;;21,"23490-5632-02 ")
 ;;424
 ;;21,"23490-5632-03 ")
 ;;425
 ;;21,"23490-5633-01 ")
 ;;544
 ;;21,"23490-5634-03 ")
 ;;277
 ;;21,"23490-5634-06 ")
 ;;278
 ;;21,"23490-5634-09 ")
 ;;279
 ;;21,"23490-5635-03 ")
 ;;471
 ;;21,"23490-5636-03 ")
 ;;459
 ;;21,"23490-5636-06 ")
 ;;460
 ;;21,"23490-5636-09 ")
 ;;461
 ;;21,"23490-5638-01 ")
 ;;592
 ;;21,"23490-5638-02 ")
 ;;593
 ;;21,"23490-5638-04 ")
 ;;594
 ;;21,"23490-5639-01 ")
 ;;660
 ;;21,"23490-5639-02 ")
 ;;661
 ;;21,"23490-5640-03 ")
 ;;116
 ;;21,"23490-5640-06 ")
 ;;117
 ;;21,"23490-5640-07 ")
 ;;118
 ;;21,"23490-5641-06 ")
 ;;62
 ;;21,"23490-5641-07 ")
 ;;63
 ;;21,"23490-6838-01 ")
 ;;1145
 ;;21,"23490-6838-02 ")
 ;;1146
 ;;21,"23490-6838-03 ")
 ;;1147
 ;;21,"23490-6838-04 ")
 ;;1148
 ;;21,"23490-6838-09 ")
 ;;1149
 ;;21,"23490-6839-01 ")
 ;;1381
 ;;21,"23490-6839-02 ")
 ;;1382
 ;;21,"23490-7260-01 ")
 ;;1423
 ;;21,"23490-7260-02 ")
 ;;1424
 ;;21,"23490-7260-03 ")
 ;;1425
 ;;21,"23490-7260-04 ")
 ;;1426
 ;;21,"23490-7448-03 ")
 ;;2215
 ;;21,"23490-7448-06 ")
 ;;2216
 ;;21,"23490-7449-01 ")
 ;;2286
 ;;21,"23490-7449-06 ")
 ;;2278
 ;;21,"23490-7449-09 ")
 ;;2279
 ;;21,"23490-7458-03 ")
 ;;1688
 ;;21,"23490-7458-06 ")
 ;;1689
 ;;21,"23490-7458-07 ")
 ;;1690
 ;;21,"23490-7458-12 ")
 ;;1691
 ;;21,"23490-7458-16 ")
 ;;1692
 ;;21,"29033-0018-01 ")
 ;;1645
 ;;21,"29033-0018-05 ")
 ;;1646
 ;;21,"29033-0018-10 ")
 ;;1647
 ;;21,"29033-0021-01 ")
 ;;1745
 ;;21,"33261-0145-02 ")
 ;;1495
 ;;21,"33261-0145-30 ")
 ;;1496
 ;;21,"33261-0145-60 ")
 ;;1497
 ;;21,"33261-0145-90 ")
 ;;1498
 ;;21,"33261-0157-02 ")
 ;;1141
 ;;21,"33261-0157-30 ")
 ;;1142
 ;;21,"33261-0157-60 ")
 ;;1143
 ;;21,"33261-0157-90 ")
 ;;1144
 ;;21,"33261-0209-30 ")
 ;;752
 ;;21,"33261-0209-60 ")
 ;;753
 ;;21,"33261-0209-90 ")
 ;;743
 ;;21,"33261-0372-30 ")
 ;;1683
 ;;21,"33261-0372-60 ")
 ;;1684
 ;;21,"33261-0372-90 ")
 ;;1685
 ;;21,"33261-0821-30 ")
 ;;2222
 ;;21,"33261-0821-60 ")
 ;;2223
 ;;21,"33261-0821-90 ")
 ;;2224
 ;;21,"33261-0831-30 ")
 ;;77
 ;;21,"33261-0831-60 ")
 ;;78
 ;;21,"33261-0831-90 ")
 ;;79
 ;;21,"33358-0157-30 ")
 ;;426
 ;;21,"33358-0157-60 ")
 ;;427
 ;;21,"33358-0158-00 ")
 ;;280
 ;;21,"33358-0158-30 ")
 ;;281
 ;;21,"33358-0158-60 ")
 ;;282
 ;;21,"33358-0160-30 ")
 ;;625
 ;;21,"33358-0160-60 ")
 ;;626
 ;;21,"33358-0161-01 ")
 ;;697
 ;;21,"33358-0161-30 ")
 ;;698
 ;;21,"33358-0161-60 ")
 ;;699
 ;;21,"33358-0161-90 ")
 ;;700
 ;;21,"33358-0234-00 ")
 ;;996
 ;;21,"33358-0234-30 ")
 ;;997
 ;;21,"33358-0234-60 ")
 ;;998
 ;;21,"33358-0235-60 ")
 ;;1726
 ;;21,"33358-0236-30 ")
 ;;1267
 ;;21,"33358-0236-60 ")
 ;;1268
 ;;21,"33358-0237-30 ")
 ;;1450
 ;;21,"33358-0237-60 ")
 ;;1451
 ;;21,"35356-0103-30 ")
 ;;1813
 ;;21,"35356-0121-90 ")
 ;;501
 ;;21,"35356-0130-60 ")
 ;;2344
 ;;21,"35356-0136-60 ")
 ;;2086
 ;;21,"35356-0269-28 ")
 ;;1669
 ;;21,"35356-0271-60 ")
 ;;2028
 ;;21,"35356-0303-01 ")
 ;;1779
 ;;21,"35356-0304-01 ")
 ;;1780
 ;;21,"35356-0305-01 ")
 ;;1785
 ;;21,"35356-0360-30 ")
 ;;654
 ;;21,"35356-0360-60 ")
 ;;655
 ;;21,"35356-0360-90 ")
 ;;656
 ;;21,"35356-0691-60 ")
 ;;968
 ;;21,"35356-0792-30 ")
 ;;943
 ;;21,"35356-0875-30 ")
 ;;441
 ;;21,"35356-0875-60 ")
 ;;442
 ;;21,"35356-0886-30 ")
 ;;1569
 ;;21,"35356-0886-60 ")
 ;;1570
 ;;21,"35356-0886-90 ")
 ;;1571
 ;;21,"35356-0896-30 ")
 ;;57
 ;;21,"35356-0897-30 ")
 ;;2221
 ;;21,"35356-0899-60 ")
 ;;368
 ;;21,"35356-0922-60 ")
 ;;1324
 ;;21,"35356-0931-30 ")
 ;;516
 ;;21,"35356-0931-60 ")
 ;;517
 ;;21,"35356-0931-90 ")
 ;;518
 ;;21,"35356-0932-30 ")
 ;;2175
 ;;21,"35356-0932-60 ")
 ;;2176
 ;;21,"35356-0932-90 ")
 ;;2177
 ;;21,"35356-0959-30 ")
 ;;1325
 ;;21,"35356-0959-60 ")
 ;;1326
 ;;21,"35356-0959-90 ")
 ;;1327
 ;;21,"35356-0970-30 ")
 ;;2129
 ;;21,"35356-0970-60 ")
 ;;2130
 ;;21,"35356-0970-90 ")
 ;;2131
 ;;21,"42254-0071-30 ")
 ;;2205
 ;;21,"42254-0090-60 ")
 ;;701
 ;;21,"42254-0281-30 ")
 ;;872
 ;;21,"42254-0281-90 ")
 ;;873
 ;;21,"42291-0605-10 ")
 ;;1008
 ;;21,"42291-0605-12 ")
 ;;1009
 ;;21,"42291-0605-18 ")
 ;;1010
 ;;21,"42291-0605-27 ")
 ;;1011
 ;;21,"42291-0605-36 ")
 ;;1012
 ;;21,"42291-0605-45 ")
 ;;1013
 ;;21,"42291-0605-60 ")
 ;;1014
 ;;21,"42291-0605-90 ")
 ;;1015
 ;;21,"42291-0606-10 ")
 ;;1284
 ;;21,"42291-0606-18 ")
 ;;1285
 ;;21,"42291-0606-27 ")
 ;;1286
 ;;21,"42291-0606-90 ")
 ;;1287
 ;;21,"42291-0607-10 ")
 ;;1453
 ;;21,"42291-0607-18 ")
 ;;1454
 ;;21,"42291-0607-60 ")
 ;;1455
 ;;21,"42291-0607-90 ")
 ;;1456
 ;;21,"42291-0610-18 ")
 ;;1723
 ;;21,"42291-0610-36 ")
 ;;1724
 ;;21,"42291-0610-90 ")
 ;;1725
 ;;21,"42291-0611-18 ")
 ;;1737
 ;;21,"42291-0612-10 ")
 ;;999
 ;;21,"42291-0612-12 ")
 ;;1000
 ;;21,"42291-0612-18 ")
 ;;1001
 ;;21,"42291-0612-27 ")
 ;;1002
 ;;21,"42291-0612-36 ")
 ;;1003
 ;;21,"42291-0612-45 ")
 ;;1004
 ;;21,"42291-0612-60 ")
 ;;1005
 ;;21,"42291-0612-90 ")
 ;;1006
 ;;21,"42291-0613-10 ")
 ;;1269
 ;;21,"42291-0613-18 ")
 ;;1270
 ;;21,"42291-0613-27 ")
 ;;1271
 ;;21,"42291-0613-90 ")
 ;;1272
 ;;21,"42291-0614-10 ")
 ;;1448
 ;;21,"42291-0614-18 ")
 ;;1449
 ;;21,"42291-0614-60 ")
 ;;1534
 ;;21,"42291-0614-90 ")
 ;;1535
 ;;21,"42549-0498-30 ")
 ;;159
 ;;21,"42549-0499-30 ")
 ;;86
 ;;21,"42571-0100-01 ")
 ;;44
 ;;21,"42571-0101-01 ")
 ;;102
 ;;21,"42571-0103-01 ")
 ;;144
 ;;21,"43063-0012-01 ")
 ;;1150
 ;;21,"43063-0012-60 ")
 ;;1151
 ;;21,"43063-0012-86 ")
 ;;1152
 ;;21,"43063-0012-90 ")
 ;;1153
 ;;21,"43063-0012-93 ")
 ;;1154
 ;;21,"43063-0012-94 ")
 ;;1155
 ;;21,"43063-0034-30 ")
 ;;103
 ;;21,"43063-0034-90 ")
 ;;104
 ;;21,"43063-0119-90 ")
 ;;854
 ;;21,"43063-0120-90 ")
 ;;875
 ;;21,"43063-0121-30 ")
 ;;38
 ;;21,"43063-0121-90 ")
 ;;39
 ;;21,"43063-0122-30 ")
 ;;121
 ;;21,"43063-0122-90 ")
 ;;122
 ;;21,"43063-0372-30 ")
 ;;1736
 ;;21,"43063-0397-86 ")
 ;;2275
 ;;21,"43063-0428-90 ")
 ;;1680
 ;;21,"43063-0428-93 ")
 ;;1681
 ;;21,"43063-0428-94 ")
 ;;1682
 ;;21,"43063-0429-93 ")
 ;;1238
 ;;21,"43063-0429-94 ")
 ;;1239
 ;;21,"43063-0430-30 ")
 ;;1427
 ;;21,"43063-0430-60 ")
 ;;1428
 ;;21,"43063-0430-90 ")
 ;;1429
 ;;21,"43063-0430-93 ")
 ;;1430
 ;;21,"43063-0430-94 ")
 ;;1431
 ;;21,"43063-0430-98 ")
 ;;1432
 ;;21,"43063-0433-14 ")
 ;;739
 ;;21,"43063-0433-30 ")
 ;;740
 ;;21,"43063-0433-86 ")
 ;;741
 ;;21,"43063-0433-93 ")
 ;;742
 ;;21,"43353-0340-30 ")
 ;;1117
 ;;21,"43353-0340-53 ")
 ;;1118
 ;;21,"43353-0340-60 ")
 ;;1119
 ;;21,"43353-0340-70 ")
 ;;1120
 ;;21,"43353-0340-75 ")
 ;;1121
 ;;21,"43353-0340-80 ")
 ;;1122
 ;;21,"43353-0340-92 ")
 ;;1123
 ;;21,"43353-0340-94 ")
 ;;1124
 ;;21,"43353-0340-96 ")
 ;;1125
 ;;21,"43353-0344-53 ")
 ;;1320
 ;;21,"43353-0344-60 ")
 ;;1321
 ;;21,"43353-0344-80 ")
 ;;1322
 ;;21,"43353-0344-92 ")
 ;;1323