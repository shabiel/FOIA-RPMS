ATXD5P24 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 12, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"169,Y37.7X0S ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.7X1A ",.01)
 ;;Y37.7X1A 
 ;;9002226.02101,"169,Y37.7X1A ",.02)
 ;;Y37.7X1A 
 ;;9002226.02101,"169,Y37.7X1A ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.7X1D ",.01)
 ;;Y37.7X1D 
 ;;9002226.02101,"169,Y37.7X1D ",.02)
 ;;Y37.7X1D 
 ;;9002226.02101,"169,Y37.7X1D ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.7X1S ",.01)
 ;;Y37.7X1S 
 ;;9002226.02101,"169,Y37.7X1S ",.02)
 ;;Y37.7X1S 
 ;;9002226.02101,"169,Y37.7X1S ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.90XA ",.01)
 ;;Y37.90XA 
 ;;9002226.02101,"169,Y37.90XA ",.02)
 ;;Y37.90XA 
 ;;9002226.02101,"169,Y37.90XA ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.90XD ",.01)
 ;;Y37.90XD 
 ;;9002226.02101,"169,Y37.90XD ",.02)
 ;;Y37.90XD 
 ;;9002226.02101,"169,Y37.90XD ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.90XS ",.01)
 ;;Y37.90XS 
 ;;9002226.02101,"169,Y37.90XS ",.02)
 ;;Y37.90XS 
 ;;9002226.02101,"169,Y37.90XS ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.91XA ",.01)
 ;;Y37.91XA 
 ;;9002226.02101,"169,Y37.91XA ",.02)
 ;;Y37.91XA 
 ;;9002226.02101,"169,Y37.91XA ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.91XD ",.01)
 ;;Y37.91XD 
 ;;9002226.02101,"169,Y37.91XD ",.02)
 ;;Y37.91XD 
 ;;9002226.02101,"169,Y37.91XD ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.91XS ",.01)
 ;;Y37.91XS 
 ;;9002226.02101,"169,Y37.91XS ",.02)
 ;;Y37.91XS 
 ;;9002226.02101,"169,Y37.91XS ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.92XA ",.01)
 ;;Y37.92XA 
 ;;9002226.02101,"169,Y37.92XA ",.02)
 ;;Y37.92XA 
 ;;9002226.02101,"169,Y37.92XA ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.92XD ",.01)
 ;;Y37.92XD 
 ;;9002226.02101,"169,Y37.92XD ",.02)
 ;;Y37.92XD 
 ;;9002226.02101,"169,Y37.92XD ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.92XS ",.01)
 ;;Y37.92XS 
 ;;9002226.02101,"169,Y37.92XS ",.02)
 ;;Y37.92XS 
 ;;9002226.02101,"169,Y37.92XS ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.0X1A ",.01)
 ;;Y38.0X1A 
 ;;9002226.02101,"169,Y38.0X1A ",.02)
 ;;Y38.0X1A 
 ;;9002226.02101,"169,Y38.0X1A ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.0X1D ",.01)
 ;;Y38.0X1D 
 ;;9002226.02101,"169,Y38.0X1D ",.02)
 ;;Y38.0X1D 
 ;;9002226.02101,"169,Y38.0X1D ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.0X2A ",.01)
 ;;Y38.0X2A 
 ;;9002226.02101,"169,Y38.0X2A ",.02)
 ;;Y38.0X2A 
 ;;9002226.02101,"169,Y38.0X2A ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.0X2D ",.01)
 ;;Y38.0X2D 
 ;;9002226.02101,"169,Y38.0X2D ",.02)
 ;;Y38.0X2D 
 ;;9002226.02101,"169,Y38.0X2D ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.0X3A ",.01)
 ;;Y38.0X3A 
 ;;9002226.02101,"169,Y38.0X3A ",.02)
 ;;Y38.0X3A 
 ;;9002226.02101,"169,Y38.0X3A ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.0X3D ",.01)
 ;;Y38.0X3D 
 ;;9002226.02101,"169,Y38.0X3D ",.02)
 ;;Y38.0X3D 
 ;;9002226.02101,"169,Y38.0X3D ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.1X1A ",.01)
 ;;Y38.1X1A 
 ;;9002226.02101,"169,Y38.1X1A ",.02)
 ;;Y38.1X1A 
 ;;9002226.02101,"169,Y38.1X1A ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.1X1D ",.01)
 ;;Y38.1X1D 
 ;;9002226.02101,"169,Y38.1X1D ",.02)
 ;;Y38.1X1D 
 ;;9002226.02101,"169,Y38.1X1D ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.1X2A ",.01)
 ;;Y38.1X2A 
 ;;9002226.02101,"169,Y38.1X2A ",.02)
 ;;Y38.1X2A 
 ;;9002226.02101,"169,Y38.1X2A ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.1X2D ",.01)
 ;;Y38.1X2D 
 ;;9002226.02101,"169,Y38.1X2D ",.02)
 ;;Y38.1X2D 
 ;;9002226.02101,"169,Y38.1X2D ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.1X3A ",.01)
 ;;Y38.1X3A 
 ;;9002226.02101,"169,Y38.1X3A ",.02)
 ;;Y38.1X3A 
 ;;9002226.02101,"169,Y38.1X3A ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.1X3D ",.01)
 ;;Y38.1X3D 
 ;;9002226.02101,"169,Y38.1X3D ",.02)
 ;;Y38.1X3D 
 ;;9002226.02101,"169,Y38.1X3D ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.2X1A ",.01)
 ;;Y38.2X1A 
 ;;9002226.02101,"169,Y38.2X1A ",.02)
 ;;Y38.2X1A 
 ;;9002226.02101,"169,Y38.2X1A ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.2X1D ",.01)
 ;;Y38.2X1D 
 ;;9002226.02101,"169,Y38.2X1D ",.02)
 ;;Y38.2X1D 
 ;;9002226.02101,"169,Y38.2X1D ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.2X2A ",.01)
 ;;Y38.2X2A 
 ;;9002226.02101,"169,Y38.2X2A ",.02)
 ;;Y38.2X2A 
 ;;9002226.02101,"169,Y38.2X2A ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.2X2D ",.01)
 ;;Y38.2X2D 
 ;;9002226.02101,"169,Y38.2X2D ",.02)
 ;;Y38.2X2D 
 ;;9002226.02101,"169,Y38.2X2D ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.2X3A ",.01)
 ;;Y38.2X3A 
 ;;9002226.02101,"169,Y38.2X3A ",.02)
 ;;Y38.2X3A 
 ;;9002226.02101,"169,Y38.2X3A ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.2X3D ",.01)
 ;;Y38.2X3D 
 ;;9002226.02101,"169,Y38.2X3D ",.02)
 ;;Y38.2X3D 
 ;;9002226.02101,"169,Y38.2X3D ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.3X1A ",.01)
 ;;Y38.3X1A 
 ;;9002226.02101,"169,Y38.3X1A ",.02)
 ;;Y38.3X1A 
 ;;9002226.02101,"169,Y38.3X1A ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.3X1D ",.01)
 ;;Y38.3X1D 
 ;;9002226.02101,"169,Y38.3X1D ",.02)
 ;;Y38.3X1D 
 ;;9002226.02101,"169,Y38.3X1D ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.3X2A ",.01)
 ;;Y38.3X2A 
 ;;9002226.02101,"169,Y38.3X2A ",.02)
 ;;Y38.3X2A 
 ;;9002226.02101,"169,Y38.3X2A ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.3X2D ",.01)
 ;;Y38.3X2D 
 ;;9002226.02101,"169,Y38.3X2D ",.02)
 ;;Y38.3X2D 
 ;;9002226.02101,"169,Y38.3X2D ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.3X3A ",.01)
 ;;Y38.3X3A 
 ;;9002226.02101,"169,Y38.3X3A ",.02)
 ;;Y38.3X3A 
 ;;9002226.02101,"169,Y38.3X3A ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.3X3D ",.01)
 ;;Y38.3X3D 
 ;;9002226.02101,"169,Y38.3X3D ",.02)
 ;;Y38.3X3D 
 ;;9002226.02101,"169,Y38.3X3D ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.4X1A ",.01)
 ;;Y38.4X1A 
 ;;9002226.02101,"169,Y38.4X1A ",.02)
 ;;Y38.4X1A 
 ;;9002226.02101,"169,Y38.4X1A ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.4X1D ",.01)
 ;;Y38.4X1D 
 ;;9002226.02101,"169,Y38.4X1D ",.02)
 ;;Y38.4X1D 
 ;;9002226.02101,"169,Y38.4X1D ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.4X2A ",.01)
 ;;Y38.4X2A 
 ;;9002226.02101,"169,Y38.4X2A ",.02)
 ;;Y38.4X2A 
 ;;9002226.02101,"169,Y38.4X2A ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.4X2D ",.01)
 ;;Y38.4X2D 
 ;;9002226.02101,"169,Y38.4X2D ",.02)
 ;;Y38.4X2D 
 ;;9002226.02101,"169,Y38.4X2D ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.4X3A ",.01)
 ;;Y38.4X3A 
 ;;9002226.02101,"169,Y38.4X3A ",.02)
 ;;Y38.4X3A 
 ;;9002226.02101,"169,Y38.4X3A ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.4X3D ",.01)
 ;;Y38.4X3D 
 ;;9002226.02101,"169,Y38.4X3D ",.02)
 ;;Y38.4X3D 
 ;;9002226.02101,"169,Y38.4X3D ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.5X1A ",.01)
 ;;Y38.5X1A 
 ;;9002226.02101,"169,Y38.5X1A ",.02)
 ;;Y38.5X1A 
 ;;9002226.02101,"169,Y38.5X1A ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.5X1D ",.01)
 ;;Y38.5X1D 
 ;;9002226.02101,"169,Y38.5X1D ",.02)
 ;;Y38.5X1D 
 ;;9002226.02101,"169,Y38.5X1D ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.5X2A ",.01)
 ;;Y38.5X2A 
 ;;9002226.02101,"169,Y38.5X2A ",.02)
 ;;Y38.5X2A 
 ;;9002226.02101,"169,Y38.5X2A ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.5X2D ",.01)
 ;;Y38.5X2D 
 ;;9002226.02101,"169,Y38.5X2D ",.02)
 ;;Y38.5X2D 
 ;;9002226.02101,"169,Y38.5X2D ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.5X3A ",.01)
 ;;Y38.5X3A 
 ;;9002226.02101,"169,Y38.5X3A ",.02)
 ;;Y38.5X3A 
 ;;9002226.02101,"169,Y38.5X3A ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.5X3D ",.01)
 ;;Y38.5X3D 
 ;;9002226.02101,"169,Y38.5X3D ",.02)
 ;;Y38.5X3D 
 ;;9002226.02101,"169,Y38.5X3D ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.6X1A ",.01)
 ;;Y38.6X1A 
 ;;9002226.02101,"169,Y38.6X1A ",.02)
 ;;Y38.6X1A 
 ;;9002226.02101,"169,Y38.6X1A ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.6X1D ",.01)
 ;;Y38.6X1D 
 ;;9002226.02101,"169,Y38.6X1D ",.02)
 ;;Y38.6X1D 
 ;;9002226.02101,"169,Y38.6X1D ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.6X2A ",.01)
 ;;Y38.6X2A 
 ;;9002226.02101,"169,Y38.6X2A ",.02)
 ;;Y38.6X2A 
 ;;9002226.02101,"169,Y38.6X2A ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.6X2D ",.01)
 ;;Y38.6X2D 
 ;;9002226.02101,"169,Y38.6X2D ",.02)
 ;;Y38.6X2D 
 ;;9002226.02101,"169,Y38.6X2D ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.6X3A ",.01)
 ;;Y38.6X3A 
 ;;9002226.02101,"169,Y38.6X3A ",.02)
 ;;Y38.6X3A 
 ;;9002226.02101,"169,Y38.6X3A ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.6X3D ",.01)
 ;;Y38.6X3D 
 ;;9002226.02101,"169,Y38.6X3D ",.02)
 ;;Y38.6X3D 
 ;;9002226.02101,"169,Y38.6X3D ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.7X1A ",.01)
 ;;Y38.7X1A 
 ;;9002226.02101,"169,Y38.7X1A ",.02)
 ;;Y38.7X1A 
 ;;9002226.02101,"169,Y38.7X1A ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.7X1D ",.01)
 ;;Y38.7X1D 
 ;;9002226.02101,"169,Y38.7X1D ",.02)
 ;;Y38.7X1D 
 ;;9002226.02101,"169,Y38.7X1D ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.7X2A ",.01)
 ;;Y38.7X2A 
 ;;9002226.02101,"169,Y38.7X2A ",.02)
 ;;Y38.7X2A 
 ;;9002226.02101,"169,Y38.7X2A ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.7X2D ",.01)
 ;;Y38.7X2D 
 ;;9002226.02101,"169,Y38.7X2D ",.02)
 ;;Y38.7X2D 
 ;;9002226.02101,"169,Y38.7X2D ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.7X3A ",.01)
 ;;Y38.7X3A 
 ;;9002226.02101,"169,Y38.7X3A ",.02)
 ;;Y38.7X3A 
 ;;9002226.02101,"169,Y38.7X3A ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.7X3D ",.01)
 ;;Y38.7X3D 
 ;;9002226.02101,"169,Y38.7X3D ",.02)
 ;;Y38.7X3D 
 ;;9002226.02101,"169,Y38.7X3D ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.80XA ",.01)
 ;;Y38.80XA 
 ;;9002226.02101,"169,Y38.80XA ",.02)
 ;;Y38.80XA 
 ;;9002226.02101,"169,Y38.80XA ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.80XD ",.01)
 ;;Y38.80XD 
 ;;9002226.02101,"169,Y38.80XD ",.02)
 ;;Y38.80XD 
 ;;9002226.02101,"169,Y38.80XD ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.811A ",.01)
 ;;Y38.811A 
 ;;9002226.02101,"169,Y38.811A ",.02)
 ;;Y38.811A 
 ;;9002226.02101,"169,Y38.811A ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.811D ",.01)
 ;;Y38.811D 
 ;;9002226.02101,"169,Y38.811D ",.02)
 ;;Y38.811D 
 ;;9002226.02101,"169,Y38.811D ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.812A ",.01)
 ;;Y38.812A 
 ;;9002226.02101,"169,Y38.812A ",.02)
 ;;Y38.812A 
 ;;9002226.02101,"169,Y38.812A ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.812D ",.01)
 ;;Y38.812D 
 ;;9002226.02101,"169,Y38.812D ",.02)
 ;;Y38.812D 
 ;;9002226.02101,"169,Y38.812D ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.891A ",.01)
 ;;Y38.891A 
 ;;9002226.02101,"169,Y38.891A ",.02)
 ;;Y38.891A 
 ;;9002226.02101,"169,Y38.891A ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.891D ",.01)
 ;;Y38.891D 
 ;;9002226.02101,"169,Y38.891D ",.02)
 ;;Y38.891D 
 ;;9002226.02101,"169,Y38.891D ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.892A ",.01)
 ;;Y38.892A 
 ;;9002226.02101,"169,Y38.892A ",.02)
 ;;Y38.892A 
 ;;9002226.02101,"169,Y38.892A ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.892D ",.01)
 ;;Y38.892D 
 ;;9002226.02101,"169,Y38.892D ",.02)
 ;;Y38.892D 
 ;;9002226.02101,"169,Y38.892D ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.893A ",.01)
 ;;Y38.893A 
 ;;9002226.02101,"169,Y38.893A ",.02)
 ;;Y38.893A 
 ;;9002226.02101,"169,Y38.893A ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.893D ",.01)
 ;;Y38.893D 
 ;;9002226.02101,"169,Y38.893D ",.02)
 ;;Y38.893D 
 ;;9002226.02101,"169,Y38.893D ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.9X1A ",.01)
 ;;Y38.9X1A 
 ;;9002226.02101,"169,Y38.9X1A ",.02)
 ;;Y38.9X1A 
 ;;9002226.02101,"169,Y38.9X1A ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.9X1D ",.01)
 ;;Y38.9X1D 
 ;;9002226.02101,"169,Y38.9X1D ",.02)
 ;;Y38.9X1D 
 ;;9002226.02101,"169,Y38.9X1D ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.9X2A ",.01)
 ;;Y38.9X2A 
 ;;9002226.02101,"169,Y38.9X2A ",.02)
 ;;Y38.9X2A 
 ;;9002226.02101,"169,Y38.9X2A ",.03)
 ;;30
 ;;9002226.02101,"169,Y38.9X2D ",.01)
 ;;Y38.9X2D 
 ;;9002226.02101,"169,Y38.9X2D ",.02)
 ;;Y38.9X2D 
 ;;9002226.02101,"169,Y38.9X2D ",.03)
 ;;30
 ;;9002226.04101,"169,1",.01)
 ;;APCL