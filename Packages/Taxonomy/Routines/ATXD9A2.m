ATXD9A2 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 13, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1787,L25.4 ",.03)
 ;;30
 ;;9002226.02101,"1787,L25.5 ",.01)
 ;;L25.5 
 ;;9002226.02101,"1787,L25.5 ",.02)
 ;;L25.5 
 ;;9002226.02101,"1787,L25.5 ",.03)
 ;;30
 ;;9002226.02101,"1787,L25.8 ",.01)
 ;;L25.8 
 ;;9002226.02101,"1787,L25.8 ",.02)
 ;;L25.8 
 ;;9002226.02101,"1787,L25.8 ",.03)
 ;;30
 ;;9002226.02101,"1787,L27.0 ",.01)
 ;;L27.0 
 ;;9002226.02101,"1787,L27.0 ",.02)
 ;;L27.0 
 ;;9002226.02101,"1787,L27.0 ",.03)
 ;;30
 ;;9002226.02101,"1787,L27.1 ",.01)
 ;;L27.1 
 ;;9002226.02101,"1787,L27.1 ",.02)
 ;;L27.1 
 ;;9002226.02101,"1787,L27.1 ",.03)
 ;;30
 ;;9002226.02101,"1787,L27.2 ",.01)
 ;;L27.2 
 ;;9002226.02101,"1787,L27.2 ",.02)
 ;;L27.2 
 ;;9002226.02101,"1787,L27.2 ",.03)
 ;;30
 ;;9002226.02101,"1787,L27.8 ",.01)
 ;;L27.8 
 ;;9002226.02101,"1787,L27.8 ",.02)
 ;;L27.8 
 ;;9002226.02101,"1787,L27.8 ",.03)
 ;;30
 ;;9002226.02101,"1787,L27.9 ",.01)
 ;;L27.9 
 ;;9002226.02101,"1787,L27.9 ",.02)
 ;;L27.9 
 ;;9002226.02101,"1787,L27.9 ",.03)
 ;;30
 ;;9002226.02101,"1787,M02.211 ",.01)
 ;;M02.211 
 ;;9002226.02101,"1787,M02.211 ",.02)
 ;;M02.211 
 ;;9002226.02101,"1787,M02.211 ",.03)
 ;;30
 ;;9002226.02101,"1787,M02.212 ",.01)
 ;;M02.212 
 ;;9002226.02101,"1787,M02.212 ",.02)
 ;;M02.212 
 ;;9002226.02101,"1787,M02.212 ",.03)
 ;;30
 ;;9002226.02101,"1787,M02.219 ",.01)
 ;;M02.219 
 ;;9002226.02101,"1787,M02.219 ",.02)
 ;;M02.219 
 ;;9002226.02101,"1787,M02.219 ",.03)
 ;;30
 ;;9002226.02101,"1787,M02.221 ",.01)
 ;;M02.221 
 ;;9002226.02101,"1787,M02.221 ",.02)
 ;;M02.221 
 ;;9002226.02101,"1787,M02.221 ",.03)
 ;;30
 ;;9002226.02101,"1787,M02.222 ",.01)
 ;;M02.222 
 ;;9002226.02101,"1787,M02.222 ",.02)
 ;;M02.222 
 ;;9002226.02101,"1787,M02.222 ",.03)
 ;;30
 ;;9002226.02101,"1787,M02.229 ",.01)
 ;;M02.229 
 ;;9002226.02101,"1787,M02.229 ",.02)
 ;;M02.229 
 ;;9002226.02101,"1787,M02.229 ",.03)
 ;;30
 ;;9002226.02101,"1787,M02.231 ",.01)
 ;;M02.231 
 ;;9002226.02101,"1787,M02.231 ",.02)
 ;;M02.231 
 ;;9002226.02101,"1787,M02.231 ",.03)
 ;;30
 ;;9002226.02101,"1787,M02.232 ",.01)
 ;;M02.232 
 ;;9002226.02101,"1787,M02.232 ",.02)
 ;;M02.232 
 ;;9002226.02101,"1787,M02.232 ",.03)
 ;;30
 ;;9002226.02101,"1787,M02.239 ",.01)
 ;;M02.239 
 ;;9002226.02101,"1787,M02.239 ",.02)
 ;;M02.239 
 ;;9002226.02101,"1787,M02.239 ",.03)
 ;;30
 ;;9002226.02101,"1787,M02.241 ",.01)
 ;;M02.241 
 ;;9002226.02101,"1787,M02.241 ",.02)
 ;;M02.241 
 ;;9002226.02101,"1787,M02.241 ",.03)
 ;;30
 ;;9002226.02101,"1787,M02.242 ",.01)
 ;;M02.242 
 ;;9002226.02101,"1787,M02.242 ",.02)
 ;;M02.242 
 ;;9002226.02101,"1787,M02.242 ",.03)
 ;;30
 ;;9002226.02101,"1787,M02.249 ",.01)
 ;;M02.249 
 ;;9002226.02101,"1787,M02.249 ",.02)
 ;;M02.249 
 ;;9002226.02101,"1787,M02.249 ",.03)
 ;;30
 ;;9002226.02101,"1787,M02.251 ",.01)
 ;;M02.251 
 ;;9002226.02101,"1787,M02.251 ",.02)
 ;;M02.251 
 ;;9002226.02101,"1787,M02.251 ",.03)
 ;;30
 ;;9002226.02101,"1787,M02.252 ",.01)
 ;;M02.252 
 ;;9002226.02101,"1787,M02.252 ",.02)
 ;;M02.252 
 ;;9002226.02101,"1787,M02.252 ",.03)
 ;;30
 ;;9002226.02101,"1787,M02.259 ",.01)
 ;;M02.259 
 ;;9002226.02101,"1787,M02.259 ",.02)
 ;;M02.259 
 ;;9002226.02101,"1787,M02.259 ",.03)
 ;;30
 ;;9002226.02101,"1787,M02.261 ",.01)
 ;;M02.261 
 ;;9002226.02101,"1787,M02.261 ",.02)
 ;;M02.261 
 ;;9002226.02101,"1787,M02.261 ",.03)
 ;;30
 ;;9002226.02101,"1787,M02.262 ",.01)
 ;;M02.262 
 ;;9002226.02101,"1787,M02.262 ",.02)
 ;;M02.262 
 ;;9002226.02101,"1787,M02.262 ",.03)
 ;;30
 ;;9002226.02101,"1787,M02.269 ",.01)
 ;;M02.269 
 ;;9002226.02101,"1787,M02.269 ",.02)
 ;;M02.269 
 ;;9002226.02101,"1787,M02.269 ",.03)
 ;;30
 ;;9002226.02101,"1787,M02.271 ",.01)
 ;;M02.271 
 ;;9002226.02101,"1787,M02.271 ",.02)
 ;;M02.271 
 ;;9002226.02101,"1787,M02.271 ",.03)
 ;;30
 ;;9002226.02101,"1787,M02.272 ",.01)
 ;;M02.272 
 ;;9002226.02101,"1787,M02.272 ",.02)
 ;;M02.272 
 ;;9002226.02101,"1787,M02.272 ",.03)
 ;;30
 ;;9002226.02101,"1787,M02.279 ",.01)
 ;;M02.279 
 ;;9002226.02101,"1787,M02.279 ",.02)
 ;;M02.279 
 ;;9002226.02101,"1787,M02.279 ",.03)
 ;;30
 ;;9002226.02101,"1787,M02.28 ",.01)
 ;;M02.28 
 ;;9002226.02101,"1787,M02.28 ",.02)
 ;;M02.28 
 ;;9002226.02101,"1787,M02.28 ",.03)
 ;;30
 ;;9002226.02101,"1787,M02.29 ",.01)
 ;;M02.29 
 ;;9002226.02101,"1787,M02.29 ",.02)
 ;;M02.29 
 ;;9002226.02101,"1787,M02.29 ",.03)
 ;;30
 ;;9002226.02101,"1787,T36.0X5A ",.01)
 ;;T36.0X5A 
 ;;9002226.02101,"1787,T36.0X5A ",.02)
 ;;T36.0X5A 
 ;;9002226.02101,"1787,T36.0X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T36.1X5A ",.01)
 ;;T36.1X5A 
 ;;9002226.02101,"1787,T36.1X5A ",.02)
 ;;T36.1X5A 
 ;;9002226.02101,"1787,T36.1X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T36.2X5A ",.01)
 ;;T36.2X5A 
 ;;9002226.02101,"1787,T36.2X5A ",.02)
 ;;T36.2X5A 
 ;;9002226.02101,"1787,T36.2X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T36.3X5A ",.01)
 ;;T36.3X5A 
 ;;9002226.02101,"1787,T36.3X5A ",.02)
 ;;T36.3X5A 
 ;;9002226.02101,"1787,T36.3X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T36.4X5A ",.01)
 ;;T36.4X5A 
 ;;9002226.02101,"1787,T36.4X5A ",.02)
 ;;T36.4X5A 
 ;;9002226.02101,"1787,T36.4X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T36.5X5A ",.01)
 ;;T36.5X5A 
 ;;9002226.02101,"1787,T36.5X5A ",.02)
 ;;T36.5X5A 
 ;;9002226.02101,"1787,T36.5X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T36.6X5A ",.01)
 ;;T36.6X5A 
 ;;9002226.02101,"1787,T36.6X5A ",.02)
 ;;T36.6X5A 
 ;;9002226.02101,"1787,T36.6X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T36.7X5A ",.01)
 ;;T36.7X5A 
 ;;9002226.02101,"1787,T36.7X5A ",.02)
 ;;T36.7X5A 
 ;;9002226.02101,"1787,T36.7X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T36.8X5A ",.01)
 ;;T36.8X5A 
 ;;9002226.02101,"1787,T36.8X5A ",.02)
 ;;T36.8X5A 
 ;;9002226.02101,"1787,T36.8X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T36.95XA ",.01)
 ;;T36.95XA 
 ;;9002226.02101,"1787,T36.95XA ",.02)
 ;;T36.95XA 
 ;;9002226.02101,"1787,T36.95XA ",.03)
 ;;30
 ;;9002226.02101,"1787,T37.0X5A ",.01)
 ;;T37.0X5A 
 ;;9002226.02101,"1787,T37.0X5A ",.02)
 ;;T37.0X5A 
 ;;9002226.02101,"1787,T37.0X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T37.1X5A ",.01)
 ;;T37.1X5A 
 ;;9002226.02101,"1787,T37.1X5A ",.02)
 ;;T37.1X5A 
 ;;9002226.02101,"1787,T37.1X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T37.2X5A ",.01)
 ;;T37.2X5A 
 ;;9002226.02101,"1787,T37.2X5A ",.02)
 ;;T37.2X5A 
 ;;9002226.02101,"1787,T37.2X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T37.3X5A ",.01)
 ;;T37.3X5A 
 ;;9002226.02101,"1787,T37.3X5A ",.02)
 ;;T37.3X5A 
 ;;9002226.02101,"1787,T37.3X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T37.4X5A ",.01)
 ;;T37.4X5A 
 ;;9002226.02101,"1787,T37.4X5A ",.02)
 ;;T37.4X5A 
 ;;9002226.02101,"1787,T37.4X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T37.5X5A ",.01)
 ;;T37.5X5A 
 ;;9002226.02101,"1787,T37.5X5A ",.02)
 ;;T37.5X5A 
 ;;9002226.02101,"1787,T37.5X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T37.8X5A ",.01)
 ;;T37.8X5A 
 ;;9002226.02101,"1787,T37.8X5A ",.02)
 ;;T37.8X5A 
 ;;9002226.02101,"1787,T37.8X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T37.95XA ",.01)
 ;;T37.95XA 
 ;;9002226.02101,"1787,T37.95XA ",.02)
 ;;T37.95XA 
 ;;9002226.02101,"1787,T37.95XA ",.03)
 ;;30
 ;;9002226.02101,"1787,T38.0X5A ",.01)
 ;;T38.0X5A 
 ;;9002226.02101,"1787,T38.0X5A ",.02)
 ;;T38.0X5A 
 ;;9002226.02101,"1787,T38.0X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T38.1X5A ",.01)
 ;;T38.1X5A 
 ;;9002226.02101,"1787,T38.1X5A ",.02)
 ;;T38.1X5A 
 ;;9002226.02101,"1787,T38.1X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T38.2X5A ",.01)
 ;;T38.2X5A 
 ;;9002226.02101,"1787,T38.2X5A ",.02)
 ;;T38.2X5A 
 ;;9002226.02101,"1787,T38.2X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T38.3X5A ",.01)
 ;;T38.3X5A 
 ;;9002226.02101,"1787,T38.3X5A ",.02)
 ;;T38.3X5A 
 ;;9002226.02101,"1787,T38.3X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T38.4X5A ",.01)
 ;;T38.4X5A 
 ;;9002226.02101,"1787,T38.4X5A ",.02)
 ;;T38.4X5A 
 ;;9002226.02101,"1787,T38.4X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T38.5X5A ",.01)
 ;;T38.5X5A 
 ;;9002226.02101,"1787,T38.5X5A ",.02)
 ;;T38.5X5A 
 ;;9002226.02101,"1787,T38.5X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T38.6X5A ",.01)
 ;;T38.6X5A 
 ;;9002226.02101,"1787,T38.6X5A ",.02)
 ;;T38.6X5A 
 ;;9002226.02101,"1787,T38.6X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T38.7X5A ",.01)
 ;;T38.7X5A 
 ;;9002226.02101,"1787,T38.7X5A ",.02)
 ;;T38.7X5A 
 ;;9002226.02101,"1787,T38.7X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T38.805A ",.01)
 ;;T38.805A 
 ;;9002226.02101,"1787,T38.805A ",.02)
 ;;T38.805A 
 ;;9002226.02101,"1787,T38.805A ",.03)
 ;;30
 ;;9002226.02101,"1787,T38.815A ",.01)
 ;;T38.815A 
 ;;9002226.02101,"1787,T38.815A ",.02)
 ;;T38.815A 
 ;;9002226.02101,"1787,T38.815A ",.03)
 ;;30
 ;;9002226.02101,"1787,T38.895A ",.01)
 ;;T38.895A 
 ;;9002226.02101,"1787,T38.895A ",.02)
 ;;T38.895A 
 ;;9002226.02101,"1787,T38.895A ",.03)
 ;;30
 ;;9002226.02101,"1787,T38.905A ",.01)
 ;;T38.905A 
 ;;9002226.02101,"1787,T38.905A ",.02)
 ;;T38.905A 
 ;;9002226.02101,"1787,T38.905A ",.03)
 ;;30
 ;;9002226.02101,"1787,T38.995A ",.01)
 ;;T38.995A 
 ;;9002226.02101,"1787,T38.995A ",.02)
 ;;T38.995A 
 ;;9002226.02101,"1787,T38.995A ",.03)
 ;;30
 ;;9002226.02101,"1787,T39.015A ",.01)
 ;;T39.015A 
 ;;9002226.02101,"1787,T39.015A ",.02)
 ;;T39.015A 
 ;;9002226.02101,"1787,T39.015A ",.03)
 ;;30
 ;;9002226.02101,"1787,T39.095A ",.01)
 ;;T39.095A 
 ;;9002226.02101,"1787,T39.095A ",.02)
 ;;T39.095A 
 ;;9002226.02101,"1787,T39.095A ",.03)
 ;;30
 ;;9002226.02101,"1787,T39.1X5A ",.01)
 ;;T39.1X5A 
 ;;9002226.02101,"1787,T39.1X5A ",.02)
 ;;T39.1X5A 
 ;;9002226.02101,"1787,T39.1X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T39.2X5A ",.01)
 ;;T39.2X5A 
 ;;9002226.02101,"1787,T39.2X5A ",.02)
 ;;T39.2X5A 
 ;;9002226.02101,"1787,T39.2X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T39.315A ",.01)
 ;;T39.315A 
 ;;9002226.02101,"1787,T39.315A ",.02)
 ;;T39.315A 
 ;;9002226.02101,"1787,T39.315A ",.03)
 ;;30
 ;;9002226.02101,"1787,T39.395A ",.01)
 ;;T39.395A 
 ;;9002226.02101,"1787,T39.395A ",.02)
 ;;T39.395A 
 ;;9002226.02101,"1787,T39.395A ",.03)
 ;;30
 ;;9002226.02101,"1787,T39.4X5A ",.01)
 ;;T39.4X5A 
 ;;9002226.02101,"1787,T39.4X5A ",.02)
 ;;T39.4X5A 
 ;;9002226.02101,"1787,T39.4X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T39.8X5A ",.01)
 ;;T39.8X5A 
 ;;9002226.02101,"1787,T39.8X5A ",.02)
 ;;T39.8X5A 
 ;;9002226.02101,"1787,T39.8X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T39.95XA ",.01)
 ;;T39.95XA 
 ;;9002226.02101,"1787,T39.95XA ",.02)
 ;;T39.95XA 
 ;;9002226.02101,"1787,T39.95XA ",.03)
 ;;30
 ;;9002226.02101,"1787,T40.0X5A ",.01)
 ;;T40.0X5A 
 ;;9002226.02101,"1787,T40.0X5A ",.02)
 ;;T40.0X5A 
 ;;9002226.02101,"1787,T40.0X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T40.1X5A ",.01)
 ;;T40.1X5A 
 ;;9002226.02101,"1787,T40.1X5A ",.02)
 ;;T40.1X5A 
 ;;9002226.02101,"1787,T40.1X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T40.2X5A ",.01)
 ;;T40.2X5A 
 ;;9002226.02101,"1787,T40.2X5A ",.02)
 ;;T40.2X5A 
 ;;9002226.02101,"1787,T40.2X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T40.3X5A ",.01)
 ;;T40.3X5A 
 ;;9002226.02101,"1787,T40.3X5A ",.02)
 ;;T40.3X5A 
 ;;9002226.02101,"1787,T40.3X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T40.4X5A ",.01)
 ;;T40.4X5A 
 ;;9002226.02101,"1787,T40.4X5A ",.02)
 ;;T40.4X5A 
 ;;9002226.02101,"1787,T40.4X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T40.5X5A ",.01)
 ;;T40.5X5A 
 ;;9002226.02101,"1787,T40.5X5A ",.02)
 ;;T40.5X5A 
 ;;9002226.02101,"1787,T40.5X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T40.605A ",.01)
 ;;T40.605A 
 ;;9002226.02101,"1787,T40.605A ",.02)
 ;;T40.605A 
 ;;9002226.02101,"1787,T40.605A ",.03)
 ;;30
 ;;9002226.02101,"1787,T40.695A ",.01)
 ;;T40.695A 
 ;;9002226.02101,"1787,T40.695A ",.02)
 ;;T40.695A 
 ;;9002226.02101,"1787,T40.695A ",.03)
 ;;30
 ;;9002226.02101,"1787,T40.7X5A ",.01)
 ;;T40.7X5A 
 ;;9002226.02101,"1787,T40.7X5A ",.02)
 ;;T40.7X5A 
 ;;9002226.02101,"1787,T40.7X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T40.8X5A ",.01)
 ;;T40.8X5A 
 ;;9002226.02101,"1787,T40.8X5A ",.02)
 ;;T40.8X5A 
 ;;9002226.02101,"1787,T40.8X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T40.905A ",.01)
 ;;T40.905A 
 ;;9002226.02101,"1787,T40.905A ",.02)
 ;;T40.905A 
 ;;9002226.02101,"1787,T40.905A ",.03)
 ;;30
 ;;9002226.02101,"1787,T40.995A ",.01)
 ;;T40.995A 
 ;;9002226.02101,"1787,T40.995A ",.02)
 ;;T40.995A 
 ;;9002226.02101,"1787,T40.995A ",.03)
 ;;30
 ;;9002226.02101,"1787,T41.0X5A ",.01)
 ;;T41.0X5A 
 ;;9002226.02101,"1787,T41.0X5A ",.02)
 ;;T41.0X5A 
 ;;9002226.02101,"1787,T41.0X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T41.1X5A ",.01)
 ;;T41.1X5A 
 ;;9002226.02101,"1787,T41.1X5A ",.02)
 ;;T41.1X5A 
 ;;9002226.02101,"1787,T41.1X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T41.205A ",.01)
 ;;T41.205A 
 ;;9002226.02101,"1787,T41.205A ",.02)
 ;;T41.205A 
 ;;9002226.02101,"1787,T41.205A ",.03)
 ;;30
 ;;9002226.02101,"1787,T41.295A ",.01)
 ;;T41.295A 
 ;;9002226.02101,"1787,T41.295A ",.02)
 ;;T41.295A 
 ;;9002226.02101,"1787,T41.295A ",.03)
 ;;30
 ;;9002226.02101,"1787,T41.3X5A ",.01)
 ;;T41.3X5A 
 ;;9002226.02101,"1787,T41.3X5A ",.02)
 ;;T41.3X5A 
 ;;9002226.02101,"1787,T41.3X5A ",.03)
 ;;30
 ;;9002226.02101,"1787,T41.45XA ",.01)
 ;;T41.45XA 
 ;;9002226.02101,"1787,T41.45XA ",.02)
 ;;T41.45XA 
 ;;9002226.02101,"1787,T41.45XA ",.03)
 ;;30
 ;;9002226.02101,"1787,T41.5X5A ",.01)
 ;;T41.5X5A 
 ;;9002226.02101,"1787,T41.5X5A ",.02)
 ;;T41.5X5A 
 ;;9002226.02101,"1787,T41.5X5A ",.03)
 ;;30