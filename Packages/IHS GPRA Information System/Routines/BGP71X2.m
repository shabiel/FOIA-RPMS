BGP71X2 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"43353-0369-92 ")
 ;;340
 ;;21,"43353-0369-94 ")
 ;;341
 ;;21,"43353-0379-60 ")
 ;;342
 ;;21,"43353-0379-73 ")
 ;;343
 ;;21,"43353-0379-80 ")
 ;;344
 ;;21,"43353-0379-92 ")
 ;;345
 ;;21,"43353-0379-98 ")
 ;;346
 ;;21,"43353-0582-80 ")
 ;;347
 ;;21,"43353-0656-53 ")
 ;;348
 ;;21,"43353-0656-60 ")
 ;;349
 ;;21,"43353-0656-70 ")
 ;;350
 ;;21,"43353-0656-80 ")
 ;;351
 ;;21,"43353-0656-90 ")
 ;;352
 ;;21,"43353-0656-92 ")
 ;;353
 ;;21,"43353-0656-94 ")
 ;;354
 ;;21,"43353-0659-60 ")
 ;;355
 ;;21,"43353-0659-80 ")
 ;;356
 ;;21,"43683-0123-60 ")
 ;;357
 ;;21,"43683-0124-30 ")
 ;;358
 ;;21,"45802-0770-78 ")
 ;;359
 ;;21,"45802-0822-78 ")
 ;;360
 ;;21,"45802-0947-78 ")
 ;;361
 ;;21,"45963-0753-02 ")
 ;;362
 ;;21,"47463-0241-30 ")
 ;;363
 ;;21,"47463-0242-30 ")
 ;;364
 ;;21,"47463-0243-30 ")
 ;;365
 ;;21,"47463-0243-60 ")
 ;;366
 ;;21,"47463-0244-30 ")
 ;;367
 ;;21,"47463-0245-30 ")
 ;;368
 ;;21,"47463-0245-60 ")
 ;;369
 ;;21,"47463-0246-30 ")
 ;;370
 ;;21,"47463-0247-30 ")
 ;;371
 ;;21,"47463-0248-90 ")
 ;;372
 ;;21,"49884-0745-01 ")
 ;;373
 ;;21,"49884-0745-05 ")
 ;;374
 ;;21,"49884-0746-01 ")
 ;;375
 ;;21,"49884-0746-05 ")
 ;;376
 ;;21,"49999-0107-00 ")
 ;;377
 ;;21,"49999-0107-20 ")
 ;;378
 ;;21,"49999-0107-30 ")
 ;;379
 ;;21,"49999-0107-60 ")
 ;;380
 ;;21,"49999-0107-90 ")
 ;;381
 ;;21,"49999-0108-00 ")
 ;;382
 ;;21,"49999-0108-30 ")
 ;;383
 ;;21,"49999-0108-60 ")
 ;;384
 ;;21,"49999-0108-90 ")
 ;;385
 ;;21,"49999-0113-00 ")
 ;;386
 ;;21,"49999-0113-01 ")
 ;;387
 ;;21,"49999-0113-30 ")
 ;;388
 ;;21,"49999-0113-60 ")
 ;;389
 ;;21,"49999-0113-90 ")
 ;;390
 ;;21,"49999-0401-30 ")
 ;;391
 ;;21,"49999-0401-60 ")
 ;;392
 ;;21,"49999-0401-90 ")
 ;;393
 ;;21,"49999-0514-30 ")
 ;;394
 ;;21,"49999-0571-60 ")
 ;;395
 ;;21,"49999-0660-30 ")
 ;;396
 ;;21,"49999-0660-60 ")
 ;;397
 ;;21,"49999-0781-00 ")
 ;;398
 ;;21,"49999-0781-30 ")
 ;;399
 ;;21,"49999-0781-60 ")
 ;;400
 ;;21,"49999-0781-90 ")
 ;;401
 ;;21,"49999-0807-00 ")
 ;;402
 ;;21,"49999-0807-30 ")
 ;;403
 ;;21,"49999-0807-60 ")
 ;;404
 ;;21,"49999-0807-90 ")
 ;;405
 ;;21,"49999-0808-00 ")
 ;;406
 ;;21,"51079-0425-01 ")
 ;;407
 ;;21,"51079-0425-20 ")
 ;;408
 ;;21,"51079-0426-01 ")
 ;;409
 ;;21,"51079-0426-20 ")
 ;;410
 ;;21,"51079-0810-01 ")
 ;;411
 ;;21,"51079-0810-17 ")
 ;;412
 ;;21,"51079-0810-19 ")
 ;;413
 ;;21,"51079-0810-20 ")
 ;;414
 ;;21,"51079-0811-01 ")
 ;;415
 ;;21,"51079-0811-17 ")
 ;;416
 ;;21,"51079-0811-19 ")
 ;;417
 ;;21,"51079-0811-20 ")
 ;;418
 ;;21,"51079-0872-01 ")
 ;;419
 ;;21,"51079-0872-20 ")
 ;;420
 ;;21,"51079-0873-01 ")
 ;;421
 ;;21,"51079-0873-17 ")
 ;;422
 ;;21,"51079-0873-19 ")
 ;;423
 ;;21,"51079-0873-20 ")
 ;;424
 ;;21,"51138-0251-30 ")
 ;;425
 ;;21,"51138-0252-30 ")
 ;;426
 ;;21,"51138-0265-30 ")
 ;;427
 ;;21,"51138-0266-30 ")
 ;;428
 ;;21,"51138-0267-30 ")
 ;;429
 ;;21,"51138-0268-30 ")
 ;;430
 ;;21,"51138-0269-30 ")
 ;;431
 ;;21,"51138-0270-30 ")
 ;;432
 ;;21,"51138-0271-30 ")
 ;;433
 ;;21,"51138-0337-30 ")
 ;;434
 ;;21,"51138-0338-30 ")
 ;;435
 ;;21,"51138-0339-30 ")
 ;;436
 ;;21,"51138-0367-30 ")
 ;;437
 ;;21,"51138-0368-30 ")
 ;;438
 ;;21,"51138-0369-30 ")
 ;;439
 ;;21,"51138-0370-30 ")
 ;;440
 ;;21,"51138-0371-30 ")
 ;;441
 ;;21,"51138-0372-10 ")
 ;;442
 ;;21,"51138-0372-30 ")
 ;;443
 ;;21,"51138-0470-30 ")
 ;;444
 ;;21,"51138-0471-30 ")
 ;;445
 ;;21,"51138-0472-30 ")
 ;;446
 ;;21,"51138-0473-30 ")
 ;;447
 ;;21,"51138-0474-30 ")
 ;;448
 ;;21,"51138-0475-30 ")
 ;;449
 ;;21,"52959-0449-01 ")
 ;;450
 ;;21,"52959-0449-30 ")
 ;;451
 ;;21,"52959-0449-60 ")
 ;;452
 ;;21,"52959-0598-90 ")
 ;;453
 ;;21,"52959-0822-00 ")
 ;;454
 ;;21,"52959-0822-30 ")
 ;;455
 ;;21,"52959-0822-60 ")
 ;;456
 ;;21,"52959-0823-20 ")
 ;;457
 ;;21,"52959-0823-60 ")
 ;;458
 ;;21,"52959-0888-00 ")
 ;;459
 ;;21,"52959-0888-30 ")
 ;;460
 ;;21,"52959-0936-30 ")
 ;;461
 ;;21,"52959-0936-60 ")
 ;;462
 ;;21,"53002-0446-00 ")
 ;;463
 ;;21,"53002-0446-30 ")
 ;;464
 ;;21,"53002-0446-60 ")
 ;;465
 ;;21,"53002-1111-00 ")
 ;;466
 ;;21,"53002-1111-03 ")
 ;;467
 ;;21,"53002-1111-06 ")
 ;;468
 ;;21,"53217-0196-30 ")
 ;;469
 ;;21,"53217-0196-60 ")
 ;;470
 ;;21,"53217-0196-90 ")
 ;;471
 ;;21,"54348-0098-30 ")
 ;;472
 ;;21,"54348-0104-30 ")
 ;;473
 ;;21,"54458-0966-10 ")
 ;;474
 ;;21,"54458-0967-10 ")
 ;;475
 ;;21,"54458-0968-10 ")
 ;;476
 ;;21,"54569-3830-00 ")
 ;;477
 ;;21,"54569-3830-02 ")
 ;;478
 ;;21,"54569-3831-00 ")
 ;;479
 ;;21,"54569-3831-01 ")
 ;;480
 ;;21,"54569-3831-02 ")
 ;;481
 ;;21,"54569-3831-08 ")
 ;;482
 ;;21,"54569-3831-09 ")
 ;;483
 ;;21,"54569-3841-00 ")
 ;;484
 ;;21,"54569-3841-01 ")
 ;;485
 ;;21,"54569-3841-02 ")
 ;;486
 ;;21,"54569-3841-03 ")
 ;;487
 ;;21,"54569-3841-04 ")
 ;;488
 ;;21,"54569-3842-00 ")
 ;;489
 ;;21,"54569-3842-01 ")
 ;;490
 ;;21,"54569-3842-02 ")
 ;;491
 ;;21,"54569-3842-04 ")
 ;;492
 ;;21,"54569-3842-05 ")
 ;;493
 ;;21,"54569-3842-06 ")
 ;;494
 ;;21,"54569-3937-00 ")
 ;;495
 ;;21,"54569-3938-00 ")
 ;;496
 ;;21,"54569-5547-00 ")
 ;;497
 ;;21,"54569-5547-02 ")
 ;;498
 ;;21,"54569-5548-00 ")
 ;;499
 ;;21,"54569-5548-01 ")
 ;;500
 ;;21,"54569-5548-02 ")
 ;;501
 ;;21,"54569-5618-00 ")
 ;;502
 ;;21,"54569-5618-01 ")
 ;;503
 ;;21,"54569-5618-02 ")
 ;;504
 ;;21,"54569-5618-03 ")
 ;;505
 ;;21,"54569-5619-00 ")
 ;;506
 ;;21,"54569-5619-01 ")
 ;;507
 ;;21,"54569-5619-02 ")
 ;;508
 ;;21,"54569-5619-03 ")
 ;;509
 ;;21,"54569-5619-04 ")
 ;;510
 ;;21,"54569-5855-00 ")
 ;;511
 ;;21,"54569-5855-01 ")
 ;;512
 ;;21,"54569-5855-02 ")
 ;;513
 ;;21,"54569-5855-03 ")
 ;;514
 ;;21,"54569-5992-00 ")
 ;;515
 ;;21,"54569-5992-01 ")
 ;;516
 ;;21,"54569-5993-00 ")
 ;;517
 ;;21,"54569-5993-01 ")
 ;;518
 ;;21,"54569-6072-00 ")
 ;;519
 ;;21,"54569-6072-01 ")
 ;;520
 ;;21,"54569-6072-02 ")
 ;;521
 ;;21,"54569-6072-03 ")
 ;;522
 ;;21,"54868-0036-00 ")
 ;;523
 ;;21,"54868-0036-02 ")
 ;;524
 ;;21,"54868-0036-04 ")
 ;;525
 ;;21,"54868-0795-00 ")
 ;;526
 ;;21,"54868-0877-01 ")
 ;;527
 ;;21,"54868-1020-00 ")
 ;;528
 ;;21,"54868-1361-01 ")
 ;;529
 ;;21,"54868-3017-00 ")
 ;;530
 ;;21,"54868-3265-00 ")
 ;;531
 ;;21,"54868-3265-01 ")
 ;;532
 ;;21,"54868-3265-03 ")
 ;;533
 ;;21,"54868-3265-04 ")
 ;;534
 ;;21,"54868-3265-05 ")
 ;;535
 ;;21,"54868-3265-06 ")
 ;;536
 ;;21,"54868-3266-01 ")
 ;;537
 ;;21,"54868-3266-02 ")
 ;;538
 ;;21,"54868-3266-03 ")
 ;;539
 ;;21,"54868-3266-04 ")
 ;;540
 ;;21,"54868-3318-01 ")
 ;;541
 ;;21,"54868-3318-02 ")
 ;;542
 ;;21,"54868-3318-03 ")
 ;;543
 ;;21,"54868-3318-04 ")
 ;;544
 ;;21,"54868-3318-05 ")
 ;;545
 ;;21,"54868-3319-01 ")
 ;;546
 ;;21,"54868-3319-02 ")
 ;;547
 ;;21,"54868-3319-04 ")
 ;;548
 ;;21,"54868-3319-05 ")
 ;;549
 ;;21,"54868-3319-06 ")
 ;;550
 ;;21,"54868-3319-07 ")
 ;;551
 ;;21,"54868-3327-00 ")
 ;;552
 ;;21,"54868-3334-00 ")
 ;;553
 ;;21,"54868-3334-01 ")
 ;;554
 ;;21,"54868-3334-02 ")
 ;;555
 ;;21,"54868-3334-03 ")
 ;;556
 ;;21,"54868-3334-04 ")
 ;;557
 ;;21,"54868-3335-00 ")
 ;;558
 ;;21,"54868-3335-01 ")
 ;;559
 ;;21,"54868-3335-02 ")
 ;;560
 ;;21,"54868-3335-03 ")
 ;;561
 ;;21,"54868-3377-00 ")
 ;;562
 ;;21,"54868-3377-01 ")
 ;;563
 ;;21,"54868-3377-02 ")
 ;;564
 ;;21,"54868-3377-03 ")
 ;;565
 ;;21,"54868-3426-00 ")
 ;;566
 ;;21,"54868-3426-01 ")
 ;;567
 ;;21,"54868-3711-00 ")
 ;;568
 ;;21,"54868-3711-01 ")
 ;;569
 ;;21,"54868-4091-00 ")
 ;;570
 ;;21,"54868-4091-01 ")
 ;;571
 ;;21,"54868-4091-02 ")
 ;;572
 ;;21,"54868-4091-03 ")
 ;;573
 ;;21,"54868-4420-00 ")
 ;;574
 ;;21,"54868-4529-00 ")
 ;;575
 ;;21,"54868-4529-01 ")
 ;;576
 ;;21,"54868-4529-02 ")
 ;;577
 ;;21,"54868-4529-03 ")
 ;;578
 ;;21,"54868-4609-00 ")
 ;;579
 ;;21,"54868-4609-01 ")
 ;;580
 ;;21,"54868-4842-00 ")
 ;;581
 ;;21,"54868-4842-01 ")
 ;;582
 ;;21,"54868-4842-02 ")
 ;;583
 ;;21,"54868-4906-00 ")
 ;;584
 ;;21,"54868-4988-00 ")
 ;;585
 ;;21,"54868-4988-01 ")
 ;;586
 ;;21,"54868-4988-02 ")
 ;;587
 ;;21,"54868-4988-03 ")
 ;;588
 ;;21,"54868-4988-04 ")
 ;;589
 ;;21,"54868-5148-00 ")
 ;;590
 ;;21,"54868-5148-01 ")
 ;;591
 ;;21,"54868-5148-02 ")
 ;;592
 ;;21,"54868-5148-03 ")
 ;;593
 ;;21,"54868-5148-04 ")
 ;;594
 ;;21,"54868-5185-00 ")
 ;;595
 ;;21,"54868-5185-01 ")
 ;;596
 ;;21,"54868-5185-02 ")
 ;;597
 ;;21,"54868-5185-03 ")
 ;;598
 ;;21,"54868-5188-00 ")
 ;;599
 ;;21,"54868-5188-01 ")
 ;;600
 ;;21,"54868-5188-02 ")
 ;;601
 ;;21,"54868-5210-00 ")
 ;;602
 ;;21,"54868-5210-01 ")
 ;;603
 ;;21,"54868-5210-02 ")
 ;;604
 ;;21,"54868-5210-03 ")
 ;;605
 ;;21,"54868-5243-00 ")
 ;;606
 ;;21,"54868-5243-01 ")
 ;;607
 ;;21,"54868-5243-02 ")
 ;;608
 ;;21,"54868-5243-03 ")
 ;;609
 ;;21,"54868-5243-04 ")
 ;;610
 ;;21,"54868-5364-00 ")
 ;;611
 ;;21,"54868-5364-01 ")
 ;;612
 ;;21,"54868-5364-02 ")
 ;;613
 ;;21,"54868-5457-00 ")
 ;;614
 ;;21,"54868-5457-01 ")
 ;;615
 ;;21,"54868-5457-02 ")
 ;;616
 ;;21,"54868-5467-00 ")
 ;;617
 ;;21,"54868-5467-01 ")
 ;;618
 ;;21,"54868-5467-02 ")
 ;;619
 ;;21,"54868-5712-00 ")
 ;;620
 ;;21,"54868-5739-00 ")
 ;;621
 ;;21,"55048-0241-30 ")
 ;;622
 ;;21,"55048-0242-30 ")
 ;;623
 ;;21,"55048-0243-30 ")
 ;;624
 ;;21,"55048-0243-60 ")
 ;;625
 ;;21,"55048-0244-30 ")
 ;;626
 ;;21,"55048-0245-30 ")
 ;;627
 ;;21,"55048-0245-60 ")
 ;;628
 ;;21,"55048-0246-30 ")
 ;;629
 ;;21,"55048-0247-30 ")
 ;;630
 ;;21,"55048-0248-30 ")
 ;;631
 ;;21,"55048-0248-90 ")
 ;;632
 ;;21,"55048-0269-30 ")
 ;;633
 ;;21,"55048-0270-30 ")
 ;;634
 ;;21,"55048-0273-60 ")
 ;;635
 ;;21,"55048-0273-71 ")
 ;;636
 ;;21,"55048-0288-60 ")
 ;;637
 ;;21,"55048-0289-60 ")
 ;;638
 ;;21,"55111-0320-01 ")
 ;;639
 ;;21,"55111-0320-05 ")
 ;;640
 ;;21,"55111-0321-01 ")
 ;;641
 ;;21,"55111-0321-05 ")
 ;;642
 ;;21,"55111-0322-01 ")
 ;;643
 ;;21,"55111-0322-05 ")
 ;;644
 ;;21,"55111-0695-01 ")
 ;;645
 ;;21,"55111-0696-01 ")
 ;;646
 ;;21,"55111-0696-10 ")
 ;;647
 ;;21,"55111-0697-01 ")
 ;;648
 ;;21,"55111-0697-10 ")
 ;;649
 ;;21,"55289-0066-90 ")
 ;;650
 ;;21,"55289-0125-30 ")
 ;;651
 ;;21,"55289-0265-90 ")
 ;;652
 ;;21,"55289-0281-30 ")
 ;;653
 ;;21,"55289-0281-60 ")
 ;;654
 ;;21,"55289-0281-86 ")
 ;;655
 ;;21,"55289-0281-90 ")
 ;;656
 ;;21,"55289-0301-90 ")
 ;;657
 ;;21,"55289-0301-93 ")
 ;;658
 ;;21,"55289-0424-30 ")
 ;;659
 ;;21,"55289-0606-30 ")
 ;;660
 ;;21,"55289-0606-90 ")
 ;;661
 ;;21,"55289-0779-07 ")
 ;;662
 ;;21,"55289-0806-14 ")
 ;;663
 ;;21,"55289-0806-30 ")
 ;;664
 ;;21,"55289-0806-60 ")
 ;;665
 ;;21,"55289-0806-86 ")
 ;;666
 ;;21,"55289-0806-90 ")
 ;;667
 ;;21,"55289-0806-93 ")
 ;;668
 ;;21,"55289-0892-01 ")
 ;;669
 ;;21,"55289-0892-14 ")
 ;;670
 ;;21,"55289-0892-15 ")
 ;;671
 ;;21,"55289-0892-30 ")
 ;;672
 ;;21,"55289-0892-60 ")
 ;;673
 ;;21,"55289-0892-86 ")
 ;;674
 ;;21,"55289-0892-90 ")
 ;;675
 ;;21,"55289-0892-93 ")
 ;;676
 ;;21,"55289-0892-98 ")
 ;;677
 ;;21,"55289-0976-01 ")
 ;;678
 ;;21,"55289-0976-14 ")
 ;;679
 ;;21,"55289-0976-30 ")
 ;;680
 ;;21,"55289-0976-60 ")
 ;;681