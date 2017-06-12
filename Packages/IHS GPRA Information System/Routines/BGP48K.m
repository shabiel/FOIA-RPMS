BGP48K ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 24, 2014;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;;BGP PQA WARFARIN NDC
 ;
 ; This routine loads Taxonomy BGP PQA WARFARIN NDC
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
 ;;21,"00002-7217-01 ")
 ;;295
 ;;21,"00007-3230-01 ")
 ;;157
 ;;21,"00007-3230-02 ")
 ;;158
 ;;21,"00007-3230-11 ")
 ;;159
 ;;21,"00007-3232-01 ")
 ;;145
 ;;21,"00007-3232-02 ")
 ;;146
 ;;21,"00007-3232-11 ")
 ;;147
 ;;21,"00007-3234-01 ")
 ;;148
 ;;21,"00007-3234-02 ")
 ;;149
 ;;21,"00007-3234-11 ")
 ;;150
 ;;21,"00007-3236-01 ")
 ;;138
 ;;21,"00007-3236-02 ")
 ;;139
 ;;21,"00007-3236-11 ")
 ;;156
 ;;21,"00008-2528-50 ")
 ;;564
 ;;21,"00009-0268-01 ")
 ;;192
 ;;21,"00009-0268-02 ")
 ;;193
 ;;21,"00009-0268-12 ")
 ;;194
 ;;21,"00009-0291-01 ")
 ;;201
 ;;21,"00009-0317-02 ")
 ;;198
 ;;21,"00009-0317-10 ")
 ;;199
 ;;21,"00009-0317-11 ")
 ;;200
 ;;21,"00013-2406-91 ")
 ;;8
 ;;21,"00013-2426-01 ")
 ;;20
 ;;21,"00013-2426-91 ")
 ;;9
 ;;21,"00013-2436-06 ")
 ;;1
 ;;21,"00013-5190-01 ")
 ;;3
 ;;21,"00013-5191-01 ")
 ;;22
 ;;21,"00056-0168-01 ")
 ;;1046
 ;;21,"00056-0168-70 ")
 ;;1047
 ;;21,"00056-0168-75 ")
 ;;1048
 ;;21,"00056-0168-90 ")
 ;;1049
 ;;21,"00056-0169-01 ")
 ;;603
 ;;21,"00056-0169-70 ")
 ;;604
 ;;21,"00056-0169-75 ")
 ;;605
 ;;21,"00056-0169-90 ")
 ;;606
 ;;21,"00056-0170-01 ")
 ;;777
 ;;21,"00056-0170-70 ")
 ;;778
 ;;21,"00056-0170-75 ")
 ;;779
 ;;21,"00056-0170-90 ")
 ;;780
 ;;21,"00056-0172-01 ")
 ;;1141
 ;;21,"00056-0172-70 ")
 ;;1142
 ;;21,"00056-0172-75 ")
 ;;1143
 ;;21,"00056-0172-90 ")
 ;;1144
 ;;21,"00056-0173-01 ")
 ;;1359
 ;;21,"00056-0173-70 ")
 ;;1360
 ;;21,"00056-0173-75 ")
 ;;1361
 ;;21,"00056-0174-01 ")
 ;;703
 ;;21,"00056-0174-70 ")
 ;;704
 ;;21,"00056-0174-75 ")
 ;;705
 ;;21,"00056-0176-01 ")
 ;;884
 ;;21,"00056-0176-70 ")
 ;;885
 ;;21,"00056-0176-75 ")
 ;;886
 ;;21,"00056-0176-90 ")
 ;;887
 ;;21,"00056-0188-01 ")
 ;;982
 ;;21,"00056-0188-70 ")
 ;;983
 ;;21,"00056-0188-75 ")
 ;;984
 ;;21,"00056-0188-90 ")
 ;;985
 ;;21,"00056-0189-01 ")
 ;;1314
 ;;21,"00056-0189-70 ")
 ;;1315
 ;;21,"00056-0189-75 ")
 ;;1316
 ;;21,"00056-0189-90 ")
 ;;1317
 ;;21,"00069-0043-01 ")
 ;;260
 ;;21,"00069-0043-02 ")
 ;;261
 ;;21,"00069-0058-01 ")
 ;;272
 ;;21,"00069-0058-02 ")
 ;;273
 ;;21,"00069-0059-01 ")
 ;;328
 ;;21,"00069-0059-02 ")
 ;;329
 ;;21,"00069-0059-03 ")
 ;;330
 ;;21,"00069-0059-04 ")
 ;;331
 ;;21,"00069-0062-01 ")
 ;;293
 ;;21,"00069-0062-02 ")
 ;;294
 ;;21,"00069-0137-01 ")
 ;;270
 ;;21,"00069-0137-03 ")
 ;;271
 ;;21,"00074-1151-12 ")
 ;;502
 ;;21,"00074-1151-14 ")
 ;;503
 ;;21,"00074-1151-70 ")
 ;;504
 ;;21,"00074-1151-78 ")
 ;;505
 ;;21,"00074-1152-12 ")
 ;;539
 ;;21,"00074-1152-14 ")
 ;;540
 ;;21,"00074-1152-70 ")
 ;;541
 ;;21,"00074-1152-78 ")
 ;;542
 ;;21,"00074-1280-01 ")
 ;;376
 ;;21,"00074-1280-02 ")
 ;;377
 ;;21,"00074-1280-03 ")
 ;;378
 ;;21,"00074-1280-05 ")
 ;;379
 ;;21,"00074-1280-11 ")
 ;;380
 ;;21,"00074-1280-12 ")
 ;;381
 ;;21,"00074-1280-13 ")
 ;;382
 ;;21,"00074-1280-15 ")
 ;;383
 ;;21,"00074-1280-21 ")
 ;;384
 ;;21,"00074-1280-22 ")
 ;;385
 ;;21,"00074-1280-23 ")
 ;;386
 ;;21,"00074-1280-25 ")
 ;;387
 ;;21,"00074-1280-31 ")
 ;;388
 ;;21,"00074-1280-32 ")
 ;;389
 ;;21,"00074-1280-33 ")
 ;;390
 ;;21,"00074-1280-35 ")
 ;;391
 ;;21,"00074-1281-01 ")
 ;;463
 ;;21,"00074-1281-02 ")
 ;;464
 ;;21,"00074-1281-03 ")
 ;;465
 ;;21,"00074-1281-05 ")
 ;;466
 ;;21,"00074-1281-11 ")
 ;;467
 ;;21,"00074-1281-13 ")
 ;;468
 ;;21,"00074-1281-15 ")
 ;;469
 ;;21,"00074-1281-21 ")
 ;;470
 ;;21,"00074-1281-22 ")
 ;;471
 ;;21,"00074-1281-23 ")
 ;;472
 ;;21,"00074-1281-25 ")
 ;;473
 ;;21,"00074-1281-31 ")
 ;;474
 ;;21,"00074-1281-32 ")
 ;;475
 ;;21,"00074-1281-33 ")
 ;;476
 ;;21,"00074-1281-35 ")
 ;;477
 ;;21,"00074-1282-02 ")
 ;;561
 ;;21,"00074-1316-01 ")
 ;;292
 ;;21,"00074-1316-02 ")
 ;;319
 ;;21,"00074-1316-11 ")
 ;;291
 ;;21,"00074-1316-12 ")
 ;;349
 ;;21,"00074-1316-13 ")
 ;;289
 ;;21,"00074-1316-14 ")
 ;;290
 ;;21,"00074-1316-32 ")
 ;;310
 ;;21,"00074-1316-66 ")
 ;;311
 ;;21,"00074-1389-02 ")
 ;;571
 ;;21,"00074-1389-32 ")
 ;;572
 ;;21,"00074-1402-01 ")
 ;;325
 ;;21,"00074-1402-11 ")
 ;;326
 ;;21,"00074-1402-31 ")
 ;;327
 ;;21,"00074-2581-02 ")
 ;;316
 ;;21,"00074-2584-02 ")
 ;;321
 ;;21,"00074-3454-05 ")
 ;;461
 ;;21,"00074-3454-25 ")
 ;;462
 ;;21,"00074-4822-01 ")
 ;;392
 ;;21,"00074-7620-03 ")
 ;;235
 ;;21,"00074-7620-59 ")
 ;;234
 ;;21,"00074-7650-62 ")
 ;;232
 ;;21,"00074-7651-03 ")
 ;;251
 ;;21,"00074-7651-62 ")
 ;;253
 ;;21,"00074-7760-03 ")
 ;;244
 ;;21,"00074-7761-03 ")
 ;;245
 ;;21,"00074-7793-23 ")
 ;;215
 ;;21,"00074-7793-62 ")
 ;;211
 ;;21,"00074-7794-62 ")
 ;;250
 ;;21,"00075-0620-40 ")
 ;;48
 ;;21,"00075-0620-41 ")
 ;;49
 ;;21,"00075-0621-60 ")
 ;;33
 ;;21,"00075-0621-61 ")
 ;;34
 ;;21,"00075-0622-80 ")
 ;;36
 ;;21,"00075-0622-81 ")
 ;;37
 ;;21,"00075-0623-00 ")
 ;;44
 ;;21,"00075-0623-01 ")
 ;;45
 ;;21,"00075-0624-03 ")
 ;;27
 ;;21,"00075-0624-30 ")
 ;;24
 ;;21,"00075-0624-31 ")
 ;;25
 ;;21,"00075-0626-03 ")
 ;;55
 ;;21,"00075-0626-04 ")
 ;;56
 ;;21,"00075-2912-01 ")
 ;;88
 ;;21,"00075-2912-02 ")
 ;;89
 ;;21,"00075-2915-01 ")
 ;;84
 ;;21,"00075-2915-02 ")
 ;;85
 ;;21,"00075-8013-01 ")
 ;;98
 ;;21,"00075-8013-10 ")
 ;;99
 ;;21,"00075-8014-01 ")
 ;;110
 ;;21,"00075-8014-10 ")
 ;;111
 ;;21,"00075-8016-01 ")
 ;;119
 ;;21,"00075-8016-10 ")
 ;;120
 ;;21,"00075-8018-01 ")
 ;;128
 ;;21,"00075-8018-10 ")
 ;;129
 ;;21,"00075-8020-01 ")
 ;;64
 ;;21,"00075-8020-10 ")
 ;;65
 ;;21,"00075-8022-01 ")
 ;;73
 ;;21,"00075-8022-10 ")
 ;;74
 ;;21,"00075-8025-01 ")
 ;;86
 ;;21,"00075-8025-10 ")
 ;;87
 ;;21,"00075-8030-01 ")
 ;;102
 ;;21,"00264-9567-10 ")
 ;;242
 ;;21,"00264-9577-10 ")
 ;;246
 ;;21,"00264-9587-20 ")
 ;;214
 ;;21,"00264-9872-10 ")
 ;;236
 ;;21,"00338-0431-03 ")
 ;;237
 ;;21,"00338-0433-04 ")
 ;;239
 ;;21,"00338-0549-03 ")
 ;;243
 ;;21,"00338-0550-02 ")
 ;;212
 ;;21,"00338-0550-03 ")
 ;;248
 ;;21,"00338-8106-69 ")
 ;;373
 ;;21,"00338-8110-70 ")
 ;;374
 ;;21,"00338-8112-69 ")
 ;;455
 ;;21,"00338-8113-70 ")
 ;;375
 ;;21,"00338-8206-69 ")
 ;;456
 ;;21,"00338-8209-69 ")
 ;;457
 ;;21,"00338-8210-70 ")
 ;;458
 ;;21,"00338-8212-69 ")
 ;;459
 ;;21,"00338-8213-70 ")
 ;;460
 ;;21,"00378-8801-01 ")
 ;;633
 ;;21,"00378-8801-10 ")
 ;;634
 ;;21,"00378-8802-01 ")
 ;;846
 ;;21,"00378-8802-10 ")
 ;;847
 ;;21,"00378-8803-01 ")
 ;;1019
 ;;21,"00378-8803-10 ")
 ;;1020
 ;;21,"00378-8804-01 ")
 ;;1093
 ;;21,"00378-8804-10 ")
 ;;1094
 ;;21,"00378-8805-01 ")
 ;;1225
 ;;21,"00378-8805-10 ")
 ;;1226
 ;;21,"00378-8806-01 ")
 ;;1326
 ;;21,"00378-8806-10 ")
 ;;1327
 ;;21,"00378-8810-01 ")
 ;;720
 ;;21,"00378-8810-10 ")
 ;;721
 ;;21,"00378-8825-01 ")
 ;;920
 ;;21,"00378-8825-10 ")
 ;;921
 ;;21,"00378-8875-01 ")
 ;;1386
 ;;21,"00378-8875-10 ")
 ;;1387
 ;;21,"00406-2052-01 ")
 ;;635
 ;;21,"00406-2052-10 ")
 ;;636
 ;;21,"00406-2053-01 ")
 ;;844
 ;;21,"00406-2053-10 ")
 ;;845
 ;;21,"00406-2054-01 ")
 ;;1017
 ;;21,"00406-2054-10 ")
 ;;1018
 ;;21,"00406-2055-01 ")
 ;;1095
 ;;21,"00406-2055-10 ")
 ;;1096
 ;;21,"00406-2056-01 ")
 ;;1223
 ;;21,"00406-2056-10 ")
 ;;1224
 ;;21,"00406-2057-01 ")
 ;;1328
 ;;21,"00406-2058-01 ")
 ;;1385
 ;;21,"00406-2059-01 ")
 ;;719
 ;;21,"00406-2064-01 ")
 ;;922
 ;;21,"00406-2064-10 ")
 ;;923
 ;;21,"00409-1151-12 ")
 ;;491
 ;;21,"00409-1151-70 ")
 ;;506
 ;;21,"00409-1151-78 ")
 ;;492
 ;;21,"00409-1152-12 ")
 ;;525
 ;;21,"00409-1152-70 ")
 ;;537
 ;;21,"00409-1152-78 ")
 ;;538
 ;;21,"00409-1280-31 ")
 ;;369
 ;;21,"00409-1280-32 ")
 ;;370
 ;;21,"00409-1280-33 ")
 ;;371
 ;;21,"00409-1280-35 ")
 ;;372
 ;;21,"00409-1281-31 ")
 ;;450
 ;;21,"00409-1281-32 ")
 ;;451
 ;;21,"00409-1281-33 ")
 ;;454
 ;;21,"00409-1281-35 ")
 ;;452
 ;;21,"00409-1316-25 ")
 ;;286
 ;;21,"00409-1316-32 ")
 ;;312
 ;;21,"00409-1316-66 ")
 ;;313
 ;;21,"00409-1402-12 ")
 ;;347
 ;;21,"00409-1402-31 ")
 ;;348
 ;;21,"00409-2581-02 ")
 ;;315
 ;;21,"00409-2584-02 ")
 ;;320
 ;;21,"00409-2720-01 ")
 ;;279
 ;;21,"00409-2720-02 ")
 ;;280
 ;;21,"00409-2720-03 ")
 ;;281
 ;;21,"00409-2721-01 ")
 ;;296
 ;;21,"00409-2723-01 ")
 ;;345
 ;;21,"00409-2723-02 ")
 ;;346
 ;;21,"00409-7620-03 ")
 ;;238
 ;;21,"00409-7620-59 ")
 ;;240
 ;;21,"00409-7650-62 ")
 ;;233
 ;;21,"00409-7651-03 ")
 ;;252
 ;;21,"00409-7651-62 ")
 ;;254
 ;;21,"00409-7760-03 ")
 ;;241
 ;;21,"00409-7761-03 ")
 ;;247
 ;;21,"00409-7793-23 ")
 ;;216
 ;;21,"00409-7793-62 ")
 ;;213
 ;;21,"00409-7794-62 ")
 ;;249
 ;;21,"00548-5601-00 ")
 ;;96
 ;;21,"00548-5602-00 ")
 ;;104
 ;;21,"00548-5603-00 ")
 ;;112
 ;;21,"00548-5604-00 ")
 ;;122
 ;;21,"00548-5605-00 ")
 ;;57
 ;;21,"00548-5606-00 ")
 ;;67
 ;;21,"00548-5607-00 ")
 ;;81
 ;;21,"00548-5631-00 ")
 ;;97
 ;;21,"00548-5632-00 ")
 ;;103
 ;;21,"00548-5633-00 ")
 ;;113
 ;;21,"00548-5634-00 ")
 ;;121
 ;;21,"00548-5635-00 ")
 ;;58
 ;;21,"00548-5636-00 ")
 ;;66
 ;;21,"00548-5637-00 ")
 ;;82
 ;;21,"00555-0831-02 ")
 ;;637
 ;;21,"00555-0831-05 ")
 ;;638
 ;;21,"00555-0832-02 ")
 ;;925
 ;;21,"00555-0832-05 ")
 ;;926
 ;;21,"00555-0833-02 ")
 ;;1221
 ;;21,"00555-0833-05 ")
 ;;1222
 ;;21,"00555-0834-02 ")
 ;;1383
 ;;21,"00555-0834-05 ")
 ;;1384
 ;;21,"00555-0835-02 ")
 ;;722
 ;;21,"00555-0835-04 ")
 ;;723
 ;;21,"00555-0869-02 ")
 ;;841
 ;;21,"00555-0869-05 ")
 ;;842
 ;;21,"00555-0874-02 ")
 ;;1098
 ;;21,"00555-0874-05 ")
 ;;1099
 ;;21,"00555-0925-02 ")
 ;;1015
 ;;21,"00555-0926-02 ")
 ;;1329
 ;;21,"00590-0324-35 ")
 ;;600
 ;;21,"00590-0324-96 ")
 ;;601
 ;;21,"00615-1509-29 ")
 ;;843
 ;;21,"00615-1510-29 ")
 ;;924
 ;;21,"00615-1512-29 ")
 ;;1220
 ;;21,"00615-4547-29 ")
 ;;639
 ;;21,"00615-4548-29 ")
 ;;1016
 ;;21,"00615-4549-29 ")
 ;;1097
 ;;21,"00615-4550-29 ")
 ;;1330
 ;;21,"00615-4551-29 ")
 ;;1382
 ;;21,"00615-4557-29 ")
 ;;724
 ;;21,"00641-0272-21 ")
 ;;418
 ;;21,"00641-0272-25 ")
 ;;419
 ;;21,"00641-0273-21 ")
 ;;437
 ;;21,"00641-0273-25 ")
 ;;438
 ;;21,"00641-0387-21 ")
 ;;532
 ;;21,"00641-0387-25 ")
 ;;533
 ;;21,"00641-0389-21 ")
 ;;534
 ;;21,"00641-0389-25 ")
 ;;535
 ;;21,"00641-0391-02 ")
 ;;274
 ;;21,"00641-0391-12 ")
 ;;275
 ;;21,"00641-0391-21 ")
 ;;276
 ;;21,"00641-0391-25 ")
 ;;277
 ;;21,"00641-0391-37 ")
 ;;278
 ;;21,"00641-0391-64 ")
 ;;258
 ;;21,"00641-0392-21 ")
 ;;493
 ;;21,"00641-0392-25 ")
 ;;494
 ;;21,"00641-0393-21 ")
 ;;495
 ;;21,"00641-0393-25 ")
 ;;496
 ;;21,"00641-0400-02 ")
 ;;337
 ;;21,"00641-0400-12 ")
 ;;338
 ;;21,"00641-0400-21 ")
 ;;339
 ;;21,"00641-0400-25 ")
 ;;340
 ;;21,"00641-0400-37 ")
 ;;341
 ;;21,"00641-0400-64 ")
 ;;323
 ;;21,"00641-0410-02 ")
 ;;297
 ;;21,"00641-0410-12 ")
 ;;298
 ;;21,"00641-0410-21 ")
 ;;299
 ;;21,"00641-0410-25 ")
 ;;300
 ;;21,"00641-0410-37 ")
 ;;301
 ;;21,"00641-0410-64 ")
 ;;287
 ;;21,"00641-0411-25 ")
 ;;536
 ;;21,"00641-0414-25 ")
 ;;524
 ;;21,"00641-2436-41 ")
 ;;528
 ;;21,"00641-2436-45 ")
 ;;529
 ;;21,"00641-2438-41 ")
 ;;497
 ;;21,"00641-2438-45 ")
 ;;498
 ;;21,"00641-2440-41 ")
 ;;256
 ;;21,"00641-2440-45 ")
 ;;263
 ;;21,"00641-2442-41 ")
 ;;499
 ;;21,"00641-2442-45 ")
 ;;500
 ;;21,"00641-2443-41 ")
 ;;530
 ;;21,"00641-2443-45 ")
 ;;531
 ;;21,"00641-2450-30 ")
 ;;264
 ;;21,"00641-2450-41 ")
 ;;257
 ;;21,"00641-2450-45 ")
 ;;265
 ;;21,"00641-2450-55 ")
 ;;266
 ;;21,"00641-2460-30 ")
 ;;334
 ;;21,"00641-2460-41 ")
 ;;322
 ;;21,"00641-2460-45 ")
 ;;335
 ;;21,"00641-2460-55 ")
 ;;336
 ;;21,"00641-2470-41 ")
 ;;288
 ;;21,"00641-2470-45 ")
 ;;302
 ;;21,"00677-0275-21 ")
 ;;324
 ;;21,"00781-0352-07 ")
 ;;623
 ;;21,"00781-0363-07 ")
 ;;830
 ;;21,"00781-0364-07 ")
 ;;902
 ;;21,"00781-0366-07 ")
 ;;1009
 ;;21,"00781-0369-07 ")
 ;;1083
 ;;21,"00781-0377-07 ")
 ;;1179
 ;;21,"00781-0381-07 ")
 ;;1323
 ;;21,"00781-0386-07 ")
 ;;1371
 ;;21,"00781-0387-07 ")
 ;;712
 ;;21,"00781-3119-01 ")
 ;;92
 ;;21,"00781-3119-02 ")
 ;;108
 ;;21,"00781-3119-03 ")
 ;;114
 ;;21,"00781-3119-04 ")
 ;;126
 ;;21,"00781-3119-05 ")
 ;;59
 ;;21,"00781-3119-63 ")
 ;;23
 ;;21,"00781-3119-64 ")
 ;;47
 ;;21,"00781-3119-66 ")
 ;;28
 ;;21,"00781-3119-68 ")
 ;;35
 ;;21,"00781-3119-69 ")
 ;;43
 ;;21,"00781-3121-04 ")
 ;;71
 ;;21,"00781-3121-05 ")
 ;;77
 ;;21,"00781-3121-68 ")
 ;;75
 ;;21,"00781-3121-69 ")
 ;;76
 ;;21,"00781-3122-93 ")
 ;;101
 ;;21,"00781-3133-01 ")
 ;;94
 ;;21,"00781-3133-63 ")
 ;;95
 ;;21,"00781-3224-02 ")
 ;;105
 ;;21,"00781-3224-64 ")
 ;;106
 ;;21,"00781-3356-03 ")
 ;;116
 ;;21,"00781-3356-66 ")
 ;;117
 ;;21,"00781-3428-04 ")
 ;;123
 ;;21,"00781-3428-68 ")
 ;;124
 ;;21,"00781-3500-05 ")
 ;;61
 ;;21,"00781-3500-69 ")
 ;;62
 ;;21,"00781-3612-04 ")
 ;;68
 ;;21,"00781-3612-68 ")
 ;;69
 ;
OTHER ; OTHER ROUTINES
 D ^BGP48K10
 D ^BGP48K11
 D ^BGP48K12
 D ^BGP48K13
 D ^BGP48K14
 D ^BGP48K15
 D ^BGP48K16
 D ^BGP48K17
 D ^BGP48K2
 D ^BGP48K3
 D ^BGP48K4
 D ^BGP48K5
 D ^BGP48K6
 D ^BGP48K7
 D ^BGP48K8
 D ^BGP48K9
 Q