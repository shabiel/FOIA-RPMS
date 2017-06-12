BGP45S ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON SEP 26, 2013;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;;BGP RA OA NSAID VAPI
 ;
 ; This routine loads Taxonomy BGP RA OA NSAID VAPI
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
 ;;21,"C0448 ")
 ;;5
 ;;21,"C0827 ")
 ;;2
 ;;21,"C0829 ")
 ;;3
 ;;21,"C1076 ")
 ;;4
 ;;21,"C1266 ")
 ;;1
 ;;21,"D0061 ")
 ;;13
 ;;21,"D0062 ")
 ;;14
 ;;21,"D0063 ")
 ;;15
 ;;21,"D0076 ")
 ;;19
 ;;21,"D0262 ")
 ;;8
 ;;21,"D0351 ")
 ;;16
 ;;21,"D0437 ")
 ;;17
 ;;21,"D0438 ")
 ;;18
 ;;21,"D0585 ")
 ;;12
 ;;21,"D0770 ")
 ;;6
 ;;21,"D0788 ")
 ;;10
 ;;21,"D0835 ")
 ;;7
 ;;21,"D0853 ")
 ;;9
 ;;21,"D0855 ")
 ;;11
 ;;21,"E0059 ")
 ;;20
 ;;21,"E0075 ")
 ;;21
 ;;21,"E0209 ")
 ;;22
 ;;21,"E0219 ")
 ;;24
 ;;21,"E0233 ")
 ;;26
 ;;21,"E0234 ")
 ;;23
 ;;21,"E0250 ")
 ;;25
 ;;21,"E0543 ")
 ;;61
 ;;21,"E0544 ")
 ;;62
 ;;21,"F0006 ")
 ;;27
 ;;21,"F0067 ")
 ;;29
 ;;21,"F0068 ")
 ;;28
 ;;21,"F0499 ")
 ;;35
 ;;21,"I0001 ")
 ;;30
 ;;21,"I0002 ")
 ;;31
 ;;21,"I0004 ")
 ;;32
 ;;21,"I0005 ")
 ;;33
 ;;21,"I0006 ")
 ;;34
 ;;21,"I0019 ")
 ;;36
 ;;21,"I0021 ")
 ;;37
 ;;21,"I0022 ")
 ;;38
 ;;21,"I0023 ")
 ;;39
 ;;21,"K0007 ")
 ;;40
 ;;21,"K0008 ")
 ;;41
 ;;21,"K0018 ")
 ;;42
 ;;21,"M0019 ")
 ;;43
 ;;21,"M0169 ")
 ;;47
 ;;21,"M0515 ")
 ;;44
 ;;21,"M0544 ")
 ;;46
 ;;21,"M0917 ")
 ;;45
 ;;21,"N001 ")
 ;;48
 ;;21,"N0010 ")
 ;;50
 ;;21,"N0011 ")
 ;;51
 ;;21,"N0012 ")
 ;;53
 ;;21,"N0013 ")
 ;;56
 ;;21,"N0014 ")
 ;;52
 ;;21,"N0015 ")
 ;;59
 ;;21,"N002 ")
 ;;49
 ;;21,"N0249 ")
 ;;54
 ;;21,"N0250 ")
 ;;57
 ;;21,"N0268 ")
 ;;55
 ;;21,"N0269 ")
 ;;58
 ;;21,"N0604 ")
 ;;60
 ;;21,"O0045 ")
 ;;63
 ;;21,"P0073 ")
 ;;64
 ;;21,"P0074 ")
 ;;65
 ;;21,"S0059 ")
 ;;66
 ;;21,"S0060 ")
 ;;67
 ;;21,"T0073 ")
 ;;68
 ;;21,"T0189 ")
 ;;69
 ;;9002226,1834,.01)
 ;;BGP RA OA NSAID VAPI
 ;;9002226,1834,.02)
 ;;INHALED STEROID VA DRUG CLASS
 ;;9002226,1834,.04)
 ;;@
 ;;9002226,1834,.06)
 ;;@
 ;;9002226,1834,.08)
 ;;@
 ;;9002226,1834,.09)
 ;;3130926
 ;;9002226,1834,.11)
 ;;@
 ;;9002226,1834,.12)
 ;;@
 ;;9002226,1834,.13)
 ;;1
 ;;9002226,1834,.14)
 ;;@
 ;;9002226,1834,.15)
 ;;50.68
 ;;9002226,1834,.16)
 ;;@
 ;;9002226,1834,.17)
 ;;@
 ;;9002226,1834,3101)
 ;;@
 ;;9002226.02101,"1834,C0448 ",.01)
 ;;C0448
 ;;9002226.02101,"1834,C0448 ",.02)
 ;;C0448
 ;;9002226.02101,"1834,C0827 ",.01)
 ;;C0827
 ;;9002226.02101,"1834,C0827 ",.02)
 ;;C0827
 ;;9002226.02101,"1834,C0829 ",.01)
 ;;C0829
 ;;9002226.02101,"1834,C0829 ",.02)
 ;;C0829
 ;;9002226.02101,"1834,C1076 ",.01)
 ;;C1076
 ;;9002226.02101,"1834,C1076 ",.02)
 ;;C1076
 ;;9002226.02101,"1834,C1266 ",.01)
 ;;C1266
 ;;9002226.02101,"1834,C1266 ",.02)
 ;;C1266
 ;;9002226.02101,"1834,D0061 ",.01)
 ;;D0061
 ;;9002226.02101,"1834,D0061 ",.02)
 ;;D0061
 ;;9002226.02101,"1834,D0062 ",.01)
 ;;D0062
 ;;9002226.02101,"1834,D0062 ",.02)
 ;;D0062
 ;;9002226.02101,"1834,D0063 ",.01)
 ;;D0063
 ;;9002226.02101,"1834,D0063 ",.02)
 ;;D0063
 ;;9002226.02101,"1834,D0076 ",.01)
 ;;D0076
 ;;9002226.02101,"1834,D0076 ",.02)
 ;;D0076
 ;;9002226.02101,"1834,D0262 ",.01)
 ;;D0262
 ;;9002226.02101,"1834,D0262 ",.02)
 ;;D0262
 ;;9002226.02101,"1834,D0351 ",.01)
 ;;D0351
 ;;9002226.02101,"1834,D0351 ",.02)
 ;;D0351
 ;;9002226.02101,"1834,D0437 ",.01)
 ;;D0437
 ;;9002226.02101,"1834,D0437 ",.02)
 ;;D0437
 ;;9002226.02101,"1834,D0438 ",.01)
 ;;D0438
 ;;9002226.02101,"1834,D0438 ",.02)
 ;;D0438
 ;;9002226.02101,"1834,D0585 ",.01)
 ;;D0585
 ;;9002226.02101,"1834,D0585 ",.02)
 ;;D0585
 ;;9002226.02101,"1834,D0770 ",.01)
 ;;D0770
 ;;9002226.02101,"1834,D0770 ",.02)
 ;;D0770
 ;;9002226.02101,"1834,D0788 ",.01)
 ;;D0788
 ;;9002226.02101,"1834,D0788 ",.02)
 ;;D0788
 ;;9002226.02101,"1834,D0835 ",.01)
 ;;D0835
 ;;9002226.02101,"1834,D0835 ",.02)
 ;;D0835
 ;;9002226.02101,"1834,D0853 ",.01)
 ;;D0853
 ;;9002226.02101,"1834,D0853 ",.02)
 ;;D0853
 ;;9002226.02101,"1834,D0855 ",.01)
 ;;D0855
 ;;9002226.02101,"1834,D0855 ",.02)
 ;;D0855
 ;;9002226.02101,"1834,E0059 ",.01)
 ;;E0059
 ;;9002226.02101,"1834,E0059 ",.02)
 ;;E0059
 ;;9002226.02101,"1834,E0075 ",.01)
 ;;E0075
 ;;9002226.02101,"1834,E0075 ",.02)
 ;;E0075
 ;;9002226.02101,"1834,E0209 ",.01)
 ;;E0209
 ;;9002226.02101,"1834,E0209 ",.02)
 ;;E0209
 ;;9002226.02101,"1834,E0219 ",.01)
 ;;E0219
 ;;9002226.02101,"1834,E0219 ",.02)
 ;;E0219
 ;;9002226.02101,"1834,E0233 ",.01)
 ;;E0233
 ;;9002226.02101,"1834,E0233 ",.02)
 ;;E0233
 ;;9002226.02101,"1834,E0234 ",.01)
 ;;E0234
 ;;9002226.02101,"1834,E0234 ",.02)
 ;;E0234
 ;;9002226.02101,"1834,E0250 ",.01)
 ;;E0250
 ;;9002226.02101,"1834,E0250 ",.02)
 ;;E0250
 ;;9002226.02101,"1834,E0543 ",.01)
 ;;E0543
 ;;9002226.02101,"1834,E0543 ",.02)
 ;;E0543
 ;;9002226.02101,"1834,E0544 ",.01)
 ;;E0544
 ;;9002226.02101,"1834,E0544 ",.02)
 ;;E0544
 ;;9002226.02101,"1834,F0006 ",.01)
 ;;F0006
 ;;9002226.02101,"1834,F0006 ",.02)
 ;;F0006
 ;;9002226.02101,"1834,F0067 ",.01)
 ;;F0067
 ;;9002226.02101,"1834,F0067 ",.02)
 ;;F0067
 ;;9002226.02101,"1834,F0068 ",.01)
 ;;F0068
 ;;9002226.02101,"1834,F0068 ",.02)
 ;;F0068
 ;;9002226.02101,"1834,F0499 ",.01)
 ;;F0499
 ;;9002226.02101,"1834,F0499 ",.02)
 ;;F0499
 ;;9002226.02101,"1834,I0001 ",.01)
 ;;I0001
 ;;9002226.02101,"1834,I0001 ",.02)
 ;;I0001
 ;;9002226.02101,"1834,I0002 ",.01)
 ;;I0002
 ;;9002226.02101,"1834,I0002 ",.02)
 ;;I0002
 ;;9002226.02101,"1834,I0004 ",.01)
 ;;I0004
 ;;9002226.02101,"1834,I0004 ",.02)
 ;;I0004
 ;;9002226.02101,"1834,I0005 ",.01)
 ;;I0005
 ;;9002226.02101,"1834,I0005 ",.02)
 ;;I0005
 ;;9002226.02101,"1834,I0006 ",.01)
 ;;I0006
 ;;9002226.02101,"1834,I0006 ",.02)
 ;;I0006
 ;;9002226.02101,"1834,I0019 ",.01)
 ;;I0019
 ;;9002226.02101,"1834,I0019 ",.02)
 ;;I0019
 ;;9002226.02101,"1834,I0021 ",.01)
 ;;I0021
 ;;9002226.02101,"1834,I0021 ",.02)
 ;;I0021
 ;;9002226.02101,"1834,I0022 ",.01)
 ;;I0022
 ;;9002226.02101,"1834,I0022 ",.02)
 ;;I0022
 ;;9002226.02101,"1834,I0023 ",.01)
 ;;I0023
 ;;9002226.02101,"1834,I0023 ",.02)
 ;;I0023
 ;;9002226.02101,"1834,K0007 ",.01)
 ;;K0007
 ;;9002226.02101,"1834,K0007 ",.02)
 ;;K0007
 ;;9002226.02101,"1834,K0008 ",.01)
 ;;K0008
 ;;9002226.02101,"1834,K0008 ",.02)
 ;;K0008
 ;;9002226.02101,"1834,K0018 ",.01)
 ;;K0018
 ;;9002226.02101,"1834,K0018 ",.02)
 ;;K0018
 ;;9002226.02101,"1834,M0019 ",.01)
 ;;M0019
 ;;9002226.02101,"1834,M0019 ",.02)
 ;;M0019
 ;;9002226.02101,"1834,M0169 ",.01)
 ;;M0169
 ;;9002226.02101,"1834,M0169 ",.02)
 ;;M0169
 ;;9002226.02101,"1834,M0515 ",.01)
 ;;M0515
 ;;9002226.02101,"1834,M0515 ",.02)
 ;;M0515
 ;;9002226.02101,"1834,M0544 ",.01)
 ;;M0544
 ;;9002226.02101,"1834,M0544 ",.02)
 ;;M0544
 ;;9002226.02101,"1834,M0917 ",.01)
 ;;M0917
 ;;9002226.02101,"1834,M0917 ",.02)
 ;;M0917
 ;;9002226.02101,"1834,N001 ",.01)
 ;;N001
 ;;9002226.02101,"1834,N001 ",.02)
 ;;N001
 ;;9002226.02101,"1834,N0010 ",.01)
 ;;N0010
 ;;9002226.02101,"1834,N0010 ",.02)
 ;;N0010
 ;;9002226.02101,"1834,N0011 ",.01)
 ;;N0011
 ;;9002226.02101,"1834,N0011 ",.02)
 ;;N0011
 ;;9002226.02101,"1834,N0012 ",.01)
 ;;N0012
 ;;9002226.02101,"1834,N0012 ",.02)
 ;;N0012
 ;;9002226.02101,"1834,N0013 ",.01)
 ;;N0013
 ;;9002226.02101,"1834,N0013 ",.02)
 ;;N0013
 ;;9002226.02101,"1834,N0014 ",.01)
 ;;N0014
 ;;9002226.02101,"1834,N0014 ",.02)
 ;;N0014
 ;;9002226.02101,"1834,N0015 ",.01)
 ;;N0015
 ;;9002226.02101,"1834,N0015 ",.02)
 ;;N0015
 ;;9002226.02101,"1834,N002 ",.01)
 ;;N002
 ;;9002226.02101,"1834,N002 ",.02)
 ;;N002
 ;;9002226.02101,"1834,N0249 ",.01)
 ;;N0249
 ;;9002226.02101,"1834,N0249 ",.02)
 ;;N0249
 ;;9002226.02101,"1834,N0250 ",.01)
 ;;N0250
 ;;9002226.02101,"1834,N0250 ",.02)
 ;;N0250
 ;;9002226.02101,"1834,N0268 ",.01)
 ;;N0268
 ;;9002226.02101,"1834,N0268 ",.02)
 ;;N0268
 ;;9002226.02101,"1834,N0269 ",.01)
 ;;N0269
 ;;9002226.02101,"1834,N0269 ",.02)
 ;;N0269
 ;;9002226.02101,"1834,N0604 ",.01)
 ;;N0604
 ;;9002226.02101,"1834,N0604 ",.02)
 ;;N0604
 ;;9002226.02101,"1834,O0045 ",.01)
 ;;O0045
 ;;9002226.02101,"1834,O0045 ",.02)
 ;;O0045
 ;;9002226.02101,"1834,P0073 ",.01)
 ;;P0073
 ;;9002226.02101,"1834,P0073 ",.02)
 ;;P0073
 ;;9002226.02101,"1834,P0074 ",.01)
 ;;P0074
 ;;9002226.02101,"1834,P0074 ",.02)
 ;;P0074
 ;;9002226.02101,"1834,S0059 ",.01)
 ;;S0059
 ;;9002226.02101,"1834,S0059 ",.02)
 ;;S0059
 ;;9002226.02101,"1834,S0060 ",.01)
 ;;S0060
 ;;9002226.02101,"1834,S0060 ",.02)
 ;;S0060
 ;;9002226.02101,"1834,T0073 ",.01)
 ;;T0073
 ;;9002226.02101,"1834,T0073 ",.02)
 ;;T0073
 ;;9002226.02101,"1834,T0189 ",.01)
 ;;T0189
 ;;9002226.02101,"1834,T0189 ",.02)
 ;;T0189
 ;
OTHER ; OTHER ROUTINES
 Q