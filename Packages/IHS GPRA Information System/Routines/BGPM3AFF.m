BGPM3AFF ;IHS/MSC/SAT-CREATED BY ^ATXSTX ON APR 21, 2011;
 ;;11.0;IHS CLINICAL REPORTING;**4**;JAN 06, 2011;Build 84
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"791,51672403003 ",.02)
 ;;51672403003
 ;;9002226.02101,"791,51672403007 ",.01)
 ;;51672403007
 ;;9002226.02101,"791,51672403007 ",.02)
 ;;51672403007
 ;;9002226.02101,"791,51672403100 ",.01)
 ;;51672403100
 ;;9002226.02101,"791,51672403100 ",.02)
 ;;51672403100
 ;;9002226.02101,"791,51672403101 ",.01)
 ;;51672403101
 ;;9002226.02101,"791,51672403101 ",.02)
 ;;51672403101
 ;;9002226.02101,"791,51672403103 ",.01)
 ;;51672403103
 ;;9002226.02101,"791,51672403103 ",.02)
 ;;51672403103
 ;;9002226.02101,"791,51672403107 ",.01)
 ;;51672403107
 ;;9002226.02101,"791,51672403107 ",.02)
 ;;51672403107
 ;;9002226.02101,"791,51672403200 ",.01)
 ;;51672403200
 ;;9002226.02101,"791,51672403200 ",.02)
 ;;51672403200
 ;;9002226.02101,"791,51672403201 ",.01)
 ;;51672403201
 ;;9002226.02101,"791,51672403201 ",.02)
 ;;51672403201
 ;;9002226.02101,"791,51672403203 ",.01)
 ;;51672403203
 ;;9002226.02101,"791,51672403203 ",.02)
 ;;51672403203
 ;;9002226.02101,"791,51672403207 ",.01)
 ;;51672403207
 ;;9002226.02101,"791,51672403207 ",.02)
 ;;51672403207
 ;;9002226.02101,"791,51672403300 ",.01)
 ;;51672403300
 ;;9002226.02101,"791,51672403300 ",.02)
 ;;51672403300
 ;;9002226.02101,"791,51672403301 ",.01)
 ;;51672403301
 ;;9002226.02101,"791,51672403301 ",.02)
 ;;51672403301
 ;;9002226.02101,"791,51672403303 ",.01)
 ;;51672403303
 ;;9002226.02101,"791,51672403303 ",.02)
 ;;51672403303
 ;;9002226.02101,"791,51672403307 ",.01)
 ;;51672403307
 ;;9002226.02101,"791,51672403307 ",.02)
 ;;51672403307
 ;;9002226.02101,"791,51672403500 ",.01)
 ;;51672403500
 ;;9002226.02101,"791,51672403500 ",.02)
 ;;51672403500
 ;;9002226.02101,"791,51672403501 ",.01)
 ;;51672403501
 ;;9002226.02101,"791,51672403501 ",.02)
 ;;51672403501
 ;;9002226.02101,"791,51672403503 ",.01)
 ;;51672403503
 ;;9002226.02101,"791,51672403503 ",.02)
 ;;51672403503
 ;;9002226.02101,"791,51728054501 ",.01)
 ;;51728054501
 ;;9002226.02101,"791,51728054501 ",.02)
 ;;51728054501
 ;;9002226.02101,"791,51728054510 ",.01)
 ;;51728054510
 ;;9002226.02101,"791,51728054510 ",.02)
 ;;51728054510
 ;;9002226.02101,"791,51813003730 ",.01)
 ;;51813003730
 ;;9002226.02101,"791,51813003730 ",.02)
 ;;51813003730
 ;;9002226.02101,"791,51813003799 ",.01)
 ;;51813003799
 ;;9002226.02101,"791,51813003799 ",.02)
 ;;51813003799
 ;;9002226.02101,"791,51813003830 ",.01)
 ;;51813003830
 ;;9002226.02101,"791,51813003830 ",.02)
 ;;51813003830
 ;;9002226.02101,"791,51813003899 ",.01)
 ;;51813003899
 ;;9002226.02101,"791,51813003899 ",.02)
 ;;51813003899
 ;;9002226.02101,"791,51813027830 ",.01)
 ;;51813027830
 ;;9002226.02101,"791,51813027830 ",.02)
 ;;51813027830
 ;;9002226.02101,"791,51813027899 ",.01)
 ;;51813027899
 ;;9002226.02101,"791,51813027899 ",.02)
 ;;51813027899
 ;;9002226.02101,"791,52549402701 ",.01)
 ;;52549402701
 ;;9002226.02101,"791,52549402701 ",.02)
 ;;52549402701
 ;;9002226.02101,"791,52549402703 ",.01)
 ;;52549402703
 ;;9002226.02101,"791,52549402703 ",.02)
 ;;52549402703
 ;;9002226.02101,"791,52549402707 ",.01)
 ;;52549402707
 ;;9002226.02101,"791,52549402707 ",.02)
 ;;52549402707
 ;;9002226.02101,"791,52549402801 ",.01)
 ;;52549402801
 ;;9002226.02101,"791,52549402801 ",.02)
 ;;52549402801
 ;;9002226.02101,"791,52549402803 ",.01)
 ;;52549402803
 ;;9002226.02101,"791,52549402803 ",.02)
 ;;52549402803
 ;;9002226.02101,"791,52549402807 ",.01)
 ;;52549402807
 ;;9002226.02101,"791,52549402807 ",.02)
 ;;52549402807
 ;;9002226.02101,"791,52549402901 ",.01)
 ;;52549402901
 ;;9002226.02101,"791,52549402901 ",.02)
 ;;52549402901
 ;;9002226.02101,"791,52549402903 ",.01)
 ;;52549402903
 ;;9002226.02101,"791,52549402903 ",.02)
 ;;52549402903
 ;;9002226.02101,"791,52549402907 ",.01)
 ;;52549402907
 ;;9002226.02101,"791,52549402907 ",.02)
 ;;52549402907
 ;;9002226.02101,"791,52549403001 ",.01)
 ;;52549403001
 ;;9002226.02101,"791,52549403001 ",.02)
 ;;52549403001
 ;;9002226.02101,"791,52549403003 ",.01)
 ;;52549403003
 ;;9002226.02101,"791,52549403003 ",.02)
 ;;52549403003
 ;;9002226.02101,"791,52549403007 ",.01)
 ;;52549403007
 ;;9002226.02101,"791,52549403007 ",.02)
 ;;52549403007
 ;;9002226.02101,"791,52549403101 ",.01)
 ;;52549403101
 ;;9002226.02101,"791,52549403101 ",.02)
 ;;52549403101
 ;;9002226.02101,"791,52549403103 ",.01)
 ;;52549403103
 ;;9002226.02101,"791,52549403103 ",.02)
 ;;52549403103
 ;;9002226.02101,"791,52549403107 ",.01)
 ;;52549403107
 ;;9002226.02101,"791,52549403107 ",.02)
 ;;52549403107
 ;;9002226.02101,"791,52549403201 ",.01)
 ;;52549403201
 ;;9002226.02101,"791,52549403201 ",.02)
 ;;52549403201
 ;;9002226.02101,"791,52549403203 ",.01)
 ;;52549403203
 ;;9002226.02101,"791,52549403203 ",.02)
 ;;52549403203
 ;;9002226.02101,"791,52549403207 ",.01)
 ;;52549403207
 ;;9002226.02101,"791,52549403207 ",.02)
 ;;52549403207
 ;;9002226.02101,"791,52549403301 ",.01)
 ;;52549403301
 ;;9002226.02101,"791,52549403301 ",.02)
 ;;52549403301
 ;;9002226.02101,"791,52549403303 ",.01)
 ;;52549403303
 ;;9002226.02101,"791,52549403303 ",.02)
 ;;52549403303
 ;;9002226.02101,"791,52549403501 ",.01)
 ;;52549403501
 ;;9002226.02101,"791,52549403501 ",.02)
 ;;52549403501
 ;;9002226.02101,"791,52549403503 ",.01)
 ;;52549403503
 ;;9002226.02101,"791,52549403503 ",.02)
 ;;52549403503
 ;;9002226.02101,"791,52584004401 ",.01)
 ;;52584004401
 ;;9002226.02101,"791,52584004401 ",.02)
 ;;52584004401
 ;;9002226.02101,"791,52584004410 ",.01)
 ;;52584004410
 ;;9002226.02101,"791,52584004410 ",.02)
 ;;52584004410
 ;;9002226.02101,"791,52584004501 ",.01)
 ;;52584004501
 ;;9002226.02101,"791,52584004501 ",.02)
 ;;52584004501
 ;;9002226.02101,"791,52584004510 ",.01)
 ;;52584004510
 ;;9002226.02101,"791,52584004510 ",.02)
 ;;52584004510
 ;;9002226.02101,"791,52584005001 ",.01)
 ;;52584005001
 ;;9002226.02101,"791,52584005001 ",.02)
 ;;52584005001
 ;;9002226.02101,"791,52584005010 ",.01)
 ;;52584005010
 ;;9002226.02101,"791,52584005010 ",.02)
 ;;52584005010
 ;;9002226.02101,"791,52953003801 ",.01)
 ;;52953003801
 ;;9002226.02101,"791,52953003801 ",.02)
 ;;52953003801
 ;;9002226.02101,"791,52953003901 ",.01)
 ;;52953003901
 ;;9002226.02101,"791,52953003901 ",.02)
 ;;52953003901
 ;;9002226.02101,"791,52959092430 ",.01)
 ;;52959092430
 ;;9002226.02101,"791,52959092430 ",.02)
 ;;52959092430
 ;;9002226.02101,"791,52959092530 ",.01)
 ;;52959092530
 ;;9002226.02101,"791,52959092530 ",.02)
 ;;52959092530
 ;;9002226.02101,"791,52959092630 ",.01)
 ;;52959092630
 ;;9002226.02101,"791,52959092630 ",.02)
 ;;52959092630
 ;;9002226.02101,"791,52985007101 ",.01)
 ;;52985007101
 ;;9002226.02101,"791,52985007101 ",.02)
 ;;52985007101
 ;;9002226.02101,"791,53467017200 ",.01)
 ;;53467017200
 ;;9002226.02101,"791,53467017200 ",.02)
 ;;53467017200
 ;;9002226.02101,"791,53467064000 ",.01)
 ;;53467064000
 ;;9002226.02101,"791,53467064000 ",.02)
 ;;53467064000
 ;;9002226.02101,"791,53467064003 ",.01)
 ;;53467064003
 ;;9002226.02101,"791,53467064003 ",.02)
 ;;53467064003
 ;;9002226.02101,"791,53808033401 ",.01)
 ;;53808033401
 ;;9002226.02101,"791,53808033401 ",.02)
 ;;53808033401
 ;;9002226.02101,"791,53808033501 ",.01)
 ;;53808033501
 ;;9002226.02101,"791,53808033501 ",.02)
 ;;53808033501
 ;;9002226.02101,"791,53808097001 ",.01)
 ;;53808097001
 ;;9002226.02101,"791,53808097001 ",.02)
 ;;53808097001
 ;;9002226.02101,"791,53808098501 ",.01)
 ;;53808098501
 ;;9002226.02101,"791,53808098501 ",.02)
 ;;53808098501
 ;;9002226.02101,"791,53808098901 ",.01)
 ;;53808098901
 ;;9002226.02101,"791,53808098901 ",.02)
 ;;53808098901
 ;;9002226.02101,"791,53808099401 ",.01)
 ;;53808099401
 ;;9002226.02101,"791,53808099401 ",.02)
 ;;53808099401
 ;;9002226.02101,"791,53978031403 ",.01)
 ;;53978031403
 ;;9002226.02101,"791,53978031403 ",.02)
 ;;53978031403
 ;;9002226.02101,"791,53978330103 ",.01)
 ;;53978330103
 ;;9002226.02101,"791,53978330103 ",.02)
 ;;53978330103
 ;;9002226.02101,"791,53978330203 ",.01)
 ;;53978330203
 ;;9002226.02101,"791,53978330203 ",.02)
 ;;53978330203
 ;;9002226.02101,"791,54441032401 ",.01)
 ;;54441032401
 ;;9002226.02101,"791,54441032401 ",.02)
 ;;54441032401
 ;;9002226.02101,"791,54441032405 ",.01)
 ;;54441032405
 ;;9002226.02101,"791,54441032405 ",.02)
 ;;54441032405
 ;;9002226.02101,"791,54441032410 ",.01)
 ;;54441032410
 ;;9002226.02101,"791,54441032410 ",.02)
 ;;54441032410
 ;;9002226.02101,"791,54441032425 ",.01)
 ;;54441032425
 ;;9002226.02101,"791,54441032425 ",.02)
 ;;54441032425
 ;;9002226.02101,"791,54441032450 ",.01)
 ;;54441032450
 ;;9002226.02101,"791,54441032450 ",.02)
 ;;54441032450
 ;;9002226.02101,"791,54569015850 ",.01)
 ;;54569015850
 ;;9002226.02101,"791,54569015850 ",.02)
 ;;54569015850
 ;;9002226.02101,"791,54569015950 ",.01)
 ;;54569015950
 ;;9002226.02101,"791,54569015950 ",.02)
 ;;54569015950
 ;;9002226.02101,"791,54569493400 ",.01)
 ;;54569493400
 ;;9002226.02101,"791,54569493400 ",.02)
 ;;54569493400
 ;;9002226.02101,"791,54569493401 ",.01)
 ;;54569493401
 ;;9002226.02101,"791,54569493401 ",.02)
 ;;54569493401
 ;;9002226.02101,"791,54569586800 ",.01)
 ;;54569586800
 ;;9002226.02101,"791,54569586800 ",.02)
 ;;54569586800
 ;;9002226.02101,"791,54569586900 ",.01)
 ;;54569586900
 ;;9002226.02101,"791,54569586900 ",.02)
 ;;54569586900
 ;;9002226.02101,"791,54868428600 ",.01)
 ;;54868428600
 ;;9002226.02101,"791,54868428600 ",.02)
 ;;54868428600
 ;;9002226.02101,"791,54868428601 ",.01)
 ;;54868428601
 ;;9002226.02101,"791,54868428601 ",.02)
 ;;54868428601
 ;;9002226.02101,"791,54868428602 ",.01)
 ;;54868428602
 ;;9002226.02101,"791,54868428602 ",.02)
 ;;54868428602
 ;;9002226.02101,"791,54868428603 ",.01)
 ;;54868428603
 ;;9002226.02101,"791,54868428603 ",.02)
 ;;54868428603
 ;;9002226.02101,"791,54868428604 ",.01)
 ;;54868428604
 ;;9002226.02101,"791,54868428604 ",.02)
 ;;54868428604
 ;;9002226.02101,"791,54868434900 ",.01)
 ;;54868434900
 ;;9002226.02101,"791,54868434900 ",.02)
 ;;54868434900
 ;;9002226.02101,"791,54868434901 ",.01)
 ;;54868434901
 ;;9002226.02101,"791,54868434901 ",.02)
 ;;54868434901
 ;;9002226.02101,"791,54868434902 ",.01)
 ;;54868434902
 ;;9002226.02101,"791,54868434902 ",.02)
 ;;54868434902
 ;;9002226.02101,"791,54868434903 ",.01)
 ;;54868434903
 ;;9002226.02101,"791,54868434903 ",.02)
 ;;54868434903
 ;;9002226.02101,"791,54868434904 ",.01)
 ;;54868434904
 ;;9002226.02101,"791,54868434904 ",.02)
 ;;54868434904
 ;;9002226.02101,"791,54868434905 ",.01)
 ;;54868434905
 ;;9002226.02101,"791,54868434905 ",.02)
 ;;54868434905
 ;;9002226.02101,"791,54868440000 ",.01)
 ;;54868440000
 ;;9002226.02101,"791,54868440000 ",.02)
 ;;54868440000
 ;;9002226.02101,"791,54868440001 ",.01)
 ;;54868440001
 ;;9002226.02101,"791,54868440001 ",.02)
 ;;54868440001
 ;;9002226.02101,"791,54868440002 ",.01)
 ;;54868440002
 ;;9002226.02101,"791,54868440002 ",.02)
 ;;54868440002
 ;;9002226.02101,"791,54868440003 ",.01)
 ;;54868440003
 ;;9002226.02101,"791,54868440003 ",.02)
 ;;54868440003
 ;;9002226.02101,"791,54868440004 ",.01)
 ;;54868440004
 ;;9002226.02101,"791,54868440004 ",.02)
 ;;54868440004
 ;;9002226.02101,"791,54868440200 ",.01)
 ;;54868440200
 ;;9002226.02101,"791,54868440200 ",.02)
 ;;54868440200
 ;;9002226.02101,"791,54868440201 ",.01)
 ;;54868440201
 ;;9002226.02101,"791,54868440201 ",.02)
 ;;54868440201
 ;;9002226.02101,"791,54868440202 ",.01)
 ;;54868440202
 ;;9002226.02101,"791,54868440202 ",.02)
 ;;54868440202
 ;;9002226.02101,"791,54868442200 ",.01)
 ;;54868442200
 ;;9002226.02101,"791,54868442200 ",.02)
 ;;54868442200
 ;;9002226.02101,"791,54868442201 ",.01)
 ;;54868442201