ATXXB181 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1804,B31KYZZ ",.01)
 ;;B31KYZZ 
 ;;9002226.02101,"1804,B31KYZZ ",.02)
 ;;B31KYZZ 
 ;;9002226.02101,"1804,B31KYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B31KZZZ ",.01)
 ;;B31KZZZ 
 ;;9002226.02101,"1804,B31KZZZ ",.02)
 ;;B31KZZZ 
 ;;9002226.02101,"1804,B31KZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B31L0ZZ ",.01)
 ;;B31L0ZZ 
 ;;9002226.02101,"1804,B31L0ZZ ",.02)
 ;;B31L0ZZ 
 ;;9002226.02101,"1804,B31L0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B31L1ZZ ",.01)
 ;;B31L1ZZ 
 ;;9002226.02101,"1804,B31L1ZZ ",.02)
 ;;B31L1ZZ 
 ;;9002226.02101,"1804,B31L1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B31LYZZ ",.01)
 ;;B31LYZZ 
 ;;9002226.02101,"1804,B31LYZZ ",.02)
 ;;B31LYZZ 
 ;;9002226.02101,"1804,B31LYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B31LZZZ ",.01)
 ;;B31LZZZ 
 ;;9002226.02101,"1804,B31LZZZ ",.02)
 ;;B31LZZZ 
 ;;9002226.02101,"1804,B31LZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B31M0ZZ ",.01)
 ;;B31M0ZZ 
 ;;9002226.02101,"1804,B31M0ZZ ",.02)
 ;;B31M0ZZ 
 ;;9002226.02101,"1804,B31M0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B31M1ZZ ",.01)
 ;;B31M1ZZ 
 ;;9002226.02101,"1804,B31M1ZZ ",.02)
 ;;B31M1ZZ 
 ;;9002226.02101,"1804,B31M1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B31MYZZ ",.01)
 ;;B31MYZZ 
 ;;9002226.02101,"1804,B31MYZZ ",.02)
 ;;B31MYZZ 
 ;;9002226.02101,"1804,B31MYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B31MZZZ ",.01)
 ;;B31MZZZ 
 ;;9002226.02101,"1804,B31MZZZ ",.02)
 ;;B31MZZZ 
 ;;9002226.02101,"1804,B31MZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B31N0ZZ ",.01)
 ;;B31N0ZZ 
 ;;9002226.02101,"1804,B31N0ZZ ",.02)
 ;;B31N0ZZ 
 ;;9002226.02101,"1804,B31N0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B31N1ZZ ",.01)
 ;;B31N1ZZ 
 ;;9002226.02101,"1804,B31N1ZZ ",.02)
 ;;B31N1ZZ 
 ;;9002226.02101,"1804,B31N1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B31NYZZ ",.01)
 ;;B31NYZZ 
 ;;9002226.02101,"1804,B31NYZZ ",.02)
 ;;B31NYZZ 
 ;;9002226.02101,"1804,B31NYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B31NZZZ ",.01)
 ;;B31NZZZ 
 ;;9002226.02101,"1804,B31NZZZ ",.02)
 ;;B31NZZZ 
 ;;9002226.02101,"1804,B31NZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B31P0ZZ ",.01)
 ;;B31P0ZZ 
 ;;9002226.02101,"1804,B31P0ZZ ",.02)
 ;;B31P0ZZ 
 ;;9002226.02101,"1804,B31P0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B31P1ZZ ",.01)
 ;;B31P1ZZ 
 ;;9002226.02101,"1804,B31P1ZZ ",.02)
 ;;B31P1ZZ 
 ;;9002226.02101,"1804,B31P1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B31PYZZ ",.01)
 ;;B31PYZZ 
 ;;9002226.02101,"1804,B31PYZZ ",.02)
 ;;B31PYZZ 
 ;;9002226.02101,"1804,B31PYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B31PZZZ ",.01)
 ;;B31PZZZ 
 ;;9002226.02101,"1804,B31PZZZ ",.02)
 ;;B31PZZZ 
 ;;9002226.02101,"1804,B31PZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B31Q0ZZ ",.01)
 ;;B31Q0ZZ 
 ;;9002226.02101,"1804,B31Q0ZZ ",.02)
 ;;B31Q0ZZ 
 ;;9002226.02101,"1804,B31Q0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B31Q1ZZ ",.01)
 ;;B31Q1ZZ 
 ;;9002226.02101,"1804,B31Q1ZZ ",.02)
 ;;B31Q1ZZ 
 ;;9002226.02101,"1804,B31Q1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B31QYZZ ",.01)
 ;;B31QYZZ 
 ;;9002226.02101,"1804,B31QYZZ ",.02)
 ;;B31QYZZ 
 ;;9002226.02101,"1804,B31QYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B31QZZZ ",.01)
 ;;B31QZZZ 
 ;;9002226.02101,"1804,B31QZZZ ",.02)
 ;;B31QZZZ 
 ;;9002226.02101,"1804,B31QZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B31R0ZZ ",.01)
 ;;B31R0ZZ 
 ;;9002226.02101,"1804,B31R0ZZ ",.02)
 ;;B31R0ZZ 
 ;;9002226.02101,"1804,B31R0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B31R1ZZ ",.01)
 ;;B31R1ZZ 
 ;;9002226.02101,"1804,B31R1ZZ ",.02)
 ;;B31R1ZZ 
 ;;9002226.02101,"1804,B31R1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B31RYZZ ",.01)
 ;;B31RYZZ 
 ;;9002226.02101,"1804,B31RYZZ ",.02)
 ;;B31RYZZ 
 ;;9002226.02101,"1804,B31RYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B31RZZZ ",.01)
 ;;B31RZZZ 
 ;;9002226.02101,"1804,B31RZZZ ",.02)
 ;;B31RZZZ 
 ;;9002226.02101,"1804,B31RZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B31S0ZZ ",.01)
 ;;B31S0ZZ 
 ;;9002226.02101,"1804,B31S0ZZ ",.02)
 ;;B31S0ZZ 
 ;;9002226.02101,"1804,B31S0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B31S1ZZ ",.01)
 ;;B31S1ZZ 
 ;;9002226.02101,"1804,B31S1ZZ ",.02)
 ;;B31S1ZZ 
 ;;9002226.02101,"1804,B31S1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B31SYZZ ",.01)
 ;;B31SYZZ 
 ;;9002226.02101,"1804,B31SYZZ ",.02)
 ;;B31SYZZ 
 ;;9002226.02101,"1804,B31SYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B31SZZZ ",.01)
 ;;B31SZZZ 
 ;;9002226.02101,"1804,B31SZZZ ",.02)
 ;;B31SZZZ 
 ;;9002226.02101,"1804,B31SZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B31T0ZZ ",.01)
 ;;B31T0ZZ 
 ;;9002226.02101,"1804,B31T0ZZ ",.02)
 ;;B31T0ZZ 
 ;;9002226.02101,"1804,B31T0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B31T1ZZ ",.01)
 ;;B31T1ZZ 
 ;;9002226.02101,"1804,B31T1ZZ ",.02)
 ;;B31T1ZZ 
 ;;9002226.02101,"1804,B31T1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B31TYZZ ",.01)
 ;;B31TYZZ 
 ;;9002226.02101,"1804,B31TYZZ ",.02)
 ;;B31TYZZ 
 ;;9002226.02101,"1804,B31TYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B31TZZZ ",.01)
 ;;B31TZZZ 
 ;;9002226.02101,"1804,B31TZZZ ",.02)
 ;;B31TZZZ 
 ;;9002226.02101,"1804,B31TZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B3200ZZ ",.01)
 ;;B3200ZZ 
 ;;9002226.02101,"1804,B3200ZZ ",.02)
 ;;B3200ZZ 
 ;;9002226.02101,"1804,B3200ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B3201ZZ ",.01)
 ;;B3201ZZ 
 ;;9002226.02101,"1804,B3201ZZ ",.02)
 ;;B3201ZZ 
 ;;9002226.02101,"1804,B3201ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B320YZZ ",.01)
 ;;B320YZZ 
 ;;9002226.02101,"1804,B320YZZ ",.02)
 ;;B320YZZ 
 ;;9002226.02101,"1804,B320YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B320ZZZ ",.01)
 ;;B320ZZZ 
 ;;9002226.02101,"1804,B320ZZZ ",.02)
 ;;B320ZZZ 
 ;;9002226.02101,"1804,B320ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B3250ZZ ",.01)
 ;;B3250ZZ 
 ;;9002226.02101,"1804,B3250ZZ ",.02)
 ;;B3250ZZ 
 ;;9002226.02101,"1804,B3250ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B3251ZZ ",.01)
 ;;B3251ZZ 
 ;;9002226.02101,"1804,B3251ZZ ",.02)
 ;;B3251ZZ 
 ;;9002226.02101,"1804,B3251ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B325YZZ ",.01)
 ;;B325YZZ 
 ;;9002226.02101,"1804,B325YZZ ",.02)
 ;;B325YZZ 
 ;;9002226.02101,"1804,B325YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B325ZZZ ",.01)
 ;;B325ZZZ 
 ;;9002226.02101,"1804,B325ZZZ ",.02)
 ;;B325ZZZ 
 ;;9002226.02101,"1804,B325ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B3280ZZ ",.01)
 ;;B3280ZZ 
 ;;9002226.02101,"1804,B3280ZZ ",.02)
 ;;B3280ZZ 
 ;;9002226.02101,"1804,B3280ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B3281ZZ ",.01)
 ;;B3281ZZ 
 ;;9002226.02101,"1804,B3281ZZ ",.02)
 ;;B3281ZZ 
 ;;9002226.02101,"1804,B3281ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B328YZZ ",.01)
 ;;B328YZZ 
 ;;9002226.02101,"1804,B328YZZ ",.02)
 ;;B328YZZ 
 ;;9002226.02101,"1804,B328YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B328ZZZ ",.01)
 ;;B328ZZZ 
 ;;9002226.02101,"1804,B328ZZZ ",.02)
 ;;B328ZZZ 
 ;;9002226.02101,"1804,B328ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B32G0ZZ ",.01)
 ;;B32G0ZZ 
 ;;9002226.02101,"1804,B32G0ZZ ",.02)
 ;;B32G0ZZ 
 ;;9002226.02101,"1804,B32G0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B32G1ZZ ",.01)
 ;;B32G1ZZ 
 ;;9002226.02101,"1804,B32G1ZZ ",.02)
 ;;B32G1ZZ 
 ;;9002226.02101,"1804,B32G1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B32GYZZ ",.01)
 ;;B32GYZZ 
 ;;9002226.02101,"1804,B32GYZZ ",.02)
 ;;B32GYZZ 
 ;;9002226.02101,"1804,B32GYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B32GZZZ ",.01)
 ;;B32GZZZ 
 ;;9002226.02101,"1804,B32GZZZ ",.02)
 ;;B32GZZZ 
 ;;9002226.02101,"1804,B32GZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B32R0ZZ ",.01)
 ;;B32R0ZZ 
 ;;9002226.02101,"1804,B32R0ZZ ",.02)
 ;;B32R0ZZ 
 ;;9002226.02101,"1804,B32R0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B32R1ZZ ",.01)
 ;;B32R1ZZ 
 ;;9002226.02101,"1804,B32R1ZZ ",.02)
 ;;B32R1ZZ 
 ;;9002226.02101,"1804,B32R1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B32RYZZ ",.01)
 ;;B32RYZZ 
 ;;9002226.02101,"1804,B32RYZZ ",.02)
 ;;B32RYZZ 
 ;;9002226.02101,"1804,B32RYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B32RZZZ ",.01)
 ;;B32RZZZ 
 ;;9002226.02101,"1804,B32RZZZ ",.02)
 ;;B32RZZZ 
 ;;9002226.02101,"1804,B32RZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B32S0ZZ ",.01)
 ;;B32S0ZZ 
 ;;9002226.02101,"1804,B32S0ZZ ",.02)
 ;;B32S0ZZ 
 ;;9002226.02101,"1804,B32S0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B32S1ZZ ",.01)
 ;;B32S1ZZ 
 ;;9002226.02101,"1804,B32S1ZZ ",.02)
 ;;B32S1ZZ 
 ;;9002226.02101,"1804,B32S1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B32SYZZ ",.01)
 ;;B32SYZZ 
 ;;9002226.02101,"1804,B32SYZZ ",.02)
 ;;B32SYZZ 
 ;;9002226.02101,"1804,B32SYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B32SZZZ ",.01)
 ;;B32SZZZ 
 ;;9002226.02101,"1804,B32SZZZ ",.02)
 ;;B32SZZZ 
 ;;9002226.02101,"1804,B32SZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B32T0ZZ ",.01)
 ;;B32T0ZZ 
 ;;9002226.02101,"1804,B32T0ZZ ",.02)
 ;;B32T0ZZ 
 ;;9002226.02101,"1804,B32T0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B32T1ZZ ",.01)
 ;;B32T1ZZ 
 ;;9002226.02101,"1804,B32T1ZZ ",.02)
 ;;B32T1ZZ 
 ;;9002226.02101,"1804,B32T1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B32TYZZ ",.01)
 ;;B32TYZZ 
 ;;9002226.02101,"1804,B32TYZZ ",.02)
 ;;B32TYZZ 
 ;;9002226.02101,"1804,B32TYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B32TZZZ ",.01)
 ;;B32TZZZ 
 ;;9002226.02101,"1804,B32TZZZ ",.02)
 ;;B32TZZZ 
 ;;9002226.02101,"1804,B32TZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B330Y0Z ",.01)
 ;;B330Y0Z 
 ;;9002226.02101,"1804,B330Y0Z ",.02)
 ;;B330Y0Z 
 ;;9002226.02101,"1804,B330Y0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,B330YZZ ",.01)
 ;;B330YZZ 
 ;;9002226.02101,"1804,B330YZZ ",.02)
 ;;B330YZZ 
 ;;9002226.02101,"1804,B330YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B330ZZZ ",.01)
 ;;B330ZZZ 
 ;;9002226.02101,"1804,B330ZZZ ",.02)
 ;;B330ZZZ 
 ;;9002226.02101,"1804,B330ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B335Y0Z ",.01)
 ;;B335Y0Z 
 ;;9002226.02101,"1804,B335Y0Z ",.02)
 ;;B335Y0Z 
 ;;9002226.02101,"1804,B335Y0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,B335YZZ ",.01)
 ;;B335YZZ 
 ;;9002226.02101,"1804,B335YZZ ",.02)
 ;;B335YZZ 
 ;;9002226.02101,"1804,B335YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B335ZZZ ",.01)
 ;;B335ZZZ 
 ;;9002226.02101,"1804,B335ZZZ ",.02)
 ;;B335ZZZ 
 ;;9002226.02101,"1804,B335ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B338Y0Z ",.01)
 ;;B338Y0Z 
 ;;9002226.02101,"1804,B338Y0Z ",.02)
 ;;B338Y0Z 
 ;;9002226.02101,"1804,B338Y0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,B338YZZ ",.01)
 ;;B338YZZ 
 ;;9002226.02101,"1804,B338YZZ ",.02)
 ;;B338YZZ 
 ;;9002226.02101,"1804,B338YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B338ZZZ ",.01)
 ;;B338ZZZ 
 ;;9002226.02101,"1804,B338ZZZ ",.02)
 ;;B338ZZZ 
 ;;9002226.02101,"1804,B338ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B33GY0Z ",.01)
 ;;B33GY0Z 
 ;;9002226.02101,"1804,B33GY0Z ",.02)
 ;;B33GY0Z 
 ;;9002226.02101,"1804,B33GY0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,B33GYZZ ",.01)
 ;;B33GYZZ 
 ;;9002226.02101,"1804,B33GYZZ ",.02)
 ;;B33GYZZ 
 ;;9002226.02101,"1804,B33GYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B33GZZZ ",.01)
 ;;B33GZZZ 
 ;;9002226.02101,"1804,B33GZZZ ",.02)
 ;;B33GZZZ 
 ;;9002226.02101,"1804,B33GZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B33HY0Z ",.01)
 ;;B33HY0Z 
 ;;9002226.02101,"1804,B33HY0Z ",.02)
 ;;B33HY0Z 
 ;;9002226.02101,"1804,B33HY0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,B33HYZZ ",.01)
 ;;B33HYZZ 
 ;;9002226.02101,"1804,B33HYZZ ",.02)
 ;;B33HYZZ 
 ;;9002226.02101,"1804,B33HYZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B33HZZZ ",.01)
 ;;B33HZZZ 
 ;;9002226.02101,"1804,B33HZZZ ",.02)
 ;;B33HZZZ 
 ;;9002226.02101,"1804,B33HZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,B33JY0Z ",.01)
 ;;B33JY0Z 
 ;;9002226.02101,"1804,B33JY0Z ",.02)
 ;;B33JY0Z 
 ;;9002226.02101,"1804,B33JY0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,B33JYZZ ",.01)
 ;;B33JYZZ 