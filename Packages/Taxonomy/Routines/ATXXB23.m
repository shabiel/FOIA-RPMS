ATXXB23 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"2W55X7Z ")
 ;;8741
 ;;21,"2W55XYZ ")
 ;;8742
 ;;21,"2W56X0Z ")
 ;;8743
 ;;21,"2W56X1Z ")
 ;;8744
 ;;21,"2W56X2Z ")
 ;;8745
 ;;21,"2W56X3Z ")
 ;;8746
 ;;21,"2W56X4Z ")
 ;;8747
 ;;21,"2W56X5Z ")
 ;;8748
 ;;21,"2W56X6Z ")
 ;;8749
 ;;21,"2W56X7Z ")
 ;;8750
 ;;21,"2W56XYZ ")
 ;;8751
 ;;21,"2W57X0Z ")
 ;;8752
 ;;21,"2W57X1Z ")
 ;;8753
 ;;21,"2W57X2Z ")
 ;;8754
 ;;21,"2W57X3Z ")
 ;;8755
 ;;21,"2W57X4Z ")
 ;;8756
 ;;21,"2W57X5Z ")
 ;;8757
 ;;21,"2W57X6Z ")
 ;;8758
 ;;21,"2W57X7Z ")
 ;;8759
 ;;21,"2W57XYZ ")
 ;;8760
 ;;21,"2W58X0Z ")
 ;;8761
 ;;21,"2W58X1Z ")
 ;;8762
 ;;21,"2W58X2Z ")
 ;;8763
 ;;21,"2W58X3Z ")
 ;;8764
 ;;21,"2W58X4Z ")
 ;;8765
 ;;21,"2W58X5Z ")
 ;;8766
 ;;21,"2W58X6Z ")
 ;;8767
 ;;21,"2W58X7Z ")
 ;;8768
 ;;21,"2W58XYZ ")
 ;;8769
 ;;21,"2W59X0Z ")
 ;;8770
 ;;21,"2W59X1Z ")
 ;;8771
 ;;21,"2W59X2Z ")
 ;;8772
 ;;21,"2W59X3Z ")
 ;;8773
 ;;21,"2W59X4Z ")
 ;;8774
 ;;21,"2W59X5Z ")
 ;;8775
 ;;21,"2W59X6Z ")
 ;;8776
 ;;21,"2W59X7Z ")
 ;;8777
 ;;21,"2W59XYZ ")
 ;;8778
 ;;21,"2W5AX0Z ")
 ;;8779
 ;;21,"2W5AX1Z ")
 ;;8780
 ;;21,"2W5AX2Z ")
 ;;8781
 ;;21,"2W5AX3Z ")
 ;;8782
 ;;21,"2W5AX4Z ")
 ;;8783
 ;;21,"2W5AX5Z ")
 ;;8784
 ;;21,"2W5AX6Z ")
 ;;8785
 ;;21,"2W5AX7Z ")
 ;;8786
 ;;21,"2W5AXYZ ")
 ;;8787
 ;;21,"2W5BX0Z ")
 ;;8788
 ;;21,"2W5BX1Z ")
 ;;8789
 ;;21,"2W5BX2Z ")
 ;;8790
 ;;21,"2W5BX3Z ")
 ;;8791
 ;;21,"2W5BX4Z ")
 ;;8792
 ;;21,"2W5BX5Z ")
 ;;8793
 ;;21,"2W5BX6Z ")
 ;;8794
 ;;21,"2W5BX7Z ")
 ;;8795
 ;;21,"2W5BXYZ ")
 ;;8796
 ;;21,"2W5CX0Z ")
 ;;8797
 ;;21,"2W5CX1Z ")
 ;;8798
 ;;21,"2W5CX2Z ")
 ;;8799
 ;;21,"2W5CX3Z ")
 ;;8800
 ;;21,"2W5CX4Z ")
 ;;8801
 ;;21,"2W5CX5Z ")
 ;;8802
 ;;21,"2W5CX6Z ")
 ;;8803
 ;;21,"2W5CX7Z ")
 ;;8804
 ;;21,"2W5CXYZ ")
 ;;8805
 ;;21,"2W5DX0Z ")
 ;;8806
 ;;21,"2W5DX1Z ")
 ;;8807
 ;;21,"2W5DX2Z ")
 ;;8808
 ;;21,"2W5DX3Z ")
 ;;8809
 ;;21,"2W5DX4Z ")
 ;;8810
 ;;21,"2W5DX5Z ")
 ;;8811
 ;;21,"2W5DX6Z ")
 ;;8812
 ;;21,"2W5DX7Z ")
 ;;8813
 ;;21,"2W5DXYZ ")
 ;;8814
 ;;21,"2W5EX0Z ")
 ;;8815
 ;;21,"2W5EX1Z ")
 ;;8816
 ;;21,"2W5EX2Z ")
 ;;8817
 ;;21,"2W5EX3Z ")
 ;;8818
 ;;21,"2W5EX4Z ")
 ;;8819
 ;;21,"2W5EX5Z ")
 ;;8820
 ;;21,"2W5EX6Z ")
 ;;8821
 ;;21,"2W5EX7Z ")
 ;;8822
 ;;21,"2W5EXYZ ")
 ;;8823
 ;;21,"2W5FX0Z ")
 ;;8824
 ;;21,"2W5FX1Z ")
 ;;8825
 ;;21,"2W5FX2Z ")
 ;;8826
 ;;21,"2W5FX3Z ")
 ;;8827
 ;;21,"2W5FX4Z ")
 ;;8828
 ;;21,"2W5FX5Z ")
 ;;8829
 ;;21,"2W5FX6Z ")
 ;;8830
 ;;21,"2W5FX7Z ")
 ;;8831
 ;;21,"2W5FXYZ ")
 ;;8832
 ;;21,"2W5GX0Z ")
 ;;8833
 ;;21,"2W5GX1Z ")
 ;;8834
 ;;21,"2W5GX2Z ")
 ;;8835
 ;;21,"2W5GX3Z ")
 ;;8836
 ;;21,"2W5GX4Z ")
 ;;8837
 ;;21,"2W5GX5Z ")
 ;;8838
 ;;21,"2W5GX6Z ")
 ;;8839
 ;;21,"2W5GX7Z ")
 ;;8840
 ;;21,"2W5GXYZ ")
 ;;8841
 ;;21,"2W5HX0Z ")
 ;;8842
 ;;21,"2W5HX1Z ")
 ;;8843
 ;;21,"2W5HX2Z ")
 ;;8844
 ;;21,"2W5HX3Z ")
 ;;8845
 ;;21,"2W5HX4Z ")
 ;;8846
 ;;21,"2W5HX5Z ")
 ;;8847
 ;;21,"2W5HX6Z ")
 ;;8848
 ;;21,"2W5HX7Z ")
 ;;8849
 ;;21,"2W5HXYZ ")
 ;;8850
 ;;21,"2W5JX0Z ")
 ;;8851
 ;;21,"2W5JX1Z ")
 ;;8852
 ;;21,"2W5JX2Z ")
 ;;8853
 ;;21,"2W5JX3Z ")
 ;;8854
 ;;21,"2W5JX4Z ")
 ;;8855
 ;;21,"2W5JX5Z ")
 ;;8856
 ;;21,"2W5JX6Z ")
 ;;8857
 ;;21,"2W5JX7Z ")
 ;;8858
 ;;21,"2W5JXYZ ")
 ;;8859
 ;;21,"2W5KX0Z ")
 ;;8860
 ;;21,"2W5KX1Z ")
 ;;8861
 ;;21,"2W5KX2Z ")
 ;;8862
 ;;21,"2W5KX3Z ")
 ;;8863
 ;;21,"2W5KX4Z ")
 ;;8864
 ;;21,"2W5KX5Z ")
 ;;8865
 ;;21,"2W5KX6Z ")
 ;;8866
 ;;21,"2W5KX7Z ")
 ;;8867
 ;;21,"2W5KXYZ ")
 ;;8868
 ;;21,"2W5LX0Z ")
 ;;8869
 ;;21,"2W5LX1Z ")
 ;;8870
 ;;21,"2W5LX2Z ")
 ;;8871
 ;;21,"2W5LX3Z ")
 ;;8872
 ;;21,"2W5LX4Z ")
 ;;8873
 ;;21,"2W5LX5Z ")
 ;;8874
 ;;21,"2W5LX6Z ")
 ;;8875
 ;;21,"2W5LX7Z ")
 ;;8876
 ;;21,"2W5LXYZ ")
 ;;8877
 ;;21,"2W5MX0Z ")
 ;;8878
 ;;21,"2W5MX1Z ")
 ;;8879
 ;;21,"2W5MX2Z ")
 ;;8880
 ;;21,"2W5MX3Z ")
 ;;8881
 ;;21,"2W5MX4Z ")
 ;;8882
 ;;21,"2W5MX5Z ")
 ;;8883
 ;;21,"2W5MX6Z ")
 ;;8884
 ;;21,"2W5MX7Z ")
 ;;8885
 ;;21,"2W5MXYZ ")
 ;;8886
 ;;21,"2W5NX0Z ")
 ;;8887
 ;;21,"2W5NX1Z ")
 ;;8888
 ;;21,"2W5NX2Z ")
 ;;8889
 ;;21,"2W5NX3Z ")
 ;;8890
 ;;21,"2W5NX4Z ")
 ;;8891
 ;;21,"2W5NX5Z ")
 ;;8892
 ;;21,"2W5NX6Z ")
 ;;8893
 ;;21,"2W5NX7Z ")
 ;;8894
 ;;21,"2W5NXYZ ")
 ;;8895
 ;;21,"2W5PX0Z ")
 ;;8896
 ;;21,"2W5PX1Z ")
 ;;8897
 ;;21,"2W5PX2Z ")
 ;;8898
 ;;21,"2W5PX3Z ")
 ;;8899
 ;;21,"2W5PX4Z ")
 ;;8900
 ;;21,"2W5PX5Z ")
 ;;8901
 ;;21,"2W5PX6Z ")
 ;;8902
 ;;21,"2W5PX7Z ")
 ;;8903
 ;;21,"2W5PXYZ ")
 ;;8904
 ;;21,"2W5QX0Z ")
 ;;8905
 ;;21,"2W5QX1Z ")
 ;;8906
 ;;21,"2W5QX2Z ")
 ;;8907
 ;;21,"2W5QX3Z ")
 ;;8908
 ;;21,"2W5QX4Z ")
 ;;8909
 ;;21,"2W5QX5Z ")
 ;;8910
 ;;21,"2W5QX6Z ")
 ;;8911
 ;;21,"2W5QX7Z ")
 ;;8912
 ;;21,"2W5QXYZ ")
 ;;8913
 ;;21,"2W5RX0Z ")
 ;;8914
 ;;21,"2W5RX1Z ")
 ;;8915
 ;;21,"2W5RX2Z ")
 ;;8916
 ;;21,"2W5RX3Z ")
 ;;8917
 ;;21,"2W5RX4Z ")
 ;;8918
 ;;21,"2W5RX5Z ")
 ;;8919
 ;;21,"2W5RX6Z ")
 ;;8920
 ;;21,"2W5RX7Z ")
 ;;8921
 ;;21,"2W5RXYZ ")
 ;;8922
 ;;21,"2W5SX0Z ")
 ;;8923
 ;;21,"2W5SX1Z ")
 ;;8924
 ;;21,"2W5SX2Z ")
 ;;8925
 ;;21,"2W5SX3Z ")
 ;;8926
 ;;21,"2W5SX4Z ")
 ;;8927
 ;;21,"2W5SX5Z ")
 ;;8928
 ;;21,"2W5SX6Z ")
 ;;8929
 ;;21,"2W5SX7Z ")
 ;;8930
 ;;21,"2W5SXYZ ")
 ;;8931
 ;;21,"2W5TX0Z ")
 ;;8932
 ;;21,"2W5TX1Z ")
 ;;8933
 ;;21,"2W5TX2Z ")
 ;;8934
 ;;21,"2W5TX3Z ")
 ;;8935
 ;;21,"2W5TX4Z ")
 ;;8936
 ;;21,"2W5TX5Z ")
 ;;8937
 ;;21,"2W5TX6Z ")
 ;;8938
 ;;21,"2W5TX7Z ")
 ;;8939
 ;;21,"2W5TXYZ ")
 ;;8940
 ;;21,"2W5UX0Z ")
 ;;8941
 ;;21,"2W5UX1Z ")
 ;;8942
 ;;21,"2W5UX2Z ")
 ;;8943
 ;;21,"2W5UX3Z ")
 ;;8944
 ;;21,"2W5UX4Z ")
 ;;8945
 ;;21,"2W5UX5Z ")
 ;;8946
 ;;21,"2W5UX6Z ")
 ;;8947
 ;;21,"2W5UX7Z ")
 ;;8948
 ;;21,"2W5UXYZ ")
 ;;8949
 ;;21,"2W5VX0Z ")
 ;;8950
 ;;21,"2W5VX1Z ")
 ;;8951
 ;;21,"2W5VX2Z ")
 ;;8952
 ;;21,"2W5VX3Z ")
 ;;8953
 ;;21,"2W5VX4Z ")
 ;;8954
 ;;21,"2W5VX5Z ")
 ;;8955
 ;;21,"2W5VX6Z ")
 ;;8956
 ;;21,"2W5VX7Z ")
 ;;8957
 ;;21,"2W5VXYZ ")
 ;;8958
 ;;21,"2W60X0Z ")
 ;;8959
 ;;21,"2W60XZZ ")
 ;;8960
 ;;21,"2W61X0Z ")
 ;;8961
 ;;21,"2W61XZZ ")
 ;;8962
 ;;21,"2W62X0Z ")
 ;;8963
 ;;21,"2W62XZZ ")
 ;;8964
 ;;21,"2W63X0Z ")
 ;;8965
 ;;21,"2W63XZZ ")
 ;;8966
 ;;21,"2W64X0Z ")
 ;;8967
 ;;21,"2W64XZZ ")
 ;;8968
 ;;21,"2W65X0Z ")
 ;;8969
 ;;21,"2W65XZZ ")
 ;;8970
 ;;21,"2W66X0Z ")
 ;;8971
 ;;21,"2W66XZZ ")
 ;;8972
 ;;21,"2W67X0Z ")
 ;;8973
 ;;21,"2W67XZZ ")
 ;;8974
 ;;21,"2W68X0Z ")
 ;;8975
 ;;21,"2W68XZZ ")
 ;;8976
 ;;21,"2W69X0Z ")
 ;;8977
 ;;21,"2W69XZZ ")
 ;;8978
 ;;21,"2W6AX0Z ")
 ;;8979
 ;;21,"2W6AXZZ ")
 ;;8980
 ;;21,"2W6BX0Z ")
 ;;8981
 ;;21,"2W6BXZZ ")
 ;;8982
 ;;21,"2W6CX0Z ")
 ;;8983
 ;;21,"2W6CXZZ ")
 ;;8984
 ;;21,"2W6DX0Z ")
 ;;8985
 ;;21,"2W6DXZZ ")
 ;;8986
 ;;21,"2W6EX0Z ")
 ;;8987
 ;;21,"2W6EXZZ ")
 ;;8988
 ;;21,"2W6FX0Z ")
 ;;8989
 ;;21,"2W6FXZZ ")
 ;;8990
 ;;21,"2W6GX0Z ")
 ;;8991
 ;;21,"2W6GXZZ ")
 ;;8992
 ;;21,"2W6HX0Z ")
 ;;8993
 ;;21,"2W6HXZZ ")
 ;;8994
 ;;21,"2W6JX0Z ")
 ;;8995
 ;;21,"2W6JXZZ ")
 ;;8996
 ;;21,"2W6KX0Z ")
 ;;8997
 ;;21,"2W6KXZZ ")
 ;;8998
 ;;21,"2W6LX0Z ")
 ;;8999
 ;;21,"2W6LXZZ ")
 ;;9000
 ;;21,"2W6MX0Z ")
 ;;9001
 ;;21,"2W6MXZZ ")
 ;;9002
 ;;21,"2W6NX0Z ")
 ;;9003
 ;;21,"2W6NXZZ ")
 ;;9004
 ;;21,"2W6PX0Z ")
 ;;9005
 ;;21,"2W6PXZZ ")
 ;;9006
 ;;21,"2W6QX0Z ")
 ;;9007
 ;;21,"2W6QXZZ ")
 ;;9008
 ;;21,"2W6RX0Z ")
 ;;9009
 ;;21,"2W6RXZZ ")
 ;;9010
 ;;21,"2W6SX0Z ")
 ;;9011
 ;;21,"2W6SXZZ ")
 ;;9012
 ;;21,"2W6TX0Z ")
 ;;9013
 ;;21,"2W6TXZZ ")
 ;;9014
 ;;21,"2W6UX0Z ")
 ;;9015
 ;;21,"2W6UXZZ ")
 ;;9016
 ;;21,"2W6VX0Z ")
 ;;9017
 ;;21,"2W6VXZZ ")
 ;;9018
 ;;21,"2Y00X5Z ")
 ;;9019
 ;;21,"2Y01X5Z ")
 ;;9020
 ;;21,"2Y02X5Z ")
 ;;9021
 ;;21,"2Y03X5Z ")
 ;;9022
 ;;21,"2Y04X5Z ")
 ;;9023
 ;;21,"2Y05X5Z ")
 ;;9024
 ;;21,"2Y40X5Z ")
 ;;9025
 ;;21,"2Y42X5Z ")
 ;;9026
 ;;21,"2Y43X5Z ")
 ;;9027
 ;;21,"2Y44X5Z ")
 ;;9028
 ;;21,"2Y45X5Z ")
 ;;9029
 ;;21,"2Y50X5Z ")
 ;;9030
 ;;21,"2Y51X5Z ")
 ;;9031
 ;;21,"2Y52X5Z ")
 ;;9032
 ;;21,"2Y53X5Z ")
 ;;9033
 ;;21,"2Y54X5Z ")
 ;;9034
 ;;21,"2Y55X5Z ")
 ;;9035
 ;;21,"30230H0 ")
 ;;9036
 ;;21,"30230H1 ")
 ;;9037
 ;;21,"30230J0 ")
 ;;9038
 ;;21,"30230J1 ")
 ;;9039
 ;;21,"30230K0 ")
 ;;9040
 ;;21,"30230K1 ")
 ;;9041
 ;;21,"30230L0 ")
 ;;9042
 ;;21,"30230L1 ")
 ;;9043
 ;;21,"30230M0 ")
 ;;9044
 ;;21,"30230M1 ")
 ;;9045
 ;;21,"30230N0 ")
 ;;9046
 ;;21,"30230N1 ")
 ;;9047
 ;;21,"30230P0 ")
 ;;9048
 ;;21,"30230P1 ")
 ;;9049
 ;;21,"30230Q0 ")
 ;;9050
 ;;21,"30230Q1 ")
 ;;9051
 ;;21,"30230R0 ")
 ;;9052
 ;;21,"30230R1 ")
 ;;9053
 ;;21,"30230S0 ")
 ;;9054
 ;;21,"30230S1 ")
 ;;9055
 ;;21,"30230T0 ")
 ;;9056
 ;;21,"30230T1 ")
 ;;9057
 ;;21,"30230V0 ")
 ;;9058
 ;;21,"30230V1 ")
 ;;9059
 ;;21,"30230W0 ")
 ;;9060
 ;;21,"30230W1 ")
 ;;9061
 ;;21,"30233H0 ")
 ;;9062
 ;;21,"30233H1 ")
 ;;9063
 ;;21,"30233J0 ")
 ;;9064
 ;;21,"30233J1 ")
 ;;9065
 ;;21,"30233K0 ")
 ;;9066
 ;;21,"30233K1 ")
 ;;9067
 ;;21,"30233L0 ")
 ;;9068
 ;;21,"30233L1 ")
 ;;9069
 ;;21,"30233M0 ")
 ;;9070
 ;;21,"30233M1 ")
 ;;9071
 ;;21,"30233N0 ")
 ;;9072
 ;;21,"30233N1 ")
 ;;9073
 ;;21,"30233P0 ")
 ;;9074
 ;;21,"30233P1 ")
 ;;9075
 ;;21,"30233Q0 ")
 ;;9076
 ;;21,"30233Q1 ")
 ;;9077
 ;;21,"30233R0 ")
 ;;9078
 ;;21,"30233R1 ")
 ;;9079
 ;;21,"30233S0 ")
 ;;9080
 ;;21,"30233S1 ")
 ;;9081
 ;;21,"30233T0 ")
 ;;9082
 ;;21,"30233T1 ")
 ;;9083
 ;;21,"30233V0 ")
 ;;9084
 ;;21,"30233V1 ")
 ;;9085
 ;;21,"30233W0 ")
 ;;9086
 ;;21,"30233W1 ")
 ;;9087
 ;;21,"30240H0 ")
 ;;9088
 ;;21,"30240H1 ")
 ;;9089
 ;;21,"30240J0 ")
 ;;9090
 ;;21,"30240J1 ")
 ;;9091
 ;;21,"30240K0 ")
 ;;9092
 ;;21,"30240K1 ")
 ;;9093
 ;;21,"30240L0 ")
 ;;9094
 ;;21,"30240L1 ")
 ;;9095
 ;;21,"30240M0 ")
 ;;9096
 ;;21,"30240M1 ")
 ;;9097
 ;;21,"30240N0 ")
 ;;9098
 ;;21,"30240N1 ")
 ;;9099
 ;;21,"30240P0 ")
 ;;9100
 ;;21,"30240P1 ")
 ;;9101
 ;;21,"30240Q0 ")
 ;;9102
 ;;21,"30240Q1 ")
 ;;9103
 ;;21,"30240R0 ")
 ;;9104
 ;;21,"30240R1 ")
 ;;9105
 ;;21,"30240S0 ")
 ;;9106
 ;;21,"30240S1 ")
 ;;9107
 ;;21,"30240T0 ")
 ;;9108
 ;;21,"30240T1 ")
 ;;9109
 ;;21,"30240V0 ")
 ;;9110
 ;;21,"30240V1 ")
 ;;9111
 ;;21,"30240W0 ")
 ;;9112
 ;;21,"30240W1 ")
 ;;9113
 ;;21,"30243H0 ")
 ;;9114
 ;;21,"30243H1 ")
 ;;9115
 ;;21,"30243J0 ")
 ;;9116
 ;;21,"30243J1 ")
 ;;9117
 ;;21,"30243K0 ")
 ;;9118
 ;;21,"30243K1 ")
 ;;9119
 ;;21,"30243L0 ")
 ;;9120
 ;;21,"30243L1 ")
 ;;9121
 ;;21,"30243M0 ")
 ;;9122
 ;;21,"30243M1 ")
 ;;9123
 ;;21,"30243N0 ")
 ;;9124
 ;;21,"30243N1 ")
 ;;9125
 ;;21,"30243P0 ")
 ;;9126
 ;;21,"30243P1 ")
 ;;9127
 ;;21,"30243Q0 ")
 ;;9128
 ;;21,"30243Q1 ")
 ;;9129
 ;;21,"30243R0 ")
 ;;9130
 ;;21,"30243R1 ")
 ;;9131
 ;;21,"30243S0 ")
 ;;9132
 ;;21,"30243S1 ")
 ;;9133
 ;;21,"30243T0 ")
 ;;9134
 ;;21,"30243T1 ")
 ;;9135
 ;;21,"30243V0 ")
 ;;9136