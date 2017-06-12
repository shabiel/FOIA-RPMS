BGP47T23 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 16, 2014;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1064,60429-0756-45 ",.01)
 ;;60429-0756-45
 ;;9002226.02101,"1064,60429-0756-45 ",.02)
 ;;60429-0756-45
 ;;9002226.02101,"1064,60429-0756-90 ",.01)
 ;;60429-0756-90
 ;;9002226.02101,"1064,60429-0756-90 ",.02)
 ;;60429-0756-90
 ;;9002226.02101,"1064,60429-0757-10 ",.01)
 ;;60429-0757-10
 ;;9002226.02101,"1064,60429-0757-10 ",.02)
 ;;60429-0757-10
 ;;9002226.02101,"1064,60429-0757-18 ",.01)
 ;;60429-0757-18
 ;;9002226.02101,"1064,60429-0757-18 ",.02)
 ;;60429-0757-18
 ;;9002226.02101,"1064,60429-0757-45 ",.01)
 ;;60429-0757-45
 ;;9002226.02101,"1064,60429-0757-45 ",.02)
 ;;60429-0757-45
 ;;9002226.02101,"1064,60429-0757-90 ",.01)
 ;;60429-0757-90
 ;;9002226.02101,"1064,60429-0757-90 ",.02)
 ;;60429-0757-90
 ;;9002226.02101,"1064,60505-0003-06 ",.01)
 ;;60505-0003-06
 ;;9002226.02101,"1064,60505-0003-06 ",.02)
 ;;60505-0003-06
 ;;9002226.02101,"1064,60505-0003-09 ",.01)
 ;;60505-0003-09
 ;;9002226.02101,"1064,60505-0003-09 ",.02)
 ;;60505-0003-09
 ;;9002226.02101,"1064,60505-0004-06 ",.01)
 ;;60505-0004-06
 ;;9002226.02101,"1064,60505-0004-06 ",.02)
 ;;60505-0004-06
 ;;9002226.02101,"1064,60505-0004-09 ",.01)
 ;;60505-0004-09
 ;;9002226.02101,"1064,60505-0004-09 ",.02)
 ;;60505-0004-09
 ;;9002226.02101,"1064,60505-0005-06 ",.01)
 ;;60505-0005-06
 ;;9002226.02101,"1064,60505-0005-06 ",.02)
 ;;60505-0005-06
 ;;9002226.02101,"1064,60505-0005-09 ",.01)
 ;;60505-0005-09
 ;;9002226.02101,"1064,60505-0005-09 ",.02)
 ;;60505-0005-09
 ;;9002226.02101,"1064,60505-0006-06 ",.01)
 ;;60505-0006-06
 ;;9002226.02101,"1064,60505-0006-06 ",.02)
 ;;60505-0006-06
 ;;9002226.02101,"1064,60505-0006-09 ",.01)
 ;;60505-0006-09
 ;;9002226.02101,"1064,60505-0006-09 ",.02)
 ;;60505-0006-09
 ;;9002226.02101,"1064,60505-0049-07 ",.01)
 ;;60505-0049-07
 ;;9002226.02101,"1064,60505-0049-07 ",.02)
 ;;60505-0049-07
 ;;9002226.02101,"1064,60505-0049-09 ",.01)
 ;;60505-0049-09
 ;;9002226.02101,"1064,60505-0049-09 ",.02)
 ;;60505-0049-09
 ;;9002226.02101,"1064,60505-0050-07 ",.01)
 ;;60505-0050-07
 ;;9002226.02101,"1064,60505-0050-07 ",.02)
 ;;60505-0050-07
 ;;9002226.02101,"1064,60505-0050-09 ",.01)
 ;;60505-0050-09
 ;;9002226.02101,"1064,60505-0050-09 ",.02)
 ;;60505-0050-09
 ;;9002226.02101,"1064,60505-0051-07 ",.01)
 ;;60505-0051-07
 ;;9002226.02101,"1064,60505-0051-07 ",.02)
 ;;60505-0051-07
 ;;9002226.02101,"1064,60505-0051-09 ",.01)
 ;;60505-0051-09
 ;;9002226.02101,"1064,60505-0051-09 ",.02)
 ;;60505-0051-09
 ;;9002226.02101,"1064,60505-0052-07 ",.01)
 ;;60505-0052-07
 ;;9002226.02101,"1064,60505-0052-07 ",.02)
 ;;60505-0052-07
 ;;9002226.02101,"1064,60505-0052-09 ",.01)
 ;;60505-0052-09
 ;;9002226.02101,"1064,60505-0052-09 ",.02)
 ;;60505-0052-09
 ;;9002226.02101,"1064,60505-0172-00 ",.01)
 ;;60505-0172-00
 ;;9002226.02101,"1064,60505-0172-00 ",.02)
 ;;60505-0172-00
 ;;9002226.02101,"1064,60505-0172-01 ",.01)
 ;;60505-0172-01
 ;;9002226.02101,"1064,60505-0172-01 ",.02)
 ;;60505-0172-01
 ;;9002226.02101,"1064,60505-0173-00 ",.01)
 ;;60505-0173-00
 ;;9002226.02101,"1064,60505-0173-00 ",.02)
 ;;60505-0173-00
 ;;9002226.02101,"1064,60505-0173-01 ",.01)
 ;;60505-0173-01
 ;;9002226.02101,"1064,60505-0173-01 ",.02)
 ;;60505-0173-01
 ;;9002226.02101,"1064,60505-0174-00 ",.01)
 ;;60505-0174-00
 ;;9002226.02101,"1064,60505-0174-00 ",.02)
 ;;60505-0174-00
 ;;9002226.02101,"1064,60505-0174-01 ",.01)
 ;;60505-0174-01
 ;;9002226.02101,"1064,60505-0174-01 ",.02)
 ;;60505-0174-01
 ;;9002226.02101,"1064,60505-0175-00 ",.01)
 ;;60505-0175-00
 ;;9002226.02101,"1064,60505-0175-00 ",.02)
 ;;60505-0175-00
 ;;9002226.02101,"1064,60505-0175-01 ",.01)
 ;;60505-0175-01
 ;;9002226.02101,"1064,60505-0175-01 ",.02)
 ;;60505-0175-01
 ;;9002226.02101,"1064,60505-0185-00 ",.01)
 ;;60505-0185-00
 ;;9002226.02101,"1064,60505-0185-00 ",.02)
 ;;60505-0185-00
 ;;9002226.02101,"1064,60505-0185-07 ",.01)
 ;;60505-0185-07
 ;;9002226.02101,"1064,60505-0185-07 ",.02)
 ;;60505-0185-07
 ;;9002226.02101,"1064,60505-0186-00 ",.01)
 ;;60505-0186-00
 ;;9002226.02101,"1064,60505-0186-00 ",.02)
 ;;60505-0186-00
 ;;9002226.02101,"1064,60505-0187-07 ",.01)
 ;;60505-0187-07
 ;;9002226.02101,"1064,60505-0187-07 ",.02)
 ;;60505-0187-07
 ;;9002226.02101,"1064,60505-0188-00 ",.01)
 ;;60505-0188-00
 ;;9002226.02101,"1064,60505-0188-00 ",.02)
 ;;60505-0188-00
 ;;9002226.02101,"1064,60505-0188-09 ",.01)
 ;;60505-0188-09
 ;;9002226.02101,"1064,60505-0188-09 ",.02)
 ;;60505-0188-09
 ;;9002226.02101,"1064,60505-0189-00 ",.01)
 ;;60505-0189-00
 ;;9002226.02101,"1064,60505-0189-00 ",.02)
 ;;60505-0189-00
 ;;9002226.02101,"1064,60505-0205-03 ",.01)
 ;;60505-0205-03
 ;;9002226.02101,"1064,60505-0205-03 ",.02)
 ;;60505-0205-03
 ;;9002226.02101,"1064,60505-0206-03 ",.01)
 ;;60505-0206-03
 ;;9002226.02101,"1064,60505-0206-03 ",.02)
 ;;60505-0206-03
 ;;9002226.02101,"1064,60505-0207-03 ",.01)
 ;;60505-0207-03
 ;;9002226.02101,"1064,60505-0207-03 ",.02)
 ;;60505-0207-03
 ;;9002226.02101,"1064,60505-0208-01 ",.01)
 ;;60505-0208-01
 ;;9002226.02101,"1064,60505-0208-01 ",.02)
 ;;60505-0208-01
 ;;9002226.02101,"1064,60505-0209-01 ",.01)
 ;;60505-0209-01
 ;;9002226.02101,"1064,60505-0209-01 ",.02)
 ;;60505-0209-01
 ;;9002226.02101,"1064,60505-0265-01 ",.01)
 ;;60505-0265-01
 ;;9002226.02101,"1064,60505-0265-01 ",.02)
 ;;60505-0265-01
 ;;9002226.02101,"1064,60505-0266-01 ",.01)
 ;;60505-0266-01
 ;;9002226.02101,"1064,60505-0266-01 ",.02)
 ;;60505-0266-01
 ;;9002226.02101,"1064,60505-0266-05 ",.01)
 ;;60505-0266-05
 ;;9002226.02101,"1064,60505-0266-05 ",.02)
 ;;60505-0266-05
 ;;9002226.02101,"1064,60505-0267-01 ",.01)
 ;;60505-0267-01
 ;;9002226.02101,"1064,60505-0267-01 ",.02)
 ;;60505-0267-01
 ;;9002226.02101,"1064,60505-0267-05 ",.01)
 ;;60505-0267-05
 ;;9002226.02101,"1064,60505-0267-05 ",.02)
 ;;60505-0267-05
 ;;9002226.02101,"1064,60505-0268-01 ",.01)
 ;;60505-0268-01
 ;;9002226.02101,"1064,60505-0268-01 ",.02)
 ;;60505-0268-01
 ;;9002226.02101,"1064,60505-0268-05 ",.01)
 ;;60505-0268-05
 ;;9002226.02101,"1064,60505-0268-05 ",.02)
 ;;60505-0268-05
 ;;9002226.02101,"1064,60505-0271-01 ",.01)
 ;;60505-0271-01
 ;;9002226.02101,"1064,60505-0271-01 ",.02)
 ;;60505-0271-01
 ;;9002226.02101,"1064,60505-0272-01 ",.01)
 ;;60505-0272-01
 ;;9002226.02101,"1064,60505-0272-01 ",.02)
 ;;60505-0272-01
 ;;9002226.02101,"1064,60505-2510-02 ",.01)
 ;;60505-2510-02
 ;;9002226.02101,"1064,60505-2510-02 ",.02)
 ;;60505-2510-02
 ;;9002226.02101,"1064,60505-2510-04 ",.01)
 ;;60505-2510-04
 ;;9002226.02101,"1064,60505-2510-04 ",.02)
 ;;60505-2510-04
 ;;9002226.02101,"1064,60505-2511-02 ",.01)
 ;;60505-2511-02
 ;;9002226.02101,"1064,60505-2511-02 ",.02)
 ;;60505-2511-02
 ;;9002226.02101,"1064,60505-2511-04 ",.01)
 ;;60505-2511-04
 ;;9002226.02101,"1064,60505-2511-04 ",.02)
 ;;60505-2511-04
 ;;9002226.02101,"1064,60505-2512-02 ",.01)
 ;;60505-2512-02
 ;;9002226.02101,"1064,60505-2512-02 ",.02)
 ;;60505-2512-02
 ;;9002226.02101,"1064,60505-2512-08 ",.01)
 ;;60505-2512-08
 ;;9002226.02101,"1064,60505-2512-08 ",.02)
 ;;60505-2512-08
 ;;9002226.02101,"1064,60505-2683-01 ",.01)
 ;;60505-2683-01
 ;;9002226.02101,"1064,60505-2683-01 ",.02)
 ;;60505-2683-01
 ;;9002226.02101,"1064,60505-2684-01 ",.01)
 ;;60505-2684-01
 ;;9002226.02101,"1064,60505-2684-01 ",.02)
 ;;60505-2684-01
 ;;9002226.02101,"1064,60505-2684-08 ",.01)
 ;;60505-2684-08
 ;;9002226.02101,"1064,60505-2684-08 ",.02)
 ;;60505-2684-08
 ;;9002226.02101,"1064,60505-2684-09 ",.01)
 ;;60505-2684-09
 ;;9002226.02101,"1064,60505-2684-09 ",.02)
 ;;60505-2684-09
 ;;9002226.02101,"1064,60505-2685-01 ",.01)
 ;;60505-2685-01
 ;;9002226.02101,"1064,60505-2685-01 ",.02)
 ;;60505-2685-01
 ;;9002226.02101,"1064,60505-2685-08 ",.01)
 ;;60505-2685-08
 ;;9002226.02101,"1064,60505-2685-08 ",.02)
 ;;60505-2685-08
 ;;9002226.02101,"1064,60505-2685-09 ",.01)
 ;;60505-2685-09
 ;;9002226.02101,"1064,60505-2685-09 ",.02)
 ;;60505-2685-09
 ;;9002226.02101,"1064,60505-2686-01 ",.01)
 ;;60505-2686-01
 ;;9002226.02101,"1064,60505-2686-01 ",.02)
 ;;60505-2686-01
 ;;9002226.02101,"1064,60505-2686-08 ",.01)
 ;;60505-2686-08
 ;;9002226.02101,"1064,60505-2686-08 ",.02)
 ;;60505-2686-08
 ;;9002226.02101,"1064,60505-2686-09 ",.01)
 ;;60505-2686-09
 ;;9002226.02101,"1064,60505-2686-09 ",.02)
 ;;60505-2686-09
 ;;9002226.02101,"1064,60505-2688-01 ",.01)
 ;;60505-2688-01
 ;;9002226.02101,"1064,60505-2688-01 ",.02)
 ;;60505-2688-01
 ;;9002226.02101,"1064,60505-2688-08 ",.01)
 ;;60505-2688-08
 ;;9002226.02101,"1064,60505-2688-08 ",.02)
 ;;60505-2688-08
 ;;9002226.02101,"1064,60505-2688-09 ",.01)
 ;;60505-2688-09
 ;;9002226.02101,"1064,60505-2688-09 ",.02)
 ;;60505-2688-09
 ;;9002226.02101,"1064,60505-2689-01 ",.01)
 ;;60505-2689-01
 ;;9002226.02101,"1064,60505-2689-01 ",.02)
 ;;60505-2689-01
 ;;9002226.02101,"1064,60505-2690-01 ",.01)
 ;;60505-2690-01
 ;;9002226.02101,"1064,60505-2690-01 ",.02)
 ;;60505-2690-01
 ;;9002226.02101,"1064,60505-2691-01 ",.01)
 ;;60505-2691-01
 ;;9002226.02101,"1064,60505-2691-01 ",.02)
 ;;60505-2691-01
 ;;9002226.02101,"1064,60505-2875-01 ",.01)
 ;;60505-2875-01
 ;;9002226.02101,"1064,60505-2875-01 ",.02)
 ;;60505-2875-01
 ;;9002226.02101,"1064,60505-2876-00 ",.01)
 ;;60505-2876-00
 ;;9002226.02101,"1064,60505-2876-00 ",.02)
 ;;60505-2876-00
 ;;9002226.02101,"1064,60505-2876-01 ",.01)
 ;;60505-2876-01
 ;;9002226.02101,"1064,60505-2876-01 ",.02)
 ;;60505-2876-01
 ;;9002226.02101,"1064,60505-2876-05 ",.01)
 ;;60505-2876-05
 ;;9002226.02101,"1064,60505-2876-05 ",.02)
 ;;60505-2876-05
 ;;9002226.02101,"1064,60505-2877-00 ",.01)
 ;;60505-2877-00
 ;;9002226.02101,"1064,60505-2877-00 ",.02)
 ;;60505-2877-00
 ;;9002226.02101,"1064,60505-2877-01 ",.01)
 ;;60505-2877-01
 ;;9002226.02101,"1064,60505-2877-01 ",.02)
 ;;60505-2877-01
 ;;9002226.02101,"1064,60505-2877-05 ",.01)
 ;;60505-2877-05
 ;;9002226.02101,"1064,60505-2877-05 ",.02)
 ;;60505-2877-05
 ;;9002226.02101,"1064,60505-2878-00 ",.01)
 ;;60505-2878-00
 ;;9002226.02101,"1064,60505-2878-00 ",.02)
 ;;60505-2878-00
 ;;9002226.02101,"1064,60505-2878-01 ",.01)
 ;;60505-2878-01
 ;;9002226.02101,"1064,60505-2878-01 ",.02)
 ;;60505-2878-01
 ;;9002226.02101,"1064,60505-2878-05 ",.01)
 ;;60505-2878-05
 ;;9002226.02101,"1064,60505-2878-05 ",.02)
 ;;60505-2878-05
 ;;9002226.02101,"1064,60763-1011-00 ",.01)
 ;;60763-1011-00
 ;;9002226.02101,"1064,60763-1011-00 ",.02)
 ;;60763-1011-00
 ;;9002226.02101,"1064,60763-1011-02 ",.01)
 ;;60763-1011-02
 ;;9002226.02101,"1064,60763-1011-02 ",.02)
 ;;60763-1011-02
 ;;9002226.02101,"1064,60763-1012-00 ",.01)
 ;;60763-1012-00
 ;;9002226.02101,"1064,60763-1012-00 ",.02)
 ;;60763-1012-00
 ;;9002226.02101,"1064,60763-1012-02 ",.01)
 ;;60763-1012-02
 ;;9002226.02101,"1064,60763-1012-02 ",.02)
 ;;60763-1012-02
 ;;9002226.02101,"1064,60763-1013-00 ",.01)
 ;;60763-1013-00
 ;;9002226.02101,"1064,60763-1013-00 ",.02)
 ;;60763-1013-00
 ;;9002226.02101,"1064,61570-0110-01 ",.01)
 ;;61570-0110-01
 ;;9002226.02101,"1064,61570-0110-01 ",.02)
 ;;61570-0110-01
 ;;9002226.02101,"1064,61570-0111-01 ",.01)
 ;;61570-0111-01
 ;;9002226.02101,"1064,61570-0111-01 ",.02)
 ;;61570-0111-01
 ;;9002226.02101,"1064,61570-0111-05 ",.01)
 ;;61570-0111-05
 ;;9002226.02101,"1064,61570-0111-05 ",.02)
 ;;61570-0111-05
 ;;9002226.02101,"1064,61570-0111-56 ",.01)
 ;;61570-0111-56
 ;;9002226.02101,"1064,61570-0111-56 ",.02)
 ;;61570-0111-56
 ;;9002226.02101,"1064,61570-0112-01 ",.01)
 ;;61570-0112-01
 ;;9002226.02101,"1064,61570-0112-01 ",.02)
 ;;61570-0112-01
 ;;9002226.02101,"1064,61570-0112-05 ",.01)
 ;;61570-0112-05
 ;;9002226.02101,"1064,61570-0112-05 ",.02)
 ;;61570-0112-05
 ;;9002226.02101,"1064,61570-0112-56 ",.01)
 ;;61570-0112-56
 ;;9002226.02101,"1064,61570-0112-56 ",.02)
 ;;61570-0112-56
 ;;9002226.02101,"1064,61570-0120-01 ",.01)
 ;;61570-0120-01
 ;;9002226.02101,"1064,61570-0120-01 ",.02)
 ;;61570-0120-01
 ;;9002226.02101,"1064,61570-0120-05 ",.01)
 ;;61570-0120-05
 ;;9002226.02101,"1064,61570-0120-05 ",.02)
 ;;61570-0120-05
 ;;9002226.02101,"1064,61570-0120-80 ",.01)
 ;;61570-0120-80
 ;;9002226.02101,"1064,61570-0120-80 ",.02)
 ;;61570-0120-80
 ;;9002226.02101,"1064,62033-0101-20 ",.01)
 ;;62033-0101-20
 ;;9002226.02101,"1064,62033-0101-20 ",.02)
 ;;62033-0101-20
 ;;9002226.02101,"1064,62037-0531-90 ",.01)
 ;;62037-0531-90
 ;;9002226.02101,"1064,62037-0531-90 ",.02)
 ;;62037-0531-90
 ;;9002226.02101,"1064,62037-0532-90 ",.01)
 ;;62037-0532-90
 ;;9002226.02101,"1064,62037-0532-90 ",.02)
 ;;62037-0532-90
 ;;9002226.02101,"1064,62037-0533-90 ",.01)
 ;;62037-0533-90
 ;;9002226.02101,"1064,62037-0533-90 ",.02)
 ;;62037-0533-90
 ;;9002226.02101,"1064,62037-0534-90 ",.01)
 ;;62037-0534-90
 ;;9002226.02101,"1064,62037-0534-90 ",.02)
 ;;62037-0534-90
 ;;9002226.02101,"1064,62037-0935-90 ",.01)
 ;;62037-0935-90
 ;;9002226.02101,"1064,62037-0935-90 ",.02)
 ;;62037-0935-90
 ;;9002226.02101,"1064,62037-0936-90 ",.01)
 ;;62037-0936-90
 ;;9002226.02101,"1064,62037-0936-90 ",.02)
 ;;62037-0936-90
 ;;9002226.02101,"1064,62037-0937-90 ",.01)
 ;;62037-0937-90
 ;;9002226.02101,"1064,62037-0937-90 ",.02)
 ;;62037-0937-90
 ;;9002226.02101,"1064,62175-0171-37 ",.01)
 ;;62175-0171-37
 ;;9002226.02101,"1064,62175-0171-37 ",.02)
 ;;62175-0171-37
 ;;9002226.02101,"1064,62175-0177-37 ",.01)
 ;;62175-0177-37
 ;;9002226.02101,"1064,62175-0177-37 ",.02)
 ;;62175-0177-37
 ;;9002226.02101,"1064,62175-0712-37 ",.01)
 ;;62175-0712-37
 ;;9002226.02101,"1064,62175-0712-37 ",.02)
 ;;62175-0712-37
 ;;9002226.02101,"1064,62175-0720-37 ",.01)
 ;;62175-0720-37