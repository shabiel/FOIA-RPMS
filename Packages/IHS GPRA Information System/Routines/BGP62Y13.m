BGP62Y13 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 11, 2016;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"54868-4735-02 ")
 ;;911
 ;;21,"54868-4743-00 ")
 ;;1127
 ;;21,"54868-4743-01 ")
 ;;1128
 ;;21,"54868-4743-02 ")
 ;;1129
 ;;21,"54868-4858-00 ")
 ;;4507
 ;;21,"54868-4858-01 ")
 ;;4508
 ;;21,"54868-4858-02 ")
 ;;4509
 ;;21,"54868-4858-03 ")
 ;;4510
 ;;21,"54868-4858-04 ")
 ;;4511
 ;;21,"54868-4858-05 ")
 ;;4512
 ;;21,"54868-4858-06 ")
 ;;4513
 ;;21,"54868-4858-07 ")
 ;;4514
 ;;21,"54868-4858-08 ")
 ;;4515
 ;;21,"54868-4898-00 ")
 ;;4237
 ;;21,"54868-4898-01 ")
 ;;4238
 ;;21,"54868-4898-02 ")
 ;;4239
 ;;21,"54868-4898-03 ")
 ;;4240
 ;;21,"54868-4898-04 ")
 ;;4241
 ;;21,"54868-4919-00 ")
 ;;2876
 ;;21,"54868-4951-00 ")
 ;;1264
 ;;21,"54868-4951-01 ")
 ;;1265
 ;;21,"54868-4951-02 ")
 ;;1266
 ;;21,"54868-4951-03 ")
 ;;1267
 ;;21,"54868-4951-04 ")
 ;;1268
 ;;21,"54868-4971-00 ")
 ;;4982
 ;;21,"54868-4987-00 ")
 ;;5390
 ;;21,"54868-4987-01 ")
 ;;5391
 ;;21,"54868-4990-00 ")
 ;;956
 ;;21,"54868-5022-00 ")
 ;;5471
 ;;21,"54868-5022-01 ")
 ;;5472
 ;;21,"54868-5022-02 ")
 ;;5473
 ;;21,"54868-5022-03 ")
 ;;5474
 ;;21,"54868-5023-00 ")
 ;;4716
 ;;21,"54868-5023-01 ")
 ;;4717
 ;;21,"54868-5023-02 ")
 ;;4718
 ;;21,"54868-5040-00 ")
 ;;6546
 ;;21,"54868-5040-01 ")
 ;;6547
 ;;21,"54868-5040-02 ")
 ;;6548
 ;;21,"54868-5044-00 ")
 ;;4153
 ;;21,"54868-5044-01 ")
 ;;4154
 ;;21,"54868-5044-02 ")
 ;;4155
 ;;21,"54868-5044-03 ")
 ;;4156
 ;;21,"54868-5044-04 ")
 ;;4157
 ;;21,"54868-5101-00 ")
 ;;447
 ;;21,"54868-5101-01 ")
 ;;448
 ;;21,"54868-5101-02 ")
 ;;449
 ;;21,"54868-5165-01 ")
 ;;1201
 ;;21,"54868-5175-00 ")
 ;;1040
 ;;21,"54868-5211-00 ")
 ;;2457
 ;;21,"54868-5211-01 ")
 ;;2458
 ;;21,"54868-5211-02 ")
 ;;2459
 ;;21,"54868-5211-03 ")
 ;;2460
 ;;21,"54868-5211-04 ")
 ;;2461
 ;;21,"54868-5211-05 ")
 ;;2462
 ;;21,"54868-5269-00 ")
 ;;5918
 ;;21,"54868-5404-00 ")
 ;;2569
 ;;21,"54868-5430-00 ")
 ;;2983
 ;;21,"54868-5430-01 ")
 ;;2984
 ;;21,"54868-5430-02 ")
 ;;2985
 ;;21,"54868-5430-03 ")
 ;;2986
 ;;21,"54868-5471-00 ")
 ;;2692
 ;;21,"54868-5478-00 ")
 ;;2693
 ;;21,"54868-5478-01 ")
 ;;2694
 ;;21,"54868-5478-02 ")
 ;;2695
 ;;21,"54868-5487-00 ")
 ;;2815
 ;;21,"54868-5487-01 ")
 ;;2816
 ;;21,"54868-5487-02 ")
 ;;2817
 ;;21,"54868-5533-00 ")
 ;;6923
 ;;21,"54868-5589-00 ")
 ;;6882
 ;;21,"54868-5647-00 ")
 ;;2564
 ;;21,"54868-5648-00 ")
 ;;2608
 ;;21,"54868-5648-01 ")
 ;;2609
 ;;21,"54868-5648-02 ")
 ;;2610
 ;;21,"54868-5676-00 ")
 ;;5930
 ;;21,"54868-5756-00 ")
 ;;5335
 ;;21,"54868-5757-00 ")
 ;;5308
 ;;21,"54868-5767-00 ")
 ;;7022
 ;;21,"54868-5768-00 ")
 ;;6959
 ;;21,"54868-5768-01 ")
 ;;6960
 ;;21,"54868-5769-00 ")
 ;;6987
 ;;21,"54868-5769-01 ")
 ;;6988
 ;;21,"54868-5833-00 ")
 ;;2513
 ;;21,"54868-5981-00 ")
 ;;5356
 ;;21,"54879-0007-16 ")
 ;;5562
 ;;21,"55045-1170-00 ")
 ;;1677
 ;;21,"55045-1170-01 ")
 ;;1678
 ;;21,"55045-1176-01 ")
 ;;5563
 ;;21,"55045-1189-01 ")
 ;;413
 ;;21,"55045-1199-03 ")
 ;;122
 ;;21,"55045-1201-03 ")
 ;;3655
 ;;21,"55045-1201-07 ")
 ;;3656
 ;;21,"55045-1201-08 ")
 ;;3657
 ;;21,"55045-1202-00 ")
 ;;3823
 ;;21,"55045-1202-01 ")
 ;;3824
 ;;21,"55045-1202-02 ")
 ;;3825
 ;;21,"55045-1202-03 ")
 ;;3826
 ;;21,"55045-1202-04 ")
 ;;3827
 ;;21,"55045-1202-05 ")
 ;;3828
 ;;21,"55045-1202-06 ")
 ;;3829
 ;;21,"55045-1202-07 ")
 ;;3830
 ;;21,"55045-1202-08 ")
 ;;3831
 ;;21,"55045-1202-09 ")
 ;;3832
 ;;21,"55045-1204-09 ")
 ;;860
 ;;21,"55045-1207-00 ")
 ;;6199
 ;;21,"55045-1207-01 ")
 ;;6200
 ;;21,"55045-1207-02 ")
 ;;6201
 ;;21,"55045-1207-03 ")
 ;;6202
 ;;21,"55045-1207-04 ")
 ;;6203
 ;;21,"55045-1207-05 ")
 ;;6204
 ;;21,"55045-1207-06 ")
 ;;6205
 ;;21,"55045-1207-07 ")
 ;;6206
 ;;21,"55045-1207-08 ")
 ;;6207
 ;;21,"55045-1210-00 ")
 ;;5765
 ;;21,"55045-1210-01 ")
 ;;5766
 ;;21,"55045-1210-03 ")
 ;;5767
 ;;21,"55045-1210-05 ")
 ;;5768
 ;;21,"55045-1210-06 ")
 ;;5769
 ;;21,"55045-1210-07 ")
 ;;5770
 ;;21,"55045-1210-08 ")
 ;;5771
 ;;21,"55045-1210-09 ")
 ;;5772
 ;;21,"55045-1227-00 ")
 ;;4007
 ;;21,"55045-1227-01 ")
 ;;4008
 ;;21,"55045-1227-02 ")
 ;;4009
 ;;21,"55045-1227-03 ")
 ;;4010
 ;;21,"55045-1227-04 ")
 ;;4011
 ;;21,"55045-1227-06 ")
 ;;4012
 ;;21,"55045-1227-07 ")
 ;;4013
 ;;21,"55045-1227-08 ")
 ;;4014
 ;;21,"55045-1227-09 ")
 ;;4015
 ;;21,"55045-1247-01 ")
 ;;1568
 ;;21,"55045-1258-07 ")
 ;;1130
 ;;21,"55045-1262-09 ")
 ;;1569
 ;;21,"55045-1270-03 ")
 ;;3209
 ;;21,"55045-1270-04 ")
 ;;3210
 ;;21,"55045-1270-06 ")
 ;;3211
 ;;21,"55045-1322-00 ")
 ;;6708
 ;;21,"55045-1322-01 ")
 ;;6709
 ;;21,"55045-1322-02 ")
 ;;6710
 ;;21,"55045-1322-03 ")
 ;;6711
 ;;21,"55045-1322-04 ")
 ;;6712
 ;;21,"55045-1322-05 ")
 ;;6713
 ;;21,"55045-1322-06 ")
 ;;6714
 ;;21,"55045-1322-07 ")
 ;;6715
 ;;21,"55045-1322-08 ")
 ;;6716
 ;;21,"55045-1322-09 ")
 ;;6717
 ;;21,"55045-1442-01 ")
 ;;3565
 ;;21,"55045-1469-09 ")
 ;;4242
 ;;21,"55045-1494-03 ")
 ;;4516
 ;;21,"55045-1494-05 ")
 ;;4517
 ;;21,"55045-1494-08 ")
 ;;4518
 ;;21,"55045-1494-09 ")
 ;;4519
 ;;21,"55045-1500-09 ")
 ;;1794
 ;;21,"55045-1514-06 ")
 ;;5596
 ;;21,"55045-1546-02 ")
 ;;5392
 ;;21,"55045-1546-03 ")
 ;;5393
 ;;21,"55045-1546-05 ")
 ;;5394
 ;;21,"55045-1546-07 ")
 ;;5395
 ;;21,"55045-1650-02 ")
 ;;4719
 ;;21,"55045-1865-07 ")
 ;;2987
 ;;21,"55045-1918-00 ")
 ;;3934
 ;;21,"55045-1918-01 ")
 ;;3935
 ;;21,"55045-1918-02 ")
 ;;3936
 ;;21,"55045-1918-03 ")
 ;;3937
 ;;21,"55045-1918-06 ")
 ;;3938
 ;;21,"55045-1918-07 ")
 ;;3939
 ;;21,"55045-1918-08 ")
 ;;3940
 ;;21,"55045-1918-09 ")
 ;;3941
 ;;21,"55045-2004-00 ")
 ;;344
 ;;21,"55045-2004-04 ")
 ;;345
 ;;21,"55045-2004-05 ")
 ;;346
 ;;21,"55045-2004-06 ")
 ;;347
 ;;21,"55045-2004-08 ")
 ;;348
 ;;21,"55045-2006-00 ")
 ;;2308
 ;;21,"55045-2006-01 ")
 ;;2309
 ;;21,"55045-2006-02 ")
 ;;2310
 ;;21,"55045-2006-03 ")
 ;;2311
 ;;21,"55045-2006-04 ")
 ;;2312
 ;;21,"55045-2006-05 ")
 ;;2313
 ;;21,"55045-2006-06 ")
 ;;2314
 ;;21,"55045-2006-07 ")
 ;;2315
 ;;21,"55045-2006-08 ")
 ;;2316
 ;;21,"55045-2006-09 ")
 ;;2317
 ;;21,"55045-2012-02 ")
 ;;3103
 ;;21,"55045-2012-05 ")
 ;;3104
 ;;21,"55045-2012-08 ")
 ;;3105
 ;;21,"55045-2012-09 ")
 ;;3106
 ;;21,"55045-2076-03 ")
 ;;3072
 ;;21,"55045-2076-04 ")
 ;;3073
 ;;21,"55045-2076-06 ")
 ;;3074
 ;;21,"55045-2162-04 ")
 ;;3292
 ;;21,"55045-2162-07 ")
 ;;3293
 ;;21,"55045-2162-08 ")
 ;;3294
 ;;21,"55045-2302-03 ")
 ;;2145
 ;;21,"55045-2372-05 ")
 ;;2565
 ;;21,"55045-2373-05 ")
 ;;2611
 ;;21,"55045-2373-06 ")
 ;;2612
 ;;21,"55045-2373-08 ")
 ;;2613
 ;;21,"55045-2426-01 ")
 ;;1471
 ;;21,"55045-2426-02 ")
 ;;1472
 ;;21,"55045-2426-03 ")
 ;;1473
 ;;21,"55045-2426-06 ")
 ;;1474
 ;;21,"55045-2426-07 ")
 ;;1475
 ;;21,"55045-2426-08 ")
 ;;1476
 ;;21,"55045-2492-06 ")
 ;;2696
 ;;21,"55045-2597-01 ")
 ;;4922
 ;;21,"55045-2597-02 ")
 ;;4923
 ;;21,"55045-2597-03 ")
 ;;4924
 ;;21,"55045-2597-05 ")
 ;;4925
 ;;21,"55045-2597-06 ")
 ;;4926
 ;;21,"55045-2597-08 ")
 ;;4927
 ;;21,"55045-2598-03 ")
 ;;4928
 ;;21,"55045-2610-01 ")
 ;;1986
 ;;21,"55045-2610-02 ")
 ;;1987
 ;;21,"55045-2610-04 ")
 ;;1988
 ;;21,"55045-2610-06 ")
 ;;1989
 ;;21,"55045-2610-07 ")
 ;;1990
 ;;21,"55045-2610-09 ")
 ;;1991
 ;;21,"55045-2672-01 ")
 ;;82
 ;;21,"55045-2672-02 ")
 ;;83
 ;;21,"55045-2672-06 ")
 ;;84
 ;;21,"55045-2672-08 ")
 ;;85
 ;;21,"55045-2672-09 ")
 ;;86
 ;;21,"55045-2843-01 ")
 ;;5035
 ;;21,"55045-2843-05 ")
 ;;5036
 ;;21,"55045-2843-07 ")
 ;;5037
 ;;21,"55045-2953-02 ")
 ;;1131
 ;;21,"55045-2953-04 ")
 ;;1132
 ;;21,"55045-2953-05 ")
 ;;1133
 ;;21,"55045-2953-06 ")
 ;;1134
 ;;21,"55045-2953-07 ")
 ;;1135
 ;;21,"55045-2953-08 ")
 ;;1136
 ;;21,"55045-2966-03 ")
 ;;1269
 ;;21,"55045-2966-07 ")
 ;;1270
 ;;21,"55045-2966-08 ")
 ;;1271
 ;;21,"55045-2992-02 ")
 ;;450
 ;;21,"55045-3016-07 ")
 ;;746
 ;;21,"55045-3080-01 ")
 ;;4520
 ;;21,"55045-3080-02 ")
 ;;4521
 ;;21,"55045-3080-03 ")
 ;;4522
 ;;21,"55045-3080-05 ")
 ;;4523
 ;;21,"55045-3080-07 ")
 ;;4524
 ;;21,"55045-3080-08 ")
 ;;4525
 ;;21,"55045-3081-00 ")
 ;;4720
 ;;21,"55045-3081-01 ")
 ;;4721
 ;;21,"55045-3081-02 ")
 ;;4722
 ;;21,"55045-3081-03 ")
 ;;4723
 ;;21,"55045-3081-06 ")
 ;;4724
 ;;21,"55045-3081-07 ")
 ;;4725
 ;;21,"55045-3081-08 ")
 ;;4726
 ;;21,"55045-3081-09 ")
 ;;4727
 ;;21,"55045-3142-01 ")
 ;;4243
 ;;21,"55045-3142-05 ")
 ;;4244
 ;;21,"55045-3142-07 ")
 ;;4245
 ;;21,"55045-3194-01 ")
 ;;618
 ;;21,"55045-3194-03 ")
 ;;619
 ;;21,"55045-3194-04 ")
 ;;620
 ;;21,"55045-3194-06 ")
 ;;621
 ;;21,"55045-3194-09 ")
 ;;622
 ;;21,"55045-3232-01 ")
 ;;1319
 ;;21,"55045-3233-08 ")
 ;;2318
 ;;21,"55045-3260-01 ")
 ;;238
 ;;21,"55045-3260-06 ")
 ;;239
 ;;21,"55045-3260-09 ")
 ;;240
 ;;21,"55045-3268-04 ")
 ;;2463
 ;;21,"55045-3268-06 ")
 ;;2464
 ;;21,"55045-3268-08 ")
 ;;2465
 ;;21,"55045-3288-02 ")
 ;;5773
 ;;21,"55045-3288-05 ")
 ;;5774
 ;;21,"55045-3288-08 ")
 ;;5775
 ;;21,"55045-3306-04 ")
 ;;6208
 ;;21,"55045-3306-05 ")
 ;;6209
 ;;21,"55045-3306-06 ")
 ;;6210
 ;;21,"55045-3306-08 ")
 ;;6211
 ;;21,"55045-3310-08 ")
 ;;4820
 ;;21,"55045-3355-00 ")
 ;;957
 ;;21,"55045-3355-01 ")
 ;;958
 ;;21,"55045-3385-05 ")
 ;;5776
 ;;21,"55045-3414-05 ")
 ;;6718
 ;;21,"55045-3442-06 ")
 ;;2697
 ;;21,"55045-3452-01 ")
 ;;3048
 ;;21,"55045-3467-01 ")
 ;;4526
 ;;21,"55045-3479-06 ")
 ;;2902
 ;;21,"55045-3483-02 ")
 ;;5475
 ;;21,"55045-3490-01 ")
 ;;2988
 ;;21,"55045-3503-01 ")
 ;;6924
 ;;21,"55045-3511-01 ")
 ;;6804
 ;;21,"55045-3511-02 ")
 ;;6805
 ;;21,"55045-3516-01 ")
 ;;6883
 ;;21,"55045-3519-01 ")
 ;;1408
 ;;21,"55045-3532-01 ")
 ;;4106
 ;;21,"55045-3570-01 ")
 ;;2319
 ;;21,"55045-3693-01 ")
 ;;2818
 ;;21,"55045-3698-03 ")
 ;;2614
 ;;21,"55045-3725-01 ")
 ;;2566
 ;;21,"55045-3726-02 ")
 ;;2615
 ;;21,"55045-3727-01 ")
 ;;2616
 ;;21,"55111-0112-30 ")
 ;;5038
 ;;21,"55111-0125-06 ")
 ;;4147
 ;;21,"55111-0126-01 ")
 ;;4246
 ;;21,"55111-0126-05 ")
 ;;4247
 ;;21,"55111-0127-01 ")
 ;;4527
 ;;21,"55111-0127-05 ")
 ;;4528
 ;;21,"55111-0128-50 ")
 ;;4728
 ;;21,"55111-0160-50 ")
 ;;5054
 ;;21,"55111-0161-50 ")
 ;;5056
 ;;21,"55111-0162-01 ")
 ;;5058
 ;;21,"55111-0279-50 ")
 ;;4821
 ;;21,"55111-0280-50 ")
 ;;4929
 ;;21,"55111-0281-30 ")
 ;;4983
 ;;21,"55111-0422-01 ")
 ;;4676
 ;;21,"55111-0422-30 ")
 ;;4677
 ;;21,"55111-0423-30 ")
 ;;4158
 ;;21,"55111-0637-01 ")
 ;;6536
 ;;21,"55111-0638-01 ")
 ;;6558
 ;;21,"55111-0639-60 ")
 ;;6479
 ;;21,"55150-0111-10 ")
 ;;64
 ;;21,"55150-0112-10 ")
 ;;78
 ;;21,"55150-0113-10 ")
 ;;16
 ;;21,"55150-0114-20 ")
 ;;53
 ;;21,"55150-0115-99 ")
 ;;30
 ;;21,"55150-0156-20 ")
 ;;4107
 ;;21,"55150-0157-30 ")
 ;;4108
 ;;21,"55150-0174-10 ")
 ;;2534
 ;;21,"55154-2062-00 ")
 ;;2698
 ;;21,"55154-3432-00 ")
 ;;2699
 ;;21,"55154-4511-00 ")
 ;;1137
 ;;21,"55154-8277-00 ")
 ;;241
 ;;21,"55154-8278-00 ")
 ;;623
 ;;21,"55289-0008-10 ")
 ;;2903
 ;;21,"55289-0008-20 ")
 ;;2904
 ;;21,"55289-0019-06 ")
 ;;242
 ;;21,"55289-0019-15 ")
 ;;243
 ;;21,"55289-0019-21 ")
 ;;244
 ;;21,"55289-0019-24 ")
 ;;245