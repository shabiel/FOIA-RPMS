BGP44O18 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON SEP 11, 2013;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1729,00781-5806-10 ",.02)
 ;;00781-5806-10
 ;;9002226.02101,"1729,00781-5806-31 ",.01)
 ;;00781-5806-31
 ;;9002226.02101,"1729,00781-5806-31 ",.02)
 ;;00781-5806-31
 ;;9002226.02101,"1729,00781-5806-92 ",.01)
 ;;00781-5806-92
 ;;9002226.02101,"1729,00781-5806-92 ",.02)
 ;;00781-5806-92
 ;;9002226.02101,"1729,00781-5807-10 ",.01)
 ;;00781-5807-10
 ;;9002226.02101,"1729,00781-5807-10 ",.02)
 ;;00781-5807-10
 ;;9002226.02101,"1729,00781-5807-31 ",.01)
 ;;00781-5807-31
 ;;9002226.02101,"1729,00781-5807-31 ",.02)
 ;;00781-5807-31
 ;;9002226.02101,"1729,00781-5807-92 ",.01)
 ;;00781-5807-92
 ;;9002226.02101,"1729,00781-5807-92 ",.02)
 ;;00781-5807-92
 ;;9002226.02101,"1729,00781-5816-10 ",.01)
 ;;00781-5816-10
 ;;9002226.02101,"1729,00781-5816-10 ",.02)
 ;;00781-5816-10
 ;;9002226.02101,"1729,00781-5816-31 ",.01)
 ;;00781-5816-31
 ;;9002226.02101,"1729,00781-5816-31 ",.02)
 ;;00781-5816-31
 ;;9002226.02101,"1729,00781-5816-92 ",.01)
 ;;00781-5816-92
 ;;9002226.02101,"1729,00781-5816-92 ",.02)
 ;;00781-5816-92
 ;;9002226.02101,"1729,00781-5817-10 ",.01)
 ;;00781-5817-10
 ;;9002226.02101,"1729,00781-5817-10 ",.02)
 ;;00781-5817-10
 ;;9002226.02101,"1729,00781-5817-31 ",.01)
 ;;00781-5817-31
 ;;9002226.02101,"1729,00781-5817-31 ",.02)
 ;;00781-5817-31
 ;;9002226.02101,"1729,00781-5817-92 ",.01)
 ;;00781-5817-92
 ;;9002226.02101,"1729,00781-5817-92 ",.02)
 ;;00781-5817-92
 ;;9002226.02101,"1729,00781-5818-10 ",.01)
 ;;00781-5818-10
 ;;9002226.02101,"1729,00781-5818-10 ",.02)
 ;;00781-5818-10
 ;;9002226.02101,"1729,00781-5818-31 ",.01)
 ;;00781-5818-31
 ;;9002226.02101,"1729,00781-5818-31 ",.02)
 ;;00781-5818-31
 ;;9002226.02101,"1729,00781-5818-92 ",.01)
 ;;00781-5818-92
 ;;9002226.02101,"1729,00781-5818-92 ",.02)
 ;;00781-5818-92
 ;;9002226.02101,"1729,00781-5936-31 ",.01)
 ;;00781-5936-31
 ;;9002226.02101,"1729,00781-5936-31 ",.02)
 ;;00781-5936-31
 ;;9002226.02101,"1729,00781-5937-31 ",.01)
 ;;00781-5937-31
 ;;9002226.02101,"1729,00781-5937-31 ",.02)
 ;;00781-5937-31
 ;;9002226.02101,"1729,00781-5938-31 ",.01)
 ;;00781-5938-31
 ;;9002226.02101,"1729,00781-5938-31 ",.02)
 ;;00781-5938-31
 ;;9002226.02101,"1729,00781-5938-92 ",.01)
 ;;00781-5938-92
 ;;9002226.02101,"1729,00781-5938-92 ",.02)
 ;;00781-5938-92
 ;;9002226.02101,"1729,00781-5939-31 ",.01)
 ;;00781-5939-31
 ;;9002226.02101,"1729,00781-5939-31 ",.02)
 ;;00781-5939-31
 ;;9002226.02101,"1729,00781-5939-92 ",.01)
 ;;00781-5939-92
 ;;9002226.02101,"1729,00781-5939-92 ",.02)
 ;;00781-5939-92
 ;;9002226.02101,"1729,00781-5948-10 ",.01)
 ;;00781-5948-10
 ;;9002226.02101,"1729,00781-5948-10 ",.02)
 ;;00781-5948-10
 ;;9002226.02101,"1729,00781-5948-92 ",.01)
 ;;00781-5948-92
 ;;9002226.02101,"1729,00781-5948-92 ",.02)
 ;;00781-5948-92
 ;;9002226.02101,"1729,00781-5949-10 ",.01)
 ;;00781-5949-10
 ;;9002226.02101,"1729,00781-5949-10 ",.02)
 ;;00781-5949-10
 ;;9002226.02101,"1729,00781-5949-64 ",.01)
 ;;00781-5949-64
 ;;9002226.02101,"1729,00781-5949-64 ",.02)
 ;;00781-5949-64
 ;;9002226.02101,"1729,00781-5949-92 ",.01)
 ;;00781-5949-92
 ;;9002226.02101,"1729,00781-5949-92 ",.02)
 ;;00781-5949-92
 ;;9002226.02101,"1729,00781-5950-10 ",.01)
 ;;00781-5950-10
 ;;9002226.02101,"1729,00781-5950-10 ",.02)
 ;;00781-5950-10
 ;;9002226.02101,"1729,00781-5950-64 ",.01)
 ;;00781-5950-64
 ;;9002226.02101,"1729,00781-5950-64 ",.02)
 ;;00781-5950-64
 ;;9002226.02101,"1729,00781-5950-92 ",.01)
 ;;00781-5950-92
 ;;9002226.02101,"1729,00781-5950-92 ",.02)
 ;;00781-5950-92
 ;;9002226.02101,"1729,00781-5951-10 ",.01)
 ;;00781-5951-10
 ;;9002226.02101,"1729,00781-5951-10 ",.02)
 ;;00781-5951-10
 ;;9002226.02101,"1729,00781-5951-64 ",.01)
 ;;00781-5951-64
 ;;9002226.02101,"1729,00781-5951-64 ",.02)
 ;;00781-5951-64
 ;;9002226.02101,"1729,00781-5951-92 ",.01)
 ;;00781-5951-92
 ;;9002226.02101,"1729,00781-5951-92 ",.02)
 ;;00781-5951-92
 ;;9002226.02101,"1729,00781-5952-10 ",.01)
 ;;00781-5952-10
 ;;9002226.02101,"1729,00781-5952-10 ",.02)
 ;;00781-5952-10
 ;;9002226.02101,"1729,00781-5952-64 ",.01)
 ;;00781-5952-64
 ;;9002226.02101,"1729,00781-5952-64 ",.02)
 ;;00781-5952-64
 ;;9002226.02101,"1729,00781-5952-92 ",.01)
 ;;00781-5952-92
 ;;9002226.02101,"1729,00781-5952-92 ",.02)
 ;;00781-5952-92
 ;;9002226.02101,"1729,00904-5045-61 ",.01)
 ;;00904-5045-61
 ;;9002226.02101,"1729,00904-5045-61 ",.02)
 ;;00904-5045-61
 ;;9002226.02101,"1729,00904-5046-61 ",.01)
 ;;00904-5046-61
 ;;9002226.02101,"1729,00904-5046-61 ",.02)
 ;;00904-5046-61
 ;;9002226.02101,"1729,00904-5047-61 ",.01)
 ;;00904-5047-61
 ;;9002226.02101,"1729,00904-5047-61 ",.02)
 ;;00904-5047-61
 ;;9002226.02101,"1729,00904-5501-60 ",.01)
 ;;00904-5501-60
 ;;9002226.02101,"1729,00904-5501-60 ",.02)
 ;;00904-5501-60
 ;;9002226.02101,"1729,00904-5502-61 ",.01)
 ;;00904-5502-61
 ;;9002226.02101,"1729,00904-5502-61 ",.02)
 ;;00904-5502-61
 ;;9002226.02101,"1729,00904-5609-61 ",.01)
 ;;00904-5609-61
 ;;9002226.02101,"1729,00904-5609-61 ",.02)
 ;;00904-5609-61
 ;;9002226.02101,"1729,00904-5610-61 ",.01)
 ;;00904-5610-61
 ;;9002226.02101,"1729,00904-5610-61 ",.02)
 ;;00904-5610-61
 ;;9002226.02101,"1729,00904-5611-61 ",.01)
 ;;00904-5611-61
 ;;9002226.02101,"1729,00904-5611-61 ",.02)
 ;;00904-5611-61
 ;;9002226.02101,"1729,00904-5638-89 ",.01)
 ;;00904-5638-89
 ;;9002226.02101,"1729,00904-5638-89 ",.02)
 ;;00904-5638-89
 ;;9002226.02101,"1729,00904-5639-43 ",.01)
 ;;00904-5639-43
 ;;9002226.02101,"1729,00904-5639-43 ",.02)
 ;;00904-5639-43
 ;;9002226.02101,"1729,00904-5639-46 ",.01)
 ;;00904-5639-46
 ;;9002226.02101,"1729,00904-5639-46 ",.02)
 ;;00904-5639-46
 ;;9002226.02101,"1729,00904-5639-48 ",.01)
 ;;00904-5639-48
 ;;9002226.02101,"1729,00904-5639-48 ",.02)
 ;;00904-5639-48
 ;;9002226.02101,"1729,00904-5639-89 ",.01)
 ;;00904-5639-89
 ;;9002226.02101,"1729,00904-5639-89 ",.02)
 ;;00904-5639-89
 ;;9002226.02101,"1729,00904-5640-46 ",.01)
 ;;00904-5640-46
 ;;9002226.02101,"1729,00904-5640-46 ",.02)
 ;;00904-5640-46
 ;;9002226.02101,"1729,00904-5640-48 ",.01)
 ;;00904-5640-48
 ;;9002226.02101,"1729,00904-5640-48 ",.02)
 ;;00904-5640-48
 ;;9002226.02101,"1729,00904-5640-89 ",.01)
 ;;00904-5640-89
 ;;9002226.02101,"1729,00904-5640-89 ",.02)
 ;;00904-5640-89
 ;;9002226.02101,"1729,00904-5642-89 ",.01)
 ;;00904-5642-89
 ;;9002226.02101,"1729,00904-5642-89 ",.02)
 ;;00904-5642-89
 ;;9002226.02101,"1729,00904-5701-61 ",.01)
 ;;00904-5701-61
 ;;9002226.02101,"1729,00904-5701-61 ",.02)
 ;;00904-5701-61
 ;;9002226.02101,"1729,00904-5808-43 ",.01)
 ;;00904-5808-43
 ;;9002226.02101,"1729,00904-5808-43 ",.02)
 ;;00904-5808-43
 ;;9002226.02101,"1729,00904-5808-46 ",.01)
 ;;00904-5808-46
 ;;9002226.02101,"1729,00904-5808-46 ",.02)
 ;;00904-5808-46
 ;;9002226.02101,"1729,00904-5808-48 ",.01)
 ;;00904-5808-48
 ;;9002226.02101,"1729,00904-5808-48 ",.02)
 ;;00904-5808-48
 ;;9002226.02101,"1729,00904-5808-61 ",.01)
 ;;00904-5808-61
 ;;9002226.02101,"1729,00904-5808-61 ",.02)
 ;;00904-5808-61
 ;;9002226.02101,"1729,00904-5808-80 ",.01)
 ;;00904-5808-80
 ;;9002226.02101,"1729,00904-5808-80 ",.02)
 ;;00904-5808-80
 ;;9002226.02101,"1729,00904-5808-89 ",.01)
 ;;00904-5808-89
 ;;9002226.02101,"1729,00904-5808-89 ",.02)
 ;;00904-5808-89
 ;;9002226.02101,"1729,00904-5808-93 ",.01)
 ;;00904-5808-93
 ;;9002226.02101,"1729,00904-5808-93 ",.02)
 ;;00904-5808-93
 ;;9002226.02101,"1729,00904-5809-43 ",.01)
 ;;00904-5809-43
 ;;9002226.02101,"1729,00904-5809-43 ",.02)
 ;;00904-5809-43
 ;;9002226.02101,"1729,00904-5809-46 ",.01)
 ;;00904-5809-46
 ;;9002226.02101,"1729,00904-5809-46 ",.02)
 ;;00904-5809-46
 ;;9002226.02101,"1729,00904-5809-48 ",.01)
 ;;00904-5809-48
 ;;9002226.02101,"1729,00904-5809-48 ",.02)
 ;;00904-5809-48
 ;;9002226.02101,"1729,00904-5809-61 ",.01)
 ;;00904-5809-61
 ;;9002226.02101,"1729,00904-5809-61 ",.02)
 ;;00904-5809-61
 ;;9002226.02101,"1729,00904-5809-80 ",.01)
 ;;00904-5809-80
 ;;9002226.02101,"1729,00904-5809-80 ",.02)
 ;;00904-5809-80
 ;;9002226.02101,"1729,00904-5809-89 ",.01)
 ;;00904-5809-89
 ;;9002226.02101,"1729,00904-5809-89 ",.02)
 ;;00904-5809-89
 ;;9002226.02101,"1729,00904-5809-93 ",.01)
 ;;00904-5809-93
 ;;9002226.02101,"1729,00904-5809-93 ",.02)
 ;;00904-5809-93
 ;;9002226.02101,"1729,00904-5810-43 ",.01)
 ;;00904-5810-43
 ;;9002226.02101,"1729,00904-5810-43 ",.02)
 ;;00904-5810-43
 ;;9002226.02101,"1729,00904-5810-46 ",.01)
 ;;00904-5810-46
 ;;9002226.02101,"1729,00904-5810-46 ",.02)
 ;;00904-5810-46
 ;;9002226.02101,"1729,00904-5810-48 ",.01)
 ;;00904-5810-48
 ;;9002226.02101,"1729,00904-5810-48 ",.02)
 ;;00904-5810-48
 ;;9002226.02101,"1729,00904-5810-52 ",.01)
 ;;00904-5810-52
 ;;9002226.02101,"1729,00904-5810-52 ",.02)
 ;;00904-5810-52
 ;;9002226.02101,"1729,00904-5810-61 ",.01)
 ;;00904-5810-61
 ;;9002226.02101,"1729,00904-5810-61 ",.02)
 ;;00904-5810-61
 ;;9002226.02101,"1729,00904-5810-80 ",.01)
 ;;00904-5810-80
 ;;9002226.02101,"1729,00904-5810-80 ",.02)
 ;;00904-5810-80
 ;;9002226.02101,"1729,00904-5810-89 ",.01)
 ;;00904-5810-89
 ;;9002226.02101,"1729,00904-5810-89 ",.02)
 ;;00904-5810-89
 ;;9002226.02101,"1729,00904-5810-93 ",.01)
 ;;00904-5810-93
 ;;9002226.02101,"1729,00904-5810-93 ",.02)
 ;;00904-5810-93
 ;;9002226.02101,"1729,00904-5811-43 ",.01)
 ;;00904-5811-43
 ;;9002226.02101,"1729,00904-5811-43 ",.02)
 ;;00904-5811-43
 ;;9002226.02101,"1729,00904-5811-46 ",.01)
 ;;00904-5811-46
 ;;9002226.02101,"1729,00904-5811-46 ",.02)
 ;;00904-5811-46
 ;;9002226.02101,"1729,00904-5811-61 ",.01)
 ;;00904-5811-61
 ;;9002226.02101,"1729,00904-5811-61 ",.02)
 ;;00904-5811-61
 ;;9002226.02101,"1729,00904-5811-80 ",.01)
 ;;00904-5811-80
 ;;9002226.02101,"1729,00904-5811-80 ",.02)
 ;;00904-5811-80
 ;;9002226.02101,"1729,00904-5811-89 ",.01)
 ;;00904-5811-89
 ;;9002226.02101,"1729,00904-5811-89 ",.02)
 ;;00904-5811-89
 ;;9002226.02101,"1729,00904-6189-40 ",.01)
 ;;00904-6189-40
 ;;9002226.02101,"1729,00904-6189-40 ",.02)
 ;;00904-6189-40
 ;;9002226.02101,"1729,00904-6190-40 ",.01)
 ;;00904-6190-40
 ;;9002226.02101,"1729,00904-6190-40 ",.02)
 ;;00904-6190-40
 ;;9002226.02101,"1729,00904-6191-40 ",.01)
 ;;00904-6191-40
 ;;9002226.02101,"1729,00904-6191-40 ",.02)
 ;;00904-6191-40
 ;;9002226.02101,"1729,00904-6192-40 ",.01)
 ;;00904-6192-40
 ;;9002226.02101,"1729,00904-6192-40 ",.02)
 ;;00904-6192-40
 ;;9002226.02101,"1729,00955-1040-30 ",.01)
 ;;00955-1040-30
 ;;9002226.02101,"1729,00955-1040-30 ",.02)
 ;;00955-1040-30
 ;;9002226.02101,"1729,00955-1040-90 ",.01)
 ;;00955-1040-90
 ;;9002226.02101,"1729,00955-1040-90 ",.02)
 ;;00955-1040-90
 ;;9002226.02101,"1729,00955-1041-30 ",.01)
 ;;00955-1041-30
 ;;9002226.02101,"1729,00955-1041-30 ",.02)
 ;;00955-1041-30
 ;;9002226.02101,"1729,00955-1041-90 ",.01)
 ;;00955-1041-90
 ;;9002226.02101,"1729,00955-1041-90 ",.02)
 ;;00955-1041-90
 ;;9002226.02101,"1729,00955-1042-30 ",.01)
 ;;00955-1042-30
 ;;9002226.02101,"1729,00955-1042-30 ",.02)
 ;;00955-1042-30
 ;;9002226.02101,"1729,00955-1042-90 ",.01)
 ;;00955-1042-90
 ;;9002226.02101,"1729,00955-1042-90 ",.02)
 ;;00955-1042-90
 ;;9002226.02101,"1729,00955-1045-30 ",.01)
 ;;00955-1045-30
 ;;9002226.02101,"1729,00955-1045-30 ",.02)
 ;;00955-1045-30
 ;;9002226.02101,"1729,00955-1045-90 ",.01)
 ;;00955-1045-90
 ;;9002226.02101,"1729,00955-1045-90 ",.02)
 ;;00955-1045-90
 ;;9002226.02101,"1729,00955-1046-30 ",.01)
 ;;00955-1046-30
 ;;9002226.02101,"1729,00955-1046-30 ",.02)
 ;;00955-1046-30
 ;;9002226.02101,"1729,00955-1046-90 ",.01)
 ;;00955-1046-90
 ;;9002226.02101,"1729,00955-1046-90 ",.02)
 ;;00955-1046-90
 ;;9002226.02101,"1729,10544-0170-30 ",.01)
 ;;10544-0170-30
 ;;9002226.02101,"1729,10544-0170-30 ",.02)
 ;;10544-0170-30
 ;;9002226.02101,"1729,10544-0237-30 ",.01)
 ;;10544-0237-30
 ;;9002226.02101,"1729,10544-0237-30 ",.02)
 ;;10544-0237-30
 ;;9002226.02101,"1729,10544-0238-60 ",.01)
 ;;10544-0238-60
 ;;9002226.02101,"1729,10544-0238-60 ",.02)
 ;;10544-0238-60
 ;;9002226.02101,"1729,10544-0239-60 ",.01)
 ;;10544-0239-60
 ;;9002226.02101,"1729,10544-0239-60 ",.02)
 ;;10544-0239-60
 ;;9002226.02101,"1729,10544-0240-30 ",.01)
 ;;10544-0240-30
 ;;9002226.02101,"1729,10544-0240-30 ",.02)
 ;;10544-0240-30
 ;;9002226.02101,"1729,10544-0564-30 ",.01)
 ;;10544-0564-30
 ;;9002226.02101,"1729,10544-0564-30 ",.02)
 ;;10544-0564-30
 ;;9002226.02101,"1729,13411-0106-01 ",.01)
 ;;13411-0106-01
 ;;9002226.02101,"1729,13411-0106-01 ",.02)
 ;;13411-0106-01
 ;;9002226.02101,"1729,13411-0106-03 ",.01)
 ;;13411-0106-03
 ;;9002226.02101,"1729,13411-0106-03 ",.02)
 ;;13411-0106-03
 ;;9002226.02101,"1729,13411-0106-06 ",.01)
 ;;13411-0106-06
 ;;9002226.02101,"1729,13411-0106-06 ",.02)
 ;;13411-0106-06
 ;;9002226.02101,"1729,13411-0106-09 ",.01)
 ;;13411-0106-09
 ;;9002226.02101,"1729,13411-0106-09 ",.02)
 ;;13411-0106-09
 ;;9002226.02101,"1729,13411-0106-15 ",.01)
 ;;13411-0106-15
 ;;9002226.02101,"1729,13411-0106-15 ",.02)
 ;;13411-0106-15
 ;;9002226.02101,"1729,13411-0107-01 ",.01)
 ;;13411-0107-01
 ;;9002226.02101,"1729,13411-0107-01 ",.02)
 ;;13411-0107-01
 ;;9002226.02101,"1729,13411-0107-03 ",.01)
 ;;13411-0107-03
 ;;9002226.02101,"1729,13411-0107-03 ",.02)
 ;;13411-0107-03
 ;;9002226.02101,"1729,13411-0107-06 ",.01)
 ;;13411-0107-06
 ;;9002226.02101,"1729,13411-0107-06 ",.02)
 ;;13411-0107-06
 ;;9002226.02101,"1729,13411-0107-09 ",.01)
 ;;13411-0107-09
 ;;9002226.02101,"1729,13411-0107-09 ",.02)
 ;;13411-0107-09
 ;;9002226.02101,"1729,13411-0107-15 ",.01)
 ;;13411-0107-15
 ;;9002226.02101,"1729,13411-0107-15 ",.02)
 ;;13411-0107-15