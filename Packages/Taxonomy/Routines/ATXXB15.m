ATXXB15 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"0WB43ZZ ")
 ;;5573
 ;;21,"0WB44ZX ")
 ;;5574
 ;;21,"0WB44ZZ ")
 ;;5575
 ;;21,"0WB4XZX ")
 ;;5576
 ;;21,"0WB4XZZ ")
 ;;5577
 ;;21,"0WB50ZX ")
 ;;5578
 ;;21,"0WB50ZZ ")
 ;;5579
 ;;21,"0WB53ZX ")
 ;;5580
 ;;21,"0WB53ZZ ")
 ;;5581
 ;;21,"0WB54ZX ")
 ;;5582
 ;;21,"0WB54ZZ ")
 ;;5583
 ;;21,"0WB5XZX ")
 ;;5584
 ;;21,"0WB5XZZ ")
 ;;5585
 ;;21,"0WB60ZX ")
 ;;5586
 ;;21,"0WB60ZZ ")
 ;;5587
 ;;21,"0WB63ZX ")
 ;;5588
 ;;21,"0WB63ZZ ")
 ;;5589
 ;;21,"0WB64ZX ")
 ;;5590
 ;;21,"0WB64ZZ ")
 ;;5591
 ;;21,"0WB6XZX ")
 ;;5592
 ;;21,"0WB6XZZ ")
 ;;5593
 ;;21,"0WBK0ZX ")
 ;;5594
 ;;21,"0WBK0ZZ ")
 ;;5595
 ;;21,"0WBK3ZX ")
 ;;5596
 ;;21,"0WBK3ZZ ")
 ;;5597
 ;;21,"0WBK4ZX ")
 ;;5598
 ;;21,"0WBK4ZZ ")
 ;;5599
 ;;21,"0WBKXZX ")
 ;;5600
 ;;21,"0WBKXZZ ")
 ;;5601
 ;;21,"0WBL0ZX ")
 ;;5602
 ;;21,"0WBL0ZZ ")
 ;;5603
 ;;21,"0WBL3ZX ")
 ;;5604
 ;;21,"0WBL3ZZ ")
 ;;5605
 ;;21,"0WBL4ZX ")
 ;;5606
 ;;21,"0WBL4ZZ ")
 ;;5607
 ;;21,"0WBLXZX ")
 ;;5608
 ;;21,"0WBLXZZ ")
 ;;5609
 ;;21,"0WBM0ZX ")
 ;;5610
 ;;21,"0WBM0ZZ ")
 ;;5611
 ;;21,"0WBM3ZX ")
 ;;5612
 ;;21,"0WBM3ZZ ")
 ;;5613
 ;;21,"0WBM4ZX ")
 ;;5614
 ;;21,"0WBM4ZZ ")
 ;;5615
 ;;21,"0WBMXZX ")
 ;;5616
 ;;21,"0WBMXZZ ")
 ;;5617
 ;;21,"0WC1XZZ ")
 ;;5618
 ;;21,"0WC3XZZ ")
 ;;5619
 ;;21,"0WC9XZZ ")
 ;;5620
 ;;21,"0WCBXZZ ")
 ;;5621
 ;;21,"0WCCXZZ ")
 ;;5622
 ;;21,"0WCDXZZ ")
 ;;5623
 ;;21,"0WCGXZZ ")
 ;;5624
 ;;21,"0WCJXZZ ")
 ;;5625
 ;;21,"0WCPXZZ ")
 ;;5626
 ;;21,"0WCQXZZ ")
 ;;5627
 ;;21,"0WCRXZZ ")
 ;;5628
 ;;21,"0WF1XZZ ")
 ;;5629
 ;;21,"0WF3XZZ ")
 ;;5630
 ;;21,"0WF9XZZ ")
 ;;5631
 ;;21,"0WFBXZZ ")
 ;;5632
 ;;21,"0WFCXZZ ")
 ;;5633
 ;;21,"0WFGXZZ ")
 ;;5634
 ;;21,"0WFJXZZ ")
 ;;5635
 ;;21,"0WFPXZZ ")
 ;;5636
 ;;21,"0WFQXZZ ")
 ;;5637
 ;;21,"0WFRXZZ ")
 ;;5638
 ;;21,"0WH001Z ")
 ;;5639
 ;;21,"0WH003Z ")
 ;;5640
 ;;21,"0WH00YZ ")
 ;;5641
 ;;21,"0WH031Z ")
 ;;5642
 ;;21,"0WH033Z ")
 ;;5643
 ;;21,"0WH03YZ ")
 ;;5644
 ;;21,"0WH041Z ")
 ;;5645
 ;;21,"0WH043Z ")
 ;;5646
 ;;21,"0WH04YZ ")
 ;;5647
 ;;21,"0WH101Z ")
 ;;5648
 ;;21,"0WH131Z ")
 ;;5649
 ;;21,"0WH141Z ")
 ;;5650
 ;;21,"0WH201Z ")
 ;;5651
 ;;21,"0WH203Z ")
 ;;5652
 ;;21,"0WH20YZ ")
 ;;5653
 ;;21,"0WH231Z ")
 ;;5654
 ;;21,"0WH233Z ")
 ;;5655
 ;;21,"0WH23YZ ")
 ;;5656
 ;;21,"0WH241Z ")
 ;;5657
 ;;21,"0WH243Z ")
 ;;5658
 ;;21,"0WH24YZ ")
 ;;5659
 ;;21,"0WH301Z ")
 ;;5660
 ;;21,"0WH331Z ")
 ;;5661
 ;;21,"0WH341Z ")
 ;;5662
 ;;21,"0WH401Z ")
 ;;5663
 ;;21,"0WH403Z ")
 ;;5664
 ;;21,"0WH40YZ ")
 ;;5665
 ;;21,"0WH431Z ")
 ;;5666
 ;;21,"0WH433Z ")
 ;;5667
 ;;21,"0WH43YZ ")
 ;;5668
 ;;21,"0WH441Z ")
 ;;5669
 ;;21,"0WH443Z ")
 ;;5670
 ;;21,"0WH44YZ ")
 ;;5671
 ;;21,"0WH501Z ")
 ;;5672
 ;;21,"0WH503Z ")
 ;;5673
 ;;21,"0WH50YZ ")
 ;;5674
 ;;21,"0WH531Z ")
 ;;5675
 ;;21,"0WH533Z ")
 ;;5676
 ;;21,"0WH53YZ ")
 ;;5677
 ;;21,"0WH541Z ")
 ;;5678
 ;;21,"0WH543Z ")
 ;;5679
 ;;21,"0WH54YZ ")
 ;;5680
 ;;21,"0WH601Z ")
 ;;5681
 ;;21,"0WH603Z ")
 ;;5682
 ;;21,"0WH60YZ ")
 ;;5683
 ;;21,"0WH631Z ")
 ;;5684
 ;;21,"0WH633Z ")
 ;;5685
 ;;21,"0WH63YZ ")
 ;;5686
 ;;21,"0WH641Z ")
 ;;5687
 ;;21,"0WH643Z ")
 ;;5688
 ;;21,"0WH64YZ ")
 ;;5689
 ;;21,"0WH801Z ")
 ;;5690
 ;;21,"0WH831Z ")
 ;;5691
 ;;21,"0WH841Z ")
 ;;5692
 ;;21,"0WH901Z ")
 ;;5693
 ;;21,"0WH931Z ")
 ;;5694
 ;;21,"0WH941Z ")
 ;;5695
 ;;21,"0WHB01Z ")
 ;;5696
 ;;21,"0WHB31Z ")
 ;;5697
 ;;21,"0WHB41Z ")
 ;;5698
 ;;21,"0WHC01Z ")
 ;;5699
 ;;21,"0WHC31Z ")
 ;;5700
 ;;21,"0WHC41Z ")
 ;;5701
 ;;21,"0WHD01Z ")
 ;;5702
 ;;21,"0WHD31Z ")
 ;;5703
 ;;21,"0WHD41Z ")
 ;;5704
 ;;21,"0WHF01Z ")
 ;;5705
 ;;21,"0WHF31Z ")
 ;;5706
 ;;21,"0WHF41Z ")
 ;;5707
 ;;21,"0WHG01Z ")
 ;;5708
 ;;21,"0WHG31Z ")
 ;;5709
 ;;21,"0WHG41Z ")
 ;;5710
 ;;21,"0WHH01Z ")
 ;;5711
 ;;21,"0WHH31Z ")
 ;;5712
 ;;21,"0WHH41Z ")
 ;;5713
 ;;21,"0WHJ01Z ")
 ;;5714
 ;;21,"0WHJ31Z ")
 ;;5715
 ;;21,"0WHJ41Z ")
 ;;5716
 ;;21,"0WHK01Z ")
 ;;5717
 ;;21,"0WHK03Z ")
 ;;5718
 ;;21,"0WHK0YZ ")
 ;;5719
 ;;21,"0WHK31Z ")
 ;;5720
 ;;21,"0WHK33Z ")
 ;;5721
 ;;21,"0WHK3YZ ")
 ;;5722
 ;;21,"0WHK41Z ")
 ;;5723
 ;;21,"0WHK43Z ")
 ;;5724
 ;;21,"0WHK4YZ ")
 ;;5725
 ;;21,"0WHL01Z ")
 ;;5726
 ;;21,"0WHL03Z ")
 ;;5727
 ;;21,"0WHL0YZ ")
 ;;5728
 ;;21,"0WHL31Z ")
 ;;5729
 ;;21,"0WHL33Z ")
 ;;5730
 ;;21,"0WHL3YZ ")
 ;;5731
 ;;21,"0WHL41Z ")
 ;;5732
 ;;21,"0WHL43Z ")
 ;;5733
 ;;21,"0WHL4YZ ")
 ;;5734
 ;;21,"0WHM01Z ")
 ;;5735
 ;;21,"0WHM03Z ")
 ;;5736
 ;;21,"0WHM0YZ ")
 ;;5737
 ;;21,"0WHM31Z ")
 ;;5738
 ;;21,"0WHM33Z ")
 ;;5739
 ;;21,"0WHM3YZ ")
 ;;5740
 ;;21,"0WHM41Z ")
 ;;5741
 ;;21,"0WHM43Z ")
 ;;5742
 ;;21,"0WHM4YZ ")
 ;;5743
 ;;21,"0WHN01Z ")
 ;;5744
 ;;21,"0WHN31Z ")
 ;;5745
 ;;21,"0WHN41Z ")
 ;;5746
 ;;21,"0WHP01Z ")
 ;;5747
 ;;21,"0WHP31Z ")
 ;;5748
 ;;21,"0WHP41Z ")
 ;;5749
 ;;21,"0WHP71Z ")
 ;;5750
 ;;21,"0WHP81Z ")
 ;;5751
 ;;21,"0WHQ01Z ")
 ;;5752
 ;;21,"0WHQ31Z ")
 ;;5753
 ;;21,"0WHQ41Z ")
 ;;5754
 ;;21,"0WHQ71Z ")
 ;;5755
 ;;21,"0WHQ73Z ")
 ;;5756
 ;;21,"0WHQ7YZ ")
 ;;5757
 ;;21,"0WHQ81Z ")
 ;;5758
 ;;21,"0WHR01Z ")
 ;;5759
 ;;21,"0WHR31Z ")
 ;;5760
 ;;21,"0WHR41Z ")
 ;;5761
 ;;21,"0WHR71Z ")
 ;;5762
 ;;21,"0WHR73Z ")
 ;;5763
 ;;21,"0WHR7YZ ")
 ;;5764
 ;;21,"0WHR81Z ")
 ;;5765
 ;;21,"0WJ00ZZ ")
 ;;5766
 ;;21,"0WJ03ZZ ")
 ;;5767
 ;;21,"0WJ04ZZ ")
 ;;5768
 ;;21,"0WJ0XZZ ")
 ;;5769
 ;;21,"0WJ20ZZ ")
 ;;5770
 ;;21,"0WJ23ZZ ")
 ;;5771
 ;;21,"0WJ24ZZ ")
 ;;5772
 ;;21,"0WJ2XZZ ")
 ;;5773
 ;;21,"0WJ3XZZ ")
 ;;5774
 ;;21,"0WJ40ZZ ")
 ;;5775
 ;;21,"0WJ43ZZ ")
 ;;5776
 ;;21,"0WJ44ZZ ")
 ;;5777
 ;;21,"0WJ4XZZ ")
 ;;5778
 ;;21,"0WJ50ZZ ")
 ;;5779
 ;;21,"0WJ53ZZ ")
 ;;5780
 ;;21,"0WJ54ZZ ")
 ;;5781
 ;;21,"0WJ5XZZ ")
 ;;5782
 ;;21,"0WJ6XZZ ")
 ;;5783
 ;;21,"0WJ8XZZ ")
 ;;5784
 ;;21,"0WJFXZZ ")
 ;;5785
 ;;21,"0WJK0ZZ ")
 ;;5786
 ;;21,"0WJK3ZZ ")
 ;;5787
 ;;21,"0WJK4ZZ ")
 ;;5788
 ;;21,"0WJKXZZ ")
 ;;5789
 ;;21,"0WJL0ZZ ")
 ;;5790
 ;;21,"0WJL3ZZ ")
 ;;5791
 ;;21,"0WJL4ZZ ")
 ;;5792
 ;;21,"0WJLXZZ ")
 ;;5793
 ;;21,"0WJM0ZZ ")
 ;;5794
 ;;21,"0WJM3ZZ ")
 ;;5795
 ;;21,"0WJM4ZZ ")
 ;;5796
 ;;21,"0WJMXZZ ")
 ;;5797
 ;;21,"0WJNXZZ ")
 ;;5798
 ;;21,"0WM20ZZ ")
 ;;5799
 ;;21,"0WM40ZZ ")
 ;;5800
 ;;21,"0WM50ZZ ")
 ;;5801
 ;;21,"0WM60ZZ ")
 ;;5802
 ;;21,"0WMK0ZZ ")
 ;;5803
 ;;21,"0WML0ZZ ")
 ;;5804
 ;;21,"0WMM0ZZ ")
 ;;5805
 ;;21,"0WP000Z ")
 ;;5806
 ;;21,"0WP001Z ")
 ;;5807
 ;;21,"0WP003Z ")
 ;;5808
 ;;21,"0WP007Z ")
 ;;5809
 ;;21,"0WP00JZ ")
 ;;5810
 ;;21,"0WP00KZ ")
 ;;5811
 ;;21,"0WP00YZ ")
 ;;5812
 ;;21,"0WP030Z ")
 ;;5813
 ;;21,"0WP031Z ")
 ;;5814
 ;;21,"0WP033Z ")
 ;;5815
 ;;21,"0WP037Z ")
 ;;5816
 ;;21,"0WP03JZ ")
 ;;5817
 ;;21,"0WP03KZ ")
 ;;5818
 ;;21,"0WP03YZ ")
 ;;5819
 ;;21,"0WP040Z ")
 ;;5820
 ;;21,"0WP041Z ")
 ;;5821
 ;;21,"0WP043Z ")
 ;;5822
 ;;21,"0WP047Z ")
 ;;5823
 ;;21,"0WP04JZ ")
 ;;5824
 ;;21,"0WP04KZ ")
 ;;5825
 ;;21,"0WP04YZ ")
 ;;5826
 ;;21,"0WP0X0Z ")
 ;;5827
 ;;21,"0WP0X1Z ")
 ;;5828
 ;;21,"0WP0X3Z ")
 ;;5829
 ;;21,"0WP0X7Z ")
 ;;5830
 ;;21,"0WP0XJZ ")
 ;;5831
 ;;21,"0WP0XKZ ")
 ;;5832
 ;;21,"0WP0XYZ ")
 ;;5833
 ;;21,"0WP1X0Z ")
 ;;5834
 ;;21,"0WP1X1Z ")
 ;;5835
 ;;21,"0WP200Z ")
 ;;5836
 ;;21,"0WP201Z ")
 ;;5837
 ;;21,"0WP203Z ")
 ;;5838
 ;;21,"0WP207Z ")
 ;;5839
 ;;21,"0WP20JZ ")
 ;;5840
 ;;21,"0WP20KZ ")
 ;;5841
 ;;21,"0WP20YZ ")
 ;;5842
 ;;21,"0WP230Z ")
 ;;5843
 ;;21,"0WP231Z ")
 ;;5844
 ;;21,"0WP233Z ")
 ;;5845
 ;;21,"0WP237Z ")
 ;;5846
 ;;21,"0WP23JZ ")
 ;;5847
 ;;21,"0WP23KZ ")
 ;;5848
 ;;21,"0WP23YZ ")
 ;;5849
 ;;21,"0WP240Z ")
 ;;5850
 ;;21,"0WP241Z ")
 ;;5851
 ;;21,"0WP243Z ")
 ;;5852
 ;;21,"0WP247Z ")
 ;;5853
 ;;21,"0WP24JZ ")
 ;;5854
 ;;21,"0WP24KZ ")
 ;;5855
 ;;21,"0WP24YZ ")
 ;;5856
 ;;21,"0WP2X0Z ")
 ;;5857
 ;;21,"0WP2X1Z ")
 ;;5858
 ;;21,"0WP2X3Z ")
 ;;5859
 ;;21,"0WP2X7Z ")
 ;;5860
 ;;21,"0WP2XJZ ")
 ;;5861
 ;;21,"0WP2XKZ ")
 ;;5862
 ;;21,"0WP2XYZ ")
 ;;5863
 ;;21,"0WP400Z ")
 ;;5864
 ;;21,"0WP401Z ")
 ;;5865
 ;;21,"0WP403Z ")
 ;;5866
 ;;21,"0WP407Z ")
 ;;5867
 ;;21,"0WP40JZ ")
 ;;5868
 ;;21,"0WP40KZ ")
 ;;5869
 ;;21,"0WP40YZ ")
 ;;5870
 ;;21,"0WP430Z ")
 ;;5871
 ;;21,"0WP431Z ")
 ;;5872
 ;;21,"0WP433Z ")
 ;;5873
 ;;21,"0WP437Z ")
 ;;5874
 ;;21,"0WP43JZ ")
 ;;5875
 ;;21,"0WP43KZ ")
 ;;5876
 ;;21,"0WP43YZ ")
 ;;5877
 ;;21,"0WP440Z ")
 ;;5878
 ;;21,"0WP441Z ")
 ;;5879
 ;;21,"0WP443Z ")
 ;;5880
 ;;21,"0WP447Z ")
 ;;5881
 ;;21,"0WP44JZ ")
 ;;5882
 ;;21,"0WP44KZ ")
 ;;5883
 ;;21,"0WP44YZ ")
 ;;5884
 ;;21,"0WP4X0Z ")
 ;;5885
 ;;21,"0WP4X1Z ")
 ;;5886
 ;;21,"0WP4X3Z ")
 ;;5887
 ;;21,"0WP4X7Z ")
 ;;5888
 ;;21,"0WP4XJZ ")
 ;;5889
 ;;21,"0WP4XKZ ")
 ;;5890
 ;;21,"0WP4XYZ ")
 ;;5891
 ;;21,"0WP500Z ")
 ;;5892
 ;;21,"0WP501Z ")
 ;;5893
 ;;21,"0WP503Z ")
 ;;5894
 ;;21,"0WP507Z ")
 ;;5895
 ;;21,"0WP50JZ ")
 ;;5896
 ;;21,"0WP50KZ ")
 ;;5897
 ;;21,"0WP50YZ ")
 ;;5898
 ;;21,"0WP530Z ")
 ;;5899
 ;;21,"0WP531Z ")
 ;;5900
 ;;21,"0WP533Z ")
 ;;5901
 ;;21,"0WP537Z ")
 ;;5902
 ;;21,"0WP53JZ ")
 ;;5903
 ;;21,"0WP53KZ ")
 ;;5904
 ;;21,"0WP53YZ ")
 ;;5905
 ;;21,"0WP540Z ")
 ;;5906
 ;;21,"0WP541Z ")
 ;;5907
 ;;21,"0WP543Z ")
 ;;5908
 ;;21,"0WP547Z ")
 ;;5909
 ;;21,"0WP54JZ ")
 ;;5910
 ;;21,"0WP54KZ ")
 ;;5911
 ;;21,"0WP54YZ ")
 ;;5912
 ;;21,"0WP5X0Z ")
 ;;5913
 ;;21,"0WP5X1Z ")
 ;;5914
 ;;21,"0WP5X3Z ")
 ;;5915
 ;;21,"0WP5X7Z ")
 ;;5916
 ;;21,"0WP5XJZ ")
 ;;5917
 ;;21,"0WP5XKZ ")
 ;;5918
 ;;21,"0WP5XYZ ")
 ;;5919
 ;;21,"0WP600Z ")
 ;;5920
 ;;21,"0WP601Z ")
 ;;5921
 ;;21,"0WP603Z ")
 ;;5922
 ;;21,"0WP607Z ")
 ;;5923
 ;;21,"0WP60JZ ")
 ;;5924
 ;;21,"0WP60KZ ")
 ;;5925
 ;;21,"0WP60YZ ")
 ;;5926
 ;;21,"0WP630Z ")
 ;;5927
 ;;21,"0WP631Z ")
 ;;5928
 ;;21,"0WP633Z ")
 ;;5929
 ;;21,"0WP637Z ")
 ;;5930
 ;;21,"0WP63JZ ")
 ;;5931
 ;;21,"0WP63KZ ")
 ;;5932
 ;;21,"0WP63YZ ")
 ;;5933
 ;;21,"0WP640Z ")
 ;;5934
 ;;21,"0WP641Z ")
 ;;5935
 ;;21,"0WP643Z ")
 ;;5936
 ;;21,"0WP647Z ")
 ;;5937
 ;;21,"0WP64JZ ")
 ;;5938
 ;;21,"0WP64KZ ")
 ;;5939
 ;;21,"0WP64YZ ")
 ;;5940
 ;;21,"0WP6X0Z ")
 ;;5941
 ;;21,"0WP6X1Z ")
 ;;5942
 ;;21,"0WP6X3Z ")
 ;;5943
 ;;21,"0WP6X7Z ")
 ;;5944
 ;;21,"0WP6XJZ ")
 ;;5945
 ;;21,"0WP6XKZ ")
 ;;5946
 ;;21,"0WP6XYZ ")
 ;;5947
 ;;21,"0WP8X0Z ")
 ;;5948
 ;;21,"0WP8X1Z ")
 ;;5949
 ;;21,"0WP8X3Z ")
 ;;5950
 ;;21,"0WP8X7Z ")
 ;;5951
 ;;21,"0WP8XJZ ")
 ;;5952
 ;;21,"0WP8XKZ ")
 ;;5953
 ;;21,"0WP8XYZ ")
 ;;5954
 ;;21,"0WP9X0Z ")
 ;;5955
 ;;21,"0WP9X1Z ")
 ;;5956
 ;;21,"0WP9X3Z ")
 ;;5957
 ;;21,"0WPBX0Z ")
 ;;5958
 ;;21,"0WPBX1Z ")
 ;;5959
 ;;21,"0WPBX3Z ")
 ;;5960
 ;;21,"0WPCX0Z ")
 ;;5961
 ;;21,"0WPCX1Z ")
 ;;5962
 ;;21,"0WPCX3Z ")
 ;;5963
 ;;21,"0WPCX7Z ")
 ;;5964
 ;;21,"0WPCXJZ ")
 ;;5965
 ;;21,"0WPCXKZ ")
 ;;5966
 ;;21,"0WPCXYZ ")
 ;;5967
 ;;21,"0WPDX0Z ")
 ;;5968