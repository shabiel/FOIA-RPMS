BGP53W2 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 16, 2015;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"41653-7 ")
 ;;408
 ;;21,"42604-9 ")
 ;;409
 ;;21,"42609-8 ")
 ;;410
 ;;21,"42615-5 ")
 ;;411
 ;;21,"42629-6 ")
 ;;412
 ;;21,"42631-2 ")
 ;;413
 ;;21,"43740-0 ")
 ;;414
 ;;21,"44919-9 ")
 ;;415
 ;;21,"45052-8 ")
 ;;416
 ;;21,"45053-6 ")
 ;;417
 ;;21,"45054-4 ")
 ;;418
 ;;21,"45055-1 ")
 ;;419
 ;;21,"45056-9 ")
 ;;420
 ;;21,"45204-5 ")
 ;;421
 ;;21,"45205-2 ")
 ;;422
 ;;21,"45206-0 ")
 ;;423
 ;;21,"45298-7 ")
 ;;424
 ;;21,"45299-5 ")
 ;;425
 ;;21,"46222-6 ")
 ;;426
 ;;21,"46223-4 ")
 ;;427
 ;;21,"47622-6 ")
 ;;428
 ;;21,"47859-4 ")
 ;;429
 ;;21,"47995-6 ")
 ;;430
 ;;21,"48109-3 ")
 ;;431
 ;;21,"48605-0 ")
 ;;432
 ;;21,"48606-8 ")
 ;;433
 ;;21,"48607-6 ")
 ;;434
 ;;21,"48810-6 ")
 ;;435
 ;;21,"48983-1 ")
 ;;436
 ;;21,"48984-9 ")
 ;;437
 ;;21,"48985-6 ")
 ;;438
 ;;21,"48986-4 ")
 ;;439
 ;;21,"48988-0 ")
 ;;440
 ;;21,"48989-8 ")
 ;;441
 ;;21,"48990-6 ")
 ;;442
 ;;21,"48991-4 ")
 ;;443
 ;;21,"48992-2 ")
 ;;444
 ;;21,"48993-0 ")
 ;;445
 ;;21,"48994-8 ")
 ;;446
 ;;21,"49134-0 ")
 ;;447
 ;;21,"49688-5 ")
 ;;448
 ;;21,"49689-3 ")
 ;;449
 ;;21,"50206-2 ")
 ;;450
 ;;21,"50207-0 ")
 ;;451
 ;;21,"50208-8 ")
 ;;452
 ;;21,"50212-0 ")
 ;;453
 ;;21,"50213-8 ")
 ;;454
 ;;21,"50214-6 ")
 ;;455
 ;;21,"50215-3 ")
 ;;456
 ;;21,"50216-1 ")
 ;;457
 ;;21,"50217-9 ")
 ;;458
 ;;21,"50218-7 ")
 ;;459
 ;;21,"50586-7 ")
 ;;460
 ;;21,"50587-5 ")
 ;;461
 ;;21,"50588-3 ")
 ;;462
 ;;21,"50589-1 ")
 ;;463
 ;;21,"50608-9 ")
 ;;464
 ;;21,"50667-5 ")
 ;;465
 ;;21,"50751-7 ")
 ;;466
 ;;21,"51426-5 ")
 ;;467
 ;;21,"51596-5 ")
 ;;468
 ;;21,"51597-3 ")
 ;;469
 ;;21,"51766-4 ")
 ;;470
 ;;21,"51767-2 ")
 ;;471
 ;;21,"51768-0 ")
 ;;472
 ;;21,"51769-8 ")
 ;;473
 ;;21,"53049-3 ")
 ;;474
 ;;21,"53093-1 ")
 ;;475
 ;;21,"53094-9 ")
 ;;476
 ;;21,"53474-3 ")
 ;;477
 ;;21,"53475-0 ")
 ;;478
 ;;21,"53476-8 ")
 ;;479
 ;;21,"53480-0 ")
 ;;480
 ;;21,"53481-8 ")
 ;;481
 ;;21,"53482-6 ")
 ;;482
 ;;21,"53483-4 ")
 ;;483
 ;;21,"53484-2 ")
 ;;484
 ;;21,"53485-9 ")
 ;;485
 ;;21,"53486-7 ")
 ;;486
 ;;21,"53487-5 ")
 ;;487
 ;;21,"53928-8 ")
 ;;488
 ;;21,"53929-6 ")
 ;;489
 ;;21,"54248-0 ")
 ;;490
 ;;21,"54249-8 ")
 ;;491
 ;;21,"54250-6 ")
 ;;492
 ;;21,"54251-4 ")
 ;;493
 ;;21,"54252-2 ")
 ;;494
 ;;21,"54253-0 ")
 ;;495
 ;;21,"54254-8 ")
 ;;496
 ;;21,"54255-5 ")
 ;;497
 ;;21,"54256-3 ")
 ;;498
 ;;21,"54257-1 ")
 ;;499
 ;;21,"54258-9 ")
 ;;500
 ;;21,"54259-7 ")
 ;;501
 ;;21,"54260-5 ")
 ;;502
 ;;21,"54261-3 ")
 ;;503
 ;;21,"54262-1 ")
 ;;504
 ;;21,"54263-9 ")
 ;;505
 ;;21,"54264-7 ")
 ;;506
 ;;21,"54265-4 ")
 ;;507
 ;;21,"54266-2 ")
 ;;508
 ;;21,"54267-0 ")
 ;;509
 ;;21,"54268-8 ")
 ;;510
 ;;21,"54269-6 ")
 ;;511
 ;;21,"54270-4 ")
 ;;512
 ;;21,"54271-2 ")
 ;;513
 ;;21,"54272-0 ")
 ;;514
 ;;21,"54273-8 ")
 ;;515
 ;;21,"54274-6 ")
 ;;516
 ;;21,"54275-3 ")
 ;;517
 ;;21,"54276-1 ")
 ;;518
 ;;21,"54277-9 ")
 ;;519
 ;;21,"54392-6 ")
 ;;520
 ;;21,"54393-4 ")
 ;;521
 ;;21,"54394-2 ")
 ;;522
 ;;21,"54395-9 ")
 ;;523
 ;;21,"54396-7 ")
 ;;524
 ;;21,"54397-5 ")
 ;;525
 ;;21,"54398-3 ")
 ;;526
 ;;21,"54399-1 ")
 ;;527
 ;;21,"54400-7 ")
 ;;528
 ;;21,"54401-5 ")
 ;;529
 ;;21,"54495-7 ")
 ;;530
 ;;21,"54496-5 ")
 ;;531
 ;;21,"54497-3 ")
 ;;532
 ;;21,"54498-1 ")
 ;;533
 ;;21,"54499-9 ")
 ;;534
 ;;21,"55351-1 ")
 ;;535
 ;;21,"55352-9 ")
 ;;536
 ;;21,"55381-8 ")
 ;;537
 ;;21,"56751-1 ")
 ;;538
 ;;21,"57350-1 ")
 ;;539
 ;;21,"57971-4 ")
 ;;540
 ;;21,"57972-2 ")
 ;;541
 ;;21,"5914-7 ")
 ;;542
 ;;21,"59157-8 ")
 ;;543
 ;;21,"59791-4 ")
 ;;544
 ;;21,"59792-2 ")
 ;;545
 ;;21,"59793-0 ")
 ;;546
 ;;21,"59794-8 ")
 ;;547
 ;;21,"59795-5 ")
 ;;548
 ;;21,"59796-3 ")
 ;;549
 ;;21,"59797-1 ")
 ;;550
 ;;21,"59812-8 ")
 ;;551
 ;;21,"59813-6 ")
 ;;552
 ;;21,"59814-4 ")
 ;;553
 ;;21,"59815-1 ")
 ;;554
 ;;21,"6689-4 ")
 ;;555
 ;;21,"6749-6 ")
 ;;556
 ;;21,"6752-0 ")
 ;;557
 ;;21,"6753-8 ")
 ;;558
 ;;21,"6754-6 ")
 ;;559
 ;;21,"6755-3 ")
 ;;560
 ;;21,"6756-1 ")
 ;;561
 ;;21,"6759-5 ")
 ;;562
 ;;21,"6760-3 ")
 ;;563
 ;;21,"6762-9 ")
 ;;564
 ;;21,"6764-5 ")
 ;;565
 ;;21,"6777-7 ")
 ;;566
 ;;21,"69941-3 ")
 ;;567
 ;;21,"69942-1 ")
 ;;568
 ;;21,"69943-9 ")
 ;;569
 ;;21,"69944-7 ")
 ;;570
 ;;21,"70208-4 ")
 ;;571
 ;;21,"72171-2 ")
 ;;572
 ;;21,"72516-8 ")
 ;;573
 ;;21,"72895-6 ")
 ;;574
 ;;21,"72896-4 ")
 ;;575
 ;;21,"74084-5 ")
 ;;576
 ;;21,"74774-1 ")
 ;;581
 ;;21,"9375-7 ")
 ;;577
 ;;21,"9376-5 ")
 ;;578
 ;;21,"9377-3 ")
 ;;579
 ;;21,"9378-1 ")
 ;;580
 ;;9002226,614,.01)
 ;;BGP GLUCOSE LOINC
 ;;9002226,614,.02)
 ;;@
 ;;9002226,614,.04)
 ;;n
 ;;9002226,614,.06)
 ;;@
 ;;9002226,614,.08)
 ;;@
 ;;9002226,614,.09)
 ;;@
 ;;9002226,614,.11)
 ;;@
 ;;9002226,614,.12)
 ;;@
 ;;9002226,614,.13)
 ;;1
 ;;9002226,614,.14)
 ;;FIHS
 ;;9002226,614,.15)
 ;;95.3
 ;;9002226,614,.16)
 ;;@
 ;;9002226,614,.17)
 ;;@
 ;;9002226,614,3101)
 ;;@
 ;;9002226.02101,"614,10449-7 ",.01)
 ;;10449-7
 ;;9002226.02101,"614,10449-7 ",.02)
 ;;10449-7
 ;;9002226.02101,"614,10450-5 ",.01)
 ;;10450-5
 ;;9002226.02101,"614,10450-5 ",.02)
 ;;10450-5
 ;;9002226.02101,"614,10832-4 ",.01)
 ;;10832-4
 ;;9002226.02101,"614,10832-4 ",.02)
 ;;10832-4
 ;;9002226.02101,"614,10968-6 ",.01)
 ;;10968-6
 ;;9002226.02101,"614,10968-6 ",.02)
 ;;10968-6
 ;;9002226.02101,"614,11032-0 ",.01)
 ;;11032-0
 ;;9002226.02101,"614,11032-0 ",.02)
 ;;11032-0
 ;;9002226.02101,"614,11142-7 ",.01)
 ;;11142-7
 ;;9002226.02101,"614,11142-7 ",.02)
 ;;11142-7
 ;;9002226.02101,"614,11143-5 ",.01)
 ;;11143-5
 ;;9002226.02101,"614,11143-5 ",.02)
 ;;11143-5
 ;;9002226.02101,"614,12219-2 ",.01)
 ;;12219-2
 ;;9002226.02101,"614,12219-2 ",.02)
 ;;12219-2
 ;;9002226.02101,"614,12220-0 ",.01)
 ;;12220-0
 ;;9002226.02101,"614,12220-0 ",.02)
 ;;12220-0
 ;;9002226.02101,"614,12607-8 ",.01)
 ;;12607-8
 ;;9002226.02101,"614,12607-8 ",.02)
 ;;12607-8
 ;;9002226.02101,"614,12610-2 ",.01)
 ;;12610-2
 ;;9002226.02101,"614,12610-2 ",.02)
 ;;12610-2
 ;;9002226.02101,"614,12611-0 ",.01)
 ;;12611-0
 ;;9002226.02101,"614,12611-0 ",.02)
 ;;12611-0
 ;;9002226.02101,"614,12613-6 ",.01)
 ;;12613-6
 ;;9002226.02101,"614,12613-6 ",.02)
 ;;12613-6
 ;;9002226.02101,"614,12614-4 ",.01)
 ;;12614-4
 ;;9002226.02101,"614,12614-4 ",.02)
 ;;12614-4
 ;;9002226.02101,"614,12615-1 ",.01)
 ;;12615-1
 ;;9002226.02101,"614,12615-1 ",.02)
 ;;12615-1
 ;;9002226.02101,"614,12616-9 ",.01)
 ;;12616-9
 ;;9002226.02101,"614,12616-9 ",.02)
 ;;12616-9
 ;;9002226.02101,"614,12617-7 ",.01)
 ;;12617-7
 ;;9002226.02101,"614,12617-7 ",.02)
 ;;12617-7
 ;;9002226.02101,"614,12618-5 ",.01)
 ;;12618-5
 ;;9002226.02101,"614,12618-5 ",.02)
 ;;12618-5
 ;;9002226.02101,"614,12619-3 ",.01)
 ;;12619-3
 ;;9002226.02101,"614,12619-3 ",.02)
 ;;12619-3
 ;;9002226.02101,"614,12620-1 ",.01)
 ;;12620-1
 ;;9002226.02101,"614,12620-1 ",.02)
 ;;12620-1
 ;;9002226.02101,"614,12621-9 ",.01)
 ;;12621-9
 ;;9002226.02101,"614,12621-9 ",.02)
 ;;12621-9
 ;;9002226.02101,"614,12622-7 ",.01)
 ;;12622-7
 ;;9002226.02101,"614,12622-7 ",.02)
 ;;12622-7
 ;;9002226.02101,"614,12623-5 ",.01)
 ;;12623-5
 ;;9002226.02101,"614,12623-5 ",.02)
 ;;12623-5
 ;;9002226.02101,"614,12624-3 ",.01)
 ;;12624-3
 ;;9002226.02101,"614,12624-3 ",.02)
 ;;12624-3
 ;;9002226.02101,"614,12625-0 ",.01)
 ;;12625-0
 ;;9002226.02101,"614,12625-0 ",.02)
 ;;12625-0
 ;;9002226.02101,"614,12626-8 ",.01)
 ;;12626-8
 ;;9002226.02101,"614,12626-8 ",.02)
 ;;12626-8
 ;;9002226.02101,"614,12627-6 ",.01)
 ;;12627-6
 ;;9002226.02101,"614,12627-6 ",.02)
 ;;12627-6
 ;;9002226.02101,"614,12631-8 ",.01)
 ;;12631-8
 ;;9002226.02101,"614,12631-8 ",.02)
 ;;12631-8
 ;;9002226.02101,"614,12632-6 ",.01)
 ;;12632-6
 ;;9002226.02101,"614,12632-6 ",.02)
 ;;12632-6
 ;;9002226.02101,"614,12635-9 ",.01)
 ;;12635-9
 ;;9002226.02101,"614,12635-9 ",.02)
 ;;12635-9
 ;;9002226.02101,"614,12636-7 ",.01)
 ;;12636-7
 ;;9002226.02101,"614,12636-7 ",.02)
 ;;12636-7
 ;;9002226.02101,"614,12637-5 ",.01)
 ;;12637-5
 ;;9002226.02101,"614,12637-5 ",.02)
 ;;12637-5
 ;;9002226.02101,"614,12638-3 ",.01)
 ;;12638-3
 ;;9002226.02101,"614,12638-3 ",.02)
 ;;12638-3
 ;;9002226.02101,"614,12639-1 ",.01)
 ;;12639-1
 ;;9002226.02101,"614,12639-1 ",.02)
 ;;12639-1
 ;;9002226.02101,"614,12640-9 ",.01)
 ;;12640-9
 ;;9002226.02101,"614,12640-9 ",.02)
 ;;12640-9
 ;;9002226.02101,"614,12641-7 ",.01)
 ;;12641-7
 ;;9002226.02101,"614,12641-7 ",.02)
 ;;12641-7
 ;;9002226.02101,"614,12642-5 ",.01)
 ;;12642-5
 ;;9002226.02101,"614,12642-5 ",.02)
 ;;12642-5
 ;;9002226.02101,"614,12643-3 ",.01)
 ;;12643-3
 ;;9002226.02101,"614,12643-3 ",.02)
 ;;12643-3
 ;;9002226.02101,"614,12644-1 ",.01)
 ;;12644-1
 ;;9002226.02101,"614,12644-1 ",.02)
 ;;12644-1
 ;;9002226.02101,"614,12645-8 ",.01)
 ;;12645-8
 ;;9002226.02101,"614,12645-8 ",.02)
 ;;12645-8
 ;;9002226.02101,"614,12646-6 ",.01)
 ;;12646-6
 ;;9002226.02101,"614,12646-6 ",.02)
 ;;12646-6
 ;;9002226.02101,"614,12647-4 ",.01)
 ;;12647-4
 ;;9002226.02101,"614,12647-4 ",.02)
 ;;12647-4
 ;;9002226.02101,"614,12648-2 ",.01)
 ;;12648-2
 ;;9002226.02101,"614,12648-2 ",.02)
 ;;12648-2
 ;;9002226.02101,"614,12649-0 ",.01)
 ;;12649-0
 ;;9002226.02101,"614,12649-0 ",.02)
 ;;12649-0
 ;;9002226.02101,"614,12650-8 ",.01)
 ;;12650-8
 ;;9002226.02101,"614,12650-8 ",.02)
 ;;12650-8
 ;;9002226.02101,"614,12651-6 ",.01)
 ;;12651-6
 ;;9002226.02101,"614,12651-6 ",.02)
 ;;12651-6
 ;;9002226.02101,"614,12652-4 ",.01)
 ;;12652-4
 ;;9002226.02101,"614,12652-4 ",.02)
 ;;12652-4
 ;;9002226.02101,"614,12653-2 ",.01)
 ;;12653-2
 ;;9002226.02101,"614,12653-2 ",.02)
 ;;12653-2
 ;;9002226.02101,"614,12654-0 ",.01)
 ;;12654-0
 ;;9002226.02101,"614,12654-0 ",.02)
 ;;12654-0
 ;;9002226.02101,"614,12655-7 ",.01)
 ;;12655-7
 ;;9002226.02101,"614,12655-7 ",.02)
 ;;12655-7
 ;;9002226.02101,"614,12656-5 ",.01)
 ;;12656-5
 ;;9002226.02101,"614,12656-5 ",.02)
 ;;12656-5
 ;;9002226.02101,"614,12657-3 ",.01)
 ;;12657-3
 ;;9002226.02101,"614,12657-3 ",.02)
 ;;12657-3
 ;;9002226.02101,"614,12658-1 ",.01)
 ;;12658-1
 ;;9002226.02101,"614,12658-1 ",.02)
 ;;12658-1
 ;;9002226.02101,"614,12659-9 ",.01)
 ;;12659-9
 ;;9002226.02101,"614,12659-9 ",.02)
 ;;12659-9
 ;;9002226.02101,"614,13453-6 ",.01)
 ;;13453-6
 ;;9002226.02101,"614,13453-6 ",.02)
 ;;13453-6
 ;;9002226.02101,"614,13606-9 ",.01)
 ;;13606-9
 ;;9002226.02101,"614,13606-9 ",.02)
 ;;13606-9
 ;;9002226.02101,"614,13607-7 ",.01)
 ;;13607-7
 ;;9002226.02101,"614,13607-7 ",.02)
 ;;13607-7
 ;;9002226.02101,"614,13865-1 ",.01)
 ;;13865-1
 ;;9002226.02101,"614,13865-1 ",.02)
 ;;13865-1
 ;;9002226.02101,"614,13866-9 ",.01)
 ;;13866-9
 ;;9002226.02101,"614,13866-9 ",.02)
 ;;13866-9
 ;;9002226.02101,"614,14137-4 ",.01)
 ;;14137-4
 ;;9002226.02101,"614,14137-4 ",.02)
 ;;14137-4
 ;;9002226.02101,"614,14743-9 ",.01)
 ;;14743-9
 ;;9002226.02101,"614,14743-9 ",.02)
 ;;14743-9
 ;;9002226.02101,"614,14749-6 ",.01)
 ;;14749-6
 ;;9002226.02101,"614,14749-6 ",.02)
 ;;14749-6
 ;;9002226.02101,"614,14751-2 ",.01)
 ;;14751-2
 ;;9002226.02101,"614,14751-2 ",.02)
 ;;14751-2
 ;;9002226.02101,"614,14752-0 ",.01)
 ;;14752-0