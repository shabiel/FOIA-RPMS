ATXXA24 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"T24.409A ")
 ;;8860
 ;;21,"T24.411A ")
 ;;8861
 ;;21,"T24.412A ")
 ;;8862
 ;;21,"T24.419A ")
 ;;8863
 ;;21,"T24.421A ")
 ;;8864
 ;;21,"T24.422A ")
 ;;8865
 ;;21,"T24.429A ")
 ;;8866
 ;;21,"T24.431A ")
 ;;8867
 ;;21,"T24.432A ")
 ;;8868
 ;;21,"T24.439A ")
 ;;8869
 ;;21,"T24.491A ")
 ;;8870
 ;;21,"T24.492A ")
 ;;8871
 ;;21,"T24.499A ")
 ;;8872
 ;;21,"T24.501A ")
 ;;8873
 ;;21,"T24.502A ")
 ;;8874
 ;;21,"T24.509A ")
 ;;8875
 ;;21,"T24.511A ")
 ;;8876
 ;;21,"T24.512A ")
 ;;8877
 ;;21,"T24.519A ")
 ;;8878
 ;;21,"T24.521A ")
 ;;8879
 ;;21,"T24.522A ")
 ;;8880
 ;;21,"T24.529A ")
 ;;8881
 ;;21,"T24.531A ")
 ;;8882
 ;;21,"T24.532A ")
 ;;8883
 ;;21,"T24.539A ")
 ;;8884
 ;;21,"T24.591A ")
 ;;8885
 ;;21,"T24.592A ")
 ;;8886
 ;;21,"T24.599A ")
 ;;8887
 ;;21,"T24.601A ")
 ;;8888
 ;;21,"T24.602A ")
 ;;8889
 ;;21,"T24.609A ")
 ;;8890
 ;;21,"T24.611A ")
 ;;8891
 ;;21,"T24.612A ")
 ;;8892
 ;;21,"T24.619A ")
 ;;8893
 ;;21,"T24.621A ")
 ;;8894
 ;;21,"T24.622A ")
 ;;8895
 ;;21,"T24.629A ")
 ;;8896
 ;;21,"T24.631A ")
 ;;8897
 ;;21,"T24.632A ")
 ;;8898
 ;;21,"T24.639A ")
 ;;8899
 ;;21,"T24.691A ")
 ;;8900
 ;;21,"T24.692A ")
 ;;8901
 ;;21,"T24.699A ")
 ;;8902
 ;;21,"T24.701A ")
 ;;8903
 ;;21,"T24.702A ")
 ;;8904
 ;;21,"T24.709A ")
 ;;8905
 ;;21,"T24.711A ")
 ;;8906
 ;;21,"T24.712A ")
 ;;8907
 ;;21,"T24.719A ")
 ;;8908
 ;;21,"T24.721A ")
 ;;8909
 ;;21,"T24.722A ")
 ;;8910
 ;;21,"T24.729A ")
 ;;8911
 ;;21,"T24.731A ")
 ;;8912
 ;;21,"T24.732A ")
 ;;8913
 ;;21,"T24.739A ")
 ;;8914
 ;;21,"T24.791A ")
 ;;8915
 ;;21,"T24.792A ")
 ;;8916
 ;;21,"T24.799A ")
 ;;8917
 ;;21,"T25.011A ")
 ;;8918
 ;;21,"T25.012A ")
 ;;8919
 ;;21,"T25.019A ")
 ;;8920
 ;;21,"T25.021A ")
 ;;8921
 ;;21,"T25.022A ")
 ;;8922
 ;;21,"T25.029A ")
 ;;8923
 ;;21,"T25.031A ")
 ;;8924
 ;;21,"T25.032A ")
 ;;8925
 ;;21,"T25.039A ")
 ;;8926
 ;;21,"T25.091A ")
 ;;8927
 ;;21,"T25.092A ")
 ;;8928
 ;;21,"T25.099A ")
 ;;8929
 ;;21,"T25.111A ")
 ;;8930
 ;;21,"T25.112A ")
 ;;8931
 ;;21,"T25.119A ")
 ;;8932
 ;;21,"T25.121A ")
 ;;8933
 ;;21,"T25.122A ")
 ;;8934
 ;;21,"T25.129A ")
 ;;8935
 ;;21,"T25.131A ")
 ;;8936
 ;;21,"T25.132A ")
 ;;8937
 ;;21,"T25.139A ")
 ;;8938
 ;;21,"T25.191A ")
 ;;8939
 ;;21,"T25.192A ")
 ;;8940
 ;;21,"T25.199A ")
 ;;8941
 ;;21,"T25.211A ")
 ;;8942
 ;;21,"T25.212A ")
 ;;8943
 ;;21,"T25.219A ")
 ;;8944
 ;;21,"T25.221A ")
 ;;8945
 ;;21,"T25.222A ")
 ;;8946
 ;;21,"T25.229A ")
 ;;8947
 ;;21,"T25.231A ")
 ;;8948
 ;;21,"T25.232A ")
 ;;8949
 ;;21,"T25.239A ")
 ;;8950
 ;;21,"T25.291A ")
 ;;8951
 ;;21,"T25.292A ")
 ;;8952
 ;;21,"T25.299A ")
 ;;8953
 ;;21,"T25.311A ")
 ;;8954
 ;;21,"T25.312A ")
 ;;8955
 ;;21,"T25.319A ")
 ;;8956
 ;;21,"T25.321A ")
 ;;8957
 ;;21,"T25.322A ")
 ;;8958
 ;;21,"T25.329A ")
 ;;8959
 ;;21,"T25.331A ")
 ;;8960
 ;;21,"T25.332A ")
 ;;8961
 ;;21,"T25.339A ")
 ;;8962
 ;;21,"T25.391A ")
 ;;8963
 ;;21,"T25.392A ")
 ;;8964
 ;;21,"T25.399A ")
 ;;8965
 ;;21,"T25.411A ")
 ;;8966
 ;;21,"T25.412A ")
 ;;8967
 ;;21,"T25.419A ")
 ;;8968
 ;;21,"T25.421A ")
 ;;8969
 ;;21,"T25.422A ")
 ;;8970
 ;;21,"T25.429A ")
 ;;8971
 ;;21,"T25.431A ")
 ;;8972
 ;;21,"T25.432A ")
 ;;8973
 ;;21,"T25.439A ")
 ;;8974
 ;;21,"T25.491A ")
 ;;8975
 ;;21,"T25.492A ")
 ;;8976
 ;;21,"T25.499A ")
 ;;8977
 ;;21,"T25.511A ")
 ;;8978
 ;;21,"T25.512A ")
 ;;8979
 ;;21,"T25.519A ")
 ;;8980
 ;;21,"T25.521A ")
 ;;8981
 ;;21,"T25.522A ")
 ;;8982
 ;;21,"T25.529A ")
 ;;8983
 ;;21,"T25.531A ")
 ;;8984
 ;;21,"T25.532A ")
 ;;8985
 ;;21,"T25.539A ")
 ;;8986
 ;;21,"T25.591A ")
 ;;8987
 ;;21,"T25.592A ")
 ;;8988
 ;;21,"T25.599A ")
 ;;8989
 ;;21,"T25.611A ")
 ;;8990
 ;;21,"T25.612A ")
 ;;8991
 ;;21,"T25.619A ")
 ;;8992
 ;;21,"T25.621A ")
 ;;8993
 ;;21,"T25.622A ")
 ;;8994
 ;;21,"T25.629A ")
 ;;8995
 ;;21,"T25.631A ")
 ;;8996
 ;;21,"T25.632A ")
 ;;8997
 ;;21,"T25.639A ")
 ;;8998
 ;;21,"T25.691A ")
 ;;8999
 ;;21,"T25.692A ")
 ;;9000
 ;;21,"T25.699A ")
 ;;9001
 ;;21,"T25.711A ")
 ;;9002
 ;;21,"T25.712A ")
 ;;9003
 ;;21,"T25.719A ")
 ;;9004
 ;;21,"T25.721A ")
 ;;9005
 ;;21,"T25.722A ")
 ;;9006
 ;;21,"T25.729A ")
 ;;9007
 ;;21,"T25.731A ")
 ;;9008
 ;;21,"T25.732A ")
 ;;9009
 ;;21,"T25.739A ")
 ;;9010
 ;;21,"T25.791A ")
 ;;9011
 ;;21,"T25.792A ")
 ;;9012
 ;;21,"T25.799A ")
 ;;9013
 ;;21,"T26.00XA ")
 ;;9014
 ;;21,"T26.01XA ")
 ;;9015
 ;;21,"T26.02XA ")
 ;;9016
 ;;21,"T26.10XA ")
 ;;9017
 ;;21,"T26.11XA ")
 ;;9018
 ;;21,"T26.12XA ")
 ;;9019
 ;;21,"T26.20XA ")
 ;;9020
 ;;21,"T26.21XA ")
 ;;9021
 ;;21,"T26.22XA ")
 ;;9022
 ;;21,"T26.30XA ")
 ;;9023
 ;;21,"T26.31XA ")
 ;;9024
 ;;21,"T26.32XA ")
 ;;9025
 ;;21,"T26.40XA ")
 ;;9026
 ;;21,"T26.41XA ")
 ;;9027
 ;;21,"T26.42XA ")
 ;;9028
 ;;21,"T26.50XA ")
 ;;9029
 ;;21,"T26.51XA ")
 ;;9030
 ;;21,"T26.52XA ")
 ;;9031
 ;;21,"T26.60XA ")
 ;;9032
 ;;21,"T26.61XA ")
 ;;9033
 ;;21,"T26.62XA ")
 ;;9034
 ;;21,"T26.70XA ")
 ;;9035
 ;;21,"T26.71XA ")
 ;;9036
 ;;21,"T26.72XA ")
 ;;9037
 ;;21,"T26.80XA ")
 ;;9038
 ;;21,"T26.81XA ")
 ;;9039
 ;;21,"T26.82XA ")
 ;;9040
 ;;21,"T26.90XA ")
 ;;9041
 ;;21,"T26.91XA ")
 ;;9042
 ;;21,"T26.92XA ")
 ;;9043
 ;;21,"T27.0XXA ")
 ;;9044
 ;;21,"T27.1XXA ")
 ;;9045
 ;;21,"T27.2XXA ")
 ;;9046
 ;;21,"T27.3XXA ")
 ;;9047
 ;;21,"T27.4XXA ")
 ;;9048
 ;;21,"T27.5XXA ")
 ;;9049
 ;;21,"T27.6XXA ")
 ;;9050
 ;;21,"T27.7XXA ")
 ;;9051
 ;;21,"T28.0XXA ")
 ;;9052
 ;;21,"T28.1XXA ")
 ;;9053
 ;;21,"T28.2XXA ")
 ;;9054
 ;;21,"T28.3XXA ")
 ;;9055
 ;;21,"T28.40XA ")
 ;;9056
 ;;21,"T28.411A ")
 ;;9057
 ;;21,"T28.412A ")
 ;;9058
 ;;21,"T28.419A ")
 ;;9059
 ;;21,"T28.49XA ")
 ;;9060
 ;;21,"T28.5XXA ")
 ;;9061
 ;;21,"T28.6XXA ")
 ;;9062
 ;;21,"T28.7XXA ")
 ;;9063
 ;;21,"T28.8XXA ")
 ;;9064
 ;;21,"T28.90XA ")
 ;;9065
 ;;21,"T28.911A ")
 ;;9066
 ;;21,"T28.912A ")
 ;;9067
 ;;21,"T28.919A ")
 ;;9068
 ;;21,"T28.99XA ")
 ;;9069
 ;;21,"T30.0 ")
 ;;9070
 ;;21,"T30.4 ")
 ;;9071
 ;;21,"T31.0 ")
 ;;9072
 ;;21,"T31.10 ")
 ;;9073
 ;;21,"T31.11 ")
 ;;9074
 ;;21,"T31.20 ")
 ;;9075
 ;;21,"T31.21 ")
 ;;9076
 ;;21,"T31.22 ")
 ;;9077
 ;;21,"T31.30 ")
 ;;9078
 ;;21,"T31.31 ")
 ;;9079
 ;;21,"T31.32 ")
 ;;9080
 ;;21,"T31.33 ")
 ;;9081
 ;;21,"T31.40 ")
 ;;9082
 ;;21,"T31.41 ")
 ;;9083
 ;;21,"T31.42 ")
 ;;9084
 ;;21,"T31.43 ")
 ;;9085
 ;;21,"T31.44 ")
 ;;9086
 ;;21,"T31.50 ")
 ;;9087
 ;;21,"T31.51 ")
 ;;9088
 ;;21,"T31.52 ")
 ;;9089
 ;;21,"T31.53 ")
 ;;9090
 ;;21,"T31.54 ")
 ;;9091
 ;;21,"T31.55 ")
 ;;9092
 ;;21,"T31.60 ")
 ;;9093
 ;;21,"T31.61 ")
 ;;9094
 ;;21,"T31.62 ")
 ;;9095
 ;;21,"T31.63 ")
 ;;9096
 ;;21,"T31.64 ")
 ;;9097
 ;;21,"T31.65 ")
 ;;9098
 ;;21,"T31.66 ")
 ;;9099
 ;;21,"T31.70 ")
 ;;9100
 ;;21,"T31.71 ")
 ;;9101
 ;;21,"T31.72 ")
 ;;9102
 ;;21,"T31.73 ")
 ;;9103
 ;;21,"T31.74 ")
 ;;9104
 ;;21,"T31.75 ")
 ;;9105
 ;;21,"T31.76 ")
 ;;9106
 ;;21,"T31.77 ")
 ;;9107
 ;;21,"T31.80 ")
 ;;9108
 ;;21,"T31.81 ")
 ;;9109
 ;;21,"T31.82 ")
 ;;9110
 ;;21,"T31.83 ")
 ;;9111
 ;;21,"T31.84 ")
 ;;9112
 ;;21,"T31.85 ")
 ;;9113
 ;;21,"T31.86 ")
 ;;9114
 ;;21,"T31.87 ")
 ;;9115
 ;;21,"T31.88 ")
 ;;9116
 ;;21,"T31.90 ")
 ;;9117
 ;;21,"T31.91 ")
 ;;9118
 ;;21,"T31.92 ")
 ;;9119
 ;;21,"T31.93 ")
 ;;9120
 ;;21,"T31.94 ")
 ;;9121
 ;;21,"T31.95 ")
 ;;9122
 ;;21,"T31.96 ")
 ;;9123
 ;;21,"T31.97 ")
 ;;9124
 ;;21,"T31.98 ")
 ;;9125
 ;;21,"T31.99 ")
 ;;9126
 ;;21,"T32.0 ")
 ;;9127
 ;;21,"T32.10 ")
 ;;9128
 ;;21,"T32.11 ")
 ;;9129
 ;;21,"T32.20 ")
 ;;9130
 ;;21,"T32.21 ")
 ;;9131
 ;;21,"T32.22 ")
 ;;9132
 ;;21,"T32.30 ")
 ;;9133
 ;;21,"T32.31 ")
 ;;9134
 ;;21,"T32.32 ")
 ;;9135
 ;;21,"T32.33 ")
 ;;9136
 ;;21,"T32.40 ")
 ;;9137
 ;;21,"T32.41 ")
 ;;9138
 ;;21,"T32.42 ")
 ;;9139
 ;;21,"T32.43 ")
 ;;9140
 ;;21,"T32.44 ")
 ;;9141
 ;;21,"T32.50 ")
 ;;9142
 ;;21,"T32.51 ")
 ;;9143
 ;;21,"T32.52 ")
 ;;9144
 ;;21,"T32.53 ")
 ;;9145
 ;;21,"T32.54 ")
 ;;9146
 ;;21,"T32.55 ")
 ;;9147
 ;;21,"T32.60 ")
 ;;9148
 ;;21,"T32.61 ")
 ;;9149
 ;;21,"T32.62 ")
 ;;9150
 ;;21,"T32.63 ")
 ;;9151
 ;;21,"T32.64 ")
 ;;9152
 ;;21,"T32.65 ")
 ;;9153
 ;;21,"T32.66 ")
 ;;9154
 ;;21,"T32.70 ")
 ;;9155
 ;;21,"T32.71 ")
 ;;9156
 ;;21,"T32.72 ")
 ;;9157
 ;;21,"T32.73 ")
 ;;9158
 ;;21,"T32.74 ")
 ;;9159
 ;;21,"T32.75 ")
 ;;9160
 ;;21,"T32.76 ")
 ;;9161
 ;;21,"T32.77 ")
 ;;9162
 ;;21,"T32.80 ")
 ;;9163
 ;;21,"T32.81 ")
 ;;9164
 ;;21,"T32.82 ")
 ;;9165
 ;;21,"T32.83 ")
 ;;9166
 ;;21,"T32.84 ")
 ;;9167
 ;;21,"T32.85 ")
 ;;9168
 ;;21,"T32.86 ")
 ;;9169
 ;;21,"T32.87 ")
 ;;9170
 ;;21,"T32.88 ")
 ;;9171
 ;;21,"T32.90 ")
 ;;9172
 ;;21,"T32.91 ")
 ;;9173
 ;;21,"T32.92 ")
 ;;9174
 ;;21,"T32.93 ")
 ;;9175
 ;;21,"T32.94 ")
 ;;9176
 ;;21,"T32.95 ")
 ;;9177
 ;;21,"T32.96 ")
 ;;9178
 ;;21,"T32.97 ")
 ;;9179
 ;;21,"T32.98 ")
 ;;9180
 ;;21,"T32.99 ")
 ;;9181
 ;;21,"T33.011A ")
 ;;9182
 ;;21,"T33.012A ")
 ;;9183
 ;;21,"T33.019A ")
 ;;9184
 ;;21,"T33.02XA ")
 ;;9185
 ;;21,"T33.09XA ")
 ;;9186
 ;;21,"T33.1XXA ")
 ;;9187
 ;;21,"T33.2XXA ")
 ;;9188
 ;;21,"T33.3XXA ")
 ;;9189
 ;;21,"T33.40XA ")
 ;;9190
 ;;21,"T33.41XA ")
 ;;9191
 ;;21,"T33.42XA ")
 ;;9192
 ;;21,"T33.511A ")
 ;;9193
 ;;21,"T33.512A ")
 ;;9194
 ;;21,"T33.519A ")
 ;;9195
 ;;21,"T33.521A ")
 ;;9196
 ;;21,"T33.522A ")
 ;;9197
 ;;21,"T33.529A ")
 ;;9198
 ;;21,"T33.531A ")
 ;;9199
 ;;21,"T33.532A ")
 ;;9200
 ;;21,"T33.539A ")
 ;;9201
 ;;21,"T33.60XA ")
 ;;9202
 ;;21,"T33.61XA ")
 ;;9203
 ;;21,"T33.62XA ")
 ;;9204
 ;;21,"T33.70XA ")
 ;;9205
 ;;21,"T33.71XA ")
 ;;9206
 ;;21,"T33.72XA ")
 ;;9207
 ;;21,"T33.811A ")
 ;;9208
 ;;21,"T33.812A ")
 ;;9209
 ;;21,"T33.819A ")
 ;;9210
 ;;21,"T33.821A ")
 ;;9211
 ;;21,"T33.822A ")
 ;;9212
 ;;21,"T33.829A ")
 ;;9213
 ;;21,"T33.831A ")
 ;;9214
 ;;21,"T33.832A ")
 ;;9215
 ;;21,"T33.839A ")
 ;;9216
 ;;21,"T33.90XA ")
 ;;9217
 ;;21,"T33.99XA ")
 ;;9218
 ;;21,"T34.011A ")
 ;;9219
 ;;21,"T34.012A ")
 ;;9220
 ;;21,"T34.019A ")
 ;;9221
 ;;21,"T34.02XA ")
 ;;9222
 ;;21,"T34.09XA ")
 ;;9223
 ;;21,"T34.1XXA ")
 ;;9224
 ;;21,"T34.2XXA ")
 ;;9225
 ;;21,"T34.3XXA ")
 ;;9226
 ;;21,"T34.40XA ")
 ;;9227
 ;;21,"T34.41XA ")
 ;;9228
 ;;21,"T34.42XA ")
 ;;9229
 ;;21,"T34.511A ")
 ;;9230
 ;;21,"T34.512A ")
 ;;9231
 ;;21,"T34.519A ")
 ;;9232
 ;;21,"T34.521A ")
 ;;9233
 ;;21,"T34.522A ")
 ;;9234
 ;;21,"T34.529A ")
 ;;9235
 ;;21,"T34.531A ")
 ;;9236
 ;;21,"T34.532A ")
 ;;9237
 ;;21,"T34.539A ")
 ;;9238
 ;;21,"T34.60XA ")
 ;;9239
 ;;21,"T34.61XA ")
 ;;9240
 ;;21,"T34.62XA ")
 ;;9241
 ;;21,"T34.70XA ")
 ;;9242
 ;;21,"T34.71XA ")
 ;;9243
 ;;21,"T34.72XA ")
 ;;9244
 ;;21,"T34.811A ")
 ;;9245
 ;;21,"T34.812A ")
 ;;9246
 ;;21,"T34.819A ")
 ;;9247
 ;;21,"T34.821A ")
 ;;9248
 ;;21,"T34.822A ")
 ;;9249
 ;;21,"T34.829A ")
 ;;9250