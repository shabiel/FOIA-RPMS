BGP53N ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 24, 2015;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
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
 ;;21,"00006-1711-31 ")
 ;;15
 ;;21,"00006-1711-54 ")
 ;;16
 ;;21,"00006-3841-30 ")
 ;;17
 ;;21,"00006-9117-31 ")
 ;;18
 ;;21,"00006-9117-54 ")
 ;;19
 ;;21,"00006-9117-80 ")
 ;;20
 ;;21,"00006-9275-31 ")
 ;;21
 ;;21,"00006-9275-54 ")
 ;;22
 ;;21,"00006-9275-82 ")
 ;;23
 ;;21,"00037-0521-92 ")
 ;;24
 ;;21,"00037-0541-92 ")
 ;;25
 ;;21,"00037-0545-68 ")
 ;;26
 ;;21,"00037-0731-92 ")
 ;;27
 ;;21,"00054-0259-13 ")
 ;;28
 ;;21,"00054-0259-22 ")
 ;;29
 ;;21,"00054-0288-13 ")
 ;;30
 ;;21,"00054-0288-22 ")
 ;;31
 ;;21,"00054-0289-13 ")
 ;;32
 ;;21,"00054-0289-22 ")
 ;;33
 ;;21,"00085-1341-01 ")
 ;;34
 ;;21,"00085-1341-02 ")
 ;;35
 ;;21,"00085-1341-03 ")
 ;;36
 ;;21,"00085-1341-04 ")
 ;;37
 ;;21,"00085-1341-06 ")
 ;;38
 ;;21,"00085-1341-07 ")
 ;;39
 ;;21,"00085-1461-02 ")
 ;;40
 ;;21,"00085-1461-07 ")
 ;;41
 ;;21,"00085-4610-01 ")
 ;;42
 ;;21,"00085-4610-05 ")
 ;;43
 ;;21,"00085-7206-01 ")
 ;;44
 ;;21,"00085-7206-07 ")
 ;;45
 ;;21,"00093-7424-56 ")
 ;;46
 ;;21,"00093-7424-98 ")
 ;;47
 ;;21,"00093-7425-56 ")
 ;;48
 ;;21,"00093-7425-98 ")
 ;;49
 ;;21,"00093-7426-10 ")
 ;;50
 ;;21,"00093-7426-56 ")
 ;;51
 ;;21,"00093-7426-98 ")
 ;;52
 ;;21,"00093-7487-56 ")
 ;;53
 ;;21,"00121-4794-15 ")
 ;;54
 ;;21,"00143-1020-01 ")
 ;;55
 ;;21,"00143-1020-10 ")
 ;;56
 ;;21,"00143-1025-01 ")
 ;;57
 ;;21,"00143-1025-10 ")
 ;;58
 ;;21,"00173-0600-02 ")
 ;;59
 ;;21,"00173-0601-00 ")
 ;;60
 ;;21,"00173-0601-02 ")
 ;;61
 ;;21,"00173-0602-00 ")
 ;;62
 ;;21,"00173-0602-02 ")
 ;;63
 ;;21,"00173-0695-00 ")
 ;;64
 ;;21,"00173-0695-04 ")
 ;;65
 ;;21,"00173-0696-00 ")
 ;;66
 ;;21,"00173-0696-04 ")
 ;;67
 ;;21,"00173-0697-00 ")
 ;;68
 ;;21,"00173-0697-04 ")
 ;;69
 ;;21,"00173-0715-20 ")
 ;;70
 ;;21,"00173-0715-22 ")
 ;;71
 ;;21,"00173-0716-20 ")
 ;;72
 ;;21,"00173-0716-22 ")
 ;;73
 ;;21,"00173-0717-20 ")
 ;;74
 ;;21,"00173-0717-22 ")
 ;;75
 ;;21,"00173-0718-20 ")
 ;;76
 ;;21,"00173-0719-20 ")
 ;;77
 ;;21,"00173-0720-20 ")
 ;;78
 ;;21,"00186-0370-20 ")
 ;;79
 ;;21,"00186-0370-28 ")
 ;;80
 ;;21,"00186-0372-20 ")
 ;;81
 ;;21,"00186-0372-28 ")
 ;;82
 ;;21,"00186-0916-12 ")
 ;;83
 ;;21,"00186-0917-06 ")
 ;;84
 ;;21,"00247-0656-02 ")
 ;;85
 ;;21,"00247-0656-04 ")
 ;;86
 ;;21,"00247-0656-10 ")
 ;;87
 ;;21,"00247-0656-14 ")
 ;;88
 ;;21,"00247-0656-20 ")
 ;;89
 ;;21,"00247-0656-28 ")
 ;;90
 ;;21,"00247-0656-30 ")
 ;;91
 ;;21,"00247-0656-60 ")
 ;;92
 ;;21,"00247-0659-07 ")
 ;;93
 ;;21,"00247-0703-07 ")
 ;;94
 ;;21,"00247-0824-06 ")
 ;;95
 ;;21,"00247-0824-10 ")
 ;;96
 ;;21,"00247-0824-30 ")
 ;;97
 ;;21,"00247-0824-60 ")
 ;;98
 ;;21,"00247-0824-90 ")
 ;;99
 ;;21,"00247-1897-00 ")
 ;;100
 ;;21,"00247-1897-30 ")
 ;;101
 ;;21,"00247-1897-60 ")
 ;;102
 ;;21,"00247-1897-77 ")
 ;;103
 ;;21,"00247-1897-90 ")
 ;;104
 ;;21,"00247-1898-00 ")
 ;;105
 ;;21,"00247-1898-14 ")
 ;;106
 ;;21,"00247-1898-30 ")
 ;;107
 ;;21,"00247-1898-60 ")
 ;;108
 ;;21,"00247-1898-77 ")
 ;;109
 ;;21,"00247-1898-90 ")
 ;;110
 ;;21,"00247-1973-60 ")
 ;;111
 ;;21,"00247-1983-60 ")
 ;;112
 ;;21,"00247-1988-30 ")
 ;;113
 ;;21,"00247-2215-60 ")
 ;;114
 ;;21,"00258-3581-01 ")
 ;;115
 ;;21,"00258-3581-05 ")
 ;;116
 ;;21,"00258-3581-10 ")
 ;;117
 ;;21,"00258-3583-01 ")
 ;;118
 ;;21,"00258-3583-05 ")
 ;;119
 ;;21,"00258-3583-10 ")
 ;;120
 ;;21,"00258-3584-01 ")
 ;;121
 ;;21,"00258-3584-05 ")
 ;;122
 ;;21,"00258-3625-01 ")
 ;;123
 ;;21,"00258-3634-01 ")
 ;;124
 ;;21,"00258-3638-01 ")
 ;;125
 ;;21,"00310-0401-60 ")
 ;;126
 ;;21,"00310-0402-60 ")
 ;;127
 ;;21,"00310-0411-60 ")
 ;;128
 ;;21,"00310-0412-60 ")
 ;;129
 ;;21,"00378-5201-93 ")
 ;;130
 ;;21,"00378-5204-93 ")
 ;;131
 ;;21,"00378-5205-93 ")
 ;;132
 ;;21,"00378-6040-93 ")
 ;;133
 ;;21,"00456-0644-16 ")
 ;;134
 ;;21,"00456-0648-16 ")
 ;;135
 ;;21,"00456-0670-99 ")
 ;;136
 ;;21,"00456-0672-99 ")
 ;;137
 ;;21,"00456-3581-01 ")
 ;;138
 ;;21,"00456-3581-05 ")
 ;;139
 ;;21,"00456-3581-10 ")
 ;;140
 ;;21,"00456-4301-01 ")
 ;;141
 ;;21,"00456-4302-01 ")
 ;;142
 ;;21,"00456-4303-01 ")
 ;;143
 ;;21,"00456-4310-01 ")
 ;;144
 ;;21,"00456-4320-00 ")
 ;;145
 ;;21,"00456-4320-01 ")
 ;;146
 ;;21,"00456-4320-02 ")
 ;;147
 ;;21,"00456-4330-00 ")
 ;;148
 ;;21,"00456-4330-01 ")
 ;;149
 ;;21,"00456-4330-02 ")
 ;;150
 ;;21,"00456-4345-01 ")
 ;;151
 ;;21,"00485-0059-16 ")
 ;;152
 ;;21,"00490-0080-00 ")
 ;;153
 ;;21,"00490-0080-30 ")
 ;;154
 ;;21,"00490-0080-60 ")
 ;;155
 ;;21,"00490-0080-90 ")
 ;;156
 ;;21,"00525-0376-16 ")
 ;;157
 ;;21,"00603-1190-58 ")
 ;;158
 ;;21,"00603-4653-02 ")
 ;;159
 ;;21,"00603-4653-16 ")
 ;;160
 ;;21,"00603-4653-28 ")
 ;;161
 ;;21,"00603-4653-32 ")
 ;;162
 ;;21,"00603-4654-02 ")
 ;;163
 ;;21,"00603-4654-16 ")
 ;;164
 ;;21,"00603-4654-28 ")
 ;;165
 ;;21,"00603-4654-32 ")
 ;;166
 ;;21,"00603-4655-02 ")
 ;;167
 ;;21,"00603-4655-16 ")
 ;;168
 ;;21,"00603-4655-28 ")
 ;;169
 ;;21,"00603-4655-32 ")
 ;;170
 ;;21,"00603-4655-34 ")
 ;;171
 ;;21,"00603-5944-21 ")
 ;;172
 ;;21,"00603-5944-28 ")
 ;;173
 ;;21,"00603-5945-21 ")
 ;;174
 ;;21,"00603-5945-28 ")
 ;;175
 ;;21,"00603-5945-32 ")
 ;;176
 ;;21,"00603-5946-21 ")
 ;;177
 ;;21,"00603-5946-28 ")
 ;;178
 ;;21,"00603-5946-32 ")
 ;;179
 ;;21,"00603-5950-21 ")
 ;;180
 ;;21,"00603-5951-21 ")
 ;;181
 ;;21,"00603-5952-21 ")
 ;;182
 ;;21,"00781-5554-31 ")
 ;;183
 ;;21,"00781-5554-92 ")
 ;;184
 ;;21,"00781-5555-31 ")
 ;;185
 ;;21,"00781-5555-92 ")
 ;;186
 ;;21,"00781-5560-31 ")
 ;;187
 ;;21,"00781-5560-92 ")
 ;;188
 ;;21,"00904-1610-61 ")
 ;;189
 ;;21,"00904-5887-61 ")
 ;;190
 ;;21,"00904-5888-61 ")
 ;;191
 ;;21,"00904-5889-61 ")
 ;;192
 ;;21,"00904-6310-61 ")
 ;;193
 ;;21,"10122-0901-12 ")
 ;;194
 ;;21,"10122-0902-12 ")
 ;;195
 ;;21,"12280-0042-90 ")
 ;;196
 ;;21,"13411-0151-01 ")
 ;;197
 ;;21,"13411-0151-03 ")
 ;;198
 ;;21,"13411-0151-06 ")
 ;;199
 ;;21,"13411-0151-09 ")
 ;;200
 ;;21,"13411-0151-15 ")
 ;;201
 ;;21,"13411-0160-01 ")
 ;;202
 ;;21,"13411-0160-03 ")
 ;;203
 ;;21,"13411-0160-06 ")
 ;;204
 ;;21,"13411-0160-09 ")
 ;;205
 ;;21,"13411-0160-15 ")
 ;;206
 ;;21,"13668-0079-05 ")
 ;;207
 ;;21,"13668-0079-30 ")
 ;;208
 ;;21,"13668-0079-90 ")
 ;;209
 ;;21,"13668-0080-05 ")
 ;;210
 ;;21,"13668-0080-30 ")
 ;;211
 ;;21,"13668-0080-90 ")
 ;;212
 ;;21,"13668-0081-30 ")
 ;;213
 ;;21,"13668-0081-90 ")
 ;;214
 ;;21,"15370-0021-10 ")
 ;;215
 ;;21,"16729-0119-10 ")
 ;;216
 ;;21,"16729-0119-15 ")
 ;;217
 ;;21,"17856-0644-30 ")
 ;;218
 ;;21,"17856-0644-31 ")
 ;;219
 ;;21,"21695-0196-01 ")
 ;;220
 ;;21,"21695-0197-01 ")
 ;;221
 ;;21,"23155-0062-01 ")
 ;;222
 ;;21,"23155-0063-01 ")
 ;;223
 ;;21,"23490-7355-01 ")
 ;;224
 ;;21,"23490-7542-01 ")
 ;;225
 ;;21,"24839-0226-01 ")
 ;;226
 ;;21,"24839-0227-16 ")
 ;;227
 ;;21,"29033-0001-01 ")
 ;;228
 ;;21,"29033-0002-01 ")
 ;;229
 ;;21,"35356-0099-14 ")
 ;;230
 ;;21,"35356-0126-60 ")
 ;;231
 ;;21,"35356-0157-01 ")
 ;;232
 ;;21,"38130-0012-01 ")
 ;;233
 ;;21,"42291-0621-10 ")
 ;;234
 ;;21,"42291-0621-30 ")
 ;;235
 ;;21,"42291-0621-90 ")
 ;;236
 ;;21,"42291-0622-30 ")
 ;;237
 ;;21,"42291-0622-90 ")
 ;;238
 ;;21,"42291-0623-30 ")
 ;;239
 ;;21,"42291-0623-90 ")
 ;;240
 ;;21,"42858-0701-01 ")
 ;;241
 ;;21,"42858-0702-01 ")
 ;;242
 ;;21,"43063-0380-15 ")
 ;;243
 ;;21,"43063-0380-30 ")
 ;;244
 ;;21,"43063-0381-21 ")
 ;;245
 ;;21,"43063-0381-30 ")
 ;;246
 ;;21,"45985-0647-01 ")
 ;;247
 ;;21,"49708-0644-90 ")
 ;;248
 ;;21,"49884-0303-02 ")
 ;;249
 ;;21,"49884-0304-02 ")
 ;;250
 ;;21,"49999-0533-30 ")
 ;;251
 ;;21,"49999-0533-90 ")
 ;;252
 ;;21,"49999-0550-00 ")
 ;;253
 ;;21,"49999-0614-01 ")
 ;;254
 ;;21,"49999-0819-60 ")
 ;;255
 ;;21,"49999-0884-30 ")
 ;;256
 ;;21,"49999-0884-90 ")
 ;;257
 ;;21,"49999-0921-30 ")
 ;;258
 ;;21,"49999-0952-30 ")
 ;;259
 ;;21,"49999-0984-60 ")
 ;;260
 ;;21,"49999-0985-60 ")
 ;;261
 ;;21,"50111-0459-01 ")
 ;;262
 ;;21,"50111-0459-02 ")
 ;;263
 ;;21,"50111-0459-03 ")
 ;;264
 ;;21,"50111-0482-01 ")
 ;;265
 ;;21,"50111-0482-02 ")
 ;;266
 ;;21,"50111-0482-03 ")
 ;;267
 ;;21,"50111-0483-01 ")
 ;;268
 ;;21,"50111-0483-02 ")
 ;;269
 ;;21,"50111-0518-01 ")
 ;;270
 ;;21,"50242-0040-62 ")
 ;;271
 ;;21,"50474-0100-01 ")
 ;;272
 ;;21,"50474-0200-01 ")
 ;;273
 ;;21,"50474-0200-50 ")
 ;;274
 ;;21,"50474-0300-01 ")
 ;;275
 ;;21,"50474-0300-50 ")
 ;;276
 ;;21,"50474-0400-01 ")
 ;;277
 ;;21,"50991-0200-16 ")
 ;;278
 ;;21,"50991-0214-16 ")
 ;;279
 ;;21,"50991-0400-01 ")
 ;;280
 ;;21,"50991-0413-01 ")
 ;;281
 ;;21,"51079-0223-01 ")
 ;;282
 ;;21,"51079-0223-20 ")
 ;;283
 ;;21,"51862-0131-16 ")
 ;;284
 ;;21,"51991-0536-01 ")
 ;;285
 ;;21,"52959-0131-00 ")
 ;;286
 ;;21,"52959-0279-30 ")
 ;;287
 ;;21,"54569-0049-00 ")
 ;;288
 ;;21,"54569-0065-01 ")
 ;;289
 ;;21,"54569-0065-02 ")
 ;;290
 ;;21,"54569-0065-05 ")
 ;;291
 ;;21,"54569-1012-00 ")
 ;;292
 ;;21,"54569-1013-00 ")
 ;;293
 ;;21,"54569-1666-00 ")
 ;;294
 ;;21,"54569-3976-00 ")
 ;;295
 ;;21,"54569-4604-01 ")
 ;;296
 ;;21,"54569-4605-00 ")
 ;;297
 ;;21,"54569-4736-00 ")
 ;;298
 ;;21,"54569-5167-00 ")
 ;;299
 ;;21,"54569-5241-00 ")
 ;;300
 ;;21,"54569-5242-00 ")
 ;;301
 ;;21,"54569-5243-00 ")
 ;;302
 ;;21,"54569-5663-00 ")
 ;;303
 ;;21,"54569-5671-00 ")
 ;;304
 ;;21,"54569-5928-00 ")
 ;;305
 ;;21,"54569-6265-00 ")
 ;;306
 ;;21,"54569-6266-00 ")
 ;;307
 ;;21,"54569-6321-00 ")
 ;;308
 ;;21,"54569-6348-00 ")
 ;;309
 ;;21,"54838-0556-80 ")
 ;;310
 ;;21,"54868-0028-00 ")
 ;;311
 ;;21,"54868-0028-01 ")
 ;;312
 ;;21,"54868-0028-02 ")
 ;;313
 ;;21,"54868-0028-03 ")
 ;;314
 ;;21,"54868-0028-05 ")
 ;;315
 ;;21,"54868-0028-06 ")
 ;;316
 ;;21,"54868-0029-00 ")
 ;;317
 ;;21,"54868-0029-02 ")
 ;;318
 ;;21,"54868-0029-03 ")
 ;;319
 ;;21,"54868-0029-05 ")
 ;;320
 ;;21,"54868-0029-06 ")
 ;;321
 ;;21,"54868-0029-07 ")
 ;;322
 ;;21,"54868-1438-00 ")
 ;;323
 ;;21,"54868-1438-01 ")
 ;;324
 ;;21,"54868-1461-01 ")
 ;;325
 ;;21,"54868-1461-02 ")
 ;;326
 ;;21,"54868-1883-01 ")
 ;;327
 ;;21,"54868-1894-02 ")
 ;;328
 ;;21,"54868-2710-00 ")
 ;;329
 ;;21,"54868-2710-01 ")
 ;;330
 ;;21,"54868-2822-00 ")
 ;;331
 ;;21,"54868-3283-00 ")
 ;;332
 ;;21,"54868-3283-01 ")
 ;;333
 ;;21,"54868-3283-02 ")
 ;;334
 ;;21,"54868-4172-00 ")
 ;;335
 ;;21,"54868-4172-01 ")
 ;;336
 ;;21,"54868-4172-02 ")
 ;;337
 ;;21,"54868-4516-00 ")
 ;;338
 ;;21,"54868-4517-00 ")
 ;;339
 ;;21,"54868-4518-00 ")
 ;;340
 ;;21,"54868-4630-00 ")
 ;;341
 ;;21,"54868-4847-00 ")
 ;;342
 ;;21,"54868-5294-00 ")
 ;;343
 ;;21,"54868-5362-00 ")
 ;;344
 ;;21,"54868-5547-00 ")
 ;;345
 ;;21,"54868-5547-01 ")
 ;;346
 ;;21,"54868-5547-02 ")
 ;;347
 ;;21,"54868-5637-00 ")
 ;;348
 ;;21,"54868-5844-00 ")
 ;;349
 ;;21,"54868-5857-00 ")
 ;;350
 ;;21,"54868-5858-00 ")
 ;;351
 ;;21,"54868-5936-00 ")
 ;;352
 ;;21,"54868-5937-00 ")
 ;;353
 ;;21,"54868-5989-00 ")
 ;;354
 ;;21,"54868-5990-00 ")
 ;;355
 ;;21,"54868-5995-00 ")
 ;;356
 ;;21,"55045-1868-03 ")
 ;;357
 ;;21,"55045-2520-07 ")
 ;;358
 ;;21,"55045-3063-00 ")
 ;;359
 ;;21,"55045-3351-00 ")
 ;;360
 ;;21,"55045-3354-00 ")
 ;;361
 ;;21,"55045-3388-01 ")
 ;;362
 ;;21,"55045-3686-01 ")
 ;;363
 ;;21,"55045-3695-08 ")
 ;;364
 ;;21,"55045-3768-08 ")
 ;;365
 ;;21,"55111-0593-30 ")
 ;;366
 ;;21,"55111-0593-90 ")
 ;;367
 ;;21,"55111-0594-30 ")
 ;;368
 ;;21,"55111-0594-90 ")
 ;;369
 ;;21,"55111-0625-60 ")
 ;;370
 ;;21,"55111-0626-60 ")
 ;;371
 ;;21,"55111-0725-10 ")
 ;;372
 ;;21,"55111-0725-30 ")
 ;;373
 ;;21,"55111-0725-90 ")
 ;;374
 ;;21,"55111-0725-94 ")
 ;;375
 ;;21,"55111-0763-03 ")
 ;;376
 ;;21,"55289-0789-30 ")
 ;;377
 ;;21,"55289-0961-15 ")
 ;;378
 ;;21,"55289-0961-30 ")
 ;;379
 ;;21,"55289-0989-21 ")
 ;;380
 ;;21,"55289-0989-30 ")
 ;;381
 ;;21,"55289-0990-21 ")
 ;;382
 ;;21,"55289-0990-30 ")
 ;;383
 ;;21,"55887-0120-90 ")
 ;;384
 ;;21,"55887-0277-30 ")
 ;;385
 ;;21,"55887-0678-60 ")
 ;;386
 ;;21,"55887-0847-60 ")
 ;;387
 ;;21,"55887-0847-90 ")
 ;;388
 ;;21,"58016-4604-01 ")
 ;;389
 ;;21,"58016-4813-01 ")
 ;;390
 ;;21,"58864-0658-30 ")
 ;;391
 ;;21,"58864-0694-30 ")
 ;;392
 ;;21,"59243-0021-10 ")
 ;;393
 ;
OTHER ; OTHER ROUTINES
 D ^BGP53N2
 D ^BGP53N3
 D ^BGP53N4
 D ^BGP53N5
 D ^BGP53N6
 Q