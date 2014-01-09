BGP2VJ ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 27, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;;BGP HEDIS PRIMARY ASTHMA NDC
 ;
 ; This routine loads Taxonomy BGP HEDIS PRIMARY ASTHMA NDC
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
 ;;21,"00006-3841-01 ")
 ;;15
 ;;21,"00006-3841-30 ")
 ;;16
 ;;21,"00034-7006-80 ")
 ;;17
 ;;21,"00037-0515-68 ")
 ;;18
 ;;21,"00037-0521-92 ")
 ;;19
 ;;21,"00037-0541-92 ")
 ;;20
 ;;21,"00037-0545-68 ")
 ;;21
 ;;21,"00037-0731-92 ")
 ;;22
 ;;21,"00037-0731-99 ")
 ;;23
 ;;21,"00074-3014-60 ")
 ;;24
 ;;21,"00074-8036-22 ")
 ;;25
 ;;21,"00085-1341-01 ")
 ;;26
 ;;21,"00085-1341-02 ")
 ;;27
 ;;21,"00085-1341-03 ")
 ;;28
 ;;21,"00085-1341-04 ")
 ;;29
 ;;21,"00085-1461-02 ")
 ;;30
 ;;21,"00085-1461-07 ")
 ;;31
 ;;21,"00085-4610-01 ")
 ;;32
 ;;21,"00085-7206-01 ")
 ;;33
 ;;21,"00089-0341-80 ")
 ;;34
 ;;21,"00093-6815-45 ")
 ;;35
 ;;21,"00093-6815-73 ")
 ;;36
 ;;21,"00093-6816-45 ")
 ;;37
 ;;21,"00093-6816-73 ")
 ;;38
 ;;21,"00121-4794-15 ")
 ;;39
 ;;21,"00143-1020-01 ")
 ;;40
 ;;21,"00143-1020-10 ")
 ;;41
 ;;21,"00143-1025-01 ")
 ;;42
 ;;21,"00143-1025-10 ")
 ;;43
 ;;21,"00172-6406-49 ")
 ;;44
 ;;21,"00172-6406-59 ")
 ;;45
 ;;21,"00173-0600-02 ")
 ;;46
 ;;21,"00173-0601-02 ")
 ;;47
 ;;21,"00173-0602-02 ")
 ;;48
 ;;21,"00173-0695-00 ")
 ;;49
 ;;21,"00173-0695-02 ")
 ;;50
 ;;21,"00173-0695-04 ")
 ;;51
 ;;21,"00173-0696-00 ")
 ;;52
 ;;21,"00173-0696-02 ")
 ;;53
 ;;21,"00173-0696-04 ")
 ;;54
 ;;21,"00173-0697-00 ")
 ;;55
 ;;21,"00173-0697-02 ")
 ;;56
 ;;21,"00173-0697-04 ")
 ;;57
 ;;21,"00173-0715-00 ")
 ;;58
 ;;21,"00173-0715-20 ")
 ;;59
 ;;21,"00173-0715-22 ")
 ;;60
 ;;21,"00173-0716-00 ")
 ;;61
 ;;21,"00173-0716-20 ")
 ;;62
 ;;21,"00173-0716-22 ")
 ;;63
 ;;21,"00173-0717-00 ")
 ;;64
 ;;21,"00173-0717-20 ")
 ;;65
 ;;21,"00173-0717-22 ")
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
 ;;21,"00182-0226-41 ")
 ;;73
 ;;21,"00182-1400-89 ")
 ;;74
 ;;21,"00182-1589-89 ")
 ;;75
 ;;21,"00182-1590-89 ")
 ;;76
 ;;21,"00186-0370-20 ")
 ;;77
 ;;21,"00186-0370-28 ")
 ;;78
 ;;21,"00186-0372-20 ")
 ;;79
 ;;21,"00186-0372-28 ")
 ;;80
 ;;21,"00186-0426-04 ")
 ;;81
 ;;21,"00186-0915-42 ")
 ;;82
 ;;21,"00186-0916-12 ")
 ;;83
 ;;21,"00186-0917-06 ")
 ;;84
 ;;21,"00186-1988-04 ")
 ;;85
 ;;21,"00186-1989-04 ")
 ;;86
 ;;21,"00186-1990-04 ")
 ;;87
 ;;21,"00223-6623-01 ")
 ;;88
 ;;21,"00247-0190-20 ")
 ;;89
 ;;21,"00247-0656-02 ")
 ;;90
 ;;21,"00247-0656-04 ")
 ;;91
 ;;21,"00247-0656-10 ")
 ;;92
 ;;21,"00247-0656-14 ")
 ;;93
 ;;21,"00247-0656-20 ")
 ;;94
 ;;21,"00247-0656-28 ")
 ;;95
 ;;21,"00247-0656-30 ")
 ;;96
 ;;21,"00247-0656-60 ")
 ;;97
 ;;21,"00247-0659-07 ")
 ;;98
 ;;21,"00247-0667-08 ")
 ;;99
 ;;21,"00247-0674-41 ")
 ;;100
 ;;21,"00247-0703-07 ")
 ;;101
 ;;21,"00247-0824-06 ")
 ;;102
 ;;21,"00247-0824-10 ")
 ;;103
 ;;21,"00247-0824-30 ")
 ;;104
 ;;21,"00247-0824-60 ")
 ;;105
 ;;21,"00247-0824-90 ")
 ;;106
 ;;21,"00247-0873-02 ")
 ;;107
 ;;21,"00247-0873-52 ")
 ;;108
 ;;21,"00247-0873-60 ")
 ;;109
 ;;21,"00247-1696-93 ")
 ;;110
 ;;21,"00247-1897-00 ")
 ;;111
 ;;21,"00247-1897-30 ")
 ;;112
 ;;21,"00247-1897-60 ")
 ;;113
 ;;21,"00247-1897-77 ")
 ;;114
 ;;21,"00247-1897-90 ")
 ;;115
 ;;21,"00247-1898-00 ")
 ;;116
 ;;21,"00247-1898-14 ")
 ;;117
 ;;21,"00247-1898-30 ")
 ;;118
 ;;21,"00247-1898-60 ")
 ;;119
 ;;21,"00247-1898-77 ")
 ;;120
 ;;21,"00247-1898-90 ")
 ;;121
 ;;21,"00247-1973-60 ")
 ;;122
 ;;21,"00247-1983-60 ")
 ;;123
 ;;21,"00247-1988-30 ")
 ;;124
 ;;21,"00247-2215-60 ")
 ;;125
 ;;21,"00258-3581-01 ")
 ;;126
 ;;21,"00258-3581-05 ")
 ;;127
 ;;21,"00258-3581-10 ")
 ;;128
 ;;21,"00258-3583-01 ")
 ;;129
 ;;21,"00258-3583-05 ")
 ;;130
 ;;21,"00258-3583-10 ")
 ;;131
 ;;21,"00258-3584-01 ")
 ;;132
 ;;21,"00258-3584-05 ")
 ;;133
 ;;21,"00258-3614-01 ")
 ;;134
 ;;21,"00258-3625-01 ")
 ;;135
 ;;21,"00258-3634-01 ")
 ;;136
 ;;21,"00258-3638-01 ")
 ;;137
 ;;21,"00281-1115-57 ")
 ;;138
 ;;21,"00281-1127-74 ")
 ;;139
 ;;21,"00310-0401-60 ")
 ;;140
 ;;21,"00310-0402-39 ")
 ;;141
 ;;21,"00310-0402-60 ")
 ;;142
 ;;21,"00310-0411-60 ")
 ;;143
 ;;21,"00310-0412-60 ")
 ;;144
 ;;21,"00430-0214-24 ")
 ;;145
 ;;21,"00430-0221-24 ")
 ;;146
 ;;21,"00456-0644-16 ")
 ;;147
 ;;21,"00456-0645-08 ")
 ;;148
 ;;21,"00456-0648-08 ")
 ;;149
 ;;21,"00456-0648-16 ")
 ;;150
 ;;21,"00456-0670-99 ")
 ;;151
 ;;21,"00456-0672-99 ")
 ;;152
 ;;21,"00456-3581-01 ")
 ;;153
 ;;21,"00456-3581-05 ")
 ;;154
 ;;21,"00456-3581-10 ")
 ;;155
 ;;21,"00456-4301-01 ")
 ;;156
 ;;21,"00456-4302-01 ")
 ;;157
 ;;21,"00456-4303-01 ")
 ;;158
 ;;21,"00456-4310-01 ")
 ;;159
 ;;21,"00456-4320-00 ")
 ;;160
 ;;21,"00456-4320-01 ")
 ;;161
 ;;21,"00456-4320-02 ")
 ;;162
 ;;21,"00456-4330-00 ")
 ;;163
 ;;21,"00456-4330-01 ")
 ;;164
 ;;21,"00456-4330-02 ")
 ;;165
 ;;21,"00456-4345-01 ")
 ;;166
 ;;21,"00463-9031-16 ")
 ;;167
 ;;21,"00472-0750-21 ")
 ;;168
 ;;21,"00472-0750-60 ")
 ;;169
 ;;21,"00472-0752-21 ")
 ;;170
 ;;21,"00472-0752-60 ")
 ;;171
 ;;21,"00472-1238-16 ")
 ;;172
 ;;21,"00485-0059-16 ")
 ;;173
 ;;21,"00490-0080-00 ")
 ;;174
 ;;21,"00490-0080-30 ")
 ;;175
 ;;21,"00490-0080-60 ")
 ;;176
 ;;21,"00490-0080-90 ")
 ;;177
 ;;21,"00525-0376-16 ")
 ;;178
 ;;21,"00551-0205-01 ")
 ;;179
 ;;21,"00585-0673-02 ")
 ;;180
 ;;21,"00585-0673-03 ")
 ;;181
 ;;21,"00603-1190-58 ")
 ;;182
 ;;21,"00603-5944-21 ")
 ;;183
 ;;21,"00603-5944-28 ")
 ;;184
 ;;21,"00603-5945-21 ")
 ;;185
 ;;21,"00603-5945-28 ")
 ;;186
 ;;21,"00603-5945-32 ")
 ;;187
 ;;21,"00603-5946-21 ")
 ;;188
 ;;21,"00603-5946-28 ")
 ;;189
 ;;21,"00603-5946-29 ")
 ;;190
 ;;21,"00603-5946-32 ")
 ;;191
 ;;21,"00603-5950-21 ")
 ;;192
 ;;21,"00603-5951-21 ")
 ;;193
 ;;21,"00603-5952-21 ")
 ;;194
 ;;21,"00677-0003-01 ")
 ;;195
 ;;21,"00677-0007-01 ")
 ;;196
 ;;21,"00677-0817-01 ")
 ;;197
 ;;21,"00677-0846-01 ")
 ;;198
 ;;21,"00904-1555-16 ")
 ;;199
 ;;21,"00904-1556-60 ")
 ;;200
 ;;21,"00904-1557-60 ")
 ;;201
 ;;21,"00904-1558-60 ")
 ;;202
 ;;21,"00904-1610-61 ")
 ;;203
 ;;21,"00904-1611-60 ")
 ;;204
 ;;21,"00904-1611-61 ")
 ;;205
 ;;21,"00904-1612-60 ")
 ;;206
 ;;21,"00904-1612-61 ")
 ;;207
 ;;21,"00904-2273-60 ")
 ;;208
 ;;21,"00904-2273-80 ")
 ;;209
 ;;21,"00904-2283-60 ")
 ;;210
 ;;21,"00904-2283-80 ")
 ;;211
 ;;21,"00904-5887-61 ")
 ;;212
 ;;21,"00904-5888-61 ")
 ;;213
 ;;21,"00904-5889-61 ")
 ;;214
 ;;21,"10122-0901-12 ")
 ;;215
 ;;21,"10122-0902-12 ")
 ;;216
 ;;21,"10892-0150-65 ")
 ;;217
 ;;21,"12280-0042-90 ")
 ;;218
 ;;21,"13411-0151-01 ")
 ;;219
 ;;21,"13411-0151-03 ")
 ;;220
 ;;21,"13411-0151-06 ")
 ;;221
 ;;21,"13411-0151-09 ")
 ;;222
 ;;21,"13411-0151-15 ")
 ;;223
 ;;21,"13411-0160-01 ")
 ;;224
 ;;21,"13411-0160-03 ")
 ;;225
 ;;21,"13411-0160-06 ")
 ;;226
 ;;21,"13411-0160-09 ")
 ;;227
 ;;21,"13411-0160-15 ")
 ;;228
 ;;21,"15370-0021-10 ")
 ;;229
 ;;21,"16590-0025-20 ")
 ;;230
 ;;21,"17236-0324-01 ")
 ;;231
 ;;21,"17236-0324-10 ")
 ;;232
 ;;21,"17236-0325-01 ")
 ;;233
 ;;21,"17236-0325-10 ")
 ;;234
 ;;21,"17236-0335-01 ")
 ;;235
 ;;21,"17856-0644-30 ")
 ;;236
 ;;21,"17856-0644-31 ")
 ;;237
 ;;21,"21695-0196-01 ")
 ;;238
 ;;21,"21695-0197-01 ")
 ;;239
 ;;21,"23490-7355-01 ")
 ;;240
 ;;21,"23490-7542-01 ")
 ;;241
 ;;21,"24839-0226-01 ")
 ;;242
 ;;21,"24839-0227-16 ")
 ;;243
 ;;21,"29033-0001-01 ")
 ;;244
 ;;21,"29033-0002-01 ")
 ;;245
 ;;21,"35356-0099-14 ")
 ;;246
 ;;21,"35356-0126-60 ")
 ;;247
 ;;21,"35356-0157-01 ")
 ;;248
 ;;21,"38130-0012-01 ")
 ;;249
 ;;21,"45985-0633-08 ")
 ;;250
 ;;21,"45985-0647-01 ")
 ;;251
 ;;21,"46672-0614-16 ")
 ;;252
 ;;21,"49502-0689-02 ")
 ;;253
 ;;21,"49502-0689-12 ")
 ;;254
 ;;21,"49502-0689-61 ")
 ;;255
 ;;21,"49708-0644-90 ")
 ;;256
 ;;21,"49884-0303-02 ")
 ;;257
 ;;21,"49884-0304-02 ")
 ;;258
 ;;21,"49999-0533-30 ")
 ;;259
 ;;21,"49999-0533-90 ")
 ;;260
 ;;21,"49999-0550-00 ")
 ;;261
 ;;21,"49999-0614-01 ")
 ;;262
 ;;21,"49999-0614-12 ")
 ;;263
 ;;21,"49999-0819-60 ")
 ;;264
 ;;21,"49999-0884-30 ")
 ;;265
 ;;21,"49999-0884-90 ")
 ;;266
 ;;21,"49999-0921-30 ")
 ;;267
 ;;21,"49999-0952-30 ")
 ;;268
 ;;21,"49999-0984-60 ")
 ;;269
 ;;21,"49999-0985-60 ")
 ;;270
 ;;21,"50111-0459-01 ")
 ;;271
 ;;21,"50111-0459-02 ")
 ;;272
 ;;21,"50111-0459-03 ")
 ;;273
 ;;21,"50111-0482-01 ")
 ;;274
 ;;21,"50111-0482-02 ")
 ;;275
 ;;21,"50111-0482-03 ")
 ;;276
 ;;21,"50111-0483-01 ")
 ;;277
 ;;21,"50111-0483-02 ")
 ;;278
 ;;21,"50111-0518-01 ")
 ;;279
 ;;21,"50242-0040-62 ")
 ;;280
 ;;21,"50383-0806-16 ")
 ;;281
 ;;21,"50474-0100-01 ")
 ;;282
 ;;21,"50474-0200-01 ")
 ;;283
 ;;21,"50474-0200-50 ")
 ;;284
 ;;21,"50474-0300-01 ")
 ;;285
 ;;21,"50474-0300-50 ")
 ;;286
 ;;21,"50474-0400-01 ")
 ;;287
 ;;21,"50991-0200-16 ")
 ;;288
 ;;21,"50991-0214-16 ")
 ;;289
 ;;21,"50991-0400-01 ")
 ;;290
 ;;21,"50991-0413-01 ")
 ;;291
 ;;21,"51991-0536-01 ")
 ;;292
 ;;21,"52959-0131-00 ")
 ;;293
 ;;21,"52959-0279-30 ")
 ;;294
 ;;21,"52959-0286-03 ")
 ;;295
 ;;21,"54569-0049-00 ")
 ;;296
 ;;21,"54569-0053-00 ")
 ;;297
 ;;21,"54569-0065-01 ")
 ;;298
 ;;21,"54569-0065-02 ")
 ;;299
 ;;21,"54569-0065-05 ")
 ;;300
 ;;21,"54569-1012-00 ")
 ;;301
 ;;21,"54569-1013-00 ")
 ;;302
 ;;21,"54569-1666-00 ")
 ;;303
 ;;21,"54569-3976-00 ")
 ;;304
 ;;21,"54569-4549-00 ")
 ;;305
 ;;21,"54569-4604-01 ")
 ;;306
 ;;21,"54569-4605-00 ")
 ;;307
 ;;21,"54569-4736-00 ")
 ;;308
 ;;21,"54569-4741-00 ")
 ;;309
 ;;21,"54569-4772-00 ")
 ;;310
 ;;21,"54569-5162-00 ")
 ;;311
 ;;21,"54569-5163-00 ")
 ;;312
 ;;21,"54569-5241-00 ")
 ;;313
 ;;21,"54569-5242-00 ")
 ;;314
 ;;21,"54569-5243-00 ")
 ;;315
 ;;21,"54569-5663-00 ")
 ;;316
 ;;21,"54569-5671-00 ")
 ;;317
 ;;21,"54569-5702-00 ")
 ;;318
 ;;21,"54569-5928-00 ")
 ;;319
 ;;21,"54838-0513-80 ")
 ;;320
 ;;21,"54838-0556-80 ")
 ;;321
 ;;21,"54839-0513-80 ")
 ;;322
 ;;21,"54868-0028-00 ")
 ;;323
 ;;21,"54868-0028-01 ")
 ;;324
 ;;21,"54868-0028-02 ")
 ;;325
 ;;21,"54868-0028-03 ")
 ;;326
 ;;21,"54868-0028-05 ")
 ;;327
 ;;21,"54868-0028-06 ")
 ;;328
 ;;21,"54868-0029-00 ")
 ;;329
 ;;21,"54868-0029-02 ")
 ;;330
 ;;21,"54868-0029-03 ")
 ;;331
 ;;21,"54868-0029-05 ")
 ;;332
 ;;21,"54868-0029-06 ")
 ;;333
 ;;21,"54868-0029-07 ")
 ;;334
 ;;21,"54868-1268-01 ")
 ;;335
 ;;21,"54868-1438-00 ")
 ;;336
 ;;21,"54868-1438-01 ")
 ;;337
 ;;21,"54868-1461-01 ")
 ;;338
 ;;21,"54868-1461-02 ")
 ;;339
 ;;21,"54868-1883-01 ")
 ;;340
 ;;21,"54868-1894-02 ")
 ;;341
 ;;21,"54868-2710-00 ")
 ;;342
 ;;21,"54868-2710-01 ")
 ;;343
 ;;21,"54868-2822-00 ")
 ;;344
 ;;21,"54868-3283-00 ")
 ;;345
 ;;21,"54868-3283-01 ")
 ;;346
 ;;21,"54868-3283-02 ")
 ;;347
 ;;21,"54868-3550-00 ")
 ;;348
 ;;21,"54868-3555-00 ")
 ;;349
 ;;21,"54868-4172-00 ")
 ;;350
 ;;21,"54868-4172-01 ")
 ;;351
 ;;21,"54868-4172-02 ")
 ;;352
 ;;21,"54868-4295-00 ")
 ;;353
 ;;21,"54868-4516-00 ")
 ;;354
 ;;21,"54868-4517-00 ")
 ;;355
 ;;21,"54868-4518-00 ")
 ;;356
 ;;21,"54868-4630-00 ")
 ;;357
 ;;21,"54868-4847-00 ")
 ;;358
 ;;21,"54868-5294-00 ")
 ;;359
 ;;21,"54868-5362-00 ")
 ;;360
 ;;21,"54868-5531-00 ")
 ;;361
 ;;21,"54868-5531-01 ")
 ;;362
 ;;21,"54868-5547-00 ")
 ;;363
 ;;21,"54868-5547-01 ")
 ;;364
 ;;21,"54868-5547-02 ")
 ;;365
 ;;21,"54868-5621-00 ")
 ;;366
 ;;21,"54868-5637-00 ")
 ;;367
 ;;21,"54868-5774-00 ")
 ;;368
 ;;21,"54868-5844-00 ")
 ;;369
 ;;21,"54868-5857-00 ")
 ;;370
 ;;21,"54868-5858-00 ")
 ;;371
 ;;21,"54868-5936-00 ")
 ;;372
 ;;21,"54868-5937-00 ")
 ;;373
 ;;21,"54868-5989-00 ")
 ;;374
 ;;21,"54868-5990-00 ")
 ;;375
 ;;21,"54868-5995-00 ")
 ;;376
 ;;21,"55045-1868-03 ")
 ;;377
 ;;21,"55045-2520-07 ")
 ;;378
 ;;21,"55045-3063-00 ")
 ;;379
 ;;21,"55045-3351-00 ")
 ;;380
 ;;21,"55045-3354-00 ")
 ;;381
 ;;21,"55045-3388-01 ")
 ;;382
 ;;21,"55045-3416-00 ")
 ;;383
 ;;21,"55045-3686-01 ")
 ;;384
 ;;21,"55045-3695-08 ")
 ;;385
 ;;21,"55045-3768-08 ")
 ;;386
 ;;21,"55111-0625-60 ")
 ;;387
 ;;21,"55111-0626-60 ")
 ;;388
 ;;21,"55289-0259-01 ")
 ;;389
 ;;21,"55289-0259-30 ")
 ;;390
 ;;21,"55289-0259-60 ")
 ;;391
 ;;21,"55289-0260-01 ")
 ;;392
 ;;21,"55289-0260-06 ")
 ;;393
 ;
OTHER ; OTHER ROUTINES
 D ^BGP2VJ2
 D ^BGP2VJ3
 D ^BGP2VJ4
 D ^BGP2VJ5
 D ^BGP2VJ6
 Q