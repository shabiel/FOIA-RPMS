ATXD5P16 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 12, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"169,W50.0XXA ",.02)
 ;;W50.0XXA 
 ;;9002226.02101,"169,W50.0XXA ",.03)
 ;;30
 ;;9002226.02101,"169,W50.0XXD ",.01)
 ;;W50.0XXD 
 ;;9002226.02101,"169,W50.0XXD ",.02)
 ;;W50.0XXD 
 ;;9002226.02101,"169,W50.0XXD ",.03)
 ;;30
 ;;9002226.02101,"169,W50.0XXS ",.01)
 ;;W50.0XXS 
 ;;9002226.02101,"169,W50.0XXS ",.02)
 ;;W50.0XXS 
 ;;9002226.02101,"169,W50.0XXS ",.03)
 ;;30
 ;;9002226.02101,"169,W50.1XXA ",.01)
 ;;W50.1XXA 
 ;;9002226.02101,"169,W50.1XXA ",.02)
 ;;W50.1XXA 
 ;;9002226.02101,"169,W50.1XXA ",.03)
 ;;30
 ;;9002226.02101,"169,W50.1XXD ",.01)
 ;;W50.1XXD 
 ;;9002226.02101,"169,W50.1XXD ",.02)
 ;;W50.1XXD 
 ;;9002226.02101,"169,W50.1XXD ",.03)
 ;;30
 ;;9002226.02101,"169,W50.1XXS ",.01)
 ;;W50.1XXS 
 ;;9002226.02101,"169,W50.1XXS ",.02)
 ;;W50.1XXS 
 ;;9002226.02101,"169,W50.1XXS ",.03)
 ;;30
 ;;9002226.02101,"169,W50.2XXA ",.01)
 ;;W50.2XXA 
 ;;9002226.02101,"169,W50.2XXA ",.02)
 ;;W50.2XXA 
 ;;9002226.02101,"169,W50.2XXA ",.03)
 ;;30
 ;;9002226.02101,"169,W50.2XXD ",.01)
 ;;W50.2XXD 
 ;;9002226.02101,"169,W50.2XXD ",.02)
 ;;W50.2XXD 
 ;;9002226.02101,"169,W50.2XXD ",.03)
 ;;30
 ;;9002226.02101,"169,W50.2XXS ",.01)
 ;;W50.2XXS 
 ;;9002226.02101,"169,W50.2XXS ",.02)
 ;;W50.2XXS 
 ;;9002226.02101,"169,W50.2XXS ",.03)
 ;;30
 ;;9002226.02101,"169,W50.3XXA ",.01)
 ;;W50.3XXA 
 ;;9002226.02101,"169,W50.3XXA ",.02)
 ;;W50.3XXA 
 ;;9002226.02101,"169,W50.3XXA ",.03)
 ;;30
 ;;9002226.02101,"169,W50.3XXD ",.01)
 ;;W50.3XXD 
 ;;9002226.02101,"169,W50.3XXD ",.02)
 ;;W50.3XXD 
 ;;9002226.02101,"169,W50.3XXD ",.03)
 ;;30
 ;;9002226.02101,"169,W50.3XXS ",.01)
 ;;W50.3XXS 
 ;;9002226.02101,"169,W50.3XXS ",.02)
 ;;W50.3XXS 
 ;;9002226.02101,"169,W50.3XXS ",.03)
 ;;30
 ;;9002226.02101,"169,W50.4XXA ",.01)
 ;;W50.4XXA 
 ;;9002226.02101,"169,W50.4XXA ",.02)
 ;;W50.4XXA 
 ;;9002226.02101,"169,W50.4XXA ",.03)
 ;;30
 ;;9002226.02101,"169,W50.4XXD ",.01)
 ;;W50.4XXD 
 ;;9002226.02101,"169,W50.4XXD ",.02)
 ;;W50.4XXD 
 ;;9002226.02101,"169,W50.4XXD ",.03)
 ;;30
 ;;9002226.02101,"169,W50.4XXS ",.01)
 ;;W50.4XXS 
 ;;9002226.02101,"169,W50.4XXS ",.02)
 ;;W50.4XXS 
 ;;9002226.02101,"169,W50.4XXS ",.03)
 ;;30
 ;;9002226.02101,"169,W51.XXXA ",.01)
 ;;W51.XXXA 
 ;;9002226.02101,"169,W51.XXXA ",.02)
 ;;W51.XXXA 
 ;;9002226.02101,"169,W51.XXXA ",.03)
 ;;30
 ;;9002226.02101,"169,W51.XXXD ",.01)
 ;;W51.XXXD 
 ;;9002226.02101,"169,W51.XXXD ",.02)
 ;;W51.XXXD 
 ;;9002226.02101,"169,W51.XXXD ",.03)
 ;;30
 ;;9002226.02101,"169,W51.XXXS ",.01)
 ;;W51.XXXS 
 ;;9002226.02101,"169,W51.XXXS ",.02)
 ;;W51.XXXS 
 ;;9002226.02101,"169,W51.XXXS ",.03)
 ;;30
 ;;9002226.02101,"169,W52.XXXA ",.01)
 ;;W52.XXXA 
 ;;9002226.02101,"169,W52.XXXA ",.02)
 ;;W52.XXXA 
 ;;9002226.02101,"169,W52.XXXA ",.03)
 ;;30
 ;;9002226.02101,"169,W52.XXXD ",.01)
 ;;W52.XXXD 
 ;;9002226.02101,"169,W52.XXXD ",.02)
 ;;W52.XXXD 
 ;;9002226.02101,"169,W52.XXXD ",.03)
 ;;30
 ;;9002226.02101,"169,W52.XXXS ",.01)
 ;;W52.XXXS 
 ;;9002226.02101,"169,W52.XXXS ",.02)
 ;;W52.XXXS 
 ;;9002226.02101,"169,W52.XXXS ",.03)
 ;;30
 ;;9002226.02101,"169,W65.XXXA ",.01)
 ;;W65.XXXA 
 ;;9002226.02101,"169,W65.XXXA ",.02)
 ;;W65.XXXA 
 ;;9002226.02101,"169,W65.XXXA ",.03)
 ;;30
 ;;9002226.02101,"169,W65.XXXD ",.01)
 ;;W65.XXXD 
 ;;9002226.02101,"169,W65.XXXD ",.02)
 ;;W65.XXXD 
 ;;9002226.02101,"169,W65.XXXD ",.03)
 ;;30
 ;;9002226.02101,"169,W65.XXXS ",.01)
 ;;W65.XXXS 
 ;;9002226.02101,"169,W65.XXXS ",.02)
 ;;W65.XXXS 
 ;;9002226.02101,"169,W65.XXXS ",.03)
 ;;30
 ;;9002226.02101,"169,W67.XXXA ",.01)
 ;;W67.XXXA 
 ;;9002226.02101,"169,W67.XXXA ",.02)
 ;;W67.XXXA 
 ;;9002226.02101,"169,W67.XXXA ",.03)
 ;;30
 ;;9002226.02101,"169,W67.XXXD ",.01)
 ;;W67.XXXD 
 ;;9002226.02101,"169,W67.XXXD ",.02)
 ;;W67.XXXD 
 ;;9002226.02101,"169,W67.XXXD ",.03)
 ;;30
 ;;9002226.02101,"169,W67.XXXS ",.01)
 ;;W67.XXXS 
 ;;9002226.02101,"169,W67.XXXS ",.02)
 ;;W67.XXXS 
 ;;9002226.02101,"169,W67.XXXS ",.03)
 ;;30
 ;;9002226.02101,"169,W69.XXXA ",.01)
 ;;W69.XXXA 
 ;;9002226.02101,"169,W69.XXXA ",.02)
 ;;W69.XXXA 
 ;;9002226.02101,"169,W69.XXXA ",.03)
 ;;30
 ;;9002226.02101,"169,W69.XXXD ",.01)
 ;;W69.XXXD 
 ;;9002226.02101,"169,W69.XXXD ",.02)
 ;;W69.XXXD 
 ;;9002226.02101,"169,W69.XXXD ",.03)
 ;;30
 ;;9002226.02101,"169,W69.XXXS ",.01)
 ;;W69.XXXS 
 ;;9002226.02101,"169,W69.XXXS ",.02)
 ;;W69.XXXS 
 ;;9002226.02101,"169,W69.XXXS ",.03)
 ;;30
 ;;9002226.02101,"169,W73.XXXA ",.01)
 ;;W73.XXXA 
 ;;9002226.02101,"169,W73.XXXA ",.02)
 ;;W73.XXXA 
 ;;9002226.02101,"169,W73.XXXA ",.03)
 ;;30
 ;;9002226.02101,"169,W73.XXXD ",.01)
 ;;W73.XXXD 
 ;;9002226.02101,"169,W73.XXXD ",.02)
 ;;W73.XXXD 
 ;;9002226.02101,"169,W73.XXXD ",.03)
 ;;30
 ;;9002226.02101,"169,W73.XXXS ",.01)
 ;;W73.XXXS 
 ;;9002226.02101,"169,W73.XXXS ",.02)
 ;;W73.XXXS 
 ;;9002226.02101,"169,W73.XXXS ",.03)
 ;;30
 ;;9002226.02101,"169,W74.XXXA ",.01)
 ;;W74.XXXA 
 ;;9002226.02101,"169,W74.XXXA ",.02)
 ;;W74.XXXA 
 ;;9002226.02101,"169,W74.XXXA ",.03)
 ;;30
 ;;9002226.02101,"169,W74.XXXD ",.01)
 ;;W74.XXXD 
 ;;9002226.02101,"169,W74.XXXD ",.02)
 ;;W74.XXXD 
 ;;9002226.02101,"169,W74.XXXD ",.03)
 ;;30
 ;;9002226.02101,"169,W74.XXXS ",.01)
 ;;W74.XXXS 
 ;;9002226.02101,"169,W74.XXXS ",.02)
 ;;W74.XXXS 
 ;;9002226.02101,"169,W74.XXXS ",.03)
 ;;30
 ;;9002226.02101,"169,W85.XXXA ",.01)
 ;;W85.XXXA 
 ;;9002226.02101,"169,W85.XXXA ",.02)
 ;;W85.XXXA 
 ;;9002226.02101,"169,W85.XXXA ",.03)
 ;;30
 ;;9002226.02101,"169,W85.XXXD ",.01)
 ;;W85.XXXD 
 ;;9002226.02101,"169,W85.XXXD ",.02)
 ;;W85.XXXD 
 ;;9002226.02101,"169,W85.XXXD ",.03)
 ;;30
 ;;9002226.02101,"169,W85.XXXS ",.01)
 ;;W85.XXXS 
 ;;9002226.02101,"169,W85.XXXS ",.02)
 ;;W85.XXXS 
 ;;9002226.02101,"169,W85.XXXS ",.03)
 ;;30
 ;;9002226.02101,"169,W86.0XXA ",.01)
 ;;W86.0XXA 
 ;;9002226.02101,"169,W86.0XXA ",.02)
 ;;W86.0XXA 
 ;;9002226.02101,"169,W86.0XXA ",.03)
 ;;30
 ;;9002226.02101,"169,W86.0XXD ",.01)
 ;;W86.0XXD 
 ;;9002226.02101,"169,W86.0XXD ",.02)
 ;;W86.0XXD 
 ;;9002226.02101,"169,W86.0XXD ",.03)
 ;;30
 ;;9002226.02101,"169,W86.0XXS ",.01)
 ;;W86.0XXS 
 ;;9002226.02101,"169,W86.0XXS ",.02)
 ;;W86.0XXS 
 ;;9002226.02101,"169,W86.0XXS ",.03)
 ;;30
 ;;9002226.02101,"169,W86.1XXA ",.01)
 ;;W86.1XXA 
 ;;9002226.02101,"169,W86.1XXA ",.02)
 ;;W86.1XXA 
 ;;9002226.02101,"169,W86.1XXA ",.03)
 ;;30
 ;;9002226.02101,"169,W86.1XXD ",.01)
 ;;W86.1XXD 
 ;;9002226.02101,"169,W86.1XXD ",.02)
 ;;W86.1XXD 
 ;;9002226.02101,"169,W86.1XXD ",.03)
 ;;30
 ;;9002226.02101,"169,W86.1XXS ",.01)
 ;;W86.1XXS 
 ;;9002226.02101,"169,W86.1XXS ",.02)
 ;;W86.1XXS 
 ;;9002226.02101,"169,W86.1XXS ",.03)
 ;;30
 ;;9002226.02101,"169,W86.8XXA ",.01)
 ;;W86.8XXA 
 ;;9002226.02101,"169,W86.8XXA ",.02)
 ;;W86.8XXA 
 ;;9002226.02101,"169,W86.8XXA ",.03)
 ;;30
 ;;9002226.02101,"169,W86.8XXD ",.01)
 ;;W86.8XXD 
 ;;9002226.02101,"169,W86.8XXD ",.02)
 ;;W86.8XXD 
 ;;9002226.02101,"169,W86.8XXD ",.03)
 ;;30
 ;;9002226.02101,"169,W86.8XXS ",.01)
 ;;W86.8XXS 
 ;;9002226.02101,"169,W86.8XXS ",.02)
 ;;W86.8XXS 
 ;;9002226.02101,"169,W86.8XXS ",.03)
 ;;30
 ;;9002226.02101,"169,W88.0XXA ",.01)
 ;;W88.0XXA 
 ;;9002226.02101,"169,W88.0XXA ",.02)
 ;;W88.0XXA 
 ;;9002226.02101,"169,W88.0XXA ",.03)
 ;;30
 ;;9002226.02101,"169,W88.0XXD ",.01)
 ;;W88.0XXD 
 ;;9002226.02101,"169,W88.0XXD ",.02)
 ;;W88.0XXD 
 ;;9002226.02101,"169,W88.0XXD ",.03)
 ;;30
 ;;9002226.02101,"169,W88.0XXS ",.01)
 ;;W88.0XXS 
 ;;9002226.02101,"169,W88.0XXS ",.02)
 ;;W88.0XXS 
 ;;9002226.02101,"169,W88.0XXS ",.03)
 ;;30
 ;;9002226.02101,"169,W88.1XXA ",.01)
 ;;W88.1XXA 
 ;;9002226.02101,"169,W88.1XXA ",.02)
 ;;W88.1XXA 
 ;;9002226.02101,"169,W88.1XXA ",.03)
 ;;30
 ;;9002226.02101,"169,W88.1XXD ",.01)
 ;;W88.1XXD 
 ;;9002226.02101,"169,W88.1XXD ",.02)
 ;;W88.1XXD 
 ;;9002226.02101,"169,W88.1XXD ",.03)
 ;;30
 ;;9002226.02101,"169,W88.1XXS ",.01)
 ;;W88.1XXS 
 ;;9002226.02101,"169,W88.1XXS ",.02)
 ;;W88.1XXS 
 ;;9002226.02101,"169,W88.1XXS ",.03)
 ;;30
 ;;9002226.02101,"169,W88.8XXA ",.01)
 ;;W88.8XXA 
 ;;9002226.02101,"169,W88.8XXA ",.02)
 ;;W88.8XXA 
 ;;9002226.02101,"169,W88.8XXA ",.03)
 ;;30
 ;;9002226.02101,"169,W88.8XXD ",.01)
 ;;W88.8XXD 
 ;;9002226.02101,"169,W88.8XXD ",.02)
 ;;W88.8XXD 
 ;;9002226.02101,"169,W88.8XXD ",.03)
 ;;30
 ;;9002226.02101,"169,W88.8XXS ",.01)
 ;;W88.8XXS 
 ;;9002226.02101,"169,W88.8XXS ",.02)
 ;;W88.8XXS 
 ;;9002226.02101,"169,W88.8XXS ",.03)
 ;;30
 ;;9002226.02101,"169,W89.0XXA ",.01)
 ;;W89.0XXA 
 ;;9002226.02101,"169,W89.0XXA ",.02)
 ;;W89.0XXA 
 ;;9002226.02101,"169,W89.0XXA ",.03)
 ;;30
 ;;9002226.02101,"169,W89.0XXD ",.01)
 ;;W89.0XXD 
 ;;9002226.02101,"169,W89.0XXD ",.02)
 ;;W89.0XXD 
 ;;9002226.02101,"169,W89.0XXD ",.03)
 ;;30
 ;;9002226.02101,"169,W89.0XXS ",.01)
 ;;W89.0XXS 
 ;;9002226.02101,"169,W89.0XXS ",.02)
 ;;W89.0XXS 
 ;;9002226.02101,"169,W89.0XXS ",.03)
 ;;30
 ;;9002226.02101,"169,W89.1XXA ",.01)
 ;;W89.1XXA 
 ;;9002226.02101,"169,W89.1XXA ",.02)
 ;;W89.1XXA 
 ;;9002226.02101,"169,W89.1XXA ",.03)
 ;;30
 ;;9002226.02101,"169,W89.1XXD ",.01)
 ;;W89.1XXD 
 ;;9002226.02101,"169,W89.1XXD ",.02)
 ;;W89.1XXD 
 ;;9002226.02101,"169,W89.1XXD ",.03)
 ;;30
 ;;9002226.02101,"169,W89.1XXS ",.01)
 ;;W89.1XXS 
 ;;9002226.02101,"169,W89.1XXS ",.02)
 ;;W89.1XXS 
 ;;9002226.02101,"169,W89.1XXS ",.03)
 ;;30
 ;;9002226.02101,"169,W89.8XXA ",.01)
 ;;W89.8XXA 
 ;;9002226.02101,"169,W89.8XXA ",.02)
 ;;W89.8XXA 
 ;;9002226.02101,"169,W89.8XXA ",.03)
 ;;30
 ;;9002226.02101,"169,W89.8XXD ",.01)
 ;;W89.8XXD 
 ;;9002226.02101,"169,W89.8XXD ",.02)
 ;;W89.8XXD 
 ;;9002226.02101,"169,W89.8XXD ",.03)
 ;;30
 ;;9002226.02101,"169,W89.8XXS ",.01)
 ;;W89.8XXS 
 ;;9002226.02101,"169,W89.8XXS ",.02)
 ;;W89.8XXS 
 ;;9002226.02101,"169,W89.8XXS ",.03)
 ;;30
 ;;9002226.02101,"169,W89.9XXA ",.01)
 ;;W89.9XXA 
 ;;9002226.02101,"169,W89.9XXA ",.02)
 ;;W89.9XXA 
 ;;9002226.02101,"169,W89.9XXA ",.03)
 ;;30
 ;;9002226.02101,"169,W89.9XXD ",.01)
 ;;W89.9XXD 
 ;;9002226.02101,"169,W89.9XXD ",.02)
 ;;W89.9XXD 
 ;;9002226.02101,"169,W89.9XXD ",.03)
 ;;30
 ;;9002226.02101,"169,W89.9XXS ",.01)
 ;;W89.9XXS 
 ;;9002226.02101,"169,W89.9XXS ",.02)
 ;;W89.9XXS 
 ;;9002226.02101,"169,W89.9XXS ",.03)
 ;;30
 ;;9002226.02101,"169,W90.0XXA ",.01)
 ;;W90.0XXA 
 ;;9002226.02101,"169,W90.0XXA ",.02)
 ;;W90.0XXA 
 ;;9002226.02101,"169,W90.0XXA ",.03)
 ;;30
 ;;9002226.02101,"169,W90.0XXD ",.01)
 ;;W90.0XXD 
 ;;9002226.02101,"169,W90.0XXD ",.02)
 ;;W90.0XXD 
 ;;9002226.02101,"169,W90.0XXD ",.03)
 ;;30
 ;;9002226.02101,"169,W90.0XXS ",.01)
 ;;W90.0XXS 
 ;;9002226.02101,"169,W90.0XXS ",.02)
 ;;W90.0XXS 
 ;;9002226.02101,"169,W90.0XXS ",.03)
 ;;30
 ;;9002226.02101,"169,W90.1XXA ",.01)
 ;;W90.1XXA 
 ;;9002226.02101,"169,W90.1XXA ",.02)
 ;;W90.1XXA 
 ;;9002226.02101,"169,W90.1XXA ",.03)
 ;;30
 ;;9002226.02101,"169,W90.1XXD ",.01)
 ;;W90.1XXD 
 ;;9002226.02101,"169,W90.1XXD ",.02)
 ;;W90.1XXD 
 ;;9002226.02101,"169,W90.1XXD ",.03)
 ;;30
 ;;9002226.02101,"169,W90.1XXS ",.01)
 ;;W90.1XXS 
 ;;9002226.02101,"169,W90.1XXS ",.02)
 ;;W90.1XXS 
 ;;9002226.02101,"169,W90.1XXS ",.03)
 ;;30
 ;;9002226.02101,"169,W90.2XXA ",.01)
 ;;W90.2XXA 
 ;;9002226.02101,"169,W90.2XXA ",.02)
 ;;W90.2XXA 
 ;;9002226.02101,"169,W90.2XXA ",.03)
 ;;30
 ;;9002226.02101,"169,W90.2XXD ",.01)
 ;;W90.2XXD 
 ;;9002226.02101,"169,W90.2XXD ",.02)
 ;;W90.2XXD 
 ;;9002226.02101,"169,W90.2XXD ",.03)
 ;;30
 ;;9002226.02101,"169,W90.2XXS ",.01)
 ;;W90.2XXS 
 ;;9002226.02101,"169,W90.2XXS ",.02)
 ;;W90.2XXS 
 ;;9002226.02101,"169,W90.2XXS ",.03)
 ;;30
 ;;9002226.02101,"169,W90.8XXA ",.01)
 ;;W90.8XXA 
 ;;9002226.02101,"169,W90.8XXA ",.02)
 ;;W90.8XXA 
 ;;9002226.02101,"169,W90.8XXA ",.03)
 ;;30
 ;;9002226.02101,"169,W90.8XXD ",.01)
 ;;W90.8XXD 
 ;;9002226.02101,"169,W90.8XXD ",.02)
 ;;W90.8XXD 
 ;;9002226.02101,"169,W90.8XXD ",.03)
 ;;30
 ;;9002226.02101,"169,W90.8XXS ",.01)
 ;;W90.8XXS 
 ;;9002226.02101,"169,W90.8XXS ",.02)
 ;;W90.8XXS 
 ;;9002226.02101,"169,W90.8XXS ",.03)
 ;;30
 ;;9002226.02101,"169,W92.XXXA ",.01)
 ;;W92.XXXA 
 ;;9002226.02101,"169,W92.XXXA ",.02)
 ;;W92.XXXA 
 ;;9002226.02101,"169,W92.XXXA ",.03)
 ;;30
 ;;9002226.02101,"169,W92.XXXD ",.01)
 ;;W92.XXXD 
 ;;9002226.02101,"169,W92.XXXD ",.02)
 ;;W92.XXXD 
 ;;9002226.02101,"169,W92.XXXD ",.03)
 ;;30
 ;;9002226.02101,"169,W92.XXXS ",.01)
 ;;W92.XXXS 
 ;;9002226.02101,"169,W92.XXXS ",.02)
 ;;W92.XXXS 
 ;;9002226.02101,"169,W92.XXXS ",.03)
 ;;30
 ;;9002226.02101,"169,X04.XXXA ",.01)
 ;;X04.XXXA 
 ;;9002226.02101,"169,X04.XXXA ",.02)
 ;;X04.XXXA 
 ;;9002226.02101,"169,X04.XXXA ",.03)
 ;;30
 ;;9002226.02101,"169,X04.XXXD ",.01)
 ;;X04.XXXD 
 ;;9002226.02101,"169,X04.XXXD ",.02)
 ;;X04.XXXD 
 ;;9002226.02101,"169,X04.XXXD ",.03)
 ;;30
 ;;9002226.02101,"169,X04.XXXS ",.01)
 ;;X04.XXXS 
 ;;9002226.02101,"169,X04.XXXS ",.02)
 ;;X04.XXXS 
 ;;9002226.02101,"169,X04.XXXS ",.03)
 ;;30
 ;;9002226.02101,"169,X05.XXXA ",.01)
 ;;X05.XXXA 
 ;;9002226.02101,"169,X05.XXXA ",.02)
 ;;X05.XXXA 
 ;;9002226.02101,"169,X05.XXXA ",.03)
 ;;30
 ;;9002226.02101,"169,X05.XXXD ",.01)
 ;;X05.XXXD 
 ;;9002226.02101,"169,X05.XXXD ",.02)
 ;;X05.XXXD 
 ;;9002226.02101,"169,X05.XXXD ",.03)
 ;;30
 ;;9002226.02101,"169,X05.XXXS ",.01)
 ;;X05.XXXS 
 ;;9002226.02101,"169,X05.XXXS ",.02)
 ;;X05.XXXS 
 ;;9002226.02101,"169,X05.XXXS ",.03)
 ;;30