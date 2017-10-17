BGP73K28 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 05, 2017;
 ;;17.1;IHS CLINICAL REPORTING;;MAY 10, 2017;Build 29
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"872,60505-2875-01 ",.01)
 ;;60505-2875-01
 ;;9002226.02101,"872,60505-2875-01 ",.02)
 ;;60505-2875-01
 ;;9002226.02101,"872,60505-2876-00 ",.01)
 ;;60505-2876-00
 ;;9002226.02101,"872,60505-2876-00 ",.02)
 ;;60505-2876-00
 ;;9002226.02101,"872,60505-2876-01 ",.01)
 ;;60505-2876-01
 ;;9002226.02101,"872,60505-2876-01 ",.02)
 ;;60505-2876-01
 ;;9002226.02101,"872,60505-2876-05 ",.01)
 ;;60505-2876-05
 ;;9002226.02101,"872,60505-2876-05 ",.02)
 ;;60505-2876-05
 ;;9002226.02101,"872,60505-2877-00 ",.01)
 ;;60505-2877-00
 ;;9002226.02101,"872,60505-2877-00 ",.02)
 ;;60505-2877-00
 ;;9002226.02101,"872,60505-2877-01 ",.01)
 ;;60505-2877-01
 ;;9002226.02101,"872,60505-2877-01 ",.02)
 ;;60505-2877-01
 ;;9002226.02101,"872,60505-2877-05 ",.01)
 ;;60505-2877-05
 ;;9002226.02101,"872,60505-2877-05 ",.02)
 ;;60505-2877-05
 ;;9002226.02101,"872,60505-2878-00 ",.01)
 ;;60505-2878-00
 ;;9002226.02101,"872,60505-2878-00 ",.02)
 ;;60505-2878-00
 ;;9002226.02101,"872,60505-2878-01 ",.01)
 ;;60505-2878-01
 ;;9002226.02101,"872,60505-2878-01 ",.02)
 ;;60505-2878-01
 ;;9002226.02101,"872,60505-2878-05 ",.01)
 ;;60505-2878-05
 ;;9002226.02101,"872,60505-2878-05 ",.02)
 ;;60505-2878-05
 ;;9002226.02101,"872,60505-3409-05 ",.01)
 ;;60505-3409-05
 ;;9002226.02101,"872,60505-3409-05 ",.02)
 ;;60505-3409-05
 ;;9002226.02101,"872,60505-3409-09 ",.01)
 ;;60505-3409-09
 ;;9002226.02101,"872,60505-3409-09 ",.02)
 ;;60505-3409-09
 ;;9002226.02101,"872,60505-3410-05 ",.01)
 ;;60505-3410-05
 ;;9002226.02101,"872,60505-3410-05 ",.02)
 ;;60505-3410-05
 ;;9002226.02101,"872,60505-3410-09 ",.01)
 ;;60505-3410-09
 ;;9002226.02101,"872,60505-3410-09 ",.02)
 ;;60505-3410-09
 ;;9002226.02101,"872,60505-3411-05 ",.01)
 ;;60505-3411-05
 ;;9002226.02101,"872,60505-3411-05 ",.02)
 ;;60505-3411-05
 ;;9002226.02101,"872,60505-3411-09 ",.01)
 ;;60505-3411-09
 ;;9002226.02101,"872,60505-3411-09 ",.02)
 ;;60505-3411-09
 ;;9002226.02101,"872,60687-0177-25 ",.01)
 ;;60687-0177-25
 ;;9002226.02101,"872,60687-0177-25 ",.02)
 ;;60687-0177-25
 ;;9002226.02101,"872,60687-0177-95 ",.01)
 ;;60687-0177-95
 ;;9002226.02101,"872,60687-0177-95 ",.02)
 ;;60687-0177-95
 ;;9002226.02101,"872,60763-1011-00 ",.01)
 ;;60763-1011-00
 ;;9002226.02101,"872,60763-1011-00 ",.02)
 ;;60763-1011-00
 ;;9002226.02101,"872,60763-1011-02 ",.01)
 ;;60763-1011-02
 ;;9002226.02101,"872,60763-1011-02 ",.02)
 ;;60763-1011-02
 ;;9002226.02101,"872,60763-1012-00 ",.01)
 ;;60763-1012-00
 ;;9002226.02101,"872,60763-1012-00 ",.02)
 ;;60763-1012-00
 ;;9002226.02101,"872,60763-1012-02 ",.01)
 ;;60763-1012-02
 ;;9002226.02101,"872,60763-1012-02 ",.02)
 ;;60763-1012-02
 ;;9002226.02101,"872,60763-1013-00 ",.01)
 ;;60763-1013-00
 ;;9002226.02101,"872,60763-1013-00 ",.02)
 ;;60763-1013-00
 ;;9002226.02101,"872,61570-0110-01 ",.01)
 ;;61570-0110-01
 ;;9002226.02101,"872,61570-0110-01 ",.02)
 ;;61570-0110-01
 ;;9002226.02101,"872,61570-0111-01 ",.01)
 ;;61570-0111-01
 ;;9002226.02101,"872,61570-0111-01 ",.02)
 ;;61570-0111-01
 ;;9002226.02101,"872,61570-0112-01 ",.01)
 ;;61570-0112-01
 ;;9002226.02101,"872,61570-0112-01 ",.02)
 ;;61570-0112-01
 ;;9002226.02101,"872,61570-0120-01 ",.01)
 ;;61570-0120-01
 ;;9002226.02101,"872,61570-0120-01 ",.02)
 ;;61570-0120-01
 ;;9002226.02101,"872,61570-0120-80 ",.01)
 ;;61570-0120-80
 ;;9002226.02101,"872,61570-0120-80 ",.02)
 ;;61570-0120-80
 ;;9002226.02101,"872,61894-0001-02 ",.01)
 ;;61894-0001-02
 ;;9002226.02101,"872,61894-0001-02 ",.02)
 ;;61894-0001-02
 ;;9002226.02101,"872,61894-0002-02 ",.01)
 ;;61894-0002-02
 ;;9002226.02101,"872,61894-0002-02 ",.02)
 ;;61894-0002-02
 ;;9002226.02101,"872,61894-0010-02 ",.01)
 ;;61894-0010-02
 ;;9002226.02101,"872,61894-0010-02 ",.02)
 ;;61894-0010-02
 ;;9002226.02101,"872,61894-0011-02 ",.01)
 ;;61894-0011-02
 ;;9002226.02101,"872,61894-0011-02 ",.02)
 ;;61894-0011-02
 ;;9002226.02101,"872,61894-0012-02 ",.01)
 ;;61894-0012-02
 ;;9002226.02101,"872,61894-0012-02 ",.02)
 ;;61894-0012-02
 ;;9002226.02101,"872,62033-0101-20 ",.01)
 ;;62033-0101-20
 ;;9002226.02101,"872,62033-0101-20 ",.02)
 ;;62033-0101-20
 ;;9002226.02101,"872,62037-0531-90 ",.01)
 ;;62037-0531-90
 ;;9002226.02101,"872,62037-0531-90 ",.02)
 ;;62037-0531-90
 ;;9002226.02101,"872,62037-0532-90 ",.01)
 ;;62037-0532-90
 ;;9002226.02101,"872,62037-0532-90 ",.02)
 ;;62037-0532-90
 ;;9002226.02101,"872,62037-0533-90 ",.01)
 ;;62037-0533-90
 ;;9002226.02101,"872,62037-0533-90 ",.02)
 ;;62037-0533-90
 ;;9002226.02101,"872,62037-0534-90 ",.01)
 ;;62037-0534-90
 ;;9002226.02101,"872,62037-0534-90 ",.02)
 ;;62037-0534-90
 ;;9002226.02101,"872,62037-0935-90 ",.01)
 ;;62037-0935-90
 ;;9002226.02101,"872,62037-0935-90 ",.02)
 ;;62037-0935-90
 ;;9002226.02101,"872,62037-0936-90 ",.01)
 ;;62037-0936-90
 ;;9002226.02101,"872,62037-0936-90 ",.02)
 ;;62037-0936-90
 ;;9002226.02101,"872,62037-0937-90 ",.01)
 ;;62037-0937-90
 ;;9002226.02101,"872,62037-0937-90 ",.02)
 ;;62037-0937-90
 ;;9002226.02101,"872,62175-0171-37 ",.01)
 ;;62175-0171-37
 ;;9002226.02101,"872,62175-0171-37 ",.02)
 ;;62175-0171-37
 ;;9002226.02101,"872,62175-0177-37 ",.01)
 ;;62175-0177-37
 ;;9002226.02101,"872,62175-0177-37 ",.02)
 ;;62175-0177-37
 ;;9002226.02101,"872,62175-0712-37 ",.01)
 ;;62175-0712-37
 ;;9002226.02101,"872,62175-0712-37 ",.02)
 ;;62175-0712-37
 ;;9002226.02101,"872,62175-0720-37 ",.01)
 ;;62175-0720-37
 ;;9002226.02101,"872,62175-0720-37 ",.02)
 ;;62175-0720-37
 ;;9002226.02101,"872,62175-0725-37 ",.01)
 ;;62175-0725-37
 ;;9002226.02101,"872,62175-0725-37 ",.02)
 ;;62175-0725-37
 ;;9002226.02101,"872,62682-6044-03 ",.01)
 ;;62682-6044-03
 ;;9002226.02101,"872,62682-6044-03 ",.02)
 ;;62682-6044-03
 ;;9002226.02101,"872,63304-0155-01 ",.01)
 ;;63304-0155-01
 ;;9002226.02101,"872,63304-0155-01 ",.02)
 ;;63304-0155-01
 ;;9002226.02101,"872,63304-0156-01 ",.01)
 ;;63304-0156-01
 ;;9002226.02101,"872,63304-0156-01 ",.02)
 ;;63304-0156-01
 ;;9002226.02101,"872,63304-0157-01 ",.01)
 ;;63304-0157-01
 ;;9002226.02101,"872,63304-0157-01 ",.02)
 ;;63304-0157-01
 ;;9002226.02101,"872,63304-0337-01 ",.01)
 ;;63304-0337-01
 ;;9002226.02101,"872,63304-0337-01 ",.02)
 ;;63304-0337-01
 ;;9002226.02101,"872,63304-0338-01 ",.01)
 ;;63304-0338-01
 ;;9002226.02101,"872,63304-0338-01 ",.02)
 ;;63304-0338-01
 ;;9002226.02101,"872,63304-0338-05 ",.01)
 ;;63304-0338-05
 ;;9002226.02101,"872,63304-0338-05 ",.02)
 ;;63304-0338-05
 ;;9002226.02101,"872,63304-0339-01 ",.01)
 ;;63304-0339-01
 ;;9002226.02101,"872,63304-0339-01 ",.02)
 ;;63304-0339-01
 ;;9002226.02101,"872,63304-0339-05 ",.01)
 ;;63304-0339-05
 ;;9002226.02101,"872,63304-0339-05 ",.02)
 ;;63304-0339-05
 ;;9002226.02101,"872,63304-0340-01 ",.01)
 ;;63304-0340-01
 ;;9002226.02101,"872,63304-0340-01 ",.02)
 ;;63304-0340-01
 ;;9002226.02101,"872,63304-0340-05 ",.01)
 ;;63304-0340-05
 ;;9002226.02101,"872,63304-0340-05 ",.02)
 ;;63304-0340-05
 ;;9002226.02101,"872,63304-0403-01 ",.01)
 ;;63304-0403-01
 ;;9002226.02101,"872,63304-0403-01 ",.02)
 ;;63304-0403-01
 ;;9002226.02101,"872,63304-0404-01 ",.01)
 ;;63304-0404-01
 ;;9002226.02101,"872,63304-0404-01 ",.02)
 ;;63304-0404-01
 ;;9002226.02101,"872,63304-0531-01 ",.01)
 ;;63304-0531-01
 ;;9002226.02101,"872,63304-0531-01 ",.02)
 ;;63304-0531-01
 ;;9002226.02101,"872,63304-0532-01 ",.01)
 ;;63304-0532-01
 ;;9002226.02101,"872,63304-0532-01 ",.02)
 ;;63304-0532-01
 ;;9002226.02101,"872,63304-0532-10 ",.01)
 ;;63304-0532-10
 ;;9002226.02101,"872,63304-0532-10 ",.02)
 ;;63304-0532-10
 ;;9002226.02101,"872,63304-0533-01 ",.01)
 ;;63304-0533-01
 ;;9002226.02101,"872,63304-0533-01 ",.02)
 ;;63304-0533-01
 ;;9002226.02101,"872,63304-0533-10 ",.01)
 ;;63304-0533-10
 ;;9002226.02101,"872,63304-0533-10 ",.02)
 ;;63304-0533-10
 ;;9002226.02101,"872,63304-0534-01 ",.01)
 ;;63304-0534-01
 ;;9002226.02101,"872,63304-0534-01 ",.02)
 ;;63304-0534-01
 ;;9002226.02101,"872,63304-0534-10 ",.01)
 ;;63304-0534-10
 ;;9002226.02101,"872,63304-0534-10 ",.02)
 ;;63304-0534-10
 ;;9002226.02101,"872,63304-0535-01 ",.01)
 ;;63304-0535-01
 ;;9002226.02101,"872,63304-0535-01 ",.02)
 ;;63304-0535-01
 ;;9002226.02101,"872,63304-0535-10 ",.01)
 ;;63304-0535-10
 ;;9002226.02101,"872,63304-0535-10 ",.02)
 ;;63304-0535-10
 ;;9002226.02101,"872,63304-0536-01 ",.01)
 ;;63304-0536-01
 ;;9002226.02101,"872,63304-0536-01 ",.02)
 ;;63304-0536-01
 ;;9002226.02101,"872,63304-0536-05 ",.01)
 ;;63304-0536-05
 ;;9002226.02101,"872,63304-0536-05 ",.02)
 ;;63304-0536-05
 ;;9002226.02101,"872,63304-0537-01 ",.01)
 ;;63304-0537-01
 ;;9002226.02101,"872,63304-0537-01 ",.02)
 ;;63304-0537-01
 ;;9002226.02101,"872,63304-0537-05 ",.01)
 ;;63304-0537-05
 ;;9002226.02101,"872,63304-0537-05 ",.02)
 ;;63304-0537-05
 ;;9002226.02101,"872,63304-0538-01 ",.01)
 ;;63304-0538-01
 ;;9002226.02101,"872,63304-0538-01 ",.02)
 ;;63304-0538-01
 ;;9002226.02101,"872,63304-0538-05 ",.01)
 ;;63304-0538-05
 ;;9002226.02101,"872,63304-0538-05 ",.02)
 ;;63304-0538-05
 ;;9002226.02101,"872,63304-0548-90 ",.01)
 ;;63304-0548-90
 ;;9002226.02101,"872,63304-0548-90 ",.02)
 ;;63304-0548-90
 ;;9002226.02101,"872,63304-0549-90 ",.01)
 ;;63304-0549-90
 ;;9002226.02101,"872,63304-0549-90 ",.02)
 ;;63304-0549-90
 ;;9002226.02101,"872,63304-0550-90 ",.01)
 ;;63304-0550-90
 ;;9002226.02101,"872,63304-0550-90 ",.02)
 ;;63304-0550-90
 ;;9002226.02101,"872,63304-0551-90 ",.01)
 ;;63304-0551-90
 ;;9002226.02101,"872,63304-0551-90 ",.02)
 ;;63304-0551-90
 ;;9002226.02101,"872,63304-0599-01 ",.01)
 ;;63304-0599-01
 ;;9002226.02101,"872,63304-0599-01 ",.02)
 ;;63304-0599-01
 ;;9002226.02101,"872,63304-0736-01 ",.01)
 ;;63304-0736-01
 ;;9002226.02101,"872,63304-0736-01 ",.02)
 ;;63304-0736-01
 ;;9002226.02101,"872,63304-0736-05 ",.01)
 ;;63304-0736-05
 ;;9002226.02101,"872,63304-0736-05 ",.02)
 ;;63304-0736-05
 ;;9002226.02101,"872,63304-0737-01 ",.01)
 ;;63304-0737-01
 ;;9002226.02101,"872,63304-0737-01 ",.02)
 ;;63304-0737-01
 ;;9002226.02101,"872,63304-0737-05 ",.01)
 ;;63304-0737-05
 ;;9002226.02101,"872,63304-0737-05 ",.02)
 ;;63304-0737-05
 ;;9002226.02101,"872,63304-0738-01 ",.01)
 ;;63304-0738-01
 ;;9002226.02101,"872,63304-0738-01 ",.02)
 ;;63304-0738-01
 ;;9002226.02101,"872,63304-0738-05 ",.01)
 ;;63304-0738-05
 ;;9002226.02101,"872,63304-0738-05 ",.02)
 ;;63304-0738-05
 ;;9002226.02101,"872,63304-0739-01 ",.01)
 ;;63304-0739-01
 ;;9002226.02101,"872,63304-0739-01 ",.02)
 ;;63304-0739-01
 ;;9002226.02101,"872,63304-0739-05 ",.01)
 ;;63304-0739-05
 ;;9002226.02101,"872,63304-0739-05 ",.02)
 ;;63304-0739-05
 ;;9002226.02101,"872,63304-0775-10 ",.01)
 ;;63304-0775-10
 ;;9002226.02101,"872,63304-0775-10 ",.02)
 ;;63304-0775-10
 ;;9002226.02101,"872,63304-0775-90 ",.01)
 ;;63304-0775-90
 ;;9002226.02101,"872,63304-0775-90 ",.02)
 ;;63304-0775-90
 ;;9002226.02101,"872,63304-0776-10 ",.01)
 ;;63304-0776-10
 ;;9002226.02101,"872,63304-0776-10 ",.02)
 ;;63304-0776-10
 ;;9002226.02101,"872,63304-0776-90 ",.01)
 ;;63304-0776-90
 ;;9002226.02101,"872,63304-0776-90 ",.02)
 ;;63304-0776-90
 ;;9002226.02101,"872,63304-0777-10 ",.01)
 ;;63304-0777-10
 ;;9002226.02101,"872,63304-0777-10 ",.02)
 ;;63304-0777-10
 ;;9002226.02101,"872,63304-0777-90 ",.01)
 ;;63304-0777-90
 ;;9002226.02101,"872,63304-0777-90 ",.02)
 ;;63304-0777-90
 ;;9002226.02101,"872,63304-0834-01 ",.01)
 ;;63304-0834-01
 ;;9002226.02101,"872,63304-0834-01 ",.02)
 ;;63304-0834-01
 ;;9002226.02101,"872,63304-0834-10 ",.01)
 ;;63304-0834-10
 ;;9002226.02101,"872,63304-0834-10 ",.02)
 ;;63304-0834-10
 ;;9002226.02101,"872,63304-0835-01 ",.01)
 ;;63304-0835-01
 ;;9002226.02101,"872,63304-0835-01 ",.02)
 ;;63304-0835-01