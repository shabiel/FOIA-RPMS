ATXD9A ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 13, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;APCH ALLERGY DX CODES
 ;
 ; This routine loads Taxonomy APCH ALLERGY DX CODES
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 D OTHER
 I $O(^TMP("ATX",$J,3.6,0)) D BULL^ATXSTX2
 I $O(^TMP("ATX",$J,9002226,0)) D TAX^ATXSTX2
 D KILL^ATXSTX2
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"692.0 ")
 ;;1
 ;;21,"692.5 ")
 ;;2
 ;;21,"693.0 ")
 ;;3
 ;;21,"693.1 ")
 ;;4
 ;;21,"693.8 ")
 ;;5
 ;;21,"693.9 ")
 ;;6
 ;;21,"989.5 ")
 ;;7
 ;;21,"995.0 ")
 ;;8
 ;;21,"995.2 ")
 ;;9
 ;;21,"999.4 ")
 ;;10
 ;;21,"999.5 ")
 ;;11
 ;;21,"L23.0 ")
 ;;14
 ;;21,"L23.1 ")
 ;;15
 ;;21,"L23.3 ")
 ;;16
 ;;21,"L23.4 ")
 ;;17
 ;;21,"L23.5 ")
 ;;18
 ;;21,"L23.6 ")
 ;;19
 ;;21,"L23.7 ")
 ;;20
 ;;21,"L23.81 ")
 ;;21
 ;;21,"L23.89 ")
 ;;22
 ;;21,"L23.9 ")
 ;;23
 ;;21,"L24.0 ")
 ;;24
 ;;21,"L24.1 ")
 ;;25
 ;;21,"L24.2 ")
 ;;26
 ;;21,"L24.4 ")
 ;;27
 ;;21,"L24.5 ")
 ;;28
 ;;21,"L24.6 ")
 ;;29
 ;;21,"L24.7 ")
 ;;30
 ;;21,"L24.81 ")
 ;;31
 ;;21,"L24.89 ")
 ;;32
 ;;21,"L25.1 ")
 ;;33
 ;;21,"L25.2 ")
 ;;34
 ;;21,"L25.3 ")
 ;;35
 ;;21,"L25.4 ")
 ;;36
 ;;21,"L25.5 ")
 ;;37
 ;;21,"L25.8 ")
 ;;38
 ;;21,"L27.0 ")
 ;;39
 ;;21,"L27.1 ")
 ;;40
 ;;21,"L27.2 ")
 ;;41
 ;;21,"L27.8 ")
 ;;42
 ;;21,"L27.9 ")
 ;;43
 ;;21,"M02.211 ")
 ;;44
 ;;21,"M02.212 ")
 ;;45
 ;;21,"M02.219 ")
 ;;46
 ;;21,"M02.221 ")
 ;;47
 ;;21,"M02.222 ")
 ;;48
 ;;21,"M02.229 ")
 ;;49
 ;;21,"M02.231 ")
 ;;50
 ;;21,"M02.232 ")
 ;;51
 ;;21,"M02.239 ")
 ;;52
 ;;21,"M02.241 ")
 ;;53
 ;;21,"M02.242 ")
 ;;54
 ;;21,"M02.249 ")
 ;;55
 ;;21,"M02.251 ")
 ;;56
 ;;21,"M02.252 ")
 ;;57
 ;;21,"M02.259 ")
 ;;58
 ;;21,"M02.261 ")
 ;;59
 ;;21,"M02.262 ")
 ;;60
 ;;21,"M02.269 ")
 ;;61
 ;;21,"M02.271 ")
 ;;62
 ;;21,"M02.272 ")
 ;;63
 ;;21,"M02.279 ")
 ;;64
 ;;21,"M02.28 ")
 ;;65
 ;;21,"M02.29 ")
 ;;66
 ;;21,"T36.0X5A ")
 ;;67
 ;;21,"T36.1X5A ")
 ;;68
 ;;21,"T36.2X5A ")
 ;;69
 ;;21,"T36.3X5A ")
 ;;70
 ;;21,"T36.4X5A ")
 ;;71
 ;;21,"T36.5X5A ")
 ;;72
 ;;21,"T36.6X5A ")
 ;;73
 ;;21,"T36.7X5A ")
 ;;74
 ;;21,"T36.8X5A ")
 ;;75
 ;;21,"T36.95XA ")
 ;;76
 ;;21,"T37.0X5A ")
 ;;77
 ;;21,"T37.1X5A ")
 ;;78
 ;;21,"T37.2X5A ")
 ;;79
 ;;21,"T37.3X5A ")
 ;;80
 ;;21,"T37.4X5A ")
 ;;81
 ;;21,"T37.5X5A ")
 ;;82
 ;;21,"T37.8X5A ")
 ;;83
 ;;21,"T37.95XA ")
 ;;84
 ;;21,"T38.0X5A ")
 ;;85
 ;;21,"T38.1X5A ")
 ;;86
 ;;21,"T38.2X5A ")
 ;;87
 ;;21,"T38.3X5A ")
 ;;88
 ;;21,"T38.4X5A ")
 ;;89
 ;;21,"T38.5X5A ")
 ;;90
 ;;21,"T38.6X5A ")
 ;;91
 ;;21,"T38.7X5A ")
 ;;92
 ;;21,"T38.805A ")
 ;;93
 ;;21,"T38.815A ")
 ;;94
 ;;21,"T38.895A ")
 ;;95
 ;;21,"T38.905A ")
 ;;96
 ;;21,"T38.995A ")
 ;;97
 ;;21,"T39.015A ")
 ;;98
 ;;21,"T39.095A ")
 ;;99
 ;;21,"T39.1X5A ")
 ;;100
 ;;21,"T39.2X5A ")
 ;;101
 ;;21,"T39.315A ")
 ;;102
 ;;21,"T39.395A ")
 ;;103
 ;;21,"T39.4X5A ")
 ;;104
 ;;21,"T39.8X5A ")
 ;;105
 ;;21,"T39.95XA ")
 ;;106
 ;;21,"T40.0X5A ")
 ;;107
 ;;21,"T40.1X5A ")
 ;;108
 ;;21,"T40.2X5A ")
 ;;109
 ;;21,"T40.3X5A ")
 ;;110
 ;;21,"T40.4X5A ")
 ;;111
 ;;21,"T40.5X5A ")
 ;;112
 ;;21,"T40.605A ")
 ;;113
 ;;21,"T40.695A ")
 ;;114
 ;;21,"T40.7X5A ")
 ;;115
 ;;21,"T40.8X5A ")
 ;;116
 ;;21,"T40.905A ")
 ;;117
 ;;21,"T40.995A ")
 ;;118
 ;;21,"T41.0X5A ")
 ;;119
 ;;21,"T41.1X5A ")
 ;;120
 ;;21,"T41.205A ")
 ;;121
 ;;21,"T41.295A ")
 ;;122
 ;;21,"T41.3X5A ")
 ;;123
 ;;21,"T41.45XA ")
 ;;124
 ;;21,"T41.5X5A ")
 ;;125
 ;;21,"T42.0X5A ")
 ;;126
 ;;21,"T42.1X5A ")
 ;;127
 ;;21,"T42.2X5A ")
 ;;128
 ;;21,"T42.3X5A ")
 ;;129
 ;;21,"T42.4X5A ")
 ;;130
 ;;21,"T42.5X5A ")
 ;;131
 ;;21,"T42.6X5A ")
 ;;132
 ;;21,"T42.75XA ")
 ;;133
 ;;21,"T42.8X5A ")
 ;;134
 ;;21,"T43.015A ")
 ;;135
 ;;21,"T43.025A ")
 ;;136
 ;;21,"T43.1X5A ")
 ;;137
 ;;21,"T43.205A ")
 ;;138
 ;;21,"T43.215A ")
 ;;139
 ;;21,"T43.225A ")
 ;;140
 ;;21,"T43.295A ")
 ;;141
 ;;21,"T43.3X5A ")
 ;;142
 ;;21,"T43.4X5A ")
 ;;143
 ;;21,"T43.505A ")
 ;;144
 ;;21,"T43.595A ")
 ;;145
 ;;21,"T43.605A ")
 ;;146
 ;;21,"T43.615A ")
 ;;147
 ;;21,"T43.625A ")
 ;;148
 ;;21,"T43.635A ")
 ;;149
 ;;21,"T43.695A ")
 ;;150
 ;;21,"T43.8X5A ")
 ;;151
 ;;21,"T43.95XA ")
 ;;152
 ;;21,"T44.0X5A ")
 ;;153
 ;;21,"T44.1X5A ")
 ;;154
 ;;21,"T44.2X5A ")
 ;;155
 ;;21,"T44.3X5A ")
 ;;156
 ;;21,"T44.4X5A ")
 ;;157
 ;;21,"T44.5X5A ")
 ;;158
 ;;21,"T44.6X5A ")
 ;;159
 ;;21,"T44.7X5A ")
 ;;160
 ;;21,"T44.8X5A ")
 ;;161
 ;;21,"T44.905A ")
 ;;162
 ;;21,"T44.995A ")
 ;;163
 ;;21,"T45.0X5A ")
 ;;164
 ;;21,"T45.1X5A ")
 ;;165
 ;;21,"T45.2X5A ")
 ;;166
 ;;21,"T45.3X5A ")
 ;;167
 ;;21,"T45.4X5A ")
 ;;168
 ;;21,"T45.515A ")
 ;;169
 ;;21,"T45.525A ")
 ;;170
 ;;21,"T45.605A ")
 ;;171
 ;;21,"T45.615A ")
 ;;172
 ;;21,"T45.625A ")
 ;;173
 ;;21,"T45.695A ")
 ;;174
 ;;21,"T45.7X5A ")
 ;;175
 ;;21,"T45.8X5A ")
 ;;176
 ;;21,"T45.95XA ")
 ;;177
 ;;21,"T46.0X5A ")
 ;;178
 ;;21,"T46.1X5A ")
 ;;179
 ;;21,"T46.2X5A ")
 ;;180
 ;;21,"T46.3X5A ")
 ;;181
 ;;21,"T46.4X5A ")
 ;;182
 ;;21,"T46.5X5A ")
 ;;183
 ;;21,"T46.6X5A ")
 ;;184
 ;;21,"T46.7X5A ")
 ;;185
 ;;21,"T46.8X5A ")
 ;;186
 ;;21,"T46.905A ")
 ;;187
 ;;21,"T46.995A ")
 ;;188
 ;;21,"T47.0X5A ")
 ;;189
 ;;21,"T47.1X5A ")
 ;;190
 ;;21,"T47.2X5A ")
 ;;191
 ;;21,"T47.3X5A ")
 ;;192
 ;;21,"T47.4X5A ")
 ;;193
 ;;21,"T47.5X5A ")
 ;;194
 ;;21,"T47.6X5A ")
 ;;195
 ;;21,"T47.7X5A ")
 ;;196
 ;;21,"T47.8X5A ")
 ;;197
 ;;21,"T47.95XA ")
 ;;198
 ;;21,"T48.0X5A ")
 ;;199
 ;;21,"T48.1X5A ")
 ;;200
 ;;21,"T48.205A ")
 ;;201
 ;;21,"T48.295A ")
 ;;202
 ;;21,"T48.3X5A ")
 ;;203
 ;;21,"T48.4X5A ")
 ;;204
 ;;21,"T48.5X5A ")
 ;;205
 ;;21,"T48.6X5A ")
 ;;206
 ;;21,"T48.905A ")
 ;;207
 ;;21,"T48.995A ")
 ;;208
 ;;21,"T49.0X5A ")
 ;;209
 ;;21,"T49.1X5A ")
 ;;210
 ;;21,"T49.2X5A ")
 ;;211
 ;;21,"T49.3X5A ")
 ;;212
 ;;21,"T49.4X5A ")
 ;;213
 ;;21,"T49.5X5A ")
 ;;214
 ;;21,"T49.6X5A ")
 ;;215
 ;;21,"T49.7X5A ")
 ;;216
 ;;21,"T49.8X5A ")
 ;;217
 ;;21,"T49.95XA ")
 ;;218
 ;;21,"T50.0X5A ")
 ;;219
 ;;21,"T50.1X5A ")
 ;;220
 ;;21,"T50.2X5A ")
 ;;221
 ;;21,"T50.3X5A ")
 ;;222
 ;;21,"T50.4X5A ")
 ;;223
 ;;21,"T50.5X5A ")
 ;;224
 ;;21,"T50.6X5A ")
 ;;225
 ;;21,"T50.7X5A ")
 ;;226
 ;;21,"T50.8X5A ")
 ;;227
 ;;21,"T50.905A ")
 ;;228
 ;;21,"T50.995A ")
 ;;229
 ;;21,"T50.A15A ")
 ;;230
 ;;21,"T50.A25A ")
 ;;231
 ;;21,"T50.A95A ")
 ;;232
 ;;21,"T50.B15A ")
 ;;233
 ;;21,"T50.B95A ")
 ;;234
 ;;21,"T50.Z15A ")
 ;;235
 ;;21,"T50.Z95A ")
 ;;236
 ;;21,"T78.00XA ")
 ;;237
 ;;21,"T78.01XA ")
 ;;238
 ;;21,"T78.02XA ")
 ;;239
 ;;21,"T78.03XA ")
 ;;240
 ;;21,"T78.04XA ")
 ;;241
 ;;21,"T78.05XA ")
 ;;242
 ;;21,"T78.06XA ")
 ;;243
 ;;21,"T78.07XA ")
 ;;244
 ;;21,"T78.08XA ")
 ;;245
 ;;21,"T78.09XA ")
 ;;246
 ;;21,"T78.1XXA ")
 ;;247
 ;;21,"T78.2XXA ")
 ;;248
 ;;21,"T78.3XXA ")
 ;;249
 ;;21,"T78.40XA ")
 ;;250
 ;;21,"T78.41XA ")
 ;;251
 ;;21,"T78.49XA ")
 ;;252
 ;;21,"T78.8XXA ")
 ;;253
 ;;21,"T80.51XA ")
 ;;254
 ;;21,"T80.52XA ")
 ;;255
 ;;21,"T80.59XA ")
 ;;256
 ;;21,"T80.61XA ")
 ;;257
 ;;21,"T80.62XA ")
 ;;258
 ;;21,"T80.69XA ")
 ;;259
 ;;21,"T80.910A ")
 ;;260
 ;;21,"T80.911A ")
 ;;261
 ;;21,"T80.919A ")
 ;;262
 ;;21,"T80.92XA ")
 ;;263
 ;;21,"T88.6XXA ")
 ;;264
 ;;21,"V14.0 ")
 ;;12
 ;;21,"V15.0 ")
 ;;13
 ;;21,"Z88.0 ")
 ;;265
 ;;21,"Z88.1 ")
 ;;266
 ;;21,"Z88.2 ")
 ;;267
 ;;21,"Z88.3 ")
 ;;268
 ;;21,"Z88.4 ")
 ;;269
 ;;21,"Z88.5 ")
 ;;270
 ;;21,"Z88.6 ")
 ;;271
 ;;21,"Z88.7 ")
 ;;272
 ;;21,"Z88.8 ")
 ;;273
 ;;21,"Z88.9 ")
 ;;274
 ;;21,"Z91.010 ")
 ;;275
 ;;21,"Z91.011 ")
 ;;276
 ;;21,"Z91.012 ")
 ;;277
 ;;21,"Z91.013 ")
 ;;278
 ;;21,"Z91.018 ")
 ;;279
 ;;21,"Z91.02 ")
 ;;280
 ;;21,"Z91.030 ")
 ;;281
 ;;21,"Z91.038 ")
 ;;282
 ;;21,"Z91.040 ")
 ;;283
 ;;21,"Z91.041 ")
 ;;284
 ;;21,"Z91.048 ")
 ;;285
 ;;21,"Z91.09 ")
 ;;286
 ;;9002226,1787,.01)
 ;;APCH ALLERGY DX CODES
 ;;9002226,1787,.02)
 ;;@
 ;;9002226,1787,.04)
 ;;n
 ;;9002226,1787,.06)
 ;;@
 ;;9002226,1787,.08)
 ;;0
 ;;9002226,1787,.09)
 ;;3131113
 ;;9002226,1787,.11)
 ;;@
 ;;9002226,1787,.12)
 ;;31
 ;;9002226,1787,.13)
 ;;1
 ;;9002226,1787,.14)
 ;;@
 ;;9002226,1787,.15)
 ;;80
 ;;9002226,1787,.16)
 ;;@
 ;;9002226,1787,.17)
 ;;@
 ;;9002226,1787,3101)
 ;;@
 ;;9002226.02101,"1787,692.0 ",.01)
 ;;692.0 
 ;;9002226.02101,"1787,692.0 ",.02)
 ;;692.89 
 ;;9002226.02101,"1787,692.0 ",.03)
 ;;1
 ;;9002226.02101,"1787,692.5 ",.01)
 ;;692.5 
 ;;9002226.02101,"1787,692.5 ",.02)
 ;;692.5 
 ;;9002226.02101,"1787,692.5 ",.03)
 ;;1
 ;;9002226.02101,"1787,693.0 ",.01)
 ;;693.0 
 ;;9002226.02101,"1787,693.0 ",.02)
 ;;693.0 
 ;;9002226.02101,"1787,693.0 ",.03)
 ;;1
 ;;9002226.02101,"1787,693.1 ",.01)
 ;;693.1 
 ;;9002226.02101,"1787,693.1 ",.02)
 ;;693.1 
 ;;9002226.02101,"1787,693.1 ",.03)
 ;;1
 ;;9002226.02101,"1787,693.8 ",.01)
 ;;693.8 
 ;;9002226.02101,"1787,693.8 ",.02)
 ;;693.8 
 ;;9002226.02101,"1787,693.8 ",.03)
 ;;1
 ;;9002226.02101,"1787,693.9 ",.01)
 ;;693.9 
 ;;9002226.02101,"1787,693.9 ",.02)
 ;;693.9 
 ;;9002226.02101,"1787,693.9 ",.03)
 ;;1
 ;;9002226.02101,"1787,989.5 ",.01)
 ;;989.5 
 ;;9002226.02101,"1787,989.5 ",.02)
 ;;989.5 
 ;;9002226.02101,"1787,989.5 ",.03)
 ;;1
 ;;9002226.02101,"1787,995.0 ",.01)
 ;;995.0 
 ;;9002226.02101,"1787,995.0 ",.02)
 ;;995.0 
 ;;9002226.02101,"1787,995.0 ",.03)
 ;;1
 ;;9002226.02101,"1787,995.2 ",.01)
 ;;995.2 
 ;;9002226.02101,"1787,995.2 ",.02)
 ;;995.3 
 ;;9002226.02101,"1787,995.2 ",.03)
 ;;1
 ;;9002226.02101,"1787,999.4 ",.01)
 ;;999.4 
 ;;9002226.02101,"1787,999.4 ",.02)
 ;;999.4 
 ;;9002226.02101,"1787,999.4 ",.03)
 ;;1
 ;;9002226.02101,"1787,999.5 ",.01)
 ;;999.5 
 ;;9002226.02101,"1787,999.5 ",.02)
 ;;999.89 
 ;;9002226.02101,"1787,999.5 ",.03)
 ;;1
 ;;9002226.02101,"1787,L23.0 ",.01)
 ;;L23.0 
 ;;9002226.02101,"1787,L23.0 ",.02)
 ;;L23.0 
 ;;9002226.02101,"1787,L23.0 ",.03)
 ;;30
 ;;9002226.02101,"1787,L23.1 ",.01)
 ;;L23.1 
 ;;9002226.02101,"1787,L23.1 ",.02)
 ;;L23.1 
 ;;9002226.02101,"1787,L23.1 ",.03)
 ;;30
 ;;9002226.02101,"1787,L23.3 ",.01)
 ;;L23.3 
 ;;9002226.02101,"1787,L23.3 ",.02)
 ;;L23.3 
 ;;9002226.02101,"1787,L23.3 ",.03)
 ;;30
 ;;9002226.02101,"1787,L23.4 ",.01)
 ;;L23.4 
 ;;9002226.02101,"1787,L23.4 ",.02)
 ;;L23.4 
 ;;9002226.02101,"1787,L23.4 ",.03)
 ;;30
 ;;9002226.02101,"1787,L23.5 ",.01)
 ;;L23.5 
 ;;9002226.02101,"1787,L23.5 ",.02)
 ;;L23.5 
 ;;9002226.02101,"1787,L23.5 ",.03)
 ;;30
 ;;9002226.02101,"1787,L23.6 ",.01)
 ;;L23.6 
 ;;9002226.02101,"1787,L23.6 ",.02)
 ;;L23.6 
 ;;9002226.02101,"1787,L23.6 ",.03)
 ;;30
 ;;9002226.02101,"1787,L23.7 ",.01)
 ;;L23.7 
 ;;9002226.02101,"1787,L23.7 ",.02)
 ;;L23.7 
 ;;9002226.02101,"1787,L23.7 ",.03)
 ;;30
 ;;9002226.02101,"1787,L23.81 ",.01)
 ;;L23.81 
 ;;9002226.02101,"1787,L23.81 ",.02)
 ;;L23.81 
 ;;9002226.02101,"1787,L23.81 ",.03)
 ;;30
 ;;9002226.02101,"1787,L23.89 ",.01)
 ;;L23.89 
 ;;9002226.02101,"1787,L23.89 ",.02)
 ;;L23.89 
 ;;9002226.02101,"1787,L23.89 ",.03)
 ;;30
 ;;9002226.02101,"1787,L23.9 ",.01)
 ;;L23.9 
 ;;9002226.02101,"1787,L23.9 ",.02)
 ;;L23.9 
 ;;9002226.02101,"1787,L23.9 ",.03)
 ;;30
 ;;9002226.02101,"1787,L24.0 ",.01)
 ;;L24.0 
 ;;9002226.02101,"1787,L24.0 ",.02)
 ;;L24.0 
 ;;9002226.02101,"1787,L24.0 ",.03)
 ;;30
 ;;9002226.02101,"1787,L24.1 ",.01)
 ;;L24.1 
 ;;9002226.02101,"1787,L24.1 ",.02)
 ;;L24.1 
 ;;9002226.02101,"1787,L24.1 ",.03)
 ;;30
 ;;9002226.02101,"1787,L24.2 ",.01)
 ;;L24.2 
 ;;9002226.02101,"1787,L24.2 ",.02)
 ;;L24.2 
 ;;9002226.02101,"1787,L24.2 ",.03)
 ;;30
 ;;9002226.02101,"1787,L24.4 ",.01)
 ;;L24.4 
 ;;9002226.02101,"1787,L24.4 ",.02)
 ;;L24.4 
 ;;9002226.02101,"1787,L24.4 ",.03)
 ;;30
 ;;9002226.02101,"1787,L24.5 ",.01)
 ;;L24.5 
 ;;9002226.02101,"1787,L24.5 ",.02)
 ;;L24.5 
 ;;9002226.02101,"1787,L24.5 ",.03)
 ;;30
 ;;9002226.02101,"1787,L24.6 ",.01)
 ;;L24.6 
 ;;9002226.02101,"1787,L24.6 ",.02)
 ;;L24.6 
 ;;9002226.02101,"1787,L24.6 ",.03)
 ;;30
 ;;9002226.02101,"1787,L24.7 ",.01)
 ;;L24.7 
 ;;9002226.02101,"1787,L24.7 ",.02)
 ;;L24.7 
 ;;9002226.02101,"1787,L24.7 ",.03)
 ;;30
 ;;9002226.02101,"1787,L24.81 ",.01)
 ;;L24.81 
 ;;9002226.02101,"1787,L24.81 ",.02)
 ;;L24.81 
 ;;9002226.02101,"1787,L24.81 ",.03)
 ;;30
 ;;9002226.02101,"1787,L24.89 ",.01)
 ;;L24.89 
 ;;9002226.02101,"1787,L24.89 ",.02)
 ;;L24.89 
 ;;9002226.02101,"1787,L24.89 ",.03)
 ;;30
 ;;9002226.02101,"1787,L25.1 ",.01)
 ;;L25.1 
 ;;9002226.02101,"1787,L25.1 ",.02)
 ;;L25.1 
 ;;9002226.02101,"1787,L25.1 ",.03)
 ;;30
 ;;9002226.02101,"1787,L25.2 ",.01)
 ;;L25.2 
 ;;9002226.02101,"1787,L25.2 ",.02)
 ;;L25.2 
 ;;9002226.02101,"1787,L25.2 ",.03)
 ;;30
 ;;9002226.02101,"1787,L25.3 ",.01)
 ;;L25.3 
 ;;9002226.02101,"1787,L25.3 ",.02)
 ;;L25.3 
 ;;9002226.02101,"1787,L25.3 ",.03)
 ;;30
 ;;9002226.02101,"1787,L25.4 ",.01)
 ;;L25.4 
 ;;9002226.02101,"1787,L25.4 ",.02)
 ;;L25.4 
 ;
OTHER ; OTHER ROUTINES
 D ^ATXD9A2
 D ^ATXD9A3
 D ^ATXD9A4
 Q