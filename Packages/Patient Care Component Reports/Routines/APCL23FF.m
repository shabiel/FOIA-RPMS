APCL23FF ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 24, 2009 ;
 ;;3.0;IHS PCC REPORTS;**24**;FEB 05, 1997
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1019,654.62 ",.01)
 ;;654.62 
 ;;9002226.02101,"1019,654.62 ",.02)
 ;;654.62 
 ;;9002226.02101,"1019,654.64 ",.01)
 ;;654.64 
 ;;9002226.02101,"1019,654.64 ",.02)
 ;;654.64 
 ;;9002226.02101,"1019,654.71 ",.01)
 ;;654.71 
 ;;9002226.02101,"1019,654.71 ",.02)
 ;;654.71 
 ;;9002226.02101,"1019,654.72 ",.01)
 ;;654.72 
 ;;9002226.02101,"1019,654.72 ",.02)
 ;;654.72 
 ;;9002226.02101,"1019,654.74 ",.01)
 ;;654.74 
 ;;9002226.02101,"1019,654.74 ",.02)
 ;;654.74 
 ;;9002226.02101,"1019,654.81 ",.01)
 ;;654.81 
 ;;9002226.02101,"1019,654.81 ",.02)
 ;;654.81 
 ;;9002226.02101,"1019,654.82 ",.01)
 ;;654.82 
 ;;9002226.02101,"1019,654.82 ",.02)
 ;;654.82 
 ;;9002226.02101,"1019,654.84 ",.01)
 ;;654.84 
 ;;9002226.02101,"1019,654.84 ",.02)
 ;;654.84 
 ;;9002226.02101,"1019,654.91 ",.01)
 ;;654.91 
 ;;9002226.02101,"1019,654.91 ",.02)
 ;;654.91 
 ;;9002226.02101,"1019,654.92 ",.01)
 ;;654.92 
 ;;9002226.02101,"1019,654.92 ",.02)
 ;;654.92 
 ;;9002226.02101,"1019,654.94 ",.01)
 ;;654.94 
 ;;9002226.02101,"1019,654.94 ",.02)
 ;;654.94 
 ;;9002226.02101,"1019,655.01 ",.01)
 ;;655.01 
 ;;9002226.02101,"1019,655.01 ",.02)
 ;;655.01 
 ;;9002226.02101,"1019,655.11 ",.01)
 ;;655.11 
 ;;9002226.02101,"1019,655.11 ",.02)
 ;;655.11 
 ;;9002226.02101,"1019,655.21 ",.01)
 ;;655.21 
 ;;9002226.02101,"1019,655.21 ",.02)
 ;;655.21 
 ;;9002226.02101,"1019,655.31 ",.01)
 ;;655.31 
 ;;9002226.02101,"1019,655.31 ",.02)
 ;;655.31 
 ;;9002226.02101,"1019,655.41 ",.01)
 ;;655.41 
 ;;9002226.02101,"1019,655.41 ",.02)
 ;;655.41 
 ;;9002226.02101,"1019,655.51 ",.01)
 ;;655.51 
 ;;9002226.02101,"1019,655.51 ",.02)
 ;;655.51 
 ;;9002226.02101,"1019,655.61 ",.01)
 ;;655.61 
 ;;9002226.02101,"1019,655.61 ",.02)
 ;;655.61 
 ;;9002226.02101,"1019,655.71 ",.01)
 ;;655.71 
 ;;9002226.02101,"1019,655.71 ",.02)
 ;;655.71 
 ;;9002226.02101,"1019,655.81 ",.01)
 ;;655.81 
 ;;9002226.02101,"1019,655.81 ",.02)
 ;;655.81 
 ;;9002226.02101,"1019,655.91 ",.01)
 ;;655.91 
 ;;9002226.02101,"1019,655.91 ",.02)
 ;;655.91 
 ;;9002226.02101,"1019,656.01 ",.01)
 ;;656.01 
 ;;9002226.02101,"1019,656.01 ",.02)
 ;;656.01 
 ;;9002226.02101,"1019,656.11 ",.01)
 ;;656.11 
 ;;9002226.02101,"1019,656.11 ",.02)
 ;;656.11 
 ;;9002226.02101,"1019,656.21 ",.01)
 ;;656.21 
 ;;9002226.02101,"1019,656.21 ",.02)
 ;;656.21 
 ;;9002226.02101,"1019,656.31 ",.01)
 ;;656.31 
 ;;9002226.02101,"1019,656.31 ",.02)
 ;;656.31 
 ;;9002226.02101,"1019,656.41 ",.01)
 ;;656.41 
 ;;9002226.02101,"1019,656.41 ",.02)
 ;;656.41 
 ;;9002226.02101,"1019,656.51 ",.01)
 ;;656.51 
 ;;9002226.02101,"1019,656.51 ",.02)
 ;;656.51 
 ;;9002226.02101,"1019,656.61 ",.01)
 ;;656.61 
 ;;9002226.02101,"1019,656.61 ",.02)
 ;;656.61 
 ;;9002226.02101,"1019,656.71 ",.01)
 ;;656.71 
 ;;9002226.02101,"1019,656.71 ",.02)
 ;;656.71 
 ;;9002226.02101,"1019,656.81 ",.01)
 ;;656.81 
 ;;9002226.02101,"1019,656.81 ",.02)
 ;;656.81 
 ;;9002226.02101,"1019,656.91 ",.01)
 ;;656.91 
 ;;9002226.02101,"1019,656.91 ",.02)
 ;;656.91 
 ;;9002226.02101,"1019,657.01 ",.01)
 ;;657.01 
 ;;9002226.02101,"1019,657.01 ",.02)
 ;;657.01 
 ;;9002226.02101,"1019,658.01 ",.01)
 ;;658.01 
 ;;9002226.02101,"1019,658.01 ",.02)
 ;;658.01 
 ;;9002226.02101,"1019,658.11 ",.01)
 ;;658.11 
 ;;9002226.02101,"1019,658.11 ",.02)
 ;;658.11 
 ;;9002226.02101,"1019,658.21 ",.01)
 ;;658.21 
 ;;9002226.02101,"1019,658.21 ",.02)
 ;;658.21 
 ;;9002226.02101,"1019,658.31 ",.01)
 ;;658.31 
 ;;9002226.02101,"1019,658.31 ",.02)
 ;;658.31 
 ;;9002226.02101,"1019,658.41 ",.01)
 ;;658.41 
 ;;9002226.02101,"1019,658.41 ",.02)
 ;;658.41 
 ;;9002226.02101,"1019,658.81 ",.01)
 ;;658.81 
 ;;9002226.02101,"1019,658.81 ",.02)
 ;;658.81 
 ;;9002226.02101,"1019,658.91 ",.01)
 ;;658.91 
 ;;9002226.02101,"1019,658.91 ",.02)
 ;;658.91 
 ;;9002226.02101,"1019,659.01 ",.01)
 ;;659.01 
 ;;9002226.02101,"1019,659.01 ",.02)
 ;;659.01 
 ;;9002226.02101,"1019,659.11 ",.01)
 ;;659.11 
 ;;9002226.02101,"1019,659.11 ",.02)
 ;;659.11 
 ;;9002226.02101,"1019,659.21 ",.01)
 ;;659.21 
 ;;9002226.02101,"1019,659.21 ",.02)
 ;;659.21 
 ;;9002226.02101,"1019,659.31 ",.01)
 ;;659.31 
 ;;9002226.02101,"1019,659.31 ",.02)
 ;;659.31 
 ;;9002226.02101,"1019,659.41 ",.01)
 ;;659.41 
 ;;9002226.02101,"1019,659.41 ",.02)
 ;;659.41 
 ;;9002226.02101,"1019,659.51 ",.01)
 ;;659.51 
 ;;9002226.02101,"1019,659.51 ",.02)
 ;;659.51 
 ;;9002226.02101,"1019,659.61 ",.01)
 ;;659.61 
 ;;9002226.02101,"1019,659.61 ",.02)
 ;;659.61 
 ;;9002226.02101,"1019,659.71 ",.01)
 ;;659.71 
 ;;9002226.02101,"1019,659.71 ",.02)
 ;;659.71 
 ;;9002226.02101,"1019,659.81 ",.01)
 ;;659.81 
 ;;9002226.02101,"1019,659.81 ",.02)
 ;;659.81 
 ;;9002226.02101,"1019,659.91 ",.01)
 ;;659.91 
 ;;9002226.02101,"1019,659.91 ",.02)
 ;;659.91 
 ;;9002226.02101,"1019,660.01 ",.01)
 ;;660.01 
 ;;9002226.02101,"1019,660.01 ",.02)
 ;;660.01 
 ;;9002226.02101,"1019,660.11 ",.01)
 ;;660.11 
 ;;9002226.02101,"1019,660.11 ",.02)
 ;;660.11 
 ;;9002226.02101,"1019,660.21 ",.01)
 ;;660.21 
 ;;9002226.02101,"1019,660.21 ",.02)
 ;;660.21 
 ;;9002226.02101,"1019,660.31 ",.01)
 ;;660.31 