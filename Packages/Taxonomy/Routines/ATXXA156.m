ATXXA156 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"873,T53.0X1A ",.02)
 ;;T53.0X1A
 ;;9002226.02101,"873,T53.0X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T53.0X2A ",.01)
 ;;T53.0X2A
 ;;9002226.02101,"873,T53.0X2A ",.02)
 ;;T53.0X2A
 ;;9002226.02101,"873,T53.0X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T53.0X3A ",.01)
 ;;T53.0X3A
 ;;9002226.02101,"873,T53.0X3A ",.02)
 ;;T53.0X3A
 ;;9002226.02101,"873,T53.0X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T53.0X4A ",.01)
 ;;T53.0X4A
 ;;9002226.02101,"873,T53.0X4A ",.02)
 ;;T53.0X4A
 ;;9002226.02101,"873,T53.0X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T53.1X1A ",.01)
 ;;T53.1X1A
 ;;9002226.02101,"873,T53.1X1A ",.02)
 ;;T53.1X1A
 ;;9002226.02101,"873,T53.1X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T53.1X2A ",.01)
 ;;T53.1X2A
 ;;9002226.02101,"873,T53.1X2A ",.02)
 ;;T53.1X2A
 ;;9002226.02101,"873,T53.1X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T53.1X3A ",.01)
 ;;T53.1X3A
 ;;9002226.02101,"873,T53.1X3A ",.02)
 ;;T53.1X3A
 ;;9002226.02101,"873,T53.1X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T53.1X4A ",.01)
 ;;T53.1X4A
 ;;9002226.02101,"873,T53.1X4A ",.02)
 ;;T53.1X4A
 ;;9002226.02101,"873,T53.1X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T53.2X1A ",.01)
 ;;T53.2X1A
 ;;9002226.02101,"873,T53.2X1A ",.02)
 ;;T53.2X1A
 ;;9002226.02101,"873,T53.2X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T53.2X2A ",.01)
 ;;T53.2X2A
 ;;9002226.02101,"873,T53.2X2A ",.02)
 ;;T53.2X2A
 ;;9002226.02101,"873,T53.2X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T53.2X3A ",.01)
 ;;T53.2X3A
 ;;9002226.02101,"873,T53.2X3A ",.02)
 ;;T53.2X3A
 ;;9002226.02101,"873,T53.2X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T53.2X4A ",.01)
 ;;T53.2X4A
 ;;9002226.02101,"873,T53.2X4A ",.02)
 ;;T53.2X4A
 ;;9002226.02101,"873,T53.2X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T53.3X1A ",.01)
 ;;T53.3X1A
 ;;9002226.02101,"873,T53.3X1A ",.02)
 ;;T53.3X1A
 ;;9002226.02101,"873,T53.3X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T53.3X2A ",.01)
 ;;T53.3X2A
 ;;9002226.02101,"873,T53.3X2A ",.02)
 ;;T53.3X2A
 ;;9002226.02101,"873,T53.3X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T53.3X3A ",.01)
 ;;T53.3X3A
 ;;9002226.02101,"873,T53.3X3A ",.02)
 ;;T53.3X3A
 ;;9002226.02101,"873,T53.3X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T53.3X4A ",.01)
 ;;T53.3X4A
 ;;9002226.02101,"873,T53.3X4A ",.02)
 ;;T53.3X4A
 ;;9002226.02101,"873,T53.3X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T53.4X1A ",.01)
 ;;T53.4X1A
 ;;9002226.02101,"873,T53.4X1A ",.02)
 ;;T53.4X1A
 ;;9002226.02101,"873,T53.4X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T53.4X2A ",.01)
 ;;T53.4X2A
 ;;9002226.02101,"873,T53.4X2A ",.02)
 ;;T53.4X2A
 ;;9002226.02101,"873,T53.4X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T53.4X3A ",.01)
 ;;T53.4X3A
 ;;9002226.02101,"873,T53.4X3A ",.02)
 ;;T53.4X3A
 ;;9002226.02101,"873,T53.4X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T53.4X4A ",.01)
 ;;T53.4X4A
 ;;9002226.02101,"873,T53.4X4A ",.02)
 ;;T53.4X4A
 ;;9002226.02101,"873,T53.4X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T53.5X1A ",.01)
 ;;T53.5X1A
 ;;9002226.02101,"873,T53.5X1A ",.02)
 ;;T53.5X1A
 ;;9002226.02101,"873,T53.5X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T53.5X2A ",.01)
 ;;T53.5X2A
 ;;9002226.02101,"873,T53.5X2A ",.02)
 ;;T53.5X2A
 ;;9002226.02101,"873,T53.5X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T53.5X3A ",.01)
 ;;T53.5X3A
 ;;9002226.02101,"873,T53.5X3A ",.02)
 ;;T53.5X3A
 ;;9002226.02101,"873,T53.5X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T53.5X4A ",.01)
 ;;T53.5X4A
 ;;9002226.02101,"873,T53.5X4A ",.02)
 ;;T53.5X4A
 ;;9002226.02101,"873,T53.5X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T53.6X1A ",.01)
 ;;T53.6X1A
 ;;9002226.02101,"873,T53.6X1A ",.02)
 ;;T53.6X1A
 ;;9002226.02101,"873,T53.6X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T53.6X2A ",.01)
 ;;T53.6X2A
 ;;9002226.02101,"873,T53.6X2A ",.02)
 ;;T53.6X2A
 ;;9002226.02101,"873,T53.6X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T53.6X3A ",.01)
 ;;T53.6X3A
 ;;9002226.02101,"873,T53.6X3A ",.02)
 ;;T53.6X3A
 ;;9002226.02101,"873,T53.6X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T53.6X4A ",.01)
 ;;T53.6X4A
 ;;9002226.02101,"873,T53.6X4A ",.02)
 ;;T53.6X4A
 ;;9002226.02101,"873,T53.6X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T53.7X1A ",.01)
 ;;T53.7X1A
 ;;9002226.02101,"873,T53.7X1A ",.02)
 ;;T53.7X1A
 ;;9002226.02101,"873,T53.7X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T53.7X2A ",.01)
 ;;T53.7X2A
 ;;9002226.02101,"873,T53.7X2A ",.02)
 ;;T53.7X2A
 ;;9002226.02101,"873,T53.7X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T53.7X3A ",.01)
 ;;T53.7X3A
 ;;9002226.02101,"873,T53.7X3A ",.02)
 ;;T53.7X3A
 ;;9002226.02101,"873,T53.7X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T53.7X4A ",.01)
 ;;T53.7X4A
 ;;9002226.02101,"873,T53.7X4A ",.02)
 ;;T53.7X4A
 ;;9002226.02101,"873,T53.7X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T53.91XA ",.01)
 ;;T53.91XA
 ;;9002226.02101,"873,T53.91XA ",.02)
 ;;T53.91XA
 ;;9002226.02101,"873,T53.91XA ",.03)
 ;;30
 ;;9002226.02101,"873,T53.92XA ",.01)
 ;;T53.92XA
 ;;9002226.02101,"873,T53.92XA ",.02)
 ;;T53.92XA
 ;;9002226.02101,"873,T53.92XA ",.03)
 ;;30
 ;;9002226.02101,"873,T53.93XA ",.01)
 ;;T53.93XA
 ;;9002226.02101,"873,T53.93XA ",.02)
 ;;T53.93XA
 ;;9002226.02101,"873,T53.93XA ",.03)
 ;;30
 ;;9002226.02101,"873,T53.94XA ",.01)
 ;;T53.94XA
 ;;9002226.02101,"873,T53.94XA ",.02)
 ;;T53.94XA
 ;;9002226.02101,"873,T53.94XA ",.03)
 ;;30
 ;;9002226.02101,"873,T54.0X1A ",.01)
 ;;T54.0X1A
 ;;9002226.02101,"873,T54.0X1A ",.02)
 ;;T54.0X1A
 ;;9002226.02101,"873,T54.0X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T54.0X2A ",.01)
 ;;T54.0X2A
 ;;9002226.02101,"873,T54.0X2A ",.02)
 ;;T54.0X2A
 ;;9002226.02101,"873,T54.0X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T54.0X3A ",.01)
 ;;T54.0X3A
 ;;9002226.02101,"873,T54.0X3A ",.02)
 ;;T54.0X3A
 ;;9002226.02101,"873,T54.0X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T54.0X4A ",.01)
 ;;T54.0X4A
 ;;9002226.02101,"873,T54.0X4A ",.02)
 ;;T54.0X4A
 ;;9002226.02101,"873,T54.0X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T54.1X1A ",.01)
 ;;T54.1X1A
 ;;9002226.02101,"873,T54.1X1A ",.02)
 ;;T54.1X1A
 ;;9002226.02101,"873,T54.1X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T54.1X2A ",.01)
 ;;T54.1X2A
 ;;9002226.02101,"873,T54.1X2A ",.02)
 ;;T54.1X2A
 ;;9002226.02101,"873,T54.1X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T54.1X3A ",.01)
 ;;T54.1X3A
 ;;9002226.02101,"873,T54.1X3A ",.02)
 ;;T54.1X3A
 ;;9002226.02101,"873,T54.1X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T54.1X4A ",.01)
 ;;T54.1X4A
 ;;9002226.02101,"873,T54.1X4A ",.02)
 ;;T54.1X4A
 ;;9002226.02101,"873,T54.1X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T54.2X1A ",.01)
 ;;T54.2X1A
 ;;9002226.02101,"873,T54.2X1A ",.02)
 ;;T54.2X1A
 ;;9002226.02101,"873,T54.2X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T54.2X2A ",.01)
 ;;T54.2X2A
 ;;9002226.02101,"873,T54.2X2A ",.02)
 ;;T54.2X2A
 ;;9002226.02101,"873,T54.2X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T54.2X3A ",.01)
 ;;T54.2X3A
 ;;9002226.02101,"873,T54.2X3A ",.02)
 ;;T54.2X3A
 ;;9002226.02101,"873,T54.2X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T54.2X4A ",.01)
 ;;T54.2X4A
 ;;9002226.02101,"873,T54.2X4A ",.02)
 ;;T54.2X4A
 ;;9002226.02101,"873,T54.2X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T54.3X1A ",.01)
 ;;T54.3X1A
 ;;9002226.02101,"873,T54.3X1A ",.02)
 ;;T54.3X1A
 ;;9002226.02101,"873,T54.3X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T54.3X2A ",.01)
 ;;T54.3X2A
 ;;9002226.02101,"873,T54.3X2A ",.02)
 ;;T54.3X2A
 ;;9002226.02101,"873,T54.3X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T54.3X3A ",.01)
 ;;T54.3X3A
 ;;9002226.02101,"873,T54.3X3A ",.02)
 ;;T54.3X3A
 ;;9002226.02101,"873,T54.3X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T54.3X4A ",.01)
 ;;T54.3X4A
 ;;9002226.02101,"873,T54.3X4A ",.02)
 ;;T54.3X4A
 ;;9002226.02101,"873,T54.3X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T54.91XA ",.01)
 ;;T54.91XA
 ;;9002226.02101,"873,T54.91XA ",.02)
 ;;T54.91XA
 ;;9002226.02101,"873,T54.91XA ",.03)
 ;;30
 ;;9002226.02101,"873,T54.92XA ",.01)
 ;;T54.92XA
 ;;9002226.02101,"873,T54.92XA ",.02)
 ;;T54.92XA
 ;;9002226.02101,"873,T54.92XA ",.03)
 ;;30
 ;;9002226.02101,"873,T54.93XA ",.01)
 ;;T54.93XA
 ;;9002226.02101,"873,T54.93XA ",.02)
 ;;T54.93XA
 ;;9002226.02101,"873,T54.93XA ",.03)
 ;;30
 ;;9002226.02101,"873,T54.94XA ",.01)
 ;;T54.94XA
 ;;9002226.02101,"873,T54.94XA ",.02)
 ;;T54.94XA
 ;;9002226.02101,"873,T54.94XA ",.03)
 ;;30
 ;;9002226.02101,"873,T55.0X1A ",.01)
 ;;T55.0X1A
 ;;9002226.02101,"873,T55.0X1A ",.02)
 ;;T55.0X1A
 ;;9002226.02101,"873,T55.0X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T55.0X2A ",.01)
 ;;T55.0X2A
 ;;9002226.02101,"873,T55.0X2A ",.02)
 ;;T55.0X2A
 ;;9002226.02101,"873,T55.0X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T55.0X3A ",.01)
 ;;T55.0X3A
 ;;9002226.02101,"873,T55.0X3A ",.02)
 ;;T55.0X3A
 ;;9002226.02101,"873,T55.0X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T55.0X4A ",.01)
 ;;T55.0X4A
 ;;9002226.02101,"873,T55.0X4A ",.02)
 ;;T55.0X4A
 ;;9002226.02101,"873,T55.0X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T55.1X1A ",.01)
 ;;T55.1X1A
 ;;9002226.02101,"873,T55.1X1A ",.02)
 ;;T55.1X1A
 ;;9002226.02101,"873,T55.1X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T55.1X2A ",.01)
 ;;T55.1X2A
 ;;9002226.02101,"873,T55.1X2A ",.02)
 ;;T55.1X2A
 ;;9002226.02101,"873,T55.1X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T55.1X3A ",.01)
 ;;T55.1X3A
 ;;9002226.02101,"873,T55.1X3A ",.02)
 ;;T55.1X3A
 ;;9002226.02101,"873,T55.1X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T55.1X4A ",.01)
 ;;T55.1X4A
 ;;9002226.02101,"873,T55.1X4A ",.02)
 ;;T55.1X4A
 ;;9002226.02101,"873,T55.1X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T56.0X1A ",.01)
 ;;T56.0X1A
 ;;9002226.02101,"873,T56.0X1A ",.02)
 ;;T56.0X1A
 ;;9002226.02101,"873,T56.0X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T56.0X2A ",.01)
 ;;T56.0X2A
 ;;9002226.02101,"873,T56.0X2A ",.02)
 ;;T56.0X2A
 ;;9002226.02101,"873,T56.0X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T56.0X3A ",.01)
 ;;T56.0X3A
 ;;9002226.02101,"873,T56.0X3A ",.02)
 ;;T56.0X3A
 ;;9002226.02101,"873,T56.0X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T56.0X4A ",.01)
 ;;T56.0X4A
 ;;9002226.02101,"873,T56.0X4A ",.02)
 ;;T56.0X4A
 ;;9002226.02101,"873,T56.0X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T56.1X1A ",.01)
 ;;T56.1X1A
 ;;9002226.02101,"873,T56.1X1A ",.02)
 ;;T56.1X1A
 ;;9002226.02101,"873,T56.1X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T56.1X2A ",.01)
 ;;T56.1X2A
 ;;9002226.02101,"873,T56.1X2A ",.02)
 ;;T56.1X2A
 ;;9002226.02101,"873,T56.1X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T56.1X3A ",.01)
 ;;T56.1X3A
 ;;9002226.02101,"873,T56.1X3A ",.02)
 ;;T56.1X3A
 ;;9002226.02101,"873,T56.1X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T56.1X4A ",.01)
 ;;T56.1X4A
 ;;9002226.02101,"873,T56.1X4A ",.02)
 ;;T56.1X4A
 ;;9002226.02101,"873,T56.1X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T56.2X1A ",.01)
 ;;T56.2X1A
 ;;9002226.02101,"873,T56.2X1A ",.02)
 ;;T56.2X1A
 ;;9002226.02101,"873,T56.2X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T56.2X2A ",.01)
 ;;T56.2X2A
 ;;9002226.02101,"873,T56.2X2A ",.02)
 ;;T56.2X2A
 ;;9002226.02101,"873,T56.2X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T56.2X3A ",.01)
 ;;T56.2X3A
 ;;9002226.02101,"873,T56.2X3A ",.02)
 ;;T56.2X3A
 ;;9002226.02101,"873,T56.2X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T56.2X4A ",.01)
 ;;T56.2X4A
 ;;9002226.02101,"873,T56.2X4A ",.02)
 ;;T56.2X4A
 ;;9002226.02101,"873,T56.2X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T56.3X1A ",.01)
 ;;T56.3X1A
 ;;9002226.02101,"873,T56.3X1A ",.02)
 ;;T56.3X1A
 ;;9002226.02101,"873,T56.3X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T56.3X2A ",.01)
 ;;T56.3X2A
 ;;9002226.02101,"873,T56.3X2A ",.02)
 ;;T56.3X2A
 ;;9002226.02101,"873,T56.3X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T56.3X3A ",.01)
 ;;T56.3X3A
 ;;9002226.02101,"873,T56.3X3A ",.02)
 ;;T56.3X3A