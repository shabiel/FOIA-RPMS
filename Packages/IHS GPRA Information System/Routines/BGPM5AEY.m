BGPM5AEY ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON JUL 15, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"881,58016058030 ",.01)
 ;;58016058030
 ;;9002226.02101,"881,58016058030 ",.02)
 ;;58016058030
 ;;9002226.02101,"881,58016058032 ",.01)
 ;;58016058032
 ;;9002226.02101,"881,58016058032 ",.02)
 ;;58016058032
 ;;9002226.02101,"881,58016058035 ",.01)
 ;;58016058035
 ;;9002226.02101,"881,58016058035 ",.02)
 ;;58016058035
 ;;9002226.02101,"881,58016058036 ",.01)
 ;;58016058036
 ;;9002226.02101,"881,58016058036 ",.02)
 ;;58016058036
 ;;9002226.02101,"881,58016058040 ",.01)
 ;;58016058040
 ;;9002226.02101,"881,58016058040 ",.02)
 ;;58016058040
 ;;9002226.02101,"881,58016058042 ",.01)
 ;;58016058042
 ;;9002226.02101,"881,58016058042 ",.02)
 ;;58016058042
 ;;9002226.02101,"881,58016058044 ",.01)
 ;;58016058044
 ;;9002226.02101,"881,58016058044 ",.02)
 ;;58016058044
 ;;9002226.02101,"881,58016058045 ",.01)
 ;;58016058045
 ;;9002226.02101,"881,58016058045 ",.02)
 ;;58016058045
 ;;9002226.02101,"881,58016058048 ",.01)
 ;;58016058048
 ;;9002226.02101,"881,58016058048 ",.02)
 ;;58016058048
 ;;9002226.02101,"881,58016058050 ",.01)
 ;;58016058050
 ;;9002226.02101,"881,58016058050 ",.02)
 ;;58016058050
 ;;9002226.02101,"881,58016058056 ",.01)
 ;;58016058056
 ;;9002226.02101,"881,58016058056 ",.02)
 ;;58016058056
 ;;9002226.02101,"881,58016058060 ",.01)
 ;;58016058060
 ;;9002226.02101,"881,58016058060 ",.02)
 ;;58016058060
 ;;9002226.02101,"881,58016058067 ",.01)
 ;;58016058067
 ;;9002226.02101,"881,58016058067 ",.02)
 ;;58016058067
 ;;9002226.02101,"881,58016058069 ",.01)
 ;;58016058069
 ;;9002226.02101,"881,58016058069 ",.02)
 ;;58016058069
 ;;9002226.02101,"881,58016058070 ",.01)
 ;;58016058070
 ;;9002226.02101,"881,58016058070 ",.02)
 ;;58016058070
 ;;9002226.02101,"881,58016058071 ",.01)
 ;;58016058071
 ;;9002226.02101,"881,58016058071 ",.02)
 ;;58016058071
 ;;9002226.02101,"881,58016058072 ",.01)
 ;;58016058072
 ;;9002226.02101,"881,58016058072 ",.02)
 ;;58016058072
 ;;9002226.02101,"881,58016058073 ",.01)
 ;;58016058073
 ;;9002226.02101,"881,58016058073 ",.02)
 ;;58016058073
 ;;9002226.02101,"881,58016058075 ",.01)
 ;;58016058075
 ;;9002226.02101,"881,58016058075 ",.02)
 ;;58016058075
 ;;9002226.02101,"881,58016058076 ",.01)
 ;;58016058076
 ;;9002226.02101,"881,58016058076 ",.02)
 ;;58016058076
 ;;9002226.02101,"881,58016058077 ",.01)
 ;;58016058077
 ;;9002226.02101,"881,58016058077 ",.02)
 ;;58016058077
 ;;9002226.02101,"881,58016058079 ",.01)
 ;;58016058079
 ;;9002226.02101,"881,58016058079 ",.02)
 ;;58016058079
 ;;9002226.02101,"881,58016058080 ",.01)
 ;;58016058080
 ;;9002226.02101,"881,58016058080 ",.02)
 ;;58016058080
 ;;9002226.02101,"881,58016058081 ",.01)
 ;;58016058081
 ;;9002226.02101,"881,58016058081 ",.02)
 ;;58016058081
 ;;9002226.02101,"881,58016058082 ",.01)
 ;;58016058082
 ;;9002226.02101,"881,58016058082 ",.02)
 ;;58016058082
 ;;9002226.02101,"881,58016058083 ",.01)
 ;;58016058083
 ;;9002226.02101,"881,58016058083 ",.02)
 ;;58016058083
 ;;9002226.02101,"881,58016058084 ",.01)
 ;;58016058084
 ;;9002226.02101,"881,58016058084 ",.02)
 ;;58016058084
 ;;9002226.02101,"881,58016058087 ",.01)
 ;;58016058087
 ;;9002226.02101,"881,58016058087 ",.02)
 ;;58016058087
 ;;9002226.02101,"881,58016058089 ",.01)
 ;;58016058089
 ;;9002226.02101,"881,58016058089 ",.02)
 ;;58016058089
 ;;9002226.02101,"881,58016058090 ",.01)
 ;;58016058090
 ;;9002226.02101,"881,58016058090 ",.02)
 ;;58016058090
 ;;9002226.02101,"881,58016058091 ",.01)
 ;;58016058091
 ;;9002226.02101,"881,58016058091 ",.02)
 ;;58016058091
 ;;9002226.02101,"881,58016058092 ",.01)
 ;;58016058092
 ;;9002226.02101,"881,58016058092 ",.02)
 ;;58016058092
 ;;9002226.02101,"881,58016058093 ",.01)
 ;;58016058093
 ;;9002226.02101,"881,58016058093 ",.02)
 ;;58016058093
 ;;9002226.02101,"881,58016058096 ",.01)
 ;;58016058096
 ;;9002226.02101,"881,58016058096 ",.02)
 ;;58016058096
 ;;9002226.02101,"881,58016058097 ",.01)
 ;;58016058097
 ;;9002226.02101,"881,58016058097 ",.02)
 ;;58016058097
 ;;9002226.02101,"881,58016058098 ",.01)
 ;;58016058098
 ;;9002226.02101,"881,58016058098 ",.02)
 ;;58016058098
 ;;9002226.02101,"881,58016058099 ",.01)
 ;;58016058099
 ;;9002226.02101,"881,58016058099 ",.02)
 ;;58016058099
 ;;9002226.02101,"881,58016058100 ",.01)
 ;;58016058100
 ;;9002226.02101,"881,58016058100 ",.02)
 ;;58016058100
 ;;9002226.02101,"881,58016058101 ",.01)
 ;;58016058101
 ;;9002226.02101,"881,58016058101 ",.02)
 ;;58016058101
 ;;9002226.02101,"881,58016058102 ",.01)
 ;;58016058102
 ;;9002226.02101,"881,58016058102 ",.02)
 ;;58016058102
 ;;9002226.02101,"881,58016058103 ",.01)
 ;;58016058103
 ;;9002226.02101,"881,58016058103 ",.02)
 ;;58016058103
 ;;9002226.02101,"881,58016058104 ",.01)
 ;;58016058104
 ;;9002226.02101,"881,58016058104 ",.02)
 ;;58016058104
 ;;9002226.02101,"881,58016058105 ",.01)
 ;;58016058105
 ;;9002226.02101,"881,58016058105 ",.02)
 ;;58016058105
 ;;9002226.02101,"881,58016058106 ",.01)
 ;;58016058106
 ;;9002226.02101,"881,58016058106 ",.02)
 ;;58016058106
 ;;9002226.02101,"881,58016058107 ",.01)
 ;;58016058107
 ;;9002226.02101,"881,58016058107 ",.02)
 ;;58016058107
 ;;9002226.02101,"881,58016058108 ",.01)
 ;;58016058108
 ;;9002226.02101,"881,58016058108 ",.02)
 ;;58016058108
 ;;9002226.02101,"881,58016058109 ",.01)
 ;;58016058109
 ;;9002226.02101,"881,58016058109 ",.02)
 ;;58016058109
 ;;9002226.02101,"881,58016058110 ",.01)
 ;;58016058110
 ;;9002226.02101,"881,58016058110 ",.02)
 ;;58016058110
 ;;9002226.02101,"881,58016058112 ",.01)
 ;;58016058112
 ;;9002226.02101,"881,58016058112 ",.02)
 ;;58016058112
 ;;9002226.02101,"881,58016058114 ",.01)
 ;;58016058114
 ;;9002226.02101,"881,58016058114 ",.02)
 ;;58016058114
 ;;9002226.02101,"881,58016058115 ",.01)
 ;;58016058115
 ;;9002226.02101,"881,58016058115 ",.02)
 ;;58016058115
 ;;9002226.02101,"881,58016058116 ",.01)
 ;;58016058116
 ;;9002226.02101,"881,58016058116 ",.02)
 ;;58016058116
 ;;9002226.02101,"881,58016058118 ",.01)
 ;;58016058118
 ;;9002226.02101,"881,58016058118 ",.02)
 ;;58016058118
 ;;9002226.02101,"881,58016058120 ",.01)
 ;;58016058120
 ;;9002226.02101,"881,58016058120 ",.02)
 ;;58016058120
 ;;9002226.02101,"881,58016058121 ",.01)
 ;;58016058121
 ;;9002226.02101,"881,58016058121 ",.02)
 ;;58016058121
 ;;9002226.02101,"881,58016058124 ",.01)
 ;;58016058124
 ;;9002226.02101,"881,58016058124 ",.02)
 ;;58016058124
 ;;9002226.02101,"881,58016058125 ",.01)
 ;;58016058125
 ;;9002226.02101,"881,58016058125 ",.02)
 ;;58016058125
 ;;9002226.02101,"881,58016058126 ",.01)
 ;;58016058126
 ;;9002226.02101,"881,58016058126 ",.02)
 ;;58016058126
 ;;9002226.02101,"881,58016058127 ",.01)
 ;;58016058127
 ;;9002226.02101,"881,58016058127 ",.02)
 ;;58016058127
 ;;9002226.02101,"881,58016058128 ",.01)
 ;;58016058128
 ;;9002226.02101,"881,58016058128 ",.02)
 ;;58016058128
 ;;9002226.02101,"881,58016058130 ",.01)
 ;;58016058130
 ;;9002226.02101,"881,58016058130 ",.02)
 ;;58016058130
 ;;9002226.02101,"881,58016058132 ",.01)
 ;;58016058132
 ;;9002226.02101,"881,58016058132 ",.02)
 ;;58016058132
 ;;9002226.02101,"881,58016058135 ",.01)
 ;;58016058135
 ;;9002226.02101,"881,58016058135 ",.02)
 ;;58016058135
 ;;9002226.02101,"881,58016058136 ",.01)
 ;;58016058136
 ;;9002226.02101,"881,58016058136 ",.02)
 ;;58016058136
 ;;9002226.02101,"881,58016058140 ",.01)
 ;;58016058140
 ;;9002226.02101,"881,58016058140 ",.02)
 ;;58016058140
 ;;9002226.02101,"881,58016058142 ",.01)
 ;;58016058142
 ;;9002226.02101,"881,58016058142 ",.02)
 ;;58016058142
 ;;9002226.02101,"881,58016058144 ",.01)
 ;;58016058144
 ;;9002226.02101,"881,58016058144 ",.02)
 ;;58016058144
 ;;9002226.02101,"881,58016058145 ",.01)
 ;;58016058145
 ;;9002226.02101,"881,58016058145 ",.02)
 ;;58016058145
 ;;9002226.02101,"881,58016058148 ",.01)
 ;;58016058148
 ;;9002226.02101,"881,58016058148 ",.02)
 ;;58016058148
 ;;9002226.02101,"881,58016058150 ",.01)
 ;;58016058150
 ;;9002226.02101,"881,58016058150 ",.02)
 ;;58016058150
 ;;9002226.02101,"881,58016058156 ",.01)
 ;;58016058156
 ;;9002226.02101,"881,58016058156 ",.02)
 ;;58016058156
 ;;9002226.02101,"881,58016058160 ",.01)
 ;;58016058160
 ;;9002226.02101,"881,58016058160 ",.02)
 ;;58016058160
 ;;9002226.02101,"881,58016058167 ",.01)
 ;;58016058167
 ;;9002226.02101,"881,58016058167 ",.02)
 ;;58016058167
 ;;9002226.02101,"881,58016058169 ",.01)
 ;;58016058169
 ;;9002226.02101,"881,58016058169 ",.02)
 ;;58016058169
 ;;9002226.02101,"881,58016058170 ",.01)
 ;;58016058170
 ;;9002226.02101,"881,58016058170 ",.02)
 ;;58016058170
 ;;9002226.02101,"881,58016058171 ",.01)
 ;;58016058171
 ;;9002226.02101,"881,58016058171 ",.02)
 ;;58016058171
 ;;9002226.02101,"881,58016058172 ",.01)
 ;;58016058172
 ;;9002226.02101,"881,58016058172 ",.02)
 ;;58016058172
 ;;9002226.02101,"881,58016058173 ",.01)
 ;;58016058173
 ;;9002226.02101,"881,58016058173 ",.02)
 ;;58016058173
 ;;9002226.02101,"881,58016058175 ",.01)
 ;;58016058175
 ;;9002226.02101,"881,58016058175 ",.02)
 ;;58016058175
 ;;9002226.02101,"881,58016058176 ",.01)
 ;;58016058176
 ;;9002226.02101,"881,58016058176 ",.02)
 ;;58016058176
 ;;9002226.02101,"881,58016058177 ",.01)
 ;;58016058177
 ;;9002226.02101,"881,58016058177 ",.02)
 ;;58016058177
 ;;9002226.02101,"881,58016058179 ",.01)
 ;;58016058179
 ;;9002226.02101,"881,58016058179 ",.02)
 ;;58016058179
 ;;9002226.02101,"881,58016058180 ",.01)
 ;;58016058180
 ;;9002226.02101,"881,58016058180 ",.02)
 ;;58016058180
 ;;9002226.02101,"881,58016058181 ",.01)
 ;;58016058181
 ;;9002226.02101,"881,58016058181 ",.02)
 ;;58016058181
 ;;9002226.02101,"881,58016058182 ",.01)
 ;;58016058182
 ;;9002226.02101,"881,58016058182 ",.02)
 ;;58016058182
 ;;9002226.02101,"881,58016058183 ",.01)
 ;;58016058183
 ;;9002226.02101,"881,58016058183 ",.02)
 ;;58016058183
 ;;9002226.02101,"881,58016058184 ",.01)
 ;;58016058184
 ;;9002226.02101,"881,58016058184 ",.02)
 ;;58016058184
 ;;9002226.02101,"881,58016058187 ",.01)
 ;;58016058187
 ;;9002226.02101,"881,58016058187 ",.02)
 ;;58016058187
 ;;9002226.02101,"881,58016058189 ",.01)
 ;;58016058189
 ;;9002226.02101,"881,58016058189 ",.02)
 ;;58016058189
 ;;9002226.02101,"881,58016058190 ",.01)
 ;;58016058190
 ;;9002226.02101,"881,58016058190 ",.02)
 ;;58016058190
 ;;9002226.02101,"881,58016058191 ",.01)
 ;;58016058191
 ;;9002226.02101,"881,58016058191 ",.02)
 ;;58016058191
 ;;9002226.02101,"881,58016058192 ",.01)
 ;;58016058192
 ;;9002226.02101,"881,58016058192 ",.02)
 ;;58016058192
 ;;9002226.02101,"881,58016058193 ",.01)
 ;;58016058193
 ;;9002226.02101,"881,58016058193 ",.02)
 ;;58016058193
 ;;9002226.02101,"881,58016058196 ",.01)
 ;;58016058196
 ;;9002226.02101,"881,58016058196 ",.02)
 ;;58016058196
 ;;9002226.02101,"881,58016058197 ",.01)
 ;;58016058197
 ;;9002226.02101,"881,58016058197 ",.02)
 ;;58016058197
 ;;9002226.02101,"881,58016058198 ",.01)
 ;;58016058198
 ;;9002226.02101,"881,58016058198 ",.02)
 ;;58016058198
 ;;9002226.02101,"881,58016058199 ",.01)
 ;;58016058199
 ;;9002226.02101,"881,58016058199 ",.02)
 ;;58016058199
 ;;9002226.02101,"881,58016091700 ",.01)
 ;;58016091700
 ;;9002226.02101,"881,58016091700 ",.02)
 ;;58016091700
 ;;9002226.02101,"881,58016091701 ",.01)
 ;;58016091701
 ;;9002226.02101,"881,58016091701 ",.02)
 ;;58016091701
 ;;9002226.02101,"881,58016091702 ",.01)
 ;;58016091702
 ;;9002226.02101,"881,58016091702 ",.02)
 ;;58016091702
 ;;9002226.02101,"881,58016091703 ",.01)
 ;;58016091703
 ;;9002226.02101,"881,58016091703 ",.02)
 ;;58016091703
 ;;9002226.02101,"881,58016091704 ",.01)
 ;;58016091704
 ;;9002226.02101,"881,58016091704 ",.02)
 ;;58016091704