BGP61F11 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"63874-0987-10 ")
 ;;3616
 ;;21,"63874-0987-14 ")
 ;;3617
 ;;21,"63874-0987-20 ")
 ;;3618
 ;;21,"63874-0987-30 ")
 ;;3619
 ;;21,"63874-0987-60 ")
 ;;3620
 ;;21,"63874-1114-09 ")
 ;;3621
 ;;21,"63874-1123-01 ")
 ;;3622
 ;;21,"63874-1123-03 ")
 ;;3623
 ;;21,"64455-0140-30 ")
 ;;3624
 ;;21,"64455-0140-90 ")
 ;;3625
 ;;21,"64455-0141-10 ")
 ;;3626
 ;;21,"64455-0141-30 ")
 ;;3627
 ;;21,"64455-0141-90 ")
 ;;3628
 ;;21,"64455-0142-10 ")
 ;;3629
 ;;21,"64455-0142-30 ")
 ;;3630
 ;;21,"64455-0142-90 ")
 ;;3631
 ;;21,"64455-0143-10 ")
 ;;3632
 ;;21,"64455-0143-30 ")
 ;;3633
 ;;21,"64455-0143-90 ")
 ;;3634
 ;;21,"64455-0146-01 ")
 ;;3635
 ;;21,"64679-0902-01 ")
 ;;3636
 ;;21,"64679-0902-02 ")
 ;;3637
 ;;21,"64679-0902-05 ")
 ;;3638
 ;;21,"64679-0903-01 ")
 ;;3639
 ;;21,"64679-0903-02 ")
 ;;3640
 ;;21,"64679-0903-05 ")
 ;;3641
 ;;21,"64679-0904-01 ")
 ;;3642
 ;;21,"64679-0904-02 ")
 ;;3643
 ;;21,"64679-0904-05 ")
 ;;3644
 ;;21,"64679-0905-01 ")
 ;;3645
 ;;21,"64679-0905-04 ")
 ;;3646
 ;;21,"64679-0923-02 ")
 ;;3647
 ;;21,"64679-0923-03 ")
 ;;3648
 ;;21,"64679-0923-09 ")
 ;;3649
 ;;21,"64679-0923-10 ")
 ;;3650
 ;;21,"64679-0924-02 ")
 ;;3651
 ;;21,"64679-0924-03 ")
 ;;3652
 ;;21,"64679-0924-09 ")
 ;;3653
 ;;21,"64679-0924-10 ")
 ;;3654
 ;;21,"64679-0925-02 ")
 ;;3655
 ;;21,"64679-0925-03 ")
 ;;3656
 ;;21,"64679-0925-09 ")
 ;;3657
 ;;21,"64679-0925-10 ")
 ;;3658
 ;;21,"64679-0926-02 ")
 ;;3659
 ;;21,"64679-0926-03 ")
 ;;3660
 ;;21,"64679-0926-09 ")
 ;;3661
 ;;21,"64679-0926-10 ")
 ;;3662
 ;;21,"64679-0927-01 ")
 ;;3663
 ;;21,"64679-0927-02 ")
 ;;3664
 ;;21,"64679-0927-05 ")
 ;;3665
 ;;21,"64679-0927-09 ")
 ;;3666
 ;;21,"64679-0928-01 ")
 ;;3667
 ;;21,"64679-0928-05 ")
 ;;3668
 ;;21,"64679-0928-06 ")
 ;;3669
 ;;21,"64679-0928-10 ")
 ;;3670
 ;;21,"64679-0929-01 ")
 ;;3671
 ;;21,"64679-0929-05 ")
 ;;3672
 ;;21,"64679-0929-06 ")
 ;;3673
 ;;21,"64679-0929-10 ")
 ;;3674
 ;;21,"64679-0941-01 ")
 ;;3675
 ;;21,"64679-0941-05 ")
 ;;3676
 ;;21,"64679-0941-06 ")
 ;;3677
 ;;21,"64679-0941-10 ")
 ;;3678
 ;;21,"64679-0942-01 ")
 ;;3679
 ;;21,"64679-0942-02 ")
 ;;3680
 ;;21,"64679-0942-05 ")
 ;;3681
 ;;21,"64679-0942-09 ")
 ;;3682
 ;;21,"64679-0953-01 ")
 ;;3683
 ;;21,"64679-0953-02 ")
 ;;3684
 ;;21,"64679-0953-05 ")
 ;;3685
 ;;21,"64679-0953-09 ")
 ;;3686
 ;;21,"64764-0844-30 ")
 ;;3687
 ;;21,"64764-0884-30 ")
 ;;3688
 ;;21,"64764-0944-30 ")
 ;;3689
 ;;21,"64764-0994-30 ")
 ;;3690
 ;;21,"64980-0194-01 ")
 ;;3691
 ;;21,"64980-0195-01 ")
 ;;3692
 ;;21,"64980-0196-01 ")
 ;;3693
 ;;21,"65162-0751-10 ")
 ;;3694
 ;;21,"65162-0751-50 ")
 ;;3695
 ;;21,"65162-0752-10 ")
 ;;3696
 ;;21,"65162-0752-50 ")
 ;;3697
 ;;21,"65162-0753-10 ")
 ;;3698
 ;;21,"65162-0753-50 ")
 ;;3699
 ;;21,"65162-0754-10 ")
 ;;3700
 ;;21,"65162-0754-50 ")
 ;;3701
 ;;21,"65243-0303-03 ")
 ;;3702
 ;;21,"65243-0303-09 ")
 ;;3703
 ;;21,"65243-0303-15 ")
 ;;3704
 ;;21,"65243-0303-45 ")
 ;;3705
 ;;21,"65243-0314-03 ")
 ;;3706
 ;;21,"65243-0314-09 ")
 ;;3707
 ;;21,"65243-0314-18 ")
 ;;3708
 ;;21,"65243-0314-45 ")
 ;;3709
 ;;21,"65243-0341-09 ")
 ;;3710
 ;;21,"65243-0341-18 ")
 ;;3711
 ;;21,"65243-0341-45 ")
 ;;3712
 ;;21,"65243-0358-03 ")
 ;;3713
 ;;21,"65243-0358-09 ")
 ;;3714
 ;;21,"65243-0358-45 ")
 ;;3715
 ;;21,"65597-0101-30 ")
 ;;3716
 ;;21,"65597-0103-03 ")
 ;;3717
 ;;21,"65597-0103-06 ")
 ;;3718
 ;;21,"65597-0103-10 ")
 ;;3719
 ;;21,"65597-0103-30 ")
 ;;3720
 ;;21,"65597-0103-90 ")
 ;;3721
 ;;21,"65597-0104-03 ")
 ;;3722
 ;;21,"65597-0104-06 ")
 ;;3723
 ;;21,"65597-0104-10 ")
 ;;3724
 ;;21,"65597-0104-30 ")
 ;;3725
 ;;21,"65597-0104-90 ")
 ;;3726
 ;;21,"65597-0105-30 ")
 ;;3727
 ;;21,"65597-0105-90 ")
 ;;3728
 ;;21,"65597-0106-30 ")
 ;;3729
 ;;21,"65597-0106-90 ")
 ;;3730
 ;;21,"65597-0107-30 ")
 ;;3731
 ;;21,"65597-0107-90 ")
 ;;3732
 ;;21,"65597-0110-30 ")
 ;;3733
 ;;21,"65597-0110-90 ")
 ;;3734
 ;;21,"65597-0111-30 ")
 ;;3735
 ;;21,"65597-0111-90 ")
 ;;3736
 ;;21,"65597-0112-30 ")
 ;;3737
 ;;21,"65597-0112-90 ")
 ;;3738
 ;;21,"65597-0113-30 ")
 ;;3739
 ;;21,"65597-0113-90 ")
 ;;3740
 ;;21,"65597-0114-30 ")
 ;;3741
 ;;21,"65597-0114-90 ")
 ;;3742
 ;;21,"65597-0115-30 ")
 ;;3743
 ;;21,"65597-0115-90 ")
 ;;3744
 ;;21,"65597-0116-30 ")
 ;;3745
 ;;21,"65597-0116-90 ")
 ;;3746
 ;;21,"65597-0117-30 ")
 ;;3747
 ;;21,"65597-0117-90 ")
 ;;3748
 ;;21,"65597-0118-30 ")
 ;;3749
 ;;21,"65597-0118-90 ")
 ;;3750
 ;;21,"65862-0037-01 ")
 ;;3751
 ;;21,"65862-0037-05 ")
 ;;3752
 ;;21,"65862-0037-99 ")
 ;;3753
 ;;21,"65862-0038-01 ")
 ;;3754
 ;;21,"65862-0038-05 ")
 ;;3755
 ;;21,"65862-0038-99 ")
 ;;3756
 ;;21,"65862-0039-01 ")
 ;;3757
 ;;21,"65862-0039-05 ")
 ;;3758
 ;;21,"65862-0039-99 ")
 ;;3759
 ;;21,"65862-0040-01 ")
 ;;3760
 ;;21,"65862-0040-05 ")
 ;;3761
 ;;21,"65862-0040-99 ")
 ;;3762
 ;;21,"65862-0041-01 ")
 ;;3763
 ;;21,"65862-0041-05 ")
 ;;3764
 ;;21,"65862-0041-99 ")
 ;;3765
 ;;21,"65862-0042-01 ")
 ;;3766
 ;;21,"65862-0042-05 ")
 ;;3767
 ;;21,"65862-0042-99 ")
 ;;3768
 ;;21,"65862-0043-01 ")
 ;;3769
 ;;21,"65862-0043-05 ")
 ;;3770
 ;;21,"65862-0044-01 ")
 ;;3771
 ;;21,"65862-0044-05 ")
 ;;3772
 ;;21,"65862-0045-01 ")
 ;;3773
 ;;21,"65862-0045-05 ")
 ;;3774
 ;;21,"65862-0116-01 ")
 ;;3775
 ;;21,"65862-0117-01 ")
 ;;3776
 ;;21,"65862-0118-01 ")
 ;;3777
 ;;21,"65862-0161-90 ")
 ;;3778
 ;;21,"65862-0162-30 ")
 ;;3779
 ;;21,"65862-0162-90 ")
 ;;3780
 ;;21,"65862-0163-90 ")
 ;;3781
 ;;21,"65862-0164-01 ")
 ;;3782
 ;;21,"65862-0165-01 ")
 ;;3783
 ;;21,"65862-0166-01 ")
 ;;3784
 ;;21,"65862-0201-90 ")
 ;;3785
 ;;21,"65862-0201-99 ")
 ;;3786
 ;;21,"65862-0202-30 ")
 ;;3787
 ;;21,"65862-0202-90 ")
 ;;3788
 ;;21,"65862-0202-99 ")
 ;;3789
 ;;21,"65862-0203-30 ")
 ;;3790
 ;;21,"65862-0203-90 ")
 ;;3791
 ;;21,"65862-0203-99 ")
 ;;3792
 ;;21,"65862-0286-01 ")
 ;;3793
 ;;21,"65862-0287-01 ")
 ;;3794
 ;;21,"65862-0288-01 ")
 ;;3795
 ;;21,"65862-0308-01 ")
 ;;3796
 ;;21,"65862-0309-01 ")
 ;;3797
 ;;21,"65862-0468-30 ")
 ;;3798
 ;;21,"65862-0468-90 ")
 ;;3799
 ;;21,"65862-0468-99 ")
 ;;3800
 ;;21,"65862-0469-30 ")
 ;;3801
 ;;21,"65862-0469-90 ")
 ;;3802
 ;;21,"65862-0469-99 ")
 ;;3803
 ;;21,"65862-0470-30 ")
 ;;3804
 ;;21,"65862-0470-90 ")
 ;;3805
 ;;21,"65862-0470-99 ")
 ;;3806
 ;;21,"65862-0471-90 ")
 ;;3807
 ;;21,"65862-0472-90 ")
 ;;3808
 ;;21,"65862-0473-90 ")
 ;;3809
 ;;21,"65862-0474-01 ")
 ;;3810
 ;;21,"65862-0474-30 ")
 ;;3811
 ;;21,"65862-0475-01 ")
 ;;3812
 ;;21,"65862-0475-05 ")
 ;;3813
 ;;21,"65862-0476-01 ")
 ;;3814
 ;;21,"65862-0476-05 ")
 ;;3815
 ;;21,"65862-0477-01 ")
 ;;3816
 ;;21,"65862-0477-05 ")
 ;;3817
 ;;21,"65862-0547-90 ")
 ;;3818
 ;;21,"65862-0547-99 ")
 ;;3819
 ;;21,"65862-0548-90 ")
 ;;3820
 ;;21,"65862-0548-99 ")
 ;;3821
 ;;21,"65862-0549-90 ")
 ;;3822
 ;;21,"65862-0549-99 ")
 ;;3823
 ;;21,"65862-0550-05 ")
 ;;3824
 ;;21,"65862-0550-90 ")
 ;;3825
 ;;21,"65862-0551-05 ")
 ;;3826
 ;;21,"65862-0551-90 ")
 ;;3827
 ;;21,"65862-0570-30 ")
 ;;3828
 ;;21,"65862-0571-90 ")
 ;;3829
 ;;21,"65862-0572-90 ")
 ;;3830
 ;;21,"65862-0573-90 ")
 ;;3831
 ;;21,"65862-0582-01 ")
 ;;3832
 ;;21,"65862-0582-05 ")
 ;;3833
 ;;21,"65862-0583-01 ")
 ;;3834
 ;;21,"65862-0583-05 ")
 ;;3835
 ;;21,"65862-0584-01 ")
 ;;3836
 ;;21,"65862-0584-05 ")
 ;;3837
 ;;21,"65862-0585-01 ")
 ;;3838
 ;;21,"65862-0585-05 ")
 ;;3839
 ;;21,"65862-0586-01 ")
 ;;3840
 ;;21,"65862-0586-05 ")
 ;;3841
 ;;21,"65862-0587-01 ")
 ;;3842
 ;;21,"65862-0587-05 ")
 ;;3843
 ;;21,"65862-0617-90 ")
 ;;3844
 ;;21,"65862-0618-90 ")
 ;;3845
 ;;21,"65862-0619-90 ")
 ;;3846
 ;;21,"65862-0620-90 ")
 ;;3847
 ;;21,"65862-0637-30 ")
 ;;3848
 ;;21,"65862-0637-90 ")
 ;;3849
 ;;21,"65862-0638-05 ")
 ;;3850
 ;;21,"65862-0638-30 ")
 ;;3851
 ;;21,"65862-0638-90 ")
 ;;3852
 ;;21,"65862-0639-05 ")
 ;;3853
 ;;21,"65862-0639-30 ")
 ;;3854
 ;;21,"65862-0639-90 ")
 ;;3855
 ;;21,"66105-0503-01 ")
 ;;3856
 ;;21,"66105-0503-03 ")
 ;;3857
 ;;21,"66105-0503-06 ")
 ;;3858
 ;;21,"66105-0503-09 ")
 ;;3859
 ;;21,"66105-0503-15 ")
 ;;3860
 ;;21,"66105-0504-01 ")
 ;;3861
 ;;21,"66105-0504-03 ")
 ;;3862
 ;;21,"66105-0504-06 ")
 ;;3863
 ;;21,"66105-0504-09 ")
 ;;3864
 ;;21,"66105-0504-15 ")
 ;;3865
 ;;21,"66105-0545-01 ")
 ;;3866
 ;;21,"66105-0545-03 ")
 ;;3867
 ;;21,"66105-0545-06 ")
 ;;3868
 ;;21,"66105-0545-09 ")
 ;;3869
 ;;21,"66105-0545-10 ")
 ;;3870
 ;;21,"66105-0553-03 ")
 ;;3871
 ;;21,"66105-0663-03 ")
 ;;3872
 ;;21,"66105-0669-03 ")
 ;;3873
 ;;21,"66105-0842-03 ")
 ;;3874
 ;;21,"66105-0842-06 ")
 ;;3875
 ;;21,"66105-0842-09 ")
 ;;3876
 ;;21,"66105-0842-10 ")
 ;;3877
 ;;21,"66105-0842-28 ")
 ;;3878
 ;;21,"66116-0237-30 ")
 ;;3879
 ;;21,"66116-0279-30 ")
 ;;3880
 ;;21,"66116-0435-30 ")
 ;;3881
 ;;21,"66116-0436-30 ")
 ;;3882
 ;;21,"66267-0253-30 ")
 ;;3883
 ;;21,"66267-0323-30 ")
 ;;3884
 ;;21,"66267-0323-60 ")
 ;;3885
 ;;21,"66267-0323-90 ")
 ;;3886
 ;;21,"66267-0323-91 ")
 ;;3887
 ;;21,"66267-0380-30 ")
 ;;3888
 ;;21,"66267-0380-60 ")
 ;;3889
 ;;21,"66267-0380-90 ")
 ;;3890
 ;;21,"66267-0380-91 ")
 ;;3891
 ;;21,"66267-0413-30 ")
 ;;3892
 ;;21,"66267-0413-60 ")
 ;;3893
 ;;21,"66267-0413-90 ")
 ;;3894
 ;;21,"66267-0413-92 ")
 ;;3895
 ;;21,"66267-0523-30 ")
 ;;3896
 ;;21,"66267-0523-60 ")
 ;;3897
 ;;21,"66267-0570-30 ")
 ;;3898
 ;;21,"66267-0577-30 ")
 ;;3899
 ;;21,"66267-0583-30 ")
 ;;3900
 ;;21,"66267-0751-30 ")
 ;;3901
 ;;21,"66267-0751-90 ")
 ;;3902
 ;;21,"66267-0752-30 ")
 ;;3903
 ;;21,"66267-0752-90 ")
 ;;3904
 ;;21,"66267-1009-00 ")
 ;;3905
 ;;21,"66336-0124-30 ")
 ;;3906
 ;;21,"66336-0124-90 ")
 ;;3907
 ;;21,"66336-0169-30 ")
 ;;3908
 ;;21,"66336-0232-30 ")
 ;;3909
 ;;21,"66336-0387-30 ")
 ;;3910
 ;;21,"66336-0387-90 ")
 ;;3911
 ;;21,"66336-0389-30 ")
 ;;3912
 ;;21,"66336-0389-60 ")
 ;;3913
 ;;21,"66336-0389-90 ")
 ;;3914
 ;;21,"66336-0391-30 ")
 ;;3915
 ;;21,"66336-0391-60 ")
 ;;3916
 ;;21,"66336-0391-90 ")
 ;;3917
 ;;21,"66336-0393-30 ")
 ;;3918
 ;;21,"66336-0393-60 ")
 ;;3919
 ;;21,"66336-0393-90 ")
 ;;3920
 ;;21,"66336-0572-30 ")
 ;;3921
 ;;21,"66336-0572-90 ")
 ;;3922
 ;;21,"66336-0618-60 ")
 ;;3923
 ;;21,"66336-0665-15 ")
 ;;3924
 ;;21,"66336-0665-30 ")
 ;;3925
 ;;21,"66336-0665-90 ")
 ;;3926
 ;;21,"66336-0666-30 ")
 ;;3927
 ;;21,"66336-0666-90 ")
 ;;3928
 ;;21,"66336-0672-60 ")
 ;;3929
 ;;21,"66336-0691-30 ")
 ;;3930
 ;;21,"66336-0691-90 ")
 ;;3931
 ;;21,"66336-0741-30 ")
 ;;3932
 ;;21,"66336-0741-60 ")
 ;;3933
 ;;21,"66336-0741-62 ")
 ;;3934
 ;;21,"66336-0741-90 ")
 ;;3935
 ;;21,"66336-0750-30 ")
 ;;3936
 ;;21,"66336-0750-60 ")
 ;;3937
 ;;21,"66336-0750-90 ")
 ;;3938
 ;;21,"66336-0773-30 ")
 ;;3939
 ;;21,"66336-0773-60 ")
 ;;3940
 ;;21,"66336-0773-90 ")
 ;;3941
 ;;21,"66336-0794-60 ")
 ;;3942
 ;;21,"66336-0805-30 ")
 ;;3943
 ;;21,"66336-0805-90 ")
 ;;3944
 ;;21,"66336-0810-30 ")
 ;;3945
 ;;21,"66336-0810-90 ")
 ;;3946
 ;;21,"66336-0867-30 ")
 ;;3947
 ;;21,"66336-0867-90 ")
 ;;3948
 ;;21,"66336-0946-30 ")
 ;;3949
 ;;21,"66336-0946-60 ")
 ;;3950
 ;;21,"66336-0946-90 ")
 ;;3951
 ;;21,"66336-0972-30 ")
 ;;3952
 ;;21,"66336-0972-62 ")
 ;;3953
 ;;21,"66336-0972-90 ")
 ;;3954
 ;;21,"66685-0302-00 ")
 ;;3955
 ;;21,"66685-0302-02 ")
 ;;3956
 ;;21,"66685-0303-00 ")
 ;;3957
 ;;21,"66685-0303-02 ")
 ;;3958
 ;;21,"66685-0304-00 ")
 ;;3959
 ;;21,"66685-0304-02 ")
 ;;3960
 ;;21,"66685-0701-01 ")
 ;;3961
 ;;21,"66685-0701-02 ")
 ;;3962
 ;;21,"66685-0702-01 ")
 ;;3963
 ;;21,"66685-0702-03 ")
 ;;3964
 ;;21,"66685-0703-02 ")
 ;;3965
 ;;21,"66685-0704-01 ")
 ;;3966
 ;;21,"66685-0704-02 ")
 ;;3967
 ;;21,"66685-0704-03 ")
 ;;3968
 ;;21,"66685-0705-01 ")
 ;;3969
 ;;21,"66685-0705-02 ")
 ;;3970
 ;;21,"66685-0706-01 ")
 ;;3971
 ;;21,"66685-0706-04 ")
 ;;3972
 ;;21,"67544-0062-30 ")
 ;;3973
 ;;21,"67544-0062-60 ")
 ;;3974