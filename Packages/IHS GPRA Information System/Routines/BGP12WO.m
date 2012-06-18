BGP12WO ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"804,55045-3695-08 ",.01)
 ;;55045-3695-08
 ;;9002226.02101,"804,55045-3695-08 ",.02)
 ;;55045-3695-08
 ;;9002226.02101,"804,55045-3768-08 ",.01)
 ;;55045-3768-08
 ;;9002226.02101,"804,55045-3768-08 ",.02)
 ;;55045-3768-08
 ;;9002226.02101,"804,55289-0003-60 ",.01)
 ;;55289-0003-60
 ;;9002226.02101,"804,55289-0003-60 ",.02)
 ;;55289-0003-60
 ;;9002226.02101,"804,55289-0155-97 ",.01)
 ;;55289-0155-97
 ;;9002226.02101,"804,55289-0155-97 ",.02)
 ;;55289-0155-97
 ;;9002226.02101,"804,55289-0259-01 ",.01)
 ;;55289-0259-01
 ;;9002226.02101,"804,55289-0259-01 ",.02)
 ;;55289-0259-01
 ;;9002226.02101,"804,55289-0259-30 ",.01)
 ;;55289-0259-30
 ;;9002226.02101,"804,55289-0259-30 ",.02)
 ;;55289-0259-30
 ;;9002226.02101,"804,55289-0259-60 ",.01)
 ;;55289-0259-60
 ;;9002226.02101,"804,55289-0259-60 ",.02)
 ;;55289-0259-60
 ;;9002226.02101,"804,55289-0260-01 ",.01)
 ;;55289-0260-01
 ;;9002226.02101,"804,55289-0260-01 ",.02)
 ;;55289-0260-01
 ;;9002226.02101,"804,55289-0260-06 ",.01)
 ;;55289-0260-06
 ;;9002226.02101,"804,55289-0260-06 ",.02)
 ;;55289-0260-06
 ;;9002226.02101,"804,55289-0260-20 ",.01)
 ;;55289-0260-20
 ;;9002226.02101,"804,55289-0260-20 ",.02)
 ;;55289-0260-20
 ;;9002226.02101,"804,55289-0260-30 ",.01)
 ;;55289-0260-30
 ;;9002226.02101,"804,55289-0260-30 ",.02)
 ;;55289-0260-30
 ;;9002226.02101,"804,55289-0260-60 ",.01)
 ;;55289-0260-60
 ;;9002226.02101,"804,55289-0260-60 ",.02)
 ;;55289-0260-60
 ;;9002226.02101,"804,55289-0789-30 ",.01)
 ;;55289-0789-30
 ;;9002226.02101,"804,55289-0789-30 ",.02)
 ;;55289-0789-30
 ;;9002226.02101,"804,55289-0961-15 ",.01)
 ;;55289-0961-15
 ;;9002226.02101,"804,55289-0961-15 ",.02)
 ;;55289-0961-15
 ;;9002226.02101,"804,55289-0961-30 ",.01)
 ;;55289-0961-30
 ;;9002226.02101,"804,55289-0961-30 ",.02)
 ;;55289-0961-30
 ;;9002226.02101,"804,55289-0989-21 ",.01)
 ;;55289-0989-21
 ;;9002226.02101,"804,55289-0989-21 ",.02)
 ;;55289-0989-21
 ;;9002226.02101,"804,55289-0989-30 ",.01)
 ;;55289-0989-30
 ;;9002226.02101,"804,55289-0989-30 ",.02)
 ;;55289-0989-30
 ;;9002226.02101,"804,55289-0990-21 ",.01)
 ;;55289-0990-21
 ;;9002226.02101,"804,55289-0990-21 ",.02)
 ;;55289-0990-21
 ;;9002226.02101,"804,55289-0990-30 ",.01)
 ;;55289-0990-30
 ;;9002226.02101,"804,55289-0990-30 ",.02)
 ;;55289-0990-30
 ;;9002226.02101,"804,55422-0814-16 ",.01)
 ;;55422-0814-16
 ;;9002226.02101,"804,55422-0814-16 ",.02)
 ;;55422-0814-16
 ;;9002226.02101,"804,55887-0079-60 ",.01)
 ;;55887-0079-60
 ;;9002226.02101,"804,55887-0079-60 ",.02)
 ;;55887-0079-60
 ;;9002226.02101,"804,55887-0120-90 ",.01)
 ;;55887-0120-90
 ;;9002226.02101,"804,55887-0120-90 ",.02)
 ;;55887-0120-90
 ;;9002226.02101,"804,55887-0277-30 ",.01)
 ;;55887-0277-30
 ;;9002226.02101,"804,55887-0277-30 ",.02)
 ;;55887-0277-30
 ;;9002226.02101,"804,55887-0678-60 ",.01)
 ;;55887-0678-60
 ;;9002226.02101,"804,55887-0678-60 ",.02)
 ;;55887-0678-60
 ;;9002226.02101,"804,55887-0847-60 ",.01)
 ;;55887-0847-60
 ;;9002226.02101,"804,55887-0847-60 ",.02)
 ;;55887-0847-60
 ;;9002226.02101,"804,55887-0847-90 ",.01)
 ;;55887-0847-90
 ;;9002226.02101,"804,55887-0847-90 ",.02)
 ;;55887-0847-90
 ;;9002226.02101,"804,57866-4651-02 ",.01)
 ;;57866-4651-02
 ;;9002226.02101,"804,57866-4651-02 ",.02)
 ;;57866-4651-02
 ;;9002226.02101,"804,57866-4652-02 ",.01)
 ;;57866-4652-02
 ;;9002226.02101,"804,57866-4652-02 ",.02)
 ;;57866-4652-02
 ;;9002226.02101,"804,58016-4604-01 ",.01)
 ;;58016-4604-01
 ;;9002226.02101,"804,58016-4604-01 ",.02)
 ;;58016-4604-01
 ;;9002226.02101,"804,58016-4812-01 ",.01)
 ;;58016-4812-01
 ;;9002226.02101,"804,58016-4812-01 ",.02)
 ;;58016-4812-01
 ;;9002226.02101,"804,58016-4813-01 ",.01)
 ;;58016-4813-01
 ;;9002226.02101,"804,58016-4813-01 ",.02)
 ;;58016-4813-01
 ;;9002226.02101,"804,58864-0658-30 ",.01)
 ;;58864-0658-30
 ;;9002226.02101,"804,58864-0658-30 ",.02)
 ;;58864-0658-30
 ;;9002226.02101,"804,58864-0694-30 ",.01)
 ;;58864-0694-30
 ;;9002226.02101,"804,58864-0694-30 ",.02)
 ;;58864-0694-30
 ;;9002226.02101,"804,59243-0021-10 ",.01)
 ;;59243-0021-10
 ;;9002226.02101,"804,59243-0021-10 ",.02)
 ;;59243-0021-10
 ;;9002226.02101,"804,59310-0175-40 ",.01)
 ;;59310-0175-40
 ;;9002226.02101,"804,59310-0175-40 ",.02)
 ;;59310-0175-40
 ;;9002226.02101,"804,59310-0177-80 ",.01)
 ;;59310-0177-80
 ;;9002226.02101,"804,59310-0177-80 ",.02)
 ;;59310-0177-80
 ;;9002226.02101,"804,60258-0335-16 ",.01)
 ;;60258-0335-16
 ;;9002226.02101,"804,60258-0335-16 ",.02)
 ;;60258-0335-16
 ;;9002226.02101,"804,60258-0336-01 ",.01)
 ;;60258-0336-01
 ;;9002226.02101,"804,60258-0336-01 ",.02)
 ;;60258-0336-01
 ;;9002226.02101,"804,60258-0371-16 ",.01)
 ;;60258-0371-16
 ;;9002226.02101,"804,60258-0371-16 ",.02)
 ;;60258-0371-16
 ;;9002226.02101,"804,60346-0282-74 ",.01)
 ;;60346-0282-74
 ;;9002226.02101,"804,60346-0282-74 ",.02)
 ;;60346-0282-74
 ;;9002226.02101,"804,60432-0157-06 ",.01)
 ;;60432-0157-06
 ;;9002226.02101,"804,60432-0157-06 ",.02)
 ;;60432-0157-06
 ;;9002226.02101,"804,60432-0157-21 ",.01)
 ;;60432-0157-21
 ;;9002226.02101,"804,60432-0157-21 ",.02)
 ;;60432-0157-21
 ;;9002226.02101,"804,60505-0802-01 ",.01)
 ;;60505-0802-01
 ;;9002226.02101,"804,60505-0802-01 ",.02)
 ;;60505-0802-01