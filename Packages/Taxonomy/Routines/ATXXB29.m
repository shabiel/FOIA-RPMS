ATXXB29 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"B50T1ZZ ")
 ;;11083
 ;;21,"B50TYZZ ")
 ;;11084
 ;;21,"B50V0ZZ ")
 ;;11085
 ;;21,"B50V1ZZ ")
 ;;11086
 ;;21,"B50VYZZ ")
 ;;11087
 ;;21,"B50W0ZZ ")
 ;;11088
 ;;21,"B50W1ZZ ")
 ;;11089
 ;;21,"B50WYZZ ")
 ;;11090
 ;;21,"B5100ZA ")
 ;;11091
 ;;21,"B5100ZZ ")
 ;;11092
 ;;21,"B5101ZA ")
 ;;11093
 ;;21,"B5101ZZ ")
 ;;11094
 ;;21,"B510YZA ")
 ;;11095
 ;;21,"B510YZZ ")
 ;;11096
 ;;21,"B510ZZA ")
 ;;11097
 ;;21,"B510ZZZ ")
 ;;11098
 ;;21,"B5110ZA ")
 ;;11099
 ;;21,"B5110ZZ ")
 ;;11100
 ;;21,"B5111ZA ")
 ;;11101
 ;;21,"B5111ZZ ")
 ;;11102
 ;;21,"B511YZA ")
 ;;11103
 ;;21,"B511YZZ ")
 ;;11104
 ;;21,"B511ZZA ")
 ;;11105
 ;;21,"B511ZZZ ")
 ;;11106
 ;;21,"B5120ZA ")
 ;;11107
 ;;21,"B5120ZZ ")
 ;;11108
 ;;21,"B5121ZA ")
 ;;11109
 ;;21,"B5121ZZ ")
 ;;11110
 ;;21,"B512YZA ")
 ;;11111
 ;;21,"B512YZZ ")
 ;;11112
 ;;21,"B512ZZA ")
 ;;11113
 ;;21,"B512ZZZ ")
 ;;11114
 ;;21,"B5130ZA ")
 ;;11115
 ;;21,"B5130ZZ ")
 ;;11116
 ;;21,"B5131ZA ")
 ;;11117
 ;;21,"B5131ZZ ")
 ;;11118
 ;;21,"B513YZA ")
 ;;11119
 ;;21,"B513YZZ ")
 ;;11120
 ;;21,"B513ZZA ")
 ;;11121
 ;;21,"B513ZZZ ")
 ;;11122
 ;;21,"B5140ZA ")
 ;;11123
 ;;21,"B5140ZZ ")
 ;;11124
 ;;21,"B5141ZA ")
 ;;11125
 ;;21,"B5141ZZ ")
 ;;11126
 ;;21,"B514YZA ")
 ;;11127
 ;;21,"B514YZZ ")
 ;;11128
 ;;21,"B514ZZA ")
 ;;11129
 ;;21,"B514ZZZ ")
 ;;11130
 ;;21,"B5150ZA ")
 ;;11131
 ;;21,"B5150ZZ ")
 ;;11132
 ;;21,"B5151ZA ")
 ;;11133
 ;;21,"B5151ZZ ")
 ;;11134
 ;;21,"B515YZA ")
 ;;11135
 ;;21,"B515YZZ ")
 ;;11136
 ;;21,"B515ZZA ")
 ;;11137
 ;;21,"B515ZZZ ")
 ;;11138
 ;;21,"B5160ZA ")
 ;;11139
 ;;21,"B5160ZZ ")
 ;;11140
 ;;21,"B5161ZA ")
 ;;11141
 ;;21,"B5161ZZ ")
 ;;11142
 ;;21,"B516YZA ")
 ;;11143
 ;;21,"B516YZZ ")
 ;;11144
 ;;21,"B516ZZA ")
 ;;11145
 ;;21,"B516ZZZ ")
 ;;11146
 ;;21,"B5170ZA ")
 ;;11147
 ;;21,"B5170ZZ ")
 ;;11148
 ;;21,"B5171ZA ")
 ;;11149
 ;;21,"B5171ZZ ")
 ;;11150
 ;;21,"B517YZA ")
 ;;11151
 ;;21,"B517YZZ ")
 ;;11152
 ;;21,"B517ZZA ")
 ;;11153
 ;;21,"B517ZZZ ")
 ;;11154
 ;;21,"B5180ZA ")
 ;;11155
 ;;21,"B5180ZZ ")
 ;;11156
 ;;21,"B5181ZA ")
 ;;11157
 ;;21,"B5181ZZ ")
 ;;11158
 ;;21,"B518YZA ")
 ;;11159
 ;;21,"B518YZZ ")
 ;;11160
 ;;21,"B518ZZA ")
 ;;11161
 ;;21,"B518ZZZ ")
 ;;11162
 ;;21,"B5190ZA ")
 ;;11163
 ;;21,"B5190ZZ ")
 ;;11164
 ;;21,"B5191ZA ")
 ;;11165
 ;;21,"B5191ZZ ")
 ;;11166
 ;;21,"B519YZA ")
 ;;11167
 ;;21,"B519YZZ ")
 ;;11168
 ;;21,"B519ZZA ")
 ;;11169
 ;;21,"B519ZZZ ")
 ;;11170
 ;;21,"B51B0ZA ")
 ;;11171
 ;;21,"B51B0ZZ ")
 ;;11172
 ;;21,"B51B1ZA ")
 ;;11173
 ;;21,"B51B1ZZ ")
 ;;11174
 ;;21,"B51BYZA ")
 ;;11175
 ;;21,"B51BYZZ ")
 ;;11176
 ;;21,"B51BZZA ")
 ;;11177
 ;;21,"B51BZZZ ")
 ;;11178
 ;;21,"B51C0ZA ")
 ;;11179
 ;;21,"B51C0ZZ ")
 ;;11180
 ;;21,"B51C1ZA ")
 ;;11181
 ;;21,"B51C1ZZ ")
 ;;11182
 ;;21,"B51CYZA ")
 ;;11183
 ;;21,"B51CYZZ ")
 ;;11184
 ;;21,"B51CZZA ")
 ;;11185
 ;;21,"B51CZZZ ")
 ;;11186
 ;;21,"B51D0ZA ")
 ;;11187
 ;;21,"B51D0ZZ ")
 ;;11188
 ;;21,"B51D1ZA ")
 ;;11189
 ;;21,"B51D1ZZ ")
 ;;11190
 ;;21,"B51DYZA ")
 ;;11191
 ;;21,"B51DYZZ ")
 ;;11192
 ;;21,"B51DZZA ")
 ;;11193
 ;;21,"B51DZZZ ")
 ;;11194
 ;;21,"B51F0ZA ")
 ;;11195
 ;;21,"B51F0ZZ ")
 ;;11196
 ;;21,"B51F1ZA ")
 ;;11197
 ;;21,"B51F1ZZ ")
 ;;11198
 ;;21,"B51FYZA ")
 ;;11199
 ;;21,"B51FYZZ ")
 ;;11200
 ;;21,"B51FZZA ")
 ;;11201
 ;;21,"B51FZZZ ")
 ;;11202
 ;;21,"B51G0ZA ")
 ;;11203
 ;;21,"B51G0ZZ ")
 ;;11204
 ;;21,"B51G1ZA ")
 ;;11205
 ;;21,"B51G1ZZ ")
 ;;11206
 ;;21,"B51GYZA ")
 ;;11207
 ;;21,"B51GYZZ ")
 ;;11208
 ;;21,"B51GZZA ")
 ;;11209
 ;;21,"B51GZZZ ")
 ;;11210
 ;;21,"B51H0ZA ")
 ;;11211
 ;;21,"B51H0ZZ ")
 ;;11212
 ;;21,"B51H1ZA ")
 ;;11213
 ;;21,"B51H1ZZ ")
 ;;11214
 ;;21,"B51HYZA ")
 ;;11215
 ;;21,"B51HYZZ ")
 ;;11216
 ;;21,"B51HZZA ")
 ;;11217
 ;;21,"B51HZZZ ")
 ;;11218
 ;;21,"B51J0ZA ")
 ;;11219
 ;;21,"B51J0ZZ ")
 ;;11220
 ;;21,"B51J1ZA ")
 ;;11221
 ;;21,"B51J1ZZ ")
 ;;11222
 ;;21,"B51JYZA ")
 ;;11223
 ;;21,"B51JYZZ ")
 ;;11224
 ;;21,"B51JZZA ")
 ;;11225
 ;;21,"B51JZZZ ")
 ;;11226
 ;;21,"B51K0ZA ")
 ;;11227
 ;;21,"B51K0ZZ ")
 ;;11228
 ;;21,"B51K1ZA ")
 ;;11229
 ;;21,"B51K1ZZ ")
 ;;11230
 ;;21,"B51KYZA ")
 ;;11231
 ;;21,"B51KYZZ ")
 ;;11232
 ;;21,"B51KZZA ")
 ;;11233
 ;;21,"B51KZZZ ")
 ;;11234
 ;;21,"B51L0ZA ")
 ;;11235
 ;;21,"B51L0ZZ ")
 ;;11236
 ;;21,"B51L1ZA ")
 ;;11237
 ;;21,"B51L1ZZ ")
 ;;11238
 ;;21,"B51LYZA ")
 ;;11239
 ;;21,"B51LYZZ ")
 ;;11240
 ;;21,"B51LZZA ")
 ;;11241
 ;;21,"B51LZZZ ")
 ;;11242
 ;;21,"B51M0ZA ")
 ;;11243
 ;;21,"B51M0ZZ ")
 ;;11244
 ;;21,"B51M1ZA ")
 ;;11245
 ;;21,"B51M1ZZ ")
 ;;11246
 ;;21,"B51MYZA ")
 ;;11247
 ;;21,"B51MYZZ ")
 ;;11248
 ;;21,"B51MZZA ")
 ;;11249
 ;;21,"B51MZZZ ")
 ;;11250
 ;;21,"B51N0ZA ")
 ;;11251
 ;;21,"B51N0ZZ ")
 ;;11252
 ;;21,"B51N1ZA ")
 ;;11253
 ;;21,"B51N1ZZ ")
 ;;11254
 ;;21,"B51NYZA ")
 ;;11255
 ;;21,"B51NYZZ ")
 ;;11256
 ;;21,"B51NZZA ")
 ;;11257
 ;;21,"B51NZZZ ")
 ;;11258
 ;;21,"B51P0ZA ")
 ;;11259
 ;;21,"B51P0ZZ ")
 ;;11260
 ;;21,"B51P1ZA ")
 ;;11261
 ;;21,"B51P1ZZ ")
 ;;11262
 ;;21,"B51PYZA ")
 ;;11263
 ;;21,"B51PYZZ ")
 ;;11264
 ;;21,"B51PZZA ")
 ;;11265
 ;;21,"B51PZZZ ")
 ;;11266
 ;;21,"B51Q0ZA ")
 ;;11267
 ;;21,"B51Q0ZZ ")
 ;;11268
 ;;21,"B51Q1ZA ")
 ;;11269
 ;;21,"B51Q1ZZ ")
 ;;11270
 ;;21,"B51QYZA ")
 ;;11271
 ;;21,"B51QYZZ ")
 ;;11272
 ;;21,"B51QZZA ")
 ;;11273
 ;;21,"B51QZZZ ")
 ;;11274
 ;;21,"B51R0ZA ")
 ;;11275
 ;;21,"B51R0ZZ ")
 ;;11276
 ;;21,"B51R1ZA ")
 ;;11277
 ;;21,"B51R1ZZ ")
 ;;11278
 ;;21,"B51RYZA ")
 ;;11279
 ;;21,"B51RYZZ ")
 ;;11280
 ;;21,"B51RZZA ")
 ;;11281
 ;;21,"B51RZZZ ")
 ;;11282
 ;;21,"B51S0ZA ")
 ;;11283
 ;;21,"B51S0ZZ ")
 ;;11284
 ;;21,"B51S1ZA ")
 ;;11285
 ;;21,"B51S1ZZ ")
 ;;11286
 ;;21,"B51SYZA ")
 ;;11287
 ;;21,"B51SYZZ ")
 ;;11288
 ;;21,"B51SZZA ")
 ;;11289
 ;;21,"B51SZZZ ")
 ;;11290
 ;;21,"B51T0ZA ")
 ;;11291
 ;;21,"B51T0ZZ ")
 ;;11292
 ;;21,"B51T1ZA ")
 ;;11293
 ;;21,"B51T1ZZ ")
 ;;11294
 ;;21,"B51TYZA ")
 ;;11295
 ;;21,"B51TYZZ ")
 ;;11296
 ;;21,"B51TZZA ")
 ;;11297
 ;;21,"B51TZZZ ")
 ;;11298
 ;;21,"B51V0ZA ")
 ;;11299
 ;;21,"B51V0ZZ ")
 ;;11300
 ;;21,"B51V1ZA ")
 ;;11301
 ;;21,"B51V1ZZ ")
 ;;11302
 ;;21,"B51VYZA ")
 ;;11303
 ;;21,"B51VYZZ ")
 ;;11304
 ;;21,"B51VZZA ")
 ;;11305
 ;;21,"B51VZZZ ")
 ;;11306
 ;;21,"B51W0ZA ")
 ;;11307
 ;;21,"B51W0ZZ ")
 ;;11308
 ;;21,"B51W1ZA ")
 ;;11309
 ;;21,"B51W1ZZ ")
 ;;11310
 ;;21,"B51WYZA ")
 ;;11311
 ;;21,"B51WYZZ ")
 ;;11312
 ;;21,"B51WZZA ")
 ;;11313
 ;;21,"B51WZZZ ")
 ;;11314
 ;;21,"B52200Z ")
 ;;11315
 ;;21,"B5220ZZ ")
 ;;11316
 ;;21,"B52210Z ")
 ;;11317
 ;;21,"B5221ZZ ")
 ;;11318
 ;;21,"B522Y0Z ")
 ;;11319
 ;;21,"B522YZZ ")
 ;;11320
 ;;21,"B522ZZZ ")
 ;;11321
 ;;21,"B52800Z ")
 ;;11322
 ;;21,"B5280ZZ ")
 ;;11323
 ;;21,"B52810Z ")
 ;;11324
 ;;21,"B5281ZZ ")
 ;;11325
 ;;21,"B528Y0Z ")
 ;;11326
 ;;21,"B528YZZ ")
 ;;11327
 ;;21,"B528ZZZ ")
 ;;11328
 ;;21,"B52900Z ")
 ;;11329
 ;;21,"B5290ZZ ")
 ;;11330
 ;;21,"B52910Z ")
 ;;11331
 ;;21,"B5291ZZ ")
 ;;11332
 ;;21,"B529Y0Z ")
 ;;11333
 ;;21,"B529YZZ ")
 ;;11334
 ;;21,"B529ZZZ ")
 ;;11335
 ;;21,"B52F00Z ")
 ;;11336
 ;;21,"B52F0ZZ ")
 ;;11337
 ;;21,"B52F10Z ")
 ;;11338
 ;;21,"B52F1ZZ ")
 ;;11339
 ;;21,"B52FY0Z ")
 ;;11340
 ;;21,"B52FYZZ ")
 ;;11341
 ;;21,"B52FZZZ ")
 ;;11342
 ;;21,"B52G00Z ")
 ;;11343
 ;;21,"B52G0ZZ ")
 ;;11344
 ;;21,"B52G10Z ")
 ;;11345
 ;;21,"B52G1ZZ ")
 ;;11346
 ;;21,"B52GY0Z ")
 ;;11347
 ;;21,"B52GYZZ ")
 ;;11348
 ;;21,"B52GZZZ ")
 ;;11349
 ;;21,"B52H00Z ")
 ;;11350
 ;;21,"B52H0ZZ ")
 ;;11351
 ;;21,"B52H10Z ")
 ;;11352
 ;;21,"B52H1ZZ ")
 ;;11353
 ;;21,"B52HY0Z ")
 ;;11354
 ;;21,"B52HYZZ ")
 ;;11355
 ;;21,"B52HZZZ ")
 ;;11356
 ;;21,"B52J00Z ")
 ;;11357
 ;;21,"B52J0ZZ ")
 ;;11358
 ;;21,"B52J10Z ")
 ;;11359
 ;;21,"B52J1ZZ ")
 ;;11360
 ;;21,"B52JY0Z ")
 ;;11361
 ;;21,"B52JYZZ ")
 ;;11362
 ;;21,"B52JZZZ ")
 ;;11363
 ;;21,"B52K00Z ")
 ;;11364
 ;;21,"B52K0ZZ ")
 ;;11365
 ;;21,"B52K10Z ")
 ;;11366
 ;;21,"B52K1ZZ ")
 ;;11367
 ;;21,"B52KY0Z ")
 ;;11368
 ;;21,"B52KYZZ ")
 ;;11369
 ;;21,"B52KZZZ ")
 ;;11370
 ;;21,"B52L00Z ")
 ;;11371
 ;;21,"B52L0ZZ ")
 ;;11372
 ;;21,"B52L10Z ")
 ;;11373
 ;;21,"B52L1ZZ ")
 ;;11374
 ;;21,"B52LY0Z ")
 ;;11375
 ;;21,"B52LYZZ ")
 ;;11376
 ;;21,"B52LZZZ ")
 ;;11377
 ;;21,"B52Q00Z ")
 ;;11378
 ;;21,"B52Q0ZZ ")
 ;;11379
 ;;21,"B52Q10Z ")
 ;;11380
 ;;21,"B52Q1ZZ ")
 ;;11381
 ;;21,"B52QY0Z ")
 ;;11382
 ;;21,"B52QYZZ ")
 ;;11383
 ;;21,"B52QZZZ ")
 ;;11384
 ;;21,"B52R00Z ")
 ;;11385
 ;;21,"B52R0ZZ ")
 ;;11386
 ;;21,"B52R10Z ")
 ;;11387
 ;;21,"B52R1ZZ ")
 ;;11388
 ;;21,"B52RY0Z ")
 ;;11389
 ;;21,"B52RYZZ ")
 ;;11390
 ;;21,"B52RZZZ ")
 ;;11391
 ;;21,"B52S00Z ")
 ;;11392
 ;;21,"B52S0ZZ ")
 ;;11393
 ;;21,"B52S10Z ")
 ;;11394
 ;;21,"B52S1ZZ ")
 ;;11395
 ;;21,"B52SY0Z ")
 ;;11396
 ;;21,"B52SYZZ ")
 ;;11397
 ;;21,"B52SZZZ ")
 ;;11398
 ;;21,"B52T00Z ")
 ;;11399
 ;;21,"B52T0ZZ ")
 ;;11400
 ;;21,"B52T10Z ")
 ;;11401
 ;;21,"B52T1ZZ ")
 ;;11402
 ;;21,"B52TY0Z ")
 ;;11403
 ;;21,"B52TYZZ ")
 ;;11404
 ;;21,"B52TZZZ ")
 ;;11405
 ;;21,"B531Y0Z ")
 ;;11406
 ;;21,"B531YZZ ")
 ;;11407
 ;;21,"B531ZZZ ")
 ;;11408
 ;;21,"B532Y0Z ")
 ;;11409
 ;;21,"B532YZZ ")
 ;;11410
 ;;21,"B532ZZZ ")
 ;;11411
 ;;21,"B535Y0Z ")
 ;;11412
 ;;21,"B535YZZ ")
 ;;11413
 ;;21,"B535ZZZ ")
 ;;11414
 ;;21,"B538Y0Z ")
 ;;11415
 ;;21,"B538YZZ ")
 ;;11416
 ;;21,"B538ZZZ ")
 ;;11417
 ;;21,"B539Y0Z ")
 ;;11418
 ;;21,"B539YZZ ")
 ;;11419
 ;;21,"B539ZZZ ")
 ;;11420
 ;;21,"B53BY0Z ")
 ;;11421
 ;;21,"B53BYZZ ")
 ;;11422
 ;;21,"B53BZZZ ")
 ;;11423
 ;;21,"B53CY0Z ")
 ;;11424
 ;;21,"B53CYZZ ")
 ;;11425
 ;;21,"B53CZZZ ")
 ;;11426
 ;;21,"B53DY0Z ")
 ;;11427
 ;;21,"B53DYZZ ")
 ;;11428
 ;;21,"B53DZZZ ")
 ;;11429
 ;;21,"B53HY0Z ")
 ;;11430
 ;;21,"B53HYZZ ")
 ;;11431
 ;;21,"B53HZZZ ")
 ;;11432
 ;;21,"B53LY0Z ")
 ;;11433
 ;;21,"B53LYZZ ")
 ;;11434
 ;;21,"B53LZZZ ")
 ;;11435
 ;;21,"B53MY0Z ")
 ;;11436
 ;;21,"B53MYZZ ")
 ;;11437
 ;;21,"B53MZZZ ")
 ;;11438
 ;;21,"B53NY0Z ")
 ;;11439
 ;;21,"B53NYZZ ")
 ;;11440
 ;;21,"B53NZZZ ")
 ;;11441
 ;;21,"B53PY0Z ")
 ;;11442
 ;;21,"B53PYZZ ")
 ;;11443
 ;;21,"B53PZZZ ")
 ;;11444
 ;;21,"B53SY0Z ")
 ;;11445
 ;;21,"B53SYZZ ")
 ;;11446
 ;;21,"B53SZZZ ")
 ;;11447
 ;;21,"B53TY0Z ")
 ;;11448
 ;;21,"B53TYZZ ")
 ;;11449
 ;;21,"B53TZZZ ")
 ;;11450
 ;;21,"B53VY0Z ")
 ;;11451
 ;;21,"B53VYZZ ")
 ;;11452
 ;;21,"B53VZZZ ")
 ;;11453
 ;;21,"B543ZZZ ")
 ;;11454
 ;;21,"B544ZZZ ")
 ;;11455
 ;;21,"B546ZZZ ")
 ;;11456
 ;;21,"B547ZZZ ")
 ;;11457
 ;;21,"B548ZZZ ")
 ;;11458
 ;;21,"B549ZZZ ")
 ;;11459
 ;;21,"B54BZZZ ")
 ;;11460
 ;;21,"B54CZZZ ")
 ;;11461
 ;;21,"B54DZZZ ")
 ;;11462
 ;;21,"B54JZZZ ")
 ;;11463
 ;;21,"B54KZZZ ")
 ;;11464
 ;;21,"B54LZZZ ")
 ;;11465
 ;;21,"B54MZZZ ")
 ;;11466