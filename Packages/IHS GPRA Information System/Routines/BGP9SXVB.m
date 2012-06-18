BGP9SXVB ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"00247-0177-20 ")
 ;;535
 ;;21,"00247-0177-30 ")
 ;;536
 ;;21,"00247-0177-60 ")
 ;;537
 ;;21,"00247-0190-20 ")
 ;;625
 ;;21,"00247-0308-52 ")
 ;;614
 ;;21,"00247-0634-17 ")
 ;;33
 ;;21,"00247-0656-02 ")
 ;;425
 ;;21,"00247-0656-04 ")
 ;;426
 ;;21,"00247-0656-10 ")
 ;;427
 ;;21,"00247-0656-14 ")
 ;;428
 ;;21,"00247-0656-20 ")
 ;;429
 ;;21,"00247-0656-28 ")
 ;;430
 ;;21,"00247-0656-30 ")
 ;;431
 ;;21,"00247-0656-60 ")
 ;;432
 ;;21,"00247-0659-07 ")
 ;;169
 ;;21,"00247-0667-08 ")
 ;;67
 ;;21,"00247-0674-41 ")
 ;;68
 ;;21,"00247-0703-07 ")
 ;;162
 ;;21,"00247-0824-06 ")
 ;;353
 ;;21,"00247-0824-10 ")
 ;;354
 ;;21,"00247-0824-30 ")
 ;;355
 ;;21,"00247-0824-60 ")
 ;;356
 ;;21,"00247-0824-90 ")
 ;;357
 ;;21,"00247-0873-02 ")
 ;;93
 ;;21,"00247-0873-52 ")
 ;;94
 ;;21,"00247-0873-60 ")
 ;;95
 ;;21,"00247-1094-17 ")
 ;;26
 ;;21,"00247-1094-88 ")
 ;;27
 ;;21,"00247-1575-13 ")
 ;;194
 ;;21,"00247-1576-12 ")
 ;;179
 ;;21,"00247-1576-13 ")
 ;;180
 ;;21,"00247-1577-13 ")
 ;;186
 ;;21,"00247-1696-93 ")
 ;;324
 ;;21,"00247-1897-00 ")
 ;;633
 ;;21,"00247-1897-30 ")
 ;;634
 ;;21,"00247-1897-60 ")
 ;;635
 ;;21,"00247-1897-77 ")
 ;;636
 ;;21,"00247-1897-90 ")
 ;;637
 ;;21,"00247-1898-00 ")
 ;;640
 ;;21,"00247-1898-14 ")
 ;;641
 ;;21,"00247-1898-30 ")
 ;;642
 ;;21,"00247-1898-60 ")
 ;;643
 ;;21,"00247-1898-77 ")
 ;;644
 ;;21,"00247-1898-90 ")
 ;;645
 ;;21,"00247-1973-60 ")
 ;;233
 ;;21,"00247-1983-60 ")
 ;;220
 ;;21,"00247-1988-30 ")
 ;;272
 ;;21,"00247-2215-60 ")
 ;;246
 ;;21,"00258-3581-01 ")
 ;;514
 ;;21,"00258-3581-05 ")
 ;;515
 ;;21,"00258-3581-10 ")
 ;;516
 ;;21,"00258-3583-01 ")
 ;;412
 ;;21,"00258-3583-05 ")
 ;;413
 ;;21,"00258-3583-10 ")
 ;;414
 ;;21,"00258-3584-01 ")
 ;;342
 ;;21,"00258-3584-05 ")
 ;;343
 ;;21,"00258-3625-01 ")
 ;;483
 ;;21,"00258-3634-01 ")
 ;;385
 ;;21,"00258-3638-01 ")
 ;;379
 ;;21,"00281-1115-53 ")
 ;;103
 ;;21,"00281-1115-57 ")
 ;;104
 ;;21,"00281-1115-63 ")
 ;;105
 ;;21,"00281-1116-53 ")
 ;;110
 ;;21,"00281-1116-57 ")
 ;;111
 ;;21,"00281-1116-63 ")
 ;;112
 ;;21,"00281-1124-53 ")
 ;;138
 ;;21,"00281-1124-57 ")
 ;;139
 ;;21,"00281-1124-63 ")
 ;;140
 ;;21,"00281-1127-74 ")
 ;;159
 ;;21,"00310-0401-39 ")
 ;;638
 ;;21,"00310-0401-60 ")
 ;;639
 ;;21,"00310-0402-39 ")
 ;;646
 ;;21,"00310-0402-60 ")
 ;;647
 ;;21,"00364-0004-01 ")
 ;;3
 ;;21,"00405-3825-16 ")
 ;;615
 ;;21,"00405-4060-01 ")
 ;;4
 ;;21,"00405-4060-03 ")
 ;;5
 ;;21,"00405-4061-01 ")
 ;;15
 ;;21,"00405-4061-03 ")
 ;;16
 ;;21,"00405-4983-01 ")
 ;;380
 ;;21,"00405-4984-01 ")
 ;;386
 ;;21,"00405-4985-01 ")
 ;;484
 ;;21,"00405-4986-01 ")
 ;;358
 ;;21,"00405-4987-01 ")
 ;;433
 ;;21,"00405-4987-02 ")
 ;;434
 ;;21,"00405-4988-01 ")
 ;;538
 ;;21,"00405-4988-02 ")
 ;;539
 ;;21,"00430-0214-24 ")
 ;;328
 ;;21,"00430-0221-24 ")
 ;;329
 ;;21,"00456-0644-16 ")
 ;;612
 ;;21,"00456-0645-08 ")
 ;;330
 ;;21,"00456-0648-08 ")
 ;;252
 ;;21,"00456-0648-16 ")
 ;;253
 ;;21,"00456-0670-99 ")
 ;;163
 ;;21,"00456-0672-99 ")
 ;;170
 ;;21,"00456-3581-01 ")
 ;;493
 ;;21,"00456-3581-05 ")
 ;;494
 ;;21,"00456-3581-10 ")
 ;;495
 ;;21,"00456-4301-01 ")
 ;;378
 ;;21,"00456-4302-01 ")
 ;;384
 ;;21,"00456-4303-01 ")
 ;;482
 ;;21,"00456-4310-01 ")
 ;;333
 ;;21,"00456-4310-02 ")
 ;;334
 ;;21,"00456-4320-00 ")
 ;;390
 ;;21,"00456-4320-01 ")
 ;;391
 ;;21,"00456-4320-02 ")
 ;;392
 ;;21,"00456-4330-00 ")
 ;;496
 ;;21,"00456-4330-01 ")
 ;;497
 ;;21,"00456-4330-02 ")
 ;;498
 ;;21,"00456-4345-01 ")
 ;;601
 ;;21,"00463-9031-16 ")
 ;;621
 ;;21,"00472-0750-21 ")
 ;;80
 ;;21,"00472-0750-60 ")
 ;;81
 ;;21,"00472-0752-21 ")
 ;;82
 ;;21,"00472-0752-60 ")
 ;;83
 ;;21,"00472-0873-08 ")
 ;;12
 ;;21,"00472-1238-16 ")
 ;;119
 ;;21,"00472-1444-28 ")
 ;;616
 ;;21,"00485-0059-16 ")
 ;;254
 ;;21,"00490-0080-00 ")
 ;;344
 ;;21,"00490-0080-30 ")
 ;;345
 ;;21,"00490-0080-60 ")
 ;;346
 ;;21,"00490-0080-90 ")
 ;;347
 ;;21,"00525-0305-01 ")
 ;;131
 ;;21,"00525-0376-16 ")
 ;;130
 ;;21,"00536-4652-05 ")
 ;;540
 ;;21,"00551-0123-01 ")
 ;;142
 ;;21,"00551-0123-02 ")
 ;;143
 ;;21,"00551-0124-01 ")
 ;;160
 ;;21,"00551-0124-02 ")
 ;;161
 ;;21,"00551-0205-01 ")
 ;;156
 ;;21,"00556-0149-16 ")
 ;;622
 ;;21,"00556-0149-28 ")
 ;;623
 ;;21,"00585-0673-02 ")
 ;;96
 ;;21,"00585-0673-03 ")
 ;;97
 ;;21,"00585-0675-01 ")
 ;;69
 ;;21,"00585-0675-02 ")
 ;;70
 ;;21,"00585-0685-02 ")
 ;;325
 ;;21,"00603-1190-58 ")
 ;;120
 ;;21,"00603-5747-21 ")
 ;;605
 ;;21,"00603-5944-21 ")
 ;;359
 ;;21,"00603-5944-28 ")
 ;;360
 ;;21,"00603-5945-21 ")
 ;;435
 ;;21,"00603-5945-28 ")
 ;;436
 ;;21,"00603-5945-32 ")
 ;;437
 ;;21,"00603-5946-21 ")
 ;;541
 ;;21,"00603-5946-28 ")
 ;;542
 ;;21,"00603-5946-29 ")
 ;;543
 ;;21,"00603-5946-32 ")
 ;;544
 ;;21,"00603-5950-21 ")
 ;;381
 ;;21,"00603-5951-21 ")
 ;;387
 ;;21,"00603-5952-21 ")
 ;;485
 ;;21,"00677-0003-01 ")
 ;;6
 ;;21,"00677-0007-01 ")
 ;;17