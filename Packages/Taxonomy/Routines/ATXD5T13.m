ATXD5T13 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 12, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"173,T63.92XD ",.02)
 ;;T63.92XD 
 ;;9002226.02101,"173,T63.92XD ",.03)
 ;;30
 ;;9002226.02101,"173,T63.92XS ",.01)
 ;;T63.92XS 
 ;;9002226.02101,"173,T63.92XS ",.02)
 ;;T63.92XS 
 ;;9002226.02101,"173,T63.92XS ",.03)
 ;;30
 ;;9002226.02101,"173,T64.02XA ",.01)
 ;;T64.02XA 
 ;;9002226.02101,"173,T64.02XA ",.02)
 ;;T64.02XA 
 ;;9002226.02101,"173,T64.02XA ",.03)
 ;;30
 ;;9002226.02101,"173,T64.02XD ",.01)
 ;;T64.02XD 
 ;;9002226.02101,"173,T64.02XD ",.02)
 ;;T64.02XD 
 ;;9002226.02101,"173,T64.02XD ",.03)
 ;;30
 ;;9002226.02101,"173,T64.02XS ",.01)
 ;;T64.02XS 
 ;;9002226.02101,"173,T64.02XS ",.02)
 ;;T64.02XS 
 ;;9002226.02101,"173,T64.02XS ",.03)
 ;;30
 ;;9002226.02101,"173,T64.82XA ",.01)
 ;;T64.82XA 
 ;;9002226.02101,"173,T64.82XA ",.02)
 ;;T64.82XA 
 ;;9002226.02101,"173,T64.82XA ",.03)
 ;;30
 ;;9002226.02101,"173,T64.82XD ",.01)
 ;;T64.82XD 
 ;;9002226.02101,"173,T64.82XD ",.02)
 ;;T64.82XD 
 ;;9002226.02101,"173,T64.82XD ",.03)
 ;;30
 ;;9002226.02101,"173,T64.82XS ",.01)
 ;;T64.82XS 
 ;;9002226.02101,"173,T64.82XS ",.02)
 ;;T64.82XS 
 ;;9002226.02101,"173,T64.82XS ",.03)
 ;;30
 ;;9002226.02101,"173,T65.0X2A ",.01)
 ;;T65.0X2A 
 ;;9002226.02101,"173,T65.0X2A ",.02)
 ;;T65.0X2A 
 ;;9002226.02101,"173,T65.0X2A ",.03)
 ;;30
 ;;9002226.02101,"173,T65.0X2D ",.01)
 ;;T65.0X2D 
 ;;9002226.02101,"173,T65.0X2D ",.02)
 ;;T65.0X2D 
 ;;9002226.02101,"173,T65.0X2D ",.03)
 ;;30
 ;;9002226.02101,"173,T65.0X2S ",.01)
 ;;T65.0X2S 
 ;;9002226.02101,"173,T65.0X2S ",.02)
 ;;T65.0X2S 
 ;;9002226.02101,"173,T65.0X2S ",.03)
 ;;30
 ;;9002226.02101,"173,T65.1X2A ",.01)
 ;;T65.1X2A 
 ;;9002226.02101,"173,T65.1X2A ",.02)
 ;;T65.1X2A 
 ;;9002226.02101,"173,T65.1X2A ",.03)
 ;;30
 ;;9002226.02101,"173,T65.1X2D ",.01)
 ;;T65.1X2D 
 ;;9002226.02101,"173,T65.1X2D ",.02)
 ;;T65.1X2D 
 ;;9002226.02101,"173,T65.1X2D ",.03)
 ;;30
 ;;9002226.02101,"173,T65.1X2S ",.01)
 ;;T65.1X2S 
 ;;9002226.02101,"173,T65.1X2S ",.02)
 ;;T65.1X2S 
 ;;9002226.02101,"173,T65.1X2S ",.03)
 ;;30
 ;;9002226.02101,"173,T65.212A ",.01)
 ;;T65.212A 
 ;;9002226.02101,"173,T65.212A ",.02)
 ;;T65.212A 
 ;;9002226.02101,"173,T65.212A ",.03)
 ;;30
 ;;9002226.02101,"173,T65.212D ",.01)
 ;;T65.212D 
 ;;9002226.02101,"173,T65.212D ",.02)
 ;;T65.212D 
 ;;9002226.02101,"173,T65.212D ",.03)
 ;;30
 ;;9002226.02101,"173,T65.212S ",.01)
 ;;T65.212S 
 ;;9002226.02101,"173,T65.212S ",.02)
 ;;T65.212S 
 ;;9002226.02101,"173,T65.212S ",.03)
 ;;30
 ;;9002226.02101,"173,T65.222A ",.01)
 ;;T65.222A 
 ;;9002226.02101,"173,T65.222A ",.02)
 ;;T65.222A 
 ;;9002226.02101,"173,T65.222A ",.03)
 ;;30
 ;;9002226.02101,"173,T65.222D ",.01)
 ;;T65.222D 
 ;;9002226.02101,"173,T65.222D ",.02)
 ;;T65.222D 
 ;;9002226.02101,"173,T65.222D ",.03)
 ;;30
 ;;9002226.02101,"173,T65.222S ",.01)
 ;;T65.222S 
 ;;9002226.02101,"173,T65.222S ",.02)
 ;;T65.222S 
 ;;9002226.02101,"173,T65.222S ",.03)
 ;;30
 ;;9002226.02101,"173,T65.292A ",.01)
 ;;T65.292A 
 ;;9002226.02101,"173,T65.292A ",.02)
 ;;T65.292A 
 ;;9002226.02101,"173,T65.292A ",.03)
 ;;30
 ;;9002226.02101,"173,T65.292D ",.01)
 ;;T65.292D 
 ;;9002226.02101,"173,T65.292D ",.02)
 ;;T65.292D 
 ;;9002226.02101,"173,T65.292D ",.03)
 ;;30
 ;;9002226.02101,"173,T65.292S ",.01)
 ;;T65.292S 
 ;;9002226.02101,"173,T65.292S ",.02)
 ;;T65.292S 
 ;;9002226.02101,"173,T65.292S ",.03)
 ;;30
 ;;9002226.02101,"173,T65.3X2A ",.01)
 ;;T65.3X2A 
 ;;9002226.02101,"173,T65.3X2A ",.02)
 ;;T65.3X2A 
 ;;9002226.02101,"173,T65.3X2A ",.03)
 ;;30
 ;;9002226.02101,"173,T65.3X2D ",.01)
 ;;T65.3X2D 
 ;;9002226.02101,"173,T65.3X2D ",.02)
 ;;T65.3X2D 
 ;;9002226.02101,"173,T65.3X2D ",.03)
 ;;30
 ;;9002226.02101,"173,T65.3X2S ",.01)
 ;;T65.3X2S 
 ;;9002226.02101,"173,T65.3X2S ",.02)
 ;;T65.3X2S 
 ;;9002226.02101,"173,T65.3X2S ",.03)
 ;;30
 ;;9002226.02101,"173,T65.4X2A ",.01)
 ;;T65.4X2A 
 ;;9002226.02101,"173,T65.4X2A ",.02)
 ;;T65.4X2A 
 ;;9002226.02101,"173,T65.4X2A ",.03)
 ;;30
 ;;9002226.02101,"173,T65.4X2D ",.01)
 ;;T65.4X2D 
 ;;9002226.02101,"173,T65.4X2D ",.02)
 ;;T65.4X2D 
 ;;9002226.02101,"173,T65.4X2D ",.03)
 ;;30
 ;;9002226.02101,"173,T65.4X2S ",.01)
 ;;T65.4X2S 
 ;;9002226.02101,"173,T65.4X2S ",.02)
 ;;T65.4X2S 
 ;;9002226.02101,"173,T65.4X2S ",.03)
 ;;30
 ;;9002226.02101,"173,T65.5X2A ",.01)
 ;;T65.5X2A 
 ;;9002226.02101,"173,T65.5X2A ",.02)
 ;;T65.5X2A 
 ;;9002226.02101,"173,T65.5X2A ",.03)
 ;;30
 ;;9002226.02101,"173,T65.5X2D ",.01)
 ;;T65.5X2D 
 ;;9002226.02101,"173,T65.5X2D ",.02)
 ;;T65.5X2D 
 ;;9002226.02101,"173,T65.5X2D ",.03)
 ;;30
 ;;9002226.02101,"173,T65.5X2S ",.01)
 ;;T65.5X2S 
 ;;9002226.02101,"173,T65.5X2S ",.02)
 ;;T65.5X2S 
 ;;9002226.02101,"173,T65.5X2S ",.03)
 ;;30
 ;;9002226.02101,"173,T65.6X2A ",.01)
 ;;T65.6X2A 
 ;;9002226.02101,"173,T65.6X2A ",.02)
 ;;T65.6X2A 
 ;;9002226.02101,"173,T65.6X2A ",.03)
 ;;30
 ;;9002226.02101,"173,T65.6X2D ",.01)
 ;;T65.6X2D 
 ;;9002226.02101,"173,T65.6X2D ",.02)
 ;;T65.6X2D 
 ;;9002226.02101,"173,T65.6X2D ",.03)
 ;;30
 ;;9002226.02101,"173,T65.6X2S ",.01)
 ;;T65.6X2S 
 ;;9002226.02101,"173,T65.6X2S ",.02)
 ;;T65.6X2S 
 ;;9002226.02101,"173,T65.6X2S ",.03)
 ;;30
 ;;9002226.02101,"173,T65.812A ",.01)
 ;;T65.812A 
 ;;9002226.02101,"173,T65.812A ",.02)
 ;;T65.812A 
 ;;9002226.02101,"173,T65.812A ",.03)
 ;;30
 ;;9002226.02101,"173,T65.812D ",.01)
 ;;T65.812D 
 ;;9002226.02101,"173,T65.812D ",.02)
 ;;T65.812D 
 ;;9002226.02101,"173,T65.812D ",.03)
 ;;30
 ;;9002226.02101,"173,T65.812S ",.01)
 ;;T65.812S 
 ;;9002226.02101,"173,T65.812S ",.02)
 ;;T65.812S 
 ;;9002226.02101,"173,T65.812S ",.03)
 ;;30
 ;;9002226.02101,"173,T65.822A ",.01)
 ;;T65.822A 
 ;;9002226.02101,"173,T65.822A ",.02)
 ;;T65.822A 
 ;;9002226.02101,"173,T65.822A ",.03)
 ;;30
 ;;9002226.02101,"173,T65.822D ",.01)
 ;;T65.822D 
 ;;9002226.02101,"173,T65.822D ",.02)
 ;;T65.822D 
 ;;9002226.02101,"173,T65.822D ",.03)
 ;;30
 ;;9002226.02101,"173,T65.822S ",.01)
 ;;T65.822S 
 ;;9002226.02101,"173,T65.822S ",.02)
 ;;T65.822S 
 ;;9002226.02101,"173,T65.822S ",.03)
 ;;30
 ;;9002226.02101,"173,T65.832A ",.01)
 ;;T65.832A 
 ;;9002226.02101,"173,T65.832A ",.02)
 ;;T65.832A 
 ;;9002226.02101,"173,T65.832A ",.03)
 ;;30
 ;;9002226.02101,"173,T65.832D ",.01)
 ;;T65.832D 
 ;;9002226.02101,"173,T65.832D ",.02)
 ;;T65.832D 
 ;;9002226.02101,"173,T65.832D ",.03)
 ;;30
 ;;9002226.02101,"173,T65.832S ",.01)
 ;;T65.832S 
 ;;9002226.02101,"173,T65.832S ",.02)
 ;;T65.832S 
 ;;9002226.02101,"173,T65.832S ",.03)
 ;;30
 ;;9002226.02101,"173,T65.892A ",.01)
 ;;T65.892A 
 ;;9002226.02101,"173,T65.892A ",.02)
 ;;T65.892A 
 ;;9002226.02101,"173,T65.892A ",.03)
 ;;30
 ;;9002226.02101,"173,T65.892D ",.01)
 ;;T65.892D 
 ;;9002226.02101,"173,T65.892D ",.02)
 ;;T65.892D 
 ;;9002226.02101,"173,T65.892D ",.03)
 ;;30
 ;;9002226.02101,"173,T65.892S ",.01)
 ;;T65.892S 
 ;;9002226.02101,"173,T65.892S ",.02)
 ;;T65.892S 
 ;;9002226.02101,"173,T65.892S ",.03)
 ;;30
 ;;9002226.02101,"173,T65.92XA ",.01)
 ;;T65.92XA 
 ;;9002226.02101,"173,T65.92XA ",.02)
 ;;T65.92XA 
 ;;9002226.02101,"173,T65.92XA ",.03)
 ;;30
 ;;9002226.02101,"173,T65.92XD ",.01)
 ;;T65.92XD 
 ;;9002226.02101,"173,T65.92XD ",.02)
 ;;T65.92XD 
 ;;9002226.02101,"173,T65.92XD ",.03)
 ;;30
 ;;9002226.02101,"173,T65.92XS ",.01)
 ;;T65.92XS 
 ;;9002226.02101,"173,T65.92XS ",.02)
 ;;T65.92XS 
 ;;9002226.02101,"173,T65.92XS ",.03)
 ;;30
 ;;9002226.02101,"173,T71.112A ",.01)
 ;;T71.112A 
 ;;9002226.02101,"173,T71.112A ",.02)
 ;;T71.112A 
 ;;9002226.02101,"173,T71.112A ",.03)
 ;;30
 ;;9002226.02101,"173,T71.112D ",.01)
 ;;T71.112D 
 ;;9002226.02101,"173,T71.112D ",.02)
 ;;T71.112D 
 ;;9002226.02101,"173,T71.112D ",.03)
 ;;30
 ;;9002226.02101,"173,T71.112S ",.01)
 ;;T71.112S 
 ;;9002226.02101,"173,T71.112S ",.02)
 ;;T71.112S 
 ;;9002226.02101,"173,T71.112S ",.03)
 ;;30
 ;;9002226.02101,"173,T71.122A ",.01)
 ;;T71.122A 
 ;;9002226.02101,"173,T71.122A ",.02)
 ;;T71.122A 
 ;;9002226.02101,"173,T71.122A ",.03)
 ;;30
 ;;9002226.02101,"173,T71.122D ",.01)
 ;;T71.122D 
 ;;9002226.02101,"173,T71.122D ",.02)
 ;;T71.122D 
 ;;9002226.02101,"173,T71.122D ",.03)
 ;;30
 ;;9002226.02101,"173,T71.122S ",.01)
 ;;T71.122S 
 ;;9002226.02101,"173,T71.122S ",.02)
 ;;T71.122S 
 ;;9002226.02101,"173,T71.122S ",.03)
 ;;30
 ;;9002226.02101,"173,T71.132A ",.01)
 ;;T71.132A 
 ;;9002226.02101,"173,T71.132A ",.02)
 ;;T71.132A 
 ;;9002226.02101,"173,T71.132A ",.03)
 ;;30
 ;;9002226.02101,"173,T71.132D ",.01)
 ;;T71.132D 
 ;;9002226.02101,"173,T71.132D ",.02)
 ;;T71.132D 
 ;;9002226.02101,"173,T71.132D ",.03)
 ;;30
 ;;9002226.02101,"173,T71.132S ",.01)
 ;;T71.132S 
 ;;9002226.02101,"173,T71.132S ",.02)
 ;;T71.132S 
 ;;9002226.02101,"173,T71.132S ",.03)
 ;;30
 ;;9002226.02101,"173,T71.152A ",.01)
 ;;T71.152A 
 ;;9002226.02101,"173,T71.152A ",.02)
 ;;T71.152A 
 ;;9002226.02101,"173,T71.152A ",.03)
 ;;30
 ;;9002226.02101,"173,T71.152D ",.01)
 ;;T71.152D 
 ;;9002226.02101,"173,T71.152D ",.02)
 ;;T71.152D 
 ;;9002226.02101,"173,T71.152D ",.03)
 ;;30
 ;;9002226.02101,"173,T71.152S ",.01)
 ;;T71.152S 
 ;;9002226.02101,"173,T71.152S ",.02)
 ;;T71.152S 
 ;;9002226.02101,"173,T71.152S ",.03)
 ;;30
 ;;9002226.02101,"173,T71.162A ",.01)
 ;;T71.162A 
 ;;9002226.02101,"173,T71.162A ",.02)
 ;;T71.162A 
 ;;9002226.02101,"173,T71.162A ",.03)
 ;;30
 ;;9002226.02101,"173,T71.162D ",.01)
 ;;T71.162D 
 ;;9002226.02101,"173,T71.162D ",.02)
 ;;T71.162D 
 ;;9002226.02101,"173,T71.162D ",.03)
 ;;30
 ;;9002226.02101,"173,T71.162S ",.01)
 ;;T71.162S 
 ;;9002226.02101,"173,T71.162S ",.02)
 ;;T71.162S 
 ;;9002226.02101,"173,T71.162S ",.03)
 ;;30
 ;;9002226.02101,"173,T71.192A ",.01)
 ;;T71.192A 
 ;;9002226.02101,"173,T71.192A ",.02)
 ;;T71.192A 
 ;;9002226.02101,"173,T71.192A ",.03)
 ;;30
 ;;9002226.02101,"173,T71.192D ",.01)
 ;;T71.192D 
 ;;9002226.02101,"173,T71.192D ",.02)
 ;;T71.192D 
 ;;9002226.02101,"173,T71.192D ",.03)
 ;;30
 ;;9002226.02101,"173,T71.192S ",.01)
 ;;T71.192S 
 ;;9002226.02101,"173,T71.192S ",.02)
 ;;T71.192S 
 ;;9002226.02101,"173,T71.192S ",.03)
 ;;30
 ;;9002226.02101,"173,T71.222A ",.01)
 ;;T71.222A 
 ;;9002226.02101,"173,T71.222A ",.02)
 ;;T71.222A 
 ;;9002226.02101,"173,T71.222A ",.03)
 ;;30
 ;;9002226.02101,"173,T71.222D ",.01)
 ;;T71.222D 
 ;;9002226.02101,"173,T71.222D ",.02)
 ;;T71.222D 
 ;;9002226.02101,"173,T71.222D ",.03)
 ;;30
 ;;9002226.02101,"173,T71.222S ",.01)
 ;;T71.222S 
 ;;9002226.02101,"173,T71.222S ",.02)
 ;;T71.222S 
 ;;9002226.02101,"173,T71.222S ",.03)
 ;;30
 ;;9002226.02101,"173,T71.232A ",.01)
 ;;T71.232A 
 ;;9002226.02101,"173,T71.232A ",.02)
 ;;T71.232A 
 ;;9002226.02101,"173,T71.232A ",.03)
 ;;30
 ;;9002226.02101,"173,T71.232D ",.01)
 ;;T71.232D 
 ;;9002226.02101,"173,T71.232D ",.02)
 ;;T71.232D 
 ;;9002226.02101,"173,T71.232D ",.03)
 ;;30
 ;;9002226.02101,"173,T71.232S ",.01)
 ;;T71.232S 
 ;;9002226.02101,"173,T71.232S ",.02)
 ;;T71.232S 
 ;;9002226.02101,"173,T71.232S ",.03)
 ;;30
 ;;9002226.02101,"173,X71.0XXA ",.01)
 ;;X71.0XXA 
 ;;9002226.02101,"173,X71.0XXA ",.02)
 ;;X71.0XXA 
 ;;9002226.02101,"173,X71.0XXA ",.03)
 ;;30
 ;;9002226.02101,"173,X71.0XXD ",.01)
 ;;X71.0XXD 
 ;;9002226.02101,"173,X71.0XXD ",.02)
 ;;X71.0XXD 
 ;;9002226.02101,"173,X71.0XXD ",.03)
 ;;30
 ;;9002226.02101,"173,X71.0XXS ",.01)
 ;;X71.0XXS 
 ;;9002226.02101,"173,X71.0XXS ",.02)
 ;;X71.0XXS 
 ;;9002226.02101,"173,X71.0XXS ",.03)
 ;;30
 ;;9002226.02101,"173,X71.1XXA ",.01)
 ;;X71.1XXA 
 ;;9002226.02101,"173,X71.1XXA ",.02)
 ;;X71.1XXA 
 ;;9002226.02101,"173,X71.1XXA ",.03)
 ;;30
 ;;9002226.02101,"173,X71.1XXD ",.01)
 ;;X71.1XXD 
 ;;9002226.02101,"173,X71.1XXD ",.02)
 ;;X71.1XXD 
 ;;9002226.02101,"173,X71.1XXD ",.03)
 ;;30
 ;;9002226.02101,"173,X71.1XXS ",.01)
 ;;X71.1XXS 
 ;;9002226.02101,"173,X71.1XXS ",.02)
 ;;X71.1XXS 
 ;;9002226.02101,"173,X71.1XXS ",.03)
 ;;30
 ;;9002226.02101,"173,X71.2XXA ",.01)
 ;;X71.2XXA 
 ;;9002226.02101,"173,X71.2XXA ",.02)
 ;;X71.2XXA 
 ;;9002226.02101,"173,X71.2XXA ",.03)
 ;;30
 ;;9002226.02101,"173,X71.2XXD ",.01)
 ;;X71.2XXD 
 ;;9002226.02101,"173,X71.2XXD ",.02)
 ;;X71.2XXD 
 ;;9002226.02101,"173,X71.2XXD ",.03)
 ;;30
 ;;9002226.02101,"173,X71.2XXS ",.01)
 ;;X71.2XXS 
 ;;9002226.02101,"173,X71.2XXS ",.02)
 ;;X71.2XXS 
 ;;9002226.02101,"173,X71.2XXS ",.03)
 ;;30
 ;;9002226.02101,"173,X71.3XXA ",.01)
 ;;X71.3XXA 
 ;;9002226.02101,"173,X71.3XXA ",.02)
 ;;X71.3XXA 
 ;;9002226.02101,"173,X71.3XXA ",.03)
 ;;30
 ;;9002226.02101,"173,X71.3XXD ",.01)
 ;;X71.3XXD 
 ;;9002226.02101,"173,X71.3XXD ",.02)
 ;;X71.3XXD 
 ;;9002226.02101,"173,X71.3XXD ",.03)
 ;;30
 ;;9002226.02101,"173,X71.3XXS ",.01)
 ;;X71.3XXS 
 ;;9002226.02101,"173,X71.3XXS ",.02)
 ;;X71.3XXS 
 ;;9002226.02101,"173,X71.3XXS ",.03)
 ;;30
 ;;9002226.02101,"173,X71.8XXA ",.01)
 ;;X71.8XXA 
 ;;9002226.02101,"173,X71.8XXA ",.02)
 ;;X71.8XXA 
 ;;9002226.02101,"173,X71.8XXA ",.03)
 ;;30
 ;;9002226.02101,"173,X71.8XXD ",.01)
 ;;X71.8XXD 
 ;;9002226.02101,"173,X71.8XXD ",.02)
 ;;X71.8XXD 
 ;;9002226.02101,"173,X71.8XXD ",.03)
 ;;30
 ;;9002226.02101,"173,X71.8XXS ",.01)
 ;;X71.8XXS 
 ;;9002226.02101,"173,X71.8XXS ",.02)
 ;;X71.8XXS 
 ;;9002226.02101,"173,X71.8XXS ",.03)
 ;;30
 ;;9002226.02101,"173,X71.9XXA ",.01)
 ;;X71.9XXA 
 ;;9002226.02101,"173,X71.9XXA ",.02)
 ;;X71.9XXA 
 ;;9002226.02101,"173,X71.9XXA ",.03)
 ;;30