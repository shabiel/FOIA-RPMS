BGP71M ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;;BGP HEDIS CARDIOVASCULAR NDC
 ;
 ; This routine loads Taxonomy BGP HEDIS CARDIOVASCULAR NDC
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
 ;;21,"00025-2732-31 ")
 ;;1
 ;;21,"00025-2732-51 ")
 ;;2
 ;;21,"00025-2742-31 ")
 ;;3
 ;;21,"00025-2742-51 ")
 ;;4
 ;;21,"00025-2752-31 ")
 ;;5
 ;;21,"00025-2762-31 ")
 ;;6
 ;;21,"00054-0057-46 ")
 ;;7
 ;;21,"00069-2600-66 ")
 ;;8
 ;;21,"00093-2931-01 ")
 ;;9
 ;;21,"00093-2931-10 ")
 ;;10
 ;;21,"00093-2932-01 ")
 ;;11
 ;;21,"00093-2932-05 ")
 ;;12
 ;;21,"00093-3127-01 ")
 ;;13
 ;;21,"00093-3129-01 ")
 ;;14
 ;;21,"00093-5960-01 ")
 ;;15
 ;;21,"00093-5961-01 ")
 ;;16
 ;;21,"00093-5963-01 ")
 ;;17
 ;;21,"00093-5964-01 ")
 ;;18
 ;;21,"00115-9811-01 ")
 ;;19
 ;;21,"00115-9811-03 ")
 ;;20
 ;;21,"00115-9822-01 ")
 ;;21
 ;;21,"00115-9822-03 ")
 ;;22
 ;;21,"00143-1240-01 ")
 ;;23
 ;;21,"00143-1240-10 ")
 ;;24
 ;;21,"00143-1240-51 ")
 ;;25
 ;;21,"00143-1241-01 ")
 ;;26
 ;;21,"00143-1241-10 ")
 ;;27
 ;;21,"00143-1241-51 ")
 ;;28
 ;;21,"00173-0242-55 ")
 ;;29
 ;;21,"00173-0242-56 ")
 ;;30
 ;;21,"00173-0242-75 ")
 ;;31
 ;;21,"00173-0249-55 ")
 ;;32
 ;;21,"00173-0249-56 ")
 ;;33
 ;;21,"00173-0249-75 ")
 ;;34
 ;;21,"00173-0249-80 ")
 ;;35
 ;;21,"00173-0262-10 ")
 ;;36
 ;;21,"00185-0032-01 ")
 ;;37
 ;;21,"00185-0032-10 ")
 ;;38
 ;;21,"00185-0134-01 ")
 ;;39
 ;;21,"00185-0134-10 ")
 ;;40
 ;;21,"00228-2497-10 ")
 ;;41
 ;;21,"00228-2530-10 ")
 ;;42
 ;;21,"00228-2850-11 ")
 ;;43
 ;;21,"00228-2851-11 ")
 ;;44
 ;;21,"00228-2853-11 ")
 ;;45
 ;;21,"00228-2855-11 ")
 ;;46
 ;;21,"00378-0421-01 ")
 ;;47
 ;;21,"00378-0507-01 ")
 ;;48
 ;;21,"00378-0611-01 ")
 ;;49
 ;;21,"00378-0711-01 ")
 ;;50
 ;;21,"00378-1061-01 ")
 ;;51
 ;;21,"00378-1062-01 ")
 ;;52
 ;;21,"00378-1063-01 ")
 ;;53
 ;;21,"00378-1065-01 ")
 ;;54
 ;;21,"00378-1160-01 ")
 ;;55
 ;;21,"00378-1190-01 ")
 ;;56
 ;;21,"00378-6155-01 ")
 ;;57
 ;;21,"00378-6155-10 ")
 ;;58
 ;;21,"00378-6156-01 ")
 ;;59
 ;;21,"00378-6156-10 ")
 ;;60
 ;;21,"00409-2169-31 ")
 ;;61
 ;;21,"00440-7390-90 ")
 ;;62
 ;;21,"00440-7391-30 ")
 ;;63
 ;;21,"00440-7391-90 ")
 ;;64
 ;;21,"00440-7685-10 ")
 ;;65
 ;;21,"00440-7685-30 ")
 ;;66
 ;;21,"00440-7685-90 ")
 ;;67
 ;;21,"00440-7686-30 ")
 ;;68
 ;;21,"00440-7686-90 ")
 ;;69
 ;;21,"00440-7755-90 ")
 ;;70
 ;;21,"00440-7755-94 ")
 ;;71
 ;;21,"00440-7756-90 ")
 ;;72
 ;;21,"00440-7756-94 ")
 ;;73
 ;;21,"00440-7860-04 ")
 ;;74
 ;;21,"00440-7860-08 ")
 ;;75
 ;;21,"00440-7860-90 ")
 ;;76
 ;;21,"00517-8905-10 ")
 ;;77
 ;;21,"00527-1324-01 ")
 ;;78
 ;;21,"00527-1324-10 ")
 ;;79
 ;;21,"00527-1325-01 ")
 ;;80
 ;;21,"00527-1325-10 ")
 ;;81
 ;;21,"00591-0444-01 ")
 ;;82
 ;;21,"00591-0453-01 ")
 ;;83
 ;;21,"00591-5560-01 ")
 ;;84
 ;;21,"00591-5561-01 ")
 ;;85
 ;;21,"00615-0547-43 ")
 ;;86
 ;;21,"00641-1410-31 ")
 ;;87
 ;;21,"00641-1410-35 ")
 ;;88
 ;;21,"00781-3059-72 ")
 ;;89
 ;;21,"00781-3059-95 ")
 ;;90
 ;;21,"00781-5451-01 ")
 ;;91
 ;;21,"00781-5452-01 ")
 ;;92
 ;;21,"00781-5456-01 ")
 ;;93
 ;;21,"00781-5457-01 ")
 ;;94
 ;;21,"00904-5921-61 ")
 ;;95
 ;;21,"00904-5922-61 ")
 ;;96
 ;;21,"00904-6183-60 ")
 ;;97
 ;;21,"00904-6184-60 ")
 ;;98
 ;;21,"10135-0534-01 ")
 ;;99
 ;;21,"10135-0534-10 ")
 ;;100
 ;;21,"10135-0535-01 ")
 ;;101
 ;;21,"10135-0535-10 ")
 ;;102
 ;;21,"10370-0533-01 ")
 ;;103
 ;;21,"10370-0534-01 ")
 ;;104
 ;;21,"10370-0536-01 ")
 ;;105
 ;;21,"10370-0538-01 ")
 ;;106
 ;;21,"16590-0319-30 ")
 ;;107
 ;;21,"16590-0319-60 ")
 ;;108
 ;;21,"16590-0319-82 ")
 ;;109
 ;;21,"16729-0030-01 ")
 ;;110
 ;;21,"16729-0030-16 ")
 ;;111
 ;;21,"16729-0031-01 ")
 ;;112
 ;;21,"16729-0031-16 ")
 ;;113
 ;;21,"17856-0057-01 ")
 ;;114
 ;;21,"17856-0057-30 ")
 ;;115
 ;;21,"21695-0678-30 ")
 ;;116
 ;;21,"21695-0879-60 ")
 ;;117
 ;;21,"21695-0879-90 ")
 ;;118
 ;;21,"21695-0880-60 ")
 ;;119
 ;;21,"23155-0194-01 ")
 ;;120
 ;;21,"23155-0195-01 ")
 ;;121
 ;;21,"24987-0240-55 ")
 ;;122
 ;;21,"24987-0242-55 ")
 ;;123
 ;;21,"24987-0242-56 ")
 ;;124
 ;;21,"24987-0242-57 ")
 ;;125
 ;;21,"24987-0242-75 ")
 ;;126
 ;;21,"24987-0242-76 ")
 ;;127
 ;;21,"24987-0245-55 ")
 ;;128
 ;;21,"24987-0249-55 ")
 ;;129
 ;;21,"24987-0249-56 ")
 ;;130
 ;;21,"24987-0249-57 ")
 ;;131
 ;;21,"24987-0249-75 ")
 ;;132
 ;;21,"24987-0249-76 ")
 ;;133
 ;;21,"24987-0260-10 ")
 ;;134
 ;;21,"24987-0262-10 ")
 ;;135
 ;;21,"33261-0753-30 ")
 ;;136
 ;;21,"33261-0753-60 ")
 ;;137
 ;;21,"33261-0753-90 ")
 ;;138
 ;;21,"33261-0832-00 ")
 ;;139
 ;;21,"33261-0832-30 ")
 ;;140
 ;;21,"33261-0832-60 ")
 ;;141
 ;;21,"33261-0832-90 ")
 ;;142
 ;;21,"33358-0108-30 ")
 ;;143
 ;;21,"33358-0261-00 ")
 ;;144
 ;;21,"33358-0261-20 ")
 ;;145
 ;;21,"33358-0261-30 ")
 ;;146
 ;;21,"33358-0261-90 ")
 ;;147
 ;;21,"35356-0161-30 ")
 ;;148
 ;;21,"35356-0161-90 ")
 ;;149
 ;;21,"42254-0351-90 ")
 ;;150
 ;;21,"42291-0234-01 ")
 ;;151
 ;;21,"42291-0235-01 ")
 ;;152
 ;;21,"42291-0310-90 ")
 ;;153
 ;;21,"42291-0311-90 ")
 ;;154
 ;;21,"42291-0324-01 ")
 ;;155
 ;;21,"42291-0325-01 ")
 ;;156
 ;;21,"42291-0326-01 ")
 ;;157
 ;;21,"42291-0327-01 ")
 ;;158
 ;;21,"42292-0002-01 ")
 ;;159
 ;;21,"42292-0002-20 ")
 ;;160
 ;;21,"42292-0003-01 ")
 ;;161
 ;;21,"42292-0003-20 ")
 ;;162
 ;;21,"42806-0048-01 ")
 ;;163
 ;;21,"42806-0049-01 ")
 ;;164
 ;;21,"43353-0498-60 ")
 ;;165
 ;;21,"43353-0511-60 ")
 ;;166
 ;;21,"43353-0724-30 ")
 ;;167
 ;;21,"43353-0724-60 ")
 ;;168
 ;;21,"43353-0724-70 ")
 ;;169
 ;;21,"43353-0725-30 ")
 ;;170
 ;;21,"43353-0725-60 ")
 ;;171
 ;;21,"43353-0835-30 ")
 ;;172
 ;;21,"43353-0835-60 ")
 ;;173
 ;;21,"43386-0440-24 ")
 ;;174
 ;;21,"47463-0208-30 ")
 ;;175
 ;;21,"47463-0209-30 ")
 ;;176
 ;;21,"49884-0494-01 ")
 ;;177
 ;;21,"49884-0494-10 ")
 ;;178
 ;;21,"49884-0514-01 ")
 ;;179
 ;;21,"49884-0514-10 ")
 ;;180
 ;;21,"49999-0073-30 ")
 ;;181
 ;;21,"49999-0082-60 ")
 ;;182
 ;;21,"49999-0098-60 ")
 ;;183
 ;;21,"49999-0161-28 ")
 ;;184
 ;;21,"49999-0161-90 ")
 ;;185
 ;;21,"49999-0180-30 ")
 ;;186
 ;;21,"49999-0181-00 ")
 ;;187
 ;;21,"49999-0181-30 ")
 ;;188
 ;;21,"49999-0945-30 ")
 ;;189
 ;;21,"50268-0600-11 ")
 ;;190
 ;;21,"50268-0600-15 ")
 ;;191
 ;;21,"50268-0601-11 ")
 ;;192
 ;;21,"50268-0601-15 ")
 ;;193
 ;;21,"51079-0200-01 ")
 ;;194
 ;;21,"51079-0200-20 ")
 ;;195
 ;;21,"51079-0201-01 ")
 ;;196
 ;;21,"51079-0201-20 ")
 ;;197
 ;;21,"51138-0400-30 ")
 ;;198
 ;;21,"51138-0401-30 ")
 ;;199
 ;;21,"51138-0407-30 ")
 ;;200
 ;;21,"51138-0408-30 ")
 ;;201
 ;;21,"51138-0549-30 ")
 ;;202
 ;;21,"51138-0550-30 ")
 ;;203
 ;;21,"52959-0273-08 ")
 ;;204
 ;;21,"52959-0273-10 ")
 ;;205
 ;;21,"52959-0273-30 ")
 ;;206
 ;;21,"52959-0273-40 ")
 ;;207
 ;;21,"52959-0488-30 ")
 ;;208
 ;;21,"52959-0945-00 ")
 ;;209
 ;;21,"53217-0005-30 ")
 ;;210
 ;;21,"53217-0005-60 ")
 ;;211
 ;;21,"53217-0005-90 ")
 ;;212
 ;;21,"54092-0513-02 ")
 ;;213
 ;;21,"54092-0515-02 ")
 ;;214
 ;;21,"54092-0517-02 ")
 ;;215
 ;;21,"54092-0519-02 ")
 ;;216
 ;;21,"54348-0101-30 ")
 ;;217
 ;;21,"54348-0102-30 ")
 ;;218
 ;;21,"54348-0107-12 ")
 ;;219
 ;;21,"54569-0483-00 ")
 ;;220
 ;;21,"54569-0484-00 ")
 ;;221
 ;;21,"54569-0508-01 ")
 ;;222
 ;;21,"54569-0510-00 ")
 ;;223
 ;;21,"54569-3121-04 ")
 ;;224
 ;;21,"54569-3265-01 ")
 ;;225
 ;;21,"54569-5758-00 ")
 ;;226
 ;;21,"54569-5758-01 ")
 ;;227
 ;;21,"54868-0050-01 ")
 ;;228
 ;;21,"54868-0050-02 ")
 ;;229
 ;;21,"54868-0050-03 ")
 ;;230
 ;;21,"54868-0050-04 ")
 ;;231
 ;;21,"54868-0055-00 ")
 ;;232
 ;;21,"54868-0055-02 ")
 ;;233
 ;;21,"54868-0683-01 ")
 ;;234
 ;;21,"54868-0683-02 ")
 ;;235
 ;;21,"54868-0683-04 ")
 ;;236
 ;;21,"54868-0692-00 ")
 ;;237
 ;;21,"54868-0790-02 ")
 ;;238
 ;;21,"54868-0790-03 ")
 ;;239
 ;;21,"54868-0790-05 ")
 ;;240
 ;;21,"54868-1310-01 ")
 ;;241
 ;;21,"54868-1326-02 ")
 ;;242
 ;;21,"54868-1326-04 ")
 ;;243
 ;;21,"54868-1326-05 ")
 ;;244
 ;;21,"54868-1326-06 ")
 ;;245
 ;;21,"54868-1326-07 ")
 ;;246
 ;;21,"54868-1328-00 ")
 ;;247
 ;;21,"54868-1328-01 ")
 ;;248
 ;;21,"54868-1328-02 ")
 ;;249
 ;;21,"54868-1328-03 ")
 ;;250
 ;;21,"54868-1521-00 ")
 ;;251
 ;;21,"54868-1521-02 ")
 ;;252
 ;;21,"54868-2134-01 ")
 ;;253
 ;;21,"54868-2134-02 ")
 ;;254
 ;;21,"54868-2134-03 ")
 ;;255
 ;;21,"54868-2134-04 ")
 ;;256
 ;;21,"54868-2181-00 ")
 ;;257
 ;;21,"54868-3816-00 ")
 ;;258
 ;;21,"54868-4876-00 ")
 ;;259
 ;;21,"54868-4876-01 ")
 ;;260
 ;;21,"54868-4876-02 ")
 ;;261
 ;;21,"55048-0208-30 ")
 ;;262
 ;;21,"55048-0209-30 ")
 ;;263
 ;;21,"55289-0002-01 ")
 ;;264
 ;;21,"55289-0002-30 ")
 ;;265
 ;;21,"55289-0098-01 ")
 ;;266
 ;;21,"55289-0098-30 ")
 ;;267
 ;;21,"55289-0098-60 ")
 ;;268
 ;;21,"55289-0290-30 ")
 ;;269
 ;;21,"55289-0290-50 ")
 ;;270
 ;;21,"55289-0626-01 ")
 ;;271
 ;;21,"55289-0626-03 ")
 ;;272
 ;;21,"55289-0626-14 ")
 ;;273
 ;;21,"55289-0626-30 ")
 ;;274
 ;;21,"55289-0626-60 ")
 ;;275
 ;;21,"55289-0734-01 ")
 ;;276
 ;;21,"55289-0734-30 ")
 ;;277
 ;;21,"55289-0907-08 ")
 ;;278
 ;;21,"55289-0907-30 ")
 ;;279
 ;;21,"55289-0907-79 ")
 ;;280
 ;;21,"55289-0927-01 ")
 ;;281
 ;;21,"55289-0927-30 ")
 ;;282
 ;;21,"57664-0437-18 ")
 ;;283
 ;;21,"57664-0437-88 ")
 ;;284
 ;;21,"57664-0441-18 ")
 ;;285
 ;;21,"57664-0441-88 ")
 ;;286
 ;;21,"58864-0634-14 ")
 ;;287
 ;;21,"58864-0634-20 ")
 ;;288
 ;;21,"58864-0796-20 ")
 ;;289
 ;;21,"58864-0797-30 ")
 ;;290
 ;;21,"58864-0815-01 ")
 ;;291
 ;;21,"58864-0815-30 ")
 ;;292
 ;;21,"58864-0870-14 ")
 ;;293
 ;;21,"59212-0242-55 ")
 ;;294
 ;;21,"59212-0245-55 ")
 ;;295
 ;;21,"59212-0249-55 ")
 ;;296
 ;;21,"59212-0249-56 ")
 ;;297
 ;;21,"59762-1004-01 ")
 ;;298
 ;;21,"60429-0099-01 ")
 ;;299
 ;;21,"60429-0099-10 ")
 ;;300
 ;;21,"60429-0100-01 ")
 ;;301
 ;;21,"60429-0100-10 ")
 ;;302
 ;;21,"60429-0124-01 ")
 ;;303
 ;;21,"60429-0124-90 ")
 ;;304
 ;;21,"60429-0125-01 ")
 ;;305
 ;;21,"60429-0163-01 ")
 ;;306
 ;;21,"60760-0003-30 ")
 ;;307
 ;;21,"60760-0003-90 ")
 ;;308
 ;;21,"60760-0406-30 ")
 ;;309
 ;;21,"63629-1558-01 ")
 ;;310
 ;;21,"63629-1558-02 ")
 ;;311
 ;;21,"63629-1558-03 ")
 ;;312
 ;;21,"63629-1558-04 ")
 ;;313
 ;;21,"63629-1558-05 ")
 ;;314
 ;;21,"63629-2579-01 ")
 ;;315
 ;;21,"63629-2579-02 ")
 ;;316
 ;;21,"63629-2579-03 ")
 ;;317
 ;;21,"63629-2579-04 ")
 ;;318
 ;;21,"63629-2579-05 ")
 ;;319
 ;;21,"63629-3870-01 ")
 ;;320
 ;;21,"63629-3870-02 ")
 ;;321
 ;;21,"63629-3870-03 ")
 ;;322
 ;;21,"63629-3870-04 ")
 ;;323
 ;;21,"65162-0711-10 ")
 ;;324
 ;;21,"65162-0713-10 ")
 ;;325
 ;;21,"65243-0023-03 ")
 ;;326
 ;;21,"65243-0023-09 ")
 ;;327
 ;;21,"65243-0024-09 ")
 ;;328
 ;;21,"66116-0429-30 ")
 ;;329
 ;;21,"66116-0430-30 ")
 ;;330
 ;;21,"66267-0078-30 ")
 ;;331
 ;;21,"66267-0401-10 ")
 ;;332
 ;;21,"66267-0443-30 ")
 ;;333
 ;;21,"67544-0091-30 ")
 ;;334
 ;;21,"67544-0091-60 ")
 ;;335
 ;;21,"67544-0091-70 ")
 ;;336
 ;;21,"67544-0519-31 ")
 ;;337
 ;;21,"67544-0519-32 ")
 ;;338
 ;;21,"67544-0519-60 ")
 ;;339
 ;
OTHER ; OTHER ROUTINES
 D ^BGP71M2
 D ^BGP71M3
 D ^BGP71M4
 D ^BGP71M5
 Q