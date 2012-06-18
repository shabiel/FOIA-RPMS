APCLTXM ; IHS/OHPRD/TMJ -CREATED BY ^ATXSTX ON JAN 09, 1997 ;
 ;;3.0;IHS PCC REPORTS;;FEB 05, 1997
 ;;APCL INJ MOTOR
 ;
 ; This routine loads Taxonomy APCL INJ MOTOR
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 D OTHER
 I $O(^TMP("ATX",$J,3.6,0)) D BULL^ATXSTX2
 I $O(^TMP("ATX",$J,9002226,0)) D TAX^ATXSTX2
 D KILL^ATXSTX2
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"E800.0 ")
 ;;1
 ;;21,"E929.0 ")
 ;;2
 ;;21,"E929.9 ")
 ;;3
 ;;21,"E988.5 ")
 ;;4
 ;;9002226,142,.01)
 ;;APCL INJ MOTOR
 ;;9002226,142,.02)
 ;;INJURY CODE MOTOR VEHICLE
 ;;9002226,142,.04)
 ;;@
 ;;9002226,142,.06)
 ;;@
 ;;9002226,142,.08)
 ;;1
 ;;9002226,142,.09)
 ;;2961010.095131
 ;;9002226,142,.11)
 ;;@
 ;;9002226,142,.12)
 ;;157
 ;;9002226,142,.13)
 ;;1
 ;;9002226,142,.14)
 ;;BA
 ;;9002226,142,.15)
 ;;80
 ;;9002226,142,.16)
 ;;1
 ;;9002226,142,.17)
 ;;@
 ;;9002226,142,3101)
 ;;@
 ;;9002226.02101,"142,E800.0 ",.01)
 ;;E800.0
 ;;9002226.02101,"142,E800.0 ",.02)
 ;;E825.9
 ;;9002226.02101,"142,E929.0 ",.01)
 ;;E929.0
 ;;9002226.02101,"142,E929.0 ",.02)
 ;;E929.0
 ;;9002226.02101,"142,E929.9 ",.01)
 ;;E929.9
 ;;9002226.02101,"142,E929.9 ",.02)
 ;;E929.9
 ;;9002226.02101,"142,E988.5 ",.01)
 ;;E988.5
 ;;9002226.02101,"142,E988.5 ",.02)
 ;;E988.5
 ;
OTHER ; OTHER ROUTINES
 Q