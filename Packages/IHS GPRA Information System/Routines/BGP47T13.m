BGP47T13 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 16, 2014;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1064,00904-6191-40 ",.01)
 ;;00904-6191-40
 ;;9002226.02101,"1064,00904-6191-40 ",.02)
 ;;00904-6191-40
 ;;9002226.02101,"1064,00904-6192-40 ",.01)
 ;;00904-6192-40
 ;;9002226.02101,"1064,00904-6192-40 ",.02)
 ;;00904-6192-40
 ;;9002226.02101,"1064,12280-0033-00 ",.01)
 ;;12280-0033-00
 ;;9002226.02101,"1064,12280-0033-00 ",.02)
 ;;12280-0033-00
 ;;9002226.02101,"1064,12280-0129-60 ",.01)
 ;;12280-0129-60
 ;;9002226.02101,"1064,12280-0129-60 ",.02)
 ;;12280-0129-60
 ;;9002226.02101,"1064,12280-0144-00 ",.01)
 ;;12280-0144-00
 ;;9002226.02101,"1064,12280-0144-00 ",.02)
 ;;12280-0144-00
 ;;9002226.02101,"1064,13811-0627-10 ",.01)
 ;;13811-0627-10
 ;;9002226.02101,"1064,13811-0627-10 ",.02)
 ;;13811-0627-10
 ;;9002226.02101,"1064,13811-0628-10 ",.01)
 ;;13811-0628-10
 ;;9002226.02101,"1064,13811-0628-10 ",.02)
 ;;13811-0628-10
 ;;9002226.02101,"1064,13811-0628-50 ",.01)
 ;;13811-0628-50
 ;;9002226.02101,"1064,13811-0628-50 ",.02)
 ;;13811-0628-50
 ;;9002226.02101,"1064,13811-0629-10 ",.01)
 ;;13811-0629-10
 ;;9002226.02101,"1064,13811-0629-10 ",.02)
 ;;13811-0629-10
 ;;9002226.02101,"1064,13811-0629-50 ",.01)
 ;;13811-0629-50
 ;;9002226.02101,"1064,13811-0629-50 ",.02)
 ;;13811-0629-50
 ;;9002226.02101,"1064,13811-0630-10 ",.01)
 ;;13811-0630-10
 ;;9002226.02101,"1064,13811-0630-10 ",.02)
 ;;13811-0630-10
 ;;9002226.02101,"1064,13811-0630-50 ",.01)
 ;;13811-0630-50
 ;;9002226.02101,"1064,13811-0630-50 ",.02)
 ;;13811-0630-50
 ;;9002226.02101,"1064,15338-0200-30 ",.01)
 ;;15338-0200-30
 ;;9002226.02101,"1064,15338-0200-30 ",.02)
 ;;15338-0200-30
 ;;9002226.02101,"1064,15338-0211-30 ",.01)
 ;;15338-0211-30
 ;;9002226.02101,"1064,15338-0211-30 ",.02)
 ;;15338-0211-30
 ;;9002226.02101,"1064,15338-0220-30 ",.01)
 ;;15338-0220-30
 ;;9002226.02101,"1064,15338-0220-30 ",.02)
 ;;15338-0220-30
 ;;9002226.02101,"1064,15338-0233-30 ",.01)
 ;;15338-0233-30
 ;;9002226.02101,"1064,15338-0233-30 ",.02)
 ;;15338-0233-30
 ;;9002226.02101,"1064,16252-0541-30 ",.01)
 ;;16252-0541-30
 ;;9002226.02101,"1064,16252-0541-30 ",.02)
 ;;16252-0541-30
 ;;9002226.02101,"1064,16252-0542-90 ",.01)
 ;;16252-0542-90
 ;;9002226.02101,"1064,16252-0542-90 ",.02)
 ;;16252-0542-90
 ;;9002226.02101,"1064,16252-0543-90 ",.01)
 ;;16252-0543-90
 ;;9002226.02101,"1064,16252-0543-90 ",.02)
 ;;16252-0543-90
 ;;9002226.02101,"1064,16252-0570-30 ",.01)
 ;;16252-0570-30
 ;;9002226.02101,"1064,16252-0570-30 ",.02)
 ;;16252-0570-30
 ;;9002226.02101,"1064,16252-0571-01 ",.01)
 ;;16252-0571-01
 ;;9002226.02101,"1064,16252-0571-01 ",.02)
 ;;16252-0571-01
 ;;9002226.02101,"1064,16252-0571-50 ",.01)
 ;;16252-0571-50
 ;;9002226.02101,"1064,16252-0571-50 ",.02)
 ;;16252-0571-50
 ;;9002226.02101,"1064,16252-0572-01 ",.01)
 ;;16252-0572-01
 ;;9002226.02101,"1064,16252-0572-01 ",.02)
 ;;16252-0572-01
 ;;9002226.02101,"1064,16252-0572-50 ",.01)
 ;;16252-0572-50
 ;;9002226.02101,"1064,16252-0572-50 ",.02)
 ;;16252-0572-50
 ;;9002226.02101,"1064,16252-0573-01 ",.01)
 ;;16252-0573-01
 ;;9002226.02101,"1064,16252-0573-01 ",.02)
 ;;16252-0573-01
 ;;9002226.02101,"1064,16252-0573-50 ",.01)
 ;;16252-0573-50
 ;;9002226.02101,"1064,16252-0573-50 ",.02)
 ;;16252-0573-50
 ;;9002226.02101,"1064,16252-0610-01 ",.01)
 ;;16252-0610-01
 ;;9002226.02101,"1064,16252-0610-01 ",.02)
 ;;16252-0610-01
 ;;9002226.02101,"1064,16252-0611-01 ",.01)
 ;;16252-0611-01
 ;;9002226.02101,"1064,16252-0611-01 ",.02)
 ;;16252-0611-01
 ;;9002226.02101,"1064,16252-0612-01 ",.01)
 ;;16252-0612-01
 ;;9002226.02101,"1064,16252-0612-01 ",.02)
 ;;16252-0612-01
 ;;9002226.02101,"1064,16252-0613-01 ",.01)
 ;;16252-0613-01
 ;;9002226.02101,"1064,16252-0613-01 ",.02)
 ;;16252-0613-01
 ;;9002226.02101,"1064,16252-0614-01 ",.01)
 ;;16252-0614-01
 ;;9002226.02101,"1064,16252-0614-01 ",.02)
 ;;16252-0614-01
 ;;9002226.02101,"1064,16590-0309-30 ",.01)
 ;;16590-0309-30
 ;;9002226.02101,"1064,16590-0309-30 ",.02)
 ;;16590-0309-30
 ;;9002226.02101,"1064,16590-0309-60 ",.01)
 ;;16590-0309-60
 ;;9002226.02101,"1064,16590-0309-60 ",.02)
 ;;16590-0309-60
 ;;9002226.02101,"1064,16590-0309-72 ",.01)
 ;;16590-0309-72
 ;;9002226.02101,"1064,16590-0309-72 ",.02)
 ;;16590-0309-72
 ;;9002226.02101,"1064,16590-0309-90 ",.01)
 ;;16590-0309-90
 ;;9002226.02101,"1064,16590-0309-90 ",.02)
 ;;16590-0309-90
 ;;9002226.02101,"1064,18837-0277-30 ",.01)
 ;;18837-0277-30
 ;;9002226.02101,"1064,18837-0277-30 ",.02)
 ;;18837-0277-30
 ;;9002226.02101,"1064,21695-0326-30 ",.01)
 ;;21695-0326-30
 ;;9002226.02101,"1064,21695-0326-30 ",.02)
 ;;21695-0326-30
 ;;9002226.02101,"1064,21695-0327-30 ",.01)
 ;;21695-0327-30
 ;;9002226.02101,"1064,21695-0327-30 ",.02)
 ;;21695-0327-30
 ;;9002226.02101,"1064,21695-0328-30 ",.01)
 ;;21695-0328-30
 ;;9002226.02101,"1064,21695-0328-30 ",.02)
 ;;21695-0328-30
 ;;9002226.02101,"1064,21695-0329-30 ",.01)
 ;;21695-0329-30
 ;;9002226.02101,"1064,21695-0329-30 ",.02)
 ;;21695-0329-30
 ;;9002226.02101,"1064,21695-0329-90 ",.01)
 ;;21695-0329-90
 ;;9002226.02101,"1064,21695-0329-90 ",.02)
 ;;21695-0329-90
 ;;9002226.02101,"1064,21695-0330-20 ",.01)
 ;;21695-0330-20
 ;;9002226.02101,"1064,21695-0330-20 ",.02)
 ;;21695-0330-20
 ;;9002226.02101,"1064,21695-0330-30 ",.01)
 ;;21695-0330-30
 ;;9002226.02101,"1064,21695-0330-30 ",.02)
 ;;21695-0330-30
 ;;9002226.02101,"1064,21695-0330-90 ",.01)
 ;;21695-0330-90
 ;;9002226.02101,"1064,21695-0330-90 ",.02)
 ;;21695-0330-90
 ;;9002226.02101,"1064,21695-0331-30 ",.01)
 ;;21695-0331-30
 ;;9002226.02101,"1064,21695-0331-30 ",.02)
 ;;21695-0331-30
 ;;9002226.02101,"1064,21695-0393-30 ",.01)
 ;;21695-0393-30
 ;;9002226.02101,"1064,21695-0393-30 ",.02)
 ;;21695-0393-30
 ;;9002226.02101,"1064,21695-0394-30 ",.01)
 ;;21695-0394-30
 ;;9002226.02101,"1064,21695-0394-30 ",.02)
 ;;21695-0394-30
 ;;9002226.02101,"1064,21695-0477-30 ",.01)
 ;;21695-0477-30
 ;;9002226.02101,"1064,21695-0477-30 ",.02)
 ;;21695-0477-30
 ;;9002226.02101,"1064,21695-0478-30 ",.01)
 ;;21695-0478-30
 ;;9002226.02101,"1064,21695-0478-30 ",.02)
 ;;21695-0478-30
 ;;9002226.02101,"1064,21695-0487-30 ",.01)
 ;;21695-0487-30
 ;;9002226.02101,"1064,21695-0487-30 ",.02)
 ;;21695-0487-30
 ;;9002226.02101,"1064,21695-0488-30 ",.01)
 ;;21695-0488-30
 ;;9002226.02101,"1064,21695-0488-30 ",.02)
 ;;21695-0488-30
 ;;9002226.02101,"1064,21695-0489-90 ",.01)
 ;;21695-0489-90
 ;;9002226.02101,"1064,21695-0489-90 ",.02)
 ;;21695-0489-90
 ;;9002226.02101,"1064,21695-0733-30 ",.01)
 ;;21695-0733-30
 ;;9002226.02101,"1064,21695-0733-30 ",.02)
 ;;21695-0733-30
 ;;9002226.02101,"1064,21695-0780-30 ",.01)
 ;;21695-0780-30
 ;;9002226.02101,"1064,21695-0780-30 ",.02)
 ;;21695-0780-30
 ;;9002226.02101,"1064,21695-0821-30 ",.01)
 ;;21695-0821-30
 ;;9002226.02101,"1064,21695-0821-30 ",.02)
 ;;21695-0821-30
 ;;9002226.02101,"1064,21695-0877-30 ",.01)
 ;;21695-0877-30
 ;;9002226.02101,"1064,21695-0877-30 ",.02)
 ;;21695-0877-30
 ;;9002226.02101,"1064,23155-0060-01 ",.01)
 ;;23155-0060-01
 ;;9002226.02101,"1064,23155-0060-01 ",.02)
 ;;23155-0060-01
 ;;9002226.02101,"1064,23155-0061-01 ",.01)
 ;;23155-0061-01
 ;;9002226.02101,"1064,23155-0061-01 ",.02)
 ;;23155-0061-01
 ;;9002226.02101,"1064,23490-5118-01 ",.01)
 ;;23490-5118-01
 ;;9002226.02101,"1064,23490-5118-01 ",.02)
 ;;23490-5118-01
 ;;9002226.02101,"1064,23490-5119-01 ",.01)
 ;;23490-5119-01
 ;;9002226.02101,"1064,23490-5119-01 ",.02)
 ;;23490-5119-01
 ;;9002226.02101,"1064,23490-5120-03 ",.01)
 ;;23490-5120-03
 ;;9002226.02101,"1064,23490-5120-03 ",.02)
 ;;23490-5120-03
 ;;9002226.02101,"1064,23490-5120-09 ",.01)
 ;;23490-5120-09
 ;;9002226.02101,"1064,23490-5120-09 ",.02)
 ;;23490-5120-09
 ;;9002226.02101,"1064,23490-5121-01 ",.01)
 ;;23490-5121-01
 ;;9002226.02101,"1064,23490-5121-01 ",.02)
 ;;23490-5121-01
 ;;9002226.02101,"1064,23490-5191-01 ",.01)
 ;;23490-5191-01
 ;;9002226.02101,"1064,23490-5191-01 ",.02)
 ;;23490-5191-01
 ;;9002226.02101,"1064,23490-5192-01 ",.01)
 ;;23490-5192-01
 ;;9002226.02101,"1064,23490-5192-01 ",.02)
 ;;23490-5192-01
 ;;9002226.02101,"1064,23490-5193-01 ",.01)
 ;;23490-5193-01
 ;;9002226.02101,"1064,23490-5193-01 ",.02)
 ;;23490-5193-01
 ;;9002226.02101,"1064,23490-5193-02 ",.01)
 ;;23490-5193-02
 ;;9002226.02101,"1064,23490-5193-02 ",.02)
 ;;23490-5193-02
 ;;9002226.02101,"1064,23490-5193-03 ",.01)
 ;;23490-5193-03
 ;;9002226.02101,"1064,23490-5193-03 ",.02)
 ;;23490-5193-03
 ;;9002226.02101,"1064,23490-5194-00 ",.01)
 ;;23490-5194-00
 ;;9002226.02101,"1064,23490-5194-00 ",.02)
 ;;23490-5194-00
 ;;9002226.02101,"1064,23490-5194-01 ",.01)
 ;;23490-5194-01
 ;;9002226.02101,"1064,23490-5194-01 ",.02)
 ;;23490-5194-01
 ;;9002226.02101,"1064,23490-5194-02 ",.01)
 ;;23490-5194-02
 ;;9002226.02101,"1064,23490-5194-02 ",.02)
 ;;23490-5194-02
 ;;9002226.02101,"1064,23490-5491-01 ",.01)
 ;;23490-5491-01
 ;;9002226.02101,"1064,23490-5491-01 ",.02)
 ;;23490-5491-01
 ;;9002226.02101,"1064,23490-5491-02 ",.01)
 ;;23490-5491-02
 ;;9002226.02101,"1064,23490-5491-02 ",.02)
 ;;23490-5491-02
 ;;9002226.02101,"1064,23490-5491-08 ",.01)
 ;;23490-5491-08
 ;;9002226.02101,"1064,23490-5491-08 ",.02)
 ;;23490-5491-08
 ;;9002226.02101,"1064,23490-5491-09 ",.01)
 ;;23490-5491-09
 ;;9002226.02101,"1064,23490-5491-09 ",.02)
 ;;23490-5491-09
 ;;9002226.02101,"1064,23490-5492-01 ",.01)
 ;;23490-5492-01
 ;;9002226.02101,"1064,23490-5492-01 ",.02)
 ;;23490-5492-01
 ;;9002226.02101,"1064,23490-5492-02 ",.01)
 ;;23490-5492-02
 ;;9002226.02101,"1064,23490-5492-02 ",.02)
 ;;23490-5492-02
 ;;9002226.02101,"1064,23490-5494-01 ",.01)
 ;;23490-5494-01
 ;;9002226.02101,"1064,23490-5494-01 ",.02)
 ;;23490-5494-01
 ;;9002226.02101,"1064,23490-5494-02 ",.01)
 ;;23490-5494-02
 ;;9002226.02101,"1064,23490-5494-02 ",.02)
 ;;23490-5494-02
 ;;9002226.02101,"1064,23490-5815-00 ",.01)
 ;;23490-5815-00
 ;;9002226.02101,"1064,23490-5815-00 ",.02)
 ;;23490-5815-00
 ;;9002226.02101,"1064,23490-5815-01 ",.01)
 ;;23490-5815-01
 ;;9002226.02101,"1064,23490-5815-01 ",.02)
 ;;23490-5815-01
 ;;9002226.02101,"1064,23490-5816-01 ",.01)
 ;;23490-5816-01
 ;;9002226.02101,"1064,23490-5816-01 ",.02)
 ;;23490-5816-01
 ;;9002226.02101,"1064,23490-5816-02 ",.01)
 ;;23490-5816-02
 ;;9002226.02101,"1064,23490-5816-02 ",.02)
 ;;23490-5816-02
 ;;9002226.02101,"1064,23490-5816-06 ",.01)
 ;;23490-5816-06
 ;;9002226.02101,"1064,23490-5816-06 ",.02)
 ;;23490-5816-06
 ;;9002226.02101,"1064,23490-5817-02 ",.01)
 ;;23490-5817-02
 ;;9002226.02101,"1064,23490-5817-02 ",.02)
 ;;23490-5817-02
 ;;9002226.02101,"1064,23490-5818-02 ",.01)
 ;;23490-5818-02
 ;;9002226.02101,"1064,23490-5818-02 ",.02)
 ;;23490-5818-02
 ;;9002226.02101,"1064,23490-5819-02 ",.01)
 ;;23490-5819-02
 ;;9002226.02101,"1064,23490-5819-02 ",.02)
 ;;23490-5819-02
 ;;9002226.02101,"1064,23490-5820-01 ",.01)
 ;;23490-5820-01
 ;;9002226.02101,"1064,23490-5820-01 ",.02)
 ;;23490-5820-01
 ;;9002226.02101,"1064,23490-5821-01 ",.01)
 ;;23490-5821-01
 ;;9002226.02101,"1064,23490-5821-01 ",.02)
 ;;23490-5821-01
 ;;9002226.02101,"1064,23490-5822-01 ",.01)
 ;;23490-5822-01
 ;;9002226.02101,"1064,23490-5822-01 ",.02)
 ;;23490-5822-01
 ;;9002226.02101,"1064,23490-9364-03 ",.01)
 ;;23490-9364-03
 ;;9002226.02101,"1064,23490-9364-03 ",.02)
 ;;23490-9364-03
 ;;9002226.02101,"1064,24658-0200-01 ",.01)
 ;;24658-0200-01
 ;;9002226.02101,"1064,24658-0200-01 ",.02)
 ;;24658-0200-01
 ;;9002226.02101,"1064,24658-0200-05 ",.01)
 ;;24658-0200-05
 ;;9002226.02101,"1064,24658-0200-05 ",.02)
 ;;24658-0200-05
 ;;9002226.02101,"1064,24658-0201-01 ",.01)
 ;;24658-0201-01
 ;;9002226.02101,"1064,24658-0201-01 ",.02)
 ;;24658-0201-01
 ;;9002226.02101,"1064,24658-0201-05 ",.01)
 ;;24658-0201-05
 ;;9002226.02101,"1064,24658-0201-05 ",.02)
 ;;24658-0201-05
 ;;9002226.02101,"1064,24658-0202-01 ",.01)
 ;;24658-0202-01
 ;;9002226.02101,"1064,24658-0202-01 ",.02)
 ;;24658-0202-01
 ;;9002226.02101,"1064,24658-0202-05 ",.01)
 ;;24658-0202-05
 ;;9002226.02101,"1064,24658-0202-05 ",.02)
 ;;24658-0202-05
 ;;9002226.02101,"1064,24658-0203-01 ",.01)
 ;;24658-0203-01
 ;;9002226.02101,"1064,24658-0203-01 ",.02)
 ;;24658-0203-01
 ;;9002226.02101,"1064,24658-0203-05 ",.01)
 ;;24658-0203-05
 ;;9002226.02101,"1064,24658-0203-05 ",.02)
 ;;24658-0203-05
 ;;9002226.02101,"1064,24658-0240-10 ",.01)
 ;;24658-0240-10
 ;;9002226.02101,"1064,24658-0240-10 ",.02)
 ;;24658-0240-10
 ;;9002226.02101,"1064,24658-0240-90 ",.01)
 ;;24658-0240-90
 ;;9002226.02101,"1064,24658-0240-90 ",.02)
 ;;24658-0240-90
 ;;9002226.02101,"1064,24658-0241-10 ",.01)
 ;;24658-0241-10
 ;;9002226.02101,"1064,24658-0241-10 ",.02)
 ;;24658-0241-10
 ;;9002226.02101,"1064,24658-0241-30 ",.01)
 ;;24658-0241-30
 ;;9002226.02101,"1064,24658-0241-30 ",.02)
 ;;24658-0241-30
 ;;9002226.02101,"1064,24658-0241-45 ",.01)
 ;;24658-0241-45
 ;;9002226.02101,"1064,24658-0241-45 ",.02)
 ;;24658-0241-45
 ;;9002226.02101,"1064,24658-0241-90 ",.01)
 ;;24658-0241-90
 ;;9002226.02101,"1064,24658-0241-90 ",.02)
 ;;24658-0241-90
 ;;9002226.02101,"1064,24658-0242-10 ",.01)
 ;;24658-0242-10
 ;;9002226.02101,"1064,24658-0242-10 ",.02)
 ;;24658-0242-10
 ;;9002226.02101,"1064,24658-0242-15 ",.01)
 ;;24658-0242-15
 ;;9002226.02101,"1064,24658-0242-15 ",.02)
 ;;24658-0242-15
 ;;9002226.02101,"1064,24658-0242-18 ",.01)
 ;;24658-0242-18
 ;;9002226.02101,"1064,24658-0242-18 ",.02)
 ;;24658-0242-18
 ;;9002226.02101,"1064,24658-0242-30 ",.01)
 ;;24658-0242-30
 ;;9002226.02101,"1064,24658-0242-30 ",.02)
 ;;24658-0242-30
 ;;9002226.02101,"1064,24658-0242-45 ",.01)
 ;;24658-0242-45