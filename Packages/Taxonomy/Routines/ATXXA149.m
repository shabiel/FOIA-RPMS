ATXXA149 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"873,T40.601A ",.01)
 ;;T40.601A
 ;;9002226.02101,"873,T40.601A ",.02)
 ;;T40.601A
 ;;9002226.02101,"873,T40.601A ",.03)
 ;;30
 ;;9002226.02101,"873,T40.602A ",.01)
 ;;T40.602A
 ;;9002226.02101,"873,T40.602A ",.02)
 ;;T40.602A
 ;;9002226.02101,"873,T40.602A ",.03)
 ;;30
 ;;9002226.02101,"873,T40.603A ",.01)
 ;;T40.603A
 ;;9002226.02101,"873,T40.603A ",.02)
 ;;T40.603A
 ;;9002226.02101,"873,T40.603A ",.03)
 ;;30
 ;;9002226.02101,"873,T40.604A ",.01)
 ;;T40.604A
 ;;9002226.02101,"873,T40.604A ",.02)
 ;;T40.604A
 ;;9002226.02101,"873,T40.604A ",.03)
 ;;30
 ;;9002226.02101,"873,T40.691A ",.01)
 ;;T40.691A
 ;;9002226.02101,"873,T40.691A ",.02)
 ;;T40.691A
 ;;9002226.02101,"873,T40.691A ",.03)
 ;;30
 ;;9002226.02101,"873,T40.692A ",.01)
 ;;T40.692A
 ;;9002226.02101,"873,T40.692A ",.02)
 ;;T40.692A
 ;;9002226.02101,"873,T40.692A ",.03)
 ;;30
 ;;9002226.02101,"873,T40.693A ",.01)
 ;;T40.693A
 ;;9002226.02101,"873,T40.693A ",.02)
 ;;T40.693A
 ;;9002226.02101,"873,T40.693A ",.03)
 ;;30
 ;;9002226.02101,"873,T40.694A ",.01)
 ;;T40.694A
 ;;9002226.02101,"873,T40.694A ",.02)
 ;;T40.694A
 ;;9002226.02101,"873,T40.694A ",.03)
 ;;30
 ;;9002226.02101,"873,T40.7X1A ",.01)
 ;;T40.7X1A
 ;;9002226.02101,"873,T40.7X1A ",.02)
 ;;T40.7X1A
 ;;9002226.02101,"873,T40.7X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T40.7X2A ",.01)
 ;;T40.7X2A
 ;;9002226.02101,"873,T40.7X2A ",.02)
 ;;T40.7X2A
 ;;9002226.02101,"873,T40.7X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T40.7X3A ",.01)
 ;;T40.7X3A
 ;;9002226.02101,"873,T40.7X3A ",.02)
 ;;T40.7X3A
 ;;9002226.02101,"873,T40.7X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T40.7X4A ",.01)
 ;;T40.7X4A
 ;;9002226.02101,"873,T40.7X4A ",.02)
 ;;T40.7X4A
 ;;9002226.02101,"873,T40.7X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T40.8X1A ",.01)
 ;;T40.8X1A
 ;;9002226.02101,"873,T40.8X1A ",.02)
 ;;T40.8X1A
 ;;9002226.02101,"873,T40.8X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T40.8X2A ",.01)
 ;;T40.8X2A
 ;;9002226.02101,"873,T40.8X2A ",.02)
 ;;T40.8X2A
 ;;9002226.02101,"873,T40.8X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T40.8X3A ",.01)
 ;;T40.8X3A
 ;;9002226.02101,"873,T40.8X3A ",.02)
 ;;T40.8X3A
 ;;9002226.02101,"873,T40.8X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T40.8X4A ",.01)
 ;;T40.8X4A
 ;;9002226.02101,"873,T40.8X4A ",.02)
 ;;T40.8X4A
 ;;9002226.02101,"873,T40.8X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T40.901A ",.01)
 ;;T40.901A
 ;;9002226.02101,"873,T40.901A ",.02)
 ;;T40.901A
 ;;9002226.02101,"873,T40.901A ",.03)
 ;;30
 ;;9002226.02101,"873,T40.902A ",.01)
 ;;T40.902A
 ;;9002226.02101,"873,T40.902A ",.02)
 ;;T40.902A
 ;;9002226.02101,"873,T40.902A ",.03)
 ;;30
 ;;9002226.02101,"873,T40.903A ",.01)
 ;;T40.903A
 ;;9002226.02101,"873,T40.903A ",.02)
 ;;T40.903A
 ;;9002226.02101,"873,T40.903A ",.03)
 ;;30
 ;;9002226.02101,"873,T40.904A ",.01)
 ;;T40.904A
 ;;9002226.02101,"873,T40.904A ",.02)
 ;;T40.904A
 ;;9002226.02101,"873,T40.904A ",.03)
 ;;30
 ;;9002226.02101,"873,T40.991A ",.01)
 ;;T40.991A
 ;;9002226.02101,"873,T40.991A ",.02)
 ;;T40.991A
 ;;9002226.02101,"873,T40.991A ",.03)
 ;;30
 ;;9002226.02101,"873,T40.992A ",.01)
 ;;T40.992A
 ;;9002226.02101,"873,T40.992A ",.02)
 ;;T40.992A
 ;;9002226.02101,"873,T40.992A ",.03)
 ;;30
 ;;9002226.02101,"873,T40.993A ",.01)
 ;;T40.993A
 ;;9002226.02101,"873,T40.993A ",.02)
 ;;T40.993A
 ;;9002226.02101,"873,T40.993A ",.03)
 ;;30
 ;;9002226.02101,"873,T40.994A ",.01)
 ;;T40.994A
 ;;9002226.02101,"873,T40.994A ",.02)
 ;;T40.994A
 ;;9002226.02101,"873,T40.994A ",.03)
 ;;30
 ;;9002226.02101,"873,T41.0X1A ",.01)
 ;;T41.0X1A
 ;;9002226.02101,"873,T41.0X1A ",.02)
 ;;T41.0X1A
 ;;9002226.02101,"873,T41.0X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T41.0X2A ",.01)
 ;;T41.0X2A
 ;;9002226.02101,"873,T41.0X2A ",.02)
 ;;T41.0X2A
 ;;9002226.02101,"873,T41.0X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T41.0X3A ",.01)
 ;;T41.0X3A
 ;;9002226.02101,"873,T41.0X3A ",.02)
 ;;T41.0X3A
 ;;9002226.02101,"873,T41.0X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T41.0X4A ",.01)
 ;;T41.0X4A
 ;;9002226.02101,"873,T41.0X4A ",.02)
 ;;T41.0X4A
 ;;9002226.02101,"873,T41.0X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T41.1X1A ",.01)
 ;;T41.1X1A
 ;;9002226.02101,"873,T41.1X1A ",.02)
 ;;T41.1X1A
 ;;9002226.02101,"873,T41.1X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T41.1X2A ",.01)
 ;;T41.1X2A
 ;;9002226.02101,"873,T41.1X2A ",.02)
 ;;T41.1X2A
 ;;9002226.02101,"873,T41.1X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T41.1X3A ",.01)
 ;;T41.1X3A
 ;;9002226.02101,"873,T41.1X3A ",.02)
 ;;T41.1X3A
 ;;9002226.02101,"873,T41.1X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T41.1X4A ",.01)
 ;;T41.1X4A
 ;;9002226.02101,"873,T41.1X4A ",.02)
 ;;T41.1X4A
 ;;9002226.02101,"873,T41.1X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T41.201A ",.01)
 ;;T41.201A
 ;;9002226.02101,"873,T41.201A ",.02)
 ;;T41.201A
 ;;9002226.02101,"873,T41.201A ",.03)
 ;;30
 ;;9002226.02101,"873,T41.202A ",.01)
 ;;T41.202A
 ;;9002226.02101,"873,T41.202A ",.02)
 ;;T41.202A
 ;;9002226.02101,"873,T41.202A ",.03)
 ;;30
 ;;9002226.02101,"873,T41.203A ",.01)
 ;;T41.203A
 ;;9002226.02101,"873,T41.203A ",.02)
 ;;T41.203A
 ;;9002226.02101,"873,T41.203A ",.03)
 ;;30
 ;;9002226.02101,"873,T41.204A ",.01)
 ;;T41.204A
 ;;9002226.02101,"873,T41.204A ",.02)
 ;;T41.204A
 ;;9002226.02101,"873,T41.204A ",.03)
 ;;30
 ;;9002226.02101,"873,T41.291A ",.01)
 ;;T41.291A
 ;;9002226.02101,"873,T41.291A ",.02)
 ;;T41.291A
 ;;9002226.02101,"873,T41.291A ",.03)
 ;;30
 ;;9002226.02101,"873,T41.292A ",.01)
 ;;T41.292A
 ;;9002226.02101,"873,T41.292A ",.02)
 ;;T41.292A
 ;;9002226.02101,"873,T41.292A ",.03)
 ;;30
 ;;9002226.02101,"873,T41.293A ",.01)
 ;;T41.293A
 ;;9002226.02101,"873,T41.293A ",.02)
 ;;T41.293A
 ;;9002226.02101,"873,T41.293A ",.03)
 ;;30
 ;;9002226.02101,"873,T41.294A ",.01)
 ;;T41.294A
 ;;9002226.02101,"873,T41.294A ",.02)
 ;;T41.294A
 ;;9002226.02101,"873,T41.294A ",.03)
 ;;30
 ;;9002226.02101,"873,T41.3X1A ",.01)
 ;;T41.3X1A
 ;;9002226.02101,"873,T41.3X1A ",.02)
 ;;T41.3X1A
 ;;9002226.02101,"873,T41.3X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T41.3X2A ",.01)
 ;;T41.3X2A
 ;;9002226.02101,"873,T41.3X2A ",.02)
 ;;T41.3X2A
 ;;9002226.02101,"873,T41.3X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T41.3X3A ",.01)
 ;;T41.3X3A
 ;;9002226.02101,"873,T41.3X3A ",.02)
 ;;T41.3X3A
 ;;9002226.02101,"873,T41.3X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T41.3X4A ",.01)
 ;;T41.3X4A
 ;;9002226.02101,"873,T41.3X4A ",.02)
 ;;T41.3X4A
 ;;9002226.02101,"873,T41.3X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T41.41XA ",.01)
 ;;T41.41XA
 ;;9002226.02101,"873,T41.41XA ",.02)
 ;;T41.41XA
 ;;9002226.02101,"873,T41.41XA ",.03)
 ;;30
 ;;9002226.02101,"873,T41.42XA ",.01)
 ;;T41.42XA
 ;;9002226.02101,"873,T41.42XA ",.02)
 ;;T41.42XA
 ;;9002226.02101,"873,T41.42XA ",.03)
 ;;30
 ;;9002226.02101,"873,T41.43XA ",.01)
 ;;T41.43XA
 ;;9002226.02101,"873,T41.43XA ",.02)
 ;;T41.43XA
 ;;9002226.02101,"873,T41.43XA ",.03)
 ;;30
 ;;9002226.02101,"873,T41.44XA ",.01)
 ;;T41.44XA
 ;;9002226.02101,"873,T41.44XA ",.02)
 ;;T41.44XA
 ;;9002226.02101,"873,T41.44XA ",.03)
 ;;30
 ;;9002226.02101,"873,T41.5X1A ",.01)
 ;;T41.5X1A
 ;;9002226.02101,"873,T41.5X1A ",.02)
 ;;T41.5X1A
 ;;9002226.02101,"873,T41.5X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T41.5X2A ",.01)
 ;;T41.5X2A
 ;;9002226.02101,"873,T41.5X2A ",.02)
 ;;T41.5X2A
 ;;9002226.02101,"873,T41.5X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T41.5X3A ",.01)
 ;;T41.5X3A
 ;;9002226.02101,"873,T41.5X3A ",.02)
 ;;T41.5X3A
 ;;9002226.02101,"873,T41.5X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T41.5X4A ",.01)
 ;;T41.5X4A
 ;;9002226.02101,"873,T41.5X4A ",.02)
 ;;T41.5X4A
 ;;9002226.02101,"873,T41.5X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T42.0X1A ",.01)
 ;;T42.0X1A
 ;;9002226.02101,"873,T42.0X1A ",.02)
 ;;T42.0X1A
 ;;9002226.02101,"873,T42.0X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T42.0X2A ",.01)
 ;;T42.0X2A
 ;;9002226.02101,"873,T42.0X2A ",.02)
 ;;T42.0X2A
 ;;9002226.02101,"873,T42.0X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T42.0X3A ",.01)
 ;;T42.0X3A
 ;;9002226.02101,"873,T42.0X3A ",.02)
 ;;T42.0X3A
 ;;9002226.02101,"873,T42.0X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T42.0X4A ",.01)
 ;;T42.0X4A
 ;;9002226.02101,"873,T42.0X4A ",.02)
 ;;T42.0X4A
 ;;9002226.02101,"873,T42.0X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T42.1X1A ",.01)
 ;;T42.1X1A
 ;;9002226.02101,"873,T42.1X1A ",.02)
 ;;T42.1X1A
 ;;9002226.02101,"873,T42.1X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T42.1X2A ",.01)
 ;;T42.1X2A
 ;;9002226.02101,"873,T42.1X2A ",.02)
 ;;T42.1X2A
 ;;9002226.02101,"873,T42.1X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T42.1X3A ",.01)
 ;;T42.1X3A
 ;;9002226.02101,"873,T42.1X3A ",.02)
 ;;T42.1X3A
 ;;9002226.02101,"873,T42.1X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T42.1X4A ",.01)
 ;;T42.1X4A
 ;;9002226.02101,"873,T42.1X4A ",.02)
 ;;T42.1X4A
 ;;9002226.02101,"873,T42.1X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T42.2X1A ",.01)
 ;;T42.2X1A
 ;;9002226.02101,"873,T42.2X1A ",.02)
 ;;T42.2X1A
 ;;9002226.02101,"873,T42.2X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T42.2X2A ",.01)
 ;;T42.2X2A
 ;;9002226.02101,"873,T42.2X2A ",.02)
 ;;T42.2X2A
 ;;9002226.02101,"873,T42.2X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T42.2X3A ",.01)
 ;;T42.2X3A
 ;;9002226.02101,"873,T42.2X3A ",.02)
 ;;T42.2X3A
 ;;9002226.02101,"873,T42.2X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T42.2X4A ",.01)
 ;;T42.2X4A
 ;;9002226.02101,"873,T42.2X4A ",.02)
 ;;T42.2X4A
 ;;9002226.02101,"873,T42.2X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T42.3X1A ",.01)
 ;;T42.3X1A
 ;;9002226.02101,"873,T42.3X1A ",.02)
 ;;T42.3X1A
 ;;9002226.02101,"873,T42.3X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T42.3X2A ",.01)
 ;;T42.3X2A
 ;;9002226.02101,"873,T42.3X2A ",.02)
 ;;T42.3X2A
 ;;9002226.02101,"873,T42.3X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T42.3X3A ",.01)
 ;;T42.3X3A
 ;;9002226.02101,"873,T42.3X3A ",.02)
 ;;T42.3X3A
 ;;9002226.02101,"873,T42.3X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T42.3X4A ",.01)
 ;;T42.3X4A
 ;;9002226.02101,"873,T42.3X4A ",.02)
 ;;T42.3X4A
 ;;9002226.02101,"873,T42.3X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T42.4X1A ",.01)
 ;;T42.4X1A
 ;;9002226.02101,"873,T42.4X1A ",.02)
 ;;T42.4X1A
 ;;9002226.02101,"873,T42.4X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T42.4X2A ",.01)
 ;;T42.4X2A
 ;;9002226.02101,"873,T42.4X2A ",.02)
 ;;T42.4X2A
 ;;9002226.02101,"873,T42.4X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T42.4X3A ",.01)
 ;;T42.4X3A
 ;;9002226.02101,"873,T42.4X3A ",.02)
 ;;T42.4X3A
 ;;9002226.02101,"873,T42.4X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T42.4X4A ",.01)
 ;;T42.4X4A
 ;;9002226.02101,"873,T42.4X4A ",.02)
 ;;T42.4X4A
 ;;9002226.02101,"873,T42.4X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T42.5X1A ",.01)
 ;;T42.5X1A
 ;;9002226.02101,"873,T42.5X1A ",.02)
 ;;T42.5X1A
 ;;9002226.02101,"873,T42.5X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T42.5X2A ",.01)
 ;;T42.5X2A
 ;;9002226.02101,"873,T42.5X2A ",.02)
 ;;T42.5X2A
 ;;9002226.02101,"873,T42.5X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T42.5X3A ",.01)
 ;;T42.5X3A
 ;;9002226.02101,"873,T42.5X3A ",.02)
 ;;T42.5X3A
 ;;9002226.02101,"873,T42.5X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T42.5X4A ",.01)
 ;;T42.5X4A
 ;;9002226.02101,"873,T42.5X4A ",.02)
 ;;T42.5X4A
 ;;9002226.02101,"873,T42.5X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T42.6X1A ",.01)
 ;;T42.6X1A
 ;;9002226.02101,"873,T42.6X1A ",.02)
 ;;T42.6X1A
 ;;9002226.02101,"873,T42.6X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T42.6X2A ",.01)
 ;;T42.6X2A
 ;;9002226.02101,"873,T42.6X2A ",.02)
 ;;T42.6X2A
 ;;9002226.02101,"873,T42.6X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T42.6X3A ",.01)
 ;;T42.6X3A