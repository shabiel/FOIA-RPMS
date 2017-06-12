BGP47N10 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 16, 2014;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"67544-0121-53 ")
 ;;3497
 ;;21,"67544-0121-60 ")
 ;;3498
 ;;21,"67544-0121-70 ")
 ;;3499
 ;;21,"67544-0121-75 ")
 ;;3500
 ;;21,"67544-0139-30 ")
 ;;3501
 ;;21,"67544-0139-53 ")
 ;;3502
 ;;21,"67544-0139-60 ")
 ;;3503
 ;;21,"67544-0139-70 ")
 ;;3504
 ;;21,"67544-0206-30 ")
 ;;3505
 ;;21,"67544-0206-60 ")
 ;;3506
 ;;21,"67544-0253-30 ")
 ;;3507
 ;;21,"67544-0253-53 ")
 ;;3508
 ;;21,"67544-0253-60 ")
 ;;3509
 ;;21,"67544-0253-70 ")
 ;;3510
 ;;21,"67544-0267-30 ")
 ;;3511
 ;;21,"67544-0343-30 ")
 ;;3512
 ;;21,"67544-0343-53 ")
 ;;3513
 ;;21,"67544-0343-60 ")
 ;;3514
 ;;21,"67544-0343-70 ")
 ;;3515
 ;;21,"67544-0383-30 ")
 ;;3516
 ;;21,"67544-0383-53 ")
 ;;3517
 ;;21,"67544-0383-60 ")
 ;;3518
 ;;21,"67544-0383-70 ")
 ;;3519
 ;;21,"67544-0394-30 ")
 ;;3520
 ;;21,"67544-0394-53 ")
 ;;3521
 ;;21,"67544-0394-60 ")
 ;;3522
 ;;21,"67544-0394-70 ")
 ;;3523
 ;;21,"67544-0759-53 ")
 ;;3524
 ;;21,"67544-0996-10 ")
 ;;3525
 ;;21,"67544-0996-14 ")
 ;;3526
 ;;21,"67544-0996-15 ")
 ;;3527
 ;;21,"67544-0996-20 ")
 ;;3528
 ;;21,"67544-0996-21 ")
 ;;3529
 ;;21,"67544-0996-28 ")
 ;;3530
 ;;21,"67544-0996-30 ")
 ;;3531
 ;;21,"67544-0996-40 ")
 ;;3532
 ;;21,"67544-0996-45 ")
 ;;3533
 ;;21,"67544-0996-53 ")
 ;;3534
 ;;21,"67544-0996-59 ")
 ;;3535
 ;;21,"67544-0996-60 ")
 ;;3536
 ;;21,"67544-0996-62 ")
 ;;3537
 ;;21,"67544-1000-30 ")
 ;;3538
 ;;21,"67544-1002-07 ")
 ;;3539
 ;;21,"67544-1002-14 ")
 ;;3540
 ;;21,"67544-1015-07 ")
 ;;3541
 ;;21,"67544-1015-10 ")
 ;;3542
 ;;21,"67544-1015-15 ")
 ;;3543
 ;;21,"67544-1015-20 ")
 ;;3544
 ;;21,"67544-1015-21 ")
 ;;3545
 ;;21,"67544-1015-30 ")
 ;;3546
 ;;21,"67544-1015-53 ")
 ;;3547
 ;;21,"67544-1027-07 ")
 ;;3548
 ;;21,"67544-1027-14 ")
 ;;3549
 ;;21,"67544-1027-15 ")
 ;;3550
 ;;21,"67544-1027-30 ")
 ;;3551
 ;;21,"67544-1045-30 ")
 ;;3552
 ;;21,"67544-1045-53 ")
 ;;3553
 ;;21,"67544-1141-30 ")
 ;;3554
 ;;21,"67544-1184-30 ")
 ;;3555
 ;;21,"67544-1201-30 ")
 ;;3556
 ;;21,"67544-1202-15 ")
 ;;3557
 ;;21,"67544-1202-30 ")
 ;;3558
 ;;21,"67544-1202-53 ")
 ;;3559
 ;;21,"67870-0111-01 ")
 ;;3560
 ;;21,"67870-0111-05 ")
 ;;3561
 ;;21,"67877-0210-01 ")
 ;;3562
 ;;21,"67877-0211-01 ")
 ;;3563
 ;;21,"68032-0256-10 ")
 ;;3564
 ;;21,"68032-0395-16 ")
 ;;3565
 ;;21,"68071-0304-30 ")
 ;;3566
 ;;21,"68071-0305-30 ")
 ;;3567
 ;;21,"68071-0361-30 ")
 ;;3568
 ;;21,"68071-0414-30 ")
 ;;3569
 ;;21,"68071-0421-30 ")
 ;;3570
 ;;21,"68071-0421-60 ")
 ;;3571
 ;;21,"68071-0421-90 ")
 ;;3572
 ;;21,"68071-0553-30 ")
 ;;3573
 ;;21,"68071-0698-10 ")
 ;;3574
 ;;21,"68071-0698-14 ")
 ;;3575
 ;;21,"68071-0698-20 ")
 ;;3576
 ;;21,"68071-0698-30 ")
 ;;3577
 ;;21,"68071-0698-60 ")
 ;;3578
 ;;21,"68071-0703-14 ")
 ;;3579
 ;;21,"68071-0703-30 ")
 ;;3580
 ;;21,"68071-0703-45 ")
 ;;3581
 ;;21,"68071-0703-60 ")
 ;;3582
 ;;21,"68071-0788-30 ")
 ;;3583
 ;;21,"68071-0789-30 ")
 ;;3584
 ;;21,"68071-2007-03 ")
 ;;3585
 ;;21,"68071-2007-06 ")
 ;;3586
 ;;21,"68084-0114-00 ")
 ;;3587
 ;;21,"68084-0114-05 ")
 ;;3588
 ;;21,"68084-0225-01 ")
 ;;3589
 ;;21,"68084-0225-11 ")
 ;;3590
 ;;21,"68084-0226-01 ")
 ;;3591
 ;;21,"68084-0226-11 ")
 ;;3592
 ;;21,"68084-0396-01 ")
 ;;3593
 ;;21,"68084-0396-11 ")
 ;;3594
 ;;21,"68084-0523-11 ")
 ;;3595
 ;;21,"68084-0523-21 ")
 ;;3596
 ;;21,"68115-0019-00 ")
 ;;3597
 ;;21,"68115-0019-10 ")
 ;;3598
 ;;21,"68115-0019-15 ")
 ;;3599
 ;;21,"68115-0019-20 ")
 ;;3600
 ;;21,"68115-0019-30 ")
 ;;3601
 ;;21,"68115-0019-60 ")
 ;;3602
 ;;21,"68115-0019-90 ")
 ;;3603
 ;;21,"68115-0020-00 ")
 ;;3604
 ;;21,"68115-0020-10 ")
 ;;3605
 ;;21,"68115-0020-15 ")
 ;;3606
 ;;21,"68115-0020-30 ")
 ;;3607
 ;;21,"68115-0021-00 ")
 ;;3608
 ;;21,"68115-0021-30 ")
 ;;3609
 ;;21,"68115-0021-60 ")
 ;;3610
 ;;21,"68115-0022-00 ")
 ;;3611
 ;;21,"68115-0022-30 ")
 ;;3612
 ;;21,"68115-0022-60 ")
 ;;3613
 ;;21,"68115-0022-90 ")
 ;;3614
 ;;21,"68115-0023-00 ")
 ;;3615
 ;;21,"68115-0023-30 ")
 ;;3616
 ;;21,"68115-0023-60 ")
 ;;3617
 ;;21,"68115-0023-90 ")
 ;;3618
 ;;21,"68115-0023-99 ")
 ;;3619
 ;;21,"68115-0024-00 ")
 ;;3620
 ;;21,"68115-0024-30 ")
 ;;3621
 ;;21,"68115-0024-60 ")
 ;;3622
 ;;21,"68115-0024-90 ")
 ;;3623
 ;;21,"68115-0041-15 ")
 ;;3624
 ;;21,"68115-0041-20 ")
 ;;3625
 ;;21,"68115-0041-30 ")
 ;;3626
 ;;21,"68115-0054-06 ")
 ;;3627
 ;;21,"68115-0054-12 ")
 ;;3628
 ;;21,"68115-0054-30 ")
 ;;3629
 ;;21,"68115-0054-40 ")
 ;;3630
 ;;21,"68115-0054-50 ")
 ;;3631
 ;;21,"68115-0054-60 ")
 ;;3632
 ;;21,"68115-0055-30 ")
 ;;3633
 ;;21,"68115-0056-30 ")
 ;;3634
 ;;21,"68115-0057-00 ")
 ;;3635
 ;;21,"68115-0057-15 ")
 ;;3636
 ;;21,"68115-0124-00 ")
 ;;3637
 ;;21,"68115-0124-30 ")
 ;;3638
 ;;21,"68115-0124-60 ")
 ;;3639
 ;;21,"68115-0124-90 ")
 ;;3640
 ;;21,"68115-0402-30 ")
 ;;3641
 ;;21,"68115-0402-60 ")
 ;;3642
 ;;21,"68115-0430-30 ")
 ;;3643
 ;;21,"68115-0439-30 ")
 ;;3644
 ;;21,"68115-0439-60 ")
 ;;3645
 ;;21,"68115-0499-48 ")
 ;;3646
 ;;21,"68115-0624-00 ")
 ;;3647
 ;;21,"68115-0627-00 ")
 ;;3648
 ;;21,"68115-0679-00 ")
 ;;3649
 ;;21,"68115-0689-00 ")
 ;;3650
 ;;21,"68115-0764-00 ")
 ;;3651
 ;;21,"68115-0830-00 ")
 ;;3652
 ;;21,"68115-0833-00 ")
 ;;3653
 ;;21,"68115-0844-00 ")
 ;;3654
 ;;21,"68115-0859-00 ")
 ;;3655
 ;;21,"68115-0897-04 ")
 ;;3656
 ;;21,"68180-0311-01 ")
 ;;3657
 ;;21,"68180-0312-01 ")
 ;;3658
 ;;21,"68180-0313-01 ")
 ;;3659
 ;;21,"68180-0314-06 ")
 ;;3660
 ;;21,"68180-0315-06 ")
 ;;3661
 ;;21,"68180-0316-06 ")
 ;;3662
 ;;21,"68180-0317-06 ")
 ;;3663
 ;;21,"68258-1061-01 ")
 ;;3664
 ;;21,"68258-2012-03 ")
 ;;3665
 ;;21,"68258-2012-09 ")
 ;;3666
 ;;21,"68258-4993-01 ")
 ;;3667
 ;;21,"68258-7048-03 ")
 ;;3668
 ;;21,"68258-7049-03 ")
 ;;3669
 ;;21,"68258-7083-01 ")
 ;;3670
 ;;21,"68258-7083-02 ")
 ;;3671
 ;;21,"68258-7083-03 ")
 ;;3672
 ;;21,"68258-7083-06 ")
 ;;3673
 ;;21,"68258-7119-03 ")
 ;;3674
 ;;21,"68258-7119-09 ")
 ;;3675
 ;;21,"68258-7125-06 ")
 ;;3676
 ;;21,"68258-7143-03 ")
 ;;3677
 ;;21,"68258-7145-03 ")
 ;;3678
 ;;21,"68258-7160-03 ")
 ;;3679
 ;;21,"68258-9148-01 ")
 ;;3680
 ;;21,"68258-9149-01 ")
 ;;3681
 ;;21,"68308-0554-10 ")
 ;;3682
 ;;21,"68387-0335-15 ")
 ;;3683
 ;;21,"68387-0335-24 ")
 ;;3684
 ;;21,"68387-0335-30 ")
 ;;3685
 ;;21,"68387-0335-60 ")
 ;;3686
 ;;21,"68387-0335-90 ")
 ;;3687
 ;;21,"68387-0336-30 ")
 ;;3688
 ;;21,"68387-0336-90 ")
 ;;3689
 ;;21,"68387-0337-24 ")
 ;;3690
 ;;21,"68387-0337-30 ")
 ;;3691
 ;;21,"68387-0338-30 ")
 ;;3692
 ;;21,"68387-0339-30 ")
 ;;3693
 ;;21,"68387-0485-15 ")
 ;;3694
 ;;21,"68387-0485-30 ")
 ;;3695
 ;;21,"68387-0486-15 ")
 ;;3696
 ;;21,"68387-0486-30 ")
 ;;3697
 ;;21,"68387-0487-30 ")
 ;;3698
 ;;21,"68387-0520-12 ")
 ;;3699
 ;;21,"68387-0520-20 ")
 ;;3700
 ;;21,"68387-0520-30 ")
 ;;3701
 ;;21,"68387-0520-60 ")
 ;;3702
 ;;21,"68387-0520-90 ")
 ;;3703
 ;;21,"68453-0074-10 ")
 ;;3704
 ;;21,"68453-0170-10 ")
 ;;3705
 ;;21,"68462-0279-01 ")
 ;;3706
 ;;21,"68462-0279-05 ")
 ;;3707
 ;;21,"68462-0280-01 ")
 ;;3708
 ;;21,"68462-0280-05 ")
 ;;3709
 ;;21,"68645-0230-59 ")
 ;;3710
 ;;21,"76478-0501-20 ")
 ;;3711
 ;;21,"76478-0501-50 ")
 ;;3712
 ;;9002226,730,.01)
 ;;BGP HEDIS CENTRAL NERVOUS NDC
 ;;9002226,730,.02)
 ;;@
 ;;9002226,730,.04)
 ;;n
 ;;9002226,730,.06)
 ;;@
 ;;9002226,730,.08)
 ;;@
 ;;9002226,730,.09)
 ;;3140316
 ;;9002226,730,.11)
 ;;@
 ;;9002226,730,.12)
 ;;@
 ;;9002226,730,.13)
 ;;1
 ;;9002226,730,.14)
 ;;@
 ;;9002226,730,.15)
 ;;50.67
 ;;9002226,730,.16)
 ;;@
 ;;9002226,730,.17)
 ;;@
 ;;9002226,730,3101)
 ;;@
 ;;9002226.02101,"730,00008-0091-02 ",.01)
 ;;00008-0091-02
 ;;9002226.02101,"730,00008-0091-02 ",.02)
 ;;00008-0091-02
 ;;9002226.02101,"730,00008-0304-01 ",.01)
 ;;00008-0304-01
 ;;9002226.02101,"730,00008-0304-01 ",.02)
 ;;00008-0304-01
 ;;9002226.02101,"730,00008-0925-81 ",.01)
 ;;00008-0925-81
 ;;9002226.02101,"730,00008-0925-81 ",.02)
 ;;00008-0925-81
 ;;9002226.02101,"730,00008-0926-81 ",.01)
 ;;00008-0926-81
 ;;9002226.02101,"730,00008-0926-81 ",.02)
 ;;00008-0926-81
 ;;9002226.02101,"730,00024-1231-05 ",.01)
 ;;00024-1231-05
 ;;9002226.02101,"730,00024-1231-05 ",.02)
 ;;00024-1231-05
 ;;9002226.02101,"730,00024-1232-05 ",.01)
 ;;00024-1232-05
 ;;9002226.02101,"730,00024-1232-05 ",.02)
 ;;00024-1232-05
 ;;9002226.02101,"730,00024-1233-05 ",.01)
 ;;00024-1233-05
 ;;9002226.02101,"730,00024-1233-05 ",.02)
 ;;00024-1233-05
 ;;9002226.02101,"730,00024-5401-10 ",.01)
 ;;00024-5401-10
 ;;9002226.02101,"730,00024-5401-10 ",.02)
 ;;00024-5401-10
 ;;9002226.02101,"730,00024-5401-31 ",.01)
 ;;00024-5401-31
 ;;9002226.02101,"730,00024-5401-31 ",.02)
 ;;00024-5401-31
 ;;9002226.02101,"730,00024-5401-34 ",.01)
 ;;00024-5401-34
 ;;9002226.02101,"730,00024-5401-34 ",.02)
 ;;00024-5401-34
 ;;9002226.02101,"730,00024-5401-50 ",.01)
 ;;00024-5401-50
 ;;9002226.02101,"730,00024-5401-50 ",.02)
 ;;00024-5401-50
 ;;9002226.02101,"730,00024-5421-10 ",.01)
 ;;00024-5421-10
 ;;9002226.02101,"730,00024-5421-10 ",.02)
 ;;00024-5421-10
 ;;9002226.02101,"730,00024-5421-31 ",.01)
 ;;00024-5421-31
 ;;9002226.02101,"730,00024-5421-31 ",.02)
 ;;00024-5421-31
 ;;9002226.02101,"730,00024-5421-34 ",.01)
 ;;00024-5421-34
 ;;9002226.02101,"730,00024-5421-34 ",.02)
 ;;00024-5421-34
 ;;9002226.02101,"730,00024-5421-50 ",.01)
 ;;00024-5421-50
 ;;9002226.02101,"730,00024-5421-50 ",.02)
 ;;00024-5421-50
 ;;9002226.02101,"730,00024-5501-10 ",.01)
 ;;00024-5501-10
 ;;9002226.02101,"730,00024-5501-10 ",.02)
 ;;00024-5501-10
 ;;9002226.02101,"730,00024-5501-31 ",.01)
 ;;00024-5501-31
 ;;9002226.02101,"730,00024-5501-31 ",.02)
 ;;00024-5501-31
 ;;9002226.02101,"730,00024-5501-34 ",.01)
 ;;00024-5501-34
 ;;9002226.02101,"730,00024-5501-34 ",.02)
 ;;00024-5501-34
 ;;9002226.02101,"730,00024-5501-50 ",.01)
 ;;00024-5501-50
 ;;9002226.02101,"730,00024-5501-50 ",.02)
 ;;00024-5501-50
 ;;9002226.02101,"730,00024-5521-10 ",.01)
 ;;00024-5521-10
 ;;9002226.02101,"730,00024-5521-10 ",.02)
 ;;00024-5521-10
 ;;9002226.02101,"730,00024-5521-31 ",.01)
 ;;00024-5521-31
 ;;9002226.02101,"730,00024-5521-31 ",.02)
 ;;00024-5521-31
 ;;9002226.02101,"730,00024-5521-34 ",.01)
 ;;00024-5521-34
 ;;9002226.02101,"730,00024-5521-34 ",.02)
 ;;00024-5521-34
 ;;9002226.02101,"730,00024-5521-50 ",.01)
 ;;00024-5521-50
 ;;9002226.02101,"730,00024-5521-50 ",.02)
 ;;00024-5521-50
 ;;9002226.02101,"730,00025-5401-34 ",.01)
 ;;00025-5401-34
 ;;9002226.02101,"730,00025-5401-34 ",.02)
 ;;00025-5401-34
 ;;9002226.02101,"730,00025-5421-34 ",.01)
 ;;00025-5421-34
 ;;9002226.02101,"730,00025-5421-34 ",.02)
 ;;00025-5421-34
 ;;9002226.02101,"730,00028-0020-01 ",.01)
 ;;00028-0020-01
 ;;9002226.02101,"730,00028-0020-01 ",.02)
 ;;00028-0020-01
 ;;9002226.02101,"730,00028-0020-26 ",.01)
 ;;00028-0020-26
 ;;9002226.02101,"730,00028-0020-26 ",.02)
 ;;00028-0020-26
 ;;9002226.02101,"730,00028-0032-01 ",.01)
 ;;00028-0032-01
 ;;9002226.02101,"730,00028-0032-01 ",.02)
 ;;00028-0032-01
 ;;9002226.02101,"730,00028-0040-01 ",.01)
 ;;00028-0040-01
 ;;9002226.02101,"730,00028-0040-01 ",.02)
 ;;00028-0040-01
 ;;9002226.02101,"730,00028-0040-26 ",.01)
 ;;00028-0040-26
 ;;9002226.02101,"730,00028-0040-26 ",.02)
 ;;00028-0040-26
 ;;9002226.02101,"730,00028-0045-01 ",.01)
 ;;00028-0045-01
 ;;9002226.02101,"730,00028-0045-01 ",.02)
 ;;00028-0045-01
 ;;9002226.02101,"730,00028-0136-01 ",.01)
 ;;00028-0136-01
 ;;9002226.02101,"730,00028-0136-01 ",.02)
 ;;00028-0136-01
 ;;9002226.02101,"730,00028-0140-01 ",.01)
 ;;00028-0140-01
 ;;9002226.02101,"730,00028-0140-01 ",.02)
 ;;00028-0140-01
 ;;9002226.02101,"730,00037-0110-16 ",.01)
 ;;00037-0110-16
 ;;9002226.02101,"730,00037-0110-16 ",.02)
 ;;00037-0110-16
 ;;9002226.02101,"730,00037-0113-60 ",.01)
 ;;00037-0113-60
 ;;9002226.02101,"730,00037-0113-60 ",.02)
 ;;00037-0113-60
 ;;9002226.02101,"730,00037-0113-80 ",.01)
 ;;00037-0113-80
 ;;9002226.02101,"730,00037-0113-80 ",.02)
 ;;00037-0113-80
 ;;9002226.02101,"730,00037-0114-60 ",.01)
 ;;00037-0114-60
 ;;9002226.02101,"730,00037-0114-60 ",.02)
 ;;00037-0114-60
 ;;9002226.02101,"730,00037-0120-01 ",.01)
 ;;00037-0120-01
 ;;9002226.02101,"730,00037-0120-01 ",.02)
 ;;00037-0120-01
 ;;9002226.02101,"730,00037-0301-92 ",.01)
 ;;00037-0301-92
 ;;9002226.02101,"730,00037-0301-92 ",.02)
 ;;00037-0301-92
 ;;9002226.02101,"730,00037-1001-01 ",.01)
 ;;00037-1001-01
 ;;9002226.02101,"730,00037-1001-01 ",.02)
 ;;00037-1001-01
 ;;9002226.02101,"730,00037-1001-02 ",.01)
 ;;00037-1001-02
 ;;9002226.02101,"730,00037-1001-02 ",.02)
 ;;00037-1001-02
 ;;9002226.02101,"730,00037-1001-03 ",.01)
 ;;00037-1001-03
 ;;9002226.02101,"730,00037-1001-03 ",.02)
 ;;00037-1001-03
 ;;9002226.02101,"730,00037-1101-01 ",.01)
 ;;00037-1101-01
 ;;9002226.02101,"730,00037-1101-01 ",.02)
 ;;00037-1101-01
 ;;9002226.02101,"730,00037-6010-30 ",.01)
 ;;00037-6010-30
 ;;9002226.02101,"730,00037-6010-30 ",.02)
 ;;00037-6010-30
 ;;9002226.02101,"730,00037-6050-30 ",.01)
 ;;00037-6050-30
 ;;9002226.02101,"730,00037-6050-30 ",.02)
 ;;00037-6050-30
 ;;9002226.02101,"730,00049-5100-47 ",.01)
 ;;00049-5100-47