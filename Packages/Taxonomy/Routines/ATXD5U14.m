ATXD5U14 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 12, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"174,Y21.8XXS ",.02)
 ;;Y21.8XXS 
 ;;9002226.02101,"174,Y21.8XXS ",.03)
 ;;30
 ;;9002226.02101,"174,Y21.9XXA ",.01)
 ;;Y21.9XXA 
 ;;9002226.02101,"174,Y21.9XXA ",.02)
 ;;Y21.9XXA 
 ;;9002226.02101,"174,Y21.9XXA ",.03)
 ;;30
 ;;9002226.02101,"174,Y21.9XXD ",.01)
 ;;Y21.9XXD 
 ;;9002226.02101,"174,Y21.9XXD ",.02)
 ;;Y21.9XXD 
 ;;9002226.02101,"174,Y21.9XXD ",.03)
 ;;30
 ;;9002226.02101,"174,Y21.9XXS ",.01)
 ;;Y21.9XXS 
 ;;9002226.02101,"174,Y21.9XXS ",.02)
 ;;Y21.9XXS 
 ;;9002226.02101,"174,Y21.9XXS ",.03)
 ;;30
 ;;9002226.02101,"174,Y22.XXXA ",.01)
 ;;Y22.XXXA 
 ;;9002226.02101,"174,Y22.XXXA ",.02)
 ;;Y22.XXXA 
 ;;9002226.02101,"174,Y22.XXXA ",.03)
 ;;30
 ;;9002226.02101,"174,Y22.XXXD ",.01)
 ;;Y22.XXXD 
 ;;9002226.02101,"174,Y22.XXXD ",.02)
 ;;Y22.XXXD 
 ;;9002226.02101,"174,Y22.XXXD ",.03)
 ;;30
 ;;9002226.02101,"174,Y22.XXXS ",.01)
 ;;Y22.XXXS 
 ;;9002226.02101,"174,Y22.XXXS ",.02)
 ;;Y22.XXXS 
 ;;9002226.02101,"174,Y22.XXXS ",.03)
 ;;30
 ;;9002226.02101,"174,Y23.0XXA ",.01)
 ;;Y23.0XXA 
 ;;9002226.02101,"174,Y23.0XXA ",.02)
 ;;Y23.0XXA 
 ;;9002226.02101,"174,Y23.0XXA ",.03)
 ;;30
 ;;9002226.02101,"174,Y23.0XXD ",.01)
 ;;Y23.0XXD 
 ;;9002226.02101,"174,Y23.0XXD ",.02)
 ;;Y23.0XXD 
 ;;9002226.02101,"174,Y23.0XXD ",.03)
 ;;30
 ;;9002226.02101,"174,Y23.0XXS ",.01)
 ;;Y23.0XXS 
 ;;9002226.02101,"174,Y23.0XXS ",.02)
 ;;Y23.0XXS 
 ;;9002226.02101,"174,Y23.0XXS ",.03)
 ;;30
 ;;9002226.02101,"174,Y23.1XXA ",.01)
 ;;Y23.1XXA 
 ;;9002226.02101,"174,Y23.1XXA ",.02)
 ;;Y23.1XXA 
 ;;9002226.02101,"174,Y23.1XXA ",.03)
 ;;30
 ;;9002226.02101,"174,Y23.1XXD ",.01)
 ;;Y23.1XXD 
 ;;9002226.02101,"174,Y23.1XXD ",.02)
 ;;Y23.1XXD 
 ;;9002226.02101,"174,Y23.1XXD ",.03)
 ;;30
 ;;9002226.02101,"174,Y23.1XXS ",.01)
 ;;Y23.1XXS 
 ;;9002226.02101,"174,Y23.1XXS ",.02)
 ;;Y23.1XXS 
 ;;9002226.02101,"174,Y23.1XXS ",.03)
 ;;30
 ;;9002226.02101,"174,Y23.2XXA ",.01)
 ;;Y23.2XXA 
 ;;9002226.02101,"174,Y23.2XXA ",.02)
 ;;Y23.2XXA 
 ;;9002226.02101,"174,Y23.2XXA ",.03)
 ;;30
 ;;9002226.02101,"174,Y23.2XXD ",.01)
 ;;Y23.2XXD 
 ;;9002226.02101,"174,Y23.2XXD ",.02)
 ;;Y23.2XXD 
 ;;9002226.02101,"174,Y23.2XXD ",.03)
 ;;30
 ;;9002226.02101,"174,Y23.2XXS ",.01)
 ;;Y23.2XXS 
 ;;9002226.02101,"174,Y23.2XXS ",.02)
 ;;Y23.2XXS 
 ;;9002226.02101,"174,Y23.2XXS ",.03)
 ;;30
 ;;9002226.02101,"174,Y23.3XXA ",.01)
 ;;Y23.3XXA 
 ;;9002226.02101,"174,Y23.3XXA ",.02)
 ;;Y23.3XXA 
 ;;9002226.02101,"174,Y23.3XXA ",.03)
 ;;30
 ;;9002226.02101,"174,Y23.3XXD ",.01)
 ;;Y23.3XXD 
 ;;9002226.02101,"174,Y23.3XXD ",.02)
 ;;Y23.3XXD 
 ;;9002226.02101,"174,Y23.3XXD ",.03)
 ;;30
 ;;9002226.02101,"174,Y23.3XXS ",.01)
 ;;Y23.3XXS 
 ;;9002226.02101,"174,Y23.3XXS ",.02)
 ;;Y23.3XXS 
 ;;9002226.02101,"174,Y23.3XXS ",.03)
 ;;30
 ;;9002226.02101,"174,Y23.8XXA ",.01)
 ;;Y23.8XXA 
 ;;9002226.02101,"174,Y23.8XXA ",.02)
 ;;Y23.8XXA 
 ;;9002226.02101,"174,Y23.8XXA ",.03)
 ;;30
 ;;9002226.02101,"174,Y23.8XXD ",.01)
 ;;Y23.8XXD 
 ;;9002226.02101,"174,Y23.8XXD ",.02)
 ;;Y23.8XXD 
 ;;9002226.02101,"174,Y23.8XXD ",.03)
 ;;30
 ;;9002226.02101,"174,Y23.8XXS ",.01)
 ;;Y23.8XXS 
 ;;9002226.02101,"174,Y23.8XXS ",.02)
 ;;Y23.8XXS 
 ;;9002226.02101,"174,Y23.8XXS ",.03)
 ;;30
 ;;9002226.02101,"174,Y23.9XXA ",.01)
 ;;Y23.9XXA 
 ;;9002226.02101,"174,Y23.9XXA ",.02)
 ;;Y23.9XXA 
 ;;9002226.02101,"174,Y23.9XXA ",.03)
 ;;30
 ;;9002226.02101,"174,Y23.9XXD ",.01)
 ;;Y23.9XXD 
 ;;9002226.02101,"174,Y23.9XXD ",.02)
 ;;Y23.9XXD 
 ;;9002226.02101,"174,Y23.9XXD ",.03)
 ;;30
 ;;9002226.02101,"174,Y23.9XXS ",.01)
 ;;Y23.9XXS 
 ;;9002226.02101,"174,Y23.9XXS ",.02)
 ;;Y23.9XXS 
 ;;9002226.02101,"174,Y23.9XXS ",.03)
 ;;30
 ;;9002226.02101,"174,Y24.0XXA ",.01)
 ;;Y24.0XXA 
 ;;9002226.02101,"174,Y24.0XXA ",.02)
 ;;Y24.0XXA 
 ;;9002226.02101,"174,Y24.0XXA ",.03)
 ;;30
 ;;9002226.02101,"174,Y24.0XXD ",.01)
 ;;Y24.0XXD 
 ;;9002226.02101,"174,Y24.0XXD ",.02)
 ;;Y24.0XXD 
 ;;9002226.02101,"174,Y24.0XXD ",.03)
 ;;30
 ;;9002226.02101,"174,Y24.0XXS ",.01)
 ;;Y24.0XXS 
 ;;9002226.02101,"174,Y24.0XXS ",.02)
 ;;Y24.0XXS 
 ;;9002226.02101,"174,Y24.0XXS ",.03)
 ;;30
 ;;9002226.02101,"174,Y24.8XXA ",.01)
 ;;Y24.8XXA 
 ;;9002226.02101,"174,Y24.8XXA ",.02)
 ;;Y24.8XXA 
 ;;9002226.02101,"174,Y24.8XXA ",.03)
 ;;30
 ;;9002226.02101,"174,Y24.8XXD ",.01)
 ;;Y24.8XXD 
 ;;9002226.02101,"174,Y24.8XXD ",.02)
 ;;Y24.8XXD 
 ;;9002226.02101,"174,Y24.8XXD ",.03)
 ;;30
 ;;9002226.02101,"174,Y24.8XXS ",.01)
 ;;Y24.8XXS 
 ;;9002226.02101,"174,Y24.8XXS ",.02)
 ;;Y24.8XXS 
 ;;9002226.02101,"174,Y24.8XXS ",.03)
 ;;30
 ;;9002226.02101,"174,Y24.9XXA ",.01)
 ;;Y24.9XXA 
 ;;9002226.02101,"174,Y24.9XXA ",.02)
 ;;Y24.9XXA 
 ;;9002226.02101,"174,Y24.9XXA ",.03)
 ;;30
 ;;9002226.02101,"174,Y24.9XXD ",.01)
 ;;Y24.9XXD 
 ;;9002226.02101,"174,Y24.9XXD ",.02)
 ;;Y24.9XXD 
 ;;9002226.02101,"174,Y24.9XXD ",.03)
 ;;30
 ;;9002226.02101,"174,Y24.9XXS ",.01)
 ;;Y24.9XXS 
 ;;9002226.02101,"174,Y24.9XXS ",.02)
 ;;Y24.9XXS 
 ;;9002226.02101,"174,Y24.9XXS ",.03)
 ;;30
 ;;9002226.02101,"174,Y25.XXXA ",.01)
 ;;Y25.XXXA 
 ;;9002226.02101,"174,Y25.XXXA ",.02)
 ;;Y25.XXXA 
 ;;9002226.02101,"174,Y25.XXXA ",.03)
 ;;30
 ;;9002226.02101,"174,Y25.XXXD ",.01)
 ;;Y25.XXXD 
 ;;9002226.02101,"174,Y25.XXXD ",.02)
 ;;Y25.XXXD 
 ;;9002226.02101,"174,Y25.XXXD ",.03)
 ;;30
 ;;9002226.02101,"174,Y25.XXXS ",.01)
 ;;Y25.XXXS 
 ;;9002226.02101,"174,Y25.XXXS ",.02)
 ;;Y25.XXXS 
 ;;9002226.02101,"174,Y25.XXXS ",.03)
 ;;30
 ;;9002226.02101,"174,Y26.XXXA ",.01)
 ;;Y26.XXXA 
 ;;9002226.02101,"174,Y26.XXXA ",.02)
 ;;Y26.XXXA 
 ;;9002226.02101,"174,Y26.XXXA ",.03)
 ;;30
 ;;9002226.02101,"174,Y26.XXXD ",.01)
 ;;Y26.XXXD 
 ;;9002226.02101,"174,Y26.XXXD ",.02)
 ;;Y26.XXXD 
 ;;9002226.02101,"174,Y26.XXXD ",.03)
 ;;30
 ;;9002226.02101,"174,Y26.XXXS ",.01)
 ;;Y26.XXXS 
 ;;9002226.02101,"174,Y26.XXXS ",.02)
 ;;Y26.XXXS 
 ;;9002226.02101,"174,Y26.XXXS ",.03)
 ;;30
 ;;9002226.02101,"174,Y27.0XXA ",.01)
 ;;Y27.0XXA 
 ;;9002226.02101,"174,Y27.0XXA ",.02)
 ;;Y27.0XXA 
 ;;9002226.02101,"174,Y27.0XXA ",.03)
 ;;30
 ;;9002226.02101,"174,Y27.0XXD ",.01)
 ;;Y27.0XXD 
 ;;9002226.02101,"174,Y27.0XXD ",.02)
 ;;Y27.0XXD 
 ;;9002226.02101,"174,Y27.0XXD ",.03)
 ;;30
 ;;9002226.02101,"174,Y27.0XXS ",.01)
 ;;Y27.0XXS 
 ;;9002226.02101,"174,Y27.0XXS ",.02)
 ;;Y27.0XXS 
 ;;9002226.02101,"174,Y27.0XXS ",.03)
 ;;30
 ;;9002226.02101,"174,Y27.1XXA ",.01)
 ;;Y27.1XXA 
 ;;9002226.02101,"174,Y27.1XXA ",.02)
 ;;Y27.1XXA 
 ;;9002226.02101,"174,Y27.1XXA ",.03)
 ;;30
 ;;9002226.02101,"174,Y27.1XXD ",.01)
 ;;Y27.1XXD 
 ;;9002226.02101,"174,Y27.1XXD ",.02)
 ;;Y27.1XXD 
 ;;9002226.02101,"174,Y27.1XXD ",.03)
 ;;30
 ;;9002226.02101,"174,Y27.1XXS ",.01)
 ;;Y27.1XXS 
 ;;9002226.02101,"174,Y27.1XXS ",.02)
 ;;Y27.1XXS 
 ;;9002226.02101,"174,Y27.1XXS ",.03)
 ;;30
 ;;9002226.02101,"174,Y27.2XXA ",.01)
 ;;Y27.2XXA 
 ;;9002226.02101,"174,Y27.2XXA ",.02)
 ;;Y27.2XXA 
 ;;9002226.02101,"174,Y27.2XXA ",.03)
 ;;30
 ;;9002226.02101,"174,Y27.2XXD ",.01)
 ;;Y27.2XXD 
 ;;9002226.02101,"174,Y27.2XXD ",.02)
 ;;Y27.2XXD 
 ;;9002226.02101,"174,Y27.2XXD ",.03)
 ;;30
 ;;9002226.02101,"174,Y27.2XXS ",.01)
 ;;Y27.2XXS 
 ;;9002226.02101,"174,Y27.2XXS ",.02)
 ;;Y27.2XXS 
 ;;9002226.02101,"174,Y27.2XXS ",.03)
 ;;30
 ;;9002226.02101,"174,Y27.3XXA ",.01)
 ;;Y27.3XXA 
 ;;9002226.02101,"174,Y27.3XXA ",.02)
 ;;Y27.3XXA 
 ;;9002226.02101,"174,Y27.3XXA ",.03)
 ;;30
 ;;9002226.02101,"174,Y27.3XXD ",.01)
 ;;Y27.3XXD 
 ;;9002226.02101,"174,Y27.3XXD ",.02)
 ;;Y27.3XXD 
 ;;9002226.02101,"174,Y27.3XXD ",.03)
 ;;30
 ;;9002226.02101,"174,Y27.3XXS ",.01)
 ;;Y27.3XXS 
 ;;9002226.02101,"174,Y27.3XXS ",.02)
 ;;Y27.3XXS 
 ;;9002226.02101,"174,Y27.3XXS ",.03)
 ;;30
 ;;9002226.02101,"174,Y27.8XXA ",.01)
 ;;Y27.8XXA 
 ;;9002226.02101,"174,Y27.8XXA ",.02)
 ;;Y27.8XXA 
 ;;9002226.02101,"174,Y27.8XXA ",.03)
 ;;30
 ;;9002226.02101,"174,Y27.8XXD ",.01)
 ;;Y27.8XXD 
 ;;9002226.02101,"174,Y27.8XXD ",.02)
 ;;Y27.8XXD 
 ;;9002226.02101,"174,Y27.8XXD ",.03)
 ;;30
 ;;9002226.02101,"174,Y27.8XXS ",.01)
 ;;Y27.8XXS 
 ;;9002226.02101,"174,Y27.8XXS ",.02)
 ;;Y27.8XXS 
 ;;9002226.02101,"174,Y27.8XXS ",.03)
 ;;30
 ;;9002226.02101,"174,Y27.9XXA ",.01)
 ;;Y27.9XXA 
 ;;9002226.02101,"174,Y27.9XXA ",.02)
 ;;Y27.9XXA 
 ;;9002226.02101,"174,Y27.9XXA ",.03)
 ;;30
 ;;9002226.02101,"174,Y27.9XXD ",.01)
 ;;Y27.9XXD 
 ;;9002226.02101,"174,Y27.9XXD ",.02)
 ;;Y27.9XXD 
 ;;9002226.02101,"174,Y27.9XXD ",.03)
 ;;30
 ;;9002226.02101,"174,Y27.9XXS ",.01)
 ;;Y27.9XXS 
 ;;9002226.02101,"174,Y27.9XXS ",.02)
 ;;Y27.9XXS 
 ;;9002226.02101,"174,Y27.9XXS ",.03)
 ;;30
 ;;9002226.02101,"174,Y28.0XXA ",.01)
 ;;Y28.0XXA 
 ;;9002226.02101,"174,Y28.0XXA ",.02)
 ;;Y28.0XXA 
 ;;9002226.02101,"174,Y28.0XXA ",.03)
 ;;30
 ;;9002226.02101,"174,Y28.0XXD ",.01)
 ;;Y28.0XXD 
 ;;9002226.02101,"174,Y28.0XXD ",.02)
 ;;Y28.0XXD 
 ;;9002226.02101,"174,Y28.0XXD ",.03)
 ;;30
 ;;9002226.02101,"174,Y28.0XXS ",.01)
 ;;Y28.0XXS 
 ;;9002226.02101,"174,Y28.0XXS ",.02)
 ;;Y28.0XXS 
 ;;9002226.02101,"174,Y28.0XXS ",.03)
 ;;30
 ;;9002226.02101,"174,Y28.1XXA ",.01)
 ;;Y28.1XXA 
 ;;9002226.02101,"174,Y28.1XXA ",.02)
 ;;Y28.1XXA 
 ;;9002226.02101,"174,Y28.1XXA ",.03)
 ;;30
 ;;9002226.02101,"174,Y28.1XXD ",.01)
 ;;Y28.1XXD 
 ;;9002226.02101,"174,Y28.1XXD ",.02)
 ;;Y28.1XXD 
 ;;9002226.02101,"174,Y28.1XXD ",.03)
 ;;30
 ;;9002226.02101,"174,Y28.1XXS ",.01)
 ;;Y28.1XXS 
 ;;9002226.02101,"174,Y28.1XXS ",.02)
 ;;Y28.1XXS 
 ;;9002226.02101,"174,Y28.1XXS ",.03)
 ;;30
 ;;9002226.02101,"174,Y28.2XXA ",.01)
 ;;Y28.2XXA 
 ;;9002226.02101,"174,Y28.2XXA ",.02)
 ;;Y28.2XXA 
 ;;9002226.02101,"174,Y28.2XXA ",.03)
 ;;30
 ;;9002226.02101,"174,Y28.2XXD ",.01)
 ;;Y28.2XXD 
 ;;9002226.02101,"174,Y28.2XXD ",.02)
 ;;Y28.2XXD 
 ;;9002226.02101,"174,Y28.2XXD ",.03)
 ;;30
 ;;9002226.02101,"174,Y28.2XXS ",.01)
 ;;Y28.2XXS 
 ;;9002226.02101,"174,Y28.2XXS ",.02)
 ;;Y28.2XXS 
 ;;9002226.02101,"174,Y28.2XXS ",.03)
 ;;30
 ;;9002226.02101,"174,Y28.8XXA ",.01)
 ;;Y28.8XXA 
 ;;9002226.02101,"174,Y28.8XXA ",.02)
 ;;Y28.8XXA 
 ;;9002226.02101,"174,Y28.8XXA ",.03)
 ;;30
 ;;9002226.02101,"174,Y28.8XXD ",.01)
 ;;Y28.8XXD 
 ;;9002226.02101,"174,Y28.8XXD ",.02)
 ;;Y28.8XXD 
 ;;9002226.02101,"174,Y28.8XXD ",.03)
 ;;30
 ;;9002226.02101,"174,Y28.8XXS ",.01)
 ;;Y28.8XXS 
 ;;9002226.02101,"174,Y28.8XXS ",.02)
 ;;Y28.8XXS 
 ;;9002226.02101,"174,Y28.8XXS ",.03)
 ;;30
 ;;9002226.02101,"174,Y28.9XXA ",.01)
 ;;Y28.9XXA 
 ;;9002226.02101,"174,Y28.9XXA ",.02)
 ;;Y28.9XXA 
 ;;9002226.02101,"174,Y28.9XXA ",.03)
 ;;30
 ;;9002226.02101,"174,Y28.9XXD ",.01)
 ;;Y28.9XXD 
 ;;9002226.02101,"174,Y28.9XXD ",.02)
 ;;Y28.9XXD 
 ;;9002226.02101,"174,Y28.9XXD ",.03)
 ;;30
 ;;9002226.02101,"174,Y28.9XXS ",.01)
 ;;Y28.9XXS 
 ;;9002226.02101,"174,Y28.9XXS ",.02)
 ;;Y28.9XXS 
 ;;9002226.02101,"174,Y28.9XXS ",.03)
 ;;30
 ;;9002226.02101,"174,Y29.XXXA ",.01)
 ;;Y29.XXXA 
 ;;9002226.02101,"174,Y29.XXXA ",.02)
 ;;Y29.XXXA 
 ;;9002226.02101,"174,Y29.XXXA ",.03)
 ;;30
 ;;9002226.02101,"174,Y29.XXXD ",.01)
 ;;Y29.XXXD 
 ;;9002226.02101,"174,Y29.XXXD ",.02)
 ;;Y29.XXXD 
 ;;9002226.02101,"174,Y29.XXXD ",.03)
 ;;30
 ;;9002226.02101,"174,Y29.XXXS ",.01)
 ;;Y29.XXXS 
 ;;9002226.02101,"174,Y29.XXXS ",.02)
 ;;Y29.XXXS 
 ;;9002226.02101,"174,Y29.XXXS ",.03)
 ;;30
 ;;9002226.02101,"174,Y30.XXXA ",.01)
 ;;Y30.XXXA 
 ;;9002226.02101,"174,Y30.XXXA ",.02)
 ;;Y30.XXXA 
 ;;9002226.02101,"174,Y30.XXXA ",.03)
 ;;30
 ;;9002226.02101,"174,Y30.XXXD ",.01)
 ;;Y30.XXXD 
 ;;9002226.02101,"174,Y30.XXXD ",.02)
 ;;Y30.XXXD 
 ;;9002226.02101,"174,Y30.XXXD ",.03)
 ;;30
 ;;9002226.02101,"174,Y30.XXXS ",.01)
 ;;Y30.XXXS 
 ;;9002226.02101,"174,Y30.XXXS ",.02)
 ;;Y30.XXXS 
 ;;9002226.02101,"174,Y30.XXXS ",.03)
 ;;30
 ;;9002226.02101,"174,Y31.XXXA ",.01)
 ;;Y31.XXXA 
 ;;9002226.02101,"174,Y31.XXXA ",.02)
 ;;Y31.XXXA 
 ;;9002226.02101,"174,Y31.XXXA ",.03)
 ;;30
 ;;9002226.02101,"174,Y31.XXXD ",.01)
 ;;Y31.XXXD 
 ;;9002226.02101,"174,Y31.XXXD ",.02)
 ;;Y31.XXXD 
 ;;9002226.02101,"174,Y31.XXXD ",.03)
 ;;30
 ;;9002226.02101,"174,Y31.XXXS ",.01)
 ;;Y31.XXXS 
 ;;9002226.02101,"174,Y31.XXXS ",.02)
 ;;Y31.XXXS 
 ;;9002226.02101,"174,Y31.XXXS ",.03)
 ;;30
 ;;9002226.02101,"174,Y32.XXXA ",.01)
 ;;Y32.XXXA 
 ;;9002226.02101,"174,Y32.XXXA ",.02)
 ;;Y32.XXXA 
 ;;9002226.02101,"174,Y32.XXXA ",.03)
 ;;30
 ;;9002226.02101,"174,Y32.XXXD ",.01)
 ;;Y32.XXXD 
 ;;9002226.02101,"174,Y32.XXXD ",.02)
 ;;Y32.XXXD 
 ;;9002226.02101,"174,Y32.XXXD ",.03)
 ;;30
 ;;9002226.02101,"174,Y32.XXXS ",.01)
 ;;Y32.XXXS 
 ;;9002226.02101,"174,Y32.XXXS ",.02)
 ;;Y32.XXXS 
 ;;9002226.02101,"174,Y32.XXXS ",.03)
 ;;30
 ;;9002226.02101,"174,Y33.XXXA ",.01)
 ;;Y33.XXXA 
 ;;9002226.02101,"174,Y33.XXXA ",.02)
 ;;Y33.XXXA 
 ;;9002226.02101,"174,Y33.XXXA ",.03)
 ;;30
 ;;9002226.02101,"174,Y33.XXXD ",.01)
 ;;Y33.XXXD 
 ;;9002226.02101,"174,Y33.XXXD ",.02)
 ;;Y33.XXXD 
 ;;9002226.02101,"174,Y33.XXXD ",.03)
 ;;30
 ;;9002226.02101,"174,Y33.XXXS ",.01)
 ;;Y33.XXXS 
 ;;9002226.02101,"174,Y33.XXXS ",.02)
 ;;Y33.XXXS 
 ;;9002226.02101,"174,Y33.XXXS ",.03)
 ;;30
 ;;9002226.04101,"174,1",.01)
 ;;APCL