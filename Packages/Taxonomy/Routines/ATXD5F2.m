ATXD5F2 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 12, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"159,W53.89XA ",.03)
 ;;30
 ;;9002226.02101,"159,W53.89XD ",.01)
 ;;W53.89XD 
 ;;9002226.02101,"159,W53.89XD ",.02)
 ;;W53.89XD 
 ;;9002226.02101,"159,W53.89XD ",.03)
 ;;30
 ;;9002226.02101,"159,W53.89XS ",.01)
 ;;W53.89XS 
 ;;9002226.02101,"159,W53.89XS ",.02)
 ;;W53.89XS 
 ;;9002226.02101,"159,W53.89XS ",.03)
 ;;30
 ;;9002226.02101,"159,W54.0XXA ",.01)
 ;;W54.0XXA 
 ;;9002226.02101,"159,W54.0XXA ",.02)
 ;;W54.0XXA 
 ;;9002226.02101,"159,W54.0XXA ",.03)
 ;;30
 ;;9002226.02101,"159,W54.0XXD ",.01)
 ;;W54.0XXD 
 ;;9002226.02101,"159,W54.0XXD ",.02)
 ;;W54.0XXD 
 ;;9002226.02101,"159,W54.0XXD ",.03)
 ;;30
 ;;9002226.02101,"159,W54.0XXS ",.01)
 ;;W54.0XXS 
 ;;9002226.02101,"159,W54.0XXS ",.02)
 ;;W54.0XXS 
 ;;9002226.02101,"159,W54.0XXS ",.03)
 ;;30
 ;;9002226.02101,"159,W54.1XXA ",.01)
 ;;W54.1XXA 
 ;;9002226.02101,"159,W54.1XXA ",.02)
 ;;W54.1XXA 
 ;;9002226.02101,"159,W54.1XXA ",.03)
 ;;30
 ;;9002226.02101,"159,W54.1XXD ",.01)
 ;;W54.1XXD 
 ;;9002226.02101,"159,W54.1XXD ",.02)
 ;;W54.1XXD 
 ;;9002226.02101,"159,W54.1XXD ",.03)
 ;;30
 ;;9002226.02101,"159,W54.1XXS ",.01)
 ;;W54.1XXS 
 ;;9002226.02101,"159,W54.1XXS ",.02)
 ;;W54.1XXS 
 ;;9002226.02101,"159,W54.1XXS ",.03)
 ;;30
 ;;9002226.02101,"159,W54.8XXA ",.01)
 ;;W54.8XXA 
 ;;9002226.02101,"159,W54.8XXA ",.02)
 ;;W54.8XXA 
 ;;9002226.02101,"159,W54.8XXA ",.03)
 ;;30
 ;;9002226.02101,"159,W54.8XXD ",.01)
 ;;W54.8XXD 
 ;;9002226.02101,"159,W54.8XXD ",.02)
 ;;W54.8XXD 
 ;;9002226.02101,"159,W54.8XXD ",.03)
 ;;30
 ;;9002226.02101,"159,W54.8XXS ",.01)
 ;;W54.8XXS 
 ;;9002226.02101,"159,W54.8XXS ",.02)
 ;;W54.8XXS 
 ;;9002226.02101,"159,W54.8XXS ",.03)
 ;;30
 ;;9002226.02101,"159,W55.01XA ",.01)
 ;;W55.01XA 
 ;;9002226.02101,"159,W55.01XA ",.02)
 ;;W55.01XA 
 ;;9002226.02101,"159,W55.01XA ",.03)
 ;;30
 ;;9002226.02101,"159,W55.01XD ",.01)
 ;;W55.01XD 
 ;;9002226.02101,"159,W55.01XD ",.02)
 ;;W55.01XD 
 ;;9002226.02101,"159,W55.01XD ",.03)
 ;;30
 ;;9002226.02101,"159,W55.01XS ",.01)
 ;;W55.01XS 
 ;;9002226.02101,"159,W55.01XS ",.02)
 ;;W55.01XS 
 ;;9002226.02101,"159,W55.01XS ",.03)
 ;;30
 ;;9002226.02101,"159,W55.03XA ",.01)
 ;;W55.03XA 
 ;;9002226.02101,"159,W55.03XA ",.02)
 ;;W55.03XA 
 ;;9002226.02101,"159,W55.03XA ",.03)
 ;;30
 ;;9002226.02101,"159,W55.03XD ",.01)
 ;;W55.03XD 
 ;;9002226.02101,"159,W55.03XD ",.02)
 ;;W55.03XD 
 ;;9002226.02101,"159,W55.03XD ",.03)
 ;;30
 ;;9002226.02101,"159,W55.03XS ",.01)
 ;;W55.03XS 
 ;;9002226.02101,"159,W55.03XS ",.02)
 ;;W55.03XS 
 ;;9002226.02101,"159,W55.03XS ",.03)
 ;;30
 ;;9002226.02101,"159,W55.09XA ",.01)
 ;;W55.09XA 
 ;;9002226.02101,"159,W55.09XA ",.02)
 ;;W55.09XA 
 ;;9002226.02101,"159,W55.09XA ",.03)
 ;;30
 ;;9002226.02101,"159,W55.09XD ",.01)
 ;;W55.09XD 
 ;;9002226.02101,"159,W55.09XD ",.02)
 ;;W55.09XD 
 ;;9002226.02101,"159,W55.09XD ",.03)
 ;;30
 ;;9002226.02101,"159,W55.09XS ",.01)
 ;;W55.09XS 
 ;;9002226.02101,"159,W55.09XS ",.02)
 ;;W55.09XS 
 ;;9002226.02101,"159,W55.09XS ",.03)
 ;;30
 ;;9002226.02101,"159,W55.11XA ",.01)
 ;;W55.11XA 
 ;;9002226.02101,"159,W55.11XA ",.02)
 ;;W55.11XA 
 ;;9002226.02101,"159,W55.11XA ",.03)
 ;;30
 ;;9002226.02101,"159,W55.11XD ",.01)
 ;;W55.11XD 
 ;;9002226.02101,"159,W55.11XD ",.02)
 ;;W55.11XD 
 ;;9002226.02101,"159,W55.11XD ",.03)
 ;;30
 ;;9002226.02101,"159,W55.11XS ",.01)
 ;;W55.11XS 
 ;;9002226.02101,"159,W55.11XS ",.02)
 ;;W55.11XS 
 ;;9002226.02101,"159,W55.11XS ",.03)
 ;;30
 ;;9002226.02101,"159,W55.12XA ",.01)
 ;;W55.12XA 
 ;;9002226.02101,"159,W55.12XA ",.02)
 ;;W55.12XA 
 ;;9002226.02101,"159,W55.12XA ",.03)
 ;;30
 ;;9002226.02101,"159,W55.12XD ",.01)
 ;;W55.12XD 
 ;;9002226.02101,"159,W55.12XD ",.02)
 ;;W55.12XD 
 ;;9002226.02101,"159,W55.12XD ",.03)
 ;;30
 ;;9002226.02101,"159,W55.12XS ",.01)
 ;;W55.12XS 
 ;;9002226.02101,"159,W55.12XS ",.02)
 ;;W55.12XS 
 ;;9002226.02101,"159,W55.12XS ",.03)
 ;;30
 ;;9002226.02101,"159,W55.19XA ",.01)
 ;;W55.19XA 
 ;;9002226.02101,"159,W55.19XA ",.02)
 ;;W55.19XA 
 ;;9002226.02101,"159,W55.19XA ",.03)
 ;;30
 ;;9002226.02101,"159,W55.19XD ",.01)
 ;;W55.19XD 
 ;;9002226.02101,"159,W55.19XD ",.02)
 ;;W55.19XD 
 ;;9002226.02101,"159,W55.19XD ",.03)
 ;;30
 ;;9002226.02101,"159,W55.19XS ",.01)
 ;;W55.19XS 
 ;;9002226.02101,"159,W55.19XS ",.02)
 ;;W55.19XS 
 ;;9002226.02101,"159,W55.19XS ",.03)
 ;;30
 ;;9002226.02101,"159,W55.21XA ",.01)
 ;;W55.21XA 
 ;;9002226.02101,"159,W55.21XA ",.02)
 ;;W55.21XA 
 ;;9002226.02101,"159,W55.21XA ",.03)
 ;;30
 ;;9002226.02101,"159,W55.21XD ",.01)
 ;;W55.21XD 
 ;;9002226.02101,"159,W55.21XD ",.02)
 ;;W55.21XD 
 ;;9002226.02101,"159,W55.21XD ",.03)
 ;;30
 ;;9002226.02101,"159,W55.21XS ",.01)
 ;;W55.21XS 
 ;;9002226.02101,"159,W55.21XS ",.02)
 ;;W55.21XS 
 ;;9002226.02101,"159,W55.21XS ",.03)
 ;;30
 ;;9002226.02101,"159,W55.22XA ",.01)
 ;;W55.22XA 
 ;;9002226.02101,"159,W55.22XA ",.02)
 ;;W55.22XA 
 ;;9002226.02101,"159,W55.22XA ",.03)
 ;;30
 ;;9002226.02101,"159,W55.22XD ",.01)
 ;;W55.22XD 
 ;;9002226.02101,"159,W55.22XD ",.02)
 ;;W55.22XD 
 ;;9002226.02101,"159,W55.22XD ",.03)
 ;;30
 ;;9002226.02101,"159,W55.22XS ",.01)
 ;;W55.22XS 
 ;;9002226.02101,"159,W55.22XS ",.02)
 ;;W55.22XS 
 ;;9002226.02101,"159,W55.22XS ",.03)
 ;;30
 ;;9002226.02101,"159,W55.29XA ",.01)
 ;;W55.29XA 
 ;;9002226.02101,"159,W55.29XA ",.02)
 ;;W55.29XA 
 ;;9002226.02101,"159,W55.29XA ",.03)
 ;;30
 ;;9002226.02101,"159,W55.29XD ",.01)
 ;;W55.29XD 
 ;;9002226.02101,"159,W55.29XD ",.02)
 ;;W55.29XD 
 ;;9002226.02101,"159,W55.29XD ",.03)
 ;;30
 ;;9002226.02101,"159,W55.29XS ",.01)
 ;;W55.29XS 
 ;;9002226.02101,"159,W55.29XS ",.02)
 ;;W55.29XS 
 ;;9002226.02101,"159,W55.29XS ",.03)
 ;;30
 ;;9002226.02101,"159,W55.31XA ",.01)
 ;;W55.31XA 
 ;;9002226.02101,"159,W55.31XA ",.02)
 ;;W55.31XA 
 ;;9002226.02101,"159,W55.31XA ",.03)
 ;;30
 ;;9002226.02101,"159,W55.31XD ",.01)
 ;;W55.31XD 
 ;;9002226.02101,"159,W55.31XD ",.02)
 ;;W55.31XD 
 ;;9002226.02101,"159,W55.31XD ",.03)
 ;;30
 ;;9002226.02101,"159,W55.31XS ",.01)
 ;;W55.31XS 
 ;;9002226.02101,"159,W55.31XS ",.02)
 ;;W55.31XS 
 ;;9002226.02101,"159,W55.31XS ",.03)
 ;;30
 ;;9002226.02101,"159,W55.32XA ",.01)
 ;;W55.32XA 
 ;;9002226.02101,"159,W55.32XA ",.02)
 ;;W55.32XA 
 ;;9002226.02101,"159,W55.32XA ",.03)
 ;;30
 ;;9002226.02101,"159,W55.32XD ",.01)
 ;;W55.32XD 
 ;;9002226.02101,"159,W55.32XD ",.02)
 ;;W55.32XD 
 ;;9002226.02101,"159,W55.32XD ",.03)
 ;;30
 ;;9002226.02101,"159,W55.32XS ",.01)
 ;;W55.32XS 
 ;;9002226.02101,"159,W55.32XS ",.02)
 ;;W55.32XS 
 ;;9002226.02101,"159,W55.32XS ",.03)
 ;;30
 ;;9002226.02101,"159,W55.39XA ",.01)
 ;;W55.39XA 
 ;;9002226.02101,"159,W55.39XA ",.02)
 ;;W55.39XA 
 ;;9002226.02101,"159,W55.39XA ",.03)
 ;;30
 ;;9002226.02101,"159,W55.39XD ",.01)
 ;;W55.39XD 
 ;;9002226.02101,"159,W55.39XD ",.02)
 ;;W55.39XD 
 ;;9002226.02101,"159,W55.39XD ",.03)
 ;;30
 ;;9002226.02101,"159,W55.39XS ",.01)
 ;;W55.39XS 
 ;;9002226.02101,"159,W55.39XS ",.02)
 ;;W55.39XS 
 ;;9002226.02101,"159,W55.39XS ",.03)
 ;;30
 ;;9002226.02101,"159,W55.41XA ",.01)
 ;;W55.41XA 
 ;;9002226.02101,"159,W55.41XA ",.02)
 ;;W55.41XA 
 ;;9002226.02101,"159,W55.41XA ",.03)
 ;;30
 ;;9002226.02101,"159,W55.41XD ",.01)
 ;;W55.41XD 
 ;;9002226.02101,"159,W55.41XD ",.02)
 ;;W55.41XD 
 ;;9002226.02101,"159,W55.41XD ",.03)
 ;;30
 ;;9002226.02101,"159,W55.41XS ",.01)
 ;;W55.41XS 
 ;;9002226.02101,"159,W55.41XS ",.02)
 ;;W55.41XS 
 ;;9002226.02101,"159,W55.41XS ",.03)
 ;;30
 ;;9002226.02101,"159,W55.42XA ",.01)
 ;;W55.42XA 
 ;;9002226.02101,"159,W55.42XA ",.02)
 ;;W55.42XA 
 ;;9002226.02101,"159,W55.42XA ",.03)
 ;;30
 ;;9002226.02101,"159,W55.42XD ",.01)
 ;;W55.42XD 
 ;;9002226.02101,"159,W55.42XD ",.02)
 ;;W55.42XD 
 ;;9002226.02101,"159,W55.42XD ",.03)
 ;;30
 ;;9002226.02101,"159,W55.42XS ",.01)
 ;;W55.42XS 
 ;;9002226.02101,"159,W55.42XS ",.02)
 ;;W55.42XS 
 ;;9002226.02101,"159,W55.42XS ",.03)
 ;;30
 ;;9002226.02101,"159,W55.49XA ",.01)
 ;;W55.49XA 
 ;;9002226.02101,"159,W55.49XA ",.02)
 ;;W55.49XA 
 ;;9002226.02101,"159,W55.49XA ",.03)
 ;;30
 ;;9002226.02101,"159,W55.49XD ",.01)
 ;;W55.49XD 
 ;;9002226.02101,"159,W55.49XD ",.02)
 ;;W55.49XD 
 ;;9002226.02101,"159,W55.49XD ",.03)
 ;;30
 ;;9002226.02101,"159,W55.49XS ",.01)
 ;;W55.49XS 
 ;;9002226.02101,"159,W55.49XS ",.02)
 ;;W55.49XS 
 ;;9002226.02101,"159,W55.49XS ",.03)
 ;;30
 ;;9002226.02101,"159,W55.51XA ",.01)
 ;;W55.51XA 
 ;;9002226.02101,"159,W55.51XA ",.02)
 ;;W55.51XA 
 ;;9002226.02101,"159,W55.51XA ",.03)
 ;;30
 ;;9002226.02101,"159,W55.51XD ",.01)
 ;;W55.51XD 
 ;;9002226.02101,"159,W55.51XD ",.02)
 ;;W55.51XD 
 ;;9002226.02101,"159,W55.51XD ",.03)
 ;;30
 ;;9002226.02101,"159,W55.51XS ",.01)
 ;;W55.51XS 
 ;;9002226.02101,"159,W55.51XS ",.02)
 ;;W55.51XS 
 ;;9002226.02101,"159,W55.51XS ",.03)
 ;;30
 ;;9002226.02101,"159,W55.52XA ",.01)
 ;;W55.52XA 
 ;;9002226.02101,"159,W55.52XA ",.02)
 ;;W55.52XA 
 ;;9002226.02101,"159,W55.52XA ",.03)
 ;;30
 ;;9002226.02101,"159,W55.52XD ",.01)
 ;;W55.52XD 
 ;;9002226.02101,"159,W55.52XD ",.02)
 ;;W55.52XD 
 ;;9002226.02101,"159,W55.52XD ",.03)
 ;;30
 ;;9002226.02101,"159,W55.52XS ",.01)
 ;;W55.52XS 
 ;;9002226.02101,"159,W55.52XS ",.02)
 ;;W55.52XS 
 ;;9002226.02101,"159,W55.52XS ",.03)
 ;;30
 ;;9002226.02101,"159,W55.59XA ",.01)
 ;;W55.59XA 
 ;;9002226.02101,"159,W55.59XA ",.02)
 ;;W55.59XA 
 ;;9002226.02101,"159,W55.59XA ",.03)
 ;;30
 ;;9002226.02101,"159,W55.59XD ",.01)
 ;;W55.59XD 
 ;;9002226.02101,"159,W55.59XD ",.02)
 ;;W55.59XD 
 ;;9002226.02101,"159,W55.59XD ",.03)
 ;;30
 ;;9002226.02101,"159,W55.59XS ",.01)
 ;;W55.59XS 
 ;;9002226.02101,"159,W55.59XS ",.02)
 ;;W55.59XS 
 ;;9002226.02101,"159,W55.59XS ",.03)
 ;;30
 ;;9002226.02101,"159,W55.81XA ",.01)
 ;;W55.81XA 
 ;;9002226.02101,"159,W55.81XA ",.02)
 ;;W55.81XA 
 ;;9002226.02101,"159,W55.81XA ",.03)
 ;;30
 ;;9002226.02101,"159,W55.81XD ",.01)
 ;;W55.81XD 
 ;;9002226.02101,"159,W55.81XD ",.02)
 ;;W55.81XD 
 ;;9002226.02101,"159,W55.81XD ",.03)
 ;;30
 ;;9002226.02101,"159,W55.81XS ",.01)
 ;;W55.81XS 
 ;;9002226.02101,"159,W55.81XS ",.02)
 ;;W55.81XS 
 ;;9002226.02101,"159,W55.81XS ",.03)
 ;;30
 ;;9002226.02101,"159,W55.82XA ",.01)
 ;;W55.82XA 
 ;;9002226.02101,"159,W55.82XA ",.02)
 ;;W55.82XA 
 ;;9002226.02101,"159,W55.82XA ",.03)
 ;;30
 ;;9002226.02101,"159,W55.82XD ",.01)
 ;;W55.82XD 
 ;;9002226.02101,"159,W55.82XD ",.02)
 ;;W55.82XD 
 ;;9002226.02101,"159,W55.82XD ",.03)
 ;;30
 ;;9002226.02101,"159,W55.82XS ",.01)
 ;;W55.82XS 
 ;;9002226.02101,"159,W55.82XS ",.02)
 ;;W55.82XS 
 ;;9002226.02101,"159,W55.82XS ",.03)
 ;;30
 ;;9002226.02101,"159,W55.89XA ",.01)
 ;;W55.89XA 
 ;;9002226.02101,"159,W55.89XA ",.02)
 ;;W55.89XA 
 ;;9002226.02101,"159,W55.89XA ",.03)
 ;;30
 ;;9002226.02101,"159,W55.89XD ",.01)
 ;;W55.89XD 
 ;;9002226.02101,"159,W55.89XD ",.02)
 ;;W55.89XD 
 ;;9002226.02101,"159,W55.89XD ",.03)
 ;;30
 ;;9002226.02101,"159,W55.89XS ",.01)
 ;;W55.89XS 
 ;;9002226.02101,"159,W55.89XS ",.02)
 ;;W55.89XS 
 ;;9002226.02101,"159,W55.89XS ",.03)
 ;;30
 ;;9002226.02101,"159,W56.01XA ",.01)
 ;;W56.01XA 
 ;;9002226.02101,"159,W56.01XA ",.02)
 ;;W56.01XA 
 ;;9002226.02101,"159,W56.01XA ",.03)
 ;;30
 ;;9002226.02101,"159,W56.01XD ",.01)
 ;;W56.01XD 
 ;;9002226.02101,"159,W56.01XD ",.02)
 ;;W56.01XD 
 ;;9002226.02101,"159,W56.01XD ",.03)
 ;;30
 ;;9002226.02101,"159,W56.01XS ",.01)
 ;;W56.01XS 
 ;;9002226.02101,"159,W56.01XS ",.02)
 ;;W56.01XS 
 ;;9002226.02101,"159,W56.01XS ",.03)
 ;;30
 ;;9002226.02101,"159,W56.02XA ",.01)
 ;;W56.02XA 
 ;;9002226.02101,"159,W56.02XA ",.02)
 ;;W56.02XA 
 ;;9002226.02101,"159,W56.02XA ",.03)
 ;;30
 ;;9002226.02101,"159,W56.02XD ",.01)
 ;;W56.02XD 
 ;;9002226.02101,"159,W56.02XD ",.02)
 ;;W56.02XD 
 ;;9002226.02101,"159,W56.02XD ",.03)
 ;;30
 ;;9002226.02101,"159,W56.02XS ",.01)
 ;;W56.02XS 
 ;;9002226.02101,"159,W56.02XS ",.02)
 ;;W56.02XS 
 ;;9002226.02101,"159,W56.02XS ",.03)
 ;;30
 ;;9002226.02101,"159,W56.09XA ",.01)
 ;;W56.09XA 
 ;;9002226.02101,"159,W56.09XA ",.02)
 ;;W56.09XA 
 ;;9002226.02101,"159,W56.09XA ",.03)
 ;;30
 ;;9002226.02101,"159,W56.09XD ",.01)
 ;;W56.09XD 
 ;;9002226.02101,"159,W56.09XD ",.02)
 ;;W56.09XD 
 ;;9002226.02101,"159,W56.09XD ",.03)
 ;;30
 ;;9002226.02101,"159,W56.09XS ",.01)
 ;;W56.09XS 
 ;;9002226.02101,"159,W56.09XS ",.02)
 ;;W56.09XS 
 ;;9002226.02101,"159,W56.09XS ",.03)
 ;;30
 ;;9002226.02101,"159,W56.11XA ",.01)
 ;;W56.11XA 
 ;;9002226.02101,"159,W56.11XA ",.02)
 ;;W56.11XA 
 ;;9002226.02101,"159,W56.11XA ",.03)
 ;;30
 ;;9002226.02101,"159,W56.11XD ",.01)
 ;;W56.11XD 
 ;;9002226.02101,"159,W56.11XD ",.02)
 ;;W56.11XD 
 ;;9002226.02101,"159,W56.11XD ",.03)
 ;;30
 ;;9002226.02101,"159,W56.11XS ",.01)
 ;;W56.11XS 
 ;;9002226.02101,"159,W56.11XS ",.02)
 ;;W56.11XS 
 ;;9002226.02101,"159,W56.11XS ",.03)
 ;;30
 ;;9002226.02101,"159,W56.12XA ",.01)
 ;;W56.12XA 
 ;;9002226.02101,"159,W56.12XA ",.02)
 ;;W56.12XA 
 ;;9002226.02101,"159,W56.12XA ",.03)
 ;;30
 ;;9002226.02101,"159,W56.12XD ",.01)
 ;;W56.12XD 
 ;;9002226.02101,"159,W56.12XD ",.02)
 ;;W56.12XD 
 ;;9002226.02101,"159,W56.12XD ",.03)
 ;;30
 ;;9002226.02101,"159,W56.12XS ",.01)
 ;;W56.12XS 
 ;;9002226.02101,"159,W56.12XS ",.02)
 ;;W56.12XS 
 ;;9002226.02101,"159,W56.12XS ",.03)
 ;;30
 ;;9002226.02101,"159,W56.19XA ",.01)
 ;;W56.19XA 