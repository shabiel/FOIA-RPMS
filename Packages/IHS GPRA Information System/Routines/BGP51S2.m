BGP51S2 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"42291-0606-27 ")
 ;;520
 ;;21,"42291-0606-90 ")
 ;;521
 ;;21,"42291-0607-10 ")
 ;;782
 ;;21,"42291-0607-18 ")
 ;;783
 ;;21,"42291-0607-60 ")
 ;;784
 ;;21,"42291-0607-90 ")
 ;;785
 ;;21,"42291-0610-10 ")
 ;;950
 ;;21,"42291-0610-18 ")
 ;;951
 ;;21,"42291-0610-36 ")
 ;;952
 ;;21,"42291-0610-90 ")
 ;;953
 ;;21,"42291-0611-18 ")
 ;;981
 ;;21,"42291-0612-10 ")
 ;;318
 ;;21,"42291-0612-12 ")
 ;;319
 ;;21,"42291-0612-18 ")
 ;;320
 ;;21,"42291-0612-27 ")
 ;;321
 ;;21,"42291-0612-36 ")
 ;;322
 ;;21,"42291-0612-45 ")
 ;;323
 ;;21,"42291-0612-60 ")
 ;;324
 ;;21,"42291-0612-90 ")
 ;;325
 ;;21,"42291-0613-10 ")
 ;;514
 ;;21,"42291-0613-18 ")
 ;;515
 ;;21,"42291-0613-27 ")
 ;;516
 ;;21,"42291-0613-90 ")
 ;;517
 ;;21,"42291-0614-10 ")
 ;;786
 ;;21,"42291-0614-18 ")
 ;;787
 ;;21,"42291-0614-60 ")
 ;;788
 ;;21,"42291-0614-90 ")
 ;;789
 ;;21,"42291-0693-60 ")
 ;;1275
 ;;21,"42291-0694-60 ")
 ;;1290
 ;;21,"43063-0012-01 ")
 ;;312
 ;;21,"43063-0012-60 ")
 ;;313
 ;;21,"43063-0012-86 ")
 ;;314
 ;;21,"43063-0012-90 ")
 ;;315
 ;;21,"43063-0012-93 ")
 ;;316
 ;;21,"43063-0012-94 ")
 ;;317
 ;;21,"43063-0372-30 ")
 ;;982
 ;;21,"43063-0397-86 ")
 ;;1241
 ;;21,"43063-0428-30 ")
 ;;957
 ;;21,"43063-0428-90 ")
 ;;946
 ;;21,"43063-0428-93 ")
 ;;947
 ;;21,"43063-0428-94 ")
 ;;948
 ;;21,"43063-0429-93 ")
 ;;507
 ;;21,"43063-0429-94 ")
 ;;508
 ;;21,"43063-0430-30 ")
 ;;799
 ;;21,"43063-0430-60 ")
 ;;800
 ;;21,"43063-0430-90 ")
 ;;801
 ;;21,"43063-0430-93 ")
 ;;802
 ;;21,"43063-0430-94 ")
 ;;803
 ;;21,"43063-0430-98 ")
 ;;804
 ;;21,"43063-0507-30 ")
 ;;509
 ;;21,"43063-0507-60 ")
 ;;510
 ;;21,"43063-0507-90 ")
 ;;511
 ;;21,"43353-0340-30 ")
 ;;334
 ;;21,"43353-0340-53 ")
 ;;335
 ;;21,"43353-0340-60 ")
 ;;336
 ;;21,"43353-0340-70 ")
 ;;337
 ;;21,"43353-0340-75 ")
 ;;338
 ;;21,"43353-0340-80 ")
 ;;339
 ;;21,"43353-0340-92 ")
 ;;340
 ;;21,"43353-0340-94 ")
 ;;341
 ;;21,"43353-0340-96 ")
 ;;342
 ;;21,"43353-0344-53 ")
 ;;503
 ;;21,"43353-0344-60 ")
 ;;504
 ;;21,"43353-0344-80 ")
 ;;505
 ;;21,"43353-0344-92 ")
 ;;506
 ;;21,"43353-0349-30 ")
 ;;805
 ;;21,"43353-0349-45 ")
 ;;806
 ;;21,"43353-0349-53 ")
 ;;807
 ;;21,"43353-0349-60 ")
 ;;808
 ;;21,"43353-0349-73 ")
 ;;809
 ;;21,"43353-0349-80 ")
 ;;810
 ;;21,"43353-0349-86 ")
 ;;811
 ;;21,"43353-0477-30 ")
 ;;326
 ;;21,"43353-0477-53 ")
 ;;327
 ;;21,"43353-0477-60 ")
 ;;328
 ;;21,"43353-0477-70 ")
 ;;329
 ;;21,"43353-0477-80 ")
 ;;330
 ;;21,"43353-0477-92 ")
 ;;331
 ;;21,"43353-0477-94 ")
 ;;332
 ;;21,"43353-0477-96 ")
 ;;333
 ;;21,"43353-0514-30 ")
 ;;790
 ;;21,"43353-0514-45 ")
 ;;791
 ;;21,"43353-0514-53 ")
 ;;792
 ;;21,"43353-0514-60 ")
 ;;793
 ;;21,"43353-0514-73 ")
 ;;794
 ;;21,"43353-0514-80 ")
 ;;795
 ;;21,"43353-0514-86 ")
 ;;796
 ;;21,"43353-0520-60 ")
 ;;797
 ;;21,"43353-0520-80 ")
 ;;798
 ;;21,"43353-0530-60 ")
 ;;512
 ;;21,"43353-0530-80 ")
 ;;513
 ;;21,"43353-0585-94 ")
 ;;949
 ;;21,"43353-0589-30 ")
 ;;343
 ;;21,"43353-0589-53 ")
 ;;344
 ;;21,"43353-0589-60 ")
 ;;345
 ;;21,"43353-0589-70 ")
 ;;346
 ;;21,"43353-0589-75 ")
 ;;347
 ;;21,"43353-0589-80 ")
 ;;348
 ;;21,"43353-0589-92 ")
 ;;77
 ;;21,"43353-0589-94 ")
 ;;78
 ;;21,"43353-0589-96 ")
 ;;79
 ;;21,"43353-0811-53 ")
 ;;392
 ;;21,"43353-0842-30 ")
 ;;80
 ;;21,"43547-0248-10 ")
 ;;81
 ;;21,"43547-0248-11 ")
 ;;82
 ;;21,"43547-0248-50 ")
 ;;83
 ;;21,"43547-0249-10 ")
 ;;389
 ;;21,"43547-0249-11 ")
 ;;390
 ;;21,"43547-0249-50 ")
 ;;391
 ;;21,"43547-0250-10 ")
 ;;663
 ;;21,"43547-0250-11 ")
 ;;664
 ;;21,"43547-0250-50 ")
 ;;665
 ;;21,"43547-0320-10 ")
 ;;84
 ;;21,"43547-0320-11 ")
 ;;85
 ;;21,"43547-0320-50 ")
 ;;86
 ;;21,"43547-0321-10 ")
 ;;387
 ;;21,"43547-0321-50 ")
 ;;388
 ;;21,"43547-0322-10 ")
 ;;666
 ;;21,"43547-0322-50 ")
 ;;667
 ;;21,"43683-0131-30 ")
 ;;668
 ;;21,"43683-0131-60 ")
 ;;669
 ;;21,"43683-0132-30 ")
 ;;65
 ;;21,"43683-0132-60 ")
 ;;66
 ;;21,"45963-0753-02 ")
 ;;1202
 ;;21,"47463-0246-30 ")
 ;;1062
 ;;21,"47463-0247-30 ")
 ;;1073
 ;;21,"47463-0434-60 ")
 ;;1030
 ;;21,"47463-0435-60 ")
 ;;1021
 ;;21,"47463-0508-30 ")
 ;;657
 ;;21,"47463-0509-30 ")
 ;;67
 ;;21,"47463-0509-60 ")
 ;;68
 ;;21,"47463-0509-74 ")
 ;;69
 ;;21,"47463-0509-90 ")
 ;;70
 ;;21,"47463-0510-30 ")
 ;;907
 ;;21,"47463-0510-60 ")
 ;;908
 ;;21,"47463-0510-71 ")
 ;;909
 ;;21,"47463-0510-74 ")
 ;;910
 ;;21,"47463-0510-90 ")
 ;;911
 ;;21,"47463-0611-60 ")
 ;;661
 ;;21,"47463-0611-74 ")
 ;;662
 ;;21,"47463-0612-30 ")
 ;;393
 ;;21,"49999-0106-00 ")
 ;;71
 ;;21,"49999-0106-01 ")
 ;;72
 ;;21,"49999-0106-28 ")
 ;;73
 ;;21,"49999-0106-30 ")
 ;;74
 ;;21,"49999-0106-60 ")
 ;;75
 ;;21,"49999-0106-90 ")
 ;;76
 ;;21,"49999-0116-00 ")
 ;;658
 ;;21,"49999-0116-30 ")
 ;;659
 ;;21,"49999-0116-60 ")
 ;;660
 ;;21,"49999-0401-30 ")
 ;;1199
 ;;21,"49999-0401-60 ")
 ;;1200
 ;;21,"49999-0401-90 ")
 ;;1201
 ;;21,"49999-0495-30 ")
 ;;398
 ;;21,"49999-0495-60 ")
 ;;399
 ;;21,"49999-0660-30 ")
 ;;1178
 ;;21,"49999-0660-60 ")
 ;;1179
 ;;21,"49999-0820-30 ")
 ;;913
 ;;21,"49999-0820-60 ")
 ;;914
 ;;21,"49999-0820-90 ")
 ;;915
 ;;21,"50268-0531-15 ")
 ;;912
 ;;21,"51079-0172-01 ")
 ;;57
 ;;21,"51079-0172-20 ")
 ;;58
 ;;21,"51079-0173-01 ")
 ;;396
 ;;21,"51079-0173-08 ")
 ;;397
 ;;21,"51079-0174-01 ")
 ;;655
 ;;21,"51079-0174-20 ")
 ;;656
 ;;21,"51079-0972-01 ")
 ;;59
 ;;21,"51079-0972-17 ")
 ;;60
 ;;21,"51079-0972-19 ")
 ;;61
 ;;21,"51079-0972-20 ")
 ;;62
 ;;21,"51079-0972-30 ")
 ;;63
 ;;21,"51079-0972-56 ")
 ;;64
 ;;21,"51079-0973-01 ")
 ;;394
 ;;21,"51079-0973-20 ")
 ;;395
 ;;21,"51079-0995-01 ")
 ;;579
 ;;21,"51079-0995-20 ")
 ;;580
 ;;21,"51138-0074-30 ")
 ;;56
 ;;21,"51138-0075-30 ")
 ;;400
 ;;21,"51138-0076-30 ")
 ;;681
 ;;21,"51138-0083-30 ")
 ;;55
 ;;21,"51138-0084-30 ")
 ;;401
 ;;21,"51138-0085-30 ")
 ;;680
 ;;21,"51138-0470-30 ")
 ;;1097
 ;;21,"51138-0471-30 ")
 ;;1139
 ;;21,"51138-0472-30 ")
 ;;1204
 ;;21,"51138-0473-30 ")
 ;;1096
 ;;21,"51138-0474-30 ")
 ;;1140
 ;;21,"51138-0475-30 ")
 ;;1203
 ;;21,"51138-0495-20 ")
 ;;1296
 ;;21,"51138-0495-30 ")
 ;;1297
 ;;21,"51138-0496-30 ")
 ;;1304
 ;;21,"51138-0497-30 ")
 ;;1300
 ;;21,"51138-0498-30 ")
 ;;1307
 ;;21,"51138-0526-30 ")
 ;;1022
 ;;21,"51138-0527-30 ")
 ;;1029
 ;;21,"51138-0537-10 ")
 ;;899
 ;;21,"51138-0537-30 ")
 ;;900
 ;;21,"51138-0538-10 ")
 ;;963
 ;;21,"51138-0538-30 ")
 ;;964
 ;;21,"51138-0539-10 ")
 ;;901
 ;;21,"51138-0539-30 ")
 ;;902
 ;;21,"51138-0540-10 ")
 ;;961
 ;;21,"51138-0540-30 ")
 ;;962
 ;;21,"52959-0207-00 ")
 ;;48
 ;;21,"52959-0207-28 ")
 ;;49
 ;;21,"52959-0207-30 ")
 ;;50
 ;;21,"52959-0207-60 ")
 ;;51
 ;;21,"52959-0860-02 ")
 ;;670
 ;;21,"52959-0860-30 ")
 ;;671
 ;;21,"52959-0860-60 ")
 ;;672
 ;;21,"52959-0860-90 ")
 ;;673
 ;;21,"52959-0896-01 ")
 ;;408
 ;;21,"52959-0896-60 ")
 ;;409
 ;;21,"53002-1251-00 ")
 ;;52
 ;;21,"53002-1251-03 ")
 ;;53
 ;;21,"53002-1251-06 ")
 ;;54
 ;;21,"53002-1422-00 ")
 ;;402
 ;;21,"53002-1422-03 ")
 ;;403
 ;;21,"53002-1422-06 ")
 ;;404
 ;;21,"53002-1445-00 ")
 ;;677
 ;;21,"53002-1445-03 ")
 ;;678
 ;;21,"53002-1445-06 ")
 ;;679
 ;;21,"53746-0178-01 ")
 ;;903
 ;;21,"53746-0178-05 ")
 ;;904
 ;;21,"53746-0178-10 ")
 ;;905
 ;;21,"53746-0178-90 ")
 ;;906
 ;;21,"53746-0179-01 ")
 ;;959
 ;;21,"53746-0179-05 ")
 ;;960
 ;;21,"53746-0218-01 ")
 ;;45
 ;;21,"53746-0218-05 ")
 ;;46
 ;;21,"53746-0218-10 ")
 ;;47
 ;;21,"53746-0219-01 ")
 ;;405
 ;;21,"53746-0219-05 ")
 ;;406
 ;;21,"53746-0219-10 ")
 ;;407
 ;;21,"53746-0220-01 ")
 ;;674
 ;;21,"53746-0220-05 ")
 ;;675
 ;;21,"53746-0220-10 ")
 ;;676
 ;;21,"54569-4202-02 ")
 ;;7
 ;;21,"54569-4740-00 ")
 ;;367
 ;;21,"54569-5353-00 ")
 ;;378
 ;;21,"54569-5353-02 ")
 ;;379
 ;;21,"54569-5353-03 ")
 ;;380
 ;;21,"54569-5353-04 ")
 ;;381
 ;;21,"54569-5353-05 ")
 ;;382
 ;;21,"54569-5353-06 ")
 ;;383
 ;;21,"54569-5360-00 ")
 ;;37
 ;;21,"54569-5360-03 ")
 ;;38
 ;;21,"54569-5360-04 ")
 ;;39
 ;;21,"54569-5360-05 ")
 ;;40
 ;;21,"54569-5360-06 ")
 ;;41
 ;;21,"54569-5373-00 ")
 ;;685
 ;;21,"54569-5373-02 ")
 ;;686
 ;;21,"54569-5373-03 ")
 ;;687
 ;;21,"54569-5373-04 ")
 ;;688
 ;;21,"54569-5373-05 ")
 ;;689
 ;;21,"54569-5546-00 ")
 ;;895
 ;;21,"54569-5546-01 ")
 ;;896
 ;;21,"54569-5546-02 ")
 ;;897
 ;;21,"54569-5546-03 ")
 ;;898
 ;;21,"54569-5618-00 ")
 ;;1135
 ;;21,"54569-5618-01 ")
 ;;1136
 ;;21,"54569-5618-02 ")
 ;;1137
 ;;21,"54569-5618-03 ")
 ;;1138
 ;;21,"54569-5619-00 ")
 ;;1185
 ;;21,"54569-5619-01 ")
 ;;1186
 ;;21,"54569-5619-02 ")
 ;;1187
 ;;21,"54569-5619-03 ")
 ;;1188
 ;;21,"54569-5619-04 ")
 ;;1189
 ;;21,"54569-5991-00 ")
 ;;1055
 ;;21,"54569-5992-00 ")
 ;;1056
 ;;21,"54569-5992-01 ")
 ;;1057
 ;;21,"54569-5993-00 ")
 ;;1078
 ;;21,"54569-5993-01 ")
 ;;1079
 ;;21,"54569-6523-00 ")
 ;;965
 ;;21,"54738-0925-01 ")
 ;;42
 ;;21,"54738-0925-02 ")
 ;;43
 ;;21,"54738-0925-03 ")
 ;;44
 ;;21,"54738-0926-01 ")
 ;;384
 ;;21,"54738-0926-02 ")
 ;;385
 ;;21,"54738-0926-03 ")
 ;;386
 ;;21,"54738-0927-01 ")
 ;;682
 ;;21,"54738-0927-02 ")
 ;;683
 ;;21,"54738-0927-03 ")
 ;;684
 ;;21,"54868-0795-00 ")
 ;;1053
 ;;21,"54868-0830-00 ")
 ;;1002
 ;;21,"54868-0830-01 ")
 ;;1003
 ;;21,"54868-1097-00 ")
 ;;1027
 ;;21,"54868-1097-01 ")
 ;;1028
 ;;21,"54868-2894-00 ")
 ;;995
 ;;21,"54868-3546-00 ")
 ;;368
 ;;21,"54868-3546-01 ")
 ;;369
 ;;21,"54868-4529-00 ")
 ;;1180
 ;;21,"54868-4529-01 ")
 ;;1181
 ;;21,"54868-4529-02 ")
 ;;1182
 ;;21,"54868-4529-03 ")
 ;;1183
 ;;21,"54868-4561-00 ")
 ;;373
 ;;21,"54868-4561-01 ")
 ;;374
 ;;21,"54868-4561-02 ")
 ;;375
 ;;21,"54868-4561-03 ")
 ;;376
 ;;21,"54868-4561-04 ")
 ;;377
 ;;21,"54868-4564-00 ")
 ;;31
 ;;21,"54868-4564-01 ")
 ;;32
 ;;21,"54868-4564-02 ")
 ;;33
 ;;21,"54868-4564-03 ")
 ;;34
 ;;21,"54868-4564-04 ")
 ;;35
 ;;21,"54868-4564-05 ")
 ;;36
 ;;21,"54868-4566-00 ")
 ;;696
 ;;21,"54868-4566-01 ")
 ;;697
 ;;21,"54868-4566-02 ")
 ;;698
 ;;21,"54868-4566-03 ")
 ;;699
 ;;21,"54868-4566-04 ")
 ;;700
 ;;21,"54868-4609-00 ")
 ;;1126
 ;;21,"54868-4609-01 ")
 ;;1127
 ;;21,"54868-4906-00 ")
 ;;1090
 ;;21,"54868-4965-00 ")
 ;;1293
 ;;21,"54868-4965-01 ")
 ;;1294
 ;;21,"54868-4965-02 ")
 ;;1295
 ;;21,"54868-5148-00 ")
 ;;1128
 ;;21,"54868-5148-01 ")
 ;;1129
 ;;21,"54868-5148-02 ")
 ;;1130
 ;;21,"54868-5148-03 ")
 ;;1131
 ;;21,"54868-5148-04 ")
 ;;1132
 ;;21,"54868-5157-00 ")
 ;;1302
 ;;21,"54868-5157-01 ")
 ;;1303
 ;;21,"54868-5185-00 ")
 ;;1091
 ;;21,"54868-5185-01 ")
 ;;1092
 ;;21,"54868-5185-02 ")
 ;;1093
 ;;21,"54868-5185-03 ")
 ;;1094
 ;;21,"54868-5188-00 ")
 ;;1059
 ;;21,"54868-5188-01 ")
 ;;1060
 ;;21,"54868-5188-02 ")
 ;;1061
 ;;21,"54868-5217-00 ")
 ;;880
 ;;21,"54868-5217-01 ")
 ;;881
 ;;21,"54868-5217-02 ")
 ;;882
 ;;21,"54868-5217-03 ")
 ;;883
 ;;21,"54868-5217-04 ")
 ;;884
 ;;21,"54868-5217-05 ")
 ;;885
 ;;21,"54868-5243-00 ")
 ;;1194
 ;;21,"54868-5243-01 ")
 ;;1195
 ;;21,"54868-5243-02 ")
 ;;1196
 ;;21,"54868-5243-03 ")
 ;;1197
 ;;21,"54868-5243-04 ")
 ;;1198
 ;;21,"54868-5262-00 ")
 ;;1308
 ;;21,"54868-5262-01 ")
 ;;1309
 ;;21,"54868-5376-00 ")
 ;;1301
 ;;21,"54868-5467-00 ")
 ;;1074
 ;;21,"54868-5467-01 ")
 ;;1075
 ;;21,"54868-5467-02 ")
 ;;1076
 ;;21,"54868-5500-00 ")
 ;;1262
 ;;21,"54868-5500-01 ")
 ;;1263
 ;;21,"54868-5500-02 ")
 ;;1264
 ;;21,"54868-5505-00 ")
 ;;966
 ;;21,"54868-5505-01 ")
 ;;967
 ;;21,"54868-5505-02 ")
 ;;968
 ;;21,"54868-5553-00 ")
 ;;1277
 ;;21,"54868-5553-01 ")
 ;;1278
 ;;21,"54868-5553-02 ")
 ;;1279
 ;;21,"54868-5558-00 ")
 ;;991
 ;;21,"54868-5558-01 ")
 ;;992
 ;;21,"54868-5973-00 ")
 ;;1023
 ;;21,"55045-2504-01 ")
 ;;370
 ;;21,"55045-2904-00 ")
 ;;19
 ;;21,"55045-2904-02 ")
 ;;20
 ;;21,"55045-2904-06 ")
 ;;21
 ;;21,"55045-2905-00 ")
 ;;371
 ;;21,"55045-2905-08 ")
 ;;372
 ;;21,"55045-2906-00 ")
 ;;690
 ;;21,"55045-2906-01 ")
 ;;691
 ;;21,"55045-2906-02 ")
 ;;692
 ;;21,"55045-2906-06 ")
 ;;693
 ;;21,"55045-2906-08 ")
 ;;694
 ;;21,"55045-2906-09 ")
 ;;695
 ;;21,"55045-3045-01 ")
 ;;8
 ;;21,"55045-3045-06 ")
 ;;9
 ;;21,"55045-3045-08 ")
 ;;10
 ;;21,"55045-3761-08 ")
 ;;18
 ;;21,"55048-0246-30 ")
 ;;1058
 ;;21,"55048-0247-30 ")
 ;;1077
 ;;21,"55048-0273-60 ")
 ;;1192
 ;;21,"55048-0273-71 ")
 ;;1193
 ;;21,"55048-0434-60 ")
 ;;1026
 ;;21,"55048-0437-60 ")
 ;;1024
 ;;21,"55048-0508-30 ")
 ;;701
 ;;21,"55048-0508-60 ")
 ;;702
 ;;21,"55048-0509-30 ")
 ;;22
 ;;21,"55048-0509-60 ")
 ;;23
 ;;21,"55048-0509-71 ")
 ;;24
 ;;21,"55048-0509-74 ")
 ;;25
 ;;21,"55048-0509-90 ")
 ;;26
 ;;21,"55048-0510-30 ")
 ;;890
 ;;21,"55048-0510-60 ")
 ;;891
 ;;21,"55048-0510-71 ")
 ;;892
 ;;21,"55048-0510-74 ")
 ;;893
 ;;21,"55048-0510-90 ")
 ;;894
 ;;21,"55048-0611-60 ")
 ;;703