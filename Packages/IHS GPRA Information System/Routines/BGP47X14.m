BGP47X14 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 17, 2014;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1195,00904-0414-60 ",.01)
 ;;00904-0414-60
 ;;9002226.02101,"1195,00904-0414-60 ",.02)
 ;;00904-0414-60
 ;;9002226.02101,"1195,00904-0414-61 ",.01)
 ;;00904-0414-61
 ;;9002226.02101,"1195,00904-0414-61 ",.02)
 ;;00904-0414-61
 ;;9002226.02101,"1195,00904-0414-80 ",.01)
 ;;00904-0414-80
 ;;9002226.02101,"1195,00904-0414-80 ",.02)
 ;;00904-0414-80
 ;;9002226.02101,"1195,00904-0418-60 ",.01)
 ;;00904-0418-60
 ;;9002226.02101,"1195,00904-0418-60 ",.02)
 ;;00904-0418-60
 ;;9002226.02101,"1195,00904-5070-60 ",.01)
 ;;00904-5070-60
 ;;9002226.02101,"1195,00904-5070-60 ",.02)
 ;;00904-5070-60
 ;;9002226.02101,"1195,00904-5138-60 ",.01)
 ;;00904-5138-60
 ;;9002226.02101,"1195,00904-5138-60 ",.02)
 ;;00904-5138-60
 ;;9002226.02101,"1195,00904-5392-60 ",.01)
 ;;00904-5392-60
 ;;9002226.02101,"1195,00904-5392-60 ",.02)
 ;;00904-5392-60
 ;;9002226.02101,"1195,00904-5392-61 ",.01)
 ;;00904-5392-61
 ;;9002226.02101,"1195,00904-5392-61 ",.02)
 ;;00904-5392-61
 ;;9002226.02101,"1195,00904-5392-80 ",.01)
 ;;00904-5392-80
 ;;9002226.02101,"1195,00904-5392-80 ",.02)
 ;;00904-5392-80
 ;;9002226.02101,"1195,00904-5870-61 ",.01)
 ;;00904-5870-61
 ;;9002226.02101,"1195,00904-5870-61 ",.02)
 ;;00904-5870-61
 ;;9002226.02101,"1195,00904-5871-61 ",.01)
 ;;00904-5871-61
 ;;9002226.02101,"1195,00904-5871-61 ",.02)
 ;;00904-5871-61
 ;;9002226.02101,"1195,00904-5872-61 ",.01)
 ;;00904-5872-61
 ;;9002226.02101,"1195,00904-5872-61 ",.02)
 ;;00904-5872-61
 ;;9002226.02101,"1195,00904-5873-61 ",.01)
 ;;00904-5873-61
 ;;9002226.02101,"1195,00904-5873-61 ",.02)
 ;;00904-5873-61
 ;;9002226.02101,"1195,00904-5890-61 ",.01)
 ;;00904-5890-61
 ;;9002226.02101,"1195,00904-5890-61 ",.02)
 ;;00904-5890-61
 ;;9002226.02101,"1195,00904-5928-61 ",.01)
 ;;00904-5928-61
 ;;9002226.02101,"1195,00904-5928-61 ",.02)
 ;;00904-5928-61
 ;;9002226.02101,"1195,00904-5929-61 ",.01)
 ;;00904-5929-61
 ;;9002226.02101,"1195,00904-5929-61 ",.02)
 ;;00904-5929-61
 ;;9002226.02101,"1195,00904-5930-61 ",.01)
 ;;00904-5930-61
 ;;9002226.02101,"1195,00904-5930-61 ",.02)
 ;;00904-5930-61
 ;;9002226.02101,"1195,00904-5947-61 ",.01)
 ;;00904-5947-61
 ;;9002226.02101,"1195,00904-5947-61 ",.02)
 ;;00904-5947-61
 ;;9002226.02101,"1195,00904-5948-61 ",.01)
 ;;00904-5948-61
 ;;9002226.02101,"1195,00904-5948-61 ",.02)
 ;;00904-5948-61
 ;;9002226.02101,"1195,00904-5949-61 ",.01)
 ;;00904-5949-61
 ;;9002226.02101,"1195,00904-5949-61 ",.02)
 ;;00904-5949-61
 ;;9002226.02101,"1195,00904-5950-61 ",.01)
 ;;00904-5950-61
 ;;9002226.02101,"1195,00904-5950-61 ",.02)
 ;;00904-5950-61
 ;;9002226.02101,"1195,00904-6033-60 ",.01)
 ;;00904-6033-60
 ;;9002226.02101,"1195,00904-6033-60 ",.02)
 ;;00904-6033-60
 ;;9002226.02101,"1195,00904-6033-61 ",.01)
 ;;00904-6033-61
 ;;9002226.02101,"1195,00904-6033-61 ",.02)
 ;;00904-6033-61
 ;;9002226.02101,"1195,00904-6033-80 ",.01)
 ;;00904-6033-80
 ;;9002226.02101,"1195,00904-6033-80 ",.02)
 ;;00904-6033-80
 ;;9002226.02101,"1195,00904-6034-60 ",.01)
 ;;00904-6034-60
 ;;9002226.02101,"1195,00904-6034-60 ",.02)
 ;;00904-6034-60
 ;;9002226.02101,"1195,00904-6034-61 ",.01)
 ;;00904-6034-61
 ;;9002226.02101,"1195,00904-6034-61 ",.02)
 ;;00904-6034-61
 ;;9002226.02101,"1195,00904-6034-80 ",.01)
 ;;00904-6034-80
 ;;9002226.02101,"1195,00904-6034-80 ",.02)
 ;;00904-6034-80
 ;;9002226.02101,"1195,00904-6096-61 ",.01)
 ;;00904-6096-61
 ;;9002226.02101,"1195,00904-6096-61 ",.02)
 ;;00904-6096-61
 ;;9002226.02101,"1195,00904-6097-61 ",.01)
 ;;00904-6097-61
 ;;9002226.02101,"1195,00904-6097-61 ",.02)
 ;;00904-6097-61
 ;;9002226.02101,"1195,00904-6098-61 ",.01)
 ;;00904-6098-61
 ;;9002226.02101,"1195,00904-6098-61 ",.02)
 ;;00904-6098-61
 ;;9002226.02101,"1195,00904-6099-61 ",.01)
 ;;00904-6099-61
 ;;9002226.02101,"1195,00904-6099-61 ",.02)
 ;;00904-6099-61
 ;;9002226.02101,"1195,00904-6162-61 ",.01)
 ;;00904-6162-61
 ;;9002226.02101,"1195,00904-6162-61 ",.02)
 ;;00904-6162-61
 ;;9002226.02101,"1195,00904-6169-61 ",.01)
 ;;00904-6169-61
 ;;9002226.02101,"1195,00904-6169-61 ",.02)
 ;;00904-6169-61
 ;;9002226.02101,"1195,00904-6170-61 ",.01)
 ;;00904-6170-61
 ;;9002226.02101,"1195,00904-6170-61 ",.02)
 ;;00904-6170-61
 ;;9002226.02101,"1195,00904-6171-61 ",.01)
 ;;00904-6171-61
 ;;9002226.02101,"1195,00904-6171-61 ",.02)
 ;;00904-6171-61
 ;;9002226.02101,"1195,00904-6173-60 ",.01)
 ;;00904-6173-60
 ;;9002226.02101,"1195,00904-6173-60 ",.02)
 ;;00904-6173-60
 ;;9002226.02101,"1195,00904-6200-60 ",.01)
 ;;00904-6200-60
 ;;9002226.02101,"1195,00904-6200-60 ",.02)
 ;;00904-6200-60
 ;;9002226.02101,"1195,00904-6300-61 ",.01)
 ;;00904-6300-61
 ;;9002226.02101,"1195,00904-6300-61 ",.02)
 ;;00904-6300-61
 ;;9002226.02101,"1195,00904-6301-61 ",.01)
 ;;00904-6301-61
 ;;9002226.02101,"1195,00904-6301-61 ",.02)
 ;;00904-6301-61
 ;;9002226.02101,"1195,00904-6302-61 ",.01)
 ;;00904-6302-61
 ;;9002226.02101,"1195,00904-6302-61 ",.02)
 ;;00904-6302-61
 ;;9002226.02101,"1195,00904-6303-61 ",.01)
 ;;00904-6303-61
 ;;9002226.02101,"1195,00904-6303-61 ",.02)
 ;;00904-6303-61
 ;;9002226.02101,"1195,00904-6322-61 ",.01)
 ;;00904-6322-61
 ;;9002226.02101,"1195,00904-6322-61 ",.02)
 ;;00904-6322-61
 ;;9002226.02101,"1195,00904-6323-61 ",.01)
 ;;00904-6323-61
 ;;9002226.02101,"1195,00904-6323-61 ",.02)
 ;;00904-6323-61
 ;;9002226.02101,"1195,00904-6324-61 ",.01)
 ;;00904-6324-61
 ;;9002226.02101,"1195,00904-6324-61 ",.02)
 ;;00904-6324-61
 ;;9002226.02101,"1195,00904-7772-61 ",.01)
 ;;00904-7772-61
 ;;9002226.02101,"1195,00904-7772-61 ",.02)
 ;;00904-7772-61
 ;;9002226.02101,"1195,00904-7773-61 ",.01)
 ;;00904-7773-61
 ;;9002226.02101,"1195,00904-7773-61 ",.02)
 ;;00904-7773-61
 ;;9002226.02101,"1195,00904-7817-60 ",.01)
 ;;00904-7817-60
 ;;9002226.02101,"1195,00904-7817-60 ",.02)
 ;;00904-7817-60
 ;;9002226.02101,"1195,00904-7818-60 ",.01)
 ;;00904-7818-60
 ;;9002226.02101,"1195,00904-7818-60 ",.02)
 ;;00904-7818-60
 ;;9002226.02101,"1195,00904-7881-60 ",.01)
 ;;00904-7881-60
 ;;9002226.02101,"1195,00904-7881-60 ",.02)
 ;;00904-7881-60
 ;;9002226.02101,"1195,00904-7882-60 ",.01)
 ;;00904-7882-60
 ;;9002226.02101,"1195,00904-7882-60 ",.02)
 ;;00904-7882-60
 ;;9002226.02101,"1195,00904-7946-60 ",.01)
 ;;00904-7946-60
 ;;9002226.02101,"1195,00904-7946-60 ",.02)
 ;;00904-7946-60
 ;;9002226.02101,"1195,00904-7946-80 ",.01)
 ;;00904-7946-80
 ;;9002226.02101,"1195,00904-7946-80 ",.02)
 ;;00904-7946-80
 ;;9002226.02101,"1195,00904-7947-60 ",.01)
 ;;00904-7947-60
 ;;9002226.02101,"1195,00904-7947-60 ",.02)
 ;;00904-7947-60
 ;;9002226.02101,"1195,00904-7947-80 ",.01)
 ;;00904-7947-80
 ;;9002226.02101,"1195,00904-7947-80 ",.02)
 ;;00904-7947-80
 ;;9002226.02101,"1195,10544-0031-30 ",.01)
 ;;10544-0031-30
 ;;9002226.02101,"1195,10544-0031-30 ",.02)
 ;;10544-0031-30
 ;;9002226.02101,"1195,10544-0127-30 ",.01)
 ;;10544-0127-30
 ;;9002226.02101,"1195,10544-0127-30 ",.02)
 ;;10544-0127-30
 ;;9002226.02101,"1195,10544-0263-30 ",.01)
 ;;10544-0263-30
 ;;9002226.02101,"1195,10544-0263-30 ",.02)
 ;;10544-0263-30
 ;;9002226.02101,"1195,10702-0013-01 ",.01)
 ;;10702-0013-01
 ;;9002226.02101,"1195,10702-0013-01 ",.02)
 ;;10702-0013-01
 ;;9002226.02101,"1195,10702-0014-01 ",.01)
 ;;10702-0014-01
 ;;9002226.02101,"1195,10702-0014-01 ",.02)
 ;;10702-0014-01
 ;;9002226.02101,"1195,12280-0049-00 ",.01)
 ;;12280-0049-00
 ;;9002226.02101,"1195,12280-0049-00 ",.02)
 ;;12280-0049-00
 ;;9002226.02101,"1195,12280-0050-00 ",.01)
 ;;12280-0050-00
 ;;9002226.02101,"1195,12280-0050-00 ",.02)
 ;;12280-0050-00
 ;;9002226.02101,"1195,12280-0050-15 ",.01)
 ;;12280-0050-15
 ;;9002226.02101,"1195,12280-0050-15 ",.02)
 ;;12280-0050-15
 ;;9002226.02101,"1195,12280-0050-30 ",.01)
 ;;12280-0050-30
 ;;9002226.02101,"1195,12280-0050-30 ",.02)
 ;;12280-0050-30
 ;;9002226.02101,"1195,12280-0145-00 ",.01)
 ;;12280-0145-00
 ;;9002226.02101,"1195,12280-0145-00 ",.02)
 ;;12280-0145-00
 ;;9002226.02101,"1195,12280-0172-00 ",.01)
 ;;12280-0172-00
 ;;9002226.02101,"1195,12280-0172-00 ",.02)
 ;;12280-0172-00
 ;;9002226.02101,"1195,12280-0172-30 ",.01)
 ;;12280-0172-30
 ;;9002226.02101,"1195,12280-0172-30 ",.02)
 ;;12280-0172-30
 ;;9002226.02101,"1195,12280-0200-00 ",.01)
 ;;12280-0200-00
 ;;9002226.02101,"1195,12280-0200-00 ",.02)
 ;;12280-0200-00
 ;;9002226.02101,"1195,12280-0303-15 ",.01)
 ;;12280-0303-15
 ;;9002226.02101,"1195,12280-0303-15 ",.02)
 ;;12280-0303-15
 ;;9002226.02101,"1195,12280-0303-30 ",.01)
 ;;12280-0303-30
 ;;9002226.02101,"1195,12280-0303-30 ",.02)
 ;;12280-0303-30
 ;;9002226.02101,"1195,12280-0376-00 ",.01)
 ;;12280-0376-00
 ;;9002226.02101,"1195,12280-0376-00 ",.02)
 ;;12280-0376-00
 ;;9002226.02101,"1195,12280-0376-30 ",.01)
 ;;12280-0376-30
 ;;9002226.02101,"1195,12280-0376-30 ",.02)
 ;;12280-0376-30
 ;;9002226.02101,"1195,12280-0377-00 ",.01)
 ;;12280-0377-00
 ;;9002226.02101,"1195,12280-0377-00 ",.02)
 ;;12280-0377-00
 ;;9002226.02101,"1195,12280-0377-30 ",.01)
 ;;12280-0377-30
 ;;9002226.02101,"1195,12280-0377-30 ",.02)
 ;;12280-0377-30
 ;;9002226.02101,"1195,12280-0403-30 ",.01)
 ;;12280-0403-30
 ;;9002226.02101,"1195,12280-0403-30 ",.02)
 ;;12280-0403-30
 ;;9002226.02101,"1195,12280-0404-30 ",.01)
 ;;12280-0404-30
 ;;9002226.02101,"1195,12280-0404-30 ",.02)
 ;;12280-0404-30
 ;;9002226.02101,"1195,12280-0405-30 ",.01)
 ;;12280-0405-30
 ;;9002226.02101,"1195,12280-0405-30 ",.02)
 ;;12280-0405-30
 ;;9002226.02101,"1195,12280-0406-30 ",.01)
 ;;12280-0406-30
 ;;9002226.02101,"1195,12280-0406-30 ",.02)
 ;;12280-0406-30
 ;;9002226.02101,"1195,13107-0142-01 ",.01)
 ;;13107-0142-01
 ;;9002226.02101,"1195,13107-0142-01 ",.02)
 ;;13107-0142-01
 ;;9002226.02101,"1195,13107-0142-05 ",.01)
 ;;13107-0142-05
 ;;9002226.02101,"1195,13107-0142-05 ",.02)
 ;;13107-0142-05
 ;;9002226.02101,"1195,13107-0143-01 ",.01)
 ;;13107-0143-01
 ;;9002226.02101,"1195,13107-0143-01 ",.02)
 ;;13107-0143-01
 ;;9002226.02101,"1195,13107-0143-05 ",.01)
 ;;13107-0143-05
 ;;9002226.02101,"1195,13107-0143-05 ",.02)
 ;;13107-0143-05
 ;;9002226.02101,"1195,13107-0144-01 ",.01)
 ;;13107-0144-01
 ;;9002226.02101,"1195,13107-0144-01 ",.02)
 ;;13107-0144-01
 ;;9002226.02101,"1195,13107-0144-05 ",.01)
 ;;13107-0144-05
 ;;9002226.02101,"1195,13107-0144-05 ",.02)
 ;;13107-0144-05
 ;;9002226.02101,"1195,13107-0145-01 ",.01)
 ;;13107-0145-01
 ;;9002226.02101,"1195,13107-0145-01 ",.02)
 ;;13107-0145-01
 ;;9002226.02101,"1195,13107-0145-05 ",.01)
 ;;13107-0145-05
 ;;9002226.02101,"1195,13107-0145-05 ",.02)
 ;;13107-0145-05
 ;;9002226.02101,"1195,13411-0169-01 ",.01)
 ;;13411-0169-01
 ;;9002226.02101,"1195,13411-0169-01 ",.02)
 ;;13411-0169-01
 ;;9002226.02101,"1195,13411-0169-03 ",.01)
 ;;13411-0169-03
 ;;9002226.02101,"1195,13411-0169-03 ",.02)
 ;;13411-0169-03
 ;;9002226.02101,"1195,13411-0169-06 ",.01)
 ;;13411-0169-06
 ;;9002226.02101,"1195,13411-0169-06 ",.02)
 ;;13411-0169-06
 ;;9002226.02101,"1195,13411-0169-09 ",.01)
 ;;13411-0169-09
 ;;9002226.02101,"1195,13411-0169-09 ",.02)
 ;;13411-0169-09
 ;;9002226.02101,"1195,13411-0169-10 ",.01)
 ;;13411-0169-10
 ;;9002226.02101,"1195,13411-0169-10 ",.02)
 ;;13411-0169-10
 ;;9002226.02101,"1195,13411-0176-01 ",.01)
 ;;13411-0176-01
 ;;9002226.02101,"1195,13411-0176-01 ",.02)
 ;;13411-0176-01
 ;;9002226.02101,"1195,13411-0176-03 ",.01)
 ;;13411-0176-03
 ;;9002226.02101,"1195,13411-0176-03 ",.02)
 ;;13411-0176-03
 ;;9002226.02101,"1195,13411-0176-06 ",.01)
 ;;13411-0176-06
 ;;9002226.02101,"1195,13411-0176-06 ",.02)
 ;;13411-0176-06
 ;;9002226.02101,"1195,13411-0176-09 ",.01)
 ;;13411-0176-09
 ;;9002226.02101,"1195,13411-0176-09 ",.02)
 ;;13411-0176-09
 ;;9002226.02101,"1195,13411-0176-10 ",.01)
 ;;13411-0176-10
 ;;9002226.02101,"1195,13411-0176-10 ",.02)
 ;;13411-0176-10
 ;;9002226.02101,"1195,15330-0025-01 ",.01)
 ;;15330-0025-01
 ;;9002226.02101,"1195,15330-0025-01 ",.02)
 ;;15330-0025-01
 ;;9002226.02101,"1195,15330-0025-10 ",.01)
 ;;15330-0025-10
 ;;9002226.02101,"1195,15330-0025-10 ",.02)
 ;;15330-0025-10
 ;;9002226.02101,"1195,15330-0028-01 ",.01)
 ;;15330-0028-01
 ;;9002226.02101,"1195,15330-0028-01 ",.02)
 ;;15330-0028-01
 ;;9002226.02101,"1195,15330-0028-10 ",.01)
 ;;15330-0028-10
 ;;9002226.02101,"1195,15330-0028-10 ",.02)
 ;;15330-0028-10
 ;;9002226.02101,"1195,15330-0029-01 ",.01)
 ;;15330-0029-01
 ;;9002226.02101,"1195,15330-0029-01 ",.02)
 ;;15330-0029-01
 ;;9002226.02101,"1195,15330-0029-10 ",.01)
 ;;15330-0029-10
 ;;9002226.02101,"1195,15330-0029-10 ",.02)
 ;;15330-0029-10
 ;;9002226.02101,"1195,16571-0430-11 ",.01)
 ;;16571-0430-11
 ;;9002226.02101,"1195,16571-0430-11 ",.02)
 ;;16571-0430-11
 ;;9002226.02101,"1195,16571-0431-11 ",.01)
 ;;16571-0431-11
 ;;9002226.02101,"1195,16571-0431-11 ",.02)
 ;;16571-0431-11
 ;;9002226.02101,"1195,16571-0441-11 ",.01)
 ;;16571-0441-11
 ;;9002226.02101,"1195,16571-0441-11 ",.02)
 ;;16571-0441-11
 ;;9002226.02101,"1195,16590-0132-30 ",.01)
 ;;16590-0132-30
 ;;9002226.02101,"1195,16590-0132-30 ",.02)
 ;;16590-0132-30
 ;;9002226.02101,"1195,16590-0132-60 ",.01)
 ;;16590-0132-60
 ;;9002226.02101,"1195,16590-0132-60 ",.02)
 ;;16590-0132-60
 ;;9002226.02101,"1195,16590-0133-30 ",.01)
 ;;16590-0133-30
 ;;9002226.02101,"1195,16590-0133-30 ",.02)
 ;;16590-0133-30
 ;;9002226.02101,"1195,16590-0133-60 ",.01)
 ;;16590-0133-60
 ;;9002226.02101,"1195,16590-0133-60 ",.02)
 ;;16590-0133-60
 ;;9002226.02101,"1195,16590-0256-30 ",.01)
 ;;16590-0256-30
 ;;9002226.02101,"1195,16590-0256-30 ",.02)
 ;;16590-0256-30
 ;;9002226.02101,"1195,16590-0256-60 ",.01)
 ;;16590-0256-60