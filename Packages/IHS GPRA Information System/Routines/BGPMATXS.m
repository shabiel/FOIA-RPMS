BGPMATXS ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON FEB 02, 2011;
 ;;11.0;IHS CLINICAL REPORTING;**4**;JAN 06, 2011;Build 84
 ;;BGPMU MAMMOGRAM ENC EM
 ;
 ; This routine loads Taxonomy BGPMU MAMMOGRAM ENC EM
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
 ;;21,"99201 ")
 ;;1
 ;;21,"99211 ")
 ;;2
 ;;21,"99241 ")
 ;;3
 ;;21,"99341 ")
 ;;4
 ;;21,"99347 ")
 ;;5
 ;;21,"99384 ")
 ;;6
 ;;21,"99394 ")
 ;;7
 ;;21,"99401 ")
 ;;8
 ;;21,"99411 ")
 ;;9
 ;;21,"99420 ")
 ;;10
 ;;21,"99429 ")
 ;;11
 ;;21,"99455 ")
 ;;12
 ;;9002226,741,.01)
 ;;BGPMU MAMMOGRAM ENC EM
 ;;9002226,741,.02)
 ;;CPT codes for mam and pap
 ;;9002226,741,.04)
 ;;n
 ;;9002226,741,.06)
 ;;@
 ;;9002226,741,.08)
 ;;@
 ;;9002226,741,.09)
 ;;3110118
 ;;9002226,741,.11)
 ;;@
 ;;9002226,741,.12)
 ;;@
 ;;9002226,741,.13)
 ;;@
 ;;9002226,741,.14)
 ;;@
 ;;9002226,741,.15)
 ;;81
 ;;9002226,741,.16)
 ;;1
 ;;9002226,741,.17)
 ;;@
 ;;9002226,741,3101)
 ;;@
 ;;9002226.02101,"741,99201 ",.01)
 ;;99201
 ;;9002226.02101,"741,99201 ",.02)
 ;;99205
 ;;9002226.02101,"741,99211 ",.01)
 ;;99211
 ;;9002226.02101,"741,99211 ",.02)
 ;;99220
 ;;9002226.02101,"741,99241 ",.01)
 ;;99241
 ;;9002226.02101,"741,99241 ",.02)
 ;;99245
 ;;9002226.02101,"741,99341 ",.01)
 ;;99341
 ;;9002226.02101,"741,99341 ",.02)
 ;;99345
 ;;9002226.02101,"741,99347 ",.01)
 ;;99347
 ;;9002226.02101,"741,99347 ",.02)
 ;;99350
 ;;9002226.02101,"741,99384 ",.01)
 ;;99384
 ;;9002226.02101,"741,99384 ",.02)
 ;;99387
 ;;9002226.02101,"741,99394 ",.01)
 ;;99394
 ;;9002226.02101,"741,99394 ",.02)
 ;;99397
 ;;9002226.02101,"741,99401 ",.01)
 ;;99401
 ;;9002226.02101,"741,99401 ",.02)
 ;;99404
 ;;9002226.02101,"741,99411 ",.01)
 ;;99411
 ;;9002226.02101,"741,99411 ",.02)
 ;;99412
 ;;9002226.02101,"741,99420 ",.01)
 ;;99420
 ;;9002226.02101,"741,99420 ",.02)
 ;;99420
 ;;9002226.02101,"741,99429 ",.01)
 ;;99429
 ;;9002226.02101,"741,99429 ",.02)
 ;;99429
 ;;9002226.02101,"741,99455 ",.01)
 ;;99455
 ;;9002226.02101,"741,99455 ",.02)
 ;;99456
 ;
OTHER ; OTHER ROUTINES
 Q