BGP71X3 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"55289-0976-90 ")
 ;;682
 ;;21,"55289-0976-93 ")
 ;;683
 ;;21,"55700-0022-30 ")
 ;;684
 ;;21,"55700-0256-30 ")
 ;;685
 ;;21,"55700-0256-60 ")
 ;;686
 ;;21,"55700-0256-90 ")
 ;;687
 ;;21,"55700-0395-30 ")
 ;;688
 ;;21,"55700-0395-60 ")
 ;;689
 ;;21,"55700-0395-90 ")
 ;;690
 ;;21,"57237-0020-01 ")
 ;;691
 ;;21,"57237-0021-01 ")
 ;;692
 ;;21,"57237-0021-05 ")
 ;;693
 ;;21,"57237-0021-99 ")
 ;;694
 ;;21,"57237-0022-01 ")
 ;;695
 ;;21,"57237-0022-05 ")
 ;;696
 ;;21,"57237-0022-99 ")
 ;;697
 ;;21,"57237-0023-01 ")
 ;;698
 ;;21,"57237-0023-05 ")
 ;;699
 ;;21,"57237-0024-01 ")
 ;;700
 ;;21,"57237-0024-05 ")
 ;;701
 ;;21,"57237-0025-01 ")
 ;;702
 ;;21,"57237-0025-05 ")
 ;;703
 ;;21,"57664-0398-13 ")
 ;;704
 ;;21,"57664-0398-18 ")
 ;;705
 ;;21,"57664-0398-88 ")
 ;;706
 ;;21,"57664-0399-13 ")
 ;;707
 ;;21,"57664-0399-18 ")
 ;;708
 ;;21,"57664-0399-88 ")
 ;;709
 ;;21,"58118-0321-03 ")
 ;;710
 ;;21,"58118-0321-06 ")
 ;;711
 ;;21,"58118-0322-03 ")
 ;;712
 ;;21,"58118-0322-06 ")
 ;;713
 ;;21,"58118-0461-06 ")
 ;;714
 ;;21,"58118-0461-08 ")
 ;;715
 ;;21,"58118-0461-09 ")
 ;;716
 ;;21,"58118-1452-03 ")
 ;;717
 ;;21,"58118-1452-06 ")
 ;;718
 ;;21,"58118-1452-09 ")
 ;;719
 ;;21,"58118-2331-03 ")
 ;;720
 ;;21,"58118-2331-09 ")
 ;;721
 ;;21,"58118-2332-03 ")
 ;;722
 ;;21,"58118-2332-09 ")
 ;;723
 ;;21,"58118-8343-08 ")
 ;;724
 ;;21,"58118-8343-09 ")
 ;;725
 ;;21,"58864-0027-14 ")
 ;;726
 ;;21,"58864-0027-30 ")
 ;;727
 ;;21,"58864-0027-60 ")
 ;;728
 ;;21,"58864-0027-90 ")
 ;;729
 ;;21,"58864-0161-30 ")
 ;;730
 ;;21,"58864-0161-60 ")
 ;;731
 ;;21,"58864-0224-30 ")
 ;;732
 ;;21,"58864-0224-60 ")
 ;;733
 ;;21,"58864-0224-93 ")
 ;;734
 ;;21,"58864-0689-30 ")
 ;;735
 ;;21,"58864-0689-60 ")
 ;;736
 ;;21,"58864-0705-30 ")
 ;;737
 ;;21,"58864-0711-30 ")
 ;;738
 ;;21,"58864-0858-30 ")
 ;;739
 ;;21,"58864-0952-30 ")
 ;;740
 ;;21,"58864-0953-30 ")
 ;;741
 ;;21,"58864-0956-30 ")
 ;;742
 ;;21,"58864-0957-30 ")
 ;;743
 ;;21,"59762-0540-01 ")
 ;;744
 ;;21,"59762-0541-01 ")
 ;;745
 ;;21,"59762-0541-02 ")
 ;;746
 ;;21,"59762-0542-01 ")
 ;;747
 ;;21,"59762-0542-02 ")
 ;;748
 ;;21,"59762-2331-06 ")
 ;;749
 ;;21,"59762-2331-08 ")
 ;;750
 ;;21,"59762-2332-06 ")
 ;;751
 ;;21,"59762-2332-08 ")
 ;;752
 ;;21,"59762-3725-01 ")
 ;;753
 ;;21,"59762-3727-06 ")
 ;;754
 ;;21,"59762-5032-01 ")
 ;;755
 ;;21,"59762-5032-02 ")
 ;;756
 ;;21,"59762-5033-01 ")
 ;;757
 ;;21,"59762-5033-02 ")
 ;;758
 ;;21,"59762-7021-05 ")
 ;;759
 ;;21,"59762-7021-09 ")
 ;;760
 ;;21,"59762-7022-05 ")
 ;;761
 ;;21,"59762-7022-09 ")
 ;;762
 ;;21,"60429-0082-01 ")
 ;;763
 ;;21,"60429-0082-10 ")
 ;;764
 ;;21,"60429-0083-01 ")
 ;;765
 ;;21,"60429-0083-10 ")
 ;;766
 ;;21,"60429-0283-01 ")
 ;;767
 ;;21,"60429-0284-01 ")
 ;;768
 ;;21,"60429-0285-01 ")
 ;;769
 ;;21,"60429-0293-01 ")
 ;;770
 ;;21,"60505-0141-00 ")
 ;;771
 ;;21,"60505-0141-01 ")
 ;;772
 ;;21,"60505-0141-02 ")
 ;;773
 ;;21,"60505-0141-08 ")
 ;;774
 ;;21,"60505-0142-00 ")
 ;;775
 ;;21,"60505-0142-01 ")
 ;;776
 ;;21,"60505-0142-02 ")
 ;;777
 ;;21,"60505-0142-04 ")
 ;;778
 ;;21,"60760-0024-60 ")
 ;;779
 ;;21,"60760-0024-98 ")
 ;;780
 ;;21,"60760-0141-60 ")
 ;;781
 ;;21,"60760-0141-98 ")
 ;;782
 ;;21,"60760-0175-30 ")
 ;;783
 ;;21,"60760-0175-90 ")
 ;;784
 ;;21,"60760-0176-30 ")
 ;;785
 ;;21,"60760-0176-90 ")
 ;;786
 ;;21,"60760-0228-30 ")
 ;;787
 ;;21,"60760-0229-30 ")
 ;;788
 ;;21,"60760-0229-90 ")
 ;;789
 ;;21,"60760-0230-30 ")
 ;;790
 ;;21,"60760-0230-90 ")
 ;;791
 ;;21,"60760-0394-30 ")
 ;;792
 ;;21,"61442-0115-01 ")
 ;;793
 ;;21,"61442-0115-05 ")
 ;;794
 ;;21,"61442-0116-01 ")
 ;;795
 ;;21,"61442-0116-05 ")
 ;;796
 ;;21,"61442-0117-01 ")
 ;;797
 ;;21,"61442-0117-05 ")
 ;;798
 ;;21,"61919-0286-90 ")
 ;;799
 ;;21,"61919-0330-30 ")
 ;;800
 ;;21,"61919-0330-60 ")
 ;;801
 ;;21,"61919-0378-60 ")
 ;;802
 ;;21,"61919-0418-60 ")
 ;;803
 ;;21,"63629-1255-01 ")
 ;;804
 ;;21,"63629-1255-02 ")
 ;;805
 ;;21,"63629-1392-01 ")
 ;;806
 ;;21,"63629-1392-02 ")
 ;;807
 ;;21,"63629-1392-03 ")
 ;;808
 ;;21,"63629-1393-01 ")
 ;;809
 ;;21,"63629-1393-02 ")
 ;;810
 ;;21,"63629-1393-03 ")
 ;;811
 ;;21,"63629-1393-04 ")
 ;;812
 ;;21,"63629-1394-01 ")
 ;;813
 ;;21,"63629-1394-02 ")
 ;;814
 ;;21,"63629-1394-03 ")
 ;;815
 ;;21,"63629-1398-01 ")
 ;;816
 ;;21,"63629-1398-02 ")
 ;;817
 ;;21,"63629-1398-03 ")
 ;;818
 ;;21,"63629-2793-01 ")
 ;;819
 ;;21,"63629-2793-03 ")
 ;;820
 ;;21,"63629-2793-04 ")
 ;;821
 ;;21,"63629-2793-05 ")
 ;;822
 ;;21,"63629-2907-01 ")
 ;;823
 ;;21,"63629-2907-02 ")
 ;;824
 ;;21,"63629-3043-01 ")
 ;;825
 ;;21,"63629-3043-02 ")
 ;;826
 ;;21,"63629-3158-01 ")
 ;;827
 ;;21,"63629-3158-02 ")
 ;;828
 ;;21,"63629-3158-03 ")
 ;;829
 ;;21,"63629-3397-03 ")
 ;;830
 ;;21,"63629-3998-01 ")
 ;;831
 ;;21,"63629-4071-01 ")
 ;;832
 ;;21,"63739-0119-10 ")
 ;;833
 ;;21,"63874-0316-01 ")
 ;;834
 ;;21,"63874-0316-02 ")
 ;;835
 ;;21,"63874-0316-04 ")
 ;;836
 ;;21,"63874-0316-05 ")
 ;;837
 ;;21,"63874-0316-10 ")
 ;;838
 ;;21,"63874-0316-12 ")
 ;;839
 ;;21,"63874-0316-14 ")
 ;;840
 ;;21,"63874-0316-15 ")
 ;;841
 ;;21,"63874-0316-20 ")
 ;;842
 ;;21,"63874-0316-21 ")
 ;;843
 ;;21,"63874-0316-24 ")
 ;;844
 ;;21,"63874-0316-28 ")
 ;;845
 ;;21,"63874-0316-30 ")
 ;;846
 ;;21,"63874-0316-50 ")
 ;;847
 ;;21,"63874-0316-60 ")
 ;;848
 ;;21,"63874-0316-81 ")
 ;;849
 ;;21,"63874-0316-90 ")
 ;;850
 ;;21,"63874-0317-01 ")
 ;;851
 ;;21,"63874-0317-02 ")
 ;;852
 ;;21,"63874-0317-04 ")
 ;;853
 ;;21,"63874-0317-10 ")
 ;;854
 ;;21,"63874-0317-12 ")
 ;;855
 ;;21,"63874-0317-14 ")
 ;;856
 ;;21,"63874-0317-15 ")
 ;;857
 ;;21,"63874-0317-20 ")
 ;;858
 ;;21,"63874-0317-24 ")
 ;;859
 ;;21,"63874-0317-28 ")
 ;;860
 ;;21,"63874-0317-30 ")
 ;;861
 ;;21,"63874-0317-40 ")
 ;;862
 ;;21,"63874-0317-50 ")
 ;;863
 ;;21,"63874-0317-60 ")
 ;;864
 ;;21,"63874-0317-90 ")
 ;;865
 ;;21,"63874-0357-01 ")
 ;;866
 ;;21,"63874-0357-02 ")
 ;;867
 ;;21,"63874-0357-10 ")
 ;;868
 ;;21,"63874-0357-12 ")
 ;;869
 ;;21,"63874-0357-14 ")
 ;;870
 ;;21,"63874-0357-15 ")
 ;;871
 ;;21,"63874-0357-20 ")
 ;;872
 ;;21,"63874-0357-21 ")
 ;;873
 ;;21,"63874-0357-24 ")
 ;;874
 ;;21,"63874-0357-30 ")
 ;;875
 ;;21,"63874-0357-40 ")
 ;;876
 ;;21,"63874-0357-60 ")
 ;;877
 ;;21,"63874-0432-01 ")
 ;;878
 ;;21,"63874-0432-02 ")
 ;;879
 ;;21,"63874-0432-04 ")
 ;;880
 ;;21,"63874-0432-10 ")
 ;;881
 ;;21,"63874-0432-14 ")
 ;;882
 ;;21,"63874-0432-20 ")
 ;;883
 ;;21,"63874-0432-21 ")
 ;;884
 ;;21,"63874-0432-24 ")
 ;;885
 ;;21,"63874-0432-28 ")
 ;;886
 ;;21,"63874-0432-30 ")
 ;;887
 ;;21,"63874-0432-50 ")
 ;;888
 ;;21,"63874-0432-60 ")
 ;;889
 ;;21,"63874-0432-81 ")
 ;;890
 ;;21,"63874-0432-90 ")
 ;;891
 ;;21,"63874-0588-01 ")
 ;;892
 ;;21,"63874-0588-04 ")
 ;;893
 ;;21,"63874-0588-10 ")
 ;;894
 ;;21,"63874-0588-14 ")
 ;;895
 ;;21,"63874-0588-20 ")
 ;;896
 ;;21,"63874-0588-30 ")
 ;;897
 ;;21,"63874-0588-60 ")
 ;;898
 ;;21,"63874-0588-80 ")
 ;;899
 ;;21,"63874-0588-90 ")
 ;;900
 ;;21,"63874-0665-01 ")
 ;;901
 ;;21,"63874-0665-04 ")
 ;;902
 ;;21,"63874-0665-10 ")
 ;;903
 ;;21,"63874-0665-14 ")
 ;;904
 ;;21,"63874-0665-30 ")
 ;;905
 ;;21,"63874-0665-60 ")
 ;;906
 ;;21,"63874-0665-90 ")
 ;;907
 ;;21,"64720-0123-10 ")
 ;;908
 ;;21,"64720-0124-10 ")
 ;;909
 ;;21,"64720-0125-10 ")
 ;;910
 ;;21,"64720-0125-11 ")
 ;;911
 ;;21,"64720-0290-10 ")
 ;;912
 ;;21,"64720-0291-10 ")
 ;;913
 ;;21,"64720-0292-10 ")
 ;;914
 ;;21,"64720-0292-11 ")
 ;;915
 ;;21,"64764-0302-30 ")
 ;;916
 ;;21,"64764-0304-30 ")
 ;;917
 ;;21,"65243-0176-09 ")
 ;;918
 ;;21,"65243-0176-12 ")
 ;;919
 ;;21,"65243-0176-18 ")
 ;;920
 ;;21,"65243-0176-27 ")
 ;;921
 ;;21,"65243-0176-36 ")
 ;;922
 ;;21,"65243-0183-18 ")
 ;;923
 ;;21,"65243-0185-36 ")
 ;;924
 ;;21,"65243-0325-09 ")
 ;;925
 ;;21,"65243-0325-18 ")
 ;;926
 ;;21,"65243-0343-09 ")
 ;;927
 ;;21,"65243-0343-36 ")
 ;;928
 ;;21,"65243-0346-09 ")
 ;;929
 ;;21,"65243-0375-09 ")
 ;;930
 ;;21,"65243-0378-09 ")
 ;;931
 ;;21,"65862-0028-01 ")
 ;;932
 ;;21,"65862-0029-01 ")
 ;;933
 ;;21,"65862-0029-05 ")
 ;;934
 ;;21,"65862-0030-01 ")
 ;;935
 ;;21,"65862-0030-99 ")
 ;;936
 ;;21,"65862-0080-01 ")
 ;;937
 ;;21,"65862-0080-05 ")
 ;;938
 ;;21,"65862-0081-01 ")
 ;;939
 ;;21,"65862-0081-05 ")
 ;;940
 ;;21,"65862-0082-01 ")
 ;;941
 ;;21,"65862-0082-05 ")
 ;;942
 ;;21,"66105-0984-03 ")
 ;;943
 ;;21,"66105-0984-06 ")
 ;;944
 ;;21,"66105-0984-10 ")
 ;;945
 ;;21,"66105-0984-11 ")
 ;;946
 ;;21,"66105-0984-50 ")
 ;;947
 ;;21,"66105-0985-03 ")
 ;;948
 ;;21,"66105-0985-06 ")
 ;;949
 ;;21,"66105-0985-10 ")
 ;;950
 ;;21,"66105-0985-11 ")
 ;;951
 ;;21,"66105-0985-50 ")
 ;;952
 ;;21,"66105-0986-03 ")
 ;;953
 ;;21,"66105-0986-06 ")
 ;;954
 ;;21,"66105-0986-10 ")
 ;;955
 ;;21,"66105-0986-11 ")
 ;;956
 ;;21,"66105-0986-50 ")
 ;;957
 ;;21,"66116-0233-30 ")
 ;;958
 ;;21,"66267-0099-30 ")
 ;;959
 ;;21,"66267-0100-30 ")
 ;;960
 ;;21,"66267-0100-60 ")
 ;;961
 ;;21,"66267-0100-90 ")
 ;;962
 ;;21,"66267-0100-91 ")
 ;;963
 ;;21,"66267-0100-92 ")
 ;;964
 ;;21,"66267-0103-30 ")
 ;;965
 ;;21,"66336-0028-90 ")
 ;;966
 ;;21,"66336-0269-90 ")
 ;;967
 ;;21,"66336-0712-90 ")
 ;;968
 ;;21,"66993-0163-02 ")
 ;;969
 ;;21,"66993-0164-02 ")
 ;;970
 ;;21,"66993-0821-30 ")
 ;;971
 ;;21,"66993-0822-30 ")
 ;;972
 ;;21,"67253-0460-10 ")
 ;;973
 ;;21,"67253-0461-10 ")
 ;;974
 ;;21,"67253-0461-11 ")
 ;;975
 ;;21,"67253-0461-50 ")
 ;;976
 ;;21,"67253-0462-10 ")
 ;;977
 ;;21,"67253-0462-11 ")
 ;;978
 ;;21,"67253-0462-50 ")
 ;;979
 ;;21,"67544-0097-32 ")
 ;;980
 ;;21,"67544-0097-53 ")
 ;;981
 ;;21,"67544-0097-60 ")
 ;;982
 ;;21,"67544-0097-70 ")
 ;;983
 ;;21,"67544-0097-80 ")
 ;;984
 ;;21,"67544-0097-92 ")
 ;;985
 ;;21,"67544-0097-94 ")
 ;;986
 ;;21,"67544-0129-30 ")
 ;;987
 ;;21,"67544-0129-53 ")
 ;;988
 ;;21,"67544-0129-70 ")
 ;;989
 ;;21,"67544-0129-80 ")
 ;;990
 ;;21,"67544-0129-94 ")
 ;;991
 ;;21,"67544-0199-80 ")
 ;;992
 ;;21,"67544-0296-70 ")
 ;;993
 ;;21,"67544-0302-32 ")
 ;;994
 ;;21,"67544-0302-45 ")
 ;;995
 ;;21,"67544-0302-60 ")
 ;;996
 ;;21,"67544-0302-73 ")
 ;;997
 ;;21,"67544-0302-80 ")
 ;;998
 ;;21,"67544-0302-92 ")
 ;;999
 ;;21,"67544-0302-98 ")
 ;;1000
 ;;21,"67544-0511-30 ")
 ;;1001
 ;;21,"67544-0511-70 ")
 ;;1002
 ;;21,"67544-0511-94 ")
 ;;1003
 ;;21,"67544-0566-53 ")
 ;;1004
 ;;21,"67544-0566-60 ")
 ;;1005
 ;;21,"67544-0566-70 ")
 ;;1006
 ;;21,"67544-0566-80 ")
 ;;1007
 ;;21,"67544-0566-92 ")
 ;;1008
 ;;21,"67544-0566-94 ")
 ;;1009
 ;;21,"67544-0613-53 ")
 ;;1010
 ;;21,"67544-0653-53 ")
 ;;1011
 ;;21,"67544-0653-60 ")
 ;;1012
 ;;21,"67544-0653-70 ")
 ;;1013
 ;;21,"67544-0653-80 ")
 ;;1014
 ;;21,"67544-0653-90 ")
 ;;1015
 ;;21,"67544-0653-92 ")
 ;;1016
 ;;21,"67544-0653-94 ")
 ;;1017
 ;;21,"67544-0653-98 ")
 ;;1018
 ;;21,"67544-0661-41 ")
 ;;1019
 ;;21,"67544-0661-81 ")
 ;;1020
 ;;21,"67544-0875-60 ")
 ;;1021
 ;;21,"67544-0875-80 ")
 ;;1022
 ;;21,"68001-0177-00 ")
 ;;1023