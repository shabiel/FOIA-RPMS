BGP73F69 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 05, 2017;
 ;;17.1;IHS CLINICAL REPORTING;;MAY 10, 2017;Build 29
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"868,58016-1029-01 ",.02)
 ;;58016-1029-01
 ;;9002226.02101,"868,58016-1033-01 ",.01)
 ;;58016-1033-01
 ;;9002226.02101,"868,58016-1033-01 ",.02)
 ;;58016-1033-01
 ;;9002226.02101,"868,58016-1034-01 ",.01)
 ;;58016-1034-01
 ;;9002226.02101,"868,58016-1034-01 ",.02)
 ;;58016-1034-01
 ;;9002226.02101,"868,58016-1035-01 ",.01)
 ;;58016-1035-01
 ;;9002226.02101,"868,58016-1035-01 ",.02)
 ;;58016-1035-01
 ;;9002226.02101,"868,58016-1036-01 ",.01)
 ;;58016-1036-01
 ;;9002226.02101,"868,58016-1036-01 ",.02)
 ;;58016-1036-01
 ;;9002226.02101,"868,58016-1037-01 ",.01)
 ;;58016-1037-01
 ;;9002226.02101,"868,58016-1037-01 ",.02)
 ;;58016-1037-01
 ;;9002226.02101,"868,58016-1038-01 ",.01)
 ;;58016-1038-01
 ;;9002226.02101,"868,58016-1038-01 ",.02)
 ;;58016-1038-01
 ;;9002226.02101,"868,58016-1039-01 ",.01)
 ;;58016-1039-01
 ;;9002226.02101,"868,58016-1039-01 ",.02)
 ;;58016-1039-01
 ;;9002226.02101,"868,58016-1045-01 ",.01)
 ;;58016-1045-01
 ;;9002226.02101,"868,58016-1045-01 ",.02)
 ;;58016-1045-01
 ;;9002226.02101,"868,58016-1046-01 ",.01)
 ;;58016-1046-01
 ;;9002226.02101,"868,58016-1046-01 ",.02)
 ;;58016-1046-01
 ;;9002226.02101,"868,58016-4786-01 ",.01)
 ;;58016-4786-01
 ;;9002226.02101,"868,58016-4786-01 ",.02)
 ;;58016-4786-01
 ;;9002226.02101,"868,58016-4790-01 ",.01)
 ;;58016-4790-01
 ;;9002226.02101,"868,58016-4790-01 ",.02)
 ;;58016-4790-01
 ;;9002226.02101,"868,58016-4804-01 ",.01)
 ;;58016-4804-01
 ;;9002226.02101,"868,58016-4804-01 ",.02)
 ;;58016-4804-01
 ;;9002226.02101,"868,58016-4807-01 ",.01)
 ;;58016-4807-01
 ;;9002226.02101,"868,58016-4807-01 ",.02)
 ;;58016-4807-01
 ;;9002226.02101,"868,58016-4814-01 ",.01)
 ;;58016-4814-01
 ;;9002226.02101,"868,58016-4814-01 ",.02)
 ;;58016-4814-01
 ;;9002226.02101,"868,58016-4834-01 ",.01)
 ;;58016-4834-01
 ;;9002226.02101,"868,58016-4834-01 ",.02)
 ;;58016-4834-01
 ;;9002226.02101,"868,58016-4842-01 ",.01)
 ;;58016-4842-01
 ;;9002226.02101,"868,58016-4842-01 ",.02)
 ;;58016-4842-01
 ;;9002226.02101,"868,58016-4847-01 ",.01)
 ;;58016-4847-01
 ;;9002226.02101,"868,58016-4847-01 ",.02)
 ;;58016-4847-01
 ;;9002226.02101,"868,58016-4869-01 ",.01)
 ;;58016-4869-01
 ;;9002226.02101,"868,58016-4869-01 ",.02)
 ;;58016-4869-01
 ;;9002226.02101,"868,58016-4873-01 ",.01)
 ;;58016-4873-01
 ;;9002226.02101,"868,58016-4873-01 ",.02)
 ;;58016-4873-01
 ;;9002226.02101,"868,58016-4990-01 ",.01)
 ;;58016-4990-01
 ;;9002226.02101,"868,58016-4990-01 ",.02)
 ;;58016-4990-01
 ;;9002226.02101,"868,58016-9438-01 ",.01)
 ;;58016-9438-01
 ;;9002226.02101,"868,58016-9438-01 ",.02)
 ;;58016-9438-01
 ;;9002226.02101,"868,58016-9551-01 ",.01)
 ;;58016-9551-01
 ;;9002226.02101,"868,58016-9551-01 ",.02)
 ;;58016-9551-01
 ;;9002226.02101,"868,58463-0002-30 ",.01)
 ;;58463-0002-30
 ;;9002226.02101,"868,58463-0002-30 ",.02)
 ;;58463-0002-30
 ;;9002226.02101,"868,58463-0012-01 ",.01)
 ;;58463-0012-01
 ;;9002226.02101,"868,58463-0012-01 ",.02)
 ;;58463-0012-01
 ;;9002226.02101,"868,58864-0029-30 ",.01)
 ;;58864-0029-30
 ;;9002226.02101,"868,58864-0029-30 ",.02)
 ;;58864-0029-30
 ;;9002226.02101,"868,58864-0029-40 ",.01)
 ;;58864-0029-40
 ;;9002226.02101,"868,58864-0029-40 ",.02)
 ;;58864-0029-40
 ;;9002226.02101,"868,58864-0034-10 ",.01)
 ;;58864-0034-10
 ;;9002226.02101,"868,58864-0034-10 ",.02)
 ;;58864-0034-10
 ;;9002226.02101,"868,58864-0034-14 ",.01)
 ;;58864-0034-14
 ;;9002226.02101,"868,58864-0034-14 ",.02)
 ;;58864-0034-14
 ;;9002226.02101,"868,58864-0067-20 ",.01)
 ;;58864-0067-20
 ;;9002226.02101,"868,58864-0067-20 ",.02)
 ;;58864-0067-20
 ;;9002226.02101,"868,58864-0072-30 ",.01)
 ;;58864-0072-30
 ;;9002226.02101,"868,58864-0072-30 ",.02)
 ;;58864-0072-30
 ;;9002226.02101,"868,58864-0072-40 ",.01)
 ;;58864-0072-40
 ;;9002226.02101,"868,58864-0072-40 ",.02)
 ;;58864-0072-40
 ;;9002226.02101,"868,58864-0073-20 ",.01)
 ;;58864-0073-20
 ;;9002226.02101,"868,58864-0073-20 ",.02)
 ;;58864-0073-20
 ;;9002226.02101,"868,58864-0073-28 ",.01)
 ;;58864-0073-28
 ;;9002226.02101,"868,58864-0073-28 ",.02)
 ;;58864-0073-28
 ;;9002226.02101,"868,58864-0073-30 ",.01)
 ;;58864-0073-30
 ;;9002226.02101,"868,58864-0073-30 ",.02)
 ;;58864-0073-30
 ;;9002226.02101,"868,58864-0073-40 ",.01)
 ;;58864-0073-40
 ;;9002226.02101,"868,58864-0073-40 ",.02)
 ;;58864-0073-40
 ;;9002226.02101,"868,58864-0073-56 ",.01)
 ;;58864-0073-56
 ;;9002226.02101,"868,58864-0073-56 ",.02)
 ;;58864-0073-56
 ;;9002226.02101,"868,58864-0149-40 ",.01)
 ;;58864-0149-40
 ;;9002226.02101,"868,58864-0149-40 ",.02)
 ;;58864-0149-40
 ;;9002226.02101,"868,58864-0150-30 ",.01)
 ;;58864-0150-30
 ;;9002226.02101,"868,58864-0150-30 ",.02)
 ;;58864-0150-30
 ;;9002226.02101,"868,58864-0189-10 ",.01)
 ;;58864-0189-10
 ;;9002226.02101,"868,58864-0189-10 ",.02)
 ;;58864-0189-10
 ;;9002226.02101,"868,58864-0189-20 ",.01)
 ;;58864-0189-20
 ;;9002226.02101,"868,58864-0189-20 ",.02)
 ;;58864-0189-20
 ;;9002226.02101,"868,58864-0189-28 ",.01)
 ;;58864-0189-28
 ;;9002226.02101,"868,58864-0189-28 ",.02)
 ;;58864-0189-28
 ;;9002226.02101,"868,58864-0190-12 ",.01)
 ;;58864-0190-12
 ;;9002226.02101,"868,58864-0190-12 ",.02)
 ;;58864-0190-12
 ;;9002226.02101,"868,58864-0190-20 ",.01)
 ;;58864-0190-20
 ;;9002226.02101,"868,58864-0190-20 ",.02)
 ;;58864-0190-20
 ;;9002226.02101,"868,58864-0190-28 ",.01)
 ;;58864-0190-28
 ;;9002226.02101,"868,58864-0190-28 ",.02)
 ;;58864-0190-28
 ;;9002226.02101,"868,58864-0190-30 ",.01)
 ;;58864-0190-30
 ;;9002226.02101,"868,58864-0190-30 ",.02)
 ;;58864-0190-30
 ;;9002226.02101,"868,58864-0195-40 ",.01)
 ;;58864-0195-40
 ;;9002226.02101,"868,58864-0195-40 ",.02)
 ;;58864-0195-40
 ;;9002226.02101,"868,58864-0379-40 ",.01)
 ;;58864-0379-40
 ;;9002226.02101,"868,58864-0379-40 ",.02)
 ;;58864-0379-40
 ;;9002226.02101,"868,58864-0478-06 ",.01)
 ;;58864-0478-06
 ;;9002226.02101,"868,58864-0478-06 ",.02)
 ;;58864-0478-06
 ;;9002226.02101,"868,58864-0478-10 ",.01)
 ;;58864-0478-10
 ;;9002226.02101,"868,58864-0478-10 ",.02)
 ;;58864-0478-10
 ;;9002226.02101,"868,58864-0478-14 ",.01)
 ;;58864-0478-14
 ;;9002226.02101,"868,58864-0478-14 ",.02)
 ;;58864-0478-14
 ;;9002226.02101,"868,58864-0478-20 ",.01)
 ;;58864-0478-20
 ;;9002226.02101,"868,58864-0478-20 ",.02)
 ;;58864-0478-20
 ;;9002226.02101,"868,58864-0478-30 ",.01)
 ;;58864-0478-30
 ;;9002226.02101,"868,58864-0478-30 ",.02)
 ;;58864-0478-30
 ;;9002226.02101,"868,58864-0607-40 ",.01)
 ;;58864-0607-40
 ;;9002226.02101,"868,58864-0607-40 ",.02)
 ;;58864-0607-40
 ;;9002226.02101,"868,58864-0607-60 ",.01)
 ;;58864-0607-60
 ;;9002226.02101,"868,58864-0607-60 ",.02)
 ;;58864-0607-60
 ;;9002226.02101,"868,58864-0612-28 ",.01)
 ;;58864-0612-28
 ;;9002226.02101,"868,58864-0612-28 ",.02)
 ;;58864-0612-28
 ;;9002226.02101,"868,58864-0615-30 ",.01)
 ;;58864-0615-30
 ;;9002226.02101,"868,58864-0615-30 ",.02)
 ;;58864-0615-30
 ;;9002226.02101,"868,58864-0621-05 ",.01)
 ;;58864-0621-05
 ;;9002226.02101,"868,58864-0621-05 ",.02)
 ;;58864-0621-05
 ;;9002226.02101,"868,58864-0621-10 ",.01)
 ;;58864-0621-10
 ;;9002226.02101,"868,58864-0621-10 ",.02)
 ;;58864-0621-10
 ;;9002226.02101,"868,58864-0621-30 ",.01)
 ;;58864-0621-30
 ;;9002226.02101,"868,58864-0621-30 ",.02)
 ;;58864-0621-30
 ;;9002226.02101,"868,58864-0632-40 ",.01)
 ;;58864-0632-40
 ;;9002226.02101,"868,58864-0632-40 ",.02)
 ;;58864-0632-40
 ;;9002226.02101,"868,58864-0637-14 ",.01)
 ;;58864-0637-14
 ;;9002226.02101,"868,58864-0637-14 ",.02)
 ;;58864-0637-14
 ;;9002226.02101,"868,58864-0637-20 ",.01)
 ;;58864-0637-20
 ;;9002226.02101,"868,58864-0637-20 ",.02)
 ;;58864-0637-20
 ;;9002226.02101,"868,58864-0637-30 ",.01)
 ;;58864-0637-30
 ;;9002226.02101,"868,58864-0637-30 ",.02)
 ;;58864-0637-30
 ;;9002226.02101,"868,58864-0655-04 ",.01)
 ;;58864-0655-04
 ;;9002226.02101,"868,58864-0655-04 ",.02)
 ;;58864-0655-04
 ;;9002226.02101,"868,58864-0655-06 ",.01)
 ;;58864-0655-06
 ;;9002226.02101,"868,58864-0655-06 ",.02)
 ;;58864-0655-06
 ;;9002226.02101,"868,58864-0655-14 ",.01)
 ;;58864-0655-14
 ;;9002226.02101,"868,58864-0655-14 ",.02)
 ;;58864-0655-14
 ;;9002226.02101,"868,58864-0655-30 ",.01)
 ;;58864-0655-30
 ;;9002226.02101,"868,58864-0655-30 ",.02)
 ;;58864-0655-30
 ;;9002226.02101,"868,58864-0675-30 ",.01)
 ;;58864-0675-30
 ;;9002226.02101,"868,58864-0675-30 ",.02)
 ;;58864-0675-30
 ;;9002226.02101,"868,58864-0675-40 ",.01)
 ;;58864-0675-40
 ;;9002226.02101,"868,58864-0675-40 ",.02)
 ;;58864-0675-40
 ;;9002226.02101,"868,58864-0690-20 ",.01)
 ;;58864-0690-20
 ;;9002226.02101,"868,58864-0690-20 ",.02)
 ;;58864-0690-20
 ;;9002226.02101,"868,58864-0767-20 ",.01)
 ;;58864-0767-20
 ;;9002226.02101,"868,58864-0767-20 ",.02)
 ;;58864-0767-20
 ;;9002226.02101,"868,58864-0767-21 ",.01)
 ;;58864-0767-21
 ;;9002226.02101,"868,58864-0767-21 ",.02)
 ;;58864-0767-21
 ;;9002226.02101,"868,58864-0767-30 ",.01)
 ;;58864-0767-30
 ;;9002226.02101,"868,58864-0767-30 ",.02)
 ;;58864-0767-30
 ;;9002226.02101,"868,58864-0775-20 ",.01)
 ;;58864-0775-20
 ;;9002226.02101,"868,58864-0775-20 ",.02)
 ;;58864-0775-20
 ;;9002226.02101,"868,58864-0791-06 ",.01)
 ;;58864-0791-06
 ;;9002226.02101,"868,58864-0791-06 ",.02)
 ;;58864-0791-06
 ;;9002226.02101,"868,58864-0806-06 ",.01)
 ;;58864-0806-06
 ;;9002226.02101,"868,58864-0806-06 ",.02)
 ;;58864-0806-06
 ;;9002226.02101,"868,58864-0806-14 ",.01)
 ;;58864-0806-14
 ;;9002226.02101,"868,58864-0806-14 ",.02)
 ;;58864-0806-14
 ;;9002226.02101,"868,58864-0806-20 ",.01)
 ;;58864-0806-20
 ;;9002226.02101,"868,58864-0806-20 ",.02)
 ;;58864-0806-20
 ;;9002226.02101,"868,58864-0833-10 ",.01)
 ;;58864-0833-10
 ;;9002226.02101,"868,58864-0833-10 ",.02)
 ;;58864-0833-10
 ;;9002226.02101,"868,58864-0833-20 ",.01)
 ;;58864-0833-20
 ;;9002226.02101,"868,58864-0833-20 ",.02)
 ;;58864-0833-20
 ;;9002226.02101,"868,58864-0837-20 ",.01)
 ;;58864-0837-20
 ;;9002226.02101,"868,58864-0837-20 ",.02)
 ;;58864-0837-20
 ;;9002226.02101,"868,58864-0845-30 ",.01)
 ;;58864-0845-30
 ;;9002226.02101,"868,58864-0845-30 ",.02)
 ;;58864-0845-30
 ;;9002226.02101,"868,58864-0845-40 ",.01)
 ;;58864-0845-40
 ;;9002226.02101,"868,58864-0845-40 ",.02)
 ;;58864-0845-40
 ;;9002226.02101,"868,58864-0848-30 ",.01)
 ;;58864-0848-30
 ;;9002226.02101,"868,58864-0848-30 ",.02)
 ;;58864-0848-30
 ;;9002226.02101,"868,59366-7338-01 ",.01)
 ;;59366-7338-01
 ;;9002226.02101,"868,59366-7338-01 ",.02)
 ;;59366-7338-01
 ;;9002226.02101,"868,59366-7339-01 ",.01)
 ;;59366-7339-01
 ;;9002226.02101,"868,59366-7339-01 ",.02)
 ;;59366-7339-01
 ;;9002226.02101,"868,59366-7340-05 ",.01)
 ;;59366-7340-05
 ;;9002226.02101,"868,59366-7340-05 ",.02)
 ;;59366-7340-05
 ;;9002226.02101,"868,59630-0112-10 ",.01)
 ;;59630-0112-10
 ;;9002226.02101,"868,59630-0112-10 ",.02)
 ;;59630-0112-10
 ;;9002226.02101,"868,59630-0113-05 ",.01)
 ;;59630-0113-05
 ;;9002226.02101,"868,59630-0113-05 ",.02)
 ;;59630-0113-05
 ;;9002226.02101,"868,59630-0113-10 ",.01)
 ;;59630-0113-10
 ;;9002226.02101,"868,59630-0113-10 ",.02)
 ;;59630-0113-10
 ;;9002226.02101,"868,59630-0115-05 ",.01)
 ;;59630-0115-05
 ;;9002226.02101,"868,59630-0115-05 ",.02)
 ;;59630-0115-05
 ;;9002226.02101,"868,59630-0142-03 ",.01)
 ;;59630-0142-03
 ;;9002226.02101,"868,59630-0142-03 ",.02)
 ;;59630-0142-03
 ;;9002226.02101,"868,59630-0821-12 ",.01)
 ;;59630-0821-12
 ;;9002226.02101,"868,59630-0821-12 ",.02)
 ;;59630-0821-12
 ;;9002226.02101,"868,59630-0821-60 ",.01)
 ;;59630-0821-60
 ;;9002226.02101,"868,59630-0821-60 ",.02)
 ;;59630-0821-60
 ;;9002226.02101,"868,59630-0821-90 ",.01)
 ;;59630-0821-90
 ;;9002226.02101,"868,59630-0821-90 ",.02)
 ;;59630-0821-90
 ;;9002226.02101,"868,59762-0016-01 ",.01)
 ;;59762-0016-01