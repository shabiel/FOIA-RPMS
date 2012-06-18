BGP8EXXF ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 28, 2007 ;
 ;;8.0;IHS CLINICAL REPORTING;;MAR 12, 2008
 ;;;BGP6;;SEP 28, 2007
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"622,58016-0836-15 ",.01)
 ;;58016-0836-15
 ;;9002226.02101,"622,58016-0836-15 ",.02)
 ;;58016-0836-15
 ;;9002226.02101,"622,58016-0836-30 ",.01)
 ;;58016-0836-30
 ;;9002226.02101,"622,58016-0836-30 ",.02)
 ;;58016-0836-30
 ;;9002226.02101,"622,58016-0854-42 ",.01)
 ;;58016-0854-42
 ;;9002226.02101,"622,58016-0854-42 ",.02)
 ;;58016-0854-42
 ;;9002226.02101,"622,58016-0856-00 ",.01)
 ;;58016-0856-00
 ;;9002226.02101,"622,58016-0856-00 ",.02)
 ;;58016-0856-00
 ;;9002226.02101,"622,58016-0856-15 ",.01)
 ;;58016-0856-15
 ;;9002226.02101,"622,58016-0856-15 ",.02)
 ;;58016-0856-15
 ;;9002226.02101,"622,58016-0856-21 ",.01)
 ;;58016-0856-21
 ;;9002226.02101,"622,58016-0856-21 ",.02)
 ;;58016-0856-21
 ;;9002226.02101,"622,58016-0856-42 ",.01)
 ;;58016-0856-42
 ;;9002226.02101,"622,58016-0856-42 ",.02)
 ;;58016-0856-42
 ;;9002226.02101,"622,58016-0861-14 ",.01)
 ;;58016-0861-14
 ;;9002226.02101,"622,58016-0861-14 ",.02)
 ;;58016-0861-14
 ;;9002226.02101,"622,58016-0861-30 ",.01)
 ;;58016-0861-30
 ;;9002226.02101,"622,58016-0861-30 ",.02)
 ;;58016-0861-30
 ;;9002226.02101,"622,58016-0861-60 ",.01)
 ;;58016-0861-60
 ;;9002226.02101,"622,58016-0861-60 ",.02)
 ;;58016-0861-60
 ;;9002226.02101,"622,58016-0868-30 ",.01)
 ;;58016-0868-30
 ;;9002226.02101,"622,58016-0868-30 ",.02)
 ;;58016-0868-30
 ;;9002226.02101,"622,58016-0868-60 ",.01)
 ;;58016-0868-60
 ;;9002226.02101,"622,58016-0868-60 ",.02)
 ;;58016-0868-60
 ;;9002226.02101,"622,58016-0868-90 ",.01)
 ;;58016-0868-90
 ;;9002226.02101,"622,58016-0868-90 ",.02)
 ;;58016-0868-90
 ;;9002226.02101,"622,58177-0311-04 ",.01)
 ;;58177-0311-04
 ;;9002226.02101,"622,58177-0311-04 ",.02)
 ;;58177-0311-04
 ;;9002226.02101,"622,58177-0312-04 ",.01)
 ;;58177-0312-04
 ;;9002226.02101,"622,58177-0312-04 ",.02)
 ;;58177-0312-04
 ;;9002226.02101,"622,58521-0031-01 ",.01)
 ;;58521-0031-01
 ;;9002226.02101,"622,58521-0031-01 ",.02)
 ;;58521-0031-01
 ;;9002226.02101,"622,58521-0032-01 ",.01)
 ;;58521-0032-01
 ;;9002226.02101,"622,58521-0032-01 ",.02)
 ;;58521-0032-01
 ;;9002226.02101,"622,58521-0033-01 ",.01)
 ;;58521-0033-01
 ;;9002226.02101,"622,58521-0033-01 ",.02)
 ;;58521-0033-01
 ;;9002226.02101,"622,58521-0034-01 ",.01)
 ;;58521-0034-01
 ;;9002226.02101,"622,58521-0034-01 ",.02)
 ;;58521-0034-01
 ;;9002226.02101,"622,58521-0075-01 ",.01)
 ;;58521-0075-01
 ;;9002226.02101,"622,58521-0075-01 ",.02)
 ;;58521-0075-01
 ;;9002226.02101,"622,58521-0125-01 ",.01)
 ;;58521-0125-01
 ;;9002226.02101,"622,58521-0125-01 ",.02)
 ;;58521-0125-01
 ;;9002226.02101,"622,58521-0150-01 ",.01)
 ;;58521-0150-01
 ;;9002226.02101,"622,58521-0150-01 ",.02)
 ;;58521-0150-01
 ;;9002226.02101,"622,58521-0333-05 ",.01)
 ;;58521-0333-05
 ;;9002226.02101,"622,58521-0333-05 ",.02)
 ;;58521-0333-05
 ;;9002226.02101,"622,58521-0451-01 ",.01)
 ;;58521-0451-01
 ;;9002226.02101,"622,58521-0451-01 ",.02)
 ;;58521-0451-01
 ;;9002226.02101,"622,58521-0452-01 ",.01)
 ;;58521-0452-01
 ;;9002226.02101,"622,58521-0452-01 ",.02)
 ;;58521-0452-01
 ;;9002226.02101,"622,58605-0503-01 ",.01)
 ;;58605-0503-01
 ;;9002226.02101,"622,58605-0503-01 ",.02)
 ;;58605-0503-01
 ;;9002226.02101,"622,58605-0504-01 ",.01)
 ;;58605-0504-01
 ;;9002226.02101,"622,58605-0504-01 ",.02)
 ;;58605-0504-01
 ;;9002226.02101,"622,58605-0508-01 ",.01)
 ;;58605-0508-01
 ;;9002226.02101,"622,58605-0508-01 ",.02)
 ;;58605-0508-01
 ;;9002226.02101,"622,59772-8840-01 ",.01)
 ;;59772-8840-01
 ;;9002226.02101,"622,59772-8840-01 ",.02)
 ;;59772-8840-01
 ;;9002226.02101,"622,59772-8840-03 ",.01)
 ;;59772-8840-03
 ;;9002226.02101,"622,59772-8840-03 ",.02)
 ;;59772-8840-03
 ;;9002226.02101,"622,59772-8841-01 ",.01)
 ;;59772-8841-01
 ;;9002226.02101,"622,59772-8841-01 ",.02)
 ;;59772-8841-01
 ;;9002226.02101,"622,59772-8841-03 ",.01)
 ;;59772-8841-03
 ;;9002226.02101,"622,59772-8841-03 ",.02)
 ;;59772-8841-03
 ;;9002226.02101,"622,59772-8842-01 ",.01)
 ;;59772-8842-01
 ;;9002226.02101,"622,59772-8842-01 ",.02)
 ;;59772-8842-01
 ;;9002226.02101,"622,59772-8842-03 ",.01)
 ;;59772-8842-03
 ;;9002226.02101,"622,59772-8842-03 ",.02)
 ;;59772-8842-03
 ;;9002226.02101,"622,59772-8843-01 ",.01)
 ;;59772-8843-01
 ;;9002226.02101,"622,59772-8843-01 ",.02)
 ;;59772-8843-01
 ;;9002226.02101,"622,60793-0009-01 ",.01)
 ;;60793-0009-01
 ;;9002226.02101,"622,60793-0009-01 ",.02)
 ;;60793-0009-01
 ;;9002226.02101,"622,62269-0391-24 ",.01)
 ;;62269-0391-24
 ;;9002226.02101,"622,62269-0391-24 ",.02)
 ;;62269-0391-24
 ;;9002226.02101,"622,62269-0392-24 ",.01)
 ;;62269-0392-24
 ;;9002226.02101,"622,62269-0392-24 ",.02)
 ;;62269-0392-24
 ;;9002226.02101,"622,62269-0393-24 ",.01)
 ;;62269-0393-24
 ;;9002226.02101,"622,62269-0393-24 ",.02)
 ;;62269-0393-24
 ;;9002226.02101,"622,63304-0908-01 ",.01)
 ;;63304-0908-01
 ;;9002226.02101,"622,63304-0908-01 ",.02)
 ;;63304-0908-01
 ;;9002226.02101,"622,63304-0909-01 ",.01)
 ;;63304-0909-01
 ;;9002226.02101,"622,63304-0909-01 ",.02)
 ;;63304-0909-01
 ;;9002226.02101,"622,63304-0910-01 ",.01)
 ;;63304-0910-01
 ;;9002226.02101,"622,63304-0910-01 ",.02)
 ;;63304-0910-01
 ;;9002226.02101,"622,63304-0911-01 ",.01)
 ;;63304-0911-01
 ;;9002226.02101,"622,63304-0911-01 ",.02)
 ;;63304-0911-01
 ;;9002226.02101,"622,63874-0265-01 ",.01)
 ;;63874-0265-01
 ;;9002226.02101,"622,63874-0265-01 ",.02)
 ;;63874-0265-01
 ;;9002226.02101,"622,63874-0265-20 ",.01)
 ;;63874-0265-20
 ;;9002226.02101,"622,63874-0265-20 ",.02)
 ;;63874-0265-20
 ;;9002226.02101,"622,63874-0269-01 ",.01)
 ;;63874-0269-01
 ;;9002226.02101,"622,63874-0269-01 ",.02)
 ;;63874-0269-01
 ;;9002226.02101,"622,63874-0269-02 ",.01)
 ;;63874-0269-02
 ;;9002226.02101,"622,63874-0269-02 ",.02)
 ;;63874-0269-02
 ;;9002226.02101,"622,63874-0269-14 ",.01)
 ;;63874-0269-14
 ;;9002226.02101,"622,63874-0269-14 ",.02)
 ;;63874-0269-14
 ;;9002226.02101,"622,65234-0047-10 ",.01)
 ;;65234-0047-10
 ;;9002226.02101,"622,65234-0047-10 ",.02)
 ;;65234-0047-10
 ;;9002226.02101,"622,65234-0048-10 ",.01)
 ;;65234-0048-10
 ;;9002226.02101,"622,65234-0048-10 ",.02)
 ;;65234-0048-10
 ;;9002226.02101,"622,65234-0048-90 ",.01)
 ;;65234-0048-90
 ;;9002226.02101,"622,65234-0048-90 ",.02)
 ;;65234-0048-90
 ;;9002226.02101,"622,67386-0102-01 ",.01)
 ;;67386-0102-01
 ;;9002226.02101,"622,67386-0102-01 ",.02)
 ;;67386-0102-01
 ;;9002226.02101,"622,68115-0050-07 ",.01)
 ;;68115-0050-07
 ;;9002226.02101,"622,68115-0050-07 ",.02)
 ;;68115-0050-07
 ;;9002226.02101,"622,68115-0050-14 ",.01)
 ;;68115-0050-14
 ;;9002226.02101,"622,68115-0050-14 ",.02)
 ;;68115-0050-14
 ;;9002226.02101,"622,68115-0050-28 ",.01)
 ;;68115-0050-28
 ;;9002226.02101,"622,68115-0050-28 ",.02)
 ;;68115-0050-28
 ;;9002226.02101,"622,68115-0050-90 ",.01)
 ;;68115-0050-90
 ;;9002226.02101,"622,68115-0050-90 ",.02)
 ;;68115-0050-90
 ;;9002226.02101,"622,68115-0051-14 ",.01)
 ;;68115-0051-14
 ;;9002226.02101,"622,68115-0051-14 ",.02)
 ;;68115-0051-14
 ;;9002226.02101,"622,68115-0051-21 ",.01)
 ;;68115-0051-21
 ;;9002226.02101,"622,68115-0051-21 ",.02)
 ;;68115-0051-21
 ;;9002226.02101,"622,68115-0051-30 ",.01)
 ;;68115-0051-30
 ;;9002226.02101,"622,68115-0051-30 ",.02)
 ;;68115-0051-30
 ;;9002226.02101,"622,68115-0108-30 ",.01)
 ;;68115-0108-30
 ;;9002226.02101,"622,68115-0108-30 ",.02)
 ;;68115-0108-30
 ;;9002226.02101,"622,68115-0109-30 ",.01)
 ;;68115-0109-30
 ;;9002226.02101,"622,68115-0109-30 ",.02)
 ;;68115-0109-30
 ;;9002226.02101,"622,68115-0110-28 ",.01)
 ;;68115-0110-28
 ;;9002226.02101,"622,68115-0110-28 ",.02)
 ;;68115-0110-28
 ;;9002226.02101,"622,68115-0273-14 ",.01)
 ;;68115-0273-14
 ;;9002226.02101,"622,68115-0273-14 ",.02)
 ;;68115-0273-14
 ;;9002226.02101,"622,68115-0273-21 ",.01)
 ;;68115-0273-21
 ;;9002226.02101,"622,68115-0273-21 ",.02)
 ;;68115-0273-21
 ;;9002226.02101,"622,68115-0277-14 ",.01)
 ;;68115-0277-14
 ;;9002226.02101,"622,68115-0277-14 ",.02)
 ;;68115-0277-14
 ;;9002226.02101,"622,68115-0277-30 ",.01)
 ;;68115-0277-30
 ;;9002226.02101,"622,68115-0277-30 ",.02)
 ;;68115-0277-30
 ;;9002226.02101,"622,68115-0278-14 ",.01)
 ;;68115-0278-14
 ;;9002226.02101,"622,68115-0278-14 ",.02)
 ;;68115-0278-14
 ;;9002226.02101,"622,68115-0278-30 ",.01)
 ;;68115-0278-30
 ;;9002226.02101,"622,68115-0278-30 ",.02)
 ;;68115-0278-30
 ;;9002226.02101,"622,68115-0279-00 ",.01)
 ;;68115-0279-00
 ;;9002226.02101,"622,68115-0279-00 ",.02)
 ;;68115-0279-00
 ;;9002226.02101,"622,68115-0279-30 ",.01)
 ;;68115-0279-30
 ;;9002226.02101,"622,68115-0279-30 ",.02)
 ;;68115-0279-30
 ;;9002226.02101,"622,68115-0280-30 ",.01)
 ;;68115-0280-30
 ;;9002226.02101,"622,68115-0280-30 ",.02)
 ;;68115-0280-30
 ;;9002226.02101,"622,68115-0757-00 ",.01)
 ;;68115-0757-00
 ;;9002226.02101,"622,68115-0757-00 ",.02)
 ;;68115-0757-00
 ;;9002226.02101,"622,68188-0132-01 ",.01)
 ;;68188-0132-01
 ;;9002226.02101,"622,68188-0132-01 ",.02)
 ;;68188-0132-01
 ;;9002226.02101,"622,68188-0135-01 ",.01)
 ;;68188-0135-01
 ;;9002226.02101,"622,68188-0135-01 ",.02)
 ;;68188-0135-01
 ;;9002226.02101,"622,68188-0137-01 ",.01)
 ;;68188-0137-01
 ;;9002226.02101,"622,68188-0137-01 ",.02)
 ;;68188-0137-01
 ;;9002226.02101,"622,68188-0881-50 ",.01)
 ;;68188-0881-50
 ;;9002226.02101,"622,68188-0881-50 ",.02)
 ;;68188-0881-50
 ;;9002226.02101,"622,68188-0882-50 ",.01)
 ;;68188-0882-50
 ;;9002226.02101,"622,68188-0882-50 ",.02)
 ;;68188-0882-50