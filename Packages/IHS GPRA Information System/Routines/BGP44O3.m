BGP44O3 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON SEP 11, 2013;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"00781-2274-01 ")
 ;;2761
 ;;21,"00781-2274-10 ")
 ;;2762
 ;;21,"00781-2274-64 ")
 ;;2763
 ;;21,"00781-2277-01 ")
 ;;2735
 ;;21,"00781-2279-01 ")
 ;;2804
 ;;21,"00781-5204-10 ")
 ;;3450
 ;;21,"00781-5204-31 ")
 ;;3451
 ;;21,"00781-5204-92 ")
 ;;3452
 ;;21,"00781-5206-10 ")
 ;;3397
 ;;21,"00781-5206-31 ")
 ;;3398
 ;;21,"00781-5206-92 ")
 ;;3399
 ;;21,"00781-5207-10 ")
 ;;3497
 ;;21,"00781-5207-31 ")
 ;;3498
 ;;21,"00781-5207-92 ")
 ;;3499
 ;;21,"00781-5320-01 ")
 ;;1991
 ;;21,"00781-5321-01 ")
 ;;2002
 ;;21,"00781-5322-01 ")
 ;;2016
 ;;21,"00781-5700-10 ")
 ;;2278
 ;;21,"00781-5700-92 ")
 ;;2279
 ;;21,"00781-5701-10 ")
 ;;2368
 ;;21,"00781-5701-31 ")
 ;;2369
 ;;21,"00781-5701-92 ")
 ;;2370
 ;;21,"00781-5702-10 ")
 ;;2454
 ;;21,"00781-5702-31 ")
 ;;2455
 ;;21,"00781-5702-92 ")
 ;;2405
 ;;21,"00781-5805-10 ")
 ;;2246
 ;;21,"00781-5805-92 ")
 ;;2247
 ;;21,"00781-5806-10 ")
 ;;2320
 ;;21,"00781-5806-31 ")
 ;;2321
 ;;21,"00781-5806-92 ")
 ;;2322
 ;;21,"00781-5807-10 ")
 ;;2402
 ;;21,"00781-5807-31 ")
 ;;2403
 ;;21,"00781-5807-92 ")
 ;;2404
 ;;21,"00781-5816-10 ")
 ;;3380
 ;;21,"00781-5816-31 ")
 ;;3381
 ;;21,"00781-5816-92 ")
 ;;3382
 ;;21,"00781-5817-10 ")
 ;;3426
 ;;21,"00781-5817-31 ")
 ;;3427
 ;;21,"00781-5817-92 ")
 ;;3428
 ;;21,"00781-5818-10 ")
 ;;3491
 ;;21,"00781-5818-31 ")
 ;;3492
 ;;21,"00781-5818-92 ")
 ;;3493
 ;;21,"00781-5936-31 ")
 ;;2035
 ;;21,"00781-5937-31 ")
 ;;2039
 ;;21,"00781-5938-31 ")
 ;;2055
 ;;21,"00781-5938-92 ")
 ;;2056
 ;;21,"00781-5939-31 ")
 ;;2065
 ;;21,"00781-5939-92 ")
 ;;2066
 ;;21,"00781-5948-10 ")
 ;;3581
 ;;21,"00781-5948-92 ")
 ;;3582
 ;;21,"00781-5949-10 ")
 ;;3625
 ;;21,"00781-5949-64 ")
 ;;3626
 ;;21,"00781-5949-92 ")
 ;;3627
 ;;21,"00781-5950-10 ")
 ;;3672
 ;;21,"00781-5950-64 ")
 ;;3673
 ;;21,"00781-5950-92 ")
 ;;3674
 ;;21,"00781-5951-10 ")
 ;;3696
 ;;21,"00781-5951-64 ")
 ;;3697
 ;;21,"00781-5951-92 ")
 ;;3698
 ;;21,"00781-5952-10 ")
 ;;3717
 ;;21,"00781-5952-64 ")
 ;;3718
 ;;21,"00781-5952-92 ")
 ;;3719
 ;;21,"00904-5045-61 ")
 ;;256
 ;;21,"00904-5046-61 ")
 ;;257
 ;;21,"00904-5047-61 ")
 ;;386
 ;;21,"00904-5501-60 ")
 ;;410
 ;;21,"00904-5502-61 ")
 ;;481
 ;;21,"00904-5609-61 ")
 ;;409
 ;;21,"00904-5610-61 ")
 ;;577
 ;;21,"00904-5611-61 ")
 ;;674
 ;;21,"00904-5638-89 ")
 ;;1046
 ;;21,"00904-5639-43 ")
 ;;1242
 ;;21,"00904-5639-46 ")
 ;;1243
 ;;21,"00904-5639-48 ")
 ;;1244
 ;;21,"00904-5639-89 ")
 ;;1245
 ;;21,"00904-5640-46 ")
 ;;1304
 ;;21,"00904-5640-48 ")
 ;;1305
 ;;21,"00904-5640-89 ")
 ;;1306
 ;;21,"00904-5642-89 ")
 ;;1610
 ;;21,"00904-5701-61 ")
 ;;482
 ;;21,"00904-5808-43 ")
 ;;1252
 ;;21,"00904-5808-46 ")
 ;;1253
 ;;21,"00904-5808-48 ")
 ;;1254
 ;;21,"00904-5808-61 ")
 ;;1255
 ;;21,"00904-5808-80 ")
 ;;1256
 ;;21,"00904-5808-89 ")
 ;;1257
 ;;21,"00904-5808-93 ")
 ;;1258
 ;;21,"00904-5809-43 ")
 ;;1293
 ;;21,"00904-5809-46 ")
 ;;1294
 ;;21,"00904-5809-48 ")
 ;;1295
 ;;21,"00904-5809-61 ")
 ;;1296
 ;;21,"00904-5809-80 ")
 ;;1297
 ;;21,"00904-5809-89 ")
 ;;1298
 ;;21,"00904-5809-93 ")
 ;;1299
 ;;21,"00904-5810-43 ")
 ;;1616
 ;;21,"00904-5810-46 ")
 ;;1617
 ;;21,"00904-5810-48 ")
 ;;1618
 ;;21,"00904-5810-52 ")
 ;;1619
 ;;21,"00904-5810-61 ")
 ;;1620
 ;;21,"00904-5810-80 ")
 ;;1621
 ;;21,"00904-5810-89 ")
 ;;1622
 ;;21,"00904-5810-93 ")
 ;;1623
 ;;21,"00904-5811-43 ")
 ;;1047
 ;;21,"00904-5811-46 ")
 ;;1048
 ;;21,"00904-5811-61 ")
 ;;1049
 ;;21,"00904-5811-80 ")
 ;;1050
 ;;21,"00904-5811-89 ")
 ;;1051
 ;;21,"00904-6189-40 ")
 ;;10
 ;;21,"00904-6190-40 ")
 ;;55
 ;;21,"00904-6191-40 ")
 ;;137
 ;;21,"00904-6192-40 ")
 ;;207
 ;;21,"00955-1040-30 ")
 ;;2094
 ;;21,"00955-1040-90 ")
 ;;2095
 ;;21,"00955-1041-30 ")
 ;;2159
 ;;21,"00955-1041-90 ")
 ;;2160
 ;;21,"00955-1042-30 ")
 ;;2222
 ;;21,"00955-1042-90 ")
 ;;2223
 ;;21,"00955-1045-30 ")
 ;;3305
 ;;21,"00955-1045-90 ")
 ;;3306
 ;;21,"00955-1046-30 ")
 ;;3329
 ;;21,"00955-1046-90 ")
 ;;3330
 ;;21,"10544-0170-30 ")
 ;;584
 ;;21,"10544-0237-30 ")
 ;;3082
 ;;21,"10544-0238-60 ")
 ;;1161
 ;;21,"10544-0239-60 ")
 ;;1420
 ;;21,"10544-0240-30 ")
 ;;1523
 ;;21,"10544-0564-30 ")
 ;;3020
 ;;21,"13411-0106-01 ")
 ;;2125
 ;;21,"13411-0106-03 ")
 ;;2126
 ;;21,"13411-0106-06 ")
 ;;2127
 ;;21,"13411-0106-09 ")
 ;;2128
 ;;21,"13411-0106-15 ")
 ;;2129
 ;;21,"13411-0107-01 ")
 ;;2184
 ;;21,"13411-0107-03 ")
 ;;2185
 ;;21,"13411-0107-06 ")
 ;;2186
 ;;21,"13411-0107-09 ")
 ;;2187
 ;;21,"13411-0107-15 ")
 ;;2188
 ;;21,"13411-0142-01 ")
 ;;2548
 ;;21,"13411-0142-02 ")
 ;;2549
 ;;21,"13411-0142-03 ")
 ;;2550
 ;;21,"13411-0142-06 ")
 ;;2551
 ;;21,"13411-0142-09 ")
 ;;2552
 ;;21,"13411-0143-01 ")
 ;;2563
 ;;21,"13411-0143-02 ")
 ;;2564
 ;;21,"13411-0143-03 ")
 ;;2565
 ;;21,"13411-0143-06 ")
 ;;2566
 ;;21,"13411-0143-09 ")
 ;;2567
 ;;21,"13411-0144-01 ")
 ;;3572
 ;;21,"13411-0144-02 ")
 ;;3573
 ;;21,"13411-0144-03 ")
 ;;3574
 ;;21,"13411-0144-06 ")
 ;;3575
 ;;21,"13411-0144-09 ")
 ;;3576
 ;;21,"13411-0145-01 ")
 ;;3614
 ;;21,"13411-0145-02 ")
 ;;3615
 ;;21,"13411-0145-03 ")
 ;;3616
 ;;21,"13411-0145-06 ")
 ;;3617
 ;;21,"13411-0145-09 ")
 ;;3618
 ;;21,"13411-0156-01 ")
 ;;3646
 ;;21,"13411-0156-02 ")
 ;;3647
 ;;21,"13411-0156-03 ")
 ;;3648
 ;;21,"13411-0156-06 ")
 ;;3649
 ;;21,"13411-0156-09 ")
 ;;3650
 ;;21,"13411-0184-02 ")
 ;;328
 ;;21,"13411-0184-03 ")
 ;;329
 ;;21,"13411-0184-06 ")
 ;;330
 ;;21,"13411-0184-09 ")
 ;;331
 ;;21,"13411-0184-10 ")
 ;;332
 ;;21,"13668-0113-10 ")
 ;;2255
 ;;21,"13668-0113-90 ")
 ;;2256
 ;;21,"13668-0115-10 ")
 ;;2418
 ;;21,"13668-0115-30 ")
 ;;2419
 ;;21,"13668-0115-90 ")
 ;;2420
 ;;21,"13668-0116-10 ")
 ;;3365
 ;;21,"13668-0116-30 ")
 ;;3366
 ;;21,"13668-0116-90 ")
 ;;3367
 ;;21,"13668-0117-10 ")
 ;;3420
 ;;21,"13668-0117-30 ")
 ;;3421
 ;;21,"13668-0117-90 ")
 ;;3422
 ;;21,"13668-0118-10 ")
 ;;3472
 ;;21,"13668-0118-30 ")
 ;;3473
 ;;21,"13668-0118-90 ")
 ;;3474
 ;;21,"13668-0409-10 ")
 ;;2338
 ;;21,"13668-0409-30 ")
 ;;2339
 ;;21,"13668-0409-90 ")
 ;;2340
 ;;21,"13811-0627-10 ")
 ;;14
 ;;21,"13811-0628-10 ")
 ;;48
 ;;21,"13811-0628-50 ")
 ;;49
 ;;21,"13811-0629-10 ")
 ;;93
 ;;21,"13811-0629-50 ")
 ;;94
 ;;21,"13811-0630-10 ")
 ;;184
 ;;21,"13811-0630-50 ")
 ;;185
 ;;21,"15338-0200-30 ")
 ;;434
 ;;21,"15338-0211-30 ")
 ;;488
 ;;21,"15338-0220-30 ")
 ;;600
 ;;21,"15338-0222-30 ")
 ;;601
 ;;21,"15338-0233-30 ")
 ;;683
 ;;21,"16252-0541-30 ")
 ;;1994
 ;;21,"16252-0542-90 ")
 ;;2006
 ;;21,"16252-0543-90 ")
 ;;2020
 ;;21,"16252-0570-30 ")
 ;;1830
 ;;21,"16252-0571-01 ")
 ;;1868
 ;;21,"16252-0571-50 ")
 ;;1869
 ;;21,"16252-0572-01 ")
 ;;1923
 ;;21,"16252-0572-50 ")
 ;;1924
 ;;21,"16252-0573-01 ")
 ;;1975
 ;;21,"16252-0573-50 ")
 ;;1976
 ;;21,"16252-0610-01 ")
 ;;1678
 ;;21,"16252-0611-01 ")
 ;;1686
 ;;21,"16252-0612-01 ")
 ;;3164
 ;;21,"16252-0613-01 ")
 ;;3170
 ;;21,"16252-0614-01 ")
 ;;3176
 ;;21,"16571-0500-50 ")
 ;;2271
 ;;21,"16571-0501-11 ")
 ;;2352
 ;;21,"16571-0502-11 ")
 ;;2430
 ;;21,"16590-0259-30 ")
 ;;88
 ;;21,"16590-0280-30 ")
 ;;31
 ;;21,"16590-0306-30 ")
 ;;1143
 ;;21,"16590-0306-60 ")
 ;;1144
 ;;21,"16590-0306-90 ")
 ;;1145
 ;;21,"16590-0307-30 ")
 ;;1441
 ;;21,"16590-0307-60 ")
 ;;1442
 ;;21,"16590-0307-90 ")
 ;;1443
 ;;21,"16590-0309-30 ")
 ;;3094
 ;;21,"16590-0309-60 ")
 ;;3095
 ;;21,"16590-0309-72 ")
 ;;3096
 ;;21,"16590-0309-90 ")
 ;;3097
 ;;21,"16590-0312-30 ")
 ;;3566
 ;;21,"16590-0332-30 ")
 ;;3659
 ;;21,"16590-0356-30 ")
 ;;1611
 ;;21,"16590-0356-60 ")
 ;;1612
 ;;21,"16590-0360-30 ")
 ;;1613
 ;;21,"16590-0360-60 ")
 ;;1614
 ;;21,"16590-0360-90 ")
 ;;1615
 ;;21,"16590-0392-30 ")
 ;;676
 ;;21,"16590-0392-60 ")
 ;;677
 ;;21,"16590-0392-90 ")
 ;;678
 ;;21,"16590-0954-60 ")
 ;;3488
 ;;21,"16714-0224-01 ")
 ;;3430
 ;;21,"16714-0224-02 ")
 ;;3431
 ;;21,"16714-0225-01 ")
 ;;3485
 ;;21,"16714-0225-02 ")
 ;;3486
 ;;21,"16714-0225-04 ")
 ;;3487
 ;;21,"16714-0226-01 ")
 ;;3377
 ;;21,"16714-0226-02 ")
 ;;3378
 ;;21,"16714-0226-04 ")
 ;;3379
 ;;21,"16714-0581-02 ")
 ;;2248
 ;;21,"16714-0581-03 ")
 ;;2249
 ;;21,"16714-0582-01 ")
 ;;2323
 ;;21,"16714-0582-02 ")
 ;;2324
 ;;21,"16714-0582-03 ")
 ;;2325
 ;;21,"16714-0583-01 ")
 ;;2406
 ;;21,"16714-0583-02 ")
 ;;2407
 ;;21,"16714-0583-03 ")
 ;;2408
 ;;21,"21695-0326-30 ")
 ;;71
 ;;21,"21695-0326-60 ")
 ;;72
 ;;21,"21695-0326-90 ")
 ;;73
 ;;21,"21695-0327-30 ")
 ;;122
 ;;21,"21695-0327-60 ")
 ;;123
 ;;21,"21695-0327-90 ")
 ;;124
 ;;21,"21695-0328-30 ")
 ;;1052
 ;;21,"21695-0328-90 ")
 ;;1053
 ;;21,"21695-0329-30 ")
 ;;1239
 ;;21,"21695-0329-78 ")
 ;;1240
 ;;21,"21695-0329-90 ")
 ;;1241
 ;;21,"21695-0330-20 ")
 ;;1307
 ;;21,"21695-0330-30 ")
 ;;1308
 ;;21,"21695-0330-60 ")
 ;;1309
 ;;21,"21695-0330-90 ")
 ;;1310
 ;;21,"21695-0331-30 ")
 ;;1606
 ;;21,"21695-0331-40 ")
 ;;1607
 ;;21,"21695-0331-60 ")
 ;;1608
 ;;21,"21695-0331-90 ")
 ;;1609
 ;;21,"21695-0345-30 ")
 ;;917
 ;;21,"21695-0345-90 ")
 ;;918
 ;;21,"21695-0393-30 ")
 ;;1715
 ;;21,"21695-0394-30 ")
 ;;1738
 ;;21,"21695-0477-30 ")
 ;;307
 ;;21,"21695-0477-78 ")
 ;;308
 ;;21,"21695-0478-30 ")
 ;;337
 ;;21,"21695-0487-30 ")
 ;;456
 ;;21,"21695-0487-90 ")
 ;;457
 ;;21,"21695-0488-30 ")
 ;;549
 ;;21,"21695-0488-60 ")
 ;;550
 ;;21,"21695-0488-90 ")
 ;;551
 ;;21,"21695-0489-30 ")
 ;;650
 ;;21,"21695-0489-90 ")
 ;;651
 ;;21,"21695-0612-90 ")
 ;;3
 ;;21,"21695-0687-30 ")
 ;;3364
 ;;21,"21695-0714-30 ")
 ;;2336
 ;;21,"21695-0714-90 ")
 ;;2337
 ;;21,"21695-0717-30 ")
 ;;2415
 ;;21,"21695-0717-45 ")
 ;;2416
 ;;21,"21695-0717-90 ")
 ;;2417
 ;;21,"21695-0733-30 ")
 ;;2940
 ;;21,"21695-0734-30 ")
 ;;3016
 ;;21,"21695-0734-60 ")
 ;;3017
 ;;21,"21695-0734-90 ")
 ;;3018
 ;;21,"21695-0735-30 ")
 ;;3103
 ;;21,"21695-0735-60 ")
 ;;3104
 ;;21,"21695-0735-90 ")
 ;;3105
 ;;21,"21695-0780-30 ")
 ;;2909
 ;;21,"21695-0788-90 ")
 ;;3462
 ;;21,"21695-0821-30 ")
 ;;1842
 ;;21,"21695-0821-90 ")
 ;;1843
 ;;21,"21695-0822-30 ")
 ;;1888
 ;;21,"21695-0822-60 ")
 ;;1889
 ;;21,"21695-0822-78 ")
 ;;1890
 ;;21,"21695-0822-90 ")
 ;;1891
 ;;21,"21695-0823-30 ")
 ;;1948
 ;;21,"21695-0823-60 ")
 ;;1949
 ;;21,"21695-0831-30 ")
 ;;3489
 ;;21,"21695-0831-90 ")
 ;;3490
 ;;21,"21695-0866-90 ")
 ;;2658
 ;;21,"21695-0877-30 ")
 ;;174
 ;;21,"21695-0877-90 ")
 ;;175
 ;;21,"21695-0916-30 ")
 ;;2785
 ;;21,"21695-0916-90 ")
 ;;2786
 ;;21,"21695-0917-90 ")
 ;;2547
 ;;21,"21695-0918-90 ")
 ;;2568
 ;;21,"21695-0919-90 ")
 ;;2598
 ;;21,"21695-0966-30 ")
 ;;3429
 ;;21,"21695-0989-30 ")
 ;;2250
 ;;21,"23155-0060-01 ")
 ;;2916
 ;;21,"23155-0061-01 ")
 ;;2931
 ;;21,"23490-0107-03 ")
 ;;2077
 ;;21,"23490-0108-03 ")
 ;;2124
 ;;21,"23490-0109-09 ")
 ;;2189
 ;;21,"23490-5118-01 ")
 ;;54
 ;;21,"23490-5119-01 ")
 ;;138
 ;;21,"23490-5119-02 ")
 ;;139
 ;;21,"23490-5120-03 ")
 ;;202
 ;;21,"23490-5120-09 ")
 ;;203
 ;;21,"23490-5121-01 ")
 ;;11
 ;;21,"23490-5191-01 ")
 ;;403
 ;;21,"23490-5192-01 ")
 ;;232
 ;;21,"23490-5193-01 ")
 ;;287
 ;;21,"23490-5193-02 ")
 ;;288
 ;;21,"23490-5193-03 ")
 ;;289
 ;;21,"23490-5194-00 ")
 ;;350
 ;;21,"23490-5194-01 ")
 ;;351
 ;;21,"23490-5194-02 ")
 ;;352
 ;;21,"23490-5491-01 ")
 ;;585
 ;;21,"23490-5491-02 ")
 ;;586
 ;;21,"23490-5491-08 ")
 ;;587
 ;;21,"23490-5491-09 ")
 ;;588
 ;;21,"23490-5492-01 ")
 ;;689
 ;;21,"23490-5492-02 ")
 ;;690
 ;;21,"23490-5494-01 ")
 ;;494
 ;;21,"23490-5494-02 ")
 ;;495
 ;;21,"23490-5815-00 ")
 ;;1162
 ;;21,"23490-5815-01 ")
 ;;1163
 ;;21,"23490-5815-06 ")
 ;;1164
 ;;21,"23490-5815-09 ")
 ;;1165
 ;;21,"23490-5816-01 ")
 ;;1422
 ;;21,"23490-5816-02 ")
 ;;1423
 ;;21,"23490-5816-06 ")
 ;;1424
 ;;21,"23490-5817-02 ")
 ;;883
 ;;21,"23490-5818-02 ")
 ;;1524
 ;;21,"23490-5818-09 ")
 ;;1525
 ;;21,"23490-5819-02 ")
 ;;938
 ;;21,"23490-5819-09 ")
 ;;939
 ;;21,"23490-5820-01 ")
 ;;2960
 ;;21,"23490-5820-03 ")
 ;;2961
 ;;21,"23490-5820-04 ")
 ;;2962
 ;;21,"23490-5821-01 ")
 ;;3021
 ;;21,"23490-5821-09 ")
 ;;3022
 ;;21,"23490-5822-01 ")
 ;;3083
 ;;21,"23490-7060-01 ")
 ;;2674
 ;;21,"23490-7062-01 ")
 ;;2795
 ;;21,"23490-7590-01 ")
 ;;2535
 ;;21,"23490-7591-01 ")
 ;;2574
 ;;21,"23490-7594-01 ")
 ;;3604
 ;;21,"23490-9364-03 ")
 ;;1802
 ;;21,"23490-9409-03 ")
 ;;2473
 ;;21,"23490-9409-09 ")
 ;;2474
 ;;21,"23490-9410-03 ")
 ;;2488
 ;;21,"23490-9410-09 ")
 ;;2489
 ;;21,"23490-9411-03 ")
 ;;2519
 ;;21,"23490-9411-09 ")
 ;;2520
 ;;21,"23490-9412-03 ")
 ;;2539
 ;;21,"23490-9412-09 ")
 ;;2540
 ;;21,"23490-9462-01 ")
 ;;2251
 ;;21,"23490-9463-01 ")
 ;;2328
 ;;21,"23490-9464-09 ")
 ;;2409
 ;;21,"23490-9466-03 ")
 ;;3434
 ;;21,"23490-9467-01 ")
 ;;3482
 ;;21,"23490-9600-03 ")
 ;;1852
 ;;21,"23490-9600-09 ")
 ;;1853