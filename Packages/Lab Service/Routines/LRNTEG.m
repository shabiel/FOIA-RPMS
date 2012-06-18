LRNTEG ;ISC/XTSUMBLD KERNEL - Package checksum checker ;3070621.074623
 ;;5.2;LR;**1022**;September 20, 2007
 ;;7.3;3070621.074623
 S XT4="I 1",X=$T(+3) W !!,"Checksum routine created on ",$P(X,";",4)," by KERNEL V",$P(X,";",3),!
CONT F XT1=1:1 S XT2=$T(ROU+XT1) Q:XT2=""  S X=$P(XT2," ",1),XT3=$P(XT2,";",3) X XT4 I $T W !,X X ^%ZOSF("TEST") S:'$T XT3=0 X:XT3 ^%ZOSF("RSUM") W ?10,$S('XT3:"Routine not in UCI",XT3'=Y:"Calculated "_$C(7)_Y_", off by "_(Y-XT3),1:"ok")
 G CONT^LRNTEG0
 K %1,%2,%3,X,Y,XT1,XT2,XT3,XT4 Q
ONE S XT4="I $D(^UTILITY($J,X))",X=$T(+3) W !!,"Checksum routine created on ",$P(X,";",4)," by KERNEL V",$P(X,";",3),!
 W !,"Check a subset of routines:" K ^UTILITY($J) X ^%ZOSF("RSEL")
 W ! G CONT
ROU ;;
BLR1009P ;;2692407
BLR1012E ;;4659875
BLR2SORD ;;11657464
BLR6249P ;;5602469
BLR7OF1 ;;14965672
BLR7OF3 ;;10045856
BLRAL1 ;;3923661
BLRAL3 ;;4166654
BLRAL4 ;;2449668
BLRALAC ;;5161543
BLRALAF ;;9896254
BLRALAU ;;489313
BLRALBA ;;8668467
BLRALBD ;;660449
BLRALBL ;;6027771
BLRALBM ;;9726289
BLRALBM1 ;;11816172
BLRALBM2 ;;7507734
BLRALBM3 ;;8762866
BLRALBM4 ;;7194905
BLRALBR ;;5654265
BLRALDR ;;5834220
BLRALFN ;;3733880
BLRALFN1 ;;2530072
BLRALPH ;;6764983
BLRALRP ;;5922388
BLRALSR ;;3847950
BLRALUT ;;1841975
BLRALUT1 ;;3230827
BLRAPMOD ;;20415329
BLRAPOST ;;3209032
BLRAPPH ;;713722
BLRAPRE ;;4088866
BLRASP ;;51569
BLRBARA ;;9862522
BLRBARA2 ;;5446790
BLRBARA3 ;;5309737
BLRBARA4 ;;10058903
BLRBARB ;;6841257
BLRBARC ;;4033607
BLRBARCH ;;3972696
BLRBARCY ;;3977119
BLRBARD ;;6031761
BLRBARE ;;4485320
BLRBARQ ;;10276967
BLRBARS ;;4066991
BLRBARSF ;;4693817
BLRBART ;;6441158
BLRBARWE ;;5744527
BLRBARZ ;;5446585
BLRBBDDC ;;3499457
BLRBLRL ;;897325
BLRBLTL ;;14018020
BLRCHGER ;;1218264
BLRCHGPD ;;3134645
BLRCHGPL ;;16494994
BLRCHGPW ;;6582379
BLRCI001 ;;7802504
BLRCI002 ;;7096211
BLRCI003 ;;2678836
BLRCI004 ;;5291926
BLRCI005 ;;5409393
BLRCI006 ;;5416363
BLRCI007 ;;5184275
BLRCI008 ;;5459553
BLRCI009 ;;5449159
BLRCI00A ;;5279829
BLRCI00B ;;5616283
BLRCI00C ;;5219639
BLRCI00D ;;5462401
BLRCI00E ;;5478791
BLRCI00F ;;5470697
BLRCI00G ;;5724045
BLRCI00H ;;5349233
BLRCI00I ;;5472931
BLRCI00J ;;5346770
BLRCI00K ;;5282696
BLRCI00L ;;5351834
BLRCI00M ;;5328257
BLRCI00N ;;5351024
BLRCI00O ;;5092636
BLRCI00P ;;5457594
BLRCI00Q ;;5707740
BLRCI00R ;;5334917
BLRCI00S ;;5478317
BLRCI00T ;;5346402
BLRCI00U ;;5229577
BLRCI00V ;;5267770
BLRCI00W ;;5161906
BLRCI00X ;;5180499
BLRCI00Y ;;5287478
BLRCI00Z ;;5335602
BLRCI010 ;;4565891
BLRCI011 ;;866164
BLRCI012 ;;1928880
BLRCINI1 ;;4837563
BLRCINI2 ;;5232563
BLRCINI3 ;;16806386
BLRCINI4 ;;3357735
BLRCINI5 ;;484361
BLRCINIS ;;2209177
BLRCINIT ;;10247806
BLRCLTRR ;;2464037
BLRCU ;;2814732
BLRDBG ;;1484886
BLRDIAG ;;13645706
BLRDIAG1 ;;7039397
BLRDOSE ;;809718
BLRDPT ;;4526985
BLRDPT0 ;;3361806
BLRDPT1 ;;11011579
BLRDPT2 ;;7102721
BLRDPT3 ;;6395251
BLRDPT30 ;;7916946
BLRDPT31 ;;8867304
BLRDPT32 ;;2802166
BLRDPT4 ;;16635564
BLRDPT5 ;;14654566
BLRDPT6 ;;2834123
BLRDPT60 ;;9509016
BLRDPT61 ;;4365741
BLRDPT62 ;;8242913
BLRDSP ;;6825385
BLRESIGR ;;13829242
BLRESRCD ;;2761624
BLRESRNS ;;2242512
BLREVTQ ;;22912227
BLREXECU ;;2586438
BLRFCLEN ;;2952876
BLRFLTL ;;26056346
BLRFUNC ;;155028
BLRGFRP ;;5770307
BLRGMENU ;;10260808
BLRHL7 ;;4247243
BLRHLTSK ;;2256164
BLRIN001 ;;3909175
BLRIN002 ;;7802561
BLRIN003 ;;7096268
BLRIN004 ;;2678893
BLRIN005 ;;6825494
BLRIN006 ;;8208960
BLRIN007 ;;6934722
BLRIN008 ;;7167596
BLRIN009 ;;6669780
BLRIN00A ;;5852466
BLRIN00B ;;2499886
BLRIN00C ;;2115172
BLRIN00D ;;1990527
BLRIN00E ;;4523064
BLRIN00F ;;4571806
BLRIN00G ;;4674455
BLRIN00H ;;4697259
BLRIN00I ;;4713339
BLRIN00J ;;4842017
BLRIN00K ;;4675587