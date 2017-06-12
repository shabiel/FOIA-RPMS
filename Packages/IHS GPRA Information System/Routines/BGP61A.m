BGP61A ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;;BGP HEDIS CENTRAL NERVOUS NDC
 ;
 ; This routine loads Taxonomy BGP HEDIS CENTRAL NERVOUS NDC
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
 ;;21,"00024-5401-31 ")
 ;;1
 ;;21,"00024-5421-31 ")
 ;;2
 ;;21,"00024-5421-50 ")
 ;;3
 ;;21,"00024-5501-10 ")
 ;;4
 ;;21,"00024-5501-31 ")
 ;;5
 ;;21,"00024-5521-10 ")
 ;;6
 ;;21,"00024-5521-31 ")
 ;;7
 ;;21,"00024-5521-50 ")
 ;;8
 ;;21,"00037-0110-16 ")
 ;;9
 ;;21,"00037-0113-60 ")
 ;;10
 ;;21,"00037-0114-60 ")
 ;;11
 ;;21,"00037-6010-30 ")
 ;;12
 ;;21,"00037-6050-30 ")
 ;;13
 ;;21,"00054-0085-25 ")
 ;;14
 ;;21,"00054-0086-25 ")
 ;;15
 ;;21,"00054-0086-29 ")
 ;;16
 ;;21,"00054-0087-25 ")
 ;;17
 ;;21,"00054-0087-29 ")
 ;;18
 ;;21,"00054-0273-13 ")
 ;;19
 ;;21,"00054-0274-13 ")
 ;;20
 ;;21,"00054-0275-13 ")
 ;;21
 ;;21,"00054-0276-13 ")
 ;;22
 ;;21,"00054-0290-13 ")
 ;;23
 ;;21,"00054-0291-25 ")
 ;;24
 ;;21,"00054-0292-25 ")
 ;;25
 ;;21,"00093-0073-01 ")
 ;;26
 ;;21,"00093-0074-01 ")
 ;;27
 ;;21,"00093-5268-01 ")
 ;;28
 ;;21,"00093-5269-01 ")
 ;;29
 ;;21,"00093-5537-56 ")
 ;;30
 ;;21,"00093-5538-01 ")
 ;;31
 ;;21,"00093-5539-01 ")
 ;;32
 ;;21,"00093-9612-12 ")
 ;;33
 ;;21,"00095-0240-01 ")
 ;;34
 ;;21,"00095-0950-05 ")
 ;;35
 ;;21,"00095-3000-01 ")
 ;;36
 ;;21,"00095-7029-01 ")
 ;;37
 ;;21,"00095-7075-01 ")
 ;;38
 ;;21,"00143-1115-01 ")
 ;;39
 ;;21,"00143-1115-05 ")
 ;;40
 ;;21,"00143-1445-05 ")
 ;;41
 ;;21,"00143-1445-10 ")
 ;;42
 ;;21,"00143-1450-05 ")
 ;;43
 ;;21,"00143-1450-10 ")
 ;;44
 ;;21,"00143-1455-05 ")
 ;;45
 ;;21,"00143-1455-10 ")
 ;;46
 ;;21,"00143-1458-05 ")
 ;;47
 ;;21,"00143-1458-10 ")
 ;;48
 ;;21,"00143-1785-01 ")
 ;;49
 ;;21,"00143-1785-10 ")
 ;;50
 ;;21,"00143-1785-30 ")
 ;;51
 ;;21,"00143-1787-01 ")
 ;;52
 ;;21,"00143-1787-05 ")
 ;;53
 ;;21,"00143-3000-01 ")
 ;;54
 ;;21,"00143-3909-01 ")
 ;;55
 ;;21,"00143-3910-01 ")
 ;;56
 ;;21,"00179-1980-15 ")
 ;;57
 ;;21,"00179-1980-30 ")
 ;;58
 ;;21,"00179-1981-30 ")
 ;;59
 ;;21,"00187-0842-01 ")
 ;;60
 ;;21,"00187-0844-01 ")
 ;;61
 ;;21,"00228-3481-11 ")
 ;;62
 ;;21,"00228-3481-50 ")
 ;;63
 ;;21,"00228-3482-11 ")
 ;;64
 ;;21,"00228-3482-50 ")
 ;;65
 ;;21,"00378-0042-01 ")
 ;;66
 ;;21,"00378-0073-01 ")
 ;;67
 ;;21,"00378-0211-01 ")
 ;;68
 ;;21,"00378-0211-05 ")
 ;;69
 ;;21,"00378-0277-01 ")
 ;;70
 ;;21,"00378-0277-05 ")
 ;;71
 ;;21,"00378-0330-01 ")
 ;;72
 ;;21,"00378-0330-05 ")
 ;;73
 ;;21,"00378-0442-01 ")
 ;;74
 ;;21,"00378-0442-05 ")
 ;;75
 ;;21,"00378-0574-01 ")
 ;;76
 ;;21,"00378-0574-05 ")
 ;;77
 ;;21,"00378-0612-01 ")
 ;;78
 ;;21,"00378-0614-01 ")
 ;;79
 ;;21,"00378-0614-10 ")
 ;;80
 ;;21,"00378-0616-01 ")
 ;;81
 ;;21,"00378-0616-10 ")
 ;;82
 ;;21,"00378-0618-01 ")
 ;;83
 ;;21,"00378-0618-10 ")
 ;;84
 ;;21,"00378-1049-01 ")
 ;;85
 ;;21,"00378-1049-10 ")
 ;;86
 ;;21,"00378-2610-01 ")
 ;;87
 ;;21,"00378-2610-10 ")
 ;;88
 ;;21,"00378-2625-01 ")
 ;;89
 ;;21,"00378-2625-10 ")
 ;;90
 ;;21,"00378-2650-01 ")
 ;;91
 ;;21,"00378-2650-10 ")
 ;;92
 ;;21,"00378-2675-01 ")
 ;;93
 ;;21,"00378-2675-93 ")
 ;;94
 ;;21,"00378-2685-01 ")
 ;;95
 ;;21,"00378-2685-93 ")
 ;;96
 ;;21,"00378-2695-01 ")
 ;;97
 ;;21,"00378-2695-93 ")
 ;;98
 ;;21,"00378-3025-01 ")
 ;;99
 ;;21,"00378-3050-01 ")
 ;;100
 ;;21,"00378-3075-01 ")
 ;;101
 ;;21,"00378-3125-01 ")
 ;;102
 ;;21,"00378-3125-10 ")
 ;;103
 ;;21,"00378-4250-01 ")
 ;;104
 ;;21,"00378-4250-10 ")
 ;;105
 ;;21,"00378-5270-01 ")
 ;;106
 ;;21,"00378-5271-01 ")
 ;;107
 ;;21,"00378-5271-10 ")
 ;;108
 ;;21,"00378-5272-01 ")
 ;;109
 ;;21,"00378-5272-10 ")
 ;;110
 ;;21,"00378-5305-01 ")
 ;;111
 ;;21,"00378-5305-05 ")
 ;;112
 ;;21,"00378-5310-01 ")
 ;;113
 ;;21,"00378-5310-05 ")
 ;;114
 ;;21,"00378-5375-01 ")
 ;;115
 ;;21,"00378-5375-10 ")
 ;;116
 ;;21,"00378-6410-01 ")
 ;;117
 ;;21,"00378-6410-10 ")
 ;;118
 ;;21,"00378-6805-01 ")
 ;;119
 ;;21,"00378-6810-01 ")
 ;;120
 ;;21,"00378-6810-10 ")
 ;;121
 ;;21,"00406-9906-03 ")
 ;;122
 ;;21,"00406-9907-03 ")
 ;;123
 ;;21,"00406-9908-03 ")
 ;;124
 ;;21,"00406-9920-03 ")
 ;;125
 ;;21,"00406-9921-03 ")
 ;;126
 ;;21,"00406-9922-03 ")
 ;;127
 ;;21,"00406-9923-03 ")
 ;;128
 ;;21,"00406-9924-03 ")
 ;;129
 ;;21,"00406-9925-03 ")
 ;;130
 ;;21,"00406-9926-03 ")
 ;;131
 ;;21,"00406-9931-03 ")
 ;;132
 ;;21,"00406-9932-03 ")
 ;;133
 ;;21,"00406-9933-03 ")
 ;;134
 ;;21,"00406-9934-03 ")
 ;;135
 ;;21,"00409-2349-31 ")
 ;;136
 ;;21,"00440-7090-30 ")
 ;;137
 ;;21,"00440-7090-81 ")
 ;;138
 ;;21,"00440-7090-85 ")
 ;;139
 ;;21,"00440-7091-30 ")
 ;;140
 ;;21,"00440-7091-60 ")
 ;;141
 ;;21,"00440-7091-81 ")
 ;;142
 ;;21,"00440-7091-85 ")
 ;;143
 ;;21,"00440-7091-90 ")
 ;;144
 ;;21,"00440-7091-91 ")
 ;;145
 ;;21,"00440-7091-92 ")
 ;;146
 ;;21,"00440-7091-94 ")
 ;;147
 ;;21,"00440-7092-30 ")
 ;;148
 ;;21,"00440-7092-60 ")
 ;;149
 ;;21,"00440-7092-81 ")
 ;;150
 ;;21,"00440-7092-85 ")
 ;;151
 ;;21,"00440-7092-90 ")
 ;;152
 ;;21,"00440-7092-91 ")
 ;;153
 ;;21,"00440-7092-94 ")
 ;;154
 ;;21,"00440-7093-30 ")
 ;;155
 ;;21,"00440-7093-81 ")
 ;;156
 ;;21,"00440-7093-85 ")
 ;;157
 ;;21,"00440-7094-81 ")
 ;;158
 ;;21,"00440-7094-85 ")
 ;;159
 ;;21,"00440-7094-90 ")
 ;;160
 ;;21,"00440-7183-20 ")
 ;;161
 ;;21,"00440-7211-30 ")
 ;;162
 ;;21,"00440-7307-30 ")
 ;;163
 ;;21,"00440-7308-30 ")
 ;;164
 ;;21,"00440-7309-30 ")
 ;;165
 ;;21,"00440-7635-90 ")
 ;;166
 ;;21,"00440-7636-90 ")
 ;;167
 ;;21,"00440-7702-30 ")
 ;;168
 ;;21,"00440-8085-01 ")
 ;;169
 ;;21,"00440-8085-30 ")
 ;;170
 ;;21,"00440-8085-90 ")
 ;;171
 ;;21,"00440-8085-91 ")
 ;;172
 ;;21,"00440-8085-92 ")
 ;;173
 ;;21,"00440-8085-94 ")
 ;;174
 ;;21,"00440-8085-95 ")
 ;;175
 ;;21,"00440-8754-02 ")
 ;;176
 ;;21,"00440-8754-14 ")
 ;;177
 ;;21,"00440-8754-30 ")
 ;;178
 ;;21,"00440-8754-60 ")
 ;;179
 ;;21,"00440-8755-07 ")
 ;;180
 ;;21,"00440-8755-10 ")
 ;;181
 ;;21,"00440-8755-14 ")
 ;;182
 ;;21,"00440-8755-30 ")
 ;;183
 ;;21,"00440-8755-60 ")
 ;;184
 ;;21,"00456-0678-01 ")
 ;;185
 ;;21,"00456-0679-01 ")
 ;;186
 ;;21,"00527-1312-01 ")
 ;;187
 ;;21,"00527-1552-01 ")
 ;;188
 ;;21,"00527-1695-01 ")
 ;;189
 ;;21,"00527-1695-05 ")
 ;;190
 ;;21,"00535-0011-01 ")
 ;;191
 ;;21,"00535-0012-01 ")
 ;;192
 ;;21,"00591-2640-01 ")
 ;;193
 ;;21,"00591-2640-05 ")
 ;;194
 ;;21,"00591-2641-01 ")
 ;;195
 ;;21,"00591-3219-01 ")
 ;;196
 ;;21,"00591-3220-01 ")
 ;;197
 ;;21,"00591-3369-01 ")
 ;;198
 ;;21,"00591-3369-05 ")
 ;;199
 ;;21,"00591-3546-01 ")
 ;;200
 ;;21,"00591-3546-05 ")
 ;;201
 ;;21,"00591-5238-01 ")
 ;;202
 ;;21,"00591-5239-01 ")
 ;;203
 ;;21,"00603-1508-58 ")
 ;;204
 ;;21,"00603-2212-02 ")
 ;;205
 ;;21,"00603-2212-16 ")
 ;;206
 ;;21,"00603-2212-21 ")
 ;;207
 ;;21,"00603-2212-32 ")
 ;;208
 ;;21,"00603-2213-02 ")
 ;;209
 ;;21,"00603-2213-21 ")
 ;;210
 ;;21,"00603-2213-30 ")
 ;;211
 ;;21,"00603-2213-32 ")
 ;;212
 ;;21,"00603-2214-21 ")
 ;;213
 ;;21,"00603-2214-32 ")
 ;;214
 ;;21,"00603-2215-21 ")
 ;;215
 ;;21,"00603-2215-25 ")
 ;;216
 ;;21,"00603-2216-21 ")
 ;;217
 ;;21,"00603-2216-25 ")
 ;;218
 ;;21,"00603-2217-21 ")
 ;;219
 ;;21,"00603-2540-21 ")
 ;;220
 ;;21,"00603-2544-02 ")
 ;;221
 ;;21,"00603-2544-20 ")
 ;;222
 ;;21,"00603-2544-21 ")
 ;;223
 ;;21,"00603-2544-28 ")
 ;;224
 ;;21,"00603-2544-32 ")
 ;;225
 ;;21,"00603-2545-21 ")
 ;;226
 ;;21,"00603-2545-28 ")
 ;;227
 ;;21,"00603-2548-21 ")
 ;;228
 ;;21,"00603-2553-21 ")
 ;;229
 ;;21,"00603-5165-21 ")
 ;;230
 ;;21,"00603-5165-32 ")
 ;;231
 ;;21,"00603-5166-02 ")
 ;;232
 ;;21,"00603-5166-16 ")
 ;;233
 ;;21,"00603-5166-20 ")
 ;;234
 ;;21,"00603-5166-21 ")
 ;;235
 ;;21,"00603-5166-22 ")
 ;;236
 ;;21,"00603-5166-32 ")
 ;;237
 ;;21,"00603-5167-21 ")
 ;;238
 ;;21,"00603-5167-32 ")
 ;;239
 ;;21,"00603-5168-21 ")
 ;;240
 ;;21,"00603-5168-32 ")
 ;;241
 ;;21,"00603-6468-09 ")
 ;;242
 ;;21,"00603-6468-16 ")
 ;;243
 ;;21,"00603-6468-21 ")
 ;;244
 ;;21,"00603-6468-28 ")
 ;;245
 ;;21,"00603-6468-32 ")
 ;;246
 ;;21,"00603-6469-09 ")
 ;;247
 ;;21,"00603-6469-13 ")
 ;;248
 ;;21,"00603-6469-16 ")
 ;;249
 ;;21,"00603-6469-20 ")
 ;;250
 ;;21,"00603-6469-21 ")
 ;;251
 ;;21,"00603-6469-28 ")
 ;;252
 ;;21,"00603-6469-32 ")
 ;;253
 ;;21,"00641-0476-21 ")
 ;;254
 ;;21,"00641-0476-25 ")
 ;;255
 ;;21,"00641-0477-21 ")
 ;;256
 ;;21,"00641-0477-25 ")
 ;;257
 ;;21,"00682-0804-01 ")
 ;;258
 ;;21,"00682-1400-01 ")
 ;;259
 ;;21,"00781-1486-01 ")
 ;;260
 ;;21,"00781-1486-10 ")
 ;;261
 ;;21,"00781-1487-01 ")
 ;;262
 ;;21,"00781-1487-10 ")
 ;;263
 ;;21,"00781-1488-01 ")
 ;;264
 ;;21,"00781-1488-10 ")
 ;;265
 ;;21,"00781-1489-01 ")
 ;;266
 ;;21,"00781-1490-01 ")
 ;;267
 ;;21,"00781-1491-01 ")
 ;;268
 ;;21,"00781-1762-01 ")
 ;;269
 ;;21,"00781-1764-01 ")
 ;;270
 ;;21,"00781-1764-10 ")
 ;;271
 ;;21,"00781-1764-13 ")
 ;;272
 ;;21,"00781-1766-01 ")
 ;;273
 ;;21,"00781-1766-10 ")
 ;;274
 ;;21,"00781-1766-13 ")
 ;;275
 ;;21,"00781-1840-01 ")
 ;;276
 ;;21,"00781-2027-01 ")
 ;;277
 ;;21,"00781-2037-01 ")
 ;;278
 ;;21,"00781-2047-01 ")
 ;;279
 ;;21,"00781-5315-01 ")
 ;;280
 ;;21,"00781-5315-05 ")
 ;;281
 ;;21,"00781-5316-01 ")
 ;;282
 ;;21,"00781-5316-05 ")
 ;;283
 ;;21,"00781-5317-01 ")
 ;;284
 ;;21,"00781-5317-10 ")
 ;;285
 ;;21,"00781-5318-01 ")
 ;;286
 ;;21,"00781-5318-10 ")
 ;;287
 ;;21,"00904-0201-61 ")
 ;;288
 ;;21,"00904-0202-61 ")
 ;;289
 ;;21,"00904-3892-60 ")
 ;;290
 ;;21,"00904-6082-61 ")
 ;;291
 ;;21,"00904-6083-61 ")
 ;;292
 ;;21,"00955-1702-10 ")
 ;;293
 ;;21,"00955-1703-10 ")
 ;;294
 ;;21,"10267-2929-03 ")
 ;;295
 ;;21,"10267-2929-05 ")
 ;;296
 ;;21,"10370-0116-10 ")
 ;;297
 ;;21,"10370-0116-50 ")
 ;;298
 ;;21,"10370-0117-10 ")
 ;;299
 ;;21,"10544-0040-15 ")
 ;;300
 ;;21,"10544-0109-30 ")
 ;;301
 ;;21,"10544-0110-30 ")
 ;;302
 ;;21,"10544-0152-30 ")
 ;;303
 ;;21,"10544-0156-30 ")
 ;;304
 ;;21,"10544-0156-90 ")
 ;;305
 ;;21,"10544-0157-90 ")
 ;;306
 ;;21,"10544-0250-30 ")
 ;;307
 ;;21,"10544-0548-30 ")
 ;;308
 ;;21,"10551-0091-10 ")
 ;;309
 ;;21,"11584-0029-01 ")
 ;;310
 ;;21,"11584-0030-01 ")
 ;;311
 ;;21,"12634-0401-71 ")
 ;;312
 ;;21,"12634-0944-71 ")
 ;;313
 ;;21,"13668-0007-01 ")
 ;;314
 ;;21,"13668-0007-05 ")
 ;;315
 ;;21,"13668-0007-10 ")
 ;;316
 ;;21,"13668-0007-15 ")
 ;;317
 ;;21,"13668-0007-30 ")
 ;;318
 ;;21,"13668-0007-71 ")
 ;;319
 ;;21,"13668-0007-74 ")
 ;;320
 ;;21,"13668-0007-90 ")
 ;;321
 ;;21,"13668-0008-01 ")
 ;;322
 ;;21,"13668-0008-05 ")
 ;;323
 ;;21,"13668-0008-10 ")
 ;;324
 ;;21,"13668-0008-15 ")
 ;;325
 ;;21,"13668-0008-30 ")
 ;;326
 ;;21,"13668-0008-71 ")
 ;;327
 ;;21,"13668-0008-74 ")
 ;;328
 ;;21,"13668-0008-90 ")
 ;;329
 ;;21,"13925-0158-16 ")
 ;;330
 ;;21,"15338-0600-60 ")
 ;;331
 ;;21,"16571-0330-16 ")
 ;;332
 ;;21,"16590-0009-20 ")
 ;;333
 ;;21,"16590-0009-30 ")
 ;;334
 ;;21,"16590-0009-60 ")
 ;;335
 ;;21,"16590-0009-90 ")
 ;;336
 ;;21,"16590-0010-20 ")
 ;;337
 ;;21,"16590-0010-28 ")
 ;;338
 ;;21,"16590-0010-30 ")
 ;;339
 ;
OTHER ; OTHER ROUTINES
 D ^BGP61A10
 D ^BGP61A11
 D ^BGP61A12
 D ^BGP61A13
 D ^BGP61A14
 D ^BGP61A15
 D ^BGP61A16
 D ^BGP61A17
 D ^BGP61A18
 D ^BGP61A19
 D ^BGP61A2
 D ^BGP61A20
 D ^BGP61A21
 D ^BGP61A22
 D ^BGP61A23
 D ^BGP61A24
 D ^BGP61A25
 D ^BGP61A26
 D ^BGP61A27
 D ^BGP61A28
 D ^BGP61A29
 D ^BGP61A3
 D ^BGP61A30
 D ^BGP61A31
 D ^BGP61A32
 D ^BGP61A4
 D ^BGP61A5
 D ^BGP61A6
 D ^BGP61A7
 D ^BGP61A8
 D ^BGP61A9
 Q