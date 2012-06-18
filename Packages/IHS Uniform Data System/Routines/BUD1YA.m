BUD1YA ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON NOV 25, 2011 ;
 ;;6.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 23, 2012;Build 25
 ;;BGP PQA CONTROLLER NDC
 ;
 ; This routine loads Taxonomy BGP PQA CONTROLLER NDC
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
 ;;21,"00006-0117-01 ")
 ;;1
 ;;21,"00006-0117-28 ")
 ;;2
 ;;21,"00006-0117-31 ")
 ;;3
 ;;21,"00006-0117-54 ")
 ;;4
 ;;21,"00006-0117-80 ")
 ;;5
 ;;21,"00006-0275-01 ")
 ;;6
 ;;21,"00006-0275-28 ")
 ;;7
 ;;21,"00006-0275-31 ")
 ;;8
 ;;21,"00006-0275-54 ")
 ;;9
 ;;21,"00006-0275-82 ")
 ;;10
 ;;21,"00006-0711-01 ")
 ;;11
 ;;21,"00006-0711-28 ")
 ;;12
 ;;21,"00006-0711-31 ")
 ;;13
 ;;21,"00006-0711-54 ")
 ;;14
 ;;21,"00006-3841-30 ")
 ;;15
 ;;21,"00034-7004-70 ")
 ;;16
 ;;21,"00034-7004-80 ")
 ;;17
 ;;21,"00034-7006-80 ")
 ;;18
 ;;21,"00034-7102-80 ")
 ;;19
 ;;21,"00074-3014-60 ")
 ;;20
 ;;21,"00074-8036-22 ")
 ;;21
 ;;21,"00075-0060-37 ")
 ;;22
 ;;21,"00083-0167-02 ")
 ;;23
 ;;21,"00083-0167-74 ")
 ;;24
 ;;21,"00085-0736-04 ")
 ;;25
 ;;21,"00085-1112-01 ")
 ;;26
 ;;21,"00085-1112-03 ")
 ;;27
 ;;21,"00085-1341-01 ")
 ;;28
 ;;21,"00085-1341-02 ")
 ;;29
 ;;21,"00085-1341-03 ")
 ;;30
 ;;21,"00085-1341-04 ")
 ;;31
 ;;21,"00085-1401-01 ")
 ;;32
 ;;21,"00085-1402-01 ")
 ;;33
 ;;21,"00085-1402-02 ")
 ;;34
 ;;21,"00085-1461-02 ")
 ;;35
 ;;21,"00085-1461-07 ")
 ;;36
 ;;21,"00085-4610-01 ")
 ;;37
 ;;21,"00085-7206-01 ")
 ;;38
 ;;21,"00089-0175-40 ")
 ;;39
 ;;21,"00089-0177-80 ")
 ;;40
 ;;21,"00173-0464-00 ")
 ;;41
 ;;21,"00173-0465-00 ")
 ;;42
 ;;21,"00173-0467-00 ")
 ;;43
 ;;21,"00173-0491-00 ")
 ;;44
 ;;21,"00173-0494-00 ")
 ;;45
 ;;21,"00173-0495-00 ")
 ;;46
 ;;21,"00173-0497-00 ")
 ;;47
 ;;21,"00173-0498-00 ")
 ;;48
 ;;21,"00173-0499-00 ")
 ;;49
 ;;21,"00173-0504-00 ")
 ;;50
 ;;21,"00173-0509-00 ")
 ;;51
 ;;21,"00173-0511-00 ")
 ;;52
 ;;21,"00173-0520-00 ")
 ;;53
 ;;21,"00173-0521-00 ")
 ;;54
 ;;21,"00173-0600-02 ")
 ;;55
 ;;21,"00173-0601-02 ")
 ;;56
 ;;21,"00173-0602-02 ")
 ;;57
 ;;21,"00173-0695-00 ")
 ;;58
 ;;21,"00173-0695-02 ")
 ;;59
 ;;21,"00173-0695-04 ")
 ;;60
 ;;21,"00173-0696-00 ")
 ;;61
 ;;21,"00173-0696-02 ")
 ;;62
 ;;21,"00173-0696-04 ")
 ;;63
 ;;21,"00173-0697-00 ")
 ;;64
 ;;21,"00173-0697-02 ")
 ;;65
 ;;21,"00173-0697-04 ")
 ;;66
 ;;21,"00173-0718-00 ")
 ;;67
 ;;21,"00173-0718-20 ")
 ;;68
 ;;21,"00173-0719-00 ")
 ;;69
 ;;21,"00173-0719-20 ")
 ;;70
 ;;21,"00173-0720-00 ")
 ;;71
 ;;21,"00173-0720-20 ")
 ;;72
 ;;21,"00182-1400-89 ")
 ;;73
 ;;21,"00182-1589-89 ")
 ;;74
 ;;21,"00182-1590-89 ")
 ;;75
 ;;21,"00186-0370-20 ")
 ;;76
 ;;21,"00186-0370-28 ")
 ;;77
 ;;21,"00186-0372-20 ")
 ;;78
 ;;21,"00186-0372-28 ")
 ;;79
 ;;21,"00186-0915-42 ")
 ;;80
 ;;21,"00186-0916-12 ")
 ;;81
 ;;21,"00186-0917-06 ")
 ;;82
 ;;21,"00247-0667-08 ")
 ;;83
 ;;21,"00247-0674-41 ")
 ;;84
 ;;21,"00256-0114-01 ")
 ;;85
 ;;21,"00256-0115-01 ")
 ;;86
 ;;21,"00256-0150-01 ")
 ;;87
 ;;21,"00258-3581-01 ")
 ;;88
 ;;21,"00258-3581-05 ")
 ;;89
 ;;21,"00258-3581-10 ")
 ;;90
 ;;21,"00258-3583-01 ")
 ;;91
 ;;21,"00258-3583-05 ")
 ;;92
 ;;21,"00258-3583-10 ")
 ;;93
 ;;21,"00258-3584-01 ")
 ;;94
 ;;21,"00258-3584-05 ")
 ;;95
 ;;21,"00258-3614-01 ")
 ;;96
 ;;21,"00258-3625-01 ")
 ;;97
 ;;21,"00258-3634-01 ")
 ;;98
 ;;21,"00258-3638-01 ")
 ;;99
 ;;21,"00310-0401-60 ")
 ;;100
 ;;21,"00310-0402-39 ")
 ;;101
 ;;21,"00310-0402-60 ")
 ;;102
 ;;21,"00310-0411-60 ")
 ;;103
 ;;21,"00310-0412-60 ")
 ;;104
 ;;21,"00440-8355-99 ")
 ;;105
 ;;21,"00440-8530-30 ")
 ;;106
 ;;21,"00440-8531-10 ")
 ;;107
 ;;21,"00440-8531-30 ")
 ;;108
 ;;21,"00440-8531-90 ")
 ;;109
 ;;21,"00440-8531-94 ")
 ;;110
 ;;21,"00440-8532-20 ")
 ;;111
 ;;21,"00440-8532-30 ")
 ;;112
 ;;21,"00440-8532-90 ")
 ;;113
 ;;21,"00440-8532-94 ")
 ;;114
 ;;21,"00456-0670-99 ")
 ;;115
 ;;21,"00456-0672-99 ")
 ;;116
 ;;21,"00456-4301-01 ")
 ;;117
 ;;21,"00456-4302-01 ")
 ;;118
 ;;21,"00456-4303-01 ")
 ;;119
 ;;21,"00456-4310-01 ")
 ;;120
 ;;21,"00456-4310-02 ")
 ;;121
 ;;21,"00456-4320-00 ")
 ;;122
 ;;21,"00456-4320-01 ")
 ;;123
 ;;21,"00456-4320-02 ")
 ;;124
 ;;21,"00456-4330-00 ")
 ;;125
 ;;21,"00456-4330-01 ")
 ;;126
 ;;21,"00456-4330-02 ")
 ;;127
 ;;21,"00456-4345-01 ")
 ;;128
 ;;21,"00490-0080-00 ")
 ;;129
 ;;21,"00490-0080-30 ")
 ;;130
 ;;21,"00490-0080-60 ")
 ;;131
 ;;21,"00490-0080-90 ")
 ;;132
 ;;21,"00585-0675-01 ")
 ;;133
 ;;21,"00585-0675-02 ")
 ;;134
 ;;21,"00585-0685-02 ")
 ;;135
 ;;21,"00603-5944-21 ")
 ;;136
 ;;21,"00603-5944-28 ")
 ;;137
 ;;21,"00603-5945-21 ")
 ;;138
 ;;21,"00603-5945-28 ")
 ;;139
 ;;21,"00603-5945-32 ")
 ;;140
 ;;21,"00603-5946-21 ")
 ;;141
 ;;21,"00603-5946-28 ")
 ;;142
 ;;21,"00603-5946-32 ")
 ;;143
 ;;21,"00603-5950-21 ")
 ;;144
 ;;21,"00603-5951-21 ")
 ;;145
 ;;21,"00603-5952-21 ")
 ;;146
 ;;21,"00677-0817-01 ")
 ;;147
 ;;21,"00677-0817-05 ")
 ;;148
 ;;21,"00677-0846-01 ")
 ;;149
 ;;21,"00677-0846-05 ")
 ;;150
 ;;21,"00904-1610-60 ")
 ;;151
 ;;21,"00904-1610-61 ")
 ;;152
 ;;21,"00904-1611-60 ")
 ;;153
 ;;21,"00904-1611-61 ")
 ;;154
 ;;21,"00904-1611-80 ")
 ;;155
 ;;21,"00904-1612-40 ")
 ;;156
 ;;21,"00904-1612-60 ")
 ;;157
 ;;21,"00904-1612-61 ")
 ;;158
 ;;21,"00904-1612-80 ")
 ;;159
 ;;21,"00904-5887-61 ")
 ;;160
 ;;21,"00904-5888-61 ")
 ;;161
 ;;21,"00904-5889-61 ")
 ;;162
 ;;21,"00904-7849-60 ")
 ;;163
 ;;21,"10122-0901-12 ")
 ;;164
 ;;21,"10122-0902-12 ")
 ;;165
 ;;21,"12280-0042-90 ")
 ;;166
 ;;21,"12280-0173-60 ")
 ;;167
 ;;21,"13411-0151-01 ")
 ;;168
 ;;21,"13411-0151-03 ")
 ;;169
 ;;21,"13411-0151-06 ")
 ;;170
 ;;21,"13411-0151-09 ")
 ;;171
 ;;21,"13411-0151-15 ")
 ;;172
 ;;21,"13411-0160-01 ")
 ;;173
 ;;21,"13411-0160-03 ")
 ;;174
 ;;21,"13411-0160-06 ")
 ;;175
 ;;21,"13411-0160-09 ")
 ;;176
 ;;21,"13411-0160-15 ")
 ;;177
 ;;21,"16571-0011-10 ")
 ;;178
 ;;21,"16590-0025-20 ")
 ;;179
 ;;21,"16590-0860-71 ")
 ;;180
 ;;21,"16590-0860-73 ")
 ;;181
 ;;21,"17236-0324-01 ")
 ;;182
 ;;21,"17236-0324-10 ")
 ;;183
 ;;21,"17236-0325-01 ")
 ;;184
 ;;21,"17236-0325-10 ")
 ;;185
 ;;21,"17236-0335-01 ")
 ;;186
 ;;21,"17236-0335-05 ")
 ;;187
 ;;21,"21695-0196-01 ")
 ;;188
 ;;21,"21695-0197-01 ")
 ;;189
 ;;21,"21695-0221-30 ")
 ;;190
 ;;21,"21695-0565-30 ")
 ;;191
 ;;21,"23490-0144-03 ")
 ;;192
 ;;21,"23490-0145-03 ")
 ;;193
 ;;21,"23490-7355-01 ")
 ;;194
 ;;21,"23490-7541-01 ")
 ;;195
 ;;21,"23490-7542-01 ")
 ;;196
 ;;21,"23490-8018-03 ")
 ;;197
 ;;21,"23490-9405-00 ")
 ;;198
 ;;21,"29033-0001-01 ")
 ;;199
 ;;21,"29033-0002-01 ")
 ;;200
 ;;21,"35356-0099-14 ")
 ;;201
 ;;21,"35356-0126-60 ")
 ;;202
 ;;21,"35356-0157-01 ")
 ;;203
 ;;21,"35356-0494-01 ")
 ;;204
 ;;21,"47463-0530-30 ")
 ;;205
 ;;21,"47463-0531-30 ")
 ;;206
 ;;21,"49884-0303-02 ")
 ;;207
 ;;21,"49884-0304-02 ")
 ;;208
 ;;21,"49999-0300-28 ")
 ;;209
 ;;21,"49999-0533-30 ")
 ;;210
 ;;21,"49999-0533-90 ")
 ;;211
 ;;21,"49999-0614-01 ")
 ;;212
 ;;21,"49999-0614-12 ")
 ;;213
 ;;21,"49999-0819-60 ")
 ;;214
 ;;21,"49999-0884-30 ")
 ;;215
 ;;21,"49999-0884-90 ")
 ;;216
 ;;21,"49999-0921-30 ")
 ;;217
 ;;21,"49999-0952-30 ")
 ;;218
 ;;21,"49999-0984-60 ")
 ;;219
 ;;21,"49999-0985-60 ")
 ;;220
 ;;21,"50111-0459-01 ")
 ;;221
 ;;21,"50111-0459-02 ")
 ;;222
 ;;21,"50111-0459-03 ")
 ;;223
 ;;21,"50111-0482-01 ")
 ;;224
 ;;21,"50111-0482-02 ")
 ;;225
 ;;21,"50111-0482-03 ")
 ;;226
 ;;21,"50111-0483-01 ")
 ;;227
 ;;21,"50111-0483-02 ")
 ;;228
 ;;21,"50111-0518-01 ")
 ;;229
 ;;21,"50474-0100-01 ")
 ;;230
 ;;21,"50474-0200-01 ")
 ;;231
 ;;21,"50474-0200-50 ")
 ;;232
 ;;21,"50474-0200-60 ")
 ;;233
 ;;21,"50474-0300-01 ")
 ;;234
 ;;21,"50474-0300-50 ")
 ;;235
 ;;21,"50474-0300-60 ")
 ;;236
 ;;21,"50474-0400-01 ")
 ;;237
 ;;21,"51655-0256-24 ")
 ;;238
 ;;21,"51655-0291-24 ")
 ;;239
 ;;21,"52959-0131-00 ")
 ;;240
 ;;21,"52959-0279-30 ")
 ;;241
 ;;21,"52959-0286-03 ")
 ;;242
 ;;21,"52959-1198-00 ")
 ;;243
 ;;21,"52959-1447-01 ")
 ;;244
 ;;21,"52959-1466-01 ")
 ;;245
 ;;21,"53002-1436-01 ")
 ;;246
 ;;21,"53002-1477-01 ")
 ;;247
 ;;21,"53265-0379-10 ")
 ;;248
 ;;21,"53265-0379-50 ")
 ;;249
 ;;21,"53265-0380-10 ")
 ;;250
 ;;21,"53265-0380-50 ")
 ;;251
 ;;21,"53265-0381-10 ")
 ;;252
 ;;21,"53265-0382-10 ")
 ;;253
 ;;21,"54348-0155-10 ")
 ;;254
 ;;21,"54348-0156-14 ")
 ;;255
 ;;21,"54569-0049-00 ")
 ;;256
 ;;21,"54569-0053-00 ")
 ;;257
 ;;21,"54569-0067-00 ")
 ;;258
 ;;21,"54569-1012-00 ")
 ;;259
 ;;21,"54569-1013-00 ")
 ;;260
 ;;21,"54569-1664-01 ")
 ;;261
 ;;21,"54569-1666-00 ")
 ;;262
 ;;21,"54569-1666-01 ")
 ;;263
 ;;21,"54569-2032-00 ")
 ;;264
 ;;21,"54569-2482-00 ")
 ;;265
 ;;21,"54569-2482-01 ")
 ;;266
 ;;21,"54569-2482-05 ")
 ;;267
 ;;21,"54569-2483-00 ")
 ;;268
 ;;21,"54569-2483-01 ")
 ;;269
 ;;21,"54569-2483-02 ")
 ;;270
 ;;21,"54569-2483-03 ")
 ;;271
 ;;21,"54569-3855-00 ")
 ;;272
 ;;21,"54569-3976-00 ")
 ;;273
 ;;21,"54569-4540-00 ")
 ;;274
 ;;21,"54569-4602-00 ")
 ;;275
 ;;21,"54569-4603-00 ")
 ;;276
 ;;21,"54569-4604-00 ")
 ;;277
 ;;21,"54569-4604-01 ")
 ;;278
 ;;21,"54569-4605-00 ")
 ;;279
 ;;21,"54569-4605-01 ")
 ;;280
 ;;21,"54569-4736-00 ")
 ;;281
 ;;21,"54569-4741-00 ")
 ;;282
 ;;21,"54569-4822-00 ")
 ;;283
 ;;21,"54569-4863-00 ")
 ;;284
 ;;21,"54569-4867-00 ")
 ;;285
 ;;21,"54569-4896-00 ")
 ;;286
 ;;21,"54569-5167-00 ")
 ;;287
 ;;21,"54569-5241-00 ")
 ;;288
 ;;21,"54569-5242-00 ")
 ;;289
 ;;21,"54569-5243-00 ")
 ;;290
 ;;21,"54569-5254-00 ")
 ;;291
 ;;21,"54569-5663-00 ")
 ;;292
 ;;21,"54569-5671-00 ")
 ;;293
 ;;21,"54569-5702-00 ")
 ;;294
 ;;21,"54569-5928-00 ")
 ;;295
 ;;21,"54868-0028-00 ")
 ;;296
 ;;21,"54868-0028-01 ")
 ;;297
 ;;21,"54868-0028-02 ")
 ;;298
 ;;21,"54868-0028-03 ")
 ;;299
 ;;21,"54868-0028-05 ")
 ;;300
 ;;21,"54868-0028-06 ")
 ;;301
 ;;21,"54868-0029-00 ")
 ;;302
 ;;21,"54868-0029-02 ")
 ;;303
 ;;21,"54868-0029-03 ")
 ;;304
 ;;21,"54868-0029-05 ")
 ;;305
 ;;21,"54868-0029-06 ")
 ;;306
 ;;21,"54868-0029-07 ")
 ;;307
 ;;21,"54868-1268-01 ")
 ;;308
 ;;21,"54868-1269-01 ")
 ;;309
 ;;21,"54868-1438-00 ")
 ;;310
 ;;21,"54868-1438-01 ")
 ;;311
 ;;21,"54868-1438-02 ")
 ;;312
 ;;21,"54868-1461-01 ")
 ;;313
 ;;21,"54868-1461-02 ")
 ;;314
 ;;21,"54868-1841-01 ")
 ;;315
 ;;21,"54868-1883-01 ")
 ;;316
 ;;21,"54868-1894-02 ")
 ;;317
 ;;21,"54868-2710-00 ")
 ;;318
 ;;21,"54868-2710-01 ")
 ;;319
 ;;21,"54868-2822-00 ")
 ;;320
 ;;21,"54868-3283-00 ")
 ;;321
 ;;21,"54868-3283-01 ")
 ;;322
 ;;21,"54868-3283-02 ")
 ;;323
 ;;21,"54868-3702-00 ")
 ;;324
 ;;21,"54868-4172-00 ")
 ;;325
 ;;21,"54868-4172-01 ")
 ;;326
 ;;21,"54868-4172-02 ")
 ;;327
 ;;21,"54868-4182-00 ")
 ;;328
 ;;21,"54868-4264-00 ")
 ;;329
 ;;21,"54868-4295-00 ")
 ;;330
 ;;21,"54868-4392-00 ")
 ;;331
 ;;21,"54868-4481-00 ")
 ;;332
 ;;21,"54868-4516-00 ")
 ;;333
 ;;21,"54868-4517-00 ")
 ;;334
 ;;21,"54868-4518-00 ")
 ;;335
 ;;21,"54868-4630-00 ")
 ;;336
 ;;21,"54868-4847-00 ")
 ;;337
 ;;21,"54868-4972-00 ")
 ;;338
 ;;21,"54868-4972-01 ")
 ;;339
 ;;21,"54868-5294-00 ")
 ;;340
 ;;21,"54868-5362-00 ")
 ;;341
 ;;21,"54868-5531-00 ")
 ;;342
 ;;21,"54868-5531-01 ")
 ;;343
 ;;21,"54868-5547-00 ")
 ;;344
 ;;21,"54868-5547-01 ")
 ;;345
 ;;21,"54868-5547-02 ")
 ;;346
 ;;21,"54868-5637-00 ")
 ;;347
 ;;21,"54868-5844-00 ")
 ;;348
 ;;21,"54868-5857-00 ")
 ;;349
 ;;21,"54868-5857-01 ")
 ;;350
 ;;21,"54868-5858-00 ")
 ;;351
 ;;21,"54868-5858-01 ")
 ;;352
 ;;21,"54868-5936-00 ")
 ;;353
 ;;21,"54868-5937-00 ")
 ;;354
 ;;21,"54868-5989-00 ")
 ;;355
 ;;21,"54868-5990-00 ")
 ;;356
 ;;21,"54868-5995-00 ")
 ;;357
 ;;21,"55045-1312-03 ")
 ;;358
 ;;21,"55045-1312-07 ")
 ;;359
 ;;21,"55045-1452-02 ")
 ;;360
 ;;21,"55045-1452-03 ")
 ;;361
 ;;21,"55045-1452-08 ")
 ;;362
 ;;21,"55045-1452-09 ")
 ;;363
 ;;21,"55045-1638-01 ")
 ;;364
 ;;21,"55045-1868-03 ")
 ;;365
 ;;21,"55045-2520-07 ")
 ;;366
 ;;21,"55045-2819-00 ")
 ;;367
 ;;21,"55045-2919-01 ")
 ;;368
 ;;21,"55045-3054-01 ")
 ;;369
 ;;21,"55045-3063-00 ")
 ;;370
 ;;21,"55045-3351-00 ")
 ;;371
 ;;21,"55045-3354-00 ")
 ;;372
 ;;21,"55045-3388-01 ")
 ;;373
 ;;21,"55045-3416-00 ")
 ;;374
 ;;21,"55045-3686-01 ")
 ;;375
 ;;21,"55045-3695-08 ")
 ;;376
 ;;21,"55045-3768-08 ")
 ;;377
 ;;21,"55111-0625-60 ")
 ;;378
 ;;21,"55111-0626-60 ")
 ;;379
 ;;21,"55289-0155-97 ")
 ;;380
 ;;21,"55289-0259-01 ")
 ;;381
 ;;21,"55289-0259-30 ")
 ;;382
 ;;21,"55289-0259-60 ")
 ;;383
 ;;21,"55289-0260-01 ")
 ;;384
 ;;21,"55289-0260-06 ")
 ;;385
 ;;21,"55289-0260-20 ")
 ;;386
 ;;21,"55289-0260-30 ")
 ;;387
 ;;21,"55289-0260-60 ")
 ;;388
 ;;21,"55289-0260-97 ")
 ;;389
 ;;21,"55289-0317-30 ")
 ;;390
 ;;21,"55289-0317-60 ")
 ;;391
 ;;21,"55289-0751-30 ")
 ;;392
 ;;21,"55289-0751-60 ")
 ;;393
 ;
OTHER ; OTHER ROUTINES
 D ^BUD1YAB
 D ^BUD1YAC
 D ^BUD1YAD
 D ^BUD1YAE
 D ^BUD1YAF
 Q