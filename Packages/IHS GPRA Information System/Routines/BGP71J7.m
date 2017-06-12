BGP71J7 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1795,00641-6083-25 ",.01)
 ;;00641-6083-25
 ;;9002226.02101,"1795,00641-6083-25 ",.02)
 ;;00641-6083-25
 ;;9002226.02101,"1795,00641-6084-01 ",.01)
 ;;00641-6084-01
 ;;9002226.02101,"1795,00641-6084-01 ",.02)
 ;;00641-6084-01
 ;;9002226.02101,"1795,00641-6084-25 ",.01)
 ;;00641-6084-25
 ;;9002226.02101,"1795,00641-6084-25 ",.02)
 ;;00641-6084-25
 ;;9002226.02101,"1795,00641-6085-01 ",.01)
 ;;00641-6085-01
 ;;9002226.02101,"1795,00641-6085-01 ",.02)
 ;;00641-6085-01
 ;;9002226.02101,"1795,00641-6085-25 ",.01)
 ;;00641-6085-25
 ;;9002226.02101,"1795,00641-6085-25 ",.02)
 ;;00641-6085-25
 ;;9002226.02101,"1795,00641-6099-01 ",.01)
 ;;00641-6099-01
 ;;9002226.02101,"1795,00641-6099-01 ",.02)
 ;;00641-6099-01
 ;;9002226.02101,"1795,00641-6099-25 ",.01)
 ;;00641-6099-25
 ;;9002226.02101,"1795,00641-6099-25 ",.02)
 ;;00641-6099-25
 ;;9002226.02101,"1795,00703-2191-01 ",.01)
 ;;00703-2191-01
 ;;9002226.02101,"1795,00703-2191-01 ",.02)
 ;;00703-2191-01
 ;;9002226.02101,"1795,00703-2191-04 ",.01)
 ;;00703-2191-04
 ;;9002226.02101,"1795,00703-2191-04 ",.02)
 ;;00703-2191-04
 ;;9002226.02101,"1795,00703-2201-01 ",.01)
 ;;00703-2201-01
 ;;9002226.02101,"1795,00703-2201-01 ",.02)
 ;;00703-2201-01
 ;;9002226.02101,"1795,00703-2201-04 ",.01)
 ;;00703-2201-04
 ;;9002226.02101,"1795,00703-2201-04 ",.02)
 ;;00703-2201-04
 ;;9002226.02101,"1795,00713-0132-12 ",.01)
 ;;00713-0132-12
 ;;9002226.02101,"1795,00713-0132-12 ",.02)
 ;;00713-0132-12
 ;;9002226.02101,"1795,00713-0526-06 ",.01)
 ;;00713-0526-06
 ;;9002226.02101,"1795,00713-0526-06 ",.02)
 ;;00713-0526-06
 ;;9002226.02101,"1795,00713-0526-10 ",.01)
 ;;00713-0526-10
 ;;9002226.02101,"1795,00713-0526-10 ",.02)
 ;;00713-0526-10
 ;;9002226.02101,"1795,00713-0526-12 ",.01)
 ;;00713-0526-12
 ;;9002226.02101,"1795,00713-0526-12 ",.02)
 ;;00713-0526-12
 ;;9002226.02101,"1795,00713-0536-06 ",.01)
 ;;00713-0536-06
 ;;9002226.02101,"1795,00713-0536-06 ",.02)
 ;;00713-0536-06
 ;;9002226.02101,"1795,00713-0536-12 ",.01)
 ;;00713-0536-12
 ;;9002226.02101,"1795,00713-0536-12 ",.02)
 ;;00713-0536-12
 ;;9002226.02101,"1795,00781-1359-01 ",.01)
 ;;00781-1359-01
 ;;9002226.02101,"1795,00781-1359-01 ",.02)
 ;;00781-1359-01
 ;;9002226.02101,"1795,00781-1830-01 ",.01)
 ;;00781-1830-01
 ;;9002226.02101,"1795,00781-1830-01 ",.02)
 ;;00781-1830-01
 ;;9002226.02101,"1795,00781-1830-10 ",.01)
 ;;00781-1830-10
 ;;9002226.02101,"1795,00781-1830-10 ",.02)
 ;;00781-1830-10
 ;;9002226.02101,"1795,00781-1832-01 ",.01)
 ;;00781-1832-01
 ;;9002226.02101,"1795,00781-1832-01 ",.02)
 ;;00781-1832-01
 ;;9002226.02101,"1795,00832-1080-00 ",.01)
 ;;00832-1080-00
 ;;9002226.02101,"1795,00832-1080-00 ",.02)
 ;;00832-1080-00
 ;;9002226.02101,"1795,00832-1081-00 ",.01)
 ;;00832-1081-00
 ;;9002226.02101,"1795,00832-1081-00 ",.02)
 ;;00832-1081-00
 ;;9002226.02101,"1795,00832-1081-10 ",.01)
 ;;00832-1081-10
 ;;9002226.02101,"1795,00832-1081-10 ",.02)
 ;;00832-1081-10
 ;;9002226.02101,"1795,00832-1082-00 ",.01)
 ;;00832-1082-00
 ;;9002226.02101,"1795,00832-1082-00 ",.02)
 ;;00832-1082-00
 ;;9002226.02101,"1795,00832-1082-10 ",.01)
 ;;00832-1082-10
 ;;9002226.02101,"1795,00832-1082-10 ",.02)
 ;;00832-1082-10
 ;;9002226.02101,"1795,00904-0357-40 ",.01)
 ;;00904-0357-40
 ;;9002226.02101,"1795,00904-0357-40 ",.02)
 ;;00904-0357-40
 ;;9002226.02101,"1795,00904-0357-60 ",.01)
 ;;00904-0357-60
 ;;9002226.02101,"1795,00904-0357-60 ",.02)
 ;;00904-0357-60
 ;;9002226.02101,"1795,00904-0358-40 ",.01)
 ;;00904-0358-40
 ;;9002226.02101,"1795,00904-0358-40 ",.02)
 ;;00904-0358-40
 ;;9002226.02101,"1795,00904-0358-60 ",.01)
 ;;00904-0358-60
 ;;9002226.02101,"1795,00904-0358-60 ",.02)
 ;;00904-0358-60
 ;;9002226.02101,"1795,00904-0358-80 ",.01)
 ;;00904-0358-80
 ;;9002226.02101,"1795,00904-0358-80 ",.02)
 ;;00904-0358-80
 ;;9002226.02101,"1795,00904-0359-60 ",.01)
 ;;00904-0359-60
 ;;9002226.02101,"1795,00904-0359-60 ",.02)
 ;;00904-0359-60
 ;;9002226.02101,"1795,00904-1055-61 ",.01)
 ;;00904-1055-61
 ;;9002226.02101,"1795,00904-1055-61 ",.02)
 ;;00904-1055-61
 ;;9002226.02101,"1795,00904-1056-61 ",.01)
 ;;00904-1056-61
 ;;9002226.02101,"1795,00904-1056-61 ",.02)
 ;;00904-1056-61
 ;;9002226.02101,"1795,00904-1056-80 ",.01)
 ;;00904-1056-80
 ;;9002226.02101,"1795,00904-1056-80 ",.02)
 ;;00904-1056-80
 ;;9002226.02101,"1795,00904-1057-61 ",.01)
 ;;00904-1057-61
 ;;9002226.02101,"1795,00904-1057-61 ",.02)
 ;;00904-1057-61
 ;;9002226.02101,"1795,00904-1057-80 ",.01)
 ;;00904-1057-80
 ;;9002226.02101,"1795,00904-1057-80 ",.02)
 ;;00904-1057-80
 ;;9002226.02101,"1795,00904-5840-61 ",.01)
 ;;00904-5840-61
 ;;9002226.02101,"1795,00904-5840-61 ",.02)
 ;;00904-5840-61
 ;;9002226.02101,"1795,00904-6252-80 ",.01)
 ;;00904-6252-80
 ;;9002226.02101,"1795,00904-6252-80 ",.02)
 ;;00904-6252-80
 ;;9002226.02101,"1795,00904-6461-61 ",.01)
 ;;00904-6461-61
 ;;9002226.02101,"1795,00904-6461-61 ",.02)
 ;;00904-6461-61
 ;;9002226.02101,"1795,10135-0495-01 ",.01)
 ;;10135-0495-01
 ;;9002226.02101,"1795,10135-0495-01 ",.02)
 ;;10135-0495-01
 ;;9002226.02101,"1795,10135-0495-10 ",.01)
 ;;10135-0495-10
 ;;9002226.02101,"1795,10135-0495-10 ",.02)
 ;;10135-0495-10
 ;;9002226.02101,"1795,10135-0496-01 ",.01)
 ;;10135-0496-01
 ;;9002226.02101,"1795,10135-0496-01 ",.02)
 ;;10135-0496-01
 ;;9002226.02101,"1795,10135-0503-05 ",.01)
 ;;10135-0503-05
 ;;9002226.02101,"1795,10135-0503-05 ",.02)
 ;;10135-0503-05
 ;;9002226.02101,"1795,10135-0503-10 ",.01)
 ;;10135-0503-10
 ;;9002226.02101,"1795,10135-0503-10 ",.02)
 ;;10135-0503-10
 ;;9002226.02101,"1795,10135-0504-01 ",.01)
 ;;10135-0504-01
 ;;9002226.02101,"1795,10135-0504-01 ",.02)
 ;;10135-0504-01
 ;;9002226.02101,"1795,10135-0504-05 ",.01)
 ;;10135-0504-05
 ;;9002226.02101,"1795,10135-0504-05 ",.02)
 ;;10135-0504-05
 ;;9002226.02101,"1795,10135-0504-10 ",.01)
 ;;10135-0504-10
 ;;9002226.02101,"1795,10135-0504-10 ",.02)
 ;;10135-0504-10
 ;;9002226.02101,"1795,10135-0505-01 ",.01)
 ;;10135-0505-01
 ;;9002226.02101,"1795,10135-0505-01 ",.02)
 ;;10135-0505-01
 ;;9002226.02101,"1795,10135-0505-05 ",.01)
 ;;10135-0505-05
 ;;9002226.02101,"1795,10135-0505-05 ",.02)
 ;;10135-0505-05
 ;;9002226.02101,"1795,10135-0505-10 ",.01)
 ;;10135-0505-10
 ;;9002226.02101,"1795,10135-0505-10 ",.02)
 ;;10135-0505-10
 ;;9002226.02101,"1795,10135-0514-01 ",.01)
 ;;10135-0514-01
 ;;9002226.02101,"1795,10135-0514-01 ",.02)
 ;;10135-0514-01
 ;;9002226.02101,"1795,10135-0606-01 ",.01)
 ;;10135-0606-01
 ;;9002226.02101,"1795,10135-0606-01 ",.02)
 ;;10135-0606-01
 ;;9002226.02101,"1795,10135-0606-10 ",.01)
 ;;10135-0606-10
 ;;9002226.02101,"1795,10135-0606-10 ",.02)
 ;;10135-0606-10
 ;;9002226.02101,"1795,10135-0607-01 ",.01)
 ;;10135-0607-01
 ;;9002226.02101,"1795,10135-0607-01 ",.02)
 ;;10135-0607-01
 ;;9002226.02101,"1795,10135-0607-10 ",.01)
 ;;10135-0607-10
 ;;9002226.02101,"1795,10135-0607-10 ",.02)
 ;;10135-0607-10
 ;;9002226.02101,"1795,10135-0608-01 ",.01)
 ;;10135-0608-01
 ;;9002226.02101,"1795,10135-0608-01 ",.02)
 ;;10135-0608-01
 ;;9002226.02101,"1795,10135-0608-10 ",.01)
 ;;10135-0608-10
 ;;9002226.02101,"1795,10135-0608-10 ",.02)
 ;;10135-0608-10
 ;;9002226.02101,"1795,10267-1311-01 ",.01)
 ;;10267-1311-01
 ;;9002226.02101,"1795,10267-1311-01 ",.02)
 ;;10267-1311-01
 ;;9002226.02101,"1795,10544-0017-20 ",.01)
 ;;10544-0017-20
 ;;9002226.02101,"1795,10544-0017-20 ",.02)
 ;;10544-0017-20
 ;;9002226.02101,"1795,10544-0017-30 ",.01)
 ;;10544-0017-30
 ;;9002226.02101,"1795,10544-0017-30 ",.02)
 ;;10544-0017-30
 ;;9002226.02101,"1795,10544-0043-15 ",.01)
 ;;10544-0043-15
 ;;9002226.02101,"1795,10544-0043-15 ",.02)
 ;;10544-0043-15
 ;;9002226.02101,"1795,10544-0051-10 ",.01)
 ;;10544-0051-10
 ;;9002226.02101,"1795,10544-0051-10 ",.02)
 ;;10544-0051-10
 ;;9002226.02101,"1795,10544-0051-20 ",.01)
 ;;10544-0051-20
 ;;9002226.02101,"1795,10544-0051-20 ",.02)
 ;;10544-0051-20
 ;;9002226.02101,"1795,10544-0051-30 ",.01)
 ;;10544-0051-30
 ;;9002226.02101,"1795,10544-0051-30 ",.02)
 ;;10544-0051-30
 ;;9002226.02101,"1795,10544-0209-15 ",.01)
 ;;10544-0209-15
 ;;9002226.02101,"1795,10544-0209-15 ",.02)
 ;;10544-0209-15
 ;;9002226.02101,"1795,10544-0210-20 ",.01)
 ;;10544-0210-20
 ;;9002226.02101,"1795,10544-0210-20 ",.02)
 ;;10544-0210-20
 ;;9002226.02101,"1795,10544-0226-30 ",.01)
 ;;10544-0226-30
 ;;9002226.02101,"1795,10544-0226-30 ",.02)
 ;;10544-0226-30
 ;;9002226.02101,"1795,10544-0227-30 ",.01)
 ;;10544-0227-30
 ;;9002226.02101,"1795,10544-0227-30 ",.02)
 ;;10544-0227-30
 ;;9002226.02101,"1795,10544-0512-10 ",.01)
 ;;10544-0512-10
 ;;9002226.02101,"1795,10544-0512-10 ",.02)
 ;;10544-0512-10
 ;;9002226.02101,"1795,10544-0512-20 ",.01)
 ;;10544-0512-20
 ;;9002226.02101,"1795,10544-0512-20 ",.02)
 ;;10544-0512-20
 ;;9002226.02101,"1795,10544-0618-10 ",.01)
 ;;10544-0618-10
 ;;9002226.02101,"1795,10544-0618-10 ",.02)
 ;;10544-0618-10
 ;;9002226.02101,"1795,10544-0618-20 ",.01)
 ;;10544-0618-20
 ;;9002226.02101,"1795,10544-0618-20 ",.02)
 ;;10544-0618-20
 ;;9002226.02101,"1795,10544-0941-12 ",.01)
 ;;10544-0941-12
 ;;9002226.02101,"1795,10544-0941-12 ",.02)
 ;;10544-0941-12
 ;;9002226.02101,"1795,10702-0002-01 ",.01)
 ;;10702-0002-01
 ;;9002226.02101,"1795,10702-0002-01 ",.02)
 ;;10702-0002-01
 ;;9002226.02101,"1795,10702-0003-01 ",.01)
 ;;10702-0003-01
 ;;9002226.02101,"1795,10702-0003-01 ",.02)
 ;;10702-0003-01
 ;;9002226.02101,"1795,10702-0003-10 ",.01)
 ;;10702-0003-10
 ;;9002226.02101,"1795,10702-0003-10 ",.02)
 ;;10702-0003-10
 ;;9002226.02101,"1795,10702-0004-01 ",.01)
 ;;10702-0004-01
 ;;9002226.02101,"1795,10702-0004-01 ",.02)
 ;;10702-0004-01
 ;;9002226.02101,"1795,10702-0010-01 ",.01)
 ;;10702-0010-01
 ;;9002226.02101,"1795,10702-0010-01 ",.02)
 ;;10702-0010-01
 ;;9002226.02101,"1795,10702-0010-10 ",.01)
 ;;10702-0010-10
 ;;9002226.02101,"1795,10702-0010-10 ",.02)
 ;;10702-0010-10
 ;;9002226.02101,"1795,10702-0010-50 ",.01)
 ;;10702-0010-50
 ;;9002226.02101,"1795,10702-0010-50 ",.02)
 ;;10702-0010-50
 ;;9002226.02101,"1795,10702-0011-01 ",.01)
 ;;10702-0011-01
 ;;9002226.02101,"1795,10702-0011-01 ",.02)
 ;;10702-0011-01
 ;;9002226.02101,"1795,10702-0011-10 ",.01)
 ;;10702-0011-10
 ;;9002226.02101,"1795,10702-0011-10 ",.02)
 ;;10702-0011-10
 ;;9002226.02101,"1795,10702-0011-50 ",.01)
 ;;10702-0011-50
 ;;9002226.02101,"1795,10702-0011-50 ",.02)
 ;;10702-0011-50
 ;;9002226.02101,"1795,10702-0012-01 ",.01)
 ;;10702-0012-01
 ;;9002226.02101,"1795,10702-0012-01 ",.02)
 ;;10702-0012-01
 ;;9002226.02101,"1795,10702-0012-10 ",.01)
 ;;10702-0012-10
 ;;9002226.02101,"1795,10702-0012-10 ",.02)
 ;;10702-0012-10
 ;;9002226.02101,"1795,10702-0012-50 ",.01)
 ;;10702-0012-50
 ;;9002226.02101,"1795,10702-0012-50 ",.02)
 ;;10702-0012-50
 ;;9002226.02101,"1795,10702-0052-16 ",.01)
 ;;10702-0052-16
 ;;9002226.02101,"1795,10702-0052-16 ",.02)
 ;;10702-0052-16
 ;;9002226.02101,"1795,11534-0167-01 ",.01)
 ;;11534-0167-01
 ;;9002226.02101,"1795,11534-0167-01 ",.02)
 ;;11534-0167-01
 ;;9002226.02101,"1795,11534-0167-03 ",.01)
 ;;11534-0167-03
 ;;9002226.02101,"1795,11534-0167-03 ",.02)
 ;;11534-0167-03
 ;;9002226.02101,"1795,11534-0168-01 ",.01)
 ;;11534-0168-01
 ;;9002226.02101,"1795,11534-0168-01 ",.02)
 ;;11534-0168-01
 ;;9002226.02101,"1795,11534-0168-03 ",.01)
 ;;11534-0168-03
 ;;9002226.02101,"1795,11534-0168-03 ",.02)
 ;;11534-0168-03
 ;;9002226.02101,"1795,11534-0169-01 ",.01)
 ;;11534-0169-01
 ;;9002226.02101,"1795,11534-0169-01 ",.02)
 ;;11534-0169-01
 ;;9002226.02101,"1795,11534-0169-03 ",.01)
 ;;11534-0169-03
 ;;9002226.02101,"1795,11534-0169-03 ",.02)
 ;;11534-0169-03
 ;;9002226.02101,"1795,12539-0779-16 ",.01)
 ;;12539-0779-16