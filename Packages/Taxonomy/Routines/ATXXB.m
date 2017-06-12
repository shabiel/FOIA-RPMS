ATXXB ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;APCH MINOR SURGICAL PROCS
 ;
 ; This routine loads Taxonomy APCH MINOR SURGICAL PROCS
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
 ;;21,"0020X0Z ")
 ;;1
 ;;21,"0020XYZ ")
 ;;2
 ;;21,"002EX0Z ")
 ;;3
 ;;21,"002EXYZ ")
 ;;4
 ;;21,"002UX0Z ")
 ;;5
 ;;21,"002UXYZ ")
 ;;6
 ;;21,"00F3XZZ ")
 ;;7
 ;;21,"00F4XZZ ")
 ;;8
 ;;21,"00F5XZZ ")
 ;;9
 ;;21,"00F6XZZ ")
 ;;10
 ;;21,"00P0X0Z ")
 ;;11
 ;;21,"00P0X2Z ")
 ;;12
 ;;21,"00P0X3Z ")
 ;;13
 ;;21,"00P0XMZ ")
 ;;14
 ;;21,"00P6X0Z ")
 ;;15
 ;;21,"00P6X3Z ")
 ;;16
 ;;21,"00PEX0Z ")
 ;;17
 ;;21,"00PEX2Z ")
 ;;18
 ;;21,"00PEX3Z ")
 ;;19
 ;;21,"00PUX0Z ")
 ;;20
 ;;21,"00PUX2Z ")
 ;;21
 ;;21,"00PUX3Z ")
 ;;22
 ;;21,"00PUXMZ ")
 ;;23
 ;;21,"00PVX0Z ")
 ;;24
 ;;21,"00PVX2Z ")
 ;;25
 ;;21,"00PVX3Z ")
 ;;26
 ;;21,"00PVXMZ ")
 ;;27
 ;;21,"00W0X0Z ")
 ;;28
 ;;21,"00W0X2Z ")
 ;;29
 ;;21,"00W0X3Z ")
 ;;30
 ;;21,"00W0X7Z ")
 ;;31
 ;;21,"00W0XJZ ")
 ;;32
 ;;21,"00W0XKZ ")
 ;;33
 ;;21,"00W0XMZ ")
 ;;34
 ;;21,"00W6X0Z ")
 ;;35
 ;;21,"00W6X2Z ")
 ;;36
 ;;21,"00W6X3Z ")
 ;;37
 ;;21,"00W6XJZ ")
 ;;38
 ;;21,"00W6XMZ ")
 ;;39
 ;;21,"00WEX0Z ")
 ;;40
 ;;21,"00WEX2Z ")
 ;;41
 ;;21,"00WEX3Z ")
 ;;42
 ;;21,"00WEX7Z ")
 ;;43
 ;;21,"00WEXMZ ")
 ;;44
 ;;21,"00WUX0Z ")
 ;;45
 ;;21,"00WUX2Z ")
 ;;46
 ;;21,"00WUX3Z ")
 ;;47
 ;;21,"00WUXJZ ")
 ;;48
 ;;21,"00WUXMZ ")
 ;;49
 ;;21,"00WVX0Z ")
 ;;50
 ;;21,"00WVX2Z ")
 ;;51
 ;;21,"00WVX3Z ")
 ;;52
 ;;21,"00WVX7Z ")
 ;;53
 ;;21,"00WVXJZ ")
 ;;54
 ;;21,"00WVXKZ ")
 ;;55
 ;;21,"00WVXMZ ")
 ;;56
 ;;21,"012YX0Z ")
 ;;57
 ;;21,"012YXYZ ")
 ;;58
 ;;21,"01PYX0Z ")
 ;;59
 ;;21,"01PYX2Z ")
 ;;60
 ;;21,"01PYXMZ ")
 ;;61
 ;;21,"01WYX0Z ")
 ;;62
 ;;21,"01WYX2Z ")
 ;;63
 ;;21,"01WYX7Z ")
 ;;64
 ;;21,"01WYXMZ ")
 ;;65
 ;;21,"02700T6 ")
 ;;66
 ;;21,"02700TZ ")
 ;;67
 ;;21,"02703T6 ")
 ;;68
 ;;21,"02703TZ ")
 ;;69
 ;;21,"02704T6 ")
 ;;70
 ;;21,"02704TZ ")
 ;;71
 ;;21,"02710T6 ")
 ;;72
 ;;21,"02710TZ ")
 ;;73
 ;;21,"02713T6 ")
 ;;74
 ;;21,"02713TZ ")
 ;;75
 ;;21,"02714T6 ")
 ;;76
 ;;21,"02714TZ ")
 ;;77
 ;;21,"02720T6 ")
 ;;78
 ;;21,"02720TZ ")
 ;;79
 ;;21,"02723T6 ")
 ;;80
 ;;21,"02723TZ ")
 ;;81
 ;;21,"02724T6 ")
 ;;82
 ;;21,"02724TZ ")
 ;;83
 ;;21,"02730T6 ")
 ;;84
 ;;21,"02730TZ ")
 ;;85
 ;;21,"02733T6 ")
 ;;86
 ;;21,"02733TZ ")
 ;;87
 ;;21,"02734T6 ")
 ;;88
 ;;21,"02734TZ ")
 ;;89
 ;;21,"02FNXZZ ")
 ;;90
 ;;21,"02HP00Z ")
 ;;91
 ;;21,"02HP02Z ")
 ;;92
 ;;21,"02HP03Z ")
 ;;93
 ;;21,"02HP30Z ")
 ;;94
 ;;21,"02HP32Z ")
 ;;95
 ;;21,"02HP33Z ")
 ;;96
 ;;21,"02HP40Z ")
 ;;97
 ;;21,"02HP42Z ")
 ;;98
 ;;21,"02HP43Z ")
 ;;99
 ;;21,"02HQ00Z ")
 ;;100
 ;;21,"02HQ02Z ")
 ;;101
 ;;21,"02HQ03Z ")
 ;;102
 ;;21,"02HQ30Z ")
 ;;103
 ;;21,"02HQ32Z ")
 ;;104
 ;;21,"02HQ33Z ")
 ;;105
 ;;21,"02HQ40Z ")
 ;;106
 ;;21,"02HQ42Z ")
 ;;107
 ;;21,"02HQ43Z ")
 ;;108
 ;;21,"02HR00Z ")
 ;;109
 ;;21,"02HR02Z ")
 ;;110
 ;;21,"02HR03Z ")
 ;;111
 ;;21,"02HR30Z ")
 ;;112
 ;;21,"02HR32Z ")
 ;;113
 ;;21,"02HR33Z ")
 ;;114
 ;;21,"02HR40Z ")
 ;;115
 ;;21,"02HR42Z ")
 ;;116
 ;;21,"02HR43Z ")
 ;;117
 ;;21,"02HS03Z ")
 ;;118
 ;;21,"02HS33Z ")
 ;;119
 ;;21,"02HS43Z ")
 ;;120
 ;;21,"02HT03Z ")
 ;;121
 ;;21,"02HT33Z ")
 ;;122
 ;;21,"02HT43Z ")
 ;;123
 ;;21,"02HV03Z ")
 ;;124
 ;;21,"02HV33Z ")
 ;;125
 ;;21,"02HV43Z ")
 ;;126
 ;;21,"02HW03Z ")
 ;;127
 ;;21,"02HW33Z ")
 ;;128
 ;;21,"02HW43Z ")
 ;;129
 ;;21,"02PAX2Z ")
 ;;130
 ;;21,"02PAX3Z ")
 ;;131
 ;;21,"02PAXDZ ")
 ;;132
 ;;21,"02PYX2Z ")
 ;;133
 ;;21,"02PYX3Z ")
 ;;134
 ;;21,"02PYXDZ ")
 ;;135
 ;;21,"02WAX2Z ")
 ;;136
 ;;21,"02WAX3Z ")
 ;;137
 ;;21,"02WAX7Z ")
 ;;138
 ;;21,"02WAX8Z ")
 ;;139
 ;;21,"02WAXCZ ")
 ;;140
 ;;21,"02WAXDZ ")
 ;;141
 ;;21,"02WAXJZ ")
 ;;142
 ;;21,"02WAXKZ ")
 ;;143
 ;;21,"02WAXMZ ")
 ;;144
 ;;21,"02WAXQZ ")
 ;;145
 ;;21,"02WAXRZ ")
 ;;146
 ;;21,"02WYX2Z ")
 ;;147
 ;;21,"02WYX3Z ")
 ;;148
 ;;21,"02WYX7Z ")
 ;;149
 ;;21,"02WYX8Z ")
 ;;150
 ;;21,"02WYXCZ ")
 ;;151
 ;;21,"02WYXDZ ")
 ;;152
 ;;21,"02WYXJZ ")
 ;;153
 ;;21,"02WYXKZ ")
 ;;154
 ;;21,"039000Z ")
 ;;155
 ;;21,"03900ZZ ")
 ;;156
 ;;21,"039030Z ")
 ;;157
 ;;21,"03903ZZ ")
 ;;158
 ;;21,"039040Z ")
 ;;159
 ;;21,"03904ZZ ")
 ;;160
 ;;21,"039100Z ")
 ;;161
 ;;21,"03910ZZ ")
 ;;162
 ;;21,"039130Z ")
 ;;163
 ;;21,"03913ZZ ")
 ;;164
 ;;21,"039140Z ")
 ;;165
 ;;21,"03914ZZ ")
 ;;166
 ;;21,"039200Z ")
 ;;167
 ;;21,"03920ZZ ")
 ;;168
 ;;21,"039230Z ")
 ;;169
 ;;21,"03923ZZ ")
 ;;170
 ;;21,"039240Z ")
 ;;171
 ;;21,"03924ZZ ")
 ;;172
 ;;21,"039300Z ")
 ;;173
 ;;21,"03930ZZ ")
 ;;174
 ;;21,"039330Z ")
 ;;175
 ;;21,"03933ZZ ")
 ;;176
 ;;21,"039340Z ")
 ;;177
 ;;21,"03934ZZ ")
 ;;178
 ;;21,"039400Z ")
 ;;179
 ;;21,"03940ZZ ")
 ;;180
 ;;21,"039430Z ")
 ;;181
 ;;21,"03943ZZ ")
 ;;182
 ;;21,"039440Z ")
 ;;183
 ;;21,"03944ZZ ")
 ;;184
 ;;21,"039500Z ")
 ;;185
 ;;21,"03950ZZ ")
 ;;186
 ;;21,"039530Z ")
 ;;187
 ;;21,"03953ZZ ")
 ;;188
 ;;21,"039540Z ")
 ;;189
 ;;21,"03954ZZ ")
 ;;190
 ;;21,"039600Z ")
 ;;191
 ;;21,"03960ZZ ")
 ;;192
 ;;21,"039630Z ")
 ;;193
 ;;21,"03963ZZ ")
 ;;194
 ;;21,"039640Z ")
 ;;195
 ;;21,"03964ZZ ")
 ;;196
 ;;21,"039700Z ")
 ;;197
 ;;21,"03970ZZ ")
 ;;198
 ;;21,"039730Z ")
 ;;199
 ;;21,"03973ZZ ")
 ;;200
 ;;21,"039740Z ")
 ;;201
 ;;21,"03974ZZ ")
 ;;202
 ;;21,"039800Z ")
 ;;203
 ;;21,"03980ZZ ")
 ;;204
 ;;21,"039830Z ")
 ;;205
 ;;21,"03983ZZ ")
 ;;206
 ;;21,"039840Z ")
 ;;207
 ;;21,"03984ZZ ")
 ;;208
 ;;21,"039900Z ")
 ;;209
 ;;21,"03990ZZ ")
 ;;210
 ;;21,"039930Z ")
 ;;211
 ;;21,"03993ZZ ")
 ;;212
 ;;21,"039940Z ")
 ;;213
 ;;21,"03994ZZ ")
 ;;214
 ;;21,"039A00Z ")
 ;;215
 ;;21,"039A0ZZ ")
 ;;216
 ;;21,"039A30Z ")
 ;;217
 ;;21,"039A3ZZ ")
 ;;218
 ;;21,"039A40Z ")
 ;;219
 ;;21,"039A4ZZ ")
 ;;220
 ;;21,"039B00Z ")
 ;;221
 ;;21,"039B0ZZ ")
 ;;222
 ;;21,"039B30Z ")
 ;;223
 ;;21,"039B3ZZ ")
 ;;224
 ;;21,"039B40Z ")
 ;;225
 ;;21,"039B4ZZ ")
 ;;226
 ;;21,"039C00Z ")
 ;;227
 ;;21,"039C0ZZ ")
 ;;228
 ;;21,"039C30Z ")
 ;;229
 ;;21,"039C3ZZ ")
 ;;230
 ;;21,"039C40Z ")
 ;;231
 ;;21,"039C4ZZ ")
 ;;232
 ;;21,"039D00Z ")
 ;;233
 ;;21,"039D0ZZ ")
 ;;234
 ;;21,"039D30Z ")
 ;;235
 ;;21,"039D3ZZ ")
 ;;236
 ;;21,"039D40Z ")
 ;;237
 ;;21,"039D4ZZ ")
 ;;238
 ;;21,"039F00Z ")
 ;;239
 ;;21,"039F0ZZ ")
 ;;240
 ;;21,"039F30Z ")
 ;;241
 ;;21,"039F3ZZ ")
 ;;242
 ;;21,"039F40Z ")
 ;;243
 ;;21,"039F4ZZ ")
 ;;244
 ;;21,"039G00Z ")
 ;;245
 ;;21,"039G0ZZ ")
 ;;246
 ;;21,"039G30Z ")
 ;;247
 ;;21,"039G3ZZ ")
 ;;248
 ;;21,"039G40Z ")
 ;;249
 ;;21,"039G4ZZ ")
 ;;250
 ;;21,"039H00Z ")
 ;;251
 ;;21,"039H0ZZ ")
 ;;252
 ;;21,"039H30Z ")
 ;;253
 ;;21,"039H3ZZ ")
 ;;254
 ;;21,"039H40Z ")
 ;;255
 ;;21,"039H4ZZ ")
 ;;256
 ;;21,"039J00Z ")
 ;;257
 ;;21,"039J0ZZ ")
 ;;258
 ;;21,"039J30Z ")
 ;;259
 ;;21,"039J3ZZ ")
 ;;260
 ;;21,"039J40Z ")
 ;;261
 ;;21,"039J4ZZ ")
 ;;262
 ;;21,"039K00Z ")
 ;;263
 ;;21,"039K0ZZ ")
 ;;264
 ;;21,"039K30Z ")
 ;;265
 ;;21,"039K3ZZ ")
 ;;266
 ;;21,"039K40Z ")
 ;;267
 ;;21,"039K4ZZ ")
 ;;268
 ;;21,"039L00Z ")
 ;;269
 ;;21,"039L0ZZ ")
 ;;270
 ;;21,"039L30Z ")
 ;;271
 ;;21,"039L3ZZ ")
 ;;272
 ;;21,"039L40Z ")
 ;;273
 ;;21,"039L4ZZ ")
 ;;274
 ;;21,"039M00Z ")
 ;;275
 ;;21,"039M0ZZ ")
 ;;276
 ;;21,"039M30Z ")
 ;;277
 ;;21,"039M3ZZ ")
 ;;278
 ;;21,"039M40Z ")
 ;;279
 ;;21,"039M4ZZ ")
 ;;280
 ;;21,"039N00Z ")
 ;;281
 ;;21,"039N0ZZ ")
 ;;282
 ;;21,"039N30Z ")
 ;;283
 ;;21,"039N3ZZ ")
 ;;284
 ;;21,"039N40Z ")
 ;;285
 ;;21,"039N4ZZ ")
 ;;286
 ;;21,"039P00Z ")
 ;;287
 ;;21,"039P0ZZ ")
 ;;288
 ;;21,"039P30Z ")
 ;;289
 ;;21,"039P3ZZ ")
 ;;290
 ;;21,"039P40Z ")
 ;;291
 ;;21,"039P4ZZ ")
 ;;292
 ;;21,"039Q00Z ")
 ;;293
 ;;21,"039Q0ZZ ")
 ;;294
 ;;21,"039Q30Z ")
 ;;295
 ;;21,"039Q3ZZ ")
 ;;296
 ;;21,"039Q40Z ")
 ;;297
 ;;21,"039Q4ZZ ")
 ;;298
 ;;21,"039R00Z ")
 ;;299
 ;;21,"039R0ZZ ")
 ;;300
 ;;21,"039R30Z ")
 ;;301
 ;;21,"039R3ZZ ")
 ;;302
 ;;21,"039R40Z ")
 ;;303
 ;;21,"039R4ZZ ")
 ;;304
 ;;21,"039S00Z ")
 ;;305
 ;;21,"039S0ZZ ")
 ;;306
 ;;21,"039S30Z ")
 ;;307
 ;;21,"039S3ZZ ")
 ;;308
 ;;21,"039S40Z ")
 ;;309
 ;;21,"039S4ZZ ")
 ;;310
 ;;21,"039T00Z ")
 ;;311
 ;;21,"039T0ZZ ")
 ;;312
 ;;21,"039T30Z ")
 ;;313
 ;;21,"039T3ZZ ")
 ;;314
 ;;21,"039T40Z ")
 ;;315
 ;;21,"039T4ZZ ")
 ;;316
 ;;21,"039U00Z ")
 ;;317
 ;;21,"039U0ZZ ")
 ;;318
 ;;21,"039U30Z ")
 ;;319
 ;;21,"039U3ZZ ")
 ;;320
 ;;21,"039U40Z ")
 ;;321
 ;;21,"039U4ZZ ")
 ;;322
 ;;21,"039V00Z ")
 ;;323
 ;;21,"039V0ZZ ")
 ;;324
 ;;21,"039V30Z ")
 ;;325
 ;;21,"039V3ZZ ")
 ;;326
 ;;21,"039V40Z ")
 ;;327
 ;;21,"039V4ZZ ")
 ;;328
 ;;21,"039Y00Z ")
 ;;329
 ;;21,"039Y0ZZ ")
 ;;330
 ;;21,"039Y30Z ")
 ;;331
 ;;21,"039Y3ZZ ")
 ;;332
 ;;21,"039Y40Z ")
 ;;333
 ;;21,"039Y4ZZ ")
 ;;334
 ;;21,"03H003Z ")
 ;;335
 ;;21,"03H033Z ")
 ;;336
 ;;21,"03H043Z ")
 ;;337
 ;;21,"03H103Z ")
 ;;338
 ;;21,"03H133Z ")
 ;;339
 ;;21,"03H143Z ")
 ;;340
 ;;21,"03H203Z ")
 ;;341
 ;;21,"03H233Z ")
 ;;342
 ;;21,"03H243Z ")
 ;;343
 ;;21,"03H303Z ")
 ;;344
 ;;21,"03H333Z ")
 ;;345
 ;;21,"03H343Z ")
 ;;346
 ;;21,"03H403Z ")
 ;;347
 ;;21,"03H433Z ")
 ;;348
 ;;21,"03H443Z ")
 ;;349
 ;;21,"03H503Z ")
 ;;350
 ;;21,"03H533Z ")
 ;;351
 ;;21,"03H543Z ")
 ;;352
 ;;21,"03H603Z ")
 ;;353
 ;;21,"03H633Z ")
 ;;354
 ;;21,"03H643Z ")
 ;;355
 ;;21,"03H703Z ")
 ;;356
 ;;21,"03H733Z ")
 ;;357
 ;;21,"03H743Z ")
 ;;358
 ;;21,"03H803Z ")
 ;;359
 ;;21,"03H833Z ")
 ;;360
 ;;21,"03H843Z ")
 ;;361
 ;;21,"03H903Z ")
 ;;362
 ;;21,"03H933Z ")
 ;;363
 ;;21,"03H943Z ")
 ;;364
 ;;21,"03HA03Z ")
 ;;365
 ;;21,"03HA33Z ")
 ;;366
 ;;21,"03HA43Z ")
 ;;367
 ;;21,"03HB03Z ")
 ;;368
 ;;21,"03HB33Z ")
 ;;369
 ;;21,"03HB43Z ")
 ;;370
 ;;21,"03HC03Z ")
 ;;371
 ;;21,"03HC33Z ")
 ;;372
 ;;21,"03HC43Z ")
 ;;373
 ;;21,"03HD03Z ")
 ;;374
 ;;21,"03HD33Z ")
 ;;375
 ;;21,"03HD43Z ")
 ;;376
 ;;21,"03HF03Z ")
 ;;377
 ;;21,"03HF33Z ")
 ;;378
 ;;21,"03HF43Z ")
 ;;379
 ;;21,"03HG03Z ")
 ;;380
 ;;21,"03HG33Z ")
 ;;381
 ;;21,"03HG43Z ")
 ;;382
 ;;21,"03HH03Z ")
 ;;383
 ;;21,"03HH33Z ")
 ;;384
 ;;21,"03HH43Z ")
 ;;385
 ;;21,"03HJ03Z ")
 ;;386
 ;;21,"03HJ33Z ")
 ;;387
 ;;21,"03HJ43Z ")
 ;;388
 ;;21,"03HK03Z ")
 ;;389
 ;;21,"03HK33Z ")
 ;;390
 ;;21,"03HK43Z ")
 ;;391
 ;;21,"03HL03Z ")
 ;;392
 ;;21,"03HL33Z ")
 ;;393
 ;;21,"03HL43Z ")
 ;;394
 ;;21,"03HM03Z ")
 ;;395
 ;;21,"03HM33Z ")
 ;;396
 ;;21,"03HM43Z ")
 ;;397
 ;;21,"03HN03Z ")
 ;;398
 ;;21,"03HN33Z ")
 ;;399
 ;;21,"03HN43Z ")
 ;;400
 ;;21,"03HP03Z ")
 ;;401
 ;;21,"03HP33Z ")
 ;;402
 ;;21,"03HP43Z ")
 ;;403
 ;;21,"03HQ03Z ")
 ;;404
 ;;21,"03HQ33Z ")
 ;;405
 ;
