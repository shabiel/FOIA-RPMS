BGP62Y12 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 11, 2016;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"54569-4713-02 ")
 ;;6445
 ;;21,"54569-4737-00 ")
 ;;5448
 ;;21,"54569-4820-00 ")
 ;;4498
 ;;21,"54569-4915-00 ")
 ;;4809
 ;;21,"54569-4915-01 ")
 ;;4810
 ;;21,"54569-4915-02 ")
 ;;4811
 ;;21,"54569-4922-00 ")
 ;;5027
 ;;21,"54569-4922-01 ")
 ;;5028
 ;;21,"54569-4922-02 ")
 ;;5029
 ;;21,"54569-4953-00 ")
 ;;3045
 ;;21,"54569-4972-00 ")
 ;;1670
 ;;21,"54569-5149-00 ")
 ;;5030
 ;;21,"54569-5154-00 ")
 ;;2149
 ;;21,"54569-5182-00 ")
 ;;711
 ;;21,"54569-5193-00 ")
 ;;742
 ;;21,"54569-5214-00 ")
 ;;7014
 ;;21,"54569-5214-01 ")
 ;;7015
 ;;21,"54569-5386-00 ")
 ;;5383
 ;;21,"54569-5386-01 ")
 ;;5384
 ;;21,"54569-5386-02 ")
 ;;5385
 ;;21,"54569-5386-03 ")
 ;;5386
 ;;21,"54569-5418-00 ")
 ;;5469
 ;;21,"54569-5448-00 ")
 ;;2809
 ;;21,"54569-5470-00 ")
 ;;1119
 ;;21,"54569-5470-01 ")
 ;;1120
 ;;21,"54569-5470-02 ")
 ;;1121
 ;;21,"54569-5470-03 ")
 ;;1122
 ;;21,"54569-5471-00 ")
 ;;1259
 ;;21,"54569-5471-01 ")
 ;;1260
 ;;21,"54569-5471-02 ")
 ;;1261
 ;;21,"54569-5471-03 ")
 ;;1262
 ;;21,"54569-5471-04 ")
 ;;1263
 ;;21,"54569-5487-00 ")
 ;;1037
 ;;21,"54569-5488-00 ")
 ;;955
 ;;21,"54569-5510-00 ")
 ;;4669
 ;;21,"54569-5553-00 ")
 ;;445
 ;;21,"54569-5574-00 ")
 ;;4499
 ;;21,"54569-5574-01 ")
 ;;4500
 ;;21,"54569-5574-02 ")
 ;;4501
 ;;21,"54569-5574-03 ")
 ;;4502
 ;;21,"54569-5574-04 ")
 ;;4503
 ;;21,"54569-5574-05 ")
 ;;4504
 ;;21,"54569-5574-06 ")
 ;;4505
 ;;21,"54569-5584-00 ")
 ;;4234
 ;;21,"54569-5584-01 ")
 ;;4235
 ;;21,"54569-5584-02 ")
 ;;4236
 ;;21,"54569-5638-00 ")
 ;;1009
 ;;21,"54569-5638-01 ")
 ;;1010
 ;;21,"54569-5649-00 ")
 ;;6982
 ;;21,"54569-5650-00 ")
 ;;6983
 ;;21,"54569-5688-00 ")
 ;;2901
 ;;21,"54569-5689-00 ")
 ;;1038
 ;;21,"54569-5690-00 ")
 ;;1039
 ;;21,"54569-5698-00 ")
 ;;2980
 ;;21,"54569-5698-01 ")
 ;;2981
 ;;21,"54569-5698-02 ")
 ;;2982
 ;;21,"54569-5720-00 ")
 ;;6880
 ;;21,"54569-5721-00 ")
 ;;6921
 ;;21,"54569-5722-00 ")
 ;;6801
 ;;21,"54569-5723-00 ")
 ;;6881
 ;;21,"54569-5724-00 ")
 ;;6922
 ;;21,"54569-5725-00 ")
 ;;6802
 ;;21,"54569-5727-00 ")
 ;;608
 ;;21,"54569-5754-00 ")
 ;;2687
 ;;21,"54569-5755-00 ")
 ;;2688
 ;;21,"54569-5756-00 ")
 ;;2810
 ;;21,"54569-5774-00 ")
 ;;2453
 ;;21,"54569-5774-01 ")
 ;;2454
 ;;21,"54569-5774-02 ")
 ;;2455
 ;;21,"54569-5774-03 ")
 ;;2456
 ;;21,"54569-5784-00 ")
 ;;5275
 ;;21,"54569-5785-00 ")
 ;;5307
 ;;21,"54569-5804-00 ")
 ;;2859
 ;;21,"54569-5806-00 ")
 ;;2549
 ;;21,"54569-5807-00 ")
 ;;2563
 ;;21,"54569-5808-00 ")
 ;;2602
 ;;21,"54569-5809-00 ")
 ;;2603
 ;;21,"54569-5810-00 ")
 ;;2604
 ;;21,"54569-5813-00 ")
 ;;5753
 ;;21,"54569-5824-00 ")
 ;;4319
 ;;21,"54569-5829-00 ")
 ;;2927
 ;;21,"54569-5831-00 ")
 ;;1199
 ;;21,"54569-5899-00 ")
 ;;4670
 ;;21,"54569-5917-00 ")
 ;;6984
 ;;21,"54569-5918-00 ")
 ;;6985
 ;;21,"54569-5919-00 ")
 ;;6955
 ;;21,"54569-5920-00 ")
 ;;6956
 ;;21,"54569-5921-00 ")
 ;;7016
 ;;21,"54569-5921-01 ")
 ;;7017
 ;;21,"54569-5921-02 ")
 ;;7018
 ;;21,"54569-5921-03 ")
 ;;7019
 ;;21,"54569-6037-00 ")
 ;;446
 ;;21,"54569-6043-00 ")
 ;;1200
 ;;21,"54569-6083-00 ")
 ;;3562
 ;;21,"54569-6084-00 ")
 ;;3563
 ;;21,"54569-6195-00 ")
 ;;5334
 ;;21,"54569-6204-00 ")
 ;;2811
 ;;21,"54569-6237-00 ")
 ;;4912
 ;;21,"54569-6237-01 ")
 ;;4913
 ;;21,"54569-6237-02 ")
 ;;4914
 ;;21,"54569-6237-03 ")
 ;;4915
 ;;21,"54569-6238-00 ")
 ;;4980
 ;;21,"54569-6238-01 ")
 ;;4981
 ;;21,"54569-6241-00 ")
 ;;4812
 ;;21,"54569-6241-01 ")
 ;;4813
 ;;21,"54569-6448-00 ")
 ;;2812
 ;;21,"54569-8004-00 ")
 ;;3733
 ;;21,"54569-8021-00 ")
 ;;3564
 ;;21,"54799-0533-60 ")
 ;;5917
 ;;21,"54799-0534-66 ")
 ;;5908
 ;;21,"54799-0535-60 ")
 ;;6764
 ;;21,"54807-0251-20 ")
 ;;408
 ;;21,"54868-0018-05 ")
 ;;3443
 ;;21,"54868-0021-00 ")
 ;;5754
 ;;21,"54868-0021-01 ")
 ;;5755
 ;;21,"54868-0021-02 ")
 ;;5756
 ;;21,"54868-0021-04 ")
 ;;5757
 ;;21,"54868-0021-05 ")
 ;;5758
 ;;21,"54868-0021-06 ")
 ;;5759
 ;;21,"54868-0021-07 ")
 ;;5760
 ;;21,"54868-0021-09 ")
 ;;5761
 ;;21,"54868-0023-01 ")
 ;;6022
 ;;21,"54868-0023-02 ")
 ;;6023
 ;;21,"54868-0023-03 ")
 ;;6024
 ;;21,"54868-0023-05 ")
 ;;6025
 ;;21,"54868-0023-06 ")
 ;;6026
 ;;21,"54868-0023-08 ")
 ;;6027
 ;;21,"54868-0023-09 ")
 ;;6028
 ;;21,"54868-0023-14 ")
 ;;6029
 ;;21,"54868-0153-00 ")
 ;;1671
 ;;21,"54868-0153-01 ")
 ;;1672
 ;;21,"54868-0153-03 ")
 ;;1673
 ;;21,"54868-0153-05 ")
 ;;1674
 ;;21,"54868-0153-08 ")
 ;;1675
 ;;21,"54868-0153-09 ")
 ;;1676
 ;;21,"54868-0154-00 ")
 ;;1976
 ;;21,"54868-0154-01 ")
 ;;1977
 ;;21,"54868-0154-02 ")
 ;;1978
 ;;21,"54868-0154-03 ")
 ;;1979
 ;;21,"54868-0154-04 ")
 ;;1980
 ;;21,"54868-0154-06 ")
 ;;1981
 ;;21,"54868-0154-07 ")
 ;;1982
 ;;21,"54868-0154-08 ")
 ;;1983
 ;;21,"54868-0154-09 ")
 ;;1984
 ;;21,"54868-0191-01 ")
 ;;6193
 ;;21,"54868-0191-02 ")
 ;;6194
 ;;21,"54868-0191-03 ")
 ;;6195
 ;;21,"54868-0191-04 ")
 ;;6196
 ;;21,"54868-0191-05 ")
 ;;6197
 ;;21,"54868-0191-06 ")
 ;;6198
 ;;21,"54868-0199-00 ")
 ;;924
 ;;21,"54868-0199-03 ")
 ;;925
 ;;21,"54868-0200-00 ")
 ;;997
 ;;21,"54868-0200-01 ")
 ;;998
 ;;21,"54868-0224-01 ")
 ;;3068
 ;;21,"54868-0224-03 ")
 ;;3069
 ;;21,"54868-0224-04 ")
 ;;3070
 ;;21,"54868-0224-06 ")
 ;;3071
 ;;21,"54868-0286-00 ")
 ;;1011
 ;;21,"54868-0333-01 ")
 ;;3444
 ;;21,"54868-0333-02 ")
 ;;3445
 ;;21,"54868-0333-04 ")
 ;;3446
 ;;21,"54868-0333-06 ")
 ;;3447
 ;;21,"54868-0333-07 ")
 ;;3448
 ;;21,"54868-0337-00 ")
 ;;5762
 ;;21,"54868-0337-01 ")
 ;;5763
 ;;21,"54868-0337-03 ")
 ;;5764
 ;;21,"54868-0388-01 ")
 ;;1123
 ;;21,"54868-0388-02 ")
 ;;1124
 ;;21,"54868-0388-04 ")
 ;;1125
 ;;21,"54868-0388-05 ")
 ;;1126
 ;;21,"54868-0425-00 ")
 ;;1985
 ;;21,"54868-0538-01 ")
 ;;1566
 ;;21,"54868-0538-02 ")
 ;;1567
 ;;21,"54868-0559-00 ")
 ;;1318
 ;;21,"54868-0654-00 ")
 ;;2928
 ;;21,"54868-0737-01 ")
 ;;6986
 ;;21,"54868-0840-00 ")
 ;;3204
 ;;21,"54868-0840-01 ")
 ;;3205
 ;;21,"54868-0840-02 ")
 ;;3206
 ;;21,"54868-0840-03 ")
 ;;3207
 ;;21,"54868-0840-04 ")
 ;;3208
 ;;21,"54868-0937-00 ")
 ;;3931
 ;;21,"54868-0937-01 ")
 ;;3932
 ;;21,"54868-0937-02 ")
 ;;3933
 ;;21,"54868-0939-05 ")
 ;;4506
 ;;21,"54868-0971-00 ")
 ;;3398
 ;;21,"54868-0971-01 ")
 ;;3399
 ;;21,"54868-1080-00 ")
 ;;5387
 ;;21,"54868-1080-01 ")
 ;;5388
 ;;21,"54868-1080-03 ")
 ;;5389
 ;;21,"54868-1171-00 ")
 ;;3651
 ;;21,"54868-1171-01 ")
 ;;3652
 ;;21,"54868-1171-02 ")
 ;;3653
 ;;21,"54868-1171-03 ")
 ;;3654
 ;;21,"54868-1173-00 ")
 ;;3817
 ;;21,"54868-1173-01 ")
 ;;3818
 ;;21,"54868-1173-02 ")
 ;;3819
 ;;21,"54868-1173-04 ")
 ;;3820
 ;;21,"54868-1173-05 ")
 ;;3821
 ;;21,"54868-1173-06 ")
 ;;3822
 ;;21,"54868-1380-00 ")
 ;;4003
 ;;21,"54868-1380-01 ")
 ;;4004
 ;;21,"54868-1380-02 ")
 ;;4005
 ;;21,"54868-1380-03 ")
 ;;4006
 ;;21,"54868-1385-01 ")
 ;;1792
 ;;21,"54868-1385-02 ")
 ;;1793
 ;;21,"54868-1386-01 ")
 ;;3139
 ;;21,"54868-1386-02 ")
 ;;3140
 ;;21,"54868-1386-03 ")
 ;;3141
 ;;21,"54868-1386-04 ")
 ;;3142
 ;;21,"54868-1386-05 ")
 ;;3143
 ;;21,"54868-1387-00 ")
 ;;3325
 ;;21,"54868-1387-01 ")
 ;;3326
 ;;21,"54868-1387-02 ")
 ;;3327
 ;;21,"54868-1387-04 ")
 ;;3328
 ;;21,"54868-1392-00 ")
 ;;1407
 ;;21,"54868-1616-02 ")
 ;;2144
 ;;21,"54868-1710-00 ")
 ;;5470
 ;;21,"54868-1774-00 ")
 ;;3363
 ;;21,"54868-1774-02 ")
 ;;3364
 ;;21,"54868-1780-01 ")
 ;;3734
 ;;21,"54868-1780-02 ")
 ;;3735
 ;;21,"54868-1857-00 ")
 ;;2302
 ;;21,"54868-1857-01 ")
 ;;2303
 ;;21,"54868-1857-02 ")
 ;;2304
 ;;21,"54868-1857-05 ")
 ;;2305
 ;;21,"54868-1857-06 ")
 ;;2306
 ;;21,"54868-1857-07 ")
 ;;2307
 ;;21,"54868-2390-00 ")
 ;;6522
 ;;21,"54868-2390-01 ")
 ;;6523
 ;;21,"54868-2391-00 ")
 ;;6446
 ;;21,"54868-2391-01 ")
 ;;6447
 ;;21,"54868-2391-02 ")
 ;;6448
 ;;21,"54868-2391-03 ")
 ;;6449
 ;;21,"54868-2391-04 ")
 ;;6450
 ;;21,"54868-2391-05 ")
 ;;6451
 ;;21,"54868-2488-01 ")
 ;;6803
 ;;21,"54868-2840-00 ")
 ;;3290
 ;;21,"54868-2840-01 ")
 ;;3291
 ;;21,"54868-2910-00 ")
 ;;1542
 ;;21,"54868-3105-00 ")
 ;;340
 ;;21,"54868-3105-01 ")
 ;;341
 ;;21,"54868-3105-02 ")
 ;;342
 ;;21,"54868-3105-03 ")
 ;;343
 ;;21,"54868-3107-01 ")
 ;;232
 ;;21,"54868-3107-02 ")
 ;;233
 ;;21,"54868-3107-03 ")
 ;;234
 ;;21,"54868-3107-06 ")
 ;;235
 ;;21,"54868-3107-07 ")
 ;;236
 ;;21,"54868-3107-09 ")
 ;;237
 ;;21,"54868-3109-00 ")
 ;;609
 ;;21,"54868-3109-01 ")
 ;;610
 ;;21,"54868-3109-02 ")
 ;;611
 ;;21,"54868-3109-03 ")
 ;;612
 ;;21,"54868-3109-05 ")
 ;;613
 ;;21,"54868-3109-06 ")
 ;;614
 ;;21,"54868-3109-07 ")
 ;;615
 ;;21,"54868-3109-08 ")
 ;;616
 ;;21,"54868-3109-09 ")
 ;;617
 ;;21,"54868-3113-00 ")
 ;;854
 ;;21,"54868-3113-03 ")
 ;;855
 ;;21,"54868-3113-05 ")
 ;;856
 ;;21,"54868-3113-07 ")
 ;;857
 ;;21,"54868-3113-08 ")
 ;;858
 ;;21,"54868-3113-09 ")
 ;;859
 ;;21,"54868-3169-00 ")
 ;;6317
 ;;21,"54868-3169-01 ")
 ;;6318
 ;;21,"54868-3169-02 ")
 ;;6319
 ;;21,"54868-3169-04 ")
 ;;6320
 ;;21,"54868-3169-05 ")
 ;;6321
 ;;21,"54868-3169-06 ")
 ;;6322
 ;;21,"54868-3244-00 ")
 ;;2813
 ;;21,"54868-3384-00 ")
 ;;2929
 ;;21,"54868-3480-00 ")
 ;;3591
 ;;21,"54868-3511-04 ")
 ;;5218
 ;;21,"54868-3648-01 ")
 ;;2814
 ;;21,"54868-3695-00 ")
 ;;2175
 ;;21,"54868-3742-01 ")
 ;;1468
 ;;21,"54868-3742-02 ")
 ;;1469
 ;;21,"54868-3742-03 ")
 ;;1470
 ;;21,"54868-3923-00 ")
 ;;4916
 ;;21,"54868-3923-01 ")
 ;;4917
 ;;21,"54868-3923-02 ")
 ;;4918
 ;;21,"54868-3923-03 ")
 ;;4919
 ;;21,"54868-3923-04 ")
 ;;4920
 ;;21,"54868-3923-05 ")
 ;;4921
 ;;21,"54868-4047-00 ")
 ;;77
 ;;21,"54868-4078-00 ")
 ;;2605
 ;;21,"54868-4078-01 ")
 ;;2606
 ;;21,"54868-4078-02 ")
 ;;2607
 ;;21,"54868-4125-01 ")
 ;;3609
 ;;21,"54868-4125-02 ")
 ;;3610
 ;;21,"54868-4150-00 ")
 ;;119
 ;;21,"54868-4150-01 ")
 ;;120
 ;;21,"54868-4150-02 ")
 ;;121
 ;;21,"54868-4154-00 ")
 ;;2176
 ;;21,"54868-4155-00 ")
 ;;409
 ;;21,"54868-4155-01 ")
 ;;410
 ;;21,"54868-4155-02 ")
 ;;411
 ;;21,"54868-4155-03 ")
 ;;412
 ;;21,"54868-4175-00 ")
 ;;4814
 ;;21,"54868-4175-01 ")
 ;;4815
 ;;21,"54868-4175-02 ")
 ;;4816
 ;;21,"54868-4175-03 ")
 ;;4817
 ;;21,"54868-4175-04 ")
 ;;4818
 ;;21,"54868-4175-05 ")
 ;;4819
 ;;21,"54868-4191-00 ")
 ;;3046
 ;;21,"54868-4191-01 ")
 ;;3047
 ;;21,"54868-4366-00 ")
 ;;7020
 ;;21,"54868-4366-01 ")
 ;;7021
 ;;21,"54868-4367-00 ")
 ;;5031
 ;;21,"54868-4367-01 ")
 ;;5032
 ;;21,"54868-4367-02 ")
 ;;5033
 ;;21,"54868-4367-03 ")
 ;;5034
 ;;21,"54868-4468-00 ")
 ;;154
 ;;21,"54868-4488-00 ")
 ;;3581
 ;;21,"54868-4527-00 ")
 ;;2533
 ;;21,"54868-4543-00 ")
 ;;743
 ;;21,"54868-4543-01 ")
 ;;744
 ;;21,"54868-4543-02 ")
 ;;745
 ;;21,"54868-4547-00 ")
 ;;4068
 ;;21,"54868-4644-00 ")
 ;;2689
 ;;21,"54868-4644-01 ")
 ;;2690
 ;;21,"54868-4644-02 ")
 ;;2691
 ;;21,"54868-4651-00 ")
 ;;1377
 ;;21,"54868-4682-00 ")
 ;;6957
 ;;21,"54868-4682-01 ")
 ;;6958
 ;;21,"54868-4734-00 ")
 ;;4671
 ;;21,"54868-4734-01 ")
 ;;4672
 ;;21,"54868-4734-02 ")
 ;;4673
 ;;21,"54868-4734-03 ")
 ;;4674
 ;;21,"54868-4734-04 ")
 ;;4675
 ;;21,"54868-4735-01 ")
 ;;910