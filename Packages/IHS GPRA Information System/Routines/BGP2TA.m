BGP2TA ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 12, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;;BGP HEDIS ACEI NDC
 ;
 ; This routine loads Taxonomy BGP HEDIS ACEI NDC
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
 ;;21,"00003-0338-50 ")
 ;;325
 ;;21,"00003-0450-51 ")
 ;;370
 ;;21,"00003-0450-54 ")
 ;;371
 ;;21,"00003-0450-75 ")
 ;;372
 ;;21,"00003-0452-50 ")
 ;;423
 ;;21,"00003-0452-51 ")
 ;;424
 ;;21,"00003-0452-75 ")
 ;;425
 ;;21,"00003-0482-50 ")
 ;;528
 ;;21,"00003-0482-51 ")
 ;;529
 ;;21,"00003-0482-75 ")
 ;;530
 ;;21,"00003-0485-50 ")
 ;;350
 ;;21,"00006-0015-28 ")
 ;;1656
 ;;21,"00006-0015-31 ")
 ;;1657
 ;;21,"00006-0015-58 ")
 ;;1658
 ;;21,"00006-0019-54 ")
 ;;2085
 ;;21,"00006-0019-82 ")
 ;;2086
 ;;21,"00006-0106-54 ")
 ;;1480
 ;;21,"00006-0106-82 ")
 ;;1481
 ;;21,"00006-0106-86 ")
 ;;1482
 ;;21,"00006-0140-58 ")
 ;;1438
 ;;21,"00006-0142-31 ")
 ;;1441
 ;;21,"00006-0142-58 ")
 ;;1442
 ;;21,"00006-0145-31 ")
 ;;1435
 ;;21,"00006-0145-58 ")
 ;;1436
 ;;21,"00006-0207-54 ")
 ;;1720
 ;;21,"00006-0207-82 ")
 ;;1721
 ;;21,"00006-0207-86 ")
 ;;1722
 ;;21,"00006-0237-58 ")
 ;;1953
 ;;21,"00032-1101-01 ")
 ;;2255
 ;;21,"00032-1102-01 ")
 ;;2259
 ;;21,"00032-1103-01 ")
 ;;2265
 ;;21,"00038-0134-10 ")
 ;;1954
 ;;21,"00038-0141-10 ")
 ;;1473
 ;;21,"00038-0142-10 ")
 ;;1478
 ;;21,"00038-0145-10 ")
 ;;2592
 ;;21,"00054-0106-25 ")
 ;;2397
 ;;21,"00054-0107-20 ")
 ;;2462
 ;;21,"00054-0107-25 ")
 ;;2463
 ;;21,"00054-0107-29 ")
 ;;2464
 ;;21,"00054-0108-20 ")
 ;;2505
 ;;21,"00054-0108-25 ")
 ;;2506
 ;;21,"00054-0108-29 ")
 ;;2507
 ;;21,"00054-0109-25 ")
 ;;2418
 ;;21,"00054-0109-29 ")
 ;;2419
 ;;21,"00054-0110-25 ")
 ;;2256
 ;;21,"00054-0111-25 ")
 ;;2260
 ;;21,"00054-0112-25 ")
 ;;2266
 ;;21,"00071-0220-23 ")
 ;;2
 ;;21,"00071-0222-23 ")
 ;;1
 ;;21,"00071-0223-23 ")
 ;;3
 ;;21,"00071-0527-23 ")
 ;;2368
 ;;21,"00071-0527-40 ")
 ;;2369
 ;;21,"00071-0530-23 ")
 ;;2271
 ;;21,"00071-0530-40 ")
 ;;2272
 ;;21,"00071-0532-23 ")
 ;;2305
 ;;21,"00071-0532-40 ")
 ;;2306
 ;;21,"00071-0535-23 ")
 ;;2337
 ;;21,"00074-2278-11 ")
 ;;2550
 ;;21,"00074-2278-13 ")
 ;;2551
 ;;21,"00074-2279-11 ")
 ;;2562
 ;;21,"00074-2279-13 ")
 ;;2563
 ;;21,"00074-2280-11 ")
 ;;2574
 ;;21,"00074-2280-13 ")
 ;;2575
 ;;21,"00074-3287-13 ")
 ;;1451
 ;;21,"00074-3288-13 ")
 ;;1450
 ;;21,"00074-3289-13 ")
 ;;1453
 ;;21,"00074-3290-13 ")
 ;;1454
 ;;21,"00078-0364-05 ")
 ;;1387
 ;;21,"00078-0379-05 ")
 ;;1396
 ;;21,"00078-0384-05 ")
 ;;1430
 ;;21,"00078-0404-05 ")
 ;;1398
 ;;21,"00078-0405-05 ")
 ;;1403
 ;;21,"00078-0406-05 ")
 ;;1414
 ;;21,"00078-0447-05 ")
 ;;287
 ;;21,"00078-0448-05 ")
 ;;111
 ;;21,"00078-0449-05 ")
 ;;172
 ;;21,"00078-0450-05 ")
 ;;234
 ;;21,"00078-0451-05 ")
 ;;1385
 ;;21,"00078-0452-05 ")
 ;;1375
 ;;21,"00078-0453-05 ")
 ;;1377
 ;;21,"00078-0454-05 ")
 ;;1381
 ;;21,"00083-0057-30 ")
 ;;1386
 ;;21,"00083-0059-30 ")
 ;;288
 ;;21,"00083-0059-32 ")
 ;;289
 ;;21,"00083-0059-90 ")
 ;;290
 ;;21,"00083-0063-30 ")
 ;;112
 ;;21,"00083-0063-32 ")
 ;;113
 ;;21,"00083-0063-90 ")
 ;;114
 ;;21,"00083-0072-30 ")
 ;;1376
 ;;21,"00083-0074-30 ")
 ;;1378
 ;;21,"00083-0075-30 ")
 ;;1382
 ;;21,"00083-0079-30 ")
 ;;173
 ;;21,"00083-0079-32 ")
 ;;174
 ;;21,"00083-0079-90 ")
 ;;175
 ;;21,"00083-0094-30 ")
 ;;235
 ;;21,"00083-0094-32 ")
 ;;236
 ;;21,"00083-0094-90 ")
 ;;237
 ;;21,"00083-2255-30 ")
 ;;1399
 ;;21,"00083-2260-30 ")
 ;;1404
 ;;21,"00083-2265-30 ")
 ;;1415
 ;;21,"00087-0158-46 ")
 ;;1031
 ;;21,"00087-0158-85 ")
 ;;1032
 ;;21,"00087-0609-42 ")
 ;;1073
 ;;21,"00087-0609-85 ")
 ;;1074
 ;;21,"00087-1202-13 ")
 ;;1110
 ;;21,"00087-1492-01 ")
 ;;1433
 ;;21,"00087-1493-01 ")
 ;;1434
 ;;21,"00091-3707-01 ")
 ;;2244
 ;;21,"00091-3707-09 ")
 ;;2245
 ;;21,"00091-3712-01 ")
 ;;1461
 ;;21,"00091-3715-01 ")
 ;;2231
 ;;21,"00091-3715-09 ")
 ;;2232
 ;;21,"00091-3720-01 ")
 ;;1459
 ;;21,"00091-3725-01 ")
 ;;1462
 ;;21,"00093-0017-01 ")
 ;;2246
 ;;21,"00093-0026-01 ")
 ;;714
 ;;21,"00093-0027-01 ")
 ;;887
 ;;21,"00093-0027-50 ")
 ;;888
 ;;21,"00093-0028-01 ")
 ;;594
 ;;21,"00093-0028-10 ")
 ;;595
 ;;21,"00093-0029-01 ")
 ;;779
 ;;21,"00093-0029-10 ")
 ;;780
 ;;21,"00093-0029-50 ")
 ;;781
 ;;21,"00093-0176-01 ")
 ;;331
 ;;21,"00093-0177-01 ")
 ;;335
 ;;21,"00093-0181-01 ")
 ;;340
 ;;21,"00093-0182-01 ")
 ;;344
 ;;21,"00093-1035-01 ")
 ;;1181
 ;;21,"00093-1036-01 ")
 ;;1233
 ;;21,"00093-1037-01 ")
 ;;1296
 ;;21,"00093-1044-01 ")
 ;;1149
 ;;21,"00093-1045-05 ")
 ;;2307
 ;;21,"00093-1045-98 ")
 ;;2308
 ;;21,"00093-1050-05 ")
 ;;2370
 ;;21,"00093-1050-98 ")
 ;;2371
 ;;21,"00093-1051-05 ")
 ;;2273
 ;;21,"00093-1051-98 ")
 ;;2274
 ;;21,"00093-1052-01 ")
 ;;1013
 ;;21,"00093-1052-10 ")
 ;;1014
 ;;21,"00093-1053-05 ")
 ;;2338
 ;;21,"00093-1053-98 ")
 ;;2339
 ;;21,"00093-5124-01 ")
 ;;291
 ;;21,"00093-5125-01 ")
 ;;115
 ;;21,"00093-5125-05 ")
 ;;116
 ;;21,"00093-5126-01 ")
 ;;176
 ;;21,"00093-5126-05 ")
 ;;177
 ;;21,"00093-5127-01 ")
 ;;238
 ;;21,"00093-5150-01 ")
 ;;2233
 ;;21,"00093-5213-01 ")
 ;;1353
 ;;21,"00093-5214-01 ")
 ;;1348
 ;;21,"00093-5215-01 ")
 ;;1358
 ;;21,"00093-5457-98 ")
 ;;2275
 ;;21,"00093-7222-10 ")
 ;;1033
 ;;21,"00093-7222-98 ")
 ;;1034
 ;;21,"00093-7223-10 ")
 ;;1075
 ;;21,"00093-7223-98 ")
 ;;1076
 ;;21,"00093-7224-10 ")
 ;;1111
 ;;21,"00093-7224-98 ")
 ;;1112
 ;;21,"00093-7325-01 ")
 ;;2552
 ;;21,"00093-7326-01 ")
 ;;2564
 ;;21,"00093-7327-01 ")
 ;;2576
 ;;21,"00093-7370-01 ")
 ;;24
 ;;21,"00093-7371-01 ")
 ;;31
 ;;21,"00093-7371-10 ")
 ;;32
 ;;21,"00093-7372-01 ")
 ;;46
 ;;21,"00093-7372-10 ")
 ;;47
 ;;21,"00093-7373-01 ")
 ;;4
 ;;21,"00093-7373-10 ")
 ;;5
 ;;21,"00093-7436-01 ")
 ;;2465
 ;;21,"00093-7437-01 ")
 ;;2508
 ;;21,"00093-7438-01 ")
 ;;2420
 ;;21,"00093-7670-01 ")
 ;;62
 ;;21,"00093-7671-01 ")
 ;;19
 ;;21,"00093-8132-01 ")
 ;;373
 ;;21,"00093-8133-01 ")
 ;;426
 ;;21,"00093-8133-10 ")
 ;;427
 ;;21,"00093-8134-01 ")
 ;;531
 ;;21,"00093-8134-10 ")
 ;;532
 ;;21,"00093-8135-01 ")
 ;;351
 ;;21,"00143-1171-01 ")
 ;;374
 ;;21,"00143-1171-10 ")
 ;;375
 ;;21,"00143-1172-01 ")
 ;;428
 ;;21,"00143-1172-10 ")
 ;;429
 ;;21,"00143-1173-01 ")
 ;;533
 ;;21,"00143-1173-10 ")
 ;;534
 ;;21,"00143-1174-01 ")
 ;;352
 ;;21,"00143-1262-01 ")
 ;;1182
 ;;21,"00143-1262-10 ")
 ;;1183
 ;;21,"00143-1263-01 ")
 ;;1234
 ;;21,"00143-1263-10 ")
 ;;1235
 ;;21,"00143-1264-01 ")
 ;;1297
 ;;21,"00143-1264-10 ")
 ;;1298
 ;;21,"00143-1265-01 ")
 ;;1659
 ;;21,"00143-1265-09 ")
 ;;1660
 ;;21,"00143-1265-10 ")
 ;;1661
 ;;21,"00143-1266-01 ")
 ;;2087
 ;;21,"00143-1266-09 ")
 ;;2088
 ;;21,"00143-1266-10 ")
 ;;2089
 ;;21,"00143-1266-30 ")
 ;;2090
 ;;21,"00143-1266-45 ")
 ;;2091
 ;;21,"00143-1267-01 ")
 ;;1483
 ;;21,"00143-1267-09 ")
 ;;1484
 ;;21,"00143-1267-10 ")
 ;;1485
 ;;21,"00143-1267-18 ")
 ;;1486
 ;;21,"00143-1267-30 ")
 ;;1487
 ;;21,"00143-1267-45 ")
 ;;1488
 ;;21,"00143-1268-01 ")
 ;;1723
 ;;21,"00143-1268-09 ")
 ;;1724
 ;;21,"00143-1268-10 ")
 ;;1725
 ;;21,"00143-1268-18 ")
 ;;1726
 ;;21,"00143-1268-30 ")
 ;;1727
 ;;21,"00143-1268-45 ")
 ;;1728
 ;;21,"00143-1270-01 ")
 ;;1955
 ;;21,"00143-1270-09 ")
 ;;1956
 ;;21,"00143-1270-10 ")
 ;;1957
 ;;21,"00143-1270-18 ")
 ;;1958
 ;;21,"00143-1270-30 ")
 ;;1959
 ;;21,"00143-1270-45 ")
 ;;1960
 ;;21,"00143-9125-01 ")
 ;;2553
 ;;21,"00143-9126-01 ")
 ;;2565
 ;;21,"00143-9127-01 ")
 ;;2577
 ;;21,"00172-3757-00 ")
 ;;1662
 ;;21,"00172-3757-10 ")
 ;;1663
 ;;21,"00172-3757-60 ")
 ;;1664
 ;;21,"00172-3757-70 ")
 ;;1665
 ;;21,"00172-3758-00 ")
 ;;2092
 ;;21,"00172-3758-10 ")
 ;;2093
 ;;21,"00172-3758-60 ")
 ;;2094
 ;;21,"00172-3758-70 ")
 ;;2095
 ;;21,"00172-3758-80 ")
 ;;2096
 ;;21,"00172-3759-00 ")
 ;;1489
 ;;21,"00172-3759-10 ")
 ;;1490
 ;;21,"00172-3759-60 ")
 ;;1491
 ;;21,"00172-3759-70 ")
 ;;1492
 ;;21,"00172-3759-80 ")
 ;;1493
 ;;21,"00172-3760-00 ")
 ;;1729
 ;;21,"00172-3760-10 ")
 ;;1730
 ;;21,"00172-3760-60 ")
 ;;1731
 ;;21,"00172-3760-70 ")
 ;;1732
 ;;21,"00172-3760-80 ")
 ;;1733
 ;;21,"00172-3761-00 ")
 ;;1961
 ;;21,"00172-3761-10 ")
 ;;1962
 ;;21,"00172-3761-60 ")
 ;;1963
 ;;21,"00172-3761-70 ")
 ;;1964
 ;;21,"00172-3761-80 ")
 ;;1965
 ;;21,"00172-3762-00 ")
 ;;1904
 ;;21,"00172-3762-10 ")
 ;;1905
 ;;21,"00172-3762-60 ")
 ;;1906
 ;;21,"00172-3762-70 ")
 ;;1907
 ;;21,"00172-4195-10 ")
 ;;715
 ;;21,"00172-4195-60 ")
 ;;716
 ;;21,"00172-4195-80 ")
 ;;717
 ;;21,"00172-4196-10 ")
 ;;889
 ;;21,"00172-4196-60 ")
 ;;890
 ;;21,"00172-4196-80 ")
 ;;891
 ;;21,"00172-4196-85 ")
 ;;892
 ;;21,"00172-4197-10 ")
 ;;596
 ;;21,"00172-4197-60 ")
 ;;597
 ;;21,"00172-4197-80 ")
 ;;598
 ;;21,"00172-4198-00 ")
 ;;782
 ;;21,"00172-4198-10 ")
 ;;783
 ;;21,"00172-4198-60 ")
 ;;784
 ;;21,"00172-4198-80 ")
 ;;785
 ;;21,"00172-5032-00 ")
 ;;1299
 ;;21,"00172-5032-10 ")
 ;;1300
 ;;21,"00172-5032-60 ")
 ;;1301
 ;;21,"00172-5032-70 ")
 ;;1302
 ;;21,"00172-5033-00 ")
 ;;1184
 ;;21,"00172-5033-10 ")
 ;;1185
 ;;21,"00172-5033-60 ")
 ;;1186
 ;;21,"00172-5033-70 ")
 ;;1187
 ;;21,"00172-5034-00 ")
 ;;1236
 ;;21,"00172-5034-10 ")
 ;;1237
 ;;21,"00172-5034-60 ")
 ;;1238
 ;;21,"00172-5034-70 ")
 ;;1239
 ;;21,"00172-5350-60 ")
 ;;292
 ;;21,"00172-5351-10 ")
 ;;117
 ;;21,"00172-5351-60 ")
 ;;118
 ;;21,"00172-5352-60 ")
 ;;178
 ;;21,"00172-5353-60 ")
 ;;239
 ;;21,"00172-5360-60 ")
 ;;320
 ;;21,"00172-5361-60 ")
 ;;67
 ;;21,"00172-5361-70 ")
 ;;68
 ;;21,"00172-5362-60 ")
 ;;79
 ;;21,"00172-5362-70 ")
 ;;80
 ;;21,"00172-5363-60 ")
 ;;97
 ;;21,"00172-5363-70 ")
 ;;98
 ;;21,"00182-2622-01 ")
 ;;376
 ;;21,"00182-2622-05 ")
 ;;377
 ;;21,"00182-2622-10 ")
 ;;378
 ;;21,"00182-2623-01 ")
 ;;430
 ;;21,"00182-2623-05 ")
 ;;431
 ;;21,"00182-2623-10 ")
 ;;432
 ;;21,"00182-2623-89 ")
 ;;433
 ;;21,"00182-2624-01 ")
 ;;535
 ;;21,"00182-2624-05 ")
 ;;536
 ;;21,"00182-2624-10 ")
 ;;537
 ;;21,"00182-2625-01 ")
 ;;353
 ;;21,"00185-0025-01 ")
 ;;1666
 ;;21,"00185-0025-10 ")
 ;;1667
 ;;21,"00185-0041-09 ")
 ;;1035
 ;;21,"00185-0041-10 ")
 ;;1036
 ;;21,"00185-0042-09 ")
 ;;1077
 ;;21,"00185-0042-10 ")
 ;;1078
 ;;21,"00185-0047-09 ")
 ;;1113
 ;;21,"00185-0047-10 ")
 ;;1114
 ;;21,"00185-0048-01 ")
 ;;240
 ;;21,"00185-0048-05 ")
 ;;241
 ;;21,"00185-0053-01 ")
 ;;119
 ;;21,"00185-0053-05 ")
 ;;120
 ;;21,"00185-0101-01 ")
 ;;1494
 ;;21,"00185-0101-10 ")
 ;;1495
 ;;21,"00185-0101-33 ")
 ;;1496
 ;;21,"00185-0102-01 ")
 ;;1734
 ;;21,"00185-0102-10 ")
 ;;1735
 ;;21,"00185-0102-33 ")
 ;;1736
 ;;21,"00185-0103-01 ")
 ;;1908
 ;;21,"00185-0103-10 ")
 ;;1909
 ;;21,"00185-0104-01 ")
 ;;1966
 ;;21,"00185-0104-10 ")
 ;;1967
 ;;21,"00185-0114-01 ")
 ;;718
 ;;21,"00185-0114-10 ")
 ;;719
 ;;21,"00185-0114-50 ")
 ;;720
 ;;21,"00185-0124-01 ")
 ;;321
 ;;21,"00185-0127-01 ")
 ;;893
 ;;21,"00185-0127-10 ")
 ;;894
 ;;21,"00185-0127-50 ")
 ;;895
 ;;21,"00185-0147-01 ")
 ;;599
 ;;21,"00185-0147-10 ")
 ;;600
 ;;21,"00185-0147-50 ")
 ;;601
 ;;21,"00185-0151-01 ")
 ;;1150
 ;;21,"00185-0152-01 ")
 ;;1240
 ;;21,"00185-0152-10 ")
 ;;1241
 ;;21,"00185-0172-01 ")
 ;;1015
 ;;21,"00185-0172-10 ")
 ;;1016
 ;;21,"00185-0173-01 ")
 ;;1303
 ;;21,"00185-0173-10 ")
 ;;1304
 ;;21,"00185-0204-01 ")
 ;;69
 ;;21,"00185-0211-01 ")
 ;;81
 ;;21,"00185-0214-01 ")
 ;;786
 ;;21,"00185-0214-10 ")
 ;;787
 ;;21,"00185-0214-50 ")
 ;;788
 ;;21,"00185-0277-01 ")
 ;;99
 ;;21,"00185-0341-01 ")
 ;;1166
 ;;21,"00185-0342-01 ")
 ;;1173
 ;;21,"00185-0505-01 ")
 ;;293
 ;;21,"00185-0505-05 ")
 ;;294
 ;;21,"00185-0820-01 ")
 ;;179
 ;;21,"00185-0820-05 ")
 ;;180
 ;;21,"00185-5400-01 ")
 ;;2097
 ;;21,"00185-5400-10 ")
 ;;2098
 ;;21,"00185-7100-01 ")
 ;;1188
 ;;21,"00185-7100-10 ")
 ;;1189
 ;;21,"00228-2658-11 ")
 ;;721
 ;;21,"00228-2658-96 ")
 ;;722
 ;;21,"00228-2659-11 ")
 ;;896
 ;;21,"00228-2659-96 ")
 ;;897
 ;;21,"00228-2660-11 ")
 ;;602
 ;;21,"00228-2660-96 ")
 ;;603
 ;;21,"00228-2661-11 ")
 ;;789
 ;;21,"00228-2661-96 ")
 ;;790
 ;;21,"00228-2695-11 ")
 ;;2466
 ;;21,"00228-2695-50 ")
 ;;2467
 ;;21,"00228-2696-11 ")
 ;;2509
 ;;21,"00228-2696-50 ")
 ;;2510
 ;;21,"00228-2697-11 ")
 ;;2421
 ;;21,"00228-2697-50 ")
 ;;2422
 ;;21,"00228-2706-03 ")
 ;;1190
 ;;21,"00228-2706-11 ")
 ;;1191
 ;;21,"00228-2707-03 ")
 ;;1242
 ;;21,"00228-2707-11 ")
 ;;1243
 ;;21,"00228-2708-03 ")
 ;;1305
 ;;21,"00228-2708-11 ")
 ;;1306
 ;;21,"00247-0578-02 ")
 ;;898
 ;;21,"00247-0578-03 ")
 ;;899
 ;;21,"00247-0578-30 ")
 ;;900
 ;;21,"00247-0578-45 ")
 ;;901
 ;;21,"00247-0579-03 ")
 ;;604
 ;;21,"00247-0579-30 ")
 ;;605
 ;;21,"00247-1023-00 ")
 ;;1737
 ;;21,"00247-1023-30 ")
 ;;1738
 ;;21,"00247-1023-59 ")
 ;;1739
 ;;21,"00247-1023-60 ")
 ;;1740
 ;;21,"00247-1023-77 ")
 ;;1741
 ;;21,"00247-1023-79 ")
 ;;1742
 ;
OTHER ; OTHER ROUTINES
 D ^BGP2TA10
 D ^BGP2TA11
 D ^BGP2TA12
 D ^BGP2TA13
 D ^BGP2TA14
 D ^BGP2TA15
 D ^BGP2TA16
 D ^BGP2TA17
 D ^BGP2TA18
 D ^BGP2TA19
 D ^BGP2TA2
 D ^BGP2TA20
 D ^BGP2TA21
 D ^BGP2TA22
 D ^BGP2TA23
 D ^BGP2TA24
 D ^BGP2TA25
 D ^BGP2TA26
 D ^BGP2TA27
 D ^BGP2TA28
 D ^BGP2TA29
 D ^BGP2TA3
 D ^BGP2TA30
 D ^BGP2TA31
 D ^BGP2TA4
 D ^BGP2TA5
 D ^BGP2TA6
 D ^BGP2TA7
 D ^BGP2TA8
 D ^BGP2TA9
 Q