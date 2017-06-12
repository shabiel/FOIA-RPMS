BGP50M12 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 06, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1201,42254-0129-30 ",.02)
 ;;42254-0129-30
 ;;9002226.02101,"1201,42254-0129-90 ",.01)
 ;;42254-0129-90
 ;;9002226.02101,"1201,42254-0129-90 ",.02)
 ;;42254-0129-90
 ;;9002226.02101,"1201,42254-0131-30 ",.01)
 ;;42254-0131-30
 ;;9002226.02101,"1201,42254-0131-30 ",.02)
 ;;42254-0131-30
 ;;9002226.02101,"1201,42254-0131-90 ",.01)
 ;;42254-0131-90
 ;;9002226.02101,"1201,42254-0131-90 ",.02)
 ;;42254-0131-90
 ;;9002226.02101,"1201,42254-0168-90 ",.01)
 ;;42254-0168-90
 ;;9002226.02101,"1201,42254-0168-90 ",.02)
 ;;42254-0168-90
 ;;9002226.02101,"1201,42254-0202-30 ",.01)
 ;;42254-0202-30
 ;;9002226.02101,"1201,42254-0202-30 ",.02)
 ;;42254-0202-30
 ;;9002226.02101,"1201,42254-0202-90 ",.01)
 ;;42254-0202-90
 ;;9002226.02101,"1201,42254-0202-90 ",.02)
 ;;42254-0202-90
 ;;9002226.02101,"1201,42254-0225-30 ",.01)
 ;;42254-0225-30
 ;;9002226.02101,"1201,42254-0225-30 ",.02)
 ;;42254-0225-30
 ;;9002226.02101,"1201,42254-0261-30 ",.01)
 ;;42254-0261-30
 ;;9002226.02101,"1201,42254-0261-30 ",.02)
 ;;42254-0261-30
 ;;9002226.02101,"1201,42254-0261-45 ",.01)
 ;;42254-0261-45
 ;;9002226.02101,"1201,42254-0261-45 ",.02)
 ;;42254-0261-45
 ;;9002226.02101,"1201,42254-0261-90 ",.01)
 ;;42254-0261-90
 ;;9002226.02101,"1201,42254-0261-90 ",.02)
 ;;42254-0261-90
 ;;9002226.02101,"1201,42254-0267-30 ",.01)
 ;;42254-0267-30
 ;;9002226.02101,"1201,42254-0267-30 ",.02)
 ;;42254-0267-30
 ;;9002226.02101,"1201,42254-0267-45 ",.01)
 ;;42254-0267-45
 ;;9002226.02101,"1201,42254-0267-45 ",.02)
 ;;42254-0267-45
 ;;9002226.02101,"1201,42254-0267-90 ",.01)
 ;;42254-0267-90
 ;;9002226.02101,"1201,42254-0267-90 ",.02)
 ;;42254-0267-90
 ;;9002226.02101,"1201,42254-0307-30 ",.01)
 ;;42254-0307-30
 ;;9002226.02101,"1201,42254-0307-30 ",.02)
 ;;42254-0307-30
 ;;9002226.02101,"1201,42254-0379-30 ",.01)
 ;;42254-0379-30
 ;;9002226.02101,"1201,42254-0379-30 ",.02)
 ;;42254-0379-30
 ;;9002226.02101,"1201,42254-0379-90 ",.01)
 ;;42254-0379-90
 ;;9002226.02101,"1201,42254-0379-90 ",.02)
 ;;42254-0379-90
 ;;9002226.02101,"1201,42254-0382-30 ",.01)
 ;;42254-0382-30
 ;;9002226.02101,"1201,42254-0382-30 ",.02)
 ;;42254-0382-30
 ;;9002226.02101,"1201,42254-0382-90 ",.01)
 ;;42254-0382-90
 ;;9002226.02101,"1201,42254-0382-90 ",.02)
 ;;42254-0382-90
 ;;9002226.02101,"1201,42254-0391-30 ",.01)
 ;;42254-0391-30
 ;;9002226.02101,"1201,42254-0391-30 ",.02)
 ;;42254-0391-30
 ;;9002226.02101,"1201,42254-0392-90 ",.01)
 ;;42254-0392-90
 ;;9002226.02101,"1201,42254-0392-90 ",.02)
 ;;42254-0392-90
 ;;9002226.02101,"1201,42254-0424-30 ",.01)
 ;;42254-0424-30
 ;;9002226.02101,"1201,42254-0424-30 ",.02)
 ;;42254-0424-30
 ;;9002226.02101,"1201,42254-0425-30 ",.01)
 ;;42254-0425-30
 ;;9002226.02101,"1201,42254-0425-30 ",.02)
 ;;42254-0425-30
 ;;9002226.02101,"1201,42254-0425-90 ",.01)
 ;;42254-0425-90
 ;;9002226.02101,"1201,42254-0425-90 ",.02)
 ;;42254-0425-90
 ;;9002226.02101,"1201,42254-0434-30 ",.01)
 ;;42254-0434-30
 ;;9002226.02101,"1201,42254-0434-30 ",.02)
 ;;42254-0434-30
 ;;9002226.02101,"1201,42291-0143-10 ",.01)
 ;;42291-0143-10
 ;;9002226.02101,"1201,42291-0143-10 ",.02)
 ;;42291-0143-10
 ;;9002226.02101,"1201,42291-0143-90 ",.01)
 ;;42291-0143-90
 ;;9002226.02101,"1201,42291-0143-90 ",.02)
 ;;42291-0143-90
 ;;9002226.02101,"1201,42291-0144-10 ",.01)
 ;;42291-0144-10
 ;;9002226.02101,"1201,42291-0144-10 ",.02)
 ;;42291-0144-10
 ;;9002226.02101,"1201,42291-0144-90 ",.01)
 ;;42291-0144-90
 ;;9002226.02101,"1201,42291-0144-90 ",.02)
 ;;42291-0144-90
 ;;9002226.02101,"1201,42291-0145-50 ",.01)
 ;;42291-0145-50
 ;;9002226.02101,"1201,42291-0145-50 ",.02)
 ;;42291-0145-50
 ;;9002226.02101,"1201,42291-0145-90 ",.01)
 ;;42291-0145-90
 ;;9002226.02101,"1201,42291-0145-90 ",.02)
 ;;42291-0145-90
 ;;9002226.02101,"1201,42291-0146-50 ",.01)
 ;;42291-0146-50
 ;;9002226.02101,"1201,42291-0146-50 ",.02)
 ;;42291-0146-50
 ;;9002226.02101,"1201,42291-0146-90 ",.01)
 ;;42291-0146-90
 ;;9002226.02101,"1201,42291-0146-90 ",.02)
 ;;42291-0146-90
 ;;9002226.02101,"1201,42291-0375-90 ",.01)
 ;;42291-0375-90
 ;;9002226.02101,"1201,42291-0375-90 ",.02)
 ;;42291-0375-90
 ;;9002226.02101,"1201,42291-0376-90 ",.01)
 ;;42291-0376-90
 ;;9002226.02101,"1201,42291-0376-90 ",.02)
 ;;42291-0376-90
 ;;9002226.02101,"1201,42291-0377-10 ",.01)
 ;;42291-0377-10
 ;;9002226.02101,"1201,42291-0377-10 ",.02)
 ;;42291-0377-10
 ;;9002226.02101,"1201,42291-0377-90 ",.01)
 ;;42291-0377-90
 ;;9002226.02101,"1201,42291-0377-90 ",.02)
 ;;42291-0377-90
 ;;9002226.02101,"1201,42549-0490-90 ",.01)
 ;;42549-0490-90
 ;;9002226.02101,"1201,42549-0490-90 ",.02)
 ;;42549-0490-90
 ;;9002226.02101,"1201,42549-0708-30 ",.01)
 ;;42549-0708-30
 ;;9002226.02101,"1201,42549-0708-30 ",.02)
 ;;42549-0708-30
 ;;9002226.02101,"1201,42549-0715-90 ",.01)
 ;;42549-0715-90
 ;;9002226.02101,"1201,42549-0715-90 ",.02)
 ;;42549-0715-90
 ;;9002226.02101,"1201,42571-0005-90 ",.01)
 ;;42571-0005-90
 ;;9002226.02101,"1201,42571-0005-90 ",.02)
 ;;42571-0005-90
 ;;9002226.02101,"1201,42571-0010-05 ",.01)
 ;;42571-0010-05
 ;;9002226.02101,"1201,42571-0010-05 ",.02)
 ;;42571-0010-05
 ;;9002226.02101,"1201,42571-0010-90 ",.01)
 ;;42571-0010-90
 ;;9002226.02101,"1201,42571-0010-90 ",.02)
 ;;42571-0010-90
 ;;9002226.02101,"1201,42571-0020-10 ",.01)
 ;;42571-0020-10
 ;;9002226.02101,"1201,42571-0020-10 ",.02)
 ;;42571-0020-10
 ;;9002226.02101,"1201,42571-0020-90 ",.01)
 ;;42571-0020-90
 ;;9002226.02101,"1201,42571-0020-90 ",.02)
 ;;42571-0020-90
 ;;9002226.02101,"1201,42571-0040-10 ",.01)
 ;;42571-0040-10
 ;;9002226.02101,"1201,42571-0040-10 ",.02)
 ;;42571-0040-10
 ;;9002226.02101,"1201,42571-0040-90 ",.01)
 ;;42571-0040-90
 ;;9002226.02101,"1201,42571-0040-90 ",.02)
 ;;42571-0040-90
 ;;9002226.02101,"1201,42571-0080-05 ",.01)
 ;;42571-0080-05
 ;;9002226.02101,"1201,42571-0080-05 ",.02)
 ;;42571-0080-05
 ;;9002226.02101,"1201,42571-0080-90 ",.01)
 ;;42571-0080-90
 ;;9002226.02101,"1201,42571-0080-90 ",.02)
 ;;42571-0080-90
 ;;9002226.02101,"1201,43063-0008-01 ",.01)
 ;;43063-0008-01
 ;;9002226.02101,"1201,43063-0008-01 ",.02)
 ;;43063-0008-01
 ;;9002226.02101,"1201,43063-0080-30 ",.01)
 ;;43063-0080-30
 ;;9002226.02101,"1201,43063-0080-30 ",.02)
 ;;43063-0080-30
 ;;9002226.02101,"1201,43063-0080-90 ",.01)
 ;;43063-0080-90
 ;;9002226.02101,"1201,43063-0080-90 ",.02)
 ;;43063-0080-90
 ;;9002226.02101,"1201,43063-0143-30 ",.01)
 ;;43063-0143-30
 ;;9002226.02101,"1201,43063-0143-30 ",.02)
 ;;43063-0143-30
 ;;9002226.02101,"1201,43063-0195-30 ",.01)
 ;;43063-0195-30
 ;;9002226.02101,"1201,43063-0195-30 ",.02)
 ;;43063-0195-30
 ;;9002226.02101,"1201,43063-0373-30 ",.01)
 ;;43063-0373-30
 ;;9002226.02101,"1201,43063-0373-30 ",.02)
 ;;43063-0373-30
 ;;9002226.02101,"1201,43063-0443-30 ",.01)
 ;;43063-0443-30
 ;;9002226.02101,"1201,43063-0443-30 ",.02)
 ;;43063-0443-30
 ;;9002226.02101,"1201,43063-0444-30 ",.01)
 ;;43063-0444-30
 ;;9002226.02101,"1201,43063-0444-30 ",.02)
 ;;43063-0444-30
 ;;9002226.02101,"1201,43063-0453-30 ",.01)
 ;;43063-0453-30
 ;;9002226.02101,"1201,43063-0453-30 ",.02)
 ;;43063-0453-30
 ;;9002226.02101,"1201,43353-0031-15 ",.01)
 ;;43353-0031-15
 ;;9002226.02101,"1201,43353-0031-15 ",.02)
 ;;43353-0031-15
 ;;9002226.02101,"1201,43353-0031-45 ",.01)
 ;;43353-0031-45
 ;;9002226.02101,"1201,43353-0031-45 ",.02)
 ;;43353-0031-45
 ;;9002226.02101,"1201,43353-0031-60 ",.01)
 ;;43353-0031-60
 ;;9002226.02101,"1201,43353-0031-60 ",.02)
 ;;43353-0031-60
 ;;9002226.02101,"1201,43353-0031-82 ",.01)
 ;;43353-0031-82
 ;;9002226.02101,"1201,43353-0031-82 ",.02)
 ;;43353-0031-82
 ;;9002226.02101,"1201,43353-0031-91 ",.01)
 ;;43353-0031-91
 ;;9002226.02101,"1201,43353-0031-91 ",.02)
 ;;43353-0031-91
 ;;9002226.02101,"1201,43353-0227-15 ",.01)
 ;;43353-0227-15
 ;;9002226.02101,"1201,43353-0227-15 ",.02)
 ;;43353-0227-15
 ;;9002226.02101,"1201,43353-0227-45 ",.01)
 ;;43353-0227-45
 ;;9002226.02101,"1201,43353-0227-45 ",.02)
 ;;43353-0227-45
 ;;9002226.02101,"1201,43353-0228-15 ",.01)
 ;;43353-0228-15
 ;;9002226.02101,"1201,43353-0228-15 ",.02)
 ;;43353-0228-15
 ;;9002226.02101,"1201,43353-0228-30 ",.01)
 ;;43353-0228-30
 ;;9002226.02101,"1201,43353-0228-30 ",.02)
 ;;43353-0228-30
 ;;9002226.02101,"1201,43353-0228-45 ",.01)
 ;;43353-0228-45
 ;;9002226.02101,"1201,43353-0228-45 ",.02)
 ;;43353-0228-45
 ;;9002226.02101,"1201,43353-0228-60 ",.01)
 ;;43353-0228-60
 ;;9002226.02101,"1201,43353-0228-60 ",.02)
 ;;43353-0228-60
 ;;9002226.02101,"1201,43353-0229-15 ",.01)
 ;;43353-0229-15
 ;;9002226.02101,"1201,43353-0229-15 ",.02)
 ;;43353-0229-15
 ;;9002226.02101,"1201,43353-0229-30 ",.01)
 ;;43353-0229-30
 ;;9002226.02101,"1201,43353-0229-30 ",.02)
 ;;43353-0229-30
 ;;9002226.02101,"1201,43353-0229-45 ",.01)
 ;;43353-0229-45
 ;;9002226.02101,"1201,43353-0229-45 ",.02)
 ;;43353-0229-45
 ;;9002226.02101,"1201,43353-0229-60 ",.01)
 ;;43353-0229-60
 ;;9002226.02101,"1201,43353-0229-60 ",.02)
 ;;43353-0229-60
 ;;9002226.02101,"1201,43353-0289-15 ",.01)
 ;;43353-0289-15
 ;;9002226.02101,"1201,43353-0289-15 ",.02)
 ;;43353-0289-15
 ;;9002226.02101,"1201,43353-0289-17 ",.01)
 ;;43353-0289-17
 ;;9002226.02101,"1201,43353-0289-17 ",.02)
 ;;43353-0289-17
 ;;9002226.02101,"1201,43353-0289-45 ",.01)
 ;;43353-0289-45
 ;;9002226.02101,"1201,43353-0289-45 ",.02)
 ;;43353-0289-45
 ;;9002226.02101,"1201,43353-0289-91 ",.01)
 ;;43353-0289-91
 ;;9002226.02101,"1201,43353-0289-91 ",.02)
 ;;43353-0289-91
 ;;9002226.02101,"1201,43353-0290-15 ",.01)
 ;;43353-0290-15
 ;;9002226.02101,"1201,43353-0290-15 ",.02)
 ;;43353-0290-15
 ;;9002226.02101,"1201,43353-0290-45 ",.01)
 ;;43353-0290-45
 ;;9002226.02101,"1201,43353-0290-45 ",.02)
 ;;43353-0290-45
 ;;9002226.02101,"1201,43353-0394-15 ",.01)
 ;;43353-0394-15
 ;;9002226.02101,"1201,43353-0394-15 ",.02)
 ;;43353-0394-15
 ;;9002226.02101,"1201,43353-0394-30 ",.01)
 ;;43353-0394-30
 ;;9002226.02101,"1201,43353-0394-30 ",.02)
 ;;43353-0394-30
 ;;9002226.02101,"1201,43353-0394-45 ",.01)
 ;;43353-0394-45
 ;;9002226.02101,"1201,43353-0394-45 ",.02)
 ;;43353-0394-45
 ;;9002226.02101,"1201,43353-0394-60 ",.01)
 ;;43353-0394-60
 ;;9002226.02101,"1201,43353-0394-60 ",.02)
 ;;43353-0394-60
 ;;9002226.02101,"1201,43353-0474-45 ",.01)
 ;;43353-0474-45
 ;;9002226.02101,"1201,43353-0474-45 ",.02)
 ;;43353-0474-45
 ;;9002226.02101,"1201,43353-0496-45 ",.01)
 ;;43353-0496-45
 ;;9002226.02101,"1201,43353-0496-45 ",.02)
 ;;43353-0496-45
 ;;9002226.02101,"1201,43353-0625-15 ",.01)
 ;;43353-0625-15
 ;;9002226.02101,"1201,43353-0625-15 ",.02)
 ;;43353-0625-15
 ;;9002226.02101,"1201,43353-0625-30 ",.01)
 ;;43353-0625-30
 ;;9002226.02101,"1201,43353-0625-30 ",.02)
 ;;43353-0625-30
 ;;9002226.02101,"1201,43353-0625-45 ",.01)
 ;;43353-0625-45
 ;;9002226.02101,"1201,43353-0625-45 ",.02)
 ;;43353-0625-45
 ;;9002226.02101,"1201,43353-0625-60 ",.01)
 ;;43353-0625-60
 ;;9002226.02101,"1201,43353-0625-60 ",.02)
 ;;43353-0625-60
 ;;9002226.02101,"1201,43353-0664-15 ",.01)
 ;;43353-0664-15
 ;;9002226.02101,"1201,43353-0664-15 ",.02)
 ;;43353-0664-15
 ;;9002226.02101,"1201,43353-0664-30 ",.01)
 ;;43353-0664-30
 ;;9002226.02101,"1201,43353-0664-30 ",.02)
 ;;43353-0664-30
 ;;9002226.02101,"1201,43353-0664-45 ",.01)
 ;;43353-0664-45
 ;;9002226.02101,"1201,43353-0664-45 ",.02)
 ;;43353-0664-45
 ;;9002226.02101,"1201,43353-0664-60 ",.01)
 ;;43353-0664-60
 ;;9002226.02101,"1201,43353-0664-60 ",.02)
 ;;43353-0664-60
 ;;9002226.02101,"1201,43353-0665-15 ",.01)
 ;;43353-0665-15
 ;;9002226.02101,"1201,43353-0665-15 ",.02)
 ;;43353-0665-15
 ;;9002226.02101,"1201,43353-0665-30 ",.01)
 ;;43353-0665-30
 ;;9002226.02101,"1201,43353-0665-30 ",.02)
 ;;43353-0665-30
 ;;9002226.02101,"1201,43353-0665-45 ",.01)
 ;;43353-0665-45
 ;;9002226.02101,"1201,43353-0665-45 ",.02)
 ;;43353-0665-45
 ;;9002226.02101,"1201,43353-0665-60 ",.01)
 ;;43353-0665-60
 ;;9002226.02101,"1201,43353-0665-60 ",.02)
 ;;43353-0665-60
 ;;9002226.02101,"1201,43353-0666-30 ",.01)
 ;;43353-0666-30
 ;;9002226.02101,"1201,43353-0666-30 ",.02)
 ;;43353-0666-30
 ;;9002226.02101,"1201,43353-0666-45 ",.01)
 ;;43353-0666-45
 ;;9002226.02101,"1201,43353-0666-45 ",.02)
 ;;43353-0666-45
 ;;9002226.02101,"1201,43353-0666-60 ",.01)
 ;;43353-0666-60
 ;;9002226.02101,"1201,43353-0666-60 ",.02)
 ;;43353-0666-60
 ;;9002226.02101,"1201,43353-0685-45 ",.01)
 ;;43353-0685-45
 ;;9002226.02101,"1201,43353-0685-45 ",.02)
 ;;43353-0685-45
 ;;9002226.02101,"1201,43353-0718-45 ",.01)
 ;;43353-0718-45
 ;;9002226.02101,"1201,43353-0718-45 ",.02)
 ;;43353-0718-45
 ;;9002226.02101,"1201,43353-0718-60 ",.01)
 ;;43353-0718-60
 ;;9002226.02101,"1201,43353-0718-60 ",.02)
 ;;43353-0718-60
 ;;9002226.02101,"1201,43353-0763-45 ",.01)
 ;;43353-0763-45
 ;;9002226.02101,"1201,43353-0763-45 ",.02)
 ;;43353-0763-45
 ;;9002226.02101,"1201,43353-0768-15 ",.01)
 ;;43353-0768-15
 ;;9002226.02101,"1201,43353-0768-15 ",.02)
 ;;43353-0768-15
 ;;9002226.02101,"1201,43353-0773-15 ",.01)
 ;;43353-0773-15
 ;;9002226.02101,"1201,43353-0773-15 ",.02)
 ;;43353-0773-15
 ;;9002226.02101,"1201,43353-0773-45 ",.01)
 ;;43353-0773-45
 ;;9002226.02101,"1201,43353-0773-45 ",.02)
 ;;43353-0773-45
 ;;9002226.02101,"1201,43353-0773-60 ",.01)
 ;;43353-0773-60
 ;;9002226.02101,"1201,43353-0773-60 ",.02)
 ;;43353-0773-60
 ;;9002226.02101,"1201,43353-0774-15 ",.01)
 ;;43353-0774-15
 ;;9002226.02101,"1201,43353-0774-15 ",.02)
 ;;43353-0774-15
 ;;9002226.02101,"1201,43353-0776-15 ",.01)
 ;;43353-0776-15
 ;;9002226.02101,"1201,43353-0776-15 ",.02)
 ;;43353-0776-15