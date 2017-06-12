BGP48F10 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 17, 2014;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1201,00781-5382-92 ",.02)
 ;;00781-5382-92
 ;;9002226.02101,"1201,00781-5384-92 ",.01)
 ;;00781-5384-92
 ;;9002226.02101,"1201,00781-5384-92 ",.02)
 ;;00781-5384-92
 ;;9002226.02101,"1201,00781-5388-92 ",.01)
 ;;00781-5388-92
 ;;9002226.02101,"1201,00781-5388-92 ",.02)
 ;;00781-5388-92
 ;;9002226.02101,"1201,00904-5581-52 ",.01)
 ;;00904-5581-52
 ;;9002226.02101,"1201,00904-5581-52 ",.02)
 ;;00904-5581-52
 ;;9002226.02101,"1201,00904-5582-52 ",.01)
 ;;00904-5582-52
 ;;9002226.02101,"1201,00904-5582-52 ",.02)
 ;;00904-5582-52
 ;;9002226.02101,"1201,00904-5583-52 ",.01)
 ;;00904-5583-52
 ;;9002226.02101,"1201,00904-5583-52 ",.02)
 ;;00904-5583-52
 ;;9002226.02101,"1201,00904-5800-61 ",.01)
 ;;00904-5800-61
 ;;9002226.02101,"1201,00904-5800-61 ",.02)
 ;;00904-5800-61
 ;;9002226.02101,"1201,00904-5801-61 ",.01)
 ;;00904-5801-61
 ;;9002226.02101,"1201,00904-5801-61 ",.02)
 ;;00904-5801-61
 ;;9002226.02101,"1201,00904-5802-61 ",.01)
 ;;00904-5802-61
 ;;9002226.02101,"1201,00904-5802-61 ",.02)
 ;;00904-5802-61
 ;;9002226.02101,"1201,00904-5891-61 ",.01)
 ;;00904-5891-61
 ;;9002226.02101,"1201,00904-5891-61 ",.02)
 ;;00904-5891-61
 ;;9002226.02101,"1201,00904-5892-61 ",.01)
 ;;00904-5892-61
 ;;9002226.02101,"1201,00904-5892-61 ",.02)
 ;;00904-5892-61
 ;;9002226.02101,"1201,00904-5893-61 ",.01)
 ;;00904-5893-61
 ;;9002226.02101,"1201,00904-5893-61 ",.02)
 ;;00904-5893-61
 ;;9002226.02101,"1201,00904-6113-61 ",.01)
 ;;00904-6113-61
 ;;9002226.02101,"1201,00904-6113-61 ",.02)
 ;;00904-6113-61
 ;;9002226.02101,"1201,00904-6114-61 ",.01)
 ;;00904-6114-61
 ;;9002226.02101,"1201,00904-6114-61 ",.02)
 ;;00904-6114-61
 ;;9002226.02101,"1201,00904-6115-61 ",.01)
 ;;00904-6115-61
 ;;9002226.02101,"1201,00904-6115-61 ",.02)
 ;;00904-6115-61
 ;;9002226.02101,"1201,00904-6290-61 ",.01)
 ;;00904-6290-61
 ;;9002226.02101,"1201,00904-6290-61 ",.02)
 ;;00904-6290-61
 ;;9002226.02101,"1201,00904-6291-61 ",.01)
 ;;00904-6291-61
 ;;9002226.02101,"1201,00904-6291-61 ",.02)
 ;;00904-6291-61
 ;;9002226.02101,"1201,10135-0498-90 ",.01)
 ;;10135-0498-90
 ;;9002226.02101,"1201,10135-0498-90 ",.02)
 ;;10135-0498-90
 ;;9002226.02101,"1201,10135-0499-90 ",.01)
 ;;10135-0499-90
 ;;9002226.02101,"1201,10135-0499-90 ",.02)
 ;;10135-0499-90
 ;;9002226.02101,"1201,10135-0500-90 ",.01)
 ;;10135-0500-90
 ;;9002226.02101,"1201,10135-0500-90 ",.02)
 ;;10135-0500-90
 ;;9002226.02101,"1201,10135-0508-05 ",.01)
 ;;10135-0508-05
 ;;9002226.02101,"1201,10135-0508-05 ",.02)
 ;;10135-0508-05
 ;;9002226.02101,"1201,10135-0508-30 ",.01)
 ;;10135-0508-30
 ;;9002226.02101,"1201,10135-0508-30 ",.02)
 ;;10135-0508-30
 ;;9002226.02101,"1201,10135-0508-90 ",.01)
 ;;10135-0508-90
 ;;9002226.02101,"1201,10135-0508-90 ",.02)
 ;;10135-0508-90
 ;;9002226.02101,"1201,10135-0509-05 ",.01)
 ;;10135-0509-05
 ;;9002226.02101,"1201,10135-0509-05 ",.02)
 ;;10135-0509-05
 ;;9002226.02101,"1201,10135-0509-30 ",.01)
 ;;10135-0509-30
 ;;9002226.02101,"1201,10135-0509-30 ",.02)
 ;;10135-0509-30
 ;;9002226.02101,"1201,10135-0509-90 ",.01)
 ;;10135-0509-90
 ;;9002226.02101,"1201,10135-0509-90 ",.02)
 ;;10135-0509-90
 ;;9002226.02101,"1201,10135-0510-05 ",.01)
 ;;10135-0510-05
 ;;9002226.02101,"1201,10135-0510-05 ",.02)
 ;;10135-0510-05
 ;;9002226.02101,"1201,10135-0510-30 ",.01)
 ;;10135-0510-30
 ;;9002226.02101,"1201,10135-0510-30 ",.02)
 ;;10135-0510-30
 ;;9002226.02101,"1201,10135-0510-90 ",.01)
 ;;10135-0510-90
 ;;9002226.02101,"1201,10135-0510-90 ",.02)
 ;;10135-0510-90
 ;;9002226.02101,"1201,10135-0511-05 ",.01)
 ;;10135-0511-05
 ;;9002226.02101,"1201,10135-0511-05 ",.02)
 ;;10135-0511-05
 ;;9002226.02101,"1201,10135-0511-30 ",.01)
 ;;10135-0511-30
 ;;9002226.02101,"1201,10135-0511-30 ",.02)
 ;;10135-0511-30
 ;;9002226.02101,"1201,10135-0511-90 ",.01)
 ;;10135-0511-90
 ;;9002226.02101,"1201,10135-0511-90 ",.02)
 ;;10135-0511-90
 ;;9002226.02101,"1201,10135-0512-05 ",.01)
 ;;10135-0512-05
 ;;9002226.02101,"1201,10135-0512-05 ",.02)
 ;;10135-0512-05
 ;;9002226.02101,"1201,10135-0512-30 ",.01)
 ;;10135-0512-30
 ;;9002226.02101,"1201,10135-0512-30 ",.02)
 ;;10135-0512-30
 ;;9002226.02101,"1201,10135-0512-90 ",.01)
 ;;10135-0512-90
 ;;9002226.02101,"1201,10135-0512-90 ",.02)
 ;;10135-0512-90
 ;;9002226.02101,"1201,10544-0246-30 ",.01)
 ;;10544-0246-30
 ;;9002226.02101,"1201,10544-0246-30 ",.02)
 ;;10544-0246-30
 ;;9002226.02101,"1201,12280-0038-90 ",.01)
 ;;12280-0038-90
 ;;9002226.02101,"1201,12280-0038-90 ",.02)
 ;;12280-0038-90
 ;;9002226.02101,"1201,12280-0108-60 ",.01)
 ;;12280-0108-60
 ;;9002226.02101,"1201,12280-0108-60 ",.02)
 ;;12280-0108-60
 ;;9002226.02101,"1201,12280-0150-30 ",.01)
 ;;12280-0150-30
 ;;9002226.02101,"1201,12280-0150-30 ",.02)
 ;;12280-0150-30
 ;;9002226.02101,"1201,12280-0164-15 ",.01)
 ;;12280-0164-15
 ;;9002226.02101,"1201,12280-0164-15 ",.02)
 ;;12280-0164-15
 ;;9002226.02101,"1201,12280-0164-90 ",.01)
 ;;12280-0164-90
 ;;9002226.02101,"1201,12280-0164-90 ",.02)
 ;;12280-0164-90
 ;;9002226.02101,"1201,12280-0181-30 ",.01)
 ;;12280-0181-30
 ;;9002226.02101,"1201,12280-0181-30 ",.02)
 ;;12280-0181-30
 ;;9002226.02101,"1201,12280-0181-90 ",.01)
 ;;12280-0181-90
 ;;9002226.02101,"1201,12280-0181-90 ",.02)
 ;;12280-0181-90
 ;;9002226.02101,"1201,12280-0335-15 ",.01)
 ;;12280-0335-15
 ;;9002226.02101,"1201,12280-0335-15 ",.02)
 ;;12280-0335-15
 ;;9002226.02101,"1201,12280-0335-30 ",.01)
 ;;12280-0335-30
 ;;9002226.02101,"1201,12280-0335-30 ",.02)
 ;;12280-0335-30
 ;;9002226.02101,"1201,12280-0335-90 ",.01)
 ;;12280-0335-90
 ;;9002226.02101,"1201,12280-0335-90 ",.02)
 ;;12280-0335-90
 ;;9002226.02101,"1201,12280-0351-30 ",.01)
 ;;12280-0351-30
 ;;9002226.02101,"1201,12280-0351-30 ",.02)
 ;;12280-0351-30
 ;;9002226.02101,"1201,12280-0351-90 ",.01)
 ;;12280-0351-90
 ;;9002226.02101,"1201,12280-0351-90 ",.02)
 ;;12280-0351-90
 ;;9002226.02101,"1201,12280-0385-30 ",.01)
 ;;12280-0385-30
 ;;9002226.02101,"1201,12280-0385-30 ",.02)
 ;;12280-0385-30
 ;;9002226.02101,"1201,12280-0385-90 ",.01)
 ;;12280-0385-90
 ;;9002226.02101,"1201,12280-0385-90 ",.02)
 ;;12280-0385-90
 ;;9002226.02101,"1201,12280-0386-30 ",.01)
 ;;12280-0386-30
 ;;9002226.02101,"1201,12280-0386-30 ",.02)
 ;;12280-0386-30
 ;;9002226.02101,"1201,12280-0397-30 ",.01)
 ;;12280-0397-30
 ;;9002226.02101,"1201,12280-0397-30 ",.02)
 ;;12280-0397-30
 ;;9002226.02101,"1201,12280-0398-30 ",.01)
 ;;12280-0398-30
 ;;9002226.02101,"1201,12280-0398-30 ",.02)
 ;;12280-0398-30
 ;;9002226.02101,"1201,12280-0399-30 ",.01)
 ;;12280-0399-30
 ;;9002226.02101,"1201,12280-0399-30 ",.02)
 ;;12280-0399-30
 ;;9002226.02101,"1201,13411-0111-01 ",.01)
 ;;13411-0111-01
 ;;9002226.02101,"1201,13411-0111-01 ",.02)
 ;;13411-0111-01
 ;;9002226.02101,"1201,13411-0111-02 ",.01)
 ;;13411-0111-02
 ;;9002226.02101,"1201,13411-0111-02 ",.02)
 ;;13411-0111-02
 ;;9002226.02101,"1201,13411-0111-03 ",.01)
 ;;13411-0111-03
 ;;9002226.02101,"1201,13411-0111-03 ",.02)
 ;;13411-0111-03
 ;;9002226.02101,"1201,13411-0111-06 ",.01)
 ;;13411-0111-06
 ;;9002226.02101,"1201,13411-0111-06 ",.02)
 ;;13411-0111-06
 ;;9002226.02101,"1201,13411-0111-10 ",.01)
 ;;13411-0111-10
 ;;9002226.02101,"1201,13411-0111-10 ",.02)
 ;;13411-0111-10
 ;;9002226.02101,"1201,13411-0113-01 ",.01)
 ;;13411-0113-01
 ;;9002226.02101,"1201,13411-0113-01 ",.02)
 ;;13411-0113-01
 ;;9002226.02101,"1201,13411-0113-03 ",.01)
 ;;13411-0113-03
 ;;9002226.02101,"1201,13411-0113-03 ",.02)
 ;;13411-0113-03
 ;;9002226.02101,"1201,13411-0113-06 ",.01)
 ;;13411-0113-06
 ;;9002226.02101,"1201,13411-0113-06 ",.02)
 ;;13411-0113-06
 ;;9002226.02101,"1201,13411-0113-09 ",.01)
 ;;13411-0113-09
 ;;9002226.02101,"1201,13411-0113-09 ",.02)
 ;;13411-0113-09
 ;;9002226.02101,"1201,13411-0113-15 ",.01)
 ;;13411-0113-15
 ;;9002226.02101,"1201,13411-0113-15 ",.02)
 ;;13411-0113-15
 ;;9002226.02101,"1201,13411-0114-01 ",.01)
 ;;13411-0114-01
 ;;9002226.02101,"1201,13411-0114-01 ",.02)
 ;;13411-0114-01
 ;;9002226.02101,"1201,13411-0114-03 ",.01)
 ;;13411-0114-03
 ;;9002226.02101,"1201,13411-0114-03 ",.02)
 ;;13411-0114-03
 ;;9002226.02101,"1201,13411-0114-06 ",.01)
 ;;13411-0114-06
 ;;9002226.02101,"1201,13411-0114-06 ",.02)
 ;;13411-0114-06
 ;;9002226.02101,"1201,13411-0114-09 ",.01)
 ;;13411-0114-09
 ;;9002226.02101,"1201,13411-0114-09 ",.02)
 ;;13411-0114-09
 ;;9002226.02101,"1201,13411-0114-15 ",.01)
 ;;13411-0114-15
 ;;9002226.02101,"1201,13411-0114-15 ",.02)
 ;;13411-0114-15
 ;;9002226.02101,"1201,13411-0115-01 ",.01)
 ;;13411-0115-01
 ;;9002226.02101,"1201,13411-0115-01 ",.02)
 ;;13411-0115-01
 ;;9002226.02101,"1201,13411-0115-03 ",.01)
 ;;13411-0115-03
 ;;9002226.02101,"1201,13411-0115-03 ",.02)
 ;;13411-0115-03
 ;;9002226.02101,"1201,13411-0115-06 ",.01)
 ;;13411-0115-06
 ;;9002226.02101,"1201,13411-0115-06 ",.02)
 ;;13411-0115-06
 ;;9002226.02101,"1201,13411-0115-09 ",.01)
 ;;13411-0115-09
 ;;9002226.02101,"1201,13411-0115-09 ",.02)
 ;;13411-0115-09
 ;;9002226.02101,"1201,13411-0115-15 ",.01)
 ;;13411-0115-15
 ;;9002226.02101,"1201,13411-0115-15 ",.02)
 ;;13411-0115-15
 ;;9002226.02101,"1201,13411-0118-01 ",.01)
 ;;13411-0118-01
 ;;9002226.02101,"1201,13411-0118-01 ",.02)
 ;;13411-0118-01
 ;;9002226.02101,"1201,13411-0118-02 ",.01)
 ;;13411-0118-02
 ;;9002226.02101,"1201,13411-0118-02 ",.02)
 ;;13411-0118-02
 ;;9002226.02101,"1201,13411-0118-03 ",.01)
 ;;13411-0118-03
 ;;9002226.02101,"1201,13411-0118-03 ",.02)
 ;;13411-0118-03
 ;;9002226.02101,"1201,13411-0118-06 ",.01)
 ;;13411-0118-06
 ;;9002226.02101,"1201,13411-0118-06 ",.02)
 ;;13411-0118-06
 ;;9002226.02101,"1201,13411-0118-09 ",.01)
 ;;13411-0118-09
 ;;9002226.02101,"1201,13411-0118-09 ",.02)
 ;;13411-0118-09
 ;;9002226.02101,"1201,13411-0119-01 ",.01)
 ;;13411-0119-01
 ;;9002226.02101,"1201,13411-0119-01 ",.02)
 ;;13411-0119-01
 ;;9002226.02101,"1201,13411-0119-02 ",.01)
 ;;13411-0119-02
 ;;9002226.02101,"1201,13411-0119-02 ",.02)
 ;;13411-0119-02
 ;;9002226.02101,"1201,13411-0119-03 ",.01)
 ;;13411-0119-03
 ;;9002226.02101,"1201,13411-0119-03 ",.02)
 ;;13411-0119-03
 ;;9002226.02101,"1201,13411-0119-06 ",.01)
 ;;13411-0119-06
 ;;9002226.02101,"1201,13411-0119-06 ",.02)
 ;;13411-0119-06
 ;;9002226.02101,"1201,13411-0119-09 ",.01)
 ;;13411-0119-09
 ;;9002226.02101,"1201,13411-0119-09 ",.02)
 ;;13411-0119-09
 ;;9002226.02101,"1201,13411-0132-01 ",.01)
 ;;13411-0132-01
 ;;9002226.02101,"1201,13411-0132-01 ",.02)
 ;;13411-0132-01
 ;;9002226.02101,"1201,13411-0132-03 ",.01)
 ;;13411-0132-03
 ;;9002226.02101,"1201,13411-0132-03 ",.02)
 ;;13411-0132-03
 ;;9002226.02101,"1201,13411-0132-06 ",.01)
 ;;13411-0132-06
 ;;9002226.02101,"1201,13411-0132-06 ",.02)
 ;;13411-0132-06
 ;;9002226.02101,"1201,13411-0132-09 ",.01)
 ;;13411-0132-09
 ;;9002226.02101,"1201,13411-0132-09 ",.02)
 ;;13411-0132-09
 ;;9002226.02101,"1201,13411-0132-15 ",.01)
 ;;13411-0132-15
 ;;9002226.02101,"1201,13411-0132-15 ",.02)
 ;;13411-0132-15
 ;;9002226.02101,"1201,13411-0133-01 ",.01)
 ;;13411-0133-01
 ;;9002226.02101,"1201,13411-0133-01 ",.02)
 ;;13411-0133-01
 ;;9002226.02101,"1201,13411-0133-03 ",.01)
 ;;13411-0133-03
 ;;9002226.02101,"1201,13411-0133-03 ",.02)
 ;;13411-0133-03
 ;;9002226.02101,"1201,13411-0133-06 ",.01)
 ;;13411-0133-06
 ;;9002226.02101,"1201,13411-0133-06 ",.02)
 ;;13411-0133-06
 ;;9002226.02101,"1201,13411-0133-09 ",.01)
 ;;13411-0133-09
 ;;9002226.02101,"1201,13411-0133-09 ",.02)
 ;;13411-0133-09
 ;;9002226.02101,"1201,13411-0133-15 ",.01)
 ;;13411-0133-15
 ;;9002226.02101,"1201,13411-0133-15 ",.02)
 ;;13411-0133-15
 ;;9002226.02101,"1201,13411-0161-01 ",.01)
 ;;13411-0161-01
 ;;9002226.02101,"1201,13411-0161-01 ",.02)
 ;;13411-0161-01
 ;;9002226.02101,"1201,13411-0161-03 ",.01)
 ;;13411-0161-03
 ;;9002226.02101,"1201,13411-0161-03 ",.02)
 ;;13411-0161-03
 ;;9002226.02101,"1201,13411-0161-06 ",.01)
 ;;13411-0161-06
 ;;9002226.02101,"1201,13411-0161-06 ",.02)
 ;;13411-0161-06
 ;;9002226.02101,"1201,13411-0161-09 ",.01)
 ;;13411-0161-09
 ;;9002226.02101,"1201,13411-0161-09 ",.02)
 ;;13411-0161-09
 ;;9002226.02101,"1201,13411-0161-15 ",.01)
 ;;13411-0161-15
 ;;9002226.02101,"1201,13411-0161-15 ",.02)
 ;;13411-0161-15
 ;;9002226.02101,"1201,13411-0162-01 ",.01)
 ;;13411-0162-01
 ;;9002226.02101,"1201,13411-0162-01 ",.02)
 ;;13411-0162-01
 ;;9002226.02101,"1201,13411-0162-03 ",.01)
 ;;13411-0162-03
 ;;9002226.02101,"1201,13411-0162-03 ",.02)
 ;;13411-0162-03
 ;;9002226.02101,"1201,13411-0162-06 ",.01)
 ;;13411-0162-06
 ;;9002226.02101,"1201,13411-0162-06 ",.02)
 ;;13411-0162-06
 ;;9002226.02101,"1201,13411-0162-09 ",.01)
 ;;13411-0162-09
 ;;9002226.02101,"1201,13411-0162-09 ",.02)
 ;;13411-0162-09
 ;;9002226.02101,"1201,13411-0162-15 ",.01)
 ;;13411-0162-15
 ;;9002226.02101,"1201,13411-0162-15 ",.02)
 ;;13411-0162-15
 ;;9002226.02101,"1201,16252-0505-30 ",.01)
 ;;16252-0505-30
 ;;9002226.02101,"1201,16252-0505-30 ",.02)
 ;;16252-0505-30
 ;;9002226.02101,"1201,16252-0505-50 ",.01)
 ;;16252-0505-50
 ;;9002226.02101,"1201,16252-0505-50 ",.02)
 ;;16252-0505-50
 ;;9002226.02101,"1201,16252-0505-90 ",.01)
 ;;16252-0505-90
 ;;9002226.02101,"1201,16252-0505-90 ",.02)
 ;;16252-0505-90
 ;;9002226.02101,"1201,16252-0506-30 ",.01)
 ;;16252-0506-30
 ;;9002226.02101,"1201,16252-0506-30 ",.02)
 ;;16252-0506-30
 ;;9002226.02101,"1201,16252-0506-50 ",.01)
 ;;16252-0506-50
 ;;9002226.02101,"1201,16252-0506-50 ",.02)
 ;;16252-0506-50
 ;;9002226.02101,"1201,16252-0506-90 ",.01)
 ;;16252-0506-90
 ;;9002226.02101,"1201,16252-0506-90 ",.02)
 ;;16252-0506-90