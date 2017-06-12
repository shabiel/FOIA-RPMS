BGP72G4 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"64253-0222-25 ")
 ;;1024
 ;;21,"64253-0222-30 ")
 ;;1025
 ;;21,"64253-0222-33 ")
 ;;1026
 ;;21,"64253-0222-35 ")
 ;;1027
 ;;21,"64253-0222-52 ")
 ;;1028
 ;;21,"64253-0333-21 ")
 ;;1029
 ;;21,"64253-0333-22 ")
 ;;1030
 ;;21,"64253-0333-23 ")
 ;;1031
 ;;21,"64253-0333-25 ")
 ;;1032
 ;;21,"64253-0333-30 ")
 ;;1033
 ;;21,"64253-0333-33 ")
 ;;1034
 ;;21,"64253-0333-35 ")
 ;;1035
 ;;21,"64253-0333-52 ")
 ;;1036
 ;;21,"64253-0444-21 ")
 ;;1037
 ;;21,"64253-0444-22 ")
 ;;1038
 ;;21,"64253-0444-23 ")
 ;;1039
 ;;21,"64253-0444-25 ")
 ;;1040
 ;;21,"64253-0444-30 ")
 ;;1041
 ;;21,"64253-0444-33 ")
 ;;1042
 ;;21,"64253-0444-35 ")
 ;;1043
 ;;21,"64253-0444-52 ")
 ;;1044
 ;;21,"65162-0761-10 ")
 ;;1045
 ;;21,"65162-0761-11 ")
 ;;1046
 ;;21,"65162-0762-10 ")
 ;;1047
 ;;21,"65162-0762-11 ")
 ;;1048
 ;;21,"65162-0763-10 ")
 ;;1049
 ;;21,"65162-0763-11 ")
 ;;1050
 ;;21,"65162-0764-10 ")
 ;;1051
 ;;21,"65162-0764-11 ")
 ;;1052
 ;;21,"65162-0765-10 ")
 ;;1053
 ;;21,"65162-0765-11 ")
 ;;1054
 ;;21,"65162-0766-10 ")
 ;;1055
 ;;21,"65162-0766-11 ")
 ;;1056
 ;;21,"65162-0767-10 ")
 ;;1057
 ;;21,"65162-0767-11 ")
 ;;1058
 ;;21,"65162-0768-10 ")
 ;;1059
 ;;21,"65162-0768-11 ")
 ;;1060
 ;;21,"65162-0769-10 ")
 ;;1061
 ;;21,"65162-0769-11 ")
 ;;1062
 ;;21,"65243-0274-03 ")
 ;;1063
 ;;21,"66105-0110-10 ")
 ;;1064
 ;;21,"66105-0176-10 ")
 ;;1065
 ;;21,"66105-0518-10 ")
 ;;1066
 ;;21,"66105-0519-10 ")
 ;;1067
 ;;21,"66105-0521-10 ")
 ;;1068
 ;;21,"66105-0523-10 ")
 ;;1069
 ;;21,"66116-0469-30 ")
 ;;1070
 ;;21,"66116-0470-30 ")
 ;;1071
 ;;21,"66267-0268-30 ")
 ;;1072
 ;;21,"66267-0285-30 ")
 ;;1073
 ;;21,"66267-0628-00 ")
 ;;1074
 ;;21,"66267-0629-00 ")
 ;;1075
 ;;21,"66267-0630-00 ")
 ;;1076
 ;;21,"66267-0631-00 ")
 ;;1077
 ;;21,"66267-0632-00 ")
 ;;1078
 ;;21,"66267-0633-00 ")
 ;;1079
 ;;21,"66267-0634-00 ")
 ;;1080
 ;;21,"66267-0635-00 ")
 ;;1081
 ;;21,"66267-0636-00 ")
 ;;1082
 ;;21,"67457-0582-00 ")
 ;;1083
 ;;21,"67457-0582-10 ")
 ;;1084
 ;;21,"67457-0583-00 ")
 ;;1085
 ;;21,"67457-0583-04 ")
 ;;1086
 ;;21,"67457-0584-00 ")
 ;;1087
 ;;21,"67457-0584-06 ")
 ;;1088
 ;;21,"67457-0585-00 ")
 ;;1089
 ;;21,"67457-0585-08 ")
 ;;1090
 ;;21,"67457-0592-00 ")
 ;;1091
 ;;21,"67457-0592-10 ")
 ;;1092
 ;;21,"67457-0593-00 ")
 ;;1093
 ;;21,"67457-0593-04 ")
 ;;1094
 ;;21,"67457-0594-00 ")
 ;;1095
 ;;21,"67457-0594-06 ")
 ;;1096
 ;;21,"67457-0595-00 ")
 ;;1097
 ;;21,"67457-0595-08 ")
 ;;1098
 ;;21,"67457-0693-00 ")
 ;;1099
 ;;21,"67457-0693-10 ")
 ;;1100
 ;;21,"67457-0694-00 ")
 ;;1101
 ;;21,"67457-0694-10 ")
 ;;1102
 ;;21,"67457-0695-00 ")
 ;;1103
 ;;21,"67457-0695-10 ")
 ;;1104
 ;;21,"67457-0696-00 ")
 ;;1105
 ;;21,"67457-0696-10 ")
 ;;1106
 ;;21,"67544-0052-15 ")
 ;;1107
 ;;21,"67544-0052-20 ")
 ;;1108
 ;;21,"67544-0052-25 ")
 ;;1109
 ;;21,"67544-0052-28 ")
 ;;1110
 ;;21,"67544-0052-30 ")
 ;;1111
 ;;21,"67544-0052-35 ")
 ;;1112
 ;;21,"67544-0052-38 ")
 ;;1113
 ;;21,"67544-0052-40 ")
 ;;1114
 ;;21,"67544-0052-45 ")
 ;;1115
 ;;21,"67544-0052-50 ")
 ;;1116
 ;;21,"67544-0052-53 ")
 ;;1117
 ;;21,"67544-0052-55 ")
 ;;1118
 ;;21,"67544-0052-57 ")
 ;;1119
 ;;21,"67544-0052-60 ")
 ;;1120
 ;;21,"67544-0052-61 ")
 ;;1121
 ;;21,"67544-0052-65 ")
 ;;1122
 ;;21,"67544-0052-68 ")
 ;;1123
 ;;21,"67544-0052-70 ")
 ;;1124
 ;;21,"67544-0052-78 ")
 ;;1125
 ;;21,"67544-0070-30 ")
 ;;1126
 ;;21,"67544-0194-30 ")
 ;;1127
 ;;21,"67544-0194-60 ")
 ;;1128
 ;;21,"67544-0195-30 ")
 ;;1129
 ;;21,"67544-0195-40 ")
 ;;1130
 ;;21,"67544-0195-45 ")
 ;;1131
 ;;21,"67544-0195-53 ")
 ;;1132
 ;;21,"67544-0195-60 ")
 ;;1133
 ;;21,"67544-0318-15 ")
 ;;1134
 ;;21,"67544-0318-30 ")
 ;;1135
 ;;21,"67544-0318-35 ")
 ;;1136
 ;;21,"67544-0318-40 ")
 ;;1137
 ;;21,"67544-0318-45 ")
 ;;1138
 ;;21,"67544-0318-50 ")
 ;;1139
 ;;21,"67544-0318-53 ")
 ;;1140
 ;;21,"67544-0318-55 ")
 ;;1141
 ;;21,"67544-0318-60 ")
 ;;1142
 ;;21,"67544-0318-61 ")
 ;;1143
 ;;21,"67544-0318-70 ")
 ;;1144
 ;;21,"67544-0401-15 ")
 ;;1145
 ;;21,"67544-0401-30 ")
 ;;1146
 ;;21,"67544-0401-35 ")
 ;;1147
 ;;21,"67544-0401-40 ")
 ;;1148
 ;;21,"67544-0401-45 ")
 ;;1149
 ;;21,"67544-0401-50 ")
 ;;1150
 ;;21,"67544-0401-53 ")
 ;;1151
 ;;21,"67544-0401-55 ")
 ;;1152
 ;;21,"67544-0401-60 ")
 ;;1153
 ;;21,"67544-0401-61 ")
 ;;1154
 ;;21,"67544-0401-70 ")
 ;;1155
 ;;21,"68084-0027-01 ")
 ;;1156
 ;;21,"68084-0027-11 ")
 ;;1157
 ;;21,"68084-0027-77 ")
 ;;1158
 ;;21,"68382-0052-01 ")
 ;;1159
 ;;21,"68382-0052-10 ")
 ;;1160
 ;;21,"68382-0053-01 ")
 ;;1161
 ;;21,"68382-0053-10 ")
 ;;1162
 ;;21,"68382-0054-01 ")
 ;;1163
 ;;21,"68382-0054-10 ")
 ;;1164
 ;;21,"68382-0055-01 ")
 ;;1165
 ;;21,"68382-0055-10 ")
 ;;1166
 ;;21,"68382-0056-01 ")
 ;;1167
 ;;21,"68382-0056-10 ")
 ;;1168
 ;;21,"68382-0056-16 ")
 ;;1169
 ;;21,"68382-0057-01 ")
 ;;1170
 ;;21,"68382-0058-01 ")
 ;;1171
 ;;21,"68382-0059-01 ")
 ;;1172
 ;;21,"68382-0064-01 ")
 ;;1173
 ;;21,"68382-0064-10 ")
 ;;1174
 ;;21,"68883-0010-05 ")
 ;;1175
 ;;21,"68883-0100-03 ")
 ;;1176
 ;;21,"68883-0100-05 ")
 ;;1177
 ;;21,"76282-0327-01 ")
 ;;1178
 ;;21,"76282-0327-10 ")
 ;;1179
 ;;21,"76282-0328-01 ")
 ;;1180
 ;;21,"76282-0328-10 ")
 ;;1181
 ;;21,"76282-0329-01 ")
 ;;1182
 ;;21,"76282-0329-10 ")
 ;;1183
 ;;21,"76282-0330-01 ")
 ;;1184
 ;;21,"76282-0330-10 ")
 ;;1185
 ;;21,"76282-0331-01 ")
 ;;1186
 ;;21,"76282-0331-10 ")
 ;;1187
 ;;21,"76282-0332-01 ")
 ;;1188
 ;;21,"76282-0332-10 ")
 ;;1189
 ;;21,"76282-0333-01 ")
 ;;1190
 ;;21,"76282-0333-10 ")
 ;;1191
 ;;21,"76282-0334-01 ")
 ;;1192
 ;;21,"76282-0335-01 ")
 ;;1193
 ;;9002226,1905,.01)
 ;;BGP PQA WARFARIN NDC
 ;;9002226,1905,.02)
 ;;@
 ;;9002226,1905,.04)
 ;;n
 ;;9002226,1905,.06)
 ;;@
 ;;9002226,1905,.08)
 ;;@
 ;;9002226,1905,.09)
 ;;3160811
 ;;9002226,1905,.11)
 ;;@
 ;;9002226,1905,.12)
 ;;@
 ;;9002226,1905,.13)
 ;;1
 ;;9002226,1905,.14)
 ;;@
 ;;9002226,1905,.15)
 ;;50.67
 ;;9002226,1905,.16)
 ;;@
 ;;9002226,1905,.17)
 ;;@
 ;;9002226,1905,.22)
 ;;1
 ;;9002226,1905,3101)
 ;;@
 ;;9002226.02101,"1905,00007-3230-01 ",.01)
 ;;00007-3230-01
 ;;9002226.02101,"1905,00007-3230-01 ",.02)
 ;;00007-3230-01
 ;;9002226.02101,"1905,00007-3230-11 ",.01)
 ;;00007-3230-11
 ;;9002226.02101,"1905,00007-3230-11 ",.02)
 ;;00007-3230-11
 ;;9002226.02101,"1905,00007-3232-01 ",.01)
 ;;00007-3232-01
 ;;9002226.02101,"1905,00007-3232-01 ",.02)
 ;;00007-3232-01
 ;;9002226.02101,"1905,00007-3232-02 ",.01)
 ;;00007-3232-02
 ;;9002226.02101,"1905,00007-3232-02 ",.02)
 ;;00007-3232-02
 ;;9002226.02101,"1905,00007-3232-11 ",.01)
 ;;00007-3232-11
 ;;9002226.02101,"1905,00007-3232-11 ",.02)
 ;;00007-3232-11
 ;;9002226.02101,"1905,00007-3234-01 ",.01)
 ;;00007-3234-01
 ;;9002226.02101,"1905,00007-3234-01 ",.02)
 ;;00007-3234-01
 ;;9002226.02101,"1905,00007-3234-02 ",.01)
 ;;00007-3234-02
 ;;9002226.02101,"1905,00007-3234-02 ",.02)
 ;;00007-3234-02
 ;;9002226.02101,"1905,00007-3234-11 ",.01)
 ;;00007-3234-11
 ;;9002226.02101,"1905,00007-3234-11 ",.02)
 ;;00007-3234-11
 ;;9002226.02101,"1905,00007-3236-01 ",.01)
 ;;00007-3236-01
 ;;9002226.02101,"1905,00007-3236-01 ",.02)
 ;;00007-3236-01
 ;;9002226.02101,"1905,00007-3236-11 ",.01)
 ;;00007-3236-11
 ;;9002226.02101,"1905,00007-3236-11 ",.02)
 ;;00007-3236-11
 ;;9002226.02101,"1905,00056-0168-01 ",.01)
 ;;00056-0168-01
 ;;9002226.02101,"1905,00056-0168-01 ",.02)
 ;;00056-0168-01
 ;;9002226.02101,"1905,00056-0168-70 ",.01)
 ;;00056-0168-70
 ;;9002226.02101,"1905,00056-0168-70 ",.02)
 ;;00056-0168-70
 ;;9002226.02101,"1905,00056-0168-75 ",.01)
 ;;00056-0168-75
 ;;9002226.02101,"1905,00056-0168-75 ",.02)
 ;;00056-0168-75
 ;;9002226.02101,"1905,00056-0169-01 ",.01)
 ;;00056-0169-01
 ;;9002226.02101,"1905,00056-0169-01 ",.02)
 ;;00056-0169-01
 ;;9002226.02101,"1905,00056-0169-70 ",.01)
 ;;00056-0169-70
 ;;9002226.02101,"1905,00056-0169-70 ",.02)
 ;;00056-0169-70
 ;;9002226.02101,"1905,00056-0169-75 ",.01)
 ;;00056-0169-75
 ;;9002226.02101,"1905,00056-0169-75 ",.02)
 ;;00056-0169-75
 ;;9002226.02101,"1905,00056-0169-90 ",.01)
 ;;00056-0169-90
 ;;9002226.02101,"1905,00056-0169-90 ",.02)
 ;;00056-0169-90
 ;;9002226.02101,"1905,00056-0170-01 ",.01)
 ;;00056-0170-01
 ;;9002226.02101,"1905,00056-0170-01 ",.02)
 ;;00056-0170-01
 ;;9002226.02101,"1905,00056-0170-70 ",.01)
 ;;00056-0170-70
 ;;9002226.02101,"1905,00056-0170-70 ",.02)
 ;;00056-0170-70
 ;;9002226.02101,"1905,00056-0170-75 ",.01)
 ;;00056-0170-75
 ;;9002226.02101,"1905,00056-0170-75 ",.02)
 ;;00056-0170-75
 ;;9002226.02101,"1905,00056-0170-90 ",.01)
 ;;00056-0170-90
 ;;9002226.02101,"1905,00056-0170-90 ",.02)
 ;;00056-0170-90
 ;;9002226.02101,"1905,00056-0172-01 ",.01)
 ;;00056-0172-01
 ;;9002226.02101,"1905,00056-0172-01 ",.02)
 ;;00056-0172-01
 ;;9002226.02101,"1905,00056-0172-70 ",.01)
 ;;00056-0172-70
 ;;9002226.02101,"1905,00056-0172-70 ",.02)
 ;;00056-0172-70
 ;;9002226.02101,"1905,00056-0172-75 ",.01)
 ;;00056-0172-75
 ;;9002226.02101,"1905,00056-0172-75 ",.02)
 ;;00056-0172-75
 ;;9002226.02101,"1905,00056-0172-90 ",.01)
 ;;00056-0172-90
 ;;9002226.02101,"1905,00056-0172-90 ",.02)
 ;;00056-0172-90
 ;;9002226.02101,"1905,00056-0173-01 ",.01)
 ;;00056-0173-01
 ;;9002226.02101,"1905,00056-0173-01 ",.02)
 ;;00056-0173-01
 ;;9002226.02101,"1905,00056-0173-70 ",.01)
 ;;00056-0173-70
 ;;9002226.02101,"1905,00056-0173-70 ",.02)
 ;;00056-0173-70
 ;;9002226.02101,"1905,00056-0173-75 ",.01)
 ;;00056-0173-75
 ;;9002226.02101,"1905,00056-0173-75 ",.02)
 ;;00056-0173-75
 ;;9002226.02101,"1905,00056-0174-01 ",.01)
 ;;00056-0174-01
 ;;9002226.02101,"1905,00056-0174-01 ",.02)
 ;;00056-0174-01
 ;;9002226.02101,"1905,00056-0174-70 ",.01)
 ;;00056-0174-70
 ;;9002226.02101,"1905,00056-0174-70 ",.02)
 ;;00056-0174-70
 ;;9002226.02101,"1905,00056-0174-75 ",.01)
 ;;00056-0174-75
 ;;9002226.02101,"1905,00056-0174-75 ",.02)
 ;;00056-0174-75
 ;;9002226.02101,"1905,00056-0176-01 ",.01)
 ;;00056-0176-01
 ;;9002226.02101,"1905,00056-0176-01 ",.02)
 ;;00056-0176-01
 ;;9002226.02101,"1905,00056-0176-70 ",.01)
 ;;00056-0176-70
 ;;9002226.02101,"1905,00056-0176-70 ",.02)
 ;;00056-0176-70
 ;;9002226.02101,"1905,00056-0176-75 ",.01)
 ;;00056-0176-75
 ;;9002226.02101,"1905,00056-0176-75 ",.02)
 ;;00056-0176-75
 ;;9002226.02101,"1905,00056-0176-90 ",.01)
 ;;00056-0176-90
 ;;9002226.02101,"1905,00056-0176-90 ",.02)
 ;;00056-0176-90
 ;;9002226.02101,"1905,00056-0188-01 ",.01)
 ;;00056-0188-01
 ;;9002226.02101,"1905,00056-0188-01 ",.02)
 ;;00056-0188-01
 ;;9002226.02101,"1905,00056-0188-70 ",.01)
 ;;00056-0188-70
 ;;9002226.02101,"1905,00056-0188-70 ",.02)
 ;;00056-0188-70
 ;;9002226.02101,"1905,00056-0188-75 ",.01)
 ;;00056-0188-75
 ;;9002226.02101,"1905,00056-0188-75 ",.02)
 ;;00056-0188-75
 ;;9002226.02101,"1905,00056-0189-01 ",.01)
 ;;00056-0189-01
 ;;9002226.02101,"1905,00056-0189-01 ",.02)
 ;;00056-0189-01
 ;;9002226.02101,"1905,00056-0189-70 ",.01)
 ;;00056-0189-70
 ;;9002226.02101,"1905,00056-0189-70 ",.02)
 ;;00056-0189-70
 ;;9002226.02101,"1905,00056-0189-75 ",.01)
 ;;00056-0189-75
 ;;9002226.02101,"1905,00056-0189-75 ",.02)
 ;;00056-0189-75
 ;;9002226.02101,"1905,00056-0189-90 ",.01)
 ;;00056-0189-90
 ;;9002226.02101,"1905,00056-0189-90 ",.02)
 ;;00056-0189-90
 ;;9002226.02101,"1905,00069-0043-01 ",.01)
 ;;00069-0043-01