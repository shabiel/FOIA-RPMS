BGP32A7 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON SEP 12, 2012;
 ;;13.0;IHS CLINICAL REPORTING;;NOV 20, 2012;Build 81
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"63739-0249-01 ")
 ;;2339
 ;;21,"63739-0249-03 ")
 ;;2340
 ;;21,"63739-0389-10 ")
 ;;2341
 ;;21,"63739-0483-10 ")
 ;;2342
 ;;21,"63739-0486-10 ")
 ;;2343
 ;;21,"63824-0174-16 ")
 ;;2344
 ;;21,"63868-0751-24 ")
 ;;2345
 ;;21,"63874-0006-24 ")
 ;;2346
 ;;21,"63874-0204-12 ")
 ;;2347
 ;;21,"63874-0204-18 ")
 ;;2348
 ;;21,"63874-0204-24 ")
 ;;2349
 ;;21,"63874-0204-38 ")
 ;;2350
 ;;21,"63874-0204-48 ")
 ;;2351
 ;;21,"63874-0209-12 ")
 ;;2352
 ;;21,"63874-0209-18 ")
 ;;2353
 ;;21,"63874-0209-24 ")
 ;;2354
 ;;21,"63874-0304-01 ")
 ;;2355
 ;;21,"63874-0304-02 ")
 ;;2356
 ;;21,"63874-0304-09 ")
 ;;2357
 ;;21,"63874-0304-10 ")
 ;;2358
 ;;21,"63874-0304-12 ")
 ;;2359
 ;;21,"63874-0304-14 ")
 ;;2360
 ;;21,"63874-0304-15 ")
 ;;2361
 ;;21,"63874-0304-20 ")
 ;;2362
 ;;21,"63874-0304-25 ")
 ;;2363
 ;;21,"63874-0304-28 ")
 ;;2364
 ;;21,"63874-0304-30 ")
 ;;2365
 ;;21,"63874-0304-40 ")
 ;;2366
 ;;21,"63874-0304-45 ")
 ;;2367
 ;;21,"63874-0304-60 ")
 ;;2368
 ;;21,"63874-0304-90 ")
 ;;2369
 ;;21,"63874-0370-01 ")
 ;;2370
 ;;21,"63874-0370-08 ")
 ;;2371
 ;;21,"63874-0370-10 ")
 ;;2372
 ;;21,"63874-0370-12 ")
 ;;2373
 ;;21,"63874-0370-15 ")
 ;;2374
 ;;21,"63874-0370-20 ")
 ;;2375
 ;;21,"63874-0370-24 ")
 ;;2376
 ;;21,"63874-0370-30 ")
 ;;2377
 ;;21,"63874-0370-40 ")
 ;;2378
 ;;21,"63874-0370-60 ")
 ;;2379
 ;;21,"63874-0442-01 ")
 ;;2380
 ;;21,"63874-0442-04 ")
 ;;2381
 ;;21,"63874-0442-05 ")
 ;;2382
 ;;21,"63874-0442-09 ")
 ;;2383
 ;;21,"63874-0442-10 ")
 ;;2384
 ;;21,"63874-0442-14 ")
 ;;2385
 ;;21,"63874-0442-15 ")
 ;;2386
 ;;21,"63874-0442-20 ")
 ;;2387
 ;;21,"63874-0442-25 ")
 ;;2388
 ;;21,"63874-0442-28 ")
 ;;2389
 ;;21,"63874-0442-30 ")
 ;;2390
 ;;21,"63874-0442-40 ")
 ;;2391
 ;;21,"63874-0442-45 ")
 ;;2392
 ;;21,"63874-0442-60 ")
 ;;2393
 ;;21,"63874-0442-90 ")
 ;;2394
 ;;21,"63874-0565-01 ")
 ;;2395
 ;;21,"63874-0565-10 ")
 ;;2396
 ;;21,"63874-0565-12 ")
 ;;2397
 ;;21,"63874-0565-15 ")
 ;;2398
 ;;21,"63874-0565-20 ")
 ;;2399
 ;;21,"63874-0565-30 ")
 ;;2400
 ;;21,"63874-0565-60 ")
 ;;2401
 ;;21,"63874-0600-10 ")
 ;;2402
 ;;21,"63874-0600-14 ")
 ;;2403
 ;;21,"63874-0600-15 ")
 ;;2404
 ;;21,"63874-0600-20 ")
 ;;2405
 ;;21,"63874-0600-30 ")
 ;;2406
 ;;21,"63874-0600-60 ")
 ;;2407
 ;;21,"63874-0658-10 ")
 ;;2408
 ;;21,"63874-0658-20 ")
 ;;2409
 ;;21,"63874-0658-30 ")
 ;;2410
 ;;21,"63874-0658-49 ")
 ;;2411
 ;;21,"63874-0711-12 ")
 ;;2412
 ;;21,"63874-0711-18 ")
 ;;2413
 ;;21,"63874-0757-01 ")
 ;;2414
 ;;21,"63874-0757-04 ")
 ;;2415
 ;;21,"63874-0757-10 ")
 ;;2416
 ;;21,"63874-0757-15 ")
 ;;2417
 ;;21,"63874-0757-20 ")
 ;;2418
 ;;21,"63874-0757-21 ")
 ;;2419
 ;;21,"63874-0757-24 ")
 ;;2420
 ;;21,"63874-0757-28 ")
 ;;2421
 ;;21,"63874-0757-30 ")
 ;;2422
 ;;21,"63874-0757-60 ")
 ;;2423
 ;;21,"63874-0757-90 ")
 ;;2424
 ;;21,"64376-0401-40 ")
 ;;2425
 ;;21,"64376-0432-16 ")
 ;;2426
 ;;21,"64376-0432-40 ")
 ;;2427
 ;;21,"64376-0530-01 ")
 ;;2428
 ;;21,"64376-0532-01 ")
 ;;2429
 ;;21,"64376-0543-01 ")
 ;;2430
 ;;21,"64376-0543-31 ")
 ;;2431
 ;;21,"64376-0544-01 ")
 ;;2432
 ;;21,"64376-0544-31 ")
 ;;2433
 ;;21,"64376-0605-01 ")
 ;;2434
 ;;21,"64376-0612-16 ")
 ;;2435
 ;;21,"64376-0612-40 ")
 ;;2436
 ;;21,"64376-0701-40 ")
 ;;2437
 ;;21,"64376-0703-16 ")
 ;;2438
 ;;21,"64376-0704-16 ")
 ;;2439
 ;;21,"64376-0705-16 ")
 ;;2440
 ;;21,"64376-0709-16 ")
 ;;2441
 ;;21,"64376-0713-16 ")
 ;;2442
 ;;21,"64376-0714-16 ")
 ;;2443
 ;;21,"64376-0718-16 ")
 ;;2444
 ;;21,"64376-0719-40 ")
 ;;2445
 ;;21,"64376-0721-16 ")
 ;;2446
 ;;21,"64376-0724-16 ")
 ;;2447
 ;;21,"64376-0724-40 ")
 ;;2448
 ;;21,"64376-0725-16 ")
 ;;2449
 ;;21,"64376-0725-40 ")
 ;;2450
 ;;21,"64376-0728-30 ")
 ;;2451
 ;;21,"64376-0729-16 ")
 ;;2452
 ;;21,"64376-0729-40 ")
 ;;2453
 ;;21,"64376-0730-30 ")
 ;;2454
 ;;21,"64376-0731-16 ")
 ;;2455
 ;;21,"64376-0731-40 ")
 ;;2456
 ;;21,"64376-0732-16 ")
 ;;2457
 ;;21,"64376-0732-40 ")
 ;;2458
 ;;21,"64376-0736-16 ")
 ;;2459
 ;;21,"64455-0013-01 ")
 ;;2460
 ;;21,"64455-0022-01 ")
 ;;2461
 ;;21,"64455-0025-01 ")
 ;;2462
 ;;21,"64455-0070-03 ")
 ;;2463
 ;;21,"64455-0080-03 ")
 ;;2464
 ;;21,"64455-0081-12 ")
 ;;2465
 ;;21,"64455-0081-48 ")
 ;;2466
 ;;21,"64543-0025-90 ")
 ;;2467
 ;;21,"64543-0082-01 ")
 ;;2468
 ;;21,"64543-0084-90 ")
 ;;2469
 ;;21,"64543-0085-01 ")
 ;;2470
 ;;21,"64543-0087-01 ")
 ;;2471
 ;;21,"64543-0091-90 ")
 ;;2472
 ;;21,"64661-0020-16 ")
 ;;2473
 ;;21,"64661-0022-16 ")
 ;;2474
 ;;21,"64661-0031-30 ")
 ;;2475
 ;;21,"64661-0032-30 ")
 ;;2476
 ;;21,"64661-0050-01 ")
 ;;2477
 ;;21,"64720-0143-10 ")
 ;;2478
 ;;21,"64720-0143-11 ")
 ;;2479
 ;;21,"64720-0144-10 ")
 ;;2480
 ;;21,"64720-0144-11 ")
 ;;2481
 ;;21,"64720-0145-10 ")
 ;;2482
 ;;21,"64720-0145-11 ")
 ;;2483
 ;;21,"64759-0005-01 ")
 ;;2484
 ;;21,"64899-0097-24 ")
 ;;2485
 ;;21,"64980-0111-01 ")
 ;;2486
 ;;21,"64980-0111-10 ")
 ;;2487
 ;;21,"64980-0112-01 ")
 ;;2488
 ;;21,"64980-0112-10 ")
 ;;2489
 ;;21,"64980-0113-01 ")
 ;;2490
 ;;21,"64980-0113-10 ")
 ;;2491
 ;;21,"64980-0123-01 ")
 ;;2492
 ;;21,"64980-0123-10 ")
 ;;2493
 ;;21,"64980-0504-48 ")
 ;;2494
 ;;21,"65162-0012-10 ")
 ;;2495
 ;;21,"65162-0012-11 ")
 ;;2496
 ;;21,"65162-0016-10 ")
 ;;2497
 ;;21,"65162-0016-11 ")
 ;;2498
 ;;21,"65162-0521-10 ")
 ;;2499
 ;;21,"65162-0521-11 ")
 ;;2500
 ;;21,"65162-0522-10 ")
 ;;2501
 ;;21,"65162-0662-86 ")
 ;;2502
 ;;21,"65162-0662-90 ")
 ;;2503
 ;;21,"65162-0745-10 ")
 ;;2504
 ;;21,"65162-0756-86 ")
 ;;2505
 ;;21,"65162-0756-90 ")
 ;;2506
 ;;21,"65224-0123-16 ")
 ;;2507
 ;;21,"65224-0148-16 ")
 ;;2508
 ;;21,"65224-0150-16 ")
 ;;2509
 ;;21,"65224-0175-16 ")
 ;;2510
 ;;21,"65224-0225-16 ")
 ;;2511
 ;;21,"65224-0293-16 ")
 ;;2512
 ;;21,"65224-0295-16 ")
 ;;2513
 ;;21,"65224-0300-16 ")
 ;;2514
 ;;21,"65224-0321-16 ")
 ;;2515
 ;;21,"65224-0443-16 ")
 ;;2516
 ;;21,"65224-0445-16 ")
 ;;2517
 ;;21,"65224-0450-16 ")
 ;;2518
 ;;21,"65224-0457-16 ")
 ;;2519
 ;;21,"65224-0501-16 ")
 ;;2520
 ;;21,"65224-0503-16 ")
 ;;2521
 ;;21,"65224-0537-30 ")
 ;;2522
 ;;21,"65224-0539-30 ")
 ;;2523
 ;;21,"65224-0540-01 ")
 ;;2524
 ;;21,"65224-0545-01 ")
 ;;2525
 ;;21,"65224-0750-01 ")
 ;;2526
 ;;21,"65581-0020-45 ")
 ;;2527
 ;;21,"66116-0230-30 ")
 ;;2528
 ;;21,"66116-0284-12 ")
 ;;2529
 ;;21,"66116-0488-30 ")
 ;;2530
 ;;21,"66116-0618-18 ")
 ;;2531
 ;;21,"66116-0651-30 ")
 ;;2532
 ;;21,"66239-0157-16 ")
 ;;2533
 ;;21,"66239-0192-16 ")
 ;;2534
 ;;21,"66239-0195-04 ")
 ;;2535
 ;;21,"66239-0195-16 ")
 ;;2536
 ;;21,"66239-0202-16 ")
 ;;2537
 ;;21,"66239-0208-16 ")
 ;;2538
 ;;21,"66239-0242-30 ")
 ;;2539
 ;;21,"66239-0245-30 ")
 ;;2540
 ;;21,"66239-0264-16 ")
 ;;2541
 ;;21,"66239-0288-16 ")
 ;;2542
 ;;21,"66267-0080-20 ")
 ;;2543
 ;;21,"66267-0081-20 ")
 ;;2544
 ;;21,"66267-0081-30 ")
 ;;2545
 ;;21,"66267-0081-60 ")
 ;;2546
 ;;21,"66267-0112-15 ")
 ;;2547
 ;;21,"66267-0112-30 ")
 ;;2548
 ;;21,"66267-0112-40 ")
 ;;2549
 ;;21,"66267-0112-60 ")
 ;;2550
 ;;21,"66267-0113-15 ")
 ;;2551
 ;;21,"66267-0113-20 ")
 ;;2552
 ;;21,"66267-0113-30 ")
 ;;2553
 ;;21,"66267-0114-30 ")
 ;;2554
 ;;21,"66267-0164-04 ")
 ;;2555
 ;;21,"66267-0177-10 ")
 ;;2556
 ;;21,"66267-0177-15 ")
 ;;2557
 ;;21,"66267-0177-20 ")
 ;;2558
 ;;21,"66267-0177-30 ")
 ;;2559
 ;;21,"66267-0177-60 ")
 ;;2560
 ;;21,"66267-0177-90 ")
 ;;2561
 ;;21,"66267-0184-06 ")
 ;;2562
 ;;21,"66267-0184-20 ")
 ;;2563
 ;;21,"66267-0813-06 ")
 ;;2564
 ;;21,"66336-0045-06 ")
 ;;2565
 ;;21,"66336-0045-15 ")
 ;;2566
 ;;21,"66336-0045-30 ")
 ;;2567
 ;;21,"66336-0045-60 ")
 ;;2568
 ;;21,"66336-0085-10 ")
 ;;2569
 ;;21,"66336-0085-12 ")
 ;;2570
 ;;21,"66336-0085-20 ")
 ;;2571
 ;;21,"66336-0085-25 ")
 ;;2572
 ;;21,"66336-0085-30 ")
 ;;2573
 ;;21,"66336-0085-60 ")
 ;;2574
 ;;21,"66336-0085-90 ")
 ;;2575
 ;;21,"66336-0086-06 ")
 ;;2576
 ;;21,"66336-0086-15 ")
 ;;2577
 ;;21,"66336-0086-20 ")
 ;;2578
 ;;21,"66336-0086-30 ")
 ;;2579
 ;;21,"66336-0208-14 ")
 ;;2580
 ;;21,"66336-0208-20 ")
 ;;2581
 ;;21,"66336-0208-30 ")
 ;;2582
 ;;21,"66336-0208-90 ")
 ;;2583
 ;;21,"66336-0416-30 ")
 ;;2584
 ;;21,"66336-0416-99 ")
 ;;2585
 ;;21,"66336-0696-06 ")
 ;;2586
 ;;21,"66336-0699-30 ")
 ;;2587
 ;;21,"66336-0776-30 ")
 ;;2588
 ;;21,"66336-0776-60 ")
 ;;2589
 ;;21,"66336-0795-15 ")
 ;;2590
 ;;21,"66336-0796-30 ")
 ;;2591
 ;;21,"66336-0797-20 ")
 ;;2592
 ;;21,"66336-0797-60 ")
 ;;2593
 ;;21,"66346-0091-30 ")
 ;;2594
 ;;21,"66346-0161-30 ")
 ;;2595
 ;;21,"66440-0082-51 ")
 ;;2596
 ;;21,"66440-0110-02 ")
 ;;2597
 ;;21,"66440-0110-03 ")
 ;;2598
 ;;21,"66758-0601-19 ")
 ;;2599
 ;;21,"66813-0271-01 ")
 ;;2600
 ;;21,"66813-0272-04 ")
 ;;2601
 ;;21,"66813-0273-60 ")
 ;;2602
 ;;21,"66813-0274-16 ")
 ;;2603
 ;;21,"66860-0098-03 ")
 ;;2604
 ;;21,"66860-0099-03 ")
 ;;2605
 ;;21,"66869-0116-10 ")
 ;;2606
 ;;21,"66869-0201-10 ")
 ;;2607
 ;;21,"66869-0307-10 ")
 ;;2608
 ;;21,"66869-0721-10 ")
 ;;2609
 ;;21,"66870-0032-01 ")
 ;;2610
 ;;21,"66992-0130-16 ")
 ;;2611
 ;;21,"66992-0135-16 ")
 ;;2612
 ;;21,"66992-0136-16 ")
 ;;2613
 ;;21,"66992-0230-04 ")
 ;;2614
 ;;21,"66992-0235-60 ")
 ;;2615
 ;;21,"66993-0502-55 ")
 ;;2616
 ;;21,"66993-0531-55 ")
 ;;2617
 ;;21,"66993-0537-57 ")
 ;;2618
 ;;21,"67000-0200-10 ")
 ;;2619
 ;;21,"67000-0201-10 ")
 ;;2620
 ;;21,"67204-0245-16 ")
 ;;2621
 ;;21,"67204-0320-16 ")
 ;;2622
 ;;21,"67204-0325-16 ")
 ;;2623
 ;;21,"67204-0340-16 ")
 ;;2624
 ;;21,"67204-0390-16 ")
 ;;2625
 ;;21,"67336-0050-60 ")
 ;;2626
 ;;21,"67336-0089-01 ")
 ;;2627
 ;;21,"67336-0254-16 ")
 ;;2628
 ;;21,"67336-0258-01 ")
 ;;2629
 ;;21,"67336-0275-16 ")
 ;;2630
 ;;21,"67336-0532-04 ")
 ;;2631
 ;;21,"67336-0532-16 ")
 ;;2632
 ;;21,"67336-0910-16 ")
 ;;2633
 ;;21,"67405-0575-10 ")
 ;;2634
 ;;21,"67405-0575-50 ")
 ;;2635
 ;;21,"67405-0575-96 ")
 ;;2636
 ;;21,"67405-0577-10 ")
 ;;2637
 ;;21,"67405-0577-50 ")
 ;;2638
 ;;21,"67405-0671-10 ")
 ;;2639
 ;;21,"67405-0671-50 ")
 ;;2640
 ;;21,"67405-0671-96 ")
 ;;2641
 ;;21,"67457-0152-10 ")
 ;;2642
 ;;21,"67457-0154-10 ")
 ;;2643
 ;;21,"67537-0271-01 ")
 ;;2644
 ;;21,"67537-0273-60 ")
 ;;2645
 ;;21,"67537-0274-16 ")
 ;;2646
 ;;21,"67544-0246-30 ")
 ;;2647
 ;;21,"67544-0246-53 ")
 ;;2648
 ;;21,"67544-0304-30 ")
 ;;2649
 ;;21,"67544-0677-30 ")
 ;;2650
 ;;21,"67544-0677-53 ")
 ;;2651
 ;;21,"67544-0677-60 ")
 ;;2652
 ;;21,"67544-0791-30 ")
 ;;2653
 ;;21,"67544-0791-53 ")
 ;;2654
 ;;21,"67544-0791-60 ")
 ;;2655
 ;;21,"67544-1053-20 ")
 ;;2656
 ;;21,"68013-0007-01 ")
 ;;2657
 ;;21,"68013-0007-60 ")
 ;;2658
 ;;21,"68025-0032-16 ")
 ;;2659
 ;;21,"68025-0034-10 ")
 ;;2660
 ;;21,"68025-0051-10 ")
 ;;2661
 ;;21,"68030-4379-02 ")
 ;;2662
 ;;21,"68032-0107-04 ")
 ;;2663
 ;;21,"68032-0157-16 ")
 ;;2664
 ;;21,"68032-0178-60 ")
 ;;2665
 ;;21,"68032-0181-04 ")
 ;;2666
 ;;21,"68032-0182-10 ")
 ;;2667
 ;;21,"68032-0189-60 ")
 ;;2668
 ;;21,"68032-0203-16 ")
 ;;2669
 ;;21,"68032-0204-16 ")
 ;;2670
 ;;21,"68032-0205-60 ")
 ;;2671
 ;;21,"68032-0229-10 ")
 ;;2672
 ;;21,"68032-0307-16 ")
 ;;2673
 ;;21,"68032-0324-21 ")
 ;;2674
 ;;21,"68032-0325-21 ")
 ;;2675
 ;;21,"68032-0326-21 ")
 ;;2676
 ;;21,"68032-0330-10 ")
 ;;2677
 ;;21,"68032-0456-16 ")
 ;;2678
 ;;21,"68032-0457-01 ")
 ;;2679
 ;;21,"68032-0459-16 ")
 ;;2680
 ;;21,"68047-0011-30 ")
 ;;2681
 ;;21,"68047-0030-02 ")
 ;;2682
 ;;21,"68047-0031-02 ")
 ;;2683
 ;;21,"68047-0120-16 ")
 ;;2684
 ;;21,"68047-0121-01 ")
 ;;2685
 ;;21,"68047-0122-01 ")
 ;;2686
 ;;21,"68047-0126-16 ")
 ;;2687
 ;;21,"68047-0129-16 ")
 ;;2688
 ;;21,"68047-0133-16 ")
 ;;2689
 ;;21,"68047-0136-16 ")
 ;;2690
 ;;21,"68047-0138-04 ")
 ;;2691
 ;;21,"68047-0142-16 ")
 ;;2692
 ;;21,"68047-0145-16 ")
 ;;2693
 ;;21,"68047-0160-01 ")
 ;;2694
 ;;21,"68047-0161-01 ")
 ;;2695
 ;;21,"68047-0166-01 ")
 ;;2696
 ;;21,"68047-0169-16 ")
 ;;2697
 ;;21,"68047-0210-01 ")
 ;;2698
 ;;21,"68047-0292-16 ")
 ;;2699
 ;;21,"68047-0310-16 ")
 ;;2700
 ;;21,"68047-0310-30 ")
 ;;2701
 ;;21,"68047-0330-01 ")
 ;;2702
 ;;21,"68071-0448-60 ")
 ;;2703
 ;;21,"68084-0154-01 ")
 ;;2704
 ;;21,"68084-0154-11 ")
 ;;2705
 ;;21,"68084-0155-01 ")
 ;;2706
 ;;21,"68084-0155-11 ")
 ;;2707
 ;;21,"68084-0156-01 ")
 ;;2708
 ;;21,"68084-0156-11 ")
 ;;2709
 ;;21,"68084-0253-01 ")
 ;;2710
 ;;21,"68084-0253-11 ")
 ;;2711
 ;;21,"68084-0254-01 ")
 ;;2712
 ;;21,"68084-0254-11 ")
 ;;2713
 ;;21,"68084-0255-01 ")
 ;;2714
 ;;21,"68084-0255-11 ")
 ;;2715
 ;;21,"68084-0381-01 ")
 ;;2716
 ;;21,"68084-0381-11 ")
 ;;2717
 ;;21,"68084-0388-01 ")
 ;;2718
 ;;21,"68084-0388-11 ")
 ;;2719
 ;;21,"68084-0389-01 ")
 ;;2720
 ;;21,"68084-0389-11 ")
 ;;2721
 ;;21,"68115-0043-30 ")
 ;;2722
 ;;21,"68115-0044-30 ")
 ;;2723
 ;;21,"68115-0044-60 ")
 ;;2724