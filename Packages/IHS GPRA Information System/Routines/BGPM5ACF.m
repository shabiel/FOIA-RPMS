BGPM5ACF ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON JUL 15, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;;BGPMU DIAB INSULIN MEDS
 ;
 ; This routine loads Taxonomy BGPMU DIAB INSULIN MEDS
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
 ;;21,"53002080072 ")
 ;;1
 ;;21,"54868589900 ")
 ;;2
 ;;21,"66143751005 ")
 ;;3
 ;;9002226,836,.01)
 ;;BGPMU DIAB INSULIN MEDS
 ;;9002226,836,.02)
 ;;Insulin NDC codes
 ;;9002226,836,.04)
 ;;n
 ;;9002226,836,.06)
 ;;@
 ;;9002226,836,.08)
 ;;@
 ;;9002226,836,.09)
 ;;3110310
 ;;9002226,836,.11)
 ;;@
 ;;9002226,836,.12)
 ;;@
 ;;9002226,836,.13)
 ;;1
 ;;9002226,836,.14)
 ;;@
 ;;9002226,836,.15)
 ;;50.67
 ;;9002226,836,.16)
 ;;@
 ;;9002226,836,.17)
 ;;@
 ;;9002226,836,3101)
 ;;@
 ;;9002226.02101,"836,53002080072 ",.01)
 ;;53002080072
 ;;9002226.02101,"836,53002080072 ",.02)
 ;;53002080072
 ;;9002226.02101,"836,54868589900 ",.01)
 ;;54868589900
 ;;9002226.02101,"836,54868589900 ",.02)
 ;;54868589900
 ;;9002226.02101,"836,66143751005 ",.01)
 ;;66143751005
 ;;9002226.02101,"836,66143751005 ",.02)
 ;;66143751005
 ;
OTHER ; OTHER ROUTINES
 Q