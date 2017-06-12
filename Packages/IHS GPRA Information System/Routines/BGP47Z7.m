BGP47Z7 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 17, 2014;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"65162-0588-10 ")
 ;;1426
 ;;21,"65162-0589-10 ")
 ;;1441
 ;;21,"65243-0028-09 ")
 ;;1296
 ;;21,"65243-0054-09 ")
 ;;1539
 ;;21,"65243-0111-09 ")
 ;;1355
 ;;21,"65243-0260-09 ")
 ;;2173
 ;;21,"65243-0311-09 ")
 ;;1312
 ;;21,"65243-0312-09 ")
 ;;1371
 ;;21,"65243-0312-18 ")
 ;;1372
 ;;21,"65243-0317-09 ")
 ;;1499
 ;;21,"65243-0318-09 ")
 ;;1567
 ;;21,"65597-0110-10 ")
 ;;2557
 ;;21,"65597-0110-30 ")
 ;;2558
 ;;21,"65597-0110-90 ")
 ;;2559
 ;;21,"65597-0111-10 ")
 ;;2563
 ;;21,"65597-0111-30 ")
 ;;2564
 ;;21,"65597-0111-90 ")
 ;;2565
 ;;21,"65597-0112-10 ")
 ;;2560
 ;;21,"65597-0112-30 ")
 ;;2561
 ;;21,"65597-0112-90 ")
 ;;2562
 ;;21,"65597-0113-10 ")
 ;;2568
 ;;21,"65597-0113-30 ")
 ;;2569
 ;;21,"65597-0113-90 ")
 ;;2570
 ;;21,"65597-0114-30 ")
 ;;2596
 ;;21,"65597-0114-90 ")
 ;;2597
 ;;21,"65597-0115-30 ")
 ;;2598
 ;;21,"65597-0115-90 ")
 ;;2599
 ;;21,"65597-0116-30 ")
 ;;2600
 ;;21,"65597-0116-90 ")
 ;;2601
 ;;21,"65597-0117-30 ")
 ;;2602
 ;;21,"65597-0117-90 ")
 ;;2603
 ;;21,"65597-0118-30 ")
 ;;2604
 ;;21,"65597-0118-90 ")
 ;;2605
 ;;21,"65726-0226-15 ")
 ;;1396
 ;;21,"65726-0226-25 ")
 ;;1397
 ;;21,"65726-0227-15 ")
 ;;1405
 ;;21,"65726-0227-25 ")
 ;;1406
 ;;21,"65726-0235-10 ")
 ;;1414
 ;;21,"65726-0235-25 ")
 ;;1415
 ;;21,"65726-0236-10 ")
 ;;1416
 ;;21,"65726-0236-25 ")
 ;;1417
 ;;21,"65862-0101-05 ")
 ;;57
 ;;21,"65862-0101-90 ")
 ;;58
 ;;21,"65862-0101-99 ")
 ;;59
 ;;21,"65862-0102-05 ")
 ;;194
 ;;21,"65862-0102-90 ")
 ;;195
 ;;21,"65862-0102-99 ")
 ;;196
 ;;21,"65862-0103-05 ")
 ;;341
 ;;21,"65862-0103-90 ")
 ;;342
 ;;21,"65862-0103-99 ")
 ;;343
 ;;21,"65862-0582-01 ")
 ;;2285
 ;;21,"65862-0582-05 ")
 ;;2286
 ;;21,"65862-0583-01 ")
 ;;2318
 ;;21,"65862-0583-05 ")
 ;;2319
 ;;21,"65862-0584-01 ")
 ;;2397
 ;;21,"65862-0584-05 ")
 ;;2398
 ;;21,"65862-0585-01 ")
 ;;2428
 ;;21,"65862-0585-05 ")
 ;;2429
 ;;21,"65862-0586-01 ")
 ;;2477
 ;;21,"65862-0586-05 ")
 ;;2478
 ;;21,"65862-0587-01 ")
 ;;2514
 ;;21,"65862-0587-05 ")
 ;;2515
 ;;21,"65862-0673-01 ")
 ;;1271
 ;;21,"65862-0673-99 ")
 ;;1272
 ;;21,"65862-0674-01 ")
 ;;1313
 ;;21,"65862-0674-99 ")
 ;;1314
 ;;21,"65862-0675-01 ")
 ;;1379
 ;;21,"65862-0675-99 ")
 ;;1380
 ;;21,"66105-0528-01 ")
 ;;307
 ;;21,"66105-0528-03 ")
 ;;308
 ;;21,"66105-0528-06 ")
 ;;309
 ;;21,"66105-0528-09 ")
 ;;310
 ;;21,"66105-0528-10 ")
 ;;311
 ;;21,"66105-0529-01 ")
 ;;483
 ;;21,"66105-0529-03 ")
 ;;484
 ;;21,"66105-0529-06 ")
 ;;485
 ;;21,"66105-0529-09 ")
 ;;486
 ;;21,"66105-0529-10 ")
 ;;487
 ;;21,"66116-0278-30 ")
 ;;2221
 ;;21,"66116-0432-30 ")
 ;;736
 ;;21,"66116-0433-30 ")
 ;;760
 ;;21,"66116-0468-30 ")
 ;;2093
 ;;21,"66116-0492-30 ")
 ;;2190
 ;;21,"66267-0212-30 ")
 ;;2162
 ;;21,"66267-0322-30 ")
 ;;1664
 ;;21,"66267-0508-30 ")
 ;;1740
 ;;21,"66267-0684-30 ")
 ;;1795
 ;;21,"66336-0127-30 ")
 ;;1776
 ;;21,"66336-0255-30 ")
 ;;488
 ;;21,"66336-0296-30 ")
 ;;1967
 ;;21,"66336-0296-90 ")
 ;;1968
 ;;21,"66336-0300-30 ")
 ;;2021
 ;;21,"66336-0348-30 ")
 ;;31
 ;;21,"66336-0348-60 ")
 ;;32
 ;;21,"66336-0348-90 ")
 ;;33
 ;;21,"66336-0424-30 ")
 ;;1723
 ;;21,"66336-0669-14 ")
 ;;1087
 ;;21,"66336-0669-30 ")
 ;;1088
 ;;21,"66336-0669-90 ")
 ;;1089
 ;;21,"66336-0683-30 ")
 ;;1649
 ;;21,"66336-0781-30 ")
 ;;2040
 ;;21,"66336-0781-90 ")
 ;;2041
 ;;21,"66336-0809-30 ")
 ;;165
 ;;21,"66336-0809-90 ")
 ;;166
 ;;21,"66336-0894-30 ")
 ;;422
 ;;21,"66336-0894-90 ")
 ;;423
 ;;21,"66336-0959-30 ")
 ;;2120
 ;;21,"66336-0959-90 ")
 ;;2121
 ;;21,"67263-0512-01 ")
 ;;1816
 ;;21,"67286-0813-02 ")
 ;;1452
 ;;21,"67286-0813-03 ")
 ;;1459
 ;;21,"67286-0813-04 ")
 ;;1460
 ;;21,"67286-0814-03 ")
 ;;1453
 ;;21,"67286-0814-04 ")
 ;;1454
 ;;21,"67286-0815-04 ")
 ;;1461
 ;;21,"67544-0071-30 ")
 ;;281
 ;;21,"67544-0086-30 ")
 ;;491
 ;;21,"67544-0093-30 ")
 ;;1325
 ;;21,"67544-0093-53 ")
 ;;1326
 ;;21,"67544-0093-60 ")
 ;;1327
 ;;21,"67544-0093-80 ")
 ;;1328
 ;;21,"67544-0094-30 ")
 ;;1385
 ;;21,"67544-0094-53 ")
 ;;1386
 ;;21,"67544-0094-60 ")
 ;;1387
 ;;21,"67544-0094-70 ")
 ;;1388
 ;;21,"67544-0094-80 ")
 ;;1389
 ;;21,"67544-0110-30 ")
 ;;1465
 ;;21,"67544-0110-60 ")
 ;;1466
 ;;21,"67544-0111-30 ")
 ;;1540
 ;;21,"67544-0111-60 ")
 ;;1541
 ;;21,"67544-0185-60 ")
 ;;1612
 ;;21,"67544-0185-81 ")
 ;;1613
 ;;21,"67544-0185-82 ")
 ;;1614
 ;;21,"67544-0262-30 ")
 ;;800
 ;;21,"67544-0262-60 ")
 ;;801
 ;;21,"67544-0263-30 ")
 ;;828
 ;;21,"67544-0263-60 ")
 ;;829
 ;;21,"67544-0264-30 ")
 ;;855
 ;;21,"67544-0264-60 ")
 ;;856
 ;;21,"67544-0265-30 ")
 ;;883
 ;;21,"67544-0265-60 ")
 ;;884
 ;;21,"67544-0266-30 ")
 ;;914
 ;;21,"67544-0266-60 ")
 ;;915
 ;;21,"67544-0297-60 ")
 ;;2184
 ;;21,"67544-0344-30 ")
 ;;1273
 ;;21,"67544-0344-60 ")
 ;;1274
 ;;21,"67544-0388-30 ")
 ;;1255
 ;;21,"67544-0388-60 ")
 ;;1256
 ;;21,"67544-0389-30 ")
 ;;1292
 ;;21,"67544-0389-53 ")
 ;;1293
 ;;21,"67544-0389-60 ")
 ;;1294
 ;;21,"67544-0389-80 ")
 ;;1295
 ;;21,"67544-0390-30 ")
 ;;1350
 ;;21,"67544-0390-53 ")
 ;;1351
 ;;21,"67544-0390-60 ")
 ;;1352
 ;;21,"67544-0390-70 ")
 ;;1353
 ;;21,"67544-0390-80 ")
 ;;1354
 ;;21,"67544-0809-30 ")
 ;;1487
 ;;21,"67544-0809-60 ")
 ;;1488
 ;;21,"67544-0979-15 ")
 ;;131
 ;;21,"67544-0979-30 ")
 ;;132
 ;;21,"67544-0979-45 ")
 ;;133
 ;;21,"67544-0979-60 ")
 ;;134
 ;;21,"67544-0993-30 ")
 ;;420
 ;;21,"67544-1095-30 ")
 ;;421
 ;;21,"67544-1136-60 ")
 ;;1531
 ;;21,"67544-1156-60 ")
 ;;1610
 ;;21,"67544-1214-30 ")
 ;;335
 ;;21,"67544-1287-30 ")
 ;;192
 ;;21,"67544-1287-60 ")
 ;;193
 ;;21,"67544-1330-30 ")
 ;;336
 ;;21,"67544-1330-45 ")
 ;;337
 ;;21,"67767-0108-01 ")
 ;;1400
 ;;21,"67767-0109-01 ")
 ;;1411
 ;;21,"67767-0151-01 ")
 ;;1585
 ;;21,"67767-0151-05 ")
 ;;1586
 ;;21,"67767-0153-01 ")
 ;;1512
 ;;21,"67767-0153-05 ")
 ;;1513
 ;;21,"67877-0197-05 ")
 ;;60
 ;;21,"67877-0197-10 ")
 ;;61
 ;;21,"67877-0197-90 ")
 ;;62
 ;;21,"67877-0198-05 ")
 ;;189
 ;;21,"67877-0198-10 ")
 ;;190
 ;;21,"67877-0198-90 ")
 ;;191
 ;;21,"67877-0199-05 ")
 ;;338
 ;;21,"67877-0199-10 ")
 ;;339
 ;;21,"67877-0199-90 ")
 ;;340
 ;;21,"68030-6625-01 ")
 ;;300
 ;;21,"68030-6626-01 ")
 ;;512
 ;;21,"68071-0011-30 ")
 ;;2003
 ;;21,"68071-0339-30 ")
 ;;1118
 ;;21,"68071-0522-30 ")
 ;;1053
 ;;21,"68071-0707-30 ")
 ;;367
 ;;21,"68071-0728-30 ")
 ;;227
 ;;21,"68071-1348-00 ")
 ;;228
 ;;21,"68071-1349-00 ")
 ;;366
 ;;21,"68084-0052-01 ")
 ;;961
 ;;21,"68084-0052-11 ")
 ;;962
 ;;21,"68084-0052-30 ")
 ;;963
 ;;21,"68084-0052-90 ")
 ;;964
 ;;21,"68084-0053-01 ")
 ;;1019
 ;;21,"68084-0053-11 ")
 ;;1020
 ;;21,"68084-0053-30 ")
 ;;1021
 ;;21,"68084-0053-90 ")
 ;;1022
 ;;21,"68084-0054-01 ")
 ;;1083
 ;;21,"68084-0054-11 ")
 ;;1084
 ;;21,"68084-0054-30 ")
 ;;1085
 ;;21,"68084-0054-90 ")
 ;;1086
 ;;21,"68084-0055-01 ")
 ;;1152
 ;;21,"68084-0055-11 ")
 ;;1153
 ;;21,"68084-0055-30 ")
 ;;1154
 ;;21,"68084-0055-90 ")
 ;;1155
 ;;21,"68084-0142-01 ")
 ;;1517
 ;;21,"68084-0142-11 ")
 ;;1518
 ;;21,"68084-0142-30 ")
 ;;1519
 ;;21,"68084-0142-90 ")
 ;;1520
 ;;21,"68084-0143-01 ")
 ;;1599
 ;;21,"68084-0143-11 ")
 ;;1600
 ;;21,"68084-0143-30 ")
 ;;1601
 ;;21,"68084-0143-90 ")
 ;;1602
 ;;21,"68084-0237-01 ")
 ;;21
 ;;21,"68084-0237-11 ")
 ;;22
 ;;21,"68084-0238-01 ")
 ;;167
 ;;21,"68084-0238-11 ")
 ;;168
 ;;21,"68084-0239-01 ")
 ;;468
 ;;21,"68084-0239-11 ")
 ;;469
 ;;21,"68084-0349-11 ")
 ;;2308
 ;;21,"68084-0349-21 ")
 ;;2309
 ;;21,"68084-0350-01 ")
 ;;2366
 ;;21,"68084-0350-11 ")
 ;;2367
 ;;21,"68084-0351-11 ")
 ;;2458
 ;;21,"68084-0351-21 ")
 ;;2459
 ;;21,"68084-0498-01 ")
 ;;63
 ;;21,"68084-0498-11 ")
 ;;64
 ;;21,"68084-0505-01 ")
 ;;187
 ;;21,"68084-0505-11 ")
 ;;188
 ;;21,"68084-0506-01 ")
 ;;330
 ;;21,"68084-0506-11 ")
 ;;331
 ;;21,"68084-0597-01 ")
 ;;1686
 ;;21,"68084-0597-11 ")
 ;;1687
 ;;21,"68084-0598-01 ")
 ;;1738
 ;;21,"68084-0598-11 ")
 ;;1739
 ;;21,"68084-0603-11 ")
 ;;1796
 ;;21,"68084-0603-21 ")
 ;;1797
 ;;21,"68115-0114-60 ")
 ;;636
 ;;21,"68115-0115-30 ")
 ;;725
 ;;21,"68115-0256-30 ")
 ;;1651
 ;;21,"68115-0257-30 ")
 ;;1722
 ;;21,"68115-0263-15 ")
 ;;500
 ;;21,"68115-0263-28 ")
 ;;501
 ;;21,"68115-0263-30 ")
 ;;502
 ;;21,"68115-0263-60 ")
 ;;503
 ;;21,"68115-0263-90 ")
 ;;504
 ;;21,"68115-0283-30 ")
 ;;1394
 ;;21,"68115-0284-30 ")
 ;;1336
 ;;21,"68115-0284-60 ")
 ;;1337
 ;;21,"68115-0347-30 ")
 ;;1938
 ;;21,"68115-0347-60 ")
 ;;1939
 ;;21,"68115-0348-00 ")
 ;;2044
 ;;21,"68115-0348-30 ")
 ;;2045
 ;;21,"68115-0349-30 ")
 ;;2176
 ;;21,"68115-0349-60 ")
 ;;2177
 ;;21,"68115-0350-90 ")
 ;;1877
 ;;21,"68115-0368-00 ")
 ;;2101
 ;;21,"68115-0368-30 ")
 ;;2102
 ;;21,"68115-0441-30 ")
 ;;1934
 ;;21,"68115-0606-00 ")
 ;;558
 ;;21,"68115-0606-15 ")
 ;;559
 ;;21,"68115-0606-30 ")
 ;;560
 ;;21,"68115-0612-90 ")
 ;;770
 ;;21,"68115-0636-00 ")
 ;;1824
 ;;21,"68115-0650-00 ")
 ;;2491
 ;;21,"68115-0673-00 ")
 ;;2407
 ;;21,"68115-0673-30 ")
 ;;2408
 ;;21,"68115-0778-00 ")
 ;;2345
 ;;21,"68115-0790-00 ")
 ;;1280
 ;;21,"68115-0890-15 ")
 ;;303
 ;;21,"68115-0890-30 ")
 ;;304
 ;;21,"68115-0890-60 ")
 ;;305
 ;;21,"68115-0890-90 ")
 ;;306
 ;;21,"68180-0750-09 ")
 ;;8
 ;;21,"68180-0751-03 ")
 ;;145
 ;;21,"68180-0751-09 ")
 ;;146
 ;;21,"68180-0752-03 ")
 ;;460
 ;;21,"68180-0752-09 ")
 ;;461
 ;;21,"68180-0755-01 ")
 ;;2287
 ;;21,"68180-0756-01 ")
 ;;2310
 ;;21,"68180-0756-02 ")
 ;;2311
 ;;21,"68180-0757-01 ")
 ;;2369
 ;;21,"68180-0757-02 ")
 ;;2370
 ;;21,"68180-0758-01 ")
 ;;2449
 ;;21,"68180-0758-02 ")
 ;;2450
 ;;21,"68180-0759-01 ")
 ;;2423
 ;;21,"68180-0760-01 ")
 ;;2506
 ;;21,"68258-1019-01 ")
 ;;1688
 ;;21,"68258-1020-01 ")
 ;;1737
 ;;21,"68258-1021-01 ")
 ;;1798
 ;;21,"68258-6014-03 ")
 ;;623
 ;;21,"68258-6014-06 ")
 ;;624
 ;;21,"68258-6024-03 ")
 ;;975
 ;;21,"68258-6024-09 ")
 ;;976
 ;;21,"68258-6025-03 ")
 ;;2479
 ;;21,"68258-6025-06 ")
 ;;2480
 ;;21,"68258-6025-09 ")
 ;;2481
 ;;21,"68258-6046-03 ")
 ;;1029
 ;;21,"68258-6046-09 ")
 ;;1030
 ;;21,"68258-6051-09 ")
 ;;2001
 ;;21,"68258-6060-03 ")
 ;;2437
 ;;21,"68258-6069-03 ")
 ;;2339
 ;;21,"68258-6069-06 ")
 ;;2340
 ;;21,"68258-6069-09 ")
 ;;2341
 ;;21,"68258-6070-03 ")
 ;;2392
 ;;21,"68258-6070-06 ")
 ;;2393
 ;;21,"68258-6070-09 ")
 ;;2394
 ;;21,"68258-6074-03 ")
 ;;1373
 ;;21,"68258-6083-03 ")
 ;;656
 ;;21,"68258-6978-03 ")
 ;;2566
 ;;21,"68258-9113-01 ")
 ;;107
 ;;21,"68382-0121-01 ")
 ;;96
 ;;21,"68382-0121-05 ")
 ;;97
 ;;21,"68382-0121-16 ")
 ;;98
 ;;21,"68382-0122-01 ")
 ;;278
 ;;21,"68382-0122-05 ")
 ;;279
 ;;21,"68382-0122-16 ")
 ;;280
 ;;21,"68382-0123-01 ")
 ;;414
 ;;21,"68382-0123-05 ")
 ;;415
 ;;21,"68382-0123-16 ")
 ;;416
 ;;21,"68462-0210-10 ")
 ;;43
 ;;21,"68462-0211-10 ")
 ;;207
 ;;21,"68462-0212-10 ")
 ;;349
 ;;21,"68462-0233-01 ")
 ;;1270
 ;;21,"68462-0234-01 ")
 ;;1315
 ;;21,"68462-0235-01 ")
 ;;1378
 ;;21,"68462-0260-01 ")
 ;;2155
 ;;21,"68462-0260-05 ")
 ;;2156
 ;;21,"68462-0292-01 ")
 ;;1981
 ;;21,"68462-0293-01 ")
 ;;2056
 ;;21,"68462-0293-05 ")
 ;;2057
 ;;21,"68462-0294-01 ")
 ;;2531
 ;;21,"68462-0295-01 ")
 ;;2538
 ;;21,"68462-0296-01 ")
 ;;2545
 ;;21,"68462-0329-01 ")
 ;;2555
 ;;21,"68645-0444-70 ")
 ;;229
 ;;21,"68645-0445-70 ")
 ;;365
 ;;21,"68682-0521-01 ")
 ;;1182
 ;;21,"76282-0237-05 ")
 ;;12
 ;;21,"76282-0237-10 ")
 ;;13
 ;;21,"76282-0237-90 ")
 ;;14
 ;;21,"76282-0238-05 ")
 ;;126
 ;;21,"76282-0238-10 ")
 ;;127
 ;;21,"76282-0238-90 ")
 ;;128
 ;;21,"76282-0239-05 ")
 ;;424
 ;;21,"76282-0239-10 ")
 ;;425
 ;;21,"76282-0239-90 ")
 ;;426
 ;;9002226,1197,.01)
 ;;BGP PQA CCB NDC
 ;;9002226,1197,.02)
 ;;@
 ;;9002226,1197,.04)
 ;;n
 ;;9002226,1197,.06)
 ;;@
 ;;9002226,1197,.08)
 ;;@
 ;;9002226,1197,.09)
 ;;3140317
 ;;9002226,1197,.11)
 ;;@
 ;;9002226,1197,.12)
 ;;@
 ;;9002226,1197,.13)
 ;;1
 ;;9002226,1197,.14)
 ;;@
 ;;9002226,1197,.15)
 ;;@
 ;;9002226,1197,.16)
 ;;@
 ;;9002226,1197,.17)
 ;;@
 ;;9002226,1197,3101)
 ;;@
 ;;9002226.02101,"1197,00004-0180-22 ",.01)
 ;;00004-0180-22
 ;;9002226.02101,"1197,00004-0180-22 ",.02)
 ;;00004-0180-22
 ;;9002226.02101,"1197,00004-0180-91 ",.01)
 ;;00004-0180-91
 ;;9002226.02101,"1197,00004-0180-91 ",.02)
 ;;00004-0180-91
 ;;9002226.02101,"1197,00004-0181-22 ",.01)
 ;;00004-0181-22
 ;;9002226.02101,"1197,00004-0181-22 ",.02)
 ;;00004-0181-22
 ;;9002226.02101,"1197,00004-0181-91 ",.01)
 ;;00004-0181-91
 ;;9002226.02101,"1197,00004-0181-91 ",.02)
 ;;00004-0181-91
 ;;9002226.02101,"1197,00004-0182-22 ",.01)
 ;;00004-0182-22
 ;;9002226.02101,"1197,00004-0182-22 ",.02)
 ;;00004-0182-22
 ;;9002226.02101,"1197,00004-0183-01 ",.01)
 ;;00004-0183-01
 ;;9002226.02101,"1197,00004-0183-01 ",.02)
 ;;00004-0183-01
 ;;9002226.02101,"1197,00004-0184-01 ",.01)
 ;;00004-0184-01
 ;;9002226.02101,"1197,00004-0184-01 ",.02)
 ;;00004-0184-01