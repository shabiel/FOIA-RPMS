ATXD3S16 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 28, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1011,O35.2XX3 ",.02)
 ;;O35.2XX3 
 ;;9002226.02101,"1011,O35.2XX3 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.2XX4 ",.01)
 ;;O35.2XX4 
 ;;9002226.02101,"1011,O35.2XX4 ",.02)
 ;;O35.2XX4 
 ;;9002226.02101,"1011,O35.2XX4 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.2XX5 ",.01)
 ;;O35.2XX5 
 ;;9002226.02101,"1011,O35.2XX5 ",.02)
 ;;O35.2XX5 
 ;;9002226.02101,"1011,O35.2XX5 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.2XX9 ",.01)
 ;;O35.2XX9 
 ;;9002226.02101,"1011,O35.2XX9 ",.02)
 ;;O35.2XX9 
 ;;9002226.02101,"1011,O35.2XX9 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.3XX0 ",.01)
 ;;O35.3XX0 
 ;;9002226.02101,"1011,O35.3XX0 ",.02)
 ;;O35.3XX0 
 ;;9002226.02101,"1011,O35.3XX0 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.3XX1 ",.01)
 ;;O35.3XX1 
 ;;9002226.02101,"1011,O35.3XX1 ",.02)
 ;;O35.3XX1 
 ;;9002226.02101,"1011,O35.3XX1 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.3XX2 ",.01)
 ;;O35.3XX2 
 ;;9002226.02101,"1011,O35.3XX2 ",.02)
 ;;O35.3XX2 
 ;;9002226.02101,"1011,O35.3XX2 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.3XX3 ",.01)
 ;;O35.3XX3 
 ;;9002226.02101,"1011,O35.3XX3 ",.02)
 ;;O35.3XX3 
 ;;9002226.02101,"1011,O35.3XX3 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.3XX4 ",.01)
 ;;O35.3XX4 
 ;;9002226.02101,"1011,O35.3XX4 ",.02)
 ;;O35.3XX4 
 ;;9002226.02101,"1011,O35.3XX4 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.3XX5 ",.01)
 ;;O35.3XX5 
 ;;9002226.02101,"1011,O35.3XX5 ",.02)
 ;;O35.3XX5 
 ;;9002226.02101,"1011,O35.3XX5 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.3XX9 ",.01)
 ;;O35.3XX9 
 ;;9002226.02101,"1011,O35.3XX9 ",.02)
 ;;O35.3XX9 
 ;;9002226.02101,"1011,O35.3XX9 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.4XX0 ",.01)
 ;;O35.4XX0 
 ;;9002226.02101,"1011,O35.4XX0 ",.02)
 ;;O35.4XX0 
 ;;9002226.02101,"1011,O35.4XX0 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.4XX1 ",.01)
 ;;O35.4XX1 
 ;;9002226.02101,"1011,O35.4XX1 ",.02)
 ;;O35.4XX1 
 ;;9002226.02101,"1011,O35.4XX1 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.4XX2 ",.01)
 ;;O35.4XX2 
 ;;9002226.02101,"1011,O35.4XX2 ",.02)
 ;;O35.4XX2 
 ;;9002226.02101,"1011,O35.4XX2 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.4XX3 ",.01)
 ;;O35.4XX3 
 ;;9002226.02101,"1011,O35.4XX3 ",.02)
 ;;O35.4XX3 
 ;;9002226.02101,"1011,O35.4XX3 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.4XX4 ",.01)
 ;;O35.4XX4 
 ;;9002226.02101,"1011,O35.4XX4 ",.02)
 ;;O35.4XX4 
 ;;9002226.02101,"1011,O35.4XX4 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.4XX5 ",.01)
 ;;O35.4XX5 
 ;;9002226.02101,"1011,O35.4XX5 ",.02)
 ;;O35.4XX5 
 ;;9002226.02101,"1011,O35.4XX5 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.4XX9 ",.01)
 ;;O35.4XX9 
 ;;9002226.02101,"1011,O35.4XX9 ",.02)
 ;;O35.4XX9 
 ;;9002226.02101,"1011,O35.4XX9 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.5XX0 ",.01)
 ;;O35.5XX0 
 ;;9002226.02101,"1011,O35.5XX0 ",.02)
 ;;O35.5XX0 
 ;;9002226.02101,"1011,O35.5XX0 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.5XX1 ",.01)
 ;;O35.5XX1 
 ;;9002226.02101,"1011,O35.5XX1 ",.02)
 ;;O35.5XX1 
 ;;9002226.02101,"1011,O35.5XX1 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.5XX2 ",.01)
 ;;O35.5XX2 
 ;;9002226.02101,"1011,O35.5XX2 ",.02)
 ;;O35.5XX2 
 ;;9002226.02101,"1011,O35.5XX2 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.5XX3 ",.01)
 ;;O35.5XX3 
 ;;9002226.02101,"1011,O35.5XX3 ",.02)
 ;;O35.5XX3 
 ;;9002226.02101,"1011,O35.5XX3 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.5XX4 ",.01)
 ;;O35.5XX4 
 ;;9002226.02101,"1011,O35.5XX4 ",.02)
 ;;O35.5XX4 
 ;;9002226.02101,"1011,O35.5XX4 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.5XX5 ",.01)
 ;;O35.5XX5 
 ;;9002226.02101,"1011,O35.5XX5 ",.02)
 ;;O35.5XX5 
 ;;9002226.02101,"1011,O35.5XX5 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.5XX9 ",.01)
 ;;O35.5XX9 
 ;;9002226.02101,"1011,O35.5XX9 ",.02)
 ;;O35.5XX9 
 ;;9002226.02101,"1011,O35.5XX9 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.6XX0 ",.01)
 ;;O35.6XX0 
 ;;9002226.02101,"1011,O35.6XX0 ",.02)
 ;;O35.6XX0 
 ;;9002226.02101,"1011,O35.6XX0 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.6XX1 ",.01)
 ;;O35.6XX1 
 ;;9002226.02101,"1011,O35.6XX1 ",.02)
 ;;O35.6XX1 
 ;;9002226.02101,"1011,O35.6XX1 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.6XX2 ",.01)
 ;;O35.6XX2 
 ;;9002226.02101,"1011,O35.6XX2 ",.02)
 ;;O35.6XX2 
 ;;9002226.02101,"1011,O35.6XX2 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.6XX3 ",.01)
 ;;O35.6XX3 
 ;;9002226.02101,"1011,O35.6XX3 ",.02)
 ;;O35.6XX3 
 ;;9002226.02101,"1011,O35.6XX3 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.6XX4 ",.01)
 ;;O35.6XX4 
 ;;9002226.02101,"1011,O35.6XX4 ",.02)
 ;;O35.6XX4 
 ;;9002226.02101,"1011,O35.6XX4 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.6XX5 ",.01)
 ;;O35.6XX5 
 ;;9002226.02101,"1011,O35.6XX5 ",.02)
 ;;O35.6XX5 
 ;;9002226.02101,"1011,O35.6XX5 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.6XX9 ",.01)
 ;;O35.6XX9 
 ;;9002226.02101,"1011,O35.6XX9 ",.02)
 ;;O35.6XX9 
 ;;9002226.02101,"1011,O35.6XX9 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.7XX0 ",.01)
 ;;O35.7XX0 
 ;;9002226.02101,"1011,O35.7XX0 ",.02)
 ;;O35.7XX0 
 ;;9002226.02101,"1011,O35.7XX0 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.7XX1 ",.01)
 ;;O35.7XX1 
 ;;9002226.02101,"1011,O35.7XX1 ",.02)
 ;;O35.7XX1 
 ;;9002226.02101,"1011,O35.7XX1 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.7XX2 ",.01)
 ;;O35.7XX2 
 ;;9002226.02101,"1011,O35.7XX2 ",.02)
 ;;O35.7XX2 
 ;;9002226.02101,"1011,O35.7XX2 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.7XX3 ",.01)
 ;;O35.7XX3 
 ;;9002226.02101,"1011,O35.7XX3 ",.02)
 ;;O35.7XX3 
 ;;9002226.02101,"1011,O35.7XX3 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.7XX4 ",.01)
 ;;O35.7XX4 
 ;;9002226.02101,"1011,O35.7XX4 ",.02)
 ;;O35.7XX4 
 ;;9002226.02101,"1011,O35.7XX4 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.7XX5 ",.01)
 ;;O35.7XX5 
 ;;9002226.02101,"1011,O35.7XX5 ",.02)
 ;;O35.7XX5 
 ;;9002226.02101,"1011,O35.7XX5 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.7XX9 ",.01)
 ;;O35.7XX9 
 ;;9002226.02101,"1011,O35.7XX9 ",.02)
 ;;O35.7XX9 
 ;;9002226.02101,"1011,O35.7XX9 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.8XX0 ",.01)
 ;;O35.8XX0 
 ;;9002226.02101,"1011,O35.8XX0 ",.02)
 ;;O35.8XX0 
 ;;9002226.02101,"1011,O35.8XX0 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.8XX1 ",.01)
 ;;O35.8XX1 
 ;;9002226.02101,"1011,O35.8XX1 ",.02)
 ;;O35.8XX1 
 ;;9002226.02101,"1011,O35.8XX1 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.8XX2 ",.01)
 ;;O35.8XX2 
 ;;9002226.02101,"1011,O35.8XX2 ",.02)
 ;;O35.8XX2 
 ;;9002226.02101,"1011,O35.8XX2 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.8XX3 ",.01)
 ;;O35.8XX3 
 ;;9002226.02101,"1011,O35.8XX3 ",.02)
 ;;O35.8XX3 
 ;;9002226.02101,"1011,O35.8XX3 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.8XX4 ",.01)
 ;;O35.8XX4 
 ;;9002226.02101,"1011,O35.8XX4 ",.02)
 ;;O35.8XX4 
 ;;9002226.02101,"1011,O35.8XX4 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.8XX5 ",.01)
 ;;O35.8XX5 
 ;;9002226.02101,"1011,O35.8XX5 ",.02)
 ;;O35.8XX5 
 ;;9002226.02101,"1011,O35.8XX5 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.8XX9 ",.01)
 ;;O35.8XX9 
 ;;9002226.02101,"1011,O35.8XX9 ",.02)
 ;;O35.8XX9 
 ;;9002226.02101,"1011,O35.8XX9 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.9XX0 ",.01)
 ;;O35.9XX0 
 ;;9002226.02101,"1011,O35.9XX0 ",.02)
 ;;O35.9XX0 
 ;;9002226.02101,"1011,O35.9XX0 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.9XX1 ",.01)
 ;;O35.9XX1 
 ;;9002226.02101,"1011,O35.9XX1 ",.02)
 ;;O35.9XX1 
 ;;9002226.02101,"1011,O35.9XX1 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.9XX2 ",.01)
 ;;O35.9XX2 
 ;;9002226.02101,"1011,O35.9XX2 ",.02)
 ;;O35.9XX2 
 ;;9002226.02101,"1011,O35.9XX2 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.9XX3 ",.01)
 ;;O35.9XX3 
 ;;9002226.02101,"1011,O35.9XX3 ",.02)
 ;;O35.9XX3 
 ;;9002226.02101,"1011,O35.9XX3 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.9XX4 ",.01)
 ;;O35.9XX4 
 ;;9002226.02101,"1011,O35.9XX4 ",.02)
 ;;O35.9XX4 
 ;;9002226.02101,"1011,O35.9XX4 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.9XX5 ",.01)
 ;;O35.9XX5 
 ;;9002226.02101,"1011,O35.9XX5 ",.02)
 ;;O35.9XX5 
 ;;9002226.02101,"1011,O35.9XX5 ",.03)
 ;;30
 ;;9002226.02101,"1011,O35.9XX9 ",.01)
 ;;O35.9XX9 
 ;;9002226.02101,"1011,O35.9XX9 ",.02)
 ;;O35.9XX9 
 ;;9002226.02101,"1011,O35.9XX9 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0110 ",.01)
 ;;O36.0110 
 ;;9002226.02101,"1011,O36.0110 ",.02)
 ;;O36.0110 
 ;;9002226.02101,"1011,O36.0110 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0111 ",.01)
 ;;O36.0111 
 ;;9002226.02101,"1011,O36.0111 ",.02)
 ;;O36.0111 
 ;;9002226.02101,"1011,O36.0111 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0112 ",.01)
 ;;O36.0112 
 ;;9002226.02101,"1011,O36.0112 ",.02)
 ;;O36.0112 
 ;;9002226.02101,"1011,O36.0112 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0113 ",.01)
 ;;O36.0113 
 ;;9002226.02101,"1011,O36.0113 ",.02)
 ;;O36.0113 
 ;;9002226.02101,"1011,O36.0113 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0114 ",.01)
 ;;O36.0114 
 ;;9002226.02101,"1011,O36.0114 ",.02)
 ;;O36.0114 
 ;;9002226.02101,"1011,O36.0114 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0115 ",.01)
 ;;O36.0115 
 ;;9002226.02101,"1011,O36.0115 ",.02)
 ;;O36.0115 
 ;;9002226.02101,"1011,O36.0115 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0119 ",.01)
 ;;O36.0119 
 ;;9002226.02101,"1011,O36.0119 ",.02)
 ;;O36.0119 
 ;;9002226.02101,"1011,O36.0119 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0120 ",.01)
 ;;O36.0120 
 ;;9002226.02101,"1011,O36.0120 ",.02)
 ;;O36.0120 
 ;;9002226.02101,"1011,O36.0120 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0121 ",.01)
 ;;O36.0121 
 ;;9002226.02101,"1011,O36.0121 ",.02)
 ;;O36.0121 
 ;;9002226.02101,"1011,O36.0121 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0122 ",.01)
 ;;O36.0122 
 ;;9002226.02101,"1011,O36.0122 ",.02)
 ;;O36.0122 
 ;;9002226.02101,"1011,O36.0122 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0123 ",.01)
 ;;O36.0123 
 ;;9002226.02101,"1011,O36.0123 ",.02)
 ;;O36.0123 
 ;;9002226.02101,"1011,O36.0123 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0124 ",.01)
 ;;O36.0124 
 ;;9002226.02101,"1011,O36.0124 ",.02)
 ;;O36.0124 
 ;;9002226.02101,"1011,O36.0124 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0125 ",.01)
 ;;O36.0125 
 ;;9002226.02101,"1011,O36.0125 ",.02)
 ;;O36.0125 
 ;;9002226.02101,"1011,O36.0125 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0129 ",.01)
 ;;O36.0129 
 ;;9002226.02101,"1011,O36.0129 ",.02)
 ;;O36.0129 
 ;;9002226.02101,"1011,O36.0129 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0130 ",.01)
 ;;O36.0130 
 ;;9002226.02101,"1011,O36.0130 ",.02)
 ;;O36.0130 
 ;;9002226.02101,"1011,O36.0130 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0131 ",.01)
 ;;O36.0131 
 ;;9002226.02101,"1011,O36.0131 ",.02)
 ;;O36.0131 
 ;;9002226.02101,"1011,O36.0131 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0132 ",.01)
 ;;O36.0132 
 ;;9002226.02101,"1011,O36.0132 ",.02)
 ;;O36.0132 
 ;;9002226.02101,"1011,O36.0132 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0133 ",.01)
 ;;O36.0133 
 ;;9002226.02101,"1011,O36.0133 ",.02)
 ;;O36.0133 
 ;;9002226.02101,"1011,O36.0133 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0134 ",.01)
 ;;O36.0134 
 ;;9002226.02101,"1011,O36.0134 ",.02)
 ;;O36.0134 
 ;;9002226.02101,"1011,O36.0134 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0135 ",.01)
 ;;O36.0135 
 ;;9002226.02101,"1011,O36.0135 ",.02)
 ;;O36.0135 
 ;;9002226.02101,"1011,O36.0135 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0139 ",.01)
 ;;O36.0139 
 ;;9002226.02101,"1011,O36.0139 ",.02)
 ;;O36.0139 
 ;;9002226.02101,"1011,O36.0139 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0190 ",.01)
 ;;O36.0190 
 ;;9002226.02101,"1011,O36.0190 ",.02)
 ;;O36.0190 
 ;;9002226.02101,"1011,O36.0190 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0191 ",.01)
 ;;O36.0191 
 ;;9002226.02101,"1011,O36.0191 ",.02)
 ;;O36.0191 
 ;;9002226.02101,"1011,O36.0191 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0910 ",.01)
 ;;O36.0910 
 ;;9002226.02101,"1011,O36.0910 ",.02)
 ;;O36.0910 
 ;;9002226.02101,"1011,O36.0910 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0911 ",.01)
 ;;O36.0911 
 ;;9002226.02101,"1011,O36.0911 ",.02)
 ;;O36.0911 
 ;;9002226.02101,"1011,O36.0911 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0912 ",.01)
 ;;O36.0912 
 ;;9002226.02101,"1011,O36.0912 ",.02)
 ;;O36.0912 
 ;;9002226.02101,"1011,O36.0912 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0913 ",.01)
 ;;O36.0913 
 ;;9002226.02101,"1011,O36.0913 ",.02)
 ;;O36.0913 
 ;;9002226.02101,"1011,O36.0913 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0914 ",.01)
 ;;O36.0914 
 ;;9002226.02101,"1011,O36.0914 ",.02)
 ;;O36.0914 
 ;;9002226.02101,"1011,O36.0914 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0915 ",.01)
 ;;O36.0915 
 ;;9002226.02101,"1011,O36.0915 ",.02)
 ;;O36.0915 
 ;;9002226.02101,"1011,O36.0915 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0919 ",.01)
 ;;O36.0919 
 ;;9002226.02101,"1011,O36.0919 ",.02)
 ;;O36.0919 
 ;;9002226.02101,"1011,O36.0919 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0920 ",.01)
 ;;O36.0920 
 ;;9002226.02101,"1011,O36.0920 ",.02)
 ;;O36.0920 
 ;;9002226.02101,"1011,O36.0920 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0921 ",.01)
 ;;O36.0921 
 ;;9002226.02101,"1011,O36.0921 ",.02)
 ;;O36.0921 
 ;;9002226.02101,"1011,O36.0921 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0922 ",.01)
 ;;O36.0922 
 ;;9002226.02101,"1011,O36.0922 ",.02)
 ;;O36.0922 
 ;;9002226.02101,"1011,O36.0922 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0923 ",.01)
 ;;O36.0923 
 ;;9002226.02101,"1011,O36.0923 ",.02)
 ;;O36.0923 
 ;;9002226.02101,"1011,O36.0923 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0924 ",.01)
 ;;O36.0924 
 ;;9002226.02101,"1011,O36.0924 ",.02)
 ;;O36.0924 
 ;;9002226.02101,"1011,O36.0924 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0925 ",.01)
 ;;O36.0925 