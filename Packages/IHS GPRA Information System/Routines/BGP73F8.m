BGP73F8 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 05, 2017;
 ;;17.1;IHS CLINICAL REPORTING;;MAY 10, 2017;Build 29
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"49999-0007-12 ")
 ;;2356
 ;;21,"49999-0007-14 ")
 ;;2357
 ;;21,"49999-0007-15 ")
 ;;2358
 ;;21,"49999-0007-20 ")
 ;;2359
 ;;21,"49999-0007-21 ")
 ;;2360
 ;;21,"49999-0007-28 ")
 ;;2361
 ;;21,"49999-0007-30 ")
 ;;2362
 ;;21,"49999-0007-40 ")
 ;;2363
 ;;21,"49999-0007-60 ")
 ;;2364
 ;;21,"49999-0007-90 ")
 ;;2365
 ;;21,"49999-0011-00 ")
 ;;2366
 ;;21,"49999-0011-04 ")
 ;;2367
 ;;21,"49999-0011-15 ")
 ;;2368
 ;;21,"49999-0011-18 ")
 ;;2369
 ;;21,"49999-0011-20 ")
 ;;2370
 ;;21,"49999-0011-28 ")
 ;;2371
 ;;21,"49999-0012-00 ")
 ;;2372
 ;;21,"49999-0012-14 ")
 ;;2373
 ;;21,"49999-0012-20 ")
 ;;2374
 ;;21,"49999-0012-28 ")
 ;;2375
 ;;21,"49999-0012-30 ")
 ;;2376
 ;;21,"49999-0012-40 ")
 ;;2377
 ;;21,"49999-0014-00 ")
 ;;2378
 ;;21,"49999-0014-10 ")
 ;;2379
 ;;21,"49999-0014-21 ")
 ;;2380
 ;;21,"49999-0014-30 ")
 ;;2381
 ;;21,"49999-0015-00 ")
 ;;2382
 ;;21,"49999-0015-06 ")
 ;;2383
 ;;21,"49999-0015-08 ")
 ;;2384
 ;;21,"49999-0015-12 ")
 ;;2385
 ;;21,"49999-0015-14 ")
 ;;2386
 ;;21,"49999-0015-15 ")
 ;;2387
 ;;21,"49999-0015-20 ")
 ;;2388
 ;;21,"49999-0015-21 ")
 ;;2389
 ;;21,"49999-0015-28 ")
 ;;2390
 ;;21,"49999-0015-30 ")
 ;;2391
 ;;21,"49999-0015-40 ")
 ;;2392
 ;;21,"49999-0015-42 ")
 ;;2393
 ;;21,"49999-0015-45 ")
 ;;2394
 ;;21,"49999-0016-04 ")
 ;;2395
 ;;21,"49999-0016-21 ")
 ;;2396
 ;;21,"49999-0016-30 ")
 ;;2397
 ;;21,"49999-0016-40 ")
 ;;2398
 ;;21,"49999-0020-00 ")
 ;;2399
 ;;21,"49999-0020-14 ")
 ;;2400
 ;;21,"49999-0020-20 ")
 ;;2401
 ;;21,"49999-0020-28 ")
 ;;2402
 ;;21,"49999-0020-30 ")
 ;;2403
 ;;21,"49999-0021-14 ")
 ;;2404
 ;;21,"49999-0021-20 ")
 ;;2405
 ;;21,"49999-0023-00 ")
 ;;2406
 ;;21,"49999-0023-20 ")
 ;;2407
 ;;21,"49999-0023-28 ")
 ;;2408
 ;;21,"49999-0023-30 ")
 ;;2409
 ;;21,"49999-0023-40 ")
 ;;2410
 ;;21,"49999-0033-00 ")
 ;;2411
 ;;21,"49999-0033-30 ")
 ;;2412
 ;;21,"49999-0041-04 ")
 ;;2413
 ;;21,"49999-0041-10 ")
 ;;2414
 ;;21,"49999-0041-12 ")
 ;;2415
 ;;21,"49999-0041-20 ")
 ;;2416
 ;;21,"49999-0041-28 ")
 ;;2417
 ;;21,"49999-0041-30 ")
 ;;2418
 ;;21,"49999-0041-40 ")
 ;;2419
 ;;21,"49999-0050-10 ")
 ;;2420
 ;;21,"49999-0050-12 ")
 ;;2421
 ;;21,"49999-0050-14 ")
 ;;2422
 ;;21,"49999-0050-20 ")
 ;;2423
 ;;21,"49999-0050-21 ")
 ;;2424
 ;;21,"49999-0050-28 ")
 ;;2425
 ;;21,"49999-0050-30 ")
 ;;2426
 ;;21,"49999-0050-40 ")
 ;;2427
 ;;21,"49999-0061-04 ")
 ;;2428
 ;;21,"49999-0061-07 ")
 ;;2429
 ;;21,"49999-0061-10 ")
 ;;2430
 ;;21,"49999-0061-14 ")
 ;;2431
 ;;21,"49999-0061-20 ")
 ;;2432
 ;;21,"49999-0061-25 ")
 ;;2433
 ;;21,"49999-0067-28 ")
 ;;2434
 ;;21,"49999-0067-40 ")
 ;;2435
 ;;21,"49999-0077-06 ")
 ;;2436
 ;;21,"49999-0077-10 ")
 ;;2437
 ;;21,"49999-0077-14 ")
 ;;2438
 ;;21,"49999-0077-20 ")
 ;;2439
 ;;21,"49999-0077-28 ")
 ;;2440
 ;;21,"49999-0077-30 ")
 ;;2441
 ;;21,"49999-0077-60 ")
 ;;2442
 ;;21,"49999-0077-90 ")
 ;;2443
 ;;21,"49999-0080-28 ")
 ;;2444
 ;;21,"49999-0080-30 ")
 ;;2445
 ;;21,"49999-0080-40 ")
 ;;2446
 ;;21,"49999-0096-04 ")
 ;;2447
 ;;21,"49999-0096-06 ")
 ;;2448
 ;;21,"49999-0117-20 ")
 ;;2449
 ;;21,"49999-0120-20 ")
 ;;2450
 ;;21,"49999-0120-28 ")
 ;;2451
 ;;21,"49999-0120-40 ")
 ;;2452
 ;;21,"49999-0126-11 ")
 ;;2453
 ;;21,"49999-0126-14 ")
 ;;2454
 ;;21,"49999-0126-20 ")
 ;;2455
 ;;21,"49999-0126-30 ")
 ;;2456
 ;;21,"49999-0126-56 ")
 ;;2457
 ;;21,"49999-0164-10 ")
 ;;2458
 ;;21,"49999-0168-00 ")
 ;;2459
 ;;21,"49999-0168-50 ")
 ;;2460
 ;;21,"49999-0168-80 ")
 ;;2461
 ;;21,"49999-0177-20 ")
 ;;2462
 ;;21,"49999-0191-00 ")
 ;;2463
 ;;21,"49999-0191-50 ")
 ;;2464
 ;;21,"49999-0191-80 ")
 ;;2465
 ;;21,"49999-0213-20 ")
 ;;2466
 ;;21,"49999-0224-00 ")
 ;;2467
 ;;21,"49999-0224-14 ")
 ;;2468
 ;;21,"49999-0224-30 ")
 ;;2469
 ;;21,"49999-0224-40 ")
 ;;2470
 ;;21,"49999-0246-20 ")
 ;;2471
 ;;21,"49999-0260-15 ")
 ;;2472
 ;;21,"49999-0261-00 ")
 ;;2473
 ;;21,"49999-0261-20 ")
 ;;2474
 ;;21,"49999-0267-28 ")
 ;;2475
 ;;21,"49999-0267-30 ")
 ;;2476
 ;;21,"49999-0267-40 ")
 ;;2477
 ;;21,"49999-0290-06 ")
 ;;2478
 ;;21,"49999-0290-07 ")
 ;;2479
 ;;21,"49999-0290-10 ")
 ;;2480
 ;;21,"49999-0290-20 ")
 ;;2481
 ;;21,"49999-0290-21 ")
 ;;2482
 ;;21,"49999-0290-30 ")
 ;;2483
 ;;21,"49999-0315-00 ")
 ;;2484
 ;;21,"49999-0332-20 ")
 ;;2485
 ;;21,"49999-0333-06 ")
 ;;2486
 ;;21,"49999-0333-10 ")
 ;;2487
 ;;21,"49999-0333-14 ")
 ;;2488
 ;;21,"49999-0333-20 ")
 ;;2489
 ;;21,"49999-0334-00 ")
 ;;2490
 ;;21,"49999-0334-01 ")
 ;;2491
 ;;21,"49999-0334-06 ")
 ;;2492
 ;;21,"49999-0334-10 ")
 ;;2493
 ;;21,"49999-0334-14 ")
 ;;2494
 ;;21,"49999-0334-20 ")
 ;;2495
 ;;21,"49999-0334-28 ")
 ;;2496
 ;;21,"49999-0334-30 ")
 ;;2497
 ;;21,"49999-0356-00 ")
 ;;2498
 ;;21,"49999-0365-50 ")
 ;;2499
 ;;21,"49999-0407-20 ")
 ;;2500
 ;;21,"49999-0417-10 ")
 ;;2501
 ;;21,"49999-0418-02 ")
 ;;2502
 ;;21,"49999-0418-07 ")
 ;;2503
 ;;21,"49999-0418-10 ")
 ;;2504
 ;;21,"49999-0418-30 ")
 ;;2505
 ;;21,"49999-0418-50 ")
 ;;2506
 ;;21,"49999-0455-05 ")
 ;;2507
 ;;21,"49999-0455-10 ")
 ;;2508
 ;;21,"49999-0455-30 ")
 ;;2509
 ;;21,"49999-0503-20 ")
 ;;2510
 ;;21,"49999-0504-28 ")
 ;;2511
 ;;21,"49999-0505-07 ")
 ;;2512
 ;;21,"49999-0505-20 ")
 ;;2513
 ;;21,"49999-0505-28 ")
 ;;2514
 ;;21,"49999-0541-00 ")
 ;;2515
 ;;21,"49999-0541-28 ")
 ;;2516
 ;;21,"49999-0582-15 ")
 ;;2517
 ;;21,"49999-0586-01 ")
 ;;2518
 ;;21,"49999-0586-10 ")
 ;;2519
 ;;21,"49999-0649-10 ")
 ;;2520
 ;;21,"49999-0649-20 ")
 ;;2521
 ;;21,"49999-0649-30 ")
 ;;2522
 ;;21,"49999-0649-60 ")
 ;;2523
 ;;21,"49999-0649-90 ")
 ;;2524
 ;;21,"49999-0651-30 ")
 ;;2525
 ;;21,"49999-0713-00 ")
 ;;2526
 ;;21,"49999-0766-20 ")
 ;;2527
 ;;21,"49999-0766-28 ")
 ;;2528
 ;;21,"49999-0786-06 ")
 ;;2529
 ;;21,"49999-0810-00 ")
 ;;2530
 ;;21,"49999-0904-14 ")
 ;;2531
 ;;21,"49999-0904-20 ")
 ;;2532
 ;;21,"49999-0983-00 ")
 ;;2533
 ;;21,"50111-0767-28 ")
 ;;2534
 ;;21,"50111-0787-51 ")
 ;;2535
 ;;21,"50111-0787-52 ")
 ;;2536
 ;;21,"50111-0787-66 ")
 ;;2537
 ;;21,"50111-0788-10 ")
 ;;2538
 ;;21,"50111-0788-52 ")
 ;;2539
 ;;21,"50111-0788-55 ")
 ;;2540
 ;;21,"50111-0788-67 ")
 ;;2541
 ;;21,"50111-0789-10 ")
 ;;2542
 ;;21,"50111-0791-20 ")
 ;;2543
 ;;21,"50111-0792-22 ")
 ;;2544
 ;;21,"50111-0793-20 ")
 ;;2545
 ;;21,"50111-0794-78 ")
 ;;2546
 ;;21,"50268-0098-15 ")
 ;;2547
 ;;21,"50268-0099-13 ")
 ;;2548
 ;;21,"50268-0100-15 ")
 ;;2549
 ;;21,"50268-0101-13 ")
 ;;2550
 ;;21,"50268-0151-15 ")
 ;;2551
 ;;21,"50268-0152-15 ")
 ;;2552
 ;;21,"50268-0180-15 ")
 ;;2553
 ;;21,"50268-0181-15 ")
 ;;2554
 ;;21,"50268-0277-15 ")
 ;;2555
 ;;21,"50268-0278-15 ")
 ;;2556
 ;;21,"50268-0279-15 ")
 ;;2557
 ;;21,"50268-0567-11 ")
 ;;2558
 ;;21,"50268-0567-15 ")
 ;;2559
 ;;21,"50268-0569-11 ")
 ;;2560
 ;;21,"50268-0569-13 ")
 ;;2561
 ;;21,"50268-0728-15 ")
 ;;2562
 ;;21,"50268-0729-13 ")
 ;;2563
 ;;21,"50268-0775-15 ")
 ;;2564
 ;;21,"50383-0286-04 ")
 ;;2565
 ;;21,"50383-0286-08 ")
 ;;2566
 ;;21,"50383-0286-11 ")
 ;;2567
 ;;21,"50383-0286-16 ")
 ;;2568
 ;;21,"50383-0286-21 ")
 ;;2569
 ;;21,"50383-0823-16 ")
 ;;2570
 ;;21,"50383-0824-16 ")
 ;;2571
 ;;21,"50383-0824-20 ")
 ;;2572
 ;;21,"50383-0824-21 ")
 ;;2573
 ;;21,"50419-0754-01 ")
 ;;2574
 ;;21,"50419-0758-01 ")
 ;;2575
 ;;21,"50419-0759-01 ")
 ;;2576
 ;;21,"50419-0773-01 ")
 ;;2577
 ;;21,"50419-0777-01 ")
 ;;2578
 ;;21,"50419-0788-01 ")
 ;;2579
 ;;21,"50419-0789-01 ")
 ;;2580
 ;;21,"50458-0164-20 ")
 ;;2581
 ;;21,"50458-0165-30 ")
 ;;2582
 ;;21,"50458-0166-01 ")
 ;;2583
 ;;21,"50458-0167-01 ")
 ;;2584
 ;;21,"50458-0168-01 ")
 ;;2585
 ;;21,"50458-0170-01 ")
 ;;2586
 ;;21,"50458-0920-10 ")
 ;;2587
 ;;21,"50458-0920-50 ")
 ;;2588
 ;;21,"50458-0925-10 ")
 ;;2589
 ;;21,"50458-0925-50 ")
 ;;2590
 ;;21,"50458-0930-10 ")
 ;;2591
 ;;21,"50458-0930-20 ")
 ;;2592
 ;;21,"50962-0302-20 ")
 ;;2593
 ;;21,"51079-0016-01 ")
 ;;2594
 ;;21,"51079-0017-01 ")
 ;;2595
 ;;21,"51079-0034-01 ")
 ;;2596
 ;;21,"51079-0034-20 ")
 ;;2597
 ;;21,"51079-0035-01 ")
 ;;2598
 ;;21,"51079-0035-20 ")
 ;;2599
 ;;21,"51079-0040-01 ")
 ;;2600
 ;;21,"51079-0040-20 ")
 ;;2601
 ;;21,"51079-0128-08 ")
 ;;2602
 ;;21,"51079-0128-20 ")
 ;;2603
 ;;21,"51079-0128-90 ")
 ;;2604
 ;;21,"51079-0128-92 ")
 ;;2605
 ;;21,"51079-0181-01 ")
 ;;2606
 ;;21,"51079-0181-20 ")
 ;;2607
 ;;21,"51079-0182-01 ")
 ;;2608
 ;;21,"51079-0182-20 ")
 ;;2609
 ;;21,"51079-0265-01 ")
 ;;2610
 ;;21,"51079-0265-20 ")
 ;;2611
 ;;21,"51079-0267-01 ")
 ;;2612
 ;;21,"51079-0267-20 ")
 ;;2613
 ;;21,"51079-0402-01 ")
 ;;2614
 ;;21,"51079-0402-20 ")
 ;;2615
 ;;21,"51079-0403-01 ")
 ;;2616
 ;;21,"51079-0403-20 ")
 ;;2617
 ;;21,"51079-0591-01 ")
 ;;2618
 ;;21,"51079-0591-20 ")
 ;;2619
 ;;21,"51079-0598-01 ")
 ;;2620
 ;;21,"51079-0598-17 ")
 ;;2621
 ;;21,"51079-0598-19 ")
 ;;2622
 ;;21,"51079-0598-20 ")
 ;;2623
 ;;21,"51079-0601-01 ")
 ;;2624
 ;;21,"51079-0601-20 ")
 ;;2625
 ;;21,"51079-0604-01 ")
 ;;2626
 ;;21,"51079-0604-20 ")
 ;;2627
 ;;21,"51079-0605-01 ")
 ;;2628
 ;;21,"51079-0605-20 ")
 ;;2629
 ;;21,"51079-0672-01 ")
 ;;2630
 ;;21,"51079-0672-20 ")
 ;;2631
 ;;21,"51079-0673-01 ")
 ;;2632
 ;;21,"51079-0673-06 ")
 ;;2633
 ;;21,"51285-0445-21 ")
 ;;2634
 ;;21,"51285-0445-22 ")
 ;;2635
 ;;21,"51285-0445-23 ")
 ;;2636
 ;;21,"51655-0009-52 ")
 ;;2637
 ;;21,"51655-0009-87 ")
 ;;2638
 ;;21,"51655-0010-24 ")
 ;;2639
 ;;21,"51655-0010-29 ")
 ;;2640
 ;;21,"51655-0010-51 ")
 ;;2641
 ;;21,"51655-0010-52 ")
 ;;2642
 ;;21,"51655-0024-87 ")
 ;;2643
 ;;21,"51655-0075-87 ")
 ;;2644
 ;;21,"51655-0097-27 ")
 ;;2645
 ;;21,"51655-0110-31 ")
 ;;2646
 ;;21,"51655-0112-31 ")
 ;;2647
 ;;21,"51655-0112-51 ")
 ;;2648
 ;;21,"51655-0112-53 ")
 ;;2649
 ;;21,"51655-0115-84 ")
 ;;2650
 ;;21,"51655-0115-87 ")
 ;;2651
 ;;21,"51655-0118-29 ")
 ;;2652
 ;;21,"51655-0118-47 ")
 ;;2653
 ;;21,"51655-0118-52 ")
 ;;2654
 ;;21,"51655-0118-53 ")
 ;;2655
 ;;21,"51655-0118-84 ")
 ;;2656
 ;;21,"51655-0118-87 ")
 ;;2657
 ;;21,"51655-0120-29 ")
 ;;2658
 ;;21,"51655-0186-29 ")
 ;;2659
 ;;21,"51655-0194-29 ")
 ;;2660
 ;;21,"51655-0297-51 ")
 ;;2661
 ;;21,"51655-0412-24 ")
 ;;2662
 ;;21,"51655-0480-24 ")
 ;;2663
 ;;21,"51655-0519-29 ")
 ;;2664
 ;;21,"51655-0519-51 ")
 ;;2665
 ;;21,"51655-0537-84 ")
 ;;2666
 ;;21,"51655-0537-87 ")
 ;;2667
 ;;21,"51655-0917-24 ")
 ;;2668
 ;;21,"51655-0964-24 ")
 ;;2669
 ;;21,"51655-0964-29 ")
 ;;2670
 ;;21,"51655-0964-52 ")
 ;;2671
 ;;21,"51655-0964-89 ")
 ;;2672
 ;;21,"51862-0557-12 ")
 ;;2673
 ;;21,"51862-0558-06 ")
 ;;2674
 ;;21,"51991-0034-52 ")
 ;;2675
 ;;21,"52533-0014-42 ")
 ;;2676
 ;;21,"52533-0015-14 ")
 ;;2677
 ;;21,"52533-0113-42 ")
 ;;2678
 ;;21,"52555-0771-01 ")
 ;;2679
 ;;21,"52959-0004-05 ")
 ;;2680
 ;;21,"52959-0011-20 ")
 ;;2681
 ;;21,"52959-0011-21 ")
 ;;2682
 ;;21,"52959-0011-24 ")
 ;;2683
 ;;21,"52959-0011-30 ")
 ;;2684
 ;;21,"52959-0011-40 ")
 ;;2685
 ;;21,"52959-0011-60 ")
 ;;2686
 ;;21,"52959-0020-00 ")
 ;;2687
 ;;21,"52959-0020-05 ")
 ;;2688