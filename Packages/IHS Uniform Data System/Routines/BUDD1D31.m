BUDD1D31 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON NOV 30, 2016 ;
 ;;11.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 18, 2017;Build 66
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1078,68084-0327-01 ",.03)
 ;;30
 ;;9002226.02101,"1078,68084-0327-11 ",.01)
 ;;68084-0327-11
 ;;9002226.02101,"1078,68084-0327-11 ",.02)
 ;;68084-0327-11
 ;;9002226.02101,"1078,68084-0327-11 ",.03)
 ;;30
 ;;9002226.02101,"1078,68084-0458-11 ",.01)
 ;;68084-0458-11
 ;;9002226.02101,"1078,68084-0458-11 ",.02)
 ;;68084-0458-11
 ;;9002226.02101,"1078,68084-0458-11 ",.03)
 ;;30
 ;;9002226.02101,"1078,68084-0458-21 ",.01)
 ;;68084-0458-21
 ;;9002226.02101,"1078,68084-0458-21 ",.02)
 ;;68084-0458-21
 ;;9002226.02101,"1078,68084-0458-21 ",.03)
 ;;30
 ;;9002226.02101,"1078,68084-0459-11 ",.01)
 ;;68084-0459-11
 ;;9002226.02101,"1078,68084-0459-11 ",.02)
 ;;68084-0459-11
 ;;9002226.02101,"1078,68084-0459-11 ",.03)
 ;;30
 ;;9002226.02101,"1078,68084-0459-21 ",.01)
 ;;68084-0459-21
 ;;9002226.02101,"1078,68084-0459-21 ",.02)
 ;;68084-0459-21
 ;;9002226.02101,"1078,68084-0459-21 ",.03)
 ;;30
 ;;9002226.02101,"1078,68084-0629-01 ",.01)
 ;;68084-0629-01
 ;;9002226.02101,"1078,68084-0629-01 ",.02)
 ;;68084-0629-01
 ;;9002226.02101,"1078,68084-0629-01 ",.03)
 ;;30
 ;;9002226.02101,"1078,68084-0629-11 ",.01)
 ;;68084-0629-11
 ;;9002226.02101,"1078,68084-0629-11 ",.02)
 ;;68084-0629-11
 ;;9002226.02101,"1078,68084-0629-11 ",.03)
 ;;30
 ;;9002226.02101,"1078,68084-0649-01 ",.01)
 ;;68084-0649-01
 ;;9002226.02101,"1078,68084-0649-01 ",.02)
 ;;68084-0649-01
 ;;9002226.02101,"1078,68084-0649-01 ",.03)
 ;;30
 ;;9002226.02101,"1078,68084-0745-25 ",.01)
 ;;68084-0745-25
 ;;9002226.02101,"1078,68084-0745-25 ",.02)
 ;;68084-0745-25
 ;;9002226.02101,"1078,68084-0745-25 ",.03)
 ;;30
 ;;9002226.02101,"1078,68084-0788-21 ",.01)
 ;;68084-0788-21
 ;;9002226.02101,"1078,68084-0788-21 ",.02)
 ;;68084-0788-21
 ;;9002226.02101,"1078,68084-0788-21 ",.03)
 ;;30
 ;;9002226.02101,"1078,68084-0807-01 ",.01)
 ;;68084-0807-01
 ;;9002226.02101,"1078,68084-0807-01 ",.02)
 ;;68084-0807-01
 ;;9002226.02101,"1078,68084-0807-01 ",.03)
 ;;30
 ;;9002226.02101,"1078,68084-0878-01 ",.01)
 ;;68084-0878-01
 ;;9002226.02101,"1078,68084-0878-01 ",.02)
 ;;68084-0878-01
 ;;9002226.02101,"1078,68084-0878-01 ",.03)
 ;;30
 ;;9002226.02101,"1078,68084-0878-11 ",.01)
 ;;68084-0878-11
 ;;9002226.02101,"1078,68084-0878-11 ",.02)
 ;;68084-0878-11
 ;;9002226.02101,"1078,68084-0878-11 ",.03)
 ;;30
 ;;9002226.02101,"1078,68084-0954-25 ",.01)
 ;;68084-0954-25
 ;;9002226.02101,"1078,68084-0954-25 ",.02)
 ;;68084-0954-25
 ;;9002226.02101,"1078,68084-0954-25 ",.03)
 ;;30
 ;;9002226.02101,"1078,68084-0954-95 ",.01)
 ;;68084-0954-95
 ;;9002226.02101,"1078,68084-0954-95 ",.02)
 ;;68084-0954-95
 ;;9002226.02101,"1078,68084-0954-95 ",.03)
 ;;30
 ;;9002226.02101,"1078,68084-0967-25 ",.01)
 ;;68084-0967-25
 ;;9002226.02101,"1078,68084-0967-25 ",.02)
 ;;68084-0967-25
 ;;9002226.02101,"1078,68084-0967-25 ",.03)
 ;;30
 ;;9002226.02101,"1078,68084-0967-95 ",.01)
 ;;68084-0967-95
 ;;9002226.02101,"1078,68084-0967-95 ",.02)
 ;;68084-0967-95
 ;;9002226.02101,"1078,68084-0967-95 ",.03)
 ;;30
 ;;9002226.02101,"1078,68084063001 ",.01)
 ;;68084063001
 ;;9002226.02101,"1078,68084063001 ",.02)
 ;;68084063001
 ;;9002226.02101,"1078,68084063001 ",.03)
 ;;30
 ;;9002226.02101,"1078,68084063011 ",.01)
 ;;68084063011
 ;;9002226.02101,"1078,68084063011 ",.02)
 ;;68084063011
 ;;9002226.02101,"1078,68084063011 ",.03)
 ;;30
 ;;9002226.02101,"1078,68084063101 ",.01)
 ;;68084063101
 ;;9002226.02101,"1078,68084063101 ",.02)
 ;;68084063101
 ;;9002226.02101,"1078,68084063101 ",.03)
 ;;30
 ;;9002226.02101,"1078,68084063111 ",.01)
 ;;68084063111
 ;;9002226.02101,"1078,68084063111 ",.02)
 ;;68084063111
 ;;9002226.02101,"1078,68084063111 ",.03)
 ;;30
 ;;9002226.02101,"1078,68084065201 ",.01)
 ;;68084065201
 ;;9002226.02101,"1078,68084065201 ",.02)
 ;;68084065201
 ;;9002226.02101,"1078,68084065201 ",.03)
 ;;30
 ;;9002226.02101,"1078,68084066001 ",.01)
 ;;68084066001
 ;;9002226.02101,"1078,68084066001 ",.02)
 ;;68084066001
 ;;9002226.02101,"1078,68084066001 ",.03)
 ;;30
 ;;9002226.02101,"1078,68115-0154-90 ",.01)
 ;;68115-0154-90
 ;;9002226.02101,"1078,68115-0154-90 ",.02)
 ;;68115-0154-90
 ;;9002226.02101,"1078,68115-0154-90 ",.03)
 ;;30
 ;;9002226.02101,"1078,68115-0156-30 ",.01)
 ;;68115-0156-30
 ;;9002226.02101,"1078,68115-0156-30 ",.02)
 ;;68115-0156-30
 ;;9002226.02101,"1078,68115-0156-30 ",.03)
 ;;30
 ;;9002226.02101,"1078,68115-0157-30 ",.01)
 ;;68115-0157-30
 ;;9002226.02101,"1078,68115-0157-30 ",.02)
 ;;68115-0157-30
 ;;9002226.02101,"1078,68115-0157-30 ",.03)
 ;;30
 ;;9002226.02101,"1078,68115-0158-30 ",.01)
 ;;68115-0158-30
 ;;9002226.02101,"1078,68115-0158-30 ",.02)
 ;;68115-0158-30
 ;;9002226.02101,"1078,68115-0158-30 ",.03)
 ;;30
 ;;9002226.02101,"1078,68115-0159-30 ",.01)
 ;;68115-0159-30
 ;;9002226.02101,"1078,68115-0159-30 ",.02)
 ;;68115-0159-30
 ;;9002226.02101,"1078,68115-0159-30 ",.03)
 ;;30
 ;;9002226.02101,"1078,68115-0159-60 ",.01)
 ;;68115-0159-60
 ;;9002226.02101,"1078,68115-0159-60 ",.02)
 ;;68115-0159-60
 ;;9002226.02101,"1078,68115-0159-60 ",.03)
 ;;30
 ;;9002226.02101,"1078,68115-0160-90 ",.01)
 ;;68115-0160-90
 ;;9002226.02101,"1078,68115-0160-90 ",.02)
 ;;68115-0160-90
 ;;9002226.02101,"1078,68115-0160-90 ",.03)
 ;;30
 ;;9002226.02101,"1078,68115-0161-90 ",.01)
 ;;68115-0161-90
 ;;9002226.02101,"1078,68115-0161-90 ",.02)
 ;;68115-0161-90
 ;;9002226.02101,"1078,68115-0161-90 ",.03)
 ;;30
 ;;9002226.02101,"1078,68645-0150-54 ",.01)
 ;;68645-0150-54
 ;;9002226.02101,"1078,68645-0150-54 ",.02)
 ;;68645-0150-54
 ;;9002226.02101,"1078,68645-0150-54 ",.03)
 ;;30
 ;;9002226.02101,"1078,68645-0151-59 ",.01)
 ;;68645-0151-59
 ;;9002226.02101,"1078,68645-0151-59 ",.02)
 ;;68645-0151-59
 ;;9002226.02101,"1078,68645-0151-59 ",.03)
 ;;30
 ;;9002226.02101,"1078,68645-0210-54 ",.01)
 ;;68645-0210-54
 ;;9002226.02101,"1078,68645-0210-54 ",.02)
 ;;68645-0210-54
 ;;9002226.02101,"1078,68645-0210-54 ",.03)
 ;;30
 ;;9002226.02101,"1078,68645-0211-54 ",.01)
 ;;68645-0211-54
 ;;9002226.02101,"1078,68645-0211-54 ",.02)
 ;;68645-0211-54
 ;;9002226.02101,"1078,68645-0211-54 ",.03)
 ;;30
 ;;9002226.02101,"1078,69543-0123-10 ",.01)
 ;;69543-0123-10
 ;;9002226.02101,"1078,69543-0123-10 ",.02)
 ;;69543-0123-10
 ;;9002226.02101,"1078,69543-0123-10 ",.03)
 ;;30
 ;;9002226.02101,"1078,69543-0124-10 ",.01)
 ;;69543-0124-10
 ;;9002226.02101,"1078,69543-0124-10 ",.02)
 ;;69543-0124-10
 ;;9002226.02101,"1078,69543-0124-10 ",.03)
 ;;30
 ;;9002226.02101,"1078,69543-0125-10 ",.01)
 ;;69543-0125-10
 ;;9002226.02101,"1078,69543-0125-10 ",.02)
 ;;69543-0125-10
 ;;9002226.02101,"1078,69543-0125-10 ",.03)
 ;;30
 ;;9002226.02101,"1078,76439-0120-10 ",.01)
 ;;76439-0120-10
 ;;9002226.02101,"1078,76439-0120-10 ",.02)
 ;;76439-0120-10
 ;;9002226.02101,"1078,76439-0120-10 ",.03)
 ;;30
 ;;9002226.02101,"1078,76439-0120-11 ",.01)
 ;;76439-0120-11
 ;;9002226.02101,"1078,76439-0120-11 ",.02)
 ;;76439-0120-11
 ;;9002226.02101,"1078,76439-0120-11 ",.03)
 ;;30
 ;;9002226.02101,"1078,76439-0121-10 ",.01)
 ;;76439-0121-10
 ;;9002226.02101,"1078,76439-0121-10 ",.02)
 ;;76439-0121-10
 ;;9002226.02101,"1078,76439-0121-10 ",.03)
 ;;30
 ;;9002226.02101,"1078,76439-0121-11 ",.01)
 ;;76439-0121-11
 ;;9002226.02101,"1078,76439-0121-11 ",.02)
 ;;76439-0121-11
 ;;9002226.02101,"1078,76439-0121-11 ",.03)
 ;;30
 ;;9002226.02101,"1078,76439-0122-10 ",.01)
 ;;76439-0122-10
 ;;9002226.02101,"1078,76439-0122-10 ",.02)
 ;;76439-0122-10
 ;;9002226.02101,"1078,76439-0122-10 ",.03)
 ;;30
 ;;9002226.02101,"1078,76439-0122-11 ",.01)
 ;;76439-0122-11
 ;;9002226.02101,"1078,76439-0122-11 ",.02)
 ;;76439-0122-11
 ;;9002226.02101,"1078,76439-0122-11 ",.03)
 ;;30
 ;;9002226.02101,"1078,76439-0123-10 ",.01)
 ;;76439-0123-10
 ;;9002226.02101,"1078,76439-0123-10 ",.02)
 ;;76439-0123-10
 ;;9002226.02101,"1078,76439-0123-10 ",.03)
 ;;30
 ;;9002226.02101,"1078,76439-0124-10 ",.01)
 ;;76439-0124-10
 ;;9002226.02101,"1078,76439-0124-10 ",.02)
 ;;76439-0124-10
 ;;9002226.02101,"1078,76439-0124-10 ",.03)
 ;;30
 ;;9002226.02101,"1078,76439-0125-10 ",.01)
 ;;76439-0125-10
 ;;9002226.02101,"1078,76439-0125-10 ",.02)
 ;;76439-0125-10
 ;;9002226.02101,"1078,76439-0125-10 ",.03)
 ;;30