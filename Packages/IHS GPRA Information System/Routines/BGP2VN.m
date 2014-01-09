BGP2VN ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 08, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;;BGP HEDIS ANTIHISTAMINE NDC
 ;
 ; This routine loads Taxonomy BGP HEDIS ANTIHISTAMINE NDC
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
 ;;21,"00006-0062-68 ")
 ;;211
 ;;21,"00031-2247-13 ")
 ;;911
 ;;21,"00031-8698-12 ")
 ;;912
 ;;21,"00031-8698-13 ")
 ;;913
 ;;21,"00031-8701-12 ")
 ;;914
 ;;21,"00031-8715-12 ")
 ;;915
 ;;21,"00031-8735-12 ")
 ;;3
 ;;21,"00031-8735-18 ")
 ;;4
 ;;21,"00043-0460-08 ")
 ;;12
 ;;21,"00043-6204-04 ")
 ;;919
 ;;21,"00043-6204-08 ")
 ;;920
 ;;21,"00043-6256-06 ")
 ;;17
 ;;21,"00043-6265-08 ")
 ;;13
 ;;21,"00045-0180-18 ")
 ;;322
 ;;21,"00045-0182-10 ")
 ;;36
 ;;21,"00045-0211-48 ")
 ;;31
 ;;21,"00045-0244-20 ")
 ;;37
 ;;21,"00045-0244-40 ")
 ;;38
 ;;21,"00045-0244-80 ")
 ;;39
 ;;21,"00045-0482-20 ")
 ;;40
 ;;21,"00045-0482-35 ")
 ;;41
 ;;21,"00067-0246-17 ")
 ;;894
 ;;21,"00067-0297-24 ")
 ;;925
 ;;21,"00067-2053-08 ")
 ;;102
 ;;21,"00067-2053-24 ")
 ;;103
 ;;21,"00067-2053-50 ")
 ;;104
 ;;21,"00067-2053-91 ")
 ;;105
 ;;21,"00067-2055-24 ")
 ;;106
 ;;21,"00067-2055-50 ")
 ;;107
 ;;21,"00067-2055-91 ")
 ;;108
 ;;21,"00067-6147-12 ")
 ;;641
 ;;21,"00067-6149-14 ")
 ;;318
 ;;21,"00067-6149-16 ")
 ;;319
 ;;21,"00067-6180-20 ")
 ;;895
 ;;21,"00067-6344-04 ")
 ;;916
 ;;21,"00067-6344-08 ")
 ;;917
 ;;21,"00067-6354-14 ")
 ;;320
 ;;21,"00067-6356-14 ")
 ;;896
 ;;21,"00067-6383-14 ")
 ;;321
 ;;21,"00067-6405-20 ")
 ;;109
 ;;21,"00067-6405-80 ")
 ;;110
 ;;21,"00067-6407-08 ")
 ;;14
 ;;21,"00069-5410-66 ")
 ;;1310
 ;;21,"00069-5420-66 ")
 ;;1419
 ;;21,"00069-5440-93 ")
 ;;1417
 ;;21,"00069-5440-97 ")
 ;;1418
 ;;21,"00071-2333-17 ")
 ;;327
 ;;21,"00071-2555-17 ")
 ;;922
 ;;21,"00085-0268-05 ")
 ;;272
 ;;21,"00085-0820-03 ")
 ;;252
 ;;21,"00085-1117-01 ")
 ;;30
 ;;21,"00093-2929-01 ")
 ;;212
 ;;21,"00093-2929-10 ")
 ;;213
 ;;21,"00093-2929-93 ")
 ;;214
 ;;21,"00113-0355-71 ")
 ;;42
 ;;21,"00113-0379-26 ")
 ;;328
 ;;21,"00113-0406-73 ")
 ;;644
 ;;21,"00113-0462-62 ")
 ;;428
 ;;21,"00113-0479-62 ")
 ;;645
 ;;21,"00115-1040-01 ")
 ;;1492
 ;;21,"00115-1041-01 ")
 ;;1519
 ;;21,"00115-1041-03 ")
 ;;1520
 ;;21,"00115-1042-01 ")
 ;;1705
 ;;21,"00121-0489-05 ")
 ;;329
 ;;21,"00121-0489-10 ")
 ;;330
 ;;21,"00121-0489-20 ")
 ;;331
 ;;21,"00121-0547-05 ")
 ;;158
 ;;21,"00122-0815-66 ")
 ;;646
 ;;21,"00122-0816-66 ")
 ;;332
 ;;21,"00122-0878-66 ")
 ;;43
 ;;21,"00135-0009-45 ")
 ;;22
 ;;21,"00147-0236-05 ")
 ;;215
 ;;21,"00172-2929-60 ")
 ;;216
 ;;21,"00172-2929-80 ")
 ;;217
 ;;21,"00182-0135-10 ")
 ;;715
 ;;21,"00182-0492-10 ")
 ;;429
 ;;21,"00182-1015-01 ")
 ;;256
 ;;21,"00182-1131-93 ")
 ;;716
 ;;21,"00182-1132-00 ")
 ;;218
 ;;21,"00182-1132-89 ")
 ;;219
 ;;21,"00182-1355-40 ")
 ;;202
 ;;21,"00182-1376-40 ")
 ;;1024
 ;;21,"00182-1492-05 ")
 ;;926
 ;;21,"00182-1492-10 ")
 ;;927
 ;;21,"00182-1493-01 ")
 ;;1046
 ;;21,"00182-1494-05 ")
 ;;1221
 ;;21,"00182-1737-41 ")
 ;;1725
 ;;21,"00182-2001-37 ")
 ;;333
 ;;21,"00182-2091-16 ")
 ;;647
 ;;21,"00182-2092-01 ")
 ;;430
 ;;21,"00182-2092-16 ")
 ;;431
 ;;21,"00182-2095-37 ")
 ;;334
 ;;21,"00182-6061-37 ")
 ;;335
 ;;21,"00182-6168-37 ")
 ;;336
 ;;21,"00182-6168-40 ")
 ;;337
 ;;21,"00182-8222-00 ")
 ;;1521
 ;;21,"00182-8222-89 ")
 ;;1522
 ;;21,"00185-0613-01 ")
 ;;1311
 ;;21,"00185-0613-05 ")
 ;;1312
 ;;21,"00185-0615-01 ")
 ;;1420
 ;;21,"00185-0615-05 ")
 ;;1421
 ;;21,"00185-0648-01 ")
 ;;432
 ;;21,"00185-0648-10 ")
 ;;433
 ;;21,"00185-0649-01 ")
 ;;717
 ;;21,"00185-0649-10 ")
 ;;718
 ;;21,"00247-0073-00 ")
 ;;434
 ;;21,"00247-0073-01 ")
 ;;435
 ;;21,"00247-0073-02 ")
 ;;436
 ;;21,"00247-0073-03 ")
 ;;437
 ;;21,"00247-0073-04 ")
 ;;438
 ;;21,"00247-0073-05 ")
 ;;439
 ;;21,"00247-0073-06 ")
 ;;440
 ;;21,"00247-0073-07 ")
 ;;441
 ;;21,"00247-0073-08 ")
 ;;442
 ;;21,"00247-0073-10 ")
 ;;443
 ;;21,"00247-0073-12 ")
 ;;444
 ;;21,"00247-0073-14 ")
 ;;445
 ;;21,"00247-0073-15 ")
 ;;446
 ;;21,"00247-0073-16 ")
 ;;447
 ;;21,"00247-0073-18 ")
 ;;448
 ;;21,"00247-0073-20 ")
 ;;449
 ;;21,"00247-0073-21 ")
 ;;450
 ;;21,"00247-0073-24 ")
 ;;451
 ;;21,"00247-0073-25 ")
 ;;452
 ;;21,"00247-0073-30 ")
 ;;453
 ;;21,"00247-0073-40 ")
 ;;454
 ;;21,"00247-0073-60 ")
 ;;455
 ;;21,"00247-0073-90 ")
 ;;456
 ;;21,"00247-0073-99 ")
 ;;457
 ;;21,"00247-0081-04 ")
 ;;159
 ;;21,"00247-0081-10 ")
 ;;160
 ;;21,"00247-0081-20 ")
 ;;161
 ;;21,"00247-0081-30 ")
 ;;162
 ;;21,"00247-0081-38 ")
 ;;163
 ;;21,"00247-0081-52 ")
 ;;164
 ;;21,"00247-0081-59 ")
 ;;165
 ;;21,"00247-0081-60 ")
 ;;166
 ;;21,"00247-0081-77 ")
 ;;167
 ;;21,"00247-0081-89 ")
 ;;168
 ;;21,"00247-0105-00 ")
 ;;1047
 ;;21,"00247-0105-01 ")
 ;;1048
 ;;21,"00247-0105-02 ")
 ;;1049
 ;;21,"00247-0105-03 ")
 ;;1050
 ;;21,"00247-0105-04 ")
 ;;1051
 ;;21,"00247-0105-05 ")
 ;;1052
 ;;21,"00247-0105-06 ")
 ;;1053
 ;;21,"00247-0105-07 ")
 ;;1054
 ;;21,"00247-0105-08 ")
 ;;1055
 ;;21,"00247-0105-10 ")
 ;;1056
 ;;21,"00247-0105-12 ")
 ;;1057
 ;;21,"00247-0105-14 ")
 ;;1058
 ;;21,"00247-0105-15 ")
 ;;1059
 ;;21,"00247-0105-20 ")
 ;;1060
 ;;21,"00247-0105-21 ")
 ;;1061
 ;;21,"00247-0105-24 ")
 ;;1062
 ;;21,"00247-0105-30 ")
 ;;1063
 ;;21,"00247-0105-35 ")
 ;;1064
 ;;21,"00247-0120-00 ")
 ;;719
 ;;21,"00247-0120-01 ")
 ;;720
 ;;21,"00247-0120-02 ")
 ;;721
 ;;21,"00247-0120-03 ")
 ;;722
 ;;21,"00247-0120-04 ")
 ;;723
 ;;21,"00247-0120-05 ")
 ;;724
 ;;21,"00247-0120-06 ")
 ;;725
 ;;21,"00247-0120-07 ")
 ;;726
 ;;21,"00247-0120-08 ")
 ;;727
 ;;21,"00247-0120-10 ")
 ;;728
 ;;21,"00247-0120-12 ")
 ;;729
 ;;21,"00247-0120-14 ")
 ;;730
 ;;21,"00247-0120-15 ")
 ;;731
 ;;21,"00247-0120-20 ")
 ;;732
 ;;21,"00247-0120-24 ")
 ;;733
 ;;21,"00247-0120-30 ")
 ;;734
 ;;21,"00247-0127-03 ")
 ;;928
 ;;21,"00247-0127-10 ")
 ;;929
 ;;21,"00247-0127-12 ")
 ;;930
 ;;21,"00247-0127-15 ")
 ;;931
 ;;21,"00247-0127-20 ")
 ;;932
 ;;21,"00247-0127-30 ")
 ;;933
 ;;21,"00247-0127-50 ")
 ;;934
 ;;21,"00247-0130-00 ")
 ;;1523
 ;;21,"00247-0130-02 ")
 ;;1524
 ;;21,"00247-0130-03 ")
 ;;1525
 ;;21,"00247-0130-04 ")
 ;;1526
 ;;21,"00247-0130-05 ")
 ;;1527
 ;;21,"00247-0130-06 ")
 ;;1528
 ;;21,"00247-0130-07 ")
 ;;1529
 ;;21,"00247-0130-08 ")
 ;;1530
 ;;21,"00247-0130-10 ")
 ;;1531
 ;;21,"00247-0130-12 ")
 ;;1532
 ;;21,"00247-0130-14 ")
 ;;1533
 ;;21,"00247-0130-15 ")
 ;;1534
 ;;21,"00247-0130-20 ")
 ;;1535
 ;;21,"00247-0130-24 ")
 ;;1536
 ;;21,"00247-0130-30 ")
 ;;1537
 ;;21,"00247-0130-40 ")
 ;;1538
 ;;21,"00247-0198-05 ")
 ;;338
 ;;21,"00247-0198-10 ")
 ;;339
 ;;21,"00247-0198-20 ")
 ;;340
 ;;21,"00247-0198-30 ")
 ;;341
 ;;21,"00247-0198-60 ")
 ;;342
 ;;21,"00247-0198-77 ")
 ;;343
 ;;21,"00247-0231-52 ")
 ;;1726
 ;;21,"00247-0231-59 ")
 ;;1727
 ;;21,"00247-0332-05 ")
 ;;1025
 ;;21,"00247-0332-10 ")
 ;;1026
 ;;21,"00247-0332-38 ")
 ;;1027
 ;;21,"00247-0332-52 ")
 ;;1028
 ;;21,"00247-0332-60 ")
 ;;1029
 ;;21,"00247-0623-20 ")
 ;;289
 ;;21,"00247-0623-77 ")
 ;;290
 ;;21,"00247-0968-04 ")
 ;;1493
 ;;21,"00247-0968-05 ")
 ;;1494
 ;;21,"00247-0968-10 ")
 ;;1495
 ;;21,"00247-0968-12 ")
 ;;1496
 ;;21,"00247-0968-30 ")
 ;;1497
 ;;21,"00247-1074-01 ")
 ;;1222
 ;;21,"00247-1074-02 ")
 ;;1223
 ;;21,"00247-1074-03 ")
 ;;1224
 ;;21,"00247-1074-06 ")
 ;;1225
 ;;21,"00247-1074-20 ")
 ;;1226
 ;;21,"00247-1074-30 ")
 ;;1227
 ;;21,"00247-1167-01 ")
 ;;1313
 ;;21,"00247-1167-02 ")
 ;;1314
 ;;21,"00247-1167-03 ")
 ;;1315
 ;;21,"00247-1167-04 ")
 ;;1316
 ;;21,"00247-1167-06 ")
 ;;1317
 ;;21,"00247-1167-10 ")
 ;;1318
 ;;21,"00247-1167-12 ")
 ;;1319
 ;;21,"00247-1167-15 ")
 ;;1320
 ;;21,"00247-1167-24 ")
 ;;1321
 ;;21,"00247-1167-30 ")
 ;;1322
 ;;21,"00247-1168-01 ")
 ;;1422
 ;;21,"00247-1168-02 ")
 ;;1423
 ;;21,"00247-1168-04 ")
 ;;1424
 ;;21,"00247-1168-20 ")
 ;;1425
 ;;21,"00247-1168-30 ")
 ;;1426
 ;;21,"00247-1350-30 ")
 ;;344
 ;;21,"00247-1350-52 ")
 ;;345
 ;;21,"00247-1350-60 ")
 ;;346
 ;;21,"00247-1350-77 ")
 ;;347
 ;;21,"00247-2020-01 ")
 ;;1302
 ;;21,"00247-2020-02 ")
 ;;1303
 ;;21,"00247-2236-00 ")
 ;;44
 ;;21,"00247-2236-50 ")
 ;;45
 ;;21,"00280-8070-20 ")
 ;;46
 ;;21,"00363-0235-06 ")
 ;;47
 ;;21,"00363-0235-15 ")
 ;;48
 ;;21,"00363-0246-15 ")
 ;;49
 ;;21,"00363-0360-50 ")
 ;;50
 ;;21,"00372-0047-08 ")
 ;;348
 ;;21,"00372-0047-16 ")
 ;;349
 ;;21,"00372-0047-28 ")
 ;;350
 ;;21,"00378-2586-01 ")
 ;;935
 ;;21,"00378-2586-10 ")
 ;;936
 ;;21,"00378-2587-01 ")
 ;;1065
 ;;21,"00378-2587-10 ")
 ;;1066
 ;;21,"00378-2588-01 ")
 ;;1228
 ;;21,"00378-2588-10 ")
 ;;1229
 ;;21,"00378-7028-01 ")
 ;;1498
 ;;21,"00378-7028-10 ")
 ;;1499
 ;;21,"00378-7029-01 ")
 ;;1539
 ;;21,"00378-7029-10 ")
 ;;1540
 ;;21,"00378-7030-01 ")
 ;;1706
 ;;21,"00378-7030-10 ")
 ;;1707
 ;;21,"00406-2040-01 ")
 ;;1500
 ;;21,"00406-2041-01 ")
 ;;1541
 ;;21,"00406-2041-10 ")
 ;;1542
 ;;21,"00406-2042-01 ")
 ;;1708
 ;;21,"00436-0525-04 ")
 ;;351
 ;;21,"00436-0525-16 ")
 ;;352
 ;;21,"00436-0525-28 ")
 ;;353
 ;;21,"00436-0580-04 ")
 ;;1728
 ;;21,"00436-0580-16 ")
 ;;1729
 ;;21,"00436-0580-28 ")
 ;;1730
 ;;21,"00440-7425-16 ")
 ;;458
 ;;21,"00440-7616-30 ")
 ;;937
 ;;21,"00440-8195-10 ")
 ;;1543
 ;;21,"00472-0755-16 ")
 ;;203
 ;;21,"00472-1400-16 ")
 ;;204
 ;;21,"00472-1627-04 ")
 ;;169
 ;;21,"00472-1627-16 ")
 ;;170
 ;;21,"00472-1628-04 ")
 ;;1478
 ;;21,"00472-1628-16 ")
 ;;1479
 ;;21,"00472-1629-04 ")
 ;;144
 ;;21,"00472-1629-16 ")
 ;;145
 ;;21,"00472-1630-04 ")
 ;;291
 ;;21,"00472-1630-16 ")
 ;;292
 ;;21,"00501-2000-24 ")
 ;;459
 ;;21,"00501-2000-48 ")
 ;;460
 ;;21,"00501-2001-24 ")
 ;;461
 ;;21,"00501-2009-24 ")
 ;;648
 ;;21,"00501-2009-48 ")
 ;;649
 ;;21,"00501-2009-99 ")
 ;;650
 ;;21,"00501-2010-24 ")
 ;;323
 ;;21,"00501-2020-20 ")
 ;;921
 ;;21,"00501-2022-20 ")
 ;;426
 ;;21,"00501-2030-20 ")
 ;;19
 ;;21,"00501-2041-04 ")
 ;;923
 ;;21,"00501-2043-10 ")
 ;;642
 ;;21,"00501-2043-20 ")
 ;;643
 ;;21,"00501-2050-04 ")
 ;;354
 ;;21,"00501-2050-08 ")
 ;;355
 ;;21,"00501-2053-04 ")
 ;;356
 ;;21,"00501-2061-04 ")
 ;;924
 ;;21,"00501-2752-20 ")
 ;;20
 ;;21,"00501-2907-20 ")
 ;;16
 ;;21,"00501-6000-08 ")
 ;;735
 ;;21,"00501-6000-16 ")
 ;;736
 ;;21,"00501-6000-32 ")
 ;;737
 ;;21,"00536-0770-58 ")
 ;;357
 ;;21,"00536-0770-85 ")
 ;;358
 ;;21,"00536-0770-97 ")
 ;;359
 ;;21,"00536-1745-90 ")
 ;;1731
 ;;21,"00536-3479-06 ")
 ;;51
 ;;21,"00536-3594-01 ")
 ;;462
 ;;21,"00536-3594-10 ")
 ;;463
 ;;21,"00536-3594-35 ")
 ;;464
 ;;21,"00536-3597-01 ")
 ;;651
 ;;21,"00536-3772-06 ")
 ;;872
 ;;21,"00555-0059-02 ")
 ;;738
 ;;21,"00555-0059-05 ")
 ;;739
 ;;21,"00555-0302-02 ")
 ;;1427
 ;;21,"00555-0302-04 ")
 ;;1428
 ;;21,"00555-0323-02 ")
 ;;1323
 ;;21,"00555-0323-04 ")
 ;;1324
 ;;21,"00555-0324-02 ")
 ;;1304
 ;;21,"00573-0315-10 ")
 ;;52
 ;;21,"00591-0800-01 ")
 ;;1325
 ;;21,"00591-0800-05 ")
 ;;1326
 ;;21,"00591-0801-01 ")
 ;;1429
 ;;21,"00591-0801-05 ")
 ;;1430
 ;;21,"00591-3423-01 ")
 ;;1230
 ;;21,"00591-3423-05 ")
 ;;1231
 ;;21,"00591-3423-10 ")
 ;;1232
 ;;21,"00591-5307-01 ")
 ;;1544
 ;;21,"00591-5307-10 ")
 ;;1545
 ;;21,"00591-5319-01 ")
 ;;1709
 ;;21,"00591-5522-01 ")
 ;;938
 ;;21,"00591-5522-05 ")
 ;;939
 ;;21,"00591-5523-01 ")
 ;;1067
 ;;21,"00591-5523-05 ")
 ;;1068
 ;;21,"00591-5523-10 ")
 ;;1069
 ;;21,"00603-0240-18 ")
 ;;465
 ;;21,"00603-0241-18 ")
 ;;466
 ;;21,"00603-0823-54 ")
 ;;360
 ;;21,"00603-0823-58 ")
 ;;361
 ;;21,"00603-0823-81 ")
 ;;362
 ;;21,"00603-0823-94 ")
 ;;363
 ;;21,"00603-0860-54 ")
 ;;364
 ;;21,"00603-1310-54 ")
 ;;1030
 ;;21,"00603-1310-58 ")
 ;;1031
 ;;21,"00603-1584-54 ")
 ;;1732
 ;;21,"00603-1584-58 ")
 ;;1733
 ;;21,"00603-1585-54 ")
 ;;171
 ;;21,"00603-1585-58 ")
 ;;172
 ;;21,"00603-1586-54 ")
 ;;293
 ;;21,"00603-1586-58 ")
 ;;294
 ;;21,"00603-1587-54 ")
 ;;1480
 ;;21,"00603-1587-58 ")
 ;;1481
 ;;21,"00603-1588-54 ")
 ;;146
 ;;21,"00603-1588-58 ")
 ;;147
 ;;21,"00603-3198-21 ")
 ;;254
 ;;21,"00603-3337-21 ")
 ;;467
 ;;21,"00603-3337-32 ")
 ;;468
 ;;21,"00603-3338-21 ")
 ;;740
 ;;21,"00603-3338-32 ")
 ;;741
 ;;21,"00603-3339-21 ")
 ;;469
 ;;21,"00603-3339-32 ")
 ;;470
 ;;21,"00603-3340-21 ")
 ;;742
 ;;21,"00603-3340-32 ")
 ;;743
 ;;21,"00603-3967-21 ")
 ;;940
 ;;21,"00603-3967-28 ")
 ;;941
 ;;21,"00603-3967-32 ")
 ;;942
 ;;21,"00603-3968-21 ")
 ;;1070
 ;;21,"00603-3968-28 ")
 ;;1071
 ;;21,"00603-3968-32 ")
 ;;1072
 ;;21,"00603-3969-21 ")
 ;;1233
 ;;21,"00603-3969-28 ")
 ;;1234
 ;;21,"00603-5437-21 ")
 ;;1501
 ;;21,"00603-5438-21 ")
 ;;1546
 ;;21,"00603-5438-30 ")
 ;;1547
 ;;21,"00603-5438-32 ")
 ;;1548
 ;;21,"00603-5439-21 ")
 ;;1710
 ;;21,"00615-0331-63 ")
 ;;1327
 ;;21,"00615-0332-13 ")
 ;;1431
 ;;21,"00615-0332-63 ")
 ;;1432
 ;
OTHER ; OTHER ROUTINES
 D ^BGP2VN10
 D ^BGP2VN11
 D ^BGP2VN12
 D ^BGP2VN13
 D ^BGP2VN14
 D ^BGP2VN15
 D ^BGP2VN16
 D ^BGP2VN17
 D ^BGP2VN18
 D ^BGP2VN19
 D ^BGP2VN2
 D ^BGP2VN20
 D ^BGP2VN21
 D ^BGP2VN3
 D ^BGP2VN4
 D ^BGP2VN5
 D ^BGP2VN6
 D ^BGP2VN7
 D ^BGP2VN8
 D ^BGP2VN9
 Q