BGP61V ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;;BGP GLUCOSE LOINC
 ;
 ; This routine loads Taxonomy BGP GLUCOSE LOINC
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
 ;;21,"10449-7 ")
 ;;1
 ;;21,"10450-5 ")
 ;;2
 ;;21,"10832-4 ")
 ;;3
 ;;21,"11032-0 ")
 ;;4
 ;;21,"11142-7 ")
 ;;5
 ;;21,"11143-5 ")
 ;;6
 ;;21,"12219-2 ")
 ;;7
 ;;21,"12220-0 ")
 ;;8
 ;;21,"12607-8 ")
 ;;9
 ;;21,"12610-2 ")
 ;;10
 ;;21,"12611-0 ")
 ;;11
 ;;21,"12613-6 ")
 ;;12
 ;;21,"12614-4 ")
 ;;13
 ;;21,"12615-1 ")
 ;;14
 ;;21,"12616-9 ")
 ;;15
 ;;21,"12617-7 ")
 ;;16
 ;;21,"12618-5 ")
 ;;17
 ;;21,"12619-3 ")
 ;;18
 ;;21,"12620-1 ")
 ;;19
 ;;21,"12621-9 ")
 ;;20
 ;;21,"12622-7 ")
 ;;21
 ;;21,"12623-5 ")
 ;;22
 ;;21,"12624-3 ")
 ;;23
 ;;21,"12625-0 ")
 ;;24
 ;;21,"12626-8 ")
 ;;25
 ;;21,"12627-6 ")
 ;;26
 ;;21,"12631-8 ")
 ;;27
 ;;21,"12632-6 ")
 ;;28
 ;;21,"12635-9 ")
 ;;29
 ;;21,"12636-7 ")
 ;;30
 ;;21,"12637-5 ")
 ;;31
 ;;21,"12638-3 ")
 ;;32
 ;;21,"12639-1 ")
 ;;33
 ;;21,"12640-9 ")
 ;;34
 ;;21,"12641-7 ")
 ;;35
 ;;21,"12642-5 ")
 ;;36
 ;;21,"12643-3 ")
 ;;37
 ;;21,"12644-1 ")
 ;;38
 ;;21,"12645-8 ")
 ;;39
 ;;21,"12646-6 ")
 ;;40
 ;;21,"12647-4 ")
 ;;41
 ;;21,"12648-2 ")
 ;;42
 ;;21,"12649-0 ")
 ;;43
 ;;21,"12650-8 ")
 ;;44
 ;;21,"12651-6 ")
 ;;45
 ;;21,"12652-4 ")
 ;;46
 ;;21,"12653-2 ")
 ;;47
 ;;21,"12654-0 ")
 ;;48
 ;;21,"12655-7 ")
 ;;49
 ;;21,"12656-5 ")
 ;;50
 ;;21,"12657-3 ")
 ;;51
 ;;21,"12658-1 ")
 ;;52
 ;;21,"12659-9 ")
 ;;53
 ;;21,"13453-6 ")
 ;;54
 ;;21,"13606-9 ")
 ;;55
 ;;21,"13607-7 ")
 ;;56
 ;;21,"13865-1 ")
 ;;57
 ;;21,"13866-9 ")
 ;;58
 ;;21,"14137-4 ")
 ;;59
 ;;21,"14743-9 ")
 ;;60
 ;;21,"14749-6 ")
 ;;61
 ;;21,"14751-2 ")
 ;;62
 ;;21,"14752-0 ")
 ;;63
 ;;21,"14753-8 ")
 ;;64
 ;;21,"14754-6 ")
 ;;65
 ;;21,"14755-3 ")
 ;;66
 ;;21,"14756-1 ")
 ;;67
 ;;21,"14757-9 ")
 ;;68
 ;;21,"14758-7 ")
 ;;69
 ;;21,"14759-5 ")
 ;;70
 ;;21,"14760-3 ")
 ;;71
 ;;21,"14761-1 ")
 ;;72
 ;;21,"14762-9 ")
 ;;73
 ;;21,"14763-7 ")
 ;;74
 ;;21,"14764-5 ")
 ;;75
 ;;21,"14765-2 ")
 ;;76
 ;;21,"14766-0 ")
 ;;77
 ;;21,"14767-8 ")
 ;;78
 ;;21,"14768-6 ")
 ;;79
 ;;21,"14769-4 ")
 ;;80
 ;;21,"14770-2 ")
 ;;81
 ;;21,"14771-0 ")
 ;;82
 ;;21,"1492-8 ")
 ;;83
 ;;21,"1493-6 ")
 ;;84
 ;;21,"1494-4 ")
 ;;85
 ;;21,"1496-9 ")
 ;;86
 ;;21,"1497-7 ")
 ;;87
 ;;21,"1498-5 ")
 ;;88
 ;;21,"1499-3 ")
 ;;89
 ;;21,"14995-5 ")
 ;;90
 ;;21,"14996-3 ")
 ;;91
 ;;21,"1500-8 ")
 ;;92
 ;;21,"1501-6 ")
 ;;93
 ;;21,"1502-4 ")
 ;;94
 ;;21,"1504-0 ")
 ;;95
 ;;21,"1506-5 ")
 ;;96
 ;;21,"1507-3 ")
 ;;97
 ;;21,"15074-8 ")
 ;;98
 ;;21,"1508-1 ")
 ;;99
 ;;21,"1510-7 ")
 ;;100
 ;;21,"1511-5 ")
 ;;101
 ;;21,"1512-3 ")
 ;;102
 ;;21,"1513-1 ")
 ;;103
 ;;21,"1514-9 ")
 ;;104
 ;;21,"1515-6 ")
 ;;105
 ;;21,"1517-2 ")
 ;;106
 ;;21,"1518-0 ")
 ;;107
 ;;21,"1519-8 ")
 ;;108
 ;;21,"1521-4 ")
 ;;109
 ;;21,"1522-2 ")
 ;;110
 ;;21,"1523-0 ")
 ;;111
 ;;21,"1524-8 ")
 ;;112
 ;;21,"1525-5 ")
 ;;113
 ;;21,"1526-3 ")
 ;;114
 ;;21,"1527-1 ")
 ;;115
 ;;21,"1528-9 ")
 ;;116
 ;;21,"1529-7 ")
 ;;117
 ;;21,"1530-5 ")
 ;;118
 ;;21,"1531-3 ")
 ;;119
 ;;21,"1533-9 ")
 ;;120
 ;;21,"1534-7 ")
 ;;121
 ;;21,"1535-4 ")
 ;;122
 ;;21,"1536-2 ")
 ;;123
 ;;21,"1537-0 ")
 ;;124
 ;;21,"1538-8 ")
 ;;125
 ;;21,"1539-6 ")
 ;;126
 ;;21,"1540-4 ")
 ;;127
 ;;21,"1542-0 ")
 ;;128
 ;;21,"1543-8 ")
 ;;129
 ;;21,"1544-6 ")
 ;;130
 ;;21,"1545-3 ")
 ;;131
 ;;21,"1547-9 ")
 ;;132
 ;;21,"1548-7 ")
 ;;133
 ;;21,"1549-5 ")
 ;;134
 ;;21,"1550-3 ")
 ;;135
 ;;21,"1551-1 ")
 ;;136
 ;;21,"1552-9 ")
 ;;137
 ;;21,"1553-7 ")
 ;;138
 ;;21,"1554-5 ")
 ;;139
 ;;21,"1555-2 ")
 ;;140
 ;;21,"1556-0 ")
 ;;141
 ;;21,"1557-8 ")
 ;;142
 ;;21,"1558-6 ")
 ;;143
 ;;21,"16165-3 ")
 ;;144
 ;;21,"16166-1 ")
 ;;145
 ;;21,"16167-9 ")
 ;;146
 ;;21,"16168-7 ")
 ;;147
 ;;21,"16169-5 ")
 ;;148
 ;;21,"16170-3 ")
 ;;149
 ;;21,"16914-4 ")
 ;;150
 ;;21,"16915-1 ")
 ;;151
 ;;21,"17865-7 ")
 ;;152
 ;;21,"18296-4 ")
 ;;153
 ;;21,"18342-6 ")
 ;;154
 ;;21,"18353-3 ")
 ;;155
 ;;21,"18354-1 ")
 ;;156
 ;;21,"19104-9 ")
 ;;157
 ;;21,"19105-6 ")
 ;;158
 ;;21,"20436-2 ")
 ;;159
 ;;21,"20437-0 ")
 ;;160
 ;;21,"20438-8 ")
 ;;161
 ;;21,"20439-6 ")
 ;;162
 ;;21,"20440-4 ")
 ;;163
 ;;21,"20441-2 ")
 ;;164
 ;;21,"21004-7 ")
 ;;165
 ;;21,"21308-2 ")
 ;;166
 ;;21,"21309-0 ")
 ;;167
 ;;21,"21310-8 ")
 ;;168
 ;;21,"2339-0 ")
 ;;169
 ;;21,"2340-8 ")
 ;;170
 ;;21,"2341-6 ")
 ;;171
 ;;21,"2345-7 ")
 ;;172
 ;;21,"25663-6 ")
 ;;173
 ;;21,"25665-1 ")
 ;;174
 ;;21,"25666-9 ")
 ;;175
 ;;21,"25668-5 ")
 ;;176
 ;;21,"25669-3 ")
 ;;177
 ;;21,"25671-9 ")
 ;;178
 ;;21,"25672-7 ")
 ;;179
 ;;21,"25673-5 ")
 ;;180
 ;;21,"25674-3 ")
 ;;181
 ;;21,"25676-8 ")
 ;;182
 ;;21,"25677-6 ")
 ;;183
 ;;21,"25679-2 ")
 ;;184
 ;;21,"25680-0 ")
 ;;185
 ;;21,"26539-7 ")
 ;;186
 ;;21,"26541-3 ")
 ;;187
 ;;21,"26543-9 ")
 ;;188
 ;;21,"26544-7 ")
 ;;189
 ;;21,"26554-6 ")
 ;;190
 ;;21,"26555-3 ")
 ;;191
 ;;21,"26695-7 ")
 ;;192
 ;;21,"26777-3 ")
 ;;193
 ;;21,"26778-1 ")
 ;;194
 ;;21,"26779-9 ")
 ;;195
 ;;21,"26780-7 ")
 ;;196
 ;;21,"26781-5 ")
 ;;197
 ;;21,"26782-3 ")
 ;;198
 ;;21,"26783-1 ")
 ;;199
 ;;21,"26817-7 ")
 ;;200
 ;;21,"26853-2 ")
 ;;201
 ;;21,"26854-0 ")
 ;;202
 ;;21,"27353-2 ")
 ;;203
 ;;21,"27432-4 ")
 ;;204
 ;;21,"29329-0 ")
 ;;205
 ;;21,"29330-8 ")
 ;;206
 ;;21,"29331-6 ")
 ;;207
 ;;21,"29332-4 ")
 ;;208
 ;;21,"29412-4 ")
 ;;209
 ;;21,"30251-3 ")
 ;;210
 ;;21,"30252-1 ")
 ;;211
 ;;21,"30253-9 ")
 ;;212
 ;;21,"30263-8 ")
 ;;213
 ;;21,"30264-6 ")
 ;;214
 ;;21,"30265-3 ")
 ;;215
 ;;21,"30266-1 ")
 ;;216
 ;;21,"30267-9 ")
 ;;217
 ;;21,"30344-6 ")
 ;;218
 ;;21,"30345-3 ")
 ;;219
 ;;21,"30346-1 ")
 ;;220
 ;;21,"32016-8 ")
 ;;221
 ;;21,"32319-6 ")
 ;;222
 ;;21,"32320-4 ")
 ;;223
 ;;21,"32321-2 ")
 ;;224
 ;;21,"32322-0 ")
 ;;225
 ;;21,"32359-2 ")
 ;;226
 ;;21,"32820-3 ")
 ;;227
 ;;21,"33024-1 ")
 ;;228
 ;;21,"34056-2 ")
 ;;229
 ;;21,"34057-0 ")
 ;;230
 ;;21,"34058-8 ")
 ;;231
 ;;21,"34059-6 ")
 ;;232
 ;;21,"34060-4 ")
 ;;233
 ;;21,"35184-1 ")
 ;;234
 ;;21,"35211-2 ")
 ;;235
 ;;21,"39480-9 ")
 ;;236
 ;;21,"39481-7 ")
 ;;237
 ;;21,"39561-6 ")
 ;;238
 ;;21,"39562-4 ")
 ;;239
 ;;21,"39563-2 ")
 ;;240
 ;;21,"39997-2 ")
 ;;241
 ;;21,"39998-0 ")
 ;;242
 ;;21,"39999-8 ")
 ;;243
 ;;21,"40000-2 ")
 ;;244
 ;;21,"40001-0 ")
 ;;245
 ;;21,"40002-8 ")
 ;;246
 ;;21,"40003-6 ")
 ;;247
 ;;21,"40004-4 ")
 ;;248
 ;;21,"40005-1 ")
 ;;249
 ;;21,"40006-9 ")
 ;;250
 ;;21,"40007-7 ")
 ;;251
 ;;21,"40008-5 ")
 ;;252
 ;;21,"40009-3 ")
 ;;253
 ;;21,"40010-1 ")
 ;;254
 ;;21,"40011-9 ")
 ;;255
 ;;21,"40012-7 ")
 ;;256
 ;;21,"40013-5 ")
 ;;257
 ;;21,"40014-3 ")
 ;;258
 ;;21,"40015-0 ")
 ;;259
 ;;21,"40016-8 ")
 ;;260
 ;;21,"40017-6 ")
 ;;261
 ;;21,"40018-4 ")
 ;;262
 ;;21,"40019-2 ")
 ;;263
 ;;21,"40020-0 ")
 ;;264
 ;;21,"40021-8 ")
 ;;265
 ;;21,"40022-6 ")
 ;;266
 ;;21,"40023-4 ")
 ;;267
 ;;21,"40024-2 ")
 ;;268
 ;;21,"40025-9 ")
 ;;269
 ;;21,"40026-7 ")
 ;;270
 ;;21,"40027-5 ")
 ;;271
 ;;21,"40028-3 ")
 ;;272
 ;;21,"40029-1 ")
 ;;273
 ;;21,"40030-9 ")
 ;;274
 ;;21,"40031-7 ")
 ;;275
 ;;21,"40032-5 ")
 ;;276
 ;;21,"40033-3 ")
 ;;277
 ;;21,"40034-1 ")
 ;;278
 ;;21,"40035-8 ")
 ;;279
 ;;21,"40036-6 ")
 ;;280
 ;;21,"40037-4 ")
 ;;281
 ;;21,"40038-2 ")
 ;;282
 ;;21,"40039-0 ")
 ;;283
 ;;21,"40040-8 ")
 ;;284
 ;;21,"40041-6 ")
 ;;285
 ;;21,"40042-4 ")
 ;;286
 ;;21,"40043-2 ")
 ;;287
 ;;21,"40044-0 ")
 ;;288
 ;;21,"40045-7 ")
 ;;289
 ;;21,"40148-9 ")
 ;;290
 ;;21,"40149-7 ")
 ;;291
 ;;21,"40150-5 ")
 ;;292
 ;;21,"40151-3 ")
 ;;293
 ;;21,"40152-1 ")
 ;;294
 ;;21,"40153-9 ")
 ;;295
 ;;21,"40154-7 ")
 ;;296
 ;;21,"40155-4 ")
 ;;297
 ;;21,"40156-2 ")
 ;;298
 ;;21,"40157-0 ")
 ;;299
 ;;21,"40158-8 ")
 ;;300
 ;;21,"40159-6 ")
 ;;301
 ;;21,"40160-4 ")
 ;;302
 ;;21,"40161-2 ")
 ;;303
 ;;21,"40162-0 ")
 ;;304
 ;;21,"40163-8 ")
 ;;305
 ;;21,"40164-6 ")
 ;;306
 ;;21,"40165-3 ")
 ;;307
 ;;21,"40166-1 ")
 ;;308
 ;;21,"40167-9 ")
 ;;309
 ;;21,"40168-7 ")
 ;;310
 ;;21,"40169-5 ")
 ;;311
 ;;21,"40170-3 ")
 ;;312
 ;;21,"40171-1 ")
 ;;313
 ;;21,"40172-9 ")
 ;;314
 ;;21,"40173-7 ")
 ;;315
 ;;21,"40174-5 ")
 ;;316
 ;;21,"40175-2 ")
 ;;317
 ;;21,"40176-0 ")
 ;;318
 ;;21,"40177-8 ")
 ;;319
 ;;21,"40178-6 ")
 ;;320
 ;;21,"40179-4 ")
 ;;321
 ;;21,"40180-2 ")
 ;;322
 ;;21,"40181-0 ")
 ;;323
 ;;21,"40182-8 ")
 ;;324
 ;;21,"40183-6 ")
 ;;325
 ;;21,"40184-4 ")
 ;;326
 ;;21,"40185-1 ")
 ;;327
 ;;21,"40186-9 ")
 ;;328
 ;;21,"40187-7 ")
 ;;329
 ;;21,"40188-5 ")
 ;;330
 ;;21,"40189-3 ")
 ;;331
 ;;21,"40190-1 ")
 ;;332
 ;;21,"40191-9 ")
 ;;333
 ;;21,"40192-7 ")
 ;;334
 ;;21,"40193-5 ")
 ;;335
 ;;21,"40194-3 ")
 ;;336
 ;;21,"40195-0 ")
 ;;337
 ;;21,"40196-8 ")
 ;;338
 ;;21,"40197-6 ")
 ;;339
 ;;21,"40198-4 ")
 ;;340
 ;;21,"40199-2 ")
 ;;341
 ;;21,"40200-8 ")
 ;;342
 ;;21,"40201-6 ")
 ;;343
 ;;21,"40202-4 ")
 ;;344
 ;;21,"40203-2 ")
 ;;345
 ;;21,"40204-0 ")
 ;;346
 ;;21,"40205-7 ")
 ;;347
 ;;21,"40206-5 ")
 ;;348
 ;;21,"40207-3 ")
 ;;349
 ;;21,"40208-1 ")
 ;;350
 ;;21,"40209-9 ")
 ;;351
 ;;21,"40210-7 ")
 ;;352
 ;;21,"40211-5 ")
 ;;353
 ;;21,"40212-3 ")
 ;;354
 ;;21,"40213-1 ")
 ;;355
 ;;21,"40214-9 ")
 ;;356
 ;;21,"40215-6 ")
 ;;357
 ;;21,"40216-4 ")
 ;;358
 ;;21,"40217-2 ")
 ;;359
 ;;21,"40218-0 ")
 ;;360
 ;;21,"40219-8 ")
 ;;361
 ;;21,"40220-6 ")
 ;;362
 ;;21,"40221-4 ")
 ;;363
 ;;21,"40222-2 ")
 ;;364
 ;;21,"40259-4 ")
 ;;365
 ;;21,"40260-2 ")
 ;;366
 ;;21,"40261-0 ")
 ;;367
 ;;21,"40262-8 ")
 ;;368
 ;;21,"40263-6 ")
 ;;369
 ;;21,"40276-8 ")
 ;;370
 ;;21,"40277-6 ")
 ;;371
 ;;21,"40278-4 ")
 ;;372
 ;;21,"40279-2 ")
 ;;373
 ;;21,"40280-0 ")
 ;;374
 ;;21,"40285-9 ")
 ;;375
 ;;21,"40286-7 ")
 ;;376
 ;;21,"40287-5 ")
 ;;377
 ;;21,"40318-8 ")
 ;;378
 ;;21,"40319-6 ")
 ;;379
 ;;21,"40320-4 ")
 ;;380
 ;;21,"40321-2 ")
 ;;381
 ;;21,"40322-0 ")
 ;;382
 ;;21,"40323-8 ")
 ;;383
 ;;21,"40324-6 ")
 ;;384
 ;;21,"40858-3 ")
 ;;385
 ;;21,"40875-7 ")
 ;;386
 ;;21,"41024-1 ")
 ;;387
 ;;21,"41604-0 ")
 ;;388
 ;;21,"41651-1 ")
 ;;389
 ;;21,"41652-9 ")
 ;;390
 ;;21,"41653-7 ")
 ;;391
 ;;21,"43740-0 ")
 ;;392
 ;;21,"44919-9 ")
 ;;393
 ;;21,"45052-8 ")
 ;;394
 ;;21,"45053-6 ")
 ;;395
 ;;21,"45054-4 ")
 ;;396
 ;;21,"45055-1 ")
 ;;397
 ;;21,"45056-9 ")
 ;;398
 ;;21,"45298-7 ")
 ;;399
 ;;21,"45299-5 ")
 ;;400
 ;;21,"47622-6 ")
 ;;401
 ;;21,"47859-4 ")
 ;;402
 ;;21,"47995-6 ")
 ;;403
 ;;21,"48109-3 ")
 ;;404
 ;;21,"48605-0 ")
 ;;405
 ;;21,"48606-8 ")
 ;;406
 ;;21,"48607-6 ")
 ;;407
 ;;21,"48810-6 ")
 ;;408
 ;;21,"48983-1 ")
 ;;409
 ;;21,"48984-9 ")
 ;;410
 ;;21,"48985-6 ")
 ;;411
 ;;21,"48986-4 ")
 ;;412
 ;;21,"48988-0 ")
 ;;413
 ;;21,"48989-8 ")
 ;;414
 ;;21,"48990-6 ")
 ;;415
 ;;21,"48991-4 ")
 ;;416
 ;;21,"48992-2 ")
 ;;417
 ;;21,"48993-0 ")
 ;;418
 ;;21,"48994-8 ")
 ;;419
 ;;21,"49134-0 ")
 ;;420
 ;;21,"49688-5 ")
 ;;421
 ;;21,"49689-3 ")
 ;;422
 ;;21,"50206-2 ")
 ;;423
 ;;21,"50207-0 ")
 ;;424
 ;;21,"50208-8 ")
 ;;425
 ;;21,"50212-0 ")
 ;;426
 ;;21,"50213-8 ")
 ;;427
 ;;21,"50214-6 ")
 ;;428
 ;;21,"50215-3 ")
 ;;429
 ;;21,"50216-1 ")
 ;;430
 ;;21,"50217-9 ")
 ;;431
 ;;21,"50218-7 ")
 ;;432
 ;;21,"50586-7 ")
 ;;433
 ;;21,"50587-5 ")
 ;;434
 ;;21,"50588-3 ")
 ;;435
 ;;21,"50589-1 ")
 ;;436
 ;;21,"50608-9 ")
 ;;437
 ;;21,"50667-5 ")
 ;;438
 ;;21,"50751-7 ")
 ;;439
 ;
OTHER ; OTHER ROUTINES
 D ^BGP61V2
 D ^BGP61V3
 D ^BGP61V4
 D ^BGP61V5
 D ^BGP61V6
 Q