BGP48B4 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 17, 2014;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"62037-0873-05 ")
 ;;728
 ;;21,"62682-5002-01 ")
 ;;343
 ;;21,"62682-5004-03 ")
 ;;516
 ;;21,"62682-5006-03 ")
 ;;858
 ;;21,"63304-0425-01 ")
 ;;84
 ;;21,"63304-0426-01 ")
 ;;135
 ;;21,"63304-0427-01 ")
 ;;238
 ;;21,"63629-1255-01 ")
 ;;217
 ;;21,"63629-1255-02 ")
 ;;218
 ;;21,"63629-1392-01 ")
 ;;1379
 ;;21,"63629-1392-02 ")
 ;;1380
 ;;21,"63629-1392-03 ")
 ;;1381
 ;;21,"63629-1393-01 ")
 ;;1061
 ;;21,"63629-1393-02 ")
 ;;1062
 ;;21,"63629-1393-03 ")
 ;;1063
 ;;21,"63629-1393-04 ")
 ;;1064
 ;;21,"63629-1394-01 ")
 ;;466
 ;;21,"63629-1394-02 ")
 ;;467
 ;;21,"63629-1394-03 ")
 ;;468
 ;;21,"63629-1398-01 ")
 ;;325
 ;;21,"63629-1398-02 ")
 ;;326
 ;;21,"63629-1398-03 ")
 ;;327
 ;;21,"63629-2793-01 ")
 ;;1437
 ;;21,"63629-2793-03 ")
 ;;1438
 ;;21,"63629-2793-04 ")
 ;;1439
 ;;21,"63629-2793-05 ")
 ;;1440
 ;;21,"63629-2907-01 ")
 ;;813
 ;;21,"63629-2907-02 ")
 ;;814
 ;;21,"63629-3043-01 ")
 ;;113
 ;;21,"63629-3043-02 ")
 ;;114
 ;;21,"63629-3158-01 ")
 ;;686
 ;;21,"63629-3158-02 ")
 ;;687
 ;;21,"63629-3158-03 ")
 ;;688
 ;;21,"63629-3397-03 ")
 ;;1138
 ;;21,"63629-3998-01 ")
 ;;1319
 ;;21,"63629-4071-01 ")
 ;;643
 ;;21,"63739-0116-01 ")
 ;;328
 ;;21,"63739-0116-02 ")
 ;;329
 ;;21,"63739-0116-03 ")
 ;;330
 ;;21,"63739-0116-10 ")
 ;;331
 ;;21,"63739-0116-15 ")
 ;;332
 ;;21,"63739-0117-01 ")
 ;;499
 ;;21,"63739-0117-02 ")
 ;;500
 ;;21,"63739-0117-03 ")
 ;;501
 ;;21,"63739-0117-10 ")
 ;;502
 ;;21,"63739-0117-15 ")
 ;;503
 ;;21,"63739-0118-01 ")
 ;;868
 ;;21,"63739-0118-02 ")
 ;;869
 ;;21,"63739-0118-03 ")
 ;;870
 ;;21,"63739-0118-10 ")
 ;;871
 ;;21,"63739-0118-15 ")
 ;;872
 ;;21,"63739-0119-01 ")
 ;;927
 ;;21,"63739-0119-02 ")
 ;;928
 ;;21,"63739-0119-03 ")
 ;;929
 ;;21,"63739-0119-10 ")
 ;;930
 ;;21,"63739-0119-15 ")
 ;;931
 ;;21,"63874-0316-01 ")
 ;;252
 ;;21,"63874-0316-02 ")
 ;;274
 ;;21,"63874-0316-04 ")
 ;;275
 ;;21,"63874-0316-05 ")
 ;;276
 ;;21,"63874-0316-10 ")
 ;;277
 ;;21,"63874-0316-12 ")
 ;;278
 ;;21,"63874-0316-14 ")
 ;;279
 ;;21,"63874-0316-15 ")
 ;;280
 ;;21,"63874-0316-20 ")
 ;;281
 ;;21,"63874-0316-21 ")
 ;;282
 ;;21,"63874-0316-24 ")
 ;;283
 ;;21,"63874-0316-28 ")
 ;;284
 ;;21,"63874-0316-30 ")
 ;;285
 ;;21,"63874-0316-50 ")
 ;;286
 ;;21,"63874-0316-60 ")
 ;;287
 ;;21,"63874-0316-81 ")
 ;;288
 ;;21,"63874-0316-90 ")
 ;;289
 ;;21,"63874-0317-01 ")
 ;;1066
 ;;21,"63874-0317-02 ")
 ;;1067
 ;;21,"63874-0317-04 ")
 ;;1068
 ;;21,"63874-0317-10 ")
 ;;1069
 ;;21,"63874-0317-12 ")
 ;;1070
 ;;21,"63874-0317-14 ")
 ;;1071
 ;;21,"63874-0317-15 ")
 ;;1072
 ;;21,"63874-0317-20 ")
 ;;1073
 ;;21,"63874-0317-24 ")
 ;;1074
 ;;21,"63874-0317-28 ")
 ;;1075
 ;;21,"63874-0317-30 ")
 ;;1076
 ;;21,"63874-0317-40 ")
 ;;1077
 ;;21,"63874-0317-50 ")
 ;;1078
 ;;21,"63874-0317-60 ")
 ;;1079
 ;;21,"63874-0317-90 ")
 ;;1080
 ;;21,"63874-0357-01 ")
 ;;38
 ;;21,"63874-0357-02 ")
 ;;39
 ;;21,"63874-0357-10 ")
 ;;40
 ;;21,"63874-0357-12 ")
 ;;41
 ;;21,"63874-0357-14 ")
 ;;42
 ;;21,"63874-0357-15 ")
 ;;43
 ;;21,"63874-0357-20 ")
 ;;44
 ;;21,"63874-0357-21 ")
 ;;45
 ;;21,"63874-0357-24 ")
 ;;46
 ;;21,"63874-0357-30 ")
 ;;47
 ;;21,"63874-0357-40 ")
 ;;48
 ;;21,"63874-0357-60 ")
 ;;49
 ;;21,"63874-0432-01 ")
 ;;547
 ;;21,"63874-0432-02 ")
 ;;548
 ;;21,"63874-0432-04 ")
 ;;549
 ;;21,"63874-0432-10 ")
 ;;550
 ;;21,"63874-0432-14 ")
 ;;551
 ;;21,"63874-0432-20 ")
 ;;552
 ;;21,"63874-0432-21 ")
 ;;553
 ;;21,"63874-0432-24 ")
 ;;554
 ;;21,"63874-0432-28 ")
 ;;555
 ;;21,"63874-0432-30 ")
 ;;556
 ;;21,"63874-0432-50 ")
 ;;557
 ;;21,"63874-0432-60 ")
 ;;558
 ;;21,"63874-0432-81 ")
 ;;559
 ;;21,"63874-0432-90 ")
 ;;560
 ;;21,"63874-0588-01 ")
 ;;815
 ;;21,"63874-0588-04 ")
 ;;816
 ;;21,"63874-0588-10 ")
 ;;817
 ;;21,"63874-0588-14 ")
 ;;818
 ;;21,"63874-0588-20 ")
 ;;819
 ;;21,"63874-0588-30 ")
 ;;820
 ;;21,"63874-0588-60 ")
 ;;821
 ;;21,"63874-0588-80 ")
 ;;822
 ;;21,"63874-0588-90 ")
 ;;823
 ;;21,"63874-0665-01 ")
 ;;761
 ;;21,"63874-0665-04 ")
 ;;762
 ;;21,"63874-0665-10 ")
 ;;763
 ;;21,"63874-0665-14 ")
 ;;764
 ;;21,"63874-0665-30 ")
 ;;765
 ;;21,"63874-0665-60 ")
 ;;766
 ;;21,"63874-0665-90 ")
 ;;767
 ;;21,"64720-0123-10 ")
 ;;759
 ;;21,"64720-0124-10 ")
 ;;855
 ;;21,"64720-0125-10 ")
 ;;1003
 ;;21,"64720-0125-11 ")
 ;;1004
 ;;21,"64764-0302-30 ")
 ;;1512
 ;;21,"64764-0304-30 ")
 ;;1514
 ;;21,"64909-0101-07 ")
 ;;1143
 ;;21,"64909-0102-07 ")
 ;;1177
 ;;21,"64909-0102-08 ")
 ;;1178
 ;;21,"64909-0104-07 ")
 ;;1187
 ;;21,"64909-0105-07 ")
 ;;1216
 ;;21,"64909-0105-08 ")
 ;;1217
 ;;21,"65243-0176-09 ")
 ;;1091
 ;;21,"65243-0176-12 ")
 ;;1092
 ;;21,"65243-0176-18 ")
 ;;1093
 ;;21,"65243-0176-27 ")
 ;;1094
 ;;21,"65243-0176-36 ")
 ;;1095
 ;;21,"65243-0183-18 ")
 ;;444
 ;;21,"65243-0185-36 ")
 ;;1090
 ;;21,"65243-0325-09 ")
 ;;808
 ;;21,"65243-0325-18 ")
 ;;809
 ;;21,"65243-0343-09 ")
 ;;1018
 ;;21,"65243-0343-36 ")
 ;;1019
 ;;21,"65243-0346-09 ")
 ;;239
 ;;21,"65243-0375-09 ")
 ;;807
 ;;21,"65243-0378-09 ")
 ;;240
 ;;21,"65862-0028-01 ")
 ;;758
 ;;21,"65862-0029-01 ")
 ;;856
 ;;21,"65862-0029-05 ")
 ;;857
 ;;21,"65862-0030-01 ")
 ;;1001
 ;;21,"65862-0030-99 ")
 ;;1002
 ;;21,"65862-0080-01 ")
 ;;1317
 ;;21,"65862-0080-05 ")
 ;;1318
 ;;21,"65862-0081-01 ")
 ;;1377
 ;;21,"65862-0081-05 ")
 ;;1378
 ;;21,"65862-0082-01 ")
 ;;1429
 ;;21,"65862-0082-05 ")
 ;;1430
 ;;21,"66105-0984-03 ")
 ;;779
 ;;21,"66105-0984-06 ")
 ;;780
 ;;21,"66105-0984-10 ")
 ;;781
 ;;21,"66105-0984-11 ")
 ;;782
 ;;21,"66105-0984-50 ")
 ;;783
 ;;21,"66105-0985-03 ")
 ;;802
 ;;21,"66105-0985-06 ")
 ;;803
 ;;21,"66105-0985-10 ")
 ;;804
 ;;21,"66105-0985-11 ")
 ;;805
 ;;21,"66105-0985-50 ")
 ;;806
 ;;21,"66105-0986-03 ")
 ;;1020
 ;;21,"66105-0986-06 ")
 ;;1021
 ;;21,"66105-0986-10 ")
 ;;1022
 ;;21,"66105-0986-11 ")
 ;;1023
 ;;21,"66105-0986-50 ")
 ;;1024
 ;;21,"66116-0233-30 ")
 ;;1347
 ;;21,"66116-0440-30 ")
 ;;914
 ;;21,"66267-0099-30 ")
 ;;475
 ;;21,"66267-0100-30 ")
 ;;256
 ;;21,"66267-0100-60 ")
 ;;257
 ;;21,"66267-0100-90 ")
 ;;258
 ;;21,"66267-0100-91 ")
 ;;259
 ;;21,"66267-0100-92 ")
 ;;260
 ;;21,"66267-0103-30 ")
 ;;1065
 ;;21,"66336-0028-30 ")
 ;;810
 ;;21,"66336-0028-90 ")
 ;;811
 ;;21,"66336-0269-30 ")
 ;;729
 ;;21,"66336-0269-90 ")
 ;;730
 ;;21,"66336-0319-30 ")
 ;;1417
 ;;21,"66336-0534-30 ")
 ;;68
 ;;21,"66336-0534-90 ")
 ;;69
 ;;21,"66336-0535-30 ")
 ;;132
 ;;21,"66336-0535-60 ")
 ;;133
 ;;21,"66336-0535-90 ")
 ;;134
 ;;21,"66336-0573-30 ")
 ;;197
 ;;21,"66336-0573-60 ")
 ;;198
 ;;21,"66336-0573-90 ")
 ;;199
 ;;21,"66336-0662-30 ")
 ;;445
 ;;21,"66336-0662-60 ")
 ;;446
 ;;21,"66336-0662-90 ")
 ;;447
 ;;21,"66336-0662-94 ")
 ;;448
 ;;21,"66336-0712-90 ")
 ;;1200
 ;;21,"66336-0730-14 ")
 ;;312
 ;;21,"66336-0730-30 ")
 ;;313
 ;;21,"66336-0730-60 ")
 ;;314
 ;;21,"66336-0730-90 ")
 ;;315
 ;;21,"66336-0784-30 ")
 ;;1474
 ;;21,"66336-0784-60 ")
 ;;1460
 ;;21,"66336-0784-90 ")
 ;;1461
 ;;21,"66336-0850-30 ")
 ;;1374
 ;;21,"66336-0850-60 ")
 ;;1363
 ;;21,"66336-0850-90 ")
 ;;1364
 ;;21,"66336-0938-30 ")
 ;;957
 ;;21,"66336-0938-60 ")
 ;;958
 ;;21,"66336-0938-90 ")
 ;;959
 ;;21,"66993-0162-02 ")
 ;;67
 ;;21,"66993-0163-02 ")
 ;;147
 ;;21,"66993-0164-02 ")
 ;;225
 ;;21,"67253-0460-10 ")
 ;;1133
 ;;21,"67253-0460-11 ")
 ;;1134
 ;;21,"67253-0460-50 ")
 ;;1135
 ;;21,"67253-0461-10 ")
 ;;1167
 ;;21,"67253-0461-11 ")
 ;;1168
 ;;21,"67253-0461-50 ")
 ;;1169
 ;;21,"67253-0462-10 ")
 ;;1188
 ;;21,"67253-0462-11 ")
 ;;1189
 ;;21,"67253-0462-50 ")
 ;;1190
 ;;21,"67263-0193-01 ")
 ;;53
 ;;21,"67544-0097-53 ")
 ;;469
 ;;21,"67544-0097-60 ")
 ;;470
 ;;21,"67544-0097-70 ")
 ;;471
 ;;21,"67544-0097-80 ")
 ;;472
 ;;21,"67544-0097-92 ")
 ;;473
 ;;21,"67544-0097-94 ")
 ;;474
 ;;21,"67544-0098-53 ")
 ;;1108
 ;;21,"67544-0098-60 ")
 ;;1109
 ;;21,"67544-0098-70 ")
 ;;1110
 ;;21,"67544-0098-80 ")
 ;;1111
 ;;21,"67544-0098-90 ")
 ;;1112
 ;;21,"67544-0098-92 ")
 ;;1113
 ;;21,"67544-0098-94 ")
 ;;1114
 ;;21,"67544-0129-53 ")
 ;;440
 ;;21,"67544-0129-70 ")
 ;;441
 ;;21,"67544-0129-80 ")
 ;;442
 ;;21,"67544-0129-94 ")
 ;;443
 ;;21,"67544-0199-80 ")
 ;;739
 ;;21,"67544-0296-70 ")
 ;;1414
 ;;21,"67544-0302-45 ")
 ;;344
 ;;21,"67544-0302-60 ")
 ;;345
 ;;21,"67544-0302-73 ")
 ;;346
 ;;21,"67544-0302-80 ")
 ;;347
 ;;21,"67544-0302-92 ")
 ;;348
 ;;21,"67544-0302-98 ")
 ;;349
 ;;21,"67544-0364-70 ")
 ;;1506
 ;;21,"67544-0417-70 ")
 ;;1507
 ;;21,"67544-0478-82 ")
 ;;886
 ;;21,"67544-0511-70 ")
 ;;1510
 ;;21,"67544-0511-94 ")
 ;;1431
 ;;21,"67544-0548-82 ")
 ;;786
 ;;21,"67544-0566-53 ")
 ;;1054
 ;;21,"67544-0566-60 ")
 ;;1055
 ;;21,"67544-0566-70 ")
 ;;1056
 ;;21,"67544-0566-80 ")
 ;;1057
 ;;21,"67544-0566-90 ")
 ;;1058
 ;;21,"67544-0566-92 ")
 ;;1059
 ;;21,"67544-0566-94 ")
 ;;1060
 ;;21,"67544-0613-53 ")
 ;;1047
 ;;21,"67544-0613-60 ")
 ;;1048
 ;;21,"67544-0613-70 ")
 ;;1049
 ;;21,"67544-0613-80 ")
 ;;1050
 ;;21,"67544-0613-90 ")
 ;;1051
 ;;21,"67544-0613-92 ")
 ;;1052
 ;;21,"67544-0613-94 ")
 ;;1053
 ;;21,"67544-0643-80 ")
 ;;1081
 ;;21,"67544-0643-94 ")
 ;;1082
 ;;21,"67544-0653-53 ")
 ;;1083
 ;;21,"67544-0653-60 ")
 ;;1084
 ;;21,"67544-0653-70 ")
 ;;1085
 ;;21,"67544-0653-80 ")
 ;;1086
 ;;21,"67544-0653-90 ")
 ;;1087
 ;;21,"67544-0653-92 ")
 ;;1088
 ;;21,"67544-0653-94 ")
 ;;1089
 ;;21,"67544-0653-98 ")
 ;;888
 ;;21,"67544-0661-41 ")
 ;;774
 ;;21,"67544-0661-81 ")
 ;;775
 ;;21,"67544-0751-60 ")
 ;;438
 ;;21,"67544-0751-80 ")
 ;;439
 ;;21,"67544-0756-60 ")
 ;;302
 ;;21,"67544-0756-80 ")
 ;;303
 ;;21,"67544-0808-60 ")
 ;;717
 ;;21,"67544-0875-60 ")
 ;;799
 ;;21,"67544-0875-80 ")
 ;;800
 ;;21,"67544-0927-60 ")
 ;;879
 ;;21,"67544-1129-70 ")
 ;;1475
 ;;21,"68071-0008-30 ")
 ;;628
 ;;21,"68071-0028-30 ")
 ;;1435
 ;;21,"68071-0028-60 ")
 ;;1436
 ;;21,"68071-0388-30 ")
 ;;226
 ;;21,"68071-0823-30 ")
 ;;151
 ;;21,"68084-0111-01 ")
 ;;639
 ;;21,"68084-0111-11 ")
 ;;640
 ;;21,"68084-0112-01 ")
 ;;715
 ;;21,"68084-0112-11 ")
 ;;716
 ;;21,"68084-0136-01 ")
 ;;1320
 ;;21,"68084-0136-11 ")
 ;;1321
 ;;21,"68084-0137-01 ")
 ;;1387
 ;;21,"68084-0137-11 ")
 ;;1388
 ;;21,"68084-0138-01 ")
 ;;1508
 ;;21,"68084-0138-11 ")
 ;;1509
 ;;21,"68084-0295-11 ")
 ;;611
 ;;21,"68084-0295-21 ")
 ;;612
 ;;21,"68084-0326-01 ")
 ;;101
 ;;21,"68084-0326-11 ")
 ;;102
 ;;21,"68084-0327-01 ")
 ;;168
 ;;21,"68084-0327-11 ")
 ;;169
 ;;21,"68084-0556-11 ")
 ;;1235
 ;;21,"68084-0556-21 ")
 ;;1236
 ;;21,"68115-0154-30 ")
 ;;434
 ;;21,"68115-0154-60 ")
 ;;435
 ;;21,"68115-0155-30 ")
 ;;248
 ;;21,"68115-0155-60 ")
 ;;249
 ;;21,"68115-0155-90 ")
 ;;250
 ;;21,"68115-0156-30 ")
 ;;749
 ;;21,"68115-0157-30 ")
 ;;672
 ;;21,"68115-0158-30 ")
 ;;1348
 ;;21,"68115-0158-60 ")
 ;;1349
 ;;21,"68115-0159-30 ")
 ;;1415
 ;;21,"68115-0159-60 ")
 ;;1416
 ;;21,"68115-0160-30 ")
 ;;812
 ;;21,"68115-0161-30 ")
 ;;1012
 ;;21,"68115-0161-60 ")
 ;;1013
 ;;21,"68115-0616-00 ")
 ;;663
 ;;21,"68115-0622-00 ")
 ;;1210
 ;;21,"68115-0840-00 ")
 ;;158
 ;;21,"68258-1012-01 ")
 ;;251
 ;;21,"68258-1013-01 ")
 ;;433
 ;;21,"68258-1014-01 ")
 ;;1014
 ;;21,"68258-1051-01 ")
 ;;706
 ;;21,"68645-0150-54 ")
 ;;354
 ;;21,"68645-0151-59 ")
 ;;513
 ;;21,"68645-0210-54 ")
 ;;859
 ;;21,"68645-0211-54 ")
 ;;1000
 ;;9002226,1199,.01)
 ;;BGP PQA SULFONYLUREA NDC
 ;;9002226,1199,.02)
 ;;@
 ;;9002226,1199,.04)
 ;;n
 ;;9002226,1199,.06)
 ;;@
 ;;9002226,1199,.08)
 ;;@
 ;;9002226,1199,.09)
 ;;3140317
 ;;9002226,1199,.11)
 ;;@
 ;;9002226,1199,.12)
 ;;@
 ;;9002226,1199,.13)
 ;;1
 ;;9002226,1199,.14)
 ;;@
 ;;9002226,1199,.15)
 ;;@
 ;;9002226,1199,.16)
 ;;@
 ;;9002226,1199,.17)
 ;;@
 ;;9002226,1199,3101)
 ;;@
 ;;9002226.02101,"1199,00009-0070-02 ",.01)
 ;;00009-0070-02
 ;;9002226.02101,"1199,00009-0070-02 ",.02)
 ;;00009-0070-02
 ;;9002226.02101,"1199,00009-0114-04 ",.01)
 ;;00009-0114-04
 ;;9002226.02101,"1199,00009-0114-04 ",.02)
 ;;00009-0114-04
 ;;9002226.02101,"1199,00009-0114-05 ",.01)
 ;;00009-0114-05
 ;;9002226.02101,"1199,00009-0114-05 ",.02)
 ;;00009-0114-05
 ;;9002226.02101,"1199,00009-0131-01 ",.01)
 ;;00009-0131-01
 ;;9002226.02101,"1199,00009-0131-01 ",.02)
 ;;00009-0131-01
 ;;9002226.02101,"1199,00009-0141-01 ",.01)
 ;;00009-0141-01
 ;;9002226.02101,"1199,00009-0141-01 ",.02)
 ;;00009-0141-01
 ;;9002226.02101,"1199,00009-0141-02 ",.01)
 ;;00009-0141-02
 ;;9002226.02101,"1199,00009-0141-02 ",.02)
 ;;00009-0141-02
 ;;9002226.02101,"1199,00009-0171-03 ",.01)
 ;;00009-0171-03
 ;;9002226.02101,"1199,00009-0171-03 ",.02)
 ;;00009-0171-03
 ;;9002226.02101,"1199,00009-0171-05 ",.01)
 ;;00009-0171-05
 ;;9002226.02101,"1199,00009-0171-05 ",.02)
 ;;00009-0171-05
 ;;9002226.02101,"1199,00009-0171-06 ",.01)
 ;;00009-0171-06