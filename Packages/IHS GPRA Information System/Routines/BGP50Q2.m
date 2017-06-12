BGP50Q2 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 07, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"63874-0292-04 ")
 ;;235
 ;;21,"63874-0292-10 ")
 ;;236
 ;;21,"63874-0292-12 ")
 ;;237
 ;;21,"63874-0292-15 ")
 ;;238
 ;;21,"63874-0292-20 ")
 ;;239
 ;;21,"63874-0292-30 ")
 ;;240
 ;;21,"63874-0292-60 ")
 ;;241
 ;;21,"63874-0292-74 ")
 ;;242
 ;;21,"63874-0292-90 ")
 ;;243
 ;;21,"63874-0713-01 ")
 ;;389
 ;;21,"63874-0713-04 ")
 ;;390
 ;;21,"63874-0713-12 ")
 ;;391
 ;;21,"63874-0713-15 ")
 ;;392
 ;;21,"63874-0713-20 ")
 ;;393
 ;;21,"63874-0713-30 ")
 ;;394
 ;;21,"63874-0713-40 ")
 ;;395
 ;;21,"63874-0713-60 ")
 ;;396
 ;;21,"63874-0713-74 ")
 ;;397
 ;;21,"63874-0713-90 ")
 ;;398
 ;;21,"63874-0808-12 ")
 ;;404
 ;;21,"63874-0808-15 ")
 ;;405
 ;;21,"63874-0808-20 ")
 ;;406
 ;;21,"63874-0808-30 ")
 ;;407
 ;;21,"66116-0467-30 ")
 ;;255
 ;;21,"66267-0321-10 ")
 ;;379
 ;;21,"66267-0321-28 ")
 ;;380
 ;;21,"66267-0321-30 ")
 ;;381
 ;;21,"66267-0321-60 ")
 ;;382
 ;;21,"66267-0331-15 ")
 ;;53
 ;;21,"66267-0331-30 ")
 ;;54
 ;;21,"66267-0331-45 ")
 ;;55
 ;;21,"66267-0331-60 ")
 ;;56
 ;;21,"66267-0415-30 ")
 ;;221
 ;;21,"66267-0415-60 ")
 ;;222
 ;;21,"66267-0492-30 ")
 ;;495
 ;;21,"66336-0005-10 ")
 ;;352
 ;;21,"66336-0005-30 ")
 ;;353
 ;;21,"66336-0005-60 ")
 ;;354
 ;;21,"66336-0239-30 ")
 ;;49
 ;;21,"66336-0668-10 ")
 ;;225
 ;;21,"66336-0668-15 ")
 ;;226
 ;;21,"66336-0668-30 ")
 ;;227
 ;;21,"66336-0668-44 ")
 ;;228
 ;;21,"66336-0668-60 ")
 ;;229
 ;;21,"66336-0886-02 ")
 ;;496
 ;;21,"66336-0886-03 ")
 ;;497
 ;;21,"66336-0886-30 ")
 ;;498
 ;;21,"67544-0022-30 ")
 ;;76
 ;;21,"67544-0038-10 ")
 ;;244
 ;;21,"67544-0038-14 ")
 ;;245
 ;;21,"67544-0038-15 ")
 ;;246
 ;;21,"67544-0038-20 ")
 ;;247
 ;;21,"67544-0038-28 ")
 ;;248
 ;;21,"67544-0038-30 ")
 ;;249
 ;;21,"67544-0038-45 ")
 ;;250
 ;;21,"67544-0038-53 ")
 ;;251
 ;;21,"67544-0038-60 ")
 ;;252
 ;;21,"67544-0039-15 ")
 ;;384
 ;;21,"67544-0039-20 ")
 ;;385
 ;;21,"67544-0039-30 ")
 ;;386
 ;;21,"67544-0039-53 ")
 ;;387
 ;;21,"67544-0039-60 ")
 ;;388
 ;;21,"67544-0040-30 ")
 ;;408
 ;;21,"67544-0040-53 ")
 ;;409
 ;;21,"67544-0041-30 ")
 ;;499
 ;;21,"67544-0045-30 ")
 ;;122
 ;;21,"67544-0045-53 ")
 ;;123
 ;;21,"67544-0045-60 ")
 ;;124
 ;;21,"67544-0127-15 ")
 ;;355
 ;;21,"67544-0127-20 ")
 ;;356
 ;;21,"67544-0127-30 ")
 ;;357
 ;;21,"67544-0127-53 ")
 ;;358
 ;;21,"67544-0127-60 ")
 ;;359
 ;;21,"67544-0136-10 ")
 ;;256
 ;;21,"67544-0136-14 ")
 ;;257
 ;;21,"67544-0136-15 ")
 ;;258
 ;;21,"67544-0136-20 ")
 ;;259
 ;;21,"67544-0136-28 ")
 ;;260
 ;;21,"67544-0136-30 ")
 ;;261
 ;;21,"67544-0136-45 ")
 ;;262
 ;;21,"67544-0136-53 ")
 ;;263
 ;;21,"67544-0136-60 ")
 ;;264
 ;;21,"67544-0217-10 ")
 ;;265
 ;;21,"67544-0217-14 ")
 ;;266
 ;;21,"67544-0217-15 ")
 ;;267
 ;;21,"67544-0217-20 ")
 ;;268
 ;;21,"67544-0217-30 ")
 ;;269
 ;;21,"67544-0217-45 ")
 ;;270
 ;;21,"67544-0217-53 ")
 ;;271
 ;;21,"67544-0217-60 ")
 ;;272
 ;;21,"67544-0287-10 ")
 ;;363
 ;;21,"67544-0287-15 ")
 ;;364
 ;;21,"67544-0287-20 ")
 ;;365
 ;;21,"67544-0287-28 ")
 ;;366
 ;;21,"67544-0287-30 ")
 ;;367
 ;;21,"67544-0287-53 ")
 ;;368
 ;;21,"67544-0287-59 ")
 ;;369
 ;;21,"67544-0287-60 ")
 ;;370
 ;;21,"67544-0373-10 ")
 ;;371
 ;;21,"67544-0373-15 ")
 ;;372
 ;;21,"67544-0373-20 ")
 ;;373
 ;;21,"67544-0373-28 ")
 ;;374
 ;;21,"67544-0373-30 ")
 ;;375
 ;;21,"67544-0373-53 ")
 ;;376
 ;;21,"67544-0373-59 ")
 ;;377
 ;;21,"67544-0373-60 ")
 ;;378
 ;;21,"67544-0725-30 ")
 ;;501
 ;;21,"67544-0725-53 ")
 ;;502
 ;;21,"67544-0752-30 ")
 ;;50
 ;;21,"67544-0785-30 ")
 ;;52
 ;;21,"67877-0146-01 ")
 ;;223
 ;;21,"67877-0146-05 ")
 ;;224
 ;;21,"67877-0147-01 ")
 ;;360
 ;;21,"67877-0147-05 ")
 ;;361
 ;;21,"67877-0148-01 ")
 ;;127
 ;;21,"67877-0149-30 ")
 ;;279
 ;;21,"68071-0220-20 ")
 ;;57
 ;;21,"68071-0220-30 ")
 ;;51
 ;;21,"68084-0549-11 ")
 ;;125
 ;;21,"68084-0549-21 ")
 ;;126
 ;;21,"68387-0195-24 ")
 ;;219
 ;;21,"68387-0195-30 ")
 ;;220
 ;;21,"68387-0196-30 ")
 ;;362
 ;;21,"68387-0530-15 ")
 ;;493
 ;;21,"68387-0530-30 ")
 ;;494
 ;;21,"68387-0610-15 ")
 ;;58
 ;;21,"68387-0610-30 ")
 ;;59
 ;;21,"76218-0405-01 ")
 ;;107
 ;;9002226,1820,.01)
 ;;BGP PQA BENZODIAZ NDC
 ;;9002226,1820,.02)
 ;;@
 ;;9002226,1820,.04)
 ;;n
 ;;9002226,1820,.06)
 ;;@
 ;;9002226,1820,.08)
 ;;@
 ;;9002226,1820,.09)
 ;;3140807
 ;;9002226,1820,.11)
 ;;@
 ;;9002226,1820,.12)
 ;;@
 ;;9002226,1820,.13)
 ;;1
 ;;9002226,1820,.14)
 ;;@
 ;;9002226,1820,.15)
 ;;50.67
 ;;9002226,1820,.16)
 ;;@
 ;;9002226,1820,.17)
 ;;@
 ;;9002226,1820,3101)
 ;;@
 ;;9002226.02101,"1820,00009-0017-02 ",.01)
 ;;00009-0017-02
 ;;9002226.02101,"1820,00009-0017-02 ",.02)
 ;;00009-0017-02
 ;;9002226.02101,"1820,00009-0017-55 ",.01)
 ;;00009-0017-55
 ;;9002226.02101,"1820,00009-0017-55 ",.02)
 ;;00009-0017-55
 ;;9002226.02101,"1820,00009-0017-58 ",.01)
 ;;00009-0017-58
 ;;9002226.02101,"1820,00009-0017-58 ",.02)
 ;;00009-0017-58
 ;;9002226.02101,"1820,00009-0017-59 ",.01)
 ;;00009-0017-59
 ;;9002226.02101,"1820,00009-0017-59 ",.02)
 ;;00009-0017-59
 ;;9002226.02101,"1820,00054-4858-51 ",.01)
 ;;00054-4858-51
 ;;9002226.02101,"1820,00054-4858-51 ",.02)
 ;;00054-4858-51
 ;;9002226.02101,"1820,00054-4859-29 ",.01)
 ;;00054-4859-29
 ;;9002226.02101,"1820,00054-4859-29 ",.02)
 ;;00054-4859-29
 ;;9002226.02101,"1820,00054-4859-51 ",.01)
 ;;00054-4859-51
 ;;9002226.02101,"1820,00054-4859-51 ",.02)
 ;;00054-4859-51
 ;;9002226.02101,"1820,00054-8858-25 ",.01)
 ;;00054-8858-25
 ;;9002226.02101,"1820,00054-8858-25 ",.02)
 ;;00054-8858-25
 ;;9002226.02101,"1820,00054-8859-25 ",.01)
 ;;00054-8859-25
 ;;9002226.02101,"1820,00054-8859-25 ",.02)
 ;;00054-8859-25
 ;;9002226.02101,"1820,00093-0129-01 ",.01)
 ;;00093-0129-01
 ;;9002226.02101,"1820,00093-0129-01 ",.02)
 ;;00093-0129-01
 ;;9002226.02101,"1820,00093-0130-01 ",.01)
 ;;00093-0130-01
 ;;9002226.02101,"1820,00093-0130-01 ",.02)
 ;;00093-0130-01
 ;;9002226.02101,"1820,00143-3367-01 ",.01)
 ;;00143-3367-01
 ;;9002226.02101,"1820,00143-3367-01 ",.02)
 ;;00143-3367-01
 ;;9002226.02101,"1820,00143-3367-05 ",.01)
 ;;00143-3367-05
 ;;9002226.02101,"1820,00143-3367-05 ",.02)
 ;;00143-3367-05
 ;;9002226.02101,"1820,00143-3370-01 ",.01)
 ;;00143-3370-01
 ;;9002226.02101,"1820,00143-3370-01 ",.02)
 ;;00143-3370-01
 ;;9002226.02101,"1820,00143-3370-05 ",.01)
 ;;00143-3370-05
 ;;9002226.02101,"1820,00143-3370-05 ",.02)
 ;;00143-3370-05
 ;;9002226.02101,"1820,00228-2076-10 ",.01)
 ;;00228-2076-10
 ;;9002226.02101,"1820,00228-2076-10 ",.02)
 ;;00228-2076-10
 ;;9002226.02101,"1820,00228-2076-50 ",.01)
 ;;00228-2076-50
 ;;9002226.02101,"1820,00228-2076-50 ",.02)
 ;;00228-2076-50
 ;;9002226.02101,"1820,00228-2077-10 ",.01)
 ;;00228-2077-10
 ;;9002226.02101,"1820,00228-2077-10 ",.02)
 ;;00228-2077-10
 ;;9002226.02101,"1820,00228-2077-50 ",.01)
 ;;00228-2077-50
 ;;9002226.02101,"1820,00228-2077-50 ",.02)
 ;;00228-2077-50
 ;;9002226.02101,"1820,00378-3110-01 ",.01)
 ;;00378-3110-01
 ;;9002226.02101,"1820,00378-3110-01 ",.02)
 ;;00378-3110-01
 ;;9002226.02101,"1820,00378-3120-93 ",.01)
 ;;00378-3120-93
 ;;9002226.02101,"1820,00378-3120-93 ",.02)
 ;;00378-3120-93
 ;;9002226.02101,"1820,00378-4010-01 ",.01)
 ;;00378-4010-01
 ;;9002226.02101,"1820,00378-4010-01 ",.02)
 ;;00378-4010-01
 ;;9002226.02101,"1820,00378-4010-05 ",.01)
 ;;00378-4010-05
 ;;9002226.02101,"1820,00378-4010-05 ",.02)
 ;;00378-4010-05
 ;;9002226.02101,"1820,00378-4010-77 ",.01)
 ;;00378-4010-77
 ;;9002226.02101,"1820,00378-4010-77 ",.02)
 ;;00378-4010-77
 ;;9002226.02101,"1820,00378-4415-01 ",.01)
 ;;00378-4415-01
 ;;9002226.02101,"1820,00378-4415-01 ",.02)
 ;;00378-4415-01
 ;;9002226.02101,"1820,00378-4430-01 ",.01)
 ;;00378-4430-01
 ;;9002226.02101,"1820,00378-4430-01 ",.02)
 ;;00378-4430-01
 ;;9002226.02101,"1820,00378-5050-01 ",.01)
 ;;00378-5050-01
 ;;9002226.02101,"1820,00378-5050-01 ",.02)
 ;;00378-5050-01
 ;;9002226.02101,"1820,00378-5050-05 ",.01)
 ;;00378-5050-05
 ;;9002226.02101,"1820,00378-5050-05 ",.02)
 ;;00378-5050-05
 ;;9002226.02101,"1820,00378-5050-77 ",.01)
 ;;00378-5050-77
 ;;9002226.02101,"1820,00378-5050-77 ",.02)
 ;;00378-5050-77
 ;;9002226.02101,"1820,00406-9914-03 ",.01)
 ;;00406-9914-03
 ;;9002226.02101,"1820,00406-9914-03 ",.02)
 ;;00406-9914-03
 ;;9002226.02101,"1820,00406-9915-01 ",.01)
 ;;00406-9915-01
 ;;9002226.02101,"1820,00406-9915-01 ",.02)
 ;;00406-9915-01
 ;;9002226.02101,"1820,00406-9915-03 ",.01)
 ;;00406-9915-03
 ;;9002226.02101,"1820,00406-9915-03 ",.02)
 ;;00406-9915-03
 ;;9002226.02101,"1820,00406-9916-01 ",.01)
 ;;00406-9916-01
 ;;9002226.02101,"1820,00406-9916-01 ",.02)
 ;;00406-9916-01
 ;;9002226.02101,"1820,00406-9917-01 ",.01)
 ;;00406-9917-01
 ;;9002226.02101,"1820,00406-9917-01 ",.02)
 ;;00406-9917-01
 ;;9002226.02101,"1820,00406-9959-03 ",.01)
 ;;00406-9959-03
 ;;9002226.02101,"1820,00406-9959-03 ",.02)
 ;;00406-9959-03
 ;;9002226.02101,"1820,00406-9960-01 ",.01)
 ;;00406-9960-01
 ;;9002226.02101,"1820,00406-9960-01 ",.02)
 ;;00406-9960-01
 ;;9002226.02101,"1820,00440-7516-30 ",.01)
 ;;00440-7516-30
 ;;9002226.02101,"1820,00440-7516-30 ",.02)
 ;;00440-7516-30
 ;;9002226.02101,"1820,00440-7530-30 ",.01)
 ;;00440-7530-30
 ;;9002226.02101,"1820,00440-7530-30 ",.02)
 ;;00440-7530-30
 ;;9002226.02101,"1820,00440-7531-30 ",.01)
 ;;00440-7531-30
 ;;9002226.02101,"1820,00440-7531-30 ",.02)
 ;;00440-7531-30
 ;;9002226.02101,"1820,00440-7531-60 ",.01)
 ;;00440-7531-60
 ;;9002226.02101,"1820,00440-7531-60 ",.02)
 ;;00440-7531-60
 ;;9002226.02101,"1820,00440-8475-14 ",.01)
 ;;00440-8475-14
 ;;9002226.02101,"1820,00440-8475-14 ",.02)
 ;;00440-8475-14
 ;;9002226.02101,"1820,00440-8475-15 ",.01)
 ;;00440-8475-15
 ;;9002226.02101,"1820,00440-8475-15 ",.02)
 ;;00440-8475-15
 ;;9002226.02101,"1820,00440-8475-30 ",.01)
 ;;00440-8475-30
 ;;9002226.02101,"1820,00440-8475-30 ",.02)
 ;;00440-8475-30
 ;;9002226.02101,"1820,00440-8476-14 ",.01)
 ;;00440-8476-14
 ;;9002226.02101,"1820,00440-8476-14 ",.02)
 ;;00440-8476-14
 ;;9002226.02101,"1820,00440-8476-15 ",.01)
 ;;00440-8476-15
 ;;9002226.02101,"1820,00440-8476-15 ",.02)
 ;;00440-8476-15
 ;;9002226.02101,"1820,00440-8476-30 ",.01)
 ;;00440-8476-30
 ;;9002226.02101,"1820,00440-8476-30 ",.02)
 ;;00440-8476-30
 ;;9002226.02101,"1820,00591-0744-01 ",.01)
 ;;00591-0744-01
 ;;9002226.02101,"1820,00591-0744-01 ",.02)
 ;;00591-0744-01
 ;;9002226.02101,"1820,00591-0745-01 ",.01)
 ;;00591-0745-01
 ;;9002226.02101,"1820,00591-0745-01 ",.02)
 ;;00591-0745-01
 ;;9002226.02101,"1820,00781-2201-01 ",.01)
 ;;00781-2201-01
 ;;9002226.02101,"1820,00781-2201-01 ",.02)
 ;;00781-2201-01
 ;;9002226.02101,"1820,00781-2201-05 ",.01)
 ;;00781-2201-05
 ;;9002226.02101,"1820,00781-2201-05 ",.02)
 ;;00781-2201-05
 ;;9002226.02101,"1820,00781-2202-01 ",.01)
 ;;00781-2202-01
 ;;9002226.02101,"1820,00781-2202-01 ",.02)
 ;;00781-2202-01
 ;;9002226.02101,"1820,00781-2202-05 ",.01)
 ;;00781-2202-05
 ;;9002226.02101,"1820,00781-2202-05 ",.02)
 ;;00781-2202-05
 ;;9002226.02101,"1820,16590-0214-15 ",.01)
 ;;16590-0214-15
 ;;9002226.02101,"1820,16590-0214-15 ",.02)
 ;;16590-0214-15
 ;;9002226.02101,"1820,16590-0214-28 ",.01)
 ;;16590-0214-28
 ;;9002226.02101,"1820,16590-0214-28 ",.02)
 ;;16590-0214-28
 ;;9002226.02101,"1820,16590-0214-30 ",.01)
 ;;16590-0214-30
 ;;9002226.02101,"1820,16590-0214-30 ",.02)
 ;;16590-0214-30
 ;;9002226.02101,"1820,16590-0214-45 ",.01)
 ;;16590-0214-45
 ;;9002226.02101,"1820,16590-0214-45 ",.02)
 ;;16590-0214-45
 ;;9002226.02101,"1820,16590-0214-60 ",.01)
 ;;16590-0214-60
 ;;9002226.02101,"1820,16590-0214-60 ",.02)
 ;;16590-0214-60
 ;;9002226.02101,"1820,16590-0214-90 ",.01)
 ;;16590-0214-90
 ;;9002226.02101,"1820,16590-0214-90 ",.02)
 ;;16590-0214-90
 ;;9002226.02101,"1820,16590-0236-20 ",.01)
 ;;16590-0236-20
 ;;9002226.02101,"1820,16590-0236-20 ",.02)
 ;;16590-0236-20
 ;;9002226.02101,"1820,16590-0236-28 ",.01)
 ;;16590-0236-28
 ;;9002226.02101,"1820,16590-0236-28 ",.02)
 ;;16590-0236-28
 ;;9002226.02101,"1820,16590-0236-30 ",.01)
 ;;16590-0236-30
 ;;9002226.02101,"1820,16590-0236-30 ",.02)
 ;;16590-0236-30
 ;;9002226.02101,"1820,16590-0236-40 ",.01)
 ;;16590-0236-40
 ;;9002226.02101,"1820,16590-0236-40 ",.02)
 ;;16590-0236-40
 ;;9002226.02101,"1820,16590-0236-60 ",.01)
 ;;16590-0236-60
 ;;9002226.02101,"1820,16590-0236-60 ",.02)
 ;;16590-0236-60
 ;;9002226.02101,"1820,16590-0236-90 ",.01)
 ;;16590-0236-90
 ;;9002226.02101,"1820,16590-0236-90 ",.02)
 ;;16590-0236-90
 ;;9002226.02101,"1820,16590-0438-28 ",.01)
 ;;16590-0438-28
 ;;9002226.02101,"1820,16590-0438-28 ",.02)
 ;;16590-0438-28
 ;;9002226.02101,"1820,16590-0438-30 ",.01)
 ;;16590-0438-30
 ;;9002226.02101,"1820,16590-0438-30 ",.02)
 ;;16590-0438-30
 ;;9002226.02101,"1820,16590-0438-60 ",.01)
 ;;16590-0438-60
 ;;9002226.02101,"1820,16590-0438-60 ",.02)
 ;;16590-0438-60
 ;;9002226.02101,"1820,16590-0438-72 ",.01)
 ;;16590-0438-72
 ;;9002226.02101,"1820,16590-0438-72 ",.02)
 ;;16590-0438-72
 ;;9002226.02101,"1820,16590-0438-90 ",.01)
 ;;16590-0438-90
 ;;9002226.02101,"1820,16590-0438-90 ",.02)
 ;;16590-0438-90
 ;;9002226.02101,"1820,21695-0220-30 ",.01)
 ;;21695-0220-30
 ;;9002226.02101,"1820,21695-0220-30 ",.02)
 ;;21695-0220-30
 ;;9002226.02101,"1820,21695-0282-30 ",.01)
 ;;21695-0282-30