BGPM5BDD ;IHS/MSC/SAT-CREATED BY ^ATXSTX ON SEP 12, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1044,58016070418 ",.01)
 ;;58016070418
 ;;9002226.02101,"1044,58016070418 ",.02)
 ;;58016070418
 ;;9002226.02101,"1044,58016070420 ",.01)
 ;;58016070420
 ;;9002226.02101,"1044,58016070420 ",.02)
 ;;58016070420
 ;;9002226.02101,"1044,58016070421 ",.01)
 ;;58016070421
 ;;9002226.02101,"1044,58016070421 ",.02)
 ;;58016070421
 ;;9002226.02101,"1044,58016070424 ",.01)
 ;;58016070424
 ;;9002226.02101,"1044,58016070424 ",.02)
 ;;58016070424
 ;;9002226.02101,"1044,58016070425 ",.01)
 ;;58016070425
 ;;9002226.02101,"1044,58016070425 ",.02)
 ;;58016070425
 ;;9002226.02101,"1044,58016070426 ",.01)
 ;;58016070426
 ;;9002226.02101,"1044,58016070426 ",.02)
 ;;58016070426
 ;;9002226.02101,"1044,58016070427 ",.01)
 ;;58016070427
 ;;9002226.02101,"1044,58016070427 ",.02)
 ;;58016070427
 ;;9002226.02101,"1044,58016070428 ",.01)
 ;;58016070428
 ;;9002226.02101,"1044,58016070428 ",.02)
 ;;58016070428
 ;;9002226.02101,"1044,58016070430 ",.01)
 ;;58016070430
 ;;9002226.02101,"1044,58016070430 ",.02)
 ;;58016070430
 ;;9002226.02101,"1044,58016070432 ",.01)
 ;;58016070432
 ;;9002226.02101,"1044,58016070432 ",.02)
 ;;58016070432
 ;;9002226.02101,"1044,58016070435 ",.01)
 ;;58016070435
 ;;9002226.02101,"1044,58016070435 ",.02)
 ;;58016070435
 ;;9002226.02101,"1044,58016070436 ",.01)
 ;;58016070436
 ;;9002226.02101,"1044,58016070436 ",.02)
 ;;58016070436
 ;;9002226.02101,"1044,58016070440 ",.01)
 ;;58016070440
 ;;9002226.02101,"1044,58016070440 ",.02)
 ;;58016070440
 ;;9002226.02101,"1044,58016070442 ",.01)
 ;;58016070442
 ;;9002226.02101,"1044,58016070442 ",.02)
 ;;58016070442
 ;;9002226.02101,"1044,58016070444 ",.01)
 ;;58016070444
 ;;9002226.02101,"1044,58016070444 ",.02)
 ;;58016070444
 ;;9002226.02101,"1044,58016070445 ",.01)
 ;;58016070445
 ;;9002226.02101,"1044,58016070445 ",.02)
 ;;58016070445
 ;;9002226.02101,"1044,58016070448 ",.01)
 ;;58016070448
 ;;9002226.02101,"1044,58016070448 ",.02)
 ;;58016070448
 ;;9002226.02101,"1044,58016070450 ",.01)
 ;;58016070450
 ;;9002226.02101,"1044,58016070450 ",.02)
 ;;58016070450
 ;;9002226.02101,"1044,58016070456 ",.01)
 ;;58016070456
 ;;9002226.02101,"1044,58016070456 ",.02)
 ;;58016070456
 ;;9002226.02101,"1044,58016070460 ",.01)
 ;;58016070460
 ;;9002226.02101,"1044,58016070460 ",.02)
 ;;58016070460
 ;;9002226.02101,"1044,58016070467 ",.01)
 ;;58016070467
 ;;9002226.02101,"1044,58016070467 ",.02)
 ;;58016070467
 ;;9002226.02101,"1044,58016070469 ",.01)
 ;;58016070469
 ;;9002226.02101,"1044,58016070469 ",.02)
 ;;58016070469
 ;;9002226.02101,"1044,58016070470 ",.01)
 ;;58016070470
 ;;9002226.02101,"1044,58016070470 ",.02)
 ;;58016070470
 ;;9002226.02101,"1044,58016070471 ",.01)
 ;;58016070471
 ;;9002226.02101,"1044,58016070471 ",.02)
 ;;58016070471
 ;;9002226.02101,"1044,58016070472 ",.01)
 ;;58016070472
 ;;9002226.02101,"1044,58016070472 ",.02)
 ;;58016070472
 ;;9002226.02101,"1044,58016070473 ",.01)
 ;;58016070473
 ;;9002226.02101,"1044,58016070473 ",.02)
 ;;58016070473
 ;;9002226.02101,"1044,58016070475 ",.01)
 ;;58016070475
 ;;9002226.02101,"1044,58016070475 ",.02)
 ;;58016070475
 ;;9002226.02101,"1044,58016070476 ",.01)
 ;;58016070476
 ;;9002226.02101,"1044,58016070476 ",.02)
 ;;58016070476
 ;;9002226.02101,"1044,58016070477 ",.01)
 ;;58016070477
 ;;9002226.02101,"1044,58016070477 ",.02)
 ;;58016070477
 ;;9002226.02101,"1044,58016070479 ",.01)
 ;;58016070479
 ;;9002226.02101,"1044,58016070479 ",.02)
 ;;58016070479
 ;;9002226.02101,"1044,58016070480 ",.01)
 ;;58016070480
 ;;9002226.02101,"1044,58016070480 ",.02)
 ;;58016070480
 ;;9002226.02101,"1044,58016070481 ",.01)
 ;;58016070481
 ;;9002226.02101,"1044,58016070481 ",.02)
 ;;58016070481
 ;;9002226.02101,"1044,58016070482 ",.01)
 ;;58016070482
 ;;9002226.02101,"1044,58016070482 ",.02)
 ;;58016070482
 ;;9002226.02101,"1044,58016070483 ",.01)
 ;;58016070483
 ;;9002226.02101,"1044,58016070483 ",.02)
 ;;58016070483
 ;;9002226.02101,"1044,58016070484 ",.01)
 ;;58016070484
 ;;9002226.02101,"1044,58016070484 ",.02)
 ;;58016070484
 ;;9002226.02101,"1044,58016070487 ",.01)
 ;;58016070487
 ;;9002226.02101,"1044,58016070487 ",.02)
 ;;58016070487
 ;;9002226.02101,"1044,58016070489 ",.01)
 ;;58016070489
 ;;9002226.02101,"1044,58016070489 ",.02)
 ;;58016070489
 ;;9002226.02101,"1044,58016070490 ",.01)
 ;;58016070490
 ;;9002226.02101,"1044,58016070490 ",.02)
 ;;58016070490
 ;;9002226.02101,"1044,58016070491 ",.01)
 ;;58016070491
 ;;9002226.02101,"1044,58016070491 ",.02)
 ;;58016070491
 ;;9002226.02101,"1044,58016070492 ",.01)
 ;;58016070492
 ;;9002226.02101,"1044,58016070492 ",.02)
 ;;58016070492
 ;;9002226.02101,"1044,58016070493 ",.01)
 ;;58016070493
 ;;9002226.02101,"1044,58016070493 ",.02)
 ;;58016070493
 ;;9002226.02101,"1044,58016070496 ",.01)
 ;;58016070496
 ;;9002226.02101,"1044,58016070496 ",.02)
 ;;58016070496
 ;;9002226.02101,"1044,58016070497 ",.01)
 ;;58016070497
 ;;9002226.02101,"1044,58016070497 ",.02)
 ;;58016070497
 ;;9002226.02101,"1044,58016070498 ",.01)
 ;;58016070498
 ;;9002226.02101,"1044,58016070498 ",.02)
 ;;58016070498
 ;;9002226.02101,"1044,58016070499 ",.01)
 ;;58016070499
 ;;9002226.02101,"1044,58016070499 ",.02)
 ;;58016070499
 ;;9002226.02101,"1044,58016071000 ",.01)
 ;;58016071000
 ;;9002226.02101,"1044,58016071000 ",.02)
 ;;58016071000
 ;;9002226.02101,"1044,58016071030 ",.01)
 ;;58016071030
 ;;9002226.02101,"1044,58016071030 ",.02)
 ;;58016071030
 ;;9002226.02101,"1044,58016071060 ",.01)
 ;;58016071060
 ;;9002226.02101,"1044,58016071060 ",.02)
 ;;58016071060
 ;;9002226.02101,"1044,58016071090 ",.01)
 ;;58016071090
 ;;9002226.02101,"1044,58016071090 ",.02)
 ;;58016071090
 ;;9002226.02101,"1044,58016071099 ",.01)
 ;;58016071099
 ;;9002226.02101,"1044,58016071099 ",.02)
 ;;58016071099
 ;;9002226.02101,"1044,58016074900 ",.01)
 ;;58016074900
 ;;9002226.02101,"1044,58016074900 ",.02)
 ;;58016074900
 ;;9002226.02101,"1044,58016074902 ",.01)
 ;;58016074902
 ;;9002226.02101,"1044,58016074902 ",.02)
 ;;58016074902
 ;;9002226.02101,"1044,58016074930 ",.01)
 ;;58016074930
 ;;9002226.02101,"1044,58016074930 ",.02)
 ;;58016074930
 ;;9002226.02101,"1044,58016074960 ",.01)
 ;;58016074960
 ;;9002226.02101,"1044,58016074960 ",.02)
 ;;58016074960
 ;;9002226.02101,"1044,58016074990 ",.01)
 ;;58016074990
 ;;9002226.02101,"1044,58016074990 ",.02)
 ;;58016074990
 ;;9002226.02101,"1044,58016080800 ",.01)
 ;;58016080800
 ;;9002226.02101,"1044,58016080800 ",.02)
 ;;58016080800
 ;;9002226.02101,"1044,58016080801 ",.01)
 ;;58016080801
 ;;9002226.02101,"1044,58016080801 ",.02)
 ;;58016080801
 ;;9002226.02101,"1044,58016080802 ",.01)
 ;;58016080802
 ;;9002226.02101,"1044,58016080802 ",.02)
 ;;58016080802
 ;;9002226.02101,"1044,58016080803 ",.01)
 ;;58016080803
 ;;9002226.02101,"1044,58016080803 ",.02)
 ;;58016080803
 ;;9002226.02101,"1044,58016080804 ",.01)
 ;;58016080804
 ;;9002226.02101,"1044,58016080804 ",.02)
 ;;58016080804
 ;;9002226.02101,"1044,58016080805 ",.01)
 ;;58016080805
 ;;9002226.02101,"1044,58016080805 ",.02)
 ;;58016080805
 ;;9002226.02101,"1044,58016080806 ",.01)
 ;;58016080806
 ;;9002226.02101,"1044,58016080806 ",.02)
 ;;58016080806
 ;;9002226.02101,"1044,58016080807 ",.01)
 ;;58016080807
 ;;9002226.02101,"1044,58016080807 ",.02)
 ;;58016080807
 ;;9002226.02101,"1044,58016080808 ",.01)
 ;;58016080808
 ;;9002226.02101,"1044,58016080808 ",.02)
 ;;58016080808
 ;;9002226.02101,"1044,58016080809 ",.01)
 ;;58016080809
 ;;9002226.02101,"1044,58016080809 ",.02)
 ;;58016080809
 ;;9002226.02101,"1044,58016080810 ",.01)
 ;;58016080810
 ;;9002226.02101,"1044,58016080810 ",.02)
 ;;58016080810
 ;;9002226.02101,"1044,58016080812 ",.01)
 ;;58016080812
 ;;9002226.02101,"1044,58016080812 ",.02)
 ;;58016080812
 ;;9002226.02101,"1044,58016080814 ",.01)
 ;;58016080814
 ;;9002226.02101,"1044,58016080814 ",.02)
 ;;58016080814
 ;;9002226.02101,"1044,58016080815 ",.01)
 ;;58016080815
 ;;9002226.02101,"1044,58016080815 ",.02)
 ;;58016080815
 ;;9002226.02101,"1044,58016080816 ",.01)
 ;;58016080816
 ;;9002226.02101,"1044,58016080816 ",.02)
 ;;58016080816
 ;;9002226.02101,"1044,58016080818 ",.01)
 ;;58016080818
 ;;9002226.02101,"1044,58016080818 ",.02)
 ;;58016080818
 ;;9002226.02101,"1044,58016080820 ",.01)
 ;;58016080820
 ;;9002226.02101,"1044,58016080820 ",.02)
 ;;58016080820
 ;;9002226.02101,"1044,58016080821 ",.01)
 ;;58016080821
 ;;9002226.02101,"1044,58016080821 ",.02)
 ;;58016080821
 ;;9002226.02101,"1044,58016080824 ",.01)
 ;;58016080824
 ;;9002226.02101,"1044,58016080824 ",.02)
 ;;58016080824
 ;;9002226.02101,"1044,58016080825 ",.01)
 ;;58016080825
 ;;9002226.02101,"1044,58016080825 ",.02)
 ;;58016080825
 ;;9002226.02101,"1044,58016080826 ",.01)
 ;;58016080826
 ;;9002226.02101,"1044,58016080826 ",.02)
 ;;58016080826
 ;;9002226.02101,"1044,58016080827 ",.01)
 ;;58016080827
 ;;9002226.02101,"1044,58016080827 ",.02)
 ;;58016080827
 ;;9002226.02101,"1044,58016080828 ",.01)
 ;;58016080828
 ;;9002226.02101,"1044,58016080828 ",.02)
 ;;58016080828
 ;;9002226.02101,"1044,58016080830 ",.01)
 ;;58016080830
 ;;9002226.02101,"1044,58016080830 ",.02)
 ;;58016080830
 ;;9002226.02101,"1044,58016080832 ",.01)
 ;;58016080832
 ;;9002226.02101,"1044,58016080832 ",.02)
 ;;58016080832
 ;;9002226.02101,"1044,58016080835 ",.01)
 ;;58016080835
 ;;9002226.02101,"1044,58016080835 ",.02)
 ;;58016080835
 ;;9002226.02101,"1044,58016080836 ",.01)
 ;;58016080836
 ;;9002226.02101,"1044,58016080836 ",.02)
 ;;58016080836
 ;;9002226.02101,"1044,58016080840 ",.01)
 ;;58016080840
 ;;9002226.02101,"1044,58016080840 ",.02)
 ;;58016080840
 ;;9002226.02101,"1044,58016080842 ",.01)
 ;;58016080842
 ;;9002226.02101,"1044,58016080842 ",.02)
 ;;58016080842
 ;;9002226.02101,"1044,58016080844 ",.01)
 ;;58016080844
 ;;9002226.02101,"1044,58016080844 ",.02)
 ;;58016080844
 ;;9002226.02101,"1044,58016080845 ",.01)
 ;;58016080845
 ;;9002226.02101,"1044,58016080845 ",.02)
 ;;58016080845
 ;;9002226.02101,"1044,58016080848 ",.01)
 ;;58016080848
 ;;9002226.02101,"1044,58016080848 ",.02)
 ;;58016080848
 ;;9002226.02101,"1044,58016080850 ",.01)
 ;;58016080850
 ;;9002226.02101,"1044,58016080850 ",.02)
 ;;58016080850
 ;;9002226.02101,"1044,58016080856 ",.01)
 ;;58016080856
 ;;9002226.02101,"1044,58016080856 ",.02)
 ;;58016080856
 ;;9002226.02101,"1044,58016080860 ",.01)
 ;;58016080860
 ;;9002226.02101,"1044,58016080860 ",.02)
 ;;58016080860
 ;;9002226.02101,"1044,58016080867 ",.01)
 ;;58016080867
 ;;9002226.02101,"1044,58016080867 ",.02)
 ;;58016080867
 ;;9002226.02101,"1044,58016080869 ",.01)
 ;;58016080869
 ;;9002226.02101,"1044,58016080869 ",.02)
 ;;58016080869
 ;;9002226.02101,"1044,58016080870 ",.01)
 ;;58016080870
 ;;9002226.02101,"1044,58016080870 ",.02)
 ;;58016080870
 ;;9002226.02101,"1044,58016080871 ",.01)
 ;;58016080871
 ;;9002226.02101,"1044,58016080871 ",.02)
 ;;58016080871
 ;;9002226.02101,"1044,58016080872 ",.01)
 ;;58016080872
 ;;9002226.02101,"1044,58016080872 ",.02)
 ;;58016080872
 ;;9002226.02101,"1044,58016080873 ",.01)
 ;;58016080873
 ;;9002226.02101,"1044,58016080873 ",.02)
 ;;58016080873
 ;;9002226.02101,"1044,58016080875 ",.01)
 ;;58016080875
 ;;9002226.02101,"1044,58016080875 ",.02)
 ;;58016080875
 ;;9002226.02101,"1044,58016080876 ",.01)
 ;;58016080876
 ;;9002226.02101,"1044,58016080876 ",.02)
 ;;58016080876
 ;;9002226.02101,"1044,58016080877 ",.01)
 ;;58016080877
 ;;9002226.02101,"1044,58016080877 ",.02)
 ;;58016080877
 ;;9002226.02101,"1044,58016080879 ",.01)
 ;;58016080879
 ;;9002226.02101,"1044,58016080879 ",.02)
 ;;58016080879
 ;;9002226.02101,"1044,58016080880 ",.01)
 ;;58016080880