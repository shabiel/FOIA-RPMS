ATXXA13 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"S62.623A ")
 ;;4636
 ;;21,"S62.623B ")
 ;;4637
 ;;21,"S62.624A ")
 ;;4638
 ;;21,"S62.624B ")
 ;;4639
 ;;21,"S62.625A ")
 ;;4640
 ;;21,"S62.625B ")
 ;;4641
 ;;21,"S62.626A ")
 ;;4642
 ;;21,"S62.626B ")
 ;;4643
 ;;21,"S62.627A ")
 ;;4644
 ;;21,"S62.627B ")
 ;;4645
 ;;21,"S62.628A ")
 ;;4646
 ;;21,"S62.628B ")
 ;;4647
 ;;21,"S62.629A ")
 ;;4648
 ;;21,"S62.629B ")
 ;;4649
 ;;21,"S62.630A ")
 ;;4650
 ;;21,"S62.630B ")
 ;;4651
 ;;21,"S62.631A ")
 ;;4652
 ;;21,"S62.631B ")
 ;;4653
 ;;21,"S62.632A ")
 ;;4654
 ;;21,"S62.632B ")
 ;;4655
 ;;21,"S62.633A ")
 ;;4656
 ;;21,"S62.633B ")
 ;;4657
 ;;21,"S62.634A ")
 ;;4658
 ;;21,"S62.634B ")
 ;;4659
 ;;21,"S62.635A ")
 ;;4660
 ;;21,"S62.635B ")
 ;;4661
 ;;21,"S62.636A ")
 ;;4662
 ;;21,"S62.636B ")
 ;;4663
 ;;21,"S62.637A ")
 ;;4664
 ;;21,"S62.637B ")
 ;;4665
 ;;21,"S62.638A ")
 ;;4666
 ;;21,"S62.638B ")
 ;;4667
 ;;21,"S62.639A ")
 ;;4668
 ;;21,"S62.639B ")
 ;;4669
 ;;21,"S62.640A ")
 ;;4670
 ;;21,"S62.640B ")
 ;;4671
 ;;21,"S62.641A ")
 ;;4672
 ;;21,"S62.641B ")
 ;;4673
 ;;21,"S62.642A ")
 ;;4674
 ;;21,"S62.642B ")
 ;;4675
 ;;21,"S62.643A ")
 ;;4676
 ;;21,"S62.643B ")
 ;;4677
 ;;21,"S62.644A ")
 ;;4678
 ;;21,"S62.644B ")
 ;;4679
 ;;21,"S62.645A ")
 ;;4680
 ;;21,"S62.645B ")
 ;;4681
 ;;21,"S62.646A ")
 ;;4682
 ;;21,"S62.646B ")
 ;;4683
 ;;21,"S62.647A ")
 ;;4684
 ;;21,"S62.647B ")
 ;;4685
 ;;21,"S62.648A ")
 ;;4686
 ;;21,"S62.648B ")
 ;;4687
 ;;21,"S62.649A ")
 ;;4688
 ;;21,"S62.649B ")
 ;;4689
 ;;21,"S62.650A ")
 ;;4690
 ;;21,"S62.650B ")
 ;;4691
 ;;21,"S62.651A ")
 ;;4692
 ;;21,"S62.651B ")
 ;;4693
 ;;21,"S62.652A ")
 ;;4694
 ;;21,"S62.652B ")
 ;;4695
 ;;21,"S62.653A ")
 ;;4696
 ;;21,"S62.653B ")
 ;;4697
 ;;21,"S62.654A ")
 ;;4698
 ;;21,"S62.654B ")
 ;;4699
 ;;21,"S62.655A ")
 ;;4700
 ;;21,"S62.655B ")
 ;;4701
 ;;21,"S62.656A ")
 ;;4702
 ;;21,"S62.656B ")
 ;;4703
 ;;21,"S62.657A ")
 ;;4704
 ;;21,"S62.657B ")
 ;;4705
 ;;21,"S62.658A ")
 ;;4706
 ;;21,"S62.658B ")
 ;;4707
 ;;21,"S62.659A ")
 ;;4708
 ;;21,"S62.659B ")
 ;;4709
 ;;21,"S62.660A ")
 ;;4710
 ;;21,"S62.660B ")
 ;;4711
 ;;21,"S62.661A ")
 ;;4712
 ;;21,"S62.661B ")
 ;;4713
 ;;21,"S62.662A ")
 ;;4714
 ;;21,"S62.662B ")
 ;;4715
 ;;21,"S62.663A ")
 ;;4716
 ;;21,"S62.663B ")
 ;;4717
 ;;21,"S62.664A ")
 ;;4718
 ;;21,"S62.664B ")
 ;;4719
 ;;21,"S62.665A ")
 ;;4720
 ;;21,"S62.665B ")
 ;;4721
 ;;21,"S62.666A ")
 ;;4722
 ;;21,"S62.666B ")
 ;;4723
 ;;21,"S62.667A ")
 ;;4724
 ;;21,"S62.667B ")
 ;;4725
 ;;21,"S62.668A ")
 ;;4726
 ;;21,"S62.668B ")
 ;;4727
 ;;21,"S62.669A ")
 ;;4728
 ;;21,"S62.669B ")
 ;;4729
 ;;21,"S62.90XA ")
 ;;4730
 ;;21,"S62.90XB ")
 ;;4731
 ;;21,"S62.91XA ")
 ;;4732
 ;;21,"S62.91XB ")
 ;;4733
 ;;21,"S62.92XA ")
 ;;4734
 ;;21,"S62.92XB ")
 ;;4735
 ;;21,"S63.001A ")
 ;;4736
 ;;21,"S63.002A ")
 ;;4737
 ;;21,"S63.003A ")
 ;;4738
 ;;21,"S63.004A ")
 ;;4739
 ;;21,"S63.005A ")
 ;;4740
 ;;21,"S63.006A ")
 ;;4741
 ;;21,"S63.011A ")
 ;;4742
 ;;21,"S63.012A ")
 ;;4743
 ;;21,"S63.013A ")
 ;;4744
 ;;21,"S63.014A ")
 ;;4745
 ;;21,"S63.015A ")
 ;;4746
 ;;21,"S63.016A ")
 ;;4747
 ;;21,"S63.021A ")
 ;;4748
 ;;21,"S63.022A ")
 ;;4749
 ;;21,"S63.023A ")
 ;;4750
 ;;21,"S63.024A ")
 ;;4751
 ;;21,"S63.025A ")
 ;;4752
 ;;21,"S63.026A ")
 ;;4753
 ;;21,"S63.031A ")
 ;;4754
 ;;21,"S63.032A ")
 ;;4755
 ;;21,"S63.033A ")
 ;;4756
 ;;21,"S63.034A ")
 ;;4757
 ;;21,"S63.035A ")
 ;;4758
 ;;21,"S63.036A ")
 ;;4759
 ;;21,"S63.041A ")
 ;;4760
 ;;21,"S63.042A ")
 ;;4761
 ;;21,"S63.043A ")
 ;;4762
 ;;21,"S63.044A ")
 ;;4763
 ;;21,"S63.045A ")
 ;;4764
 ;;21,"S63.046A ")
 ;;4765
 ;;21,"S63.051A ")
 ;;4766
 ;;21,"S63.052A ")
 ;;4767
 ;;21,"S63.053A ")
 ;;4768
 ;;21,"S63.054A ")
 ;;4769
 ;;21,"S63.055A ")
 ;;4770
 ;;21,"S63.056A ")
 ;;4771
 ;;21,"S63.061A ")
 ;;4772
 ;;21,"S63.062A ")
 ;;4773
 ;;21,"S63.063A ")
 ;;4774
 ;;21,"S63.064A ")
 ;;4775
 ;;21,"S63.065A ")
 ;;4776
 ;;21,"S63.066A ")
 ;;4777
 ;;21,"S63.071A ")
 ;;4778
 ;;21,"S63.072A ")
 ;;4779
 ;;21,"S63.073A ")
 ;;4780
 ;;21,"S63.074A ")
 ;;4781
 ;;21,"S63.075A ")
 ;;4782
 ;;21,"S63.076A ")
 ;;4783
 ;;21,"S63.091A ")
 ;;4784
 ;;21,"S63.092A ")
 ;;4785
 ;;21,"S63.093A ")
 ;;4786
 ;;21,"S63.094A ")
 ;;4787
 ;;21,"S63.095A ")
 ;;4788
 ;;21,"S63.096A ")
 ;;4789
 ;;21,"S63.101A ")
 ;;4790
 ;;21,"S63.102A ")
 ;;4791
 ;;21,"S63.103A ")
 ;;4792
 ;;21,"S63.104A ")
 ;;4793
 ;;21,"S63.105A ")
 ;;4794
 ;;21,"S63.106A ")
 ;;4795
 ;;21,"S63.111A ")
 ;;4796
 ;;21,"S63.112A ")
 ;;4797
 ;;21,"S63.113A ")
 ;;4798
 ;;21,"S63.114A ")
 ;;4799
 ;;21,"S63.115A ")
 ;;4800
 ;;21,"S63.116A ")
 ;;4801
 ;;21,"S63.121A ")
 ;;4802
 ;;21,"S63.122A ")
 ;;4803
 ;;21,"S63.123A ")
 ;;4804
 ;;21,"S63.124A ")
 ;;4805
 ;;21,"S63.125A ")
 ;;4806
 ;;21,"S63.126A ")
 ;;4807
 ;;21,"S63.131A ")
 ;;4808
 ;;21,"S63.132A ")
 ;;4809
 ;;21,"S63.133A ")
 ;;4810
 ;;21,"S63.134A ")
 ;;4811
 ;;21,"S63.135A ")
 ;;4812
 ;;21,"S63.136A ")
 ;;4813
 ;;21,"S63.141A ")
 ;;4814
 ;;21,"S63.142A ")
 ;;4815
 ;;21,"S63.143A ")
 ;;4816
 ;;21,"S63.144A ")
 ;;4817
 ;;21,"S63.145A ")
 ;;4818
 ;;21,"S63.146A ")
 ;;4819
 ;;21,"S63.200A ")
 ;;4820
 ;;21,"S63.201A ")
 ;;4821
 ;;21,"S63.202A ")
 ;;4822
 ;;21,"S63.203A ")
 ;;4823
 ;;21,"S63.204A ")
 ;;4824
 ;;21,"S63.205A ")
 ;;4825
 ;;21,"S63.206A ")
 ;;4826
 ;;21,"S63.207A ")
 ;;4827
 ;;21,"S63.208A ")
 ;;4828
 ;;21,"S63.209A ")
 ;;4829
 ;;21,"S63.210A ")
 ;;4830
 ;;21,"S63.211A ")
 ;;4831
 ;;21,"S63.212A ")
 ;;4832
 ;;21,"S63.213A ")
 ;;4833
 ;;21,"S63.214A ")
 ;;4834
 ;;21,"S63.215A ")
 ;;4835
 ;;21,"S63.216A ")
 ;;4836
 ;;21,"S63.217A ")
 ;;4837
 ;;21,"S63.218A ")
 ;;4838
 ;;21,"S63.219A ")
 ;;4839
 ;;21,"S63.220A ")
 ;;4840
 ;;21,"S63.221A ")
 ;;4841
 ;;21,"S63.222A ")
 ;;4842
 ;;21,"S63.223A ")
 ;;4843
 ;;21,"S63.224A ")
 ;;4844
 ;;21,"S63.225A ")
 ;;4845
 ;;21,"S63.226A ")
 ;;4846
 ;;21,"S63.227A ")
 ;;4847
 ;;21,"S63.228A ")
 ;;4848
 ;;21,"S63.229A ")
 ;;4849
 ;;21,"S63.230A ")
 ;;4850
 ;;21,"S63.231A ")
 ;;4851
 ;;21,"S63.232A ")
 ;;4852
 ;;21,"S63.233A ")
 ;;4853
 ;;21,"S63.234A ")
 ;;4854
 ;;21,"S63.235A ")
 ;;4855
 ;;21,"S63.236A ")
 ;;4856
 ;;21,"S63.237A ")
 ;;4857
 ;;21,"S63.238A ")
 ;;4858
 ;;21,"S63.239A ")
 ;;4859
 ;;21,"S63.240A ")
 ;;4860
 ;;21,"S63.241A ")
 ;;4861
 ;;21,"S63.242A ")
 ;;4862
 ;;21,"S63.243A ")
 ;;4863
 ;;21,"S63.244A ")
 ;;4864
 ;;21,"S63.245A ")
 ;;4865
 ;;21,"S63.246A ")
 ;;4866
 ;;21,"S63.247A ")
 ;;4867
 ;;21,"S63.248A ")
 ;;4868
 ;;21,"S63.249A ")
 ;;4869
 ;;21,"S63.250A ")
 ;;4870
 ;;21,"S63.251A ")
 ;;4871
 ;;21,"S63.252A ")
 ;;4872
 ;;21,"S63.253A ")
 ;;4873
 ;;21,"S63.254A ")
 ;;4874
 ;;21,"S63.255A ")
 ;;4875
 ;;21,"S63.256A ")
 ;;4876
 ;;21,"S63.257A ")
 ;;4877
 ;;21,"S63.258A ")
 ;;4878
 ;;21,"S63.259A ")
 ;;4879
 ;;21,"S63.260A ")
 ;;4880
 ;;21,"S63.261A ")
 ;;4881
 ;;21,"S63.262A ")
 ;;4882
 ;;21,"S63.263A ")
 ;;4883
 ;;21,"S63.264A ")
 ;;4884
 ;;21,"S63.265A ")
 ;;4885
 ;;21,"S63.266A ")
 ;;4886
 ;;21,"S63.267A ")
 ;;4887
 ;;21,"S63.268A ")
 ;;4888
 ;;21,"S63.269A ")
 ;;4889
 ;;21,"S63.270A ")
 ;;4890
 ;;21,"S63.271A ")
 ;;4891
 ;;21,"S63.272A ")
 ;;4892
 ;;21,"S63.273A ")
 ;;4893
 ;;21,"S63.274A ")
 ;;4894
 ;;21,"S63.275A ")
 ;;4895
 ;;21,"S63.276A ")
 ;;4896
 ;;21,"S63.277A ")
 ;;4897
 ;;21,"S63.278A ")
 ;;4898
 ;;21,"S63.279A ")
 ;;4899
 ;;21,"S63.280A ")
 ;;4900
 ;;21,"S63.281A ")
 ;;4901
 ;;21,"S63.282A ")
 ;;4902
 ;;21,"S63.283A ")
 ;;4903
 ;;21,"S63.284A ")
 ;;4904
 ;;21,"S63.285A ")
 ;;4905
 ;;21,"S63.286A ")
 ;;4906
 ;;21,"S63.287A ")
 ;;4907
 ;;21,"S63.288A ")
 ;;4908
 ;;21,"S63.289A ")
 ;;4909
 ;;21,"S63.290A ")
 ;;4910
 ;;21,"S63.291A ")
 ;;4911
 ;;21,"S63.292A ")
 ;;4912
 ;;21,"S63.293A ")
 ;;4913
 ;;21,"S63.294A ")
 ;;4914
 ;;21,"S63.295A ")
 ;;4915
 ;;21,"S63.296A ")
 ;;4916
 ;;21,"S63.297A ")
 ;;4917
 ;;21,"S63.298A ")
 ;;4918
 ;;21,"S63.299A ")
 ;;4919
 ;;21,"S63.301A ")
 ;;4920
 ;;21,"S63.302A ")
 ;;4921
 ;;21,"S63.309A ")
 ;;4922
 ;;21,"S63.311A ")
 ;;4923
 ;;21,"S63.312A ")
 ;;4924
 ;;21,"S63.319A ")
 ;;4925
 ;;21,"S63.321A ")
 ;;4926
 ;;21,"S63.322A ")
 ;;4927
 ;;21,"S63.329A ")
 ;;4928
 ;;21,"S63.331A ")
 ;;4929
 ;;21,"S63.332A ")
 ;;4930
 ;;21,"S63.339A ")
 ;;4931
 ;;21,"S63.391A ")
 ;;4932
 ;;21,"S63.392A ")
 ;;4933
 ;;21,"S63.399A ")
 ;;4934
 ;;21,"S63.400A ")
 ;;4935
 ;;21,"S63.401A ")
 ;;4936
 ;;21,"S63.402A ")
 ;;4937
 ;;21,"S63.403A ")
 ;;4938
 ;;21,"S63.404A ")
 ;;4939
 ;;21,"S63.405A ")
 ;;4940
 ;;21,"S63.406A ")
 ;;4941
 ;;21,"S63.407A ")
 ;;4942
 ;;21,"S63.408A ")
 ;;4943
 ;;21,"S63.409A ")
 ;;4944
 ;;21,"S63.410A ")
 ;;4945
 ;;21,"S63.411A ")
 ;;4946
 ;;21,"S63.412A ")
 ;;4947
 ;;21,"S63.413A ")
 ;;4948
 ;;21,"S63.414A ")
 ;;4949
 ;;21,"S63.415A ")
 ;;4950
 ;;21,"S63.416A ")
 ;;4951
 ;;21,"S63.417A ")
 ;;4952
 ;;21,"S63.418A ")
 ;;4953
 ;;21,"S63.419A ")
 ;;4954
 ;;21,"S63.420A ")
 ;;4955
 ;;21,"S63.421A ")
 ;;4956
 ;;21,"S63.422A ")
 ;;4957
 ;;21,"S63.423A ")
 ;;4958
 ;;21,"S63.424A ")
 ;;4959
 ;;21,"S63.425A ")
 ;;4960
 ;;21,"S63.426A ")
 ;;4961
 ;;21,"S63.427A ")
 ;;4962
 ;;21,"S63.428A ")
 ;;4963
 ;;21,"S63.429A ")
 ;;4964
 ;;21,"S63.430A ")
 ;;4965
 ;;21,"S63.431A ")
 ;;4966
 ;;21,"S63.432A ")
 ;;4967
 ;;21,"S63.433A ")
 ;;4968
 ;;21,"S63.434A ")
 ;;4969
 ;;21,"S63.435A ")
 ;;4970
 ;;21,"S63.436A ")
 ;;4971
 ;;21,"S63.437A ")
 ;;4972
 ;;21,"S63.438A ")
 ;;4973
 ;;21,"S63.439A ")
 ;;4974
 ;;21,"S63.490A ")
 ;;4975
 ;;21,"S63.491A ")
 ;;4976
 ;;21,"S63.492A ")
 ;;4977
 ;;21,"S63.493A ")
 ;;4978
 ;;21,"S63.494A ")
 ;;4979
 ;;21,"S63.495A ")
 ;;4980
 ;;21,"S63.496A ")
 ;;4981
 ;;21,"S63.497A ")
 ;;4982
 ;;21,"S63.498A ")
 ;;4983
 ;;21,"S63.499A ")
 ;;4984
 ;;21,"S63.501A ")
 ;;4985
 ;;21,"S63.502A ")
 ;;4986
 ;;21,"S63.509A ")
 ;;4987
 ;;21,"S63.511A ")
 ;;4988
 ;;21,"S63.512A ")
 ;;4989
 ;;21,"S63.519A ")
 ;;4990
 ;;21,"S63.521A ")
 ;;4991
 ;;21,"S63.522A ")
 ;;4992
 ;;21,"S63.529A ")
 ;;4993
 ;;21,"S63.591A ")
 ;;4994
 ;;21,"S63.592A ")
 ;;4995
 ;;21,"S63.599A ")
 ;;4996
 ;;21,"S63.601A ")
 ;;4997
 ;;21,"S63.602A ")
 ;;4998
 ;;21,"S63.609A ")
 ;;4999
 ;;21,"S63.610A ")
 ;;5000
 ;;21,"S63.611A ")
 ;;5001
 ;;21,"S63.612A ")
 ;;5002
 ;;21,"S63.613A ")
 ;;5003
 ;;21,"S63.614A ")
 ;;5004
 ;;21,"S63.615A ")
 ;;5005
 ;;21,"S63.616A ")
 ;;5006
 ;;21,"S63.617A ")
 ;;5007
 ;;21,"S63.618A ")
 ;;5008
 ;;21,"S63.619A ")
 ;;5009
 ;;21,"S63.621A ")
 ;;5010
 ;;21,"S63.622A ")
 ;;5011
 ;;21,"S63.629A ")
 ;;5012
 ;;21,"S63.630A ")
 ;;5013
 ;;21,"S63.631A ")
 ;;5014
 ;;21,"S63.632A ")
 ;;5015
 ;;21,"S63.633A ")
 ;;5016
 ;;21,"S63.634A ")
 ;;5017
 ;;21,"S63.635A ")
 ;;5018
 ;;21,"S63.636A ")
 ;;5019