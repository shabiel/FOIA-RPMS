ATXD7I4 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 12, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"810,J67.4 ",.02)
 ;;J67.4 
 ;;9002226.02101,"810,J67.4 ",.03)
 ;;30
 ;;9002226.02101,"810,J67.5 ",.01)
 ;;J67.5 
 ;;9002226.02101,"810,J67.5 ",.02)
 ;;J67.5 
 ;;9002226.02101,"810,J67.5 ",.03)
 ;;30
 ;;9002226.02101,"810,J67.6 ",.01)
 ;;J67.6 
 ;;9002226.02101,"810,J67.6 ",.02)
 ;;J67.6 
 ;;9002226.02101,"810,J67.6 ",.03)
 ;;30
 ;;9002226.02101,"810,J67.8 ",.01)
 ;;J67.8 
 ;;9002226.02101,"810,J67.8 ",.02)
 ;;J67.8 
 ;;9002226.02101,"810,J67.8 ",.03)
 ;;30
 ;;9002226.02101,"810,J67.9 ",.01)
 ;;J67.9 
 ;;9002226.02101,"810,J67.9 ",.02)
 ;;J67.9 
 ;;9002226.02101,"810,J67.9 ",.03)
 ;;30
 ;;9002226.02101,"810,K70.11 ",.01)
 ;;K70.11 
 ;;9002226.02101,"810,K70.11 ",.02)
 ;;K70.11 
 ;;9002226.02101,"810,K70.11 ",.03)
 ;;30
 ;;9002226.02101,"810,K70.2 ",.01)
 ;;K70.2 
 ;;9002226.02101,"810,K70.2 ",.02)
 ;;K70.2 
 ;;9002226.02101,"810,K70.2 ",.03)
 ;;30
 ;;9002226.02101,"810,K70.30 ",.01)
 ;;K70.30 
 ;;9002226.02101,"810,K70.30 ",.02)
 ;;K70.30 
 ;;9002226.02101,"810,K70.30 ",.03)
 ;;30
 ;;9002226.02101,"810,K70.31 ",.01)
 ;;K70.31 
 ;;9002226.02101,"810,K70.31 ",.02)
 ;;K70.31 
 ;;9002226.02101,"810,K70.31 ",.03)
 ;;30
 ;;9002226.02101,"810,K70.40 ",.01)
 ;;K70.40 
 ;;9002226.02101,"810,K70.40 ",.02)
 ;;K70.40 
 ;;9002226.02101,"810,K70.40 ",.03)
 ;;30
 ;;9002226.02101,"810,K70.41 ",.01)
 ;;K70.41 
 ;;9002226.02101,"810,K70.41 ",.02)
 ;;K70.41 
 ;;9002226.02101,"810,K70.41 ",.03)
 ;;30
 ;;9002226.02101,"810,K73.0 ",.01)
 ;;K73.0 
 ;;9002226.02101,"810,K73.0 ",.02)
 ;;K73.0 
 ;;9002226.02101,"810,K73.0 ",.03)
 ;;30
 ;;9002226.02101,"810,K73.1 ",.01)
 ;;K73.1 
 ;;9002226.02101,"810,K73.1 ",.02)
 ;;K73.1 
 ;;9002226.02101,"810,K73.1 ",.03)
 ;;30
 ;;9002226.02101,"810,K73.2 ",.01)
 ;;K73.2 
 ;;9002226.02101,"810,K73.2 ",.02)
 ;;K73.2 
 ;;9002226.02101,"810,K73.2 ",.03)
 ;;30
 ;;9002226.02101,"810,K73.8 ",.01)
 ;;K73.8 
 ;;9002226.02101,"810,K73.8 ",.02)
 ;;K73.8 
 ;;9002226.02101,"810,K73.8 ",.03)
 ;;30
 ;;9002226.02101,"810,K73.9 ",.01)
 ;;K73.9 
 ;;9002226.02101,"810,K73.9 ",.02)
 ;;K73.9 
 ;;9002226.02101,"810,K73.9 ",.03)
 ;;30
 ;;9002226.02101,"810,K74.0 ",.01)
 ;;K74.0 
 ;;9002226.02101,"810,K74.0 ",.02)
 ;;K74.0 
 ;;9002226.02101,"810,K74.0 ",.03)
 ;;30
 ;;9002226.02101,"810,K74.1 ",.01)
 ;;K74.1 
 ;;9002226.02101,"810,K74.1 ",.02)
 ;;K74.1 
 ;;9002226.02101,"810,K74.1 ",.03)
 ;;30
 ;;9002226.02101,"810,K74.2 ",.01)
 ;;K74.2 
 ;;9002226.02101,"810,K74.2 ",.02)
 ;;K74.2 
 ;;9002226.02101,"810,K74.2 ",.03)
 ;;30
 ;;9002226.02101,"810,K74.3 ",.01)
 ;;K74.3 
 ;;9002226.02101,"810,K74.3 ",.02)
 ;;K74.3 
 ;;9002226.02101,"810,K74.3 ",.03)
 ;;30
 ;;9002226.02101,"810,K74.4 ",.01)
 ;;K74.4 
 ;;9002226.02101,"810,K74.4 ",.02)
 ;;K74.4 
 ;;9002226.02101,"810,K74.4 ",.03)
 ;;30
 ;;9002226.02101,"810,K74.5 ",.01)
 ;;K74.5 
 ;;9002226.02101,"810,K74.5 ",.02)
 ;;K74.5 
 ;;9002226.02101,"810,K74.5 ",.03)
 ;;30
 ;;9002226.02101,"810,K74.69 ",.01)
 ;;K74.69 
 ;;9002226.02101,"810,K74.69 ",.02)
 ;;K74.69 
 ;;9002226.02101,"810,K74.69 ",.03)
 ;;30
 ;;9002226.02101,"810,K75.81 ",.01)
 ;;K75.81 
 ;;9002226.02101,"810,K75.81 ",.02)
 ;;K75.81 
 ;;9002226.02101,"810,K75.81 ",.03)
 ;;30
 ;;9002226.02101,"810,N02.0 ",.01)
 ;;N02.0 
 ;;9002226.02101,"810,N02.0 ",.02)
 ;;N02.0 
 ;;9002226.02101,"810,N02.0 ",.03)
 ;;30
 ;;9002226.02101,"810,N02.1 ",.01)
 ;;N02.1 
 ;;9002226.02101,"810,N02.1 ",.02)
 ;;N02.1 
 ;;9002226.02101,"810,N02.1 ",.03)
 ;;30
 ;;9002226.02101,"810,N02.2 ",.01)
 ;;N02.2 
 ;;9002226.02101,"810,N02.2 ",.02)
 ;;N02.2 
 ;;9002226.02101,"810,N02.2 ",.03)
 ;;30
 ;;9002226.02101,"810,N02.3 ",.01)
 ;;N02.3 
 ;;9002226.02101,"810,N02.3 ",.02)
 ;;N02.3 
 ;;9002226.02101,"810,N02.3 ",.03)
 ;;30
 ;;9002226.02101,"810,N02.4 ",.01)
 ;;N02.4 
 ;;9002226.02101,"810,N02.4 ",.02)
 ;;N02.4 
 ;;9002226.02101,"810,N02.4 ",.03)
 ;;30
 ;;9002226.02101,"810,N02.5 ",.01)
 ;;N02.5 
 ;;9002226.02101,"810,N02.5 ",.02)
 ;;N02.5 
 ;;9002226.02101,"810,N02.5 ",.03)
 ;;30
 ;;9002226.02101,"810,N02.6 ",.01)
 ;;N02.6 
 ;;9002226.02101,"810,N02.6 ",.02)
 ;;N02.6 
 ;;9002226.02101,"810,N02.6 ",.03)
 ;;30
 ;;9002226.02101,"810,N02.7 ",.01)
 ;;N02.7 
 ;;9002226.02101,"810,N02.7 ",.02)
 ;;N02.7 
 ;;9002226.02101,"810,N02.7 ",.03)
 ;;30
 ;;9002226.02101,"810,N02.8 ",.01)
 ;;N02.8 
 ;;9002226.02101,"810,N02.8 ",.02)
 ;;N02.8 
 ;;9002226.02101,"810,N02.8 ",.03)
 ;;30
 ;;9002226.02101,"810,N02.9 ",.01)
 ;;N02.9 
 ;;9002226.02101,"810,N02.9 ",.02)
 ;;N02.9 
 ;;9002226.02101,"810,N02.9 ",.03)
 ;;30
 ;;9002226.02101,"810,N04.0 ",.01)
 ;;N04.0 
 ;;9002226.02101,"810,N04.0 ",.02)
 ;;N04.0 
 ;;9002226.02101,"810,N04.0 ",.03)
 ;;30
 ;;9002226.02101,"810,N04.1 ",.01)
 ;;N04.1 
 ;;9002226.02101,"810,N04.1 ",.02)
 ;;N04.1 
 ;;9002226.02101,"810,N04.1 ",.03)
 ;;30
 ;;9002226.02101,"810,N04.2 ",.01)
 ;;N04.2 
 ;;9002226.02101,"810,N04.2 ",.02)
 ;;N04.2 
 ;;9002226.02101,"810,N04.2 ",.03)
 ;;30
 ;;9002226.02101,"810,N04.3 ",.01)
 ;;N04.3 
 ;;9002226.02101,"810,N04.3 ",.02)
 ;;N04.3 
 ;;9002226.02101,"810,N04.3 ",.03)
 ;;30
 ;;9002226.02101,"810,N04.4 ",.01)
 ;;N04.4 
 ;;9002226.02101,"810,N04.4 ",.02)
 ;;N04.4 
 ;;9002226.02101,"810,N04.4 ",.03)
 ;;30
 ;;9002226.02101,"810,N04.5 ",.01)
 ;;N04.5 
 ;;9002226.02101,"810,N04.5 ",.02)
 ;;N04.5 
 ;;9002226.02101,"810,N04.5 ",.03)
 ;;30
 ;;9002226.02101,"810,N04.6 ",.01)
 ;;N04.6 
 ;;9002226.02101,"810,N04.6 ",.02)
 ;;N04.6 
 ;;9002226.02101,"810,N04.6 ",.03)
 ;;30
 ;;9002226.02101,"810,N04.7 ",.01)
 ;;N04.7 
 ;;9002226.02101,"810,N04.7 ",.02)
 ;;N04.7 
 ;;9002226.02101,"810,N04.7 ",.03)
 ;;30
 ;;9002226.02101,"810,N04.8 ",.01)
 ;;N04.8 
 ;;9002226.02101,"810,N04.8 ",.02)
 ;;N04.8 
 ;;9002226.02101,"810,N04.8 ",.03)
 ;;30
 ;;9002226.02101,"810,N04.9 ",.01)
 ;;N04.9 
 ;;9002226.02101,"810,N04.9 ",.02)
 ;;N04.9 
 ;;9002226.02101,"810,N04.9 ",.03)
 ;;30
 ;;9002226.02101,"810,N08. ",.01)
 ;;N08. 
 ;;9002226.02101,"810,N08. ",.02)
 ;;N08. 
 ;;9002226.02101,"810,N08. ",.03)
 ;;30
 ;;9002226.02101,"810,N18.6 ",.01)
 ;;N18.6 
 ;;9002226.02101,"810,N18.6 ",.02)
 ;;N18.6 
 ;;9002226.02101,"810,N18.6 ",.03)
 ;;30
 ;;9002226.02101,"810,N18.9 ",.01)
 ;;N18.9 
 ;;9002226.02101,"810,N18.9 ",.02)
 ;;N18.9 
 ;;9002226.02101,"810,N18.9 ",.03)
 ;;30
 ;;9002226.02101,"810,N19. ",.01)
 ;;N19. 
 ;;9002226.02101,"810,N19. ",.02)
 ;;N19. 
 ;;9002226.02101,"810,N19. ",.03)
 ;;30
 ;;9002226.02101,"810,T86.00 ",.01)
 ;;T86.00 
 ;;9002226.02101,"810,T86.00 ",.02)
 ;;T86.00 
 ;;9002226.02101,"810,T86.00 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.01 ",.01)
 ;;T86.01 
 ;;9002226.02101,"810,T86.01 ",.02)
 ;;T86.01 
 ;;9002226.02101,"810,T86.01 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.02 ",.01)
 ;;T86.02 
 ;;9002226.02101,"810,T86.02 ",.02)
 ;;T86.02 
 ;;9002226.02101,"810,T86.02 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.03 ",.01)
 ;;T86.03 
 ;;9002226.02101,"810,T86.03 ",.02)
 ;;T86.03 
 ;;9002226.02101,"810,T86.03 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.09 ",.01)
 ;;T86.09 
 ;;9002226.02101,"810,T86.09 ",.02)
 ;;T86.09 
 ;;9002226.02101,"810,T86.09 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.10 ",.01)
 ;;T86.10 
 ;;9002226.02101,"810,T86.10 ",.02)
 ;;T86.10 
 ;;9002226.02101,"810,T86.10 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.11 ",.01)
 ;;T86.11 
 ;;9002226.02101,"810,T86.11 ",.02)
 ;;T86.11 
 ;;9002226.02101,"810,T86.11 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.12 ",.01)
 ;;T86.12 
 ;;9002226.02101,"810,T86.12 ",.02)
 ;;T86.12 
 ;;9002226.02101,"810,T86.12 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.13 ",.01)
 ;;T86.13 
 ;;9002226.02101,"810,T86.13 ",.02)
 ;;T86.13 
 ;;9002226.02101,"810,T86.13 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.19 ",.01)
 ;;T86.19 
 ;;9002226.02101,"810,T86.19 ",.02)
 ;;T86.19 
 ;;9002226.02101,"810,T86.19 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.20 ",.01)
 ;;T86.20 
 ;;9002226.02101,"810,T86.20 ",.02)
 ;;T86.20 
 ;;9002226.02101,"810,T86.20 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.21 ",.01)
 ;;T86.21 
 ;;9002226.02101,"810,T86.21 ",.02)
 ;;T86.21 
 ;;9002226.02101,"810,T86.21 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.22 ",.01)
 ;;T86.22 
 ;;9002226.02101,"810,T86.22 ",.02)
 ;;T86.22 
 ;;9002226.02101,"810,T86.22 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.23 ",.01)
 ;;T86.23 
 ;;9002226.02101,"810,T86.23 ",.02)
 ;;T86.23 
 ;;9002226.02101,"810,T86.23 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.290 ",.01)
 ;;T86.290 
 ;;9002226.02101,"810,T86.290 ",.02)
 ;;T86.290 
 ;;9002226.02101,"810,T86.290 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.298 ",.01)
 ;;T86.298 
 ;;9002226.02101,"810,T86.298 ",.02)
 ;;T86.298 
 ;;9002226.02101,"810,T86.298 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.30 ",.01)
 ;;T86.30 
 ;;9002226.02101,"810,T86.30 ",.02)
 ;;T86.30 
 ;;9002226.02101,"810,T86.30 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.31 ",.01)
 ;;T86.31 
 ;;9002226.02101,"810,T86.31 ",.02)
 ;;T86.31 
 ;;9002226.02101,"810,T86.31 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.32 ",.01)
 ;;T86.32 
 ;;9002226.02101,"810,T86.32 ",.02)
 ;;T86.32 
 ;;9002226.02101,"810,T86.32 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.33 ",.01)
 ;;T86.33 
 ;;9002226.02101,"810,T86.33 ",.02)
 ;;T86.33 
 ;;9002226.02101,"810,T86.33 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.39 ",.01)
 ;;T86.39 
 ;;9002226.02101,"810,T86.39 ",.02)
 ;;T86.39 
 ;;9002226.02101,"810,T86.39 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.40 ",.01)
 ;;T86.40 
 ;;9002226.02101,"810,T86.40 ",.02)
 ;;T86.40 
 ;;9002226.02101,"810,T86.40 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.41 ",.01)
 ;;T86.41 
 ;;9002226.02101,"810,T86.41 ",.02)
 ;;T86.41 
 ;;9002226.02101,"810,T86.41 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.42 ",.01)
 ;;T86.42 
 ;;9002226.02101,"810,T86.42 ",.02)
 ;;T86.42 
 ;;9002226.02101,"810,T86.42 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.43 ",.01)
 ;;T86.43 
 ;;9002226.02101,"810,T86.43 ",.02)
 ;;T86.43 
 ;;9002226.02101,"810,T86.43 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.49 ",.01)
 ;;T86.49 
 ;;9002226.02101,"810,T86.49 ",.02)
 ;;T86.49 
 ;;9002226.02101,"810,T86.49 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.5 ",.01)
 ;;T86.5 
 ;;9002226.02101,"810,T86.5 ",.02)
 ;;T86.5 
 ;;9002226.02101,"810,T86.5 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.810 ",.01)
 ;;T86.810 
 ;;9002226.02101,"810,T86.810 ",.02)
 ;;T86.810 
 ;;9002226.02101,"810,T86.810 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.811 ",.01)
 ;;T86.811 
 ;;9002226.02101,"810,T86.811 ",.02)
 ;;T86.811 
 ;;9002226.02101,"810,T86.811 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.812 ",.01)
 ;;T86.812 
 ;;9002226.02101,"810,T86.812 ",.02)
 ;;T86.812 
 ;;9002226.02101,"810,T86.812 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.818 ",.01)
 ;;T86.818 
 ;;9002226.02101,"810,T86.818 ",.02)
 ;;T86.818 
 ;;9002226.02101,"810,T86.818 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.819 ",.01)
 ;;T86.819 
 ;;9002226.02101,"810,T86.819 ",.02)
 ;;T86.819 
 ;;9002226.02101,"810,T86.819 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.830 ",.01)
 ;;T86.830 
 ;;9002226.02101,"810,T86.830 ",.02)
 ;;T86.830 
 ;;9002226.02101,"810,T86.830 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.831 ",.01)
 ;;T86.831 
 ;;9002226.02101,"810,T86.831 ",.02)
 ;;T86.831 
 ;;9002226.02101,"810,T86.831 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.832 ",.01)
 ;;T86.832 
 ;;9002226.02101,"810,T86.832 ",.02)
 ;;T86.832 
 ;;9002226.02101,"810,T86.832 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.838 ",.01)
 ;;T86.838 
 ;;9002226.02101,"810,T86.838 ",.02)
 ;;T86.838 
 ;;9002226.02101,"810,T86.838 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.839 ",.01)
 ;;T86.839 
 ;;9002226.02101,"810,T86.839 ",.02)
 ;;T86.839 
 ;;9002226.02101,"810,T86.839 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.850 ",.01)
 ;;T86.850 
 ;;9002226.02101,"810,T86.850 ",.02)
 ;;T86.850 
 ;;9002226.02101,"810,T86.850 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.851 ",.01)
 ;;T86.851 
 ;;9002226.02101,"810,T86.851 ",.02)
 ;;T86.851 
 ;;9002226.02101,"810,T86.851 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.852 ",.01)
 ;;T86.852 
 ;;9002226.02101,"810,T86.852 ",.02)
 ;;T86.852 
 ;;9002226.02101,"810,T86.852 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.858 ",.01)
 ;;T86.858 
 ;;9002226.02101,"810,T86.858 ",.02)
 ;;T86.858 
 ;;9002226.02101,"810,T86.858 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.859 ",.01)
 ;;T86.859 
 ;;9002226.02101,"810,T86.859 ",.02)
 ;;T86.859 
 ;;9002226.02101,"810,T86.859 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.890 ",.01)
 ;;T86.890 
 ;;9002226.02101,"810,T86.890 ",.02)
 ;;T86.890 
 ;;9002226.02101,"810,T86.890 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.891 ",.01)
 ;;T86.891 
 ;;9002226.02101,"810,T86.891 ",.02)
 ;;T86.891 
 ;;9002226.02101,"810,T86.891 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.892 ",.01)
 ;;T86.892 
 ;;9002226.02101,"810,T86.892 ",.02)
 ;;T86.892 
 ;;9002226.02101,"810,T86.892 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.898 ",.01)
 ;;T86.898 
 ;;9002226.02101,"810,T86.898 ",.02)
 ;;T86.898 
 ;;9002226.02101,"810,T86.898 ",.03)
 ;;30
 ;;9002226.02101,"810,T86.899 ",.01)
 ;;T86.899 
 ;;9002226.02101,"810,T86.899 ",.02)
 ;;T86.899 
 ;;9002226.02101,"810,T86.899 ",.03)
 ;;30
 ;;9002226.02101,"810,V42.0 ",.01)
 ;;V42.0
 ;;9002226.02101,"810,V42.0 ",.02)
 ;;V42.89
 ;;9002226.02101,"810,V42.0 ",.03)
 ;;1
 ;;9002226.02101,"810,V58.1 ",.01)
 ;;V58.1