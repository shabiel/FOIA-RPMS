BGP21F62 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1195,63304-0580-01 ",.01)
 ;;63304-0580-01
 ;;9002226.02101,"1195,63304-0580-01 ",.02)
 ;;63304-0580-01
 ;;9002226.02101,"1195,63304-0580-10 ",.01)
 ;;63304-0580-10
 ;;9002226.02101,"1195,63304-0580-10 ",.02)
 ;;63304-0580-10
 ;;9002226.02101,"1195,63304-0581-01 ",.01)
 ;;63304-0581-01
 ;;9002226.02101,"1195,63304-0581-01 ",.02)
 ;;63304-0581-01
 ;;9002226.02101,"1195,63304-0581-10 ",.01)
 ;;63304-0581-10
 ;;9002226.02101,"1195,63304-0581-10 ",.02)
 ;;63304-0581-10
 ;;9002226.02101,"1195,63304-0621-01 ",.01)
 ;;63304-0621-01
 ;;9002226.02101,"1195,63304-0621-01 ",.02)
 ;;63304-0621-01
 ;;9002226.02101,"1195,63304-0621-10 ",.01)
 ;;63304-0621-10
 ;;9002226.02101,"1195,63304-0621-10 ",.02)
 ;;63304-0621-10
 ;;9002226.02101,"1195,63304-0622-01 ",.01)
 ;;63304-0622-01
 ;;9002226.02101,"1195,63304-0622-01 ",.02)
 ;;63304-0622-01
 ;;9002226.02101,"1195,63304-0622-10 ",.01)
 ;;63304-0622-10
 ;;9002226.02101,"1195,63304-0622-10 ",.02)
 ;;63304-0622-10
 ;;9002226.02101,"1195,63304-0623-01 ",.01)
 ;;63304-0623-01
 ;;9002226.02101,"1195,63304-0623-01 ",.02)
 ;;63304-0623-01
 ;;9002226.02101,"1195,63304-0623-10 ",.01)
 ;;63304-0623-10
 ;;9002226.02101,"1195,63304-0623-10 ",.02)
 ;;63304-0623-10
 ;;9002226.02101,"1195,63629-1423-01 ",.01)
 ;;63629-1423-01
 ;;9002226.02101,"1195,63629-1423-01 ",.02)
 ;;63629-1423-01
 ;;9002226.02101,"1195,63629-1423-02 ",.01)
 ;;63629-1423-02
 ;;9002226.02101,"1195,63629-1423-02 ",.02)
 ;;63629-1423-02
 ;;9002226.02101,"1195,63629-1462-01 ",.01)
 ;;63629-1462-01
 ;;9002226.02101,"1195,63629-1462-01 ",.02)
 ;;63629-1462-01
 ;;9002226.02101,"1195,63629-1462-02 ",.01)
 ;;63629-1462-02
 ;;9002226.02101,"1195,63629-1462-02 ",.02)
 ;;63629-1462-02
 ;;9002226.02101,"1195,63629-1462-03 ",.01)
 ;;63629-1462-03
 ;;9002226.02101,"1195,63629-1462-03 ",.02)
 ;;63629-1462-03
 ;;9002226.02101,"1195,63629-1463-01 ",.01)
 ;;63629-1463-01
 ;;9002226.02101,"1195,63629-1463-01 ",.02)
 ;;63629-1463-01
 ;;9002226.02101,"1195,63629-1463-02 ",.01)
 ;;63629-1463-02
 ;;9002226.02101,"1195,63629-1463-02 ",.02)
 ;;63629-1463-02
 ;;9002226.02101,"1195,63629-1463-03 ",.01)
 ;;63629-1463-03
 ;;9002226.02101,"1195,63629-1463-03 ",.02)
 ;;63629-1463-03
 ;;9002226.02101,"1195,63629-1463-04 ",.01)
 ;;63629-1463-04
 ;;9002226.02101,"1195,63629-1463-04 ",.02)
 ;;63629-1463-04
 ;;9002226.02101,"1195,63629-1463-05 ",.01)
 ;;63629-1463-05
 ;;9002226.02101,"1195,63629-1463-05 ",.02)
 ;;63629-1463-05
 ;;9002226.02101,"1195,63629-1674-01 ",.01)
 ;;63629-1674-01
 ;;9002226.02101,"1195,63629-1674-01 ",.02)
 ;;63629-1674-01
 ;;9002226.02101,"1195,63629-1740-01 ",.01)
 ;;63629-1740-01
 ;;9002226.02101,"1195,63629-1740-01 ",.02)
 ;;63629-1740-01
 ;;9002226.02101,"1195,63629-1740-02 ",.01)
 ;;63629-1740-02
 ;;9002226.02101,"1195,63629-1740-02 ",.02)
 ;;63629-1740-02
 ;;9002226.02101,"1195,63629-1740-03 ",.01)
 ;;63629-1740-03
 ;;9002226.02101,"1195,63629-1740-03 ",.02)
 ;;63629-1740-03
 ;;9002226.02101,"1195,63629-1785-01 ",.01)
 ;;63629-1785-01
 ;;9002226.02101,"1195,63629-1785-01 ",.02)
 ;;63629-1785-01
 ;;9002226.02101,"1195,63629-1785-02 ",.01)
 ;;63629-1785-02
 ;;9002226.02101,"1195,63629-1785-02 ",.02)
 ;;63629-1785-02
 ;;9002226.02101,"1195,63629-1785-03 ",.01)
 ;;63629-1785-03
 ;;9002226.02101,"1195,63629-1785-03 ",.02)
 ;;63629-1785-03
 ;;9002226.02101,"1195,63629-1842-01 ",.01)
 ;;63629-1842-01
 ;;9002226.02101,"1195,63629-1842-01 ",.02)
 ;;63629-1842-01
 ;;9002226.02101,"1195,63629-2570-01 ",.01)
 ;;63629-2570-01
 ;;9002226.02101,"1195,63629-2570-01 ",.02)
 ;;63629-2570-01
 ;;9002226.02101,"1195,63629-2570-02 ",.01)
 ;;63629-2570-02
 ;;9002226.02101,"1195,63629-2570-02 ",.02)
 ;;63629-2570-02
 ;;9002226.02101,"1195,63629-2570-03 ",.01)
 ;;63629-2570-03
 ;;9002226.02101,"1195,63629-2570-03 ",.02)
 ;;63629-2570-03
 ;;9002226.02101,"1195,63629-2570-04 ",.01)
 ;;63629-2570-04
 ;;9002226.02101,"1195,63629-2570-04 ",.02)
 ;;63629-2570-04
 ;;9002226.02101,"1195,63629-2626-01 ",.01)
 ;;63629-2626-01
 ;;9002226.02101,"1195,63629-2626-01 ",.02)
 ;;63629-2626-01
 ;;9002226.02101,"1195,63629-2626-02 ",.01)
 ;;63629-2626-02
 ;;9002226.02101,"1195,63629-2626-02 ",.02)
 ;;63629-2626-02
 ;;9002226.02101,"1195,63629-2626-03 ",.01)
 ;;63629-2626-03
 ;;9002226.02101,"1195,63629-2626-03 ",.02)
 ;;63629-2626-03
 ;;9002226.02101,"1195,63629-2626-04 ",.01)
 ;;63629-2626-04
 ;;9002226.02101,"1195,63629-2626-04 ",.02)
 ;;63629-2626-04
 ;;9002226.02101,"1195,63629-2909-01 ",.01)
 ;;63629-2909-01
 ;;9002226.02101,"1195,63629-2909-01 ",.02)
 ;;63629-2909-01
 ;;9002226.02101,"1195,63629-2909-02 ",.01)
 ;;63629-2909-02
 ;;9002226.02101,"1195,63629-2909-02 ",.02)
 ;;63629-2909-02
 ;;9002226.02101,"1195,63629-2909-03 ",.01)
 ;;63629-2909-03
 ;;9002226.02101,"1195,63629-2909-03 ",.02)
 ;;63629-2909-03
 ;;9002226.02101,"1195,63629-2909-04 ",.01)
 ;;63629-2909-04
 ;;9002226.02101,"1195,63629-2909-04 ",.02)
 ;;63629-2909-04
 ;;9002226.02101,"1195,63629-3587-01 ",.01)
 ;;63629-3587-01
 ;;9002226.02101,"1195,63629-3587-01 ",.02)
 ;;63629-3587-01
 ;;9002226.02101,"1195,63629-3587-02 ",.01)
 ;;63629-3587-02
 ;;9002226.02101,"1195,63629-3587-02 ",.02)
 ;;63629-3587-02
 ;;9002226.02101,"1195,63629-3636-01 ",.01)
 ;;63629-3636-01