OTHER ; OTHER ROUTINES
 D ^ATXXB10
 D ^ATXXB100
 D ^ATXXB101
 D ^ATXXB102
 D ^ATXXB103
 D ^ATXXB104
 D ^ATXXB105
 D ^ATXXB106
 D ^ATXXB107
 D ^ATXXB108
 D ^ATXXB109
 D ^ATXXB11
 D ^ATXXB110
 D ^ATXXB111
 D ^ATXXB112
 D ^ATXXB113
 D ^ATXXB114
 D ^ATXXB115
 D ^ATXXB116
 D ^ATXXB117
 D ^ATXXB118
 D ^ATXXB119
 D ^ATXXB12
 D ^ATXXB120
 D ^ATXXB121
 D ^ATXXB122
 D ^ATXXB123
 D ^ATXXB124
 D ^ATXXB125
 D ^ATXXB126
 D ^ATXXB127
 D ^ATXXB128
 D ^ATXXB129
 D ^ATXXB13
 D ^ATXXB130
 D ^ATXXB131
 D ^ATXXB132
 D ^ATXXB133
 D ^ATXXB134
 D ^ATXXB135
 D ^ATXXB136
 D ^ATXXB137
 D ^ATXXB138
 D ^ATXXB139
 D ^ATXXB14
 D ^ATXXB140
 D ^ATXXB141
 D ^ATXXB142
 D ^ATXXB143
 D ^ATXXB144
 D ^ATXXB145
 D ^ATXXB146
 D ^ATXXB147
 D ^ATXXB148
 D ^ATXXB149
 D ^ATXXB15
 D ^ATXXB150
 D ^ATXXB151
 D ^ATXXB152
 D ^ATXXB153
 D ^ATXXB154
 D ^ATXXB155
 D ^ATXXB156
 D ^ATXXB157
 D ^ATXXB158
 D ^ATXXB159
 D ^ATXXB16
 D ^ATXXB160
 D ^ATXXB161
 D ^ATXXB162
 D ^ATXXB163
 D ^ATXXB164
 D ^ATXXB165
 D ^ATXXB166
 D ^ATXXB167
 D ^ATXXB168
 D ^ATXXB169
 D ^ATXXB17
 D ^ATXXB170
 D ^ATXXB171
 D ^ATXXB172
 D ^ATXXB173
 D ^ATXXB174
 D ^ATXXB175
 D ^ATXXB176
 D ^ATXXB177
 D ^ATXXB178
 D ^ATXXB179
 D ^ATXXB18
 D ^ATXXB180
 D ^ATXXB181
 D ^ATXXB182
 D ^ATXXB183
 D ^ATXXB184
 D ^ATXXB185
 D ^ATXXB186
 D ^ATXXB187
 D ^ATXXB188
 D ^ATXXB189
 D ^ATXXB19
 D ^ATXXB190
 D ^ATXXB191
 D ^ATXXB192
 D ^ATXXB193
 D ^ATXXB194
 D ^ATXXB195
 D ^ATXXB196
 D ^ATXXB197
 D ^ATXXB198
 D ^ATXXB199
 D ^ATXXB2
 D ^ATXXB20
 D ^ATXXB200
 D ^ATXXB201
 D ^ATXXB202
 D ^ATXXB203
 D ^ATXXB204
 D ^ATXXB205
 D ^ATXXB206
 D ^ATXXB207
 D ^ATXXB208
 D ^ATXXB209
 D ^ATXXB21
 D ^ATXXB210
 D ^ATXXB211
 D ^ATXXB212
 D ^ATXXB213
 D ^ATXXB214
 D ^ATXXB215
 D ^ATXXB216
 D ^ATXXB217
 D ^ATXXB218
 D ^ATXXB219
 D ^ATXXB22
 D ^ATXXB220
 D ^ATXXB221
 D ^ATXXB222
 D ^ATXXB223
 D ^ATXXB224
 D ^ATXXB225
 D ^ATXXB226
 D ^ATXXB227
 D ^ATXXB228
 D ^ATXXB229
 D ^ATXXB23
 D ^ATXXB230
 D ^ATXXB231
 D ^ATXXB232
 D ^ATXXB233
 D ^ATXXB234
 D ^ATXXB235
 D ^ATXXB236
 D ^ATXXB237
 D ^ATXXB238
 D ^ATXXB239
 D ^ATXXB24
 D ^ATXXB240
 D ^ATXXB241
 D ^ATXXB242
 D ^ATXXB243
 D ^ATXXB244
 D ^ATXXB245
 D ^ATXXB246
 D ^ATXXB247
 D ^ATXXB248
 D ^ATXXB249
 D ^ATXXB25
 D ^ATXXB250
 D ^ATXXB251
 D ^ATXXB252
 D ^ATXXB253
 D ^ATXXB254
 D ^ATXXB255
 D ^ATXXB256
 D ^ATXXB257
 D ^ATXXB258
 D ^ATXXB259
 D ^ATXXB26
 D ^ATXXB27
 D ^ATXXB28
 D ^ATXXB29
 D ^ATXXB3
 D ^ATXXB30
 D ^ATXXB31
 D ^ATXXB32
 D ^ATXXB33
 D ^ATXXB34
 D ^ATXXB35
 D ^ATXXB36
 D ^ATXXB37
 D ^ATXXB38
 D ^ATXXB39
 D ^ATXXB4
 D ^ATXXB40
 D ^ATXXB41
 D ^ATXXB42
 D ^ATXXB43
 D ^ATXXB44
 D ^ATXXB45
 D ^ATXXB46
 D ^ATXXB47
 D ^ATXXB48
 D ^ATXXB49
 D ^ATXXB5
 D ^ATXXB50
 D ^ATXXB51
 D ^ATXXB52
 D ^ATXXB53
 D ^ATXXB54
 D ^ATXXB55
 D ^ATXXB56
 D ^ATXXB57
 D ^ATXXB58
 D ^ATXXB59
 D ^ATXXB6
 D ^ATXXB60
 D ^ATXXB61
 D ^ATXXB62
 D ^ATXXB63
 D ^ATXXB64
 D ^ATXXB65
 D ^ATXXB66
 D ^ATXXB67
 D ^ATXXB68
 D ^ATXXB69
 D ^ATXXB7
 D ^ATXXB70
 D ^ATXXB71
 D ^ATXXB72
 D ^ATXXB73
 D ^ATXXB74
 D ^ATXXB75
 D ^ATXXB76
 D ^ATXXB77
 D ^ATXXB78
 D ^ATXXB79
 D ^ATXXB8
 D ^ATXXB80
 D ^ATXXB81
 D ^ATXXB82
 D ^ATXXB83
 D ^ATXXB84
 D ^ATXXB85
 D ^ATXXB86
 D ^ATXXB87
 D ^ATXXB88
 D ^ATXXB89
 D ^ATXXB9
 D ^ATXXB90
 D ^ATXXB91
 D ^ATXXB92
 D ^ATXXB93
 D ^ATXXB94
 D ^ATXXB95
 D ^ATXXB96
 D ^ATXXB97
 D ^ATXXB98
 D ^ATXXB99
 Q