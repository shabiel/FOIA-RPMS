BGP33N4 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 23, 2013;
 ;;13.0;IHS CLINICAL REPORTING;**1**;NOV 20, 2012;Build 7
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"747,00456-4310-01 ",.02)
 ;;00456-4310-01
 ;;9002226.02101,"747,00456-4320-00 ",.01)
 ;;00456-4320-00
 ;;9002226.02101,"747,00456-4320-00 ",.02)
 ;;00456-4320-00
 ;;9002226.02101,"747,00456-4320-01 ",.01)
 ;;00456-4320-01
 ;;9002226.02101,"747,00456-4320-01 ",.02)
 ;;00456-4320-01
 ;;9002226.02101,"747,00456-4320-02 ",.01)
 ;;00456-4320-02
 ;;9002226.02101,"747,00456-4320-02 ",.02)
 ;;00456-4320-02
 ;;9002226.02101,"747,00456-4330-00 ",.01)
 ;;00456-4330-00
 ;;9002226.02101,"747,00456-4330-00 ",.02)
 ;;00456-4330-00
 ;;9002226.02101,"747,00456-4330-01 ",.01)
 ;;00456-4330-01
 ;;9002226.02101,"747,00456-4330-01 ",.02)
 ;;00456-4330-01
 ;;9002226.02101,"747,00456-4330-02 ",.01)
 ;;00456-4330-02
 ;;9002226.02101,"747,00456-4330-02 ",.02)
 ;;00456-4330-02
 ;;9002226.02101,"747,00456-4345-01 ",.01)
 ;;00456-4345-01
 ;;9002226.02101,"747,00456-4345-01 ",.02)
 ;;00456-4345-01
 ;;9002226.02101,"747,00485-0059-16 ",.01)
 ;;00485-0059-16
 ;;9002226.02101,"747,00485-0059-16 ",.02)
 ;;00485-0059-16
 ;;9002226.02101,"747,00490-0080-00 ",.01)
 ;;00490-0080-00
 ;;9002226.02101,"747,00490-0080-00 ",.02)
 ;;00490-0080-00
 ;;9002226.02101,"747,00490-0080-30 ",.01)
 ;;00490-0080-30
 ;;9002226.02101,"747,00490-0080-30 ",.02)
 ;;00490-0080-30
 ;;9002226.02101,"747,00490-0080-60 ",.01)
 ;;00490-0080-60
 ;;9002226.02101,"747,00490-0080-60 ",.02)
 ;;00490-0080-60
 ;;9002226.02101,"747,00490-0080-90 ",.01)
 ;;00490-0080-90
 ;;9002226.02101,"747,00490-0080-90 ",.02)
 ;;00490-0080-90
 ;;9002226.02101,"747,00525-0376-16 ",.01)
 ;;00525-0376-16
 ;;9002226.02101,"747,00525-0376-16 ",.02)
 ;;00525-0376-16
 ;;9002226.02101,"747,00603-1190-58 ",.01)
 ;;00603-1190-58
 ;;9002226.02101,"747,00603-1190-58 ",.02)
 ;;00603-1190-58
 ;;9002226.02101,"747,00603-4653-02 ",.01)
 ;;00603-4653-02
 ;;9002226.02101,"747,00603-4653-02 ",.02)
 ;;00603-4653-02
 ;;9002226.02101,"747,00603-4653-16 ",.01)
 ;;00603-4653-16
 ;;9002226.02101,"747,00603-4653-16 ",.02)
 ;;00603-4653-16
 ;;9002226.02101,"747,00603-4654-02 ",.01)
 ;;00603-4654-02
 ;;9002226.02101,"747,00603-4654-02 ",.02)
 ;;00603-4654-02
 ;;9002226.02101,"747,00603-4654-16 ",.01)
 ;;00603-4654-16
 ;;9002226.02101,"747,00603-4654-16 ",.02)
 ;;00603-4654-16
 ;;9002226.02101,"747,00603-4655-02 ",.01)
 ;;00603-4655-02
 ;;9002226.02101,"747,00603-4655-02 ",.02)
 ;;00603-4655-02
 ;;9002226.02101,"747,00603-4655-16 ",.01)
 ;;00603-4655-16
 ;;9002226.02101,"747,00603-4655-16 ",.02)
 ;;00603-4655-16
 ;;9002226.02101,"747,00603-5944-21 ",.01)
 ;;00603-5944-21
 ;;9002226.02101,"747,00603-5944-21 ",.02)
 ;;00603-5944-21
 ;;9002226.02101,"747,00603-5944-28 ",.01)
 ;;00603-5944-28
 ;;9002226.02101,"747,00603-5944-28 ",.02)
 ;;00603-5944-28
 ;;9002226.02101,"747,00603-5945-21 ",.01)
 ;;00603-5945-21
 ;;9002226.02101,"747,00603-5945-21 ",.02)
 ;;00603-5945-21
 ;;9002226.02101,"747,00603-5945-28 ",.01)
 ;;00603-5945-28
 ;;9002226.02101,"747,00603-5945-28 ",.02)
 ;;00603-5945-28
 ;;9002226.02101,"747,00603-5945-32 ",.01)
 ;;00603-5945-32
 ;;9002226.02101,"747,00603-5945-32 ",.02)
 ;;00603-5945-32
 ;;9002226.02101,"747,00603-5946-21 ",.01)
 ;;00603-5946-21
 ;;9002226.02101,"747,00603-5946-21 ",.02)
 ;;00603-5946-21
 ;;9002226.02101,"747,00603-5946-28 ",.01)
 ;;00603-5946-28
 ;;9002226.02101,"747,00603-5946-28 ",.02)
 ;;00603-5946-28
 ;;9002226.02101,"747,00603-5946-32 ",.01)
 ;;00603-5946-32
 ;;9002226.02101,"747,00603-5946-32 ",.02)
 ;;00603-5946-32
 ;;9002226.02101,"747,00603-5950-21 ",.01)
 ;;00603-5950-21
 ;;9002226.02101,"747,00603-5950-21 ",.02)
 ;;00603-5950-21
 ;;9002226.02101,"747,00603-5951-21 ",.01)
 ;;00603-5951-21
 ;;9002226.02101,"747,00603-5951-21 ",.02)
 ;;00603-5951-21
 ;;9002226.02101,"747,00603-5952-21 ",.01)
 ;;00603-5952-21
 ;;9002226.02101,"747,00603-5952-21 ",.02)
 ;;00603-5952-21
 ;;9002226.02101,"747,00677-0003-01 ",.01)
 ;;00677-0003-01
 ;;9002226.02101,"747,00677-0003-01 ",.02)
 ;;00677-0003-01
 ;;9002226.02101,"747,00677-0007-01 ",.01)
 ;;00677-0007-01
 ;;9002226.02101,"747,00677-0007-01 ",.02)
 ;;00677-0007-01
 ;;9002226.02101,"747,00677-0817-01 ",.01)
 ;;00677-0817-01
 ;;9002226.02101,"747,00677-0817-01 ",.02)
 ;;00677-0817-01
 ;;9002226.02101,"747,00677-0846-01 ",.01)
 ;;00677-0846-01
 ;;9002226.02101,"747,00677-0846-01 ",.02)
 ;;00677-0846-01
 ;;9002226.02101,"747,00781-5555-31 ",.01)
 ;;00781-5555-31
 ;;9002226.02101,"747,00781-5555-31 ",.02)
 ;;00781-5555-31
 ;;9002226.02101,"747,00781-5555-92 ",.01)
 ;;00781-5555-92
 ;;9002226.02101,"747,00781-5555-92 ",.02)
 ;;00781-5555-92
 ;;9002226.02101,"747,00781-5560-31 ",.01)
 ;;00781-5560-31
 ;;9002226.02101,"747,00781-5560-31 ",.02)
 ;;00781-5560-31
 ;;9002226.02101,"747,00781-5560-92 ",.01)
 ;;00781-5560-92
 ;;9002226.02101,"747,00781-5560-92 ",.02)
 ;;00781-5560-92
 ;;9002226.02101,"747,00904-1556-60 ",.01)
 ;;00904-1556-60
 ;;9002226.02101,"747,00904-1556-60 ",.02)
 ;;00904-1556-60
 ;;9002226.02101,"747,00904-1557-60 ",.01)
 ;;00904-1557-60
 ;;9002226.02101,"747,00904-1557-60 ",.02)
 ;;00904-1557-60
 ;;9002226.02101,"747,00904-1558-60 ",.01)
 ;;00904-1558-60
 ;;9002226.02101,"747,00904-1558-60 ",.02)
 ;;00904-1558-60
 ;;9002226.02101,"747,00904-1610-61 ",.01)
 ;;00904-1610-61
 ;;9002226.02101,"747,00904-1610-61 ",.02)
 ;;00904-1610-61
 ;;9002226.02101,"747,00904-1611-60 ",.01)
 ;;00904-1611-60
 ;;9002226.02101,"747,00904-1611-60 ",.02)
 ;;00904-1611-60
 ;;9002226.02101,"747,00904-1611-61 ",.01)
 ;;00904-1611-61
 ;;9002226.02101,"747,00904-1611-61 ",.02)
 ;;00904-1611-61
 ;;9002226.02101,"747,00904-1612-60 ",.01)
 ;;00904-1612-60
 ;;9002226.02101,"747,00904-1612-60 ",.02)
 ;;00904-1612-60
 ;;9002226.02101,"747,00904-1612-61 ",.01)
 ;;00904-1612-61
 ;;9002226.02101,"747,00904-1612-61 ",.02)
 ;;00904-1612-61
 ;;9002226.02101,"747,00904-2273-60 ",.01)
 ;;00904-2273-60
 ;;9002226.02101,"747,00904-2273-60 ",.02)
 ;;00904-2273-60
 ;;9002226.02101,"747,00904-2273-80 ",.01)
 ;;00904-2273-80
 ;;9002226.02101,"747,00904-2273-80 ",.02)
 ;;00904-2273-80
 ;;9002226.02101,"747,00904-2283-60 ",.01)
 ;;00904-2283-60
 ;;9002226.02101,"747,00904-2283-60 ",.02)
 ;;00904-2283-60
 ;;9002226.02101,"747,00904-2283-80 ",.01)
 ;;00904-2283-80
 ;;9002226.02101,"747,00904-2283-80 ",.02)
 ;;00904-2283-80
 ;;9002226.02101,"747,00904-5887-61 ",.01)
 ;;00904-5887-61
 ;;9002226.02101,"747,00904-5887-61 ",.02)
 ;;00904-5887-61
 ;;9002226.02101,"747,00904-5888-61 ",.01)
 ;;00904-5888-61
 ;;9002226.02101,"747,00904-5888-61 ",.02)
 ;;00904-5888-61
 ;;9002226.02101,"747,00904-5889-61 ",.01)
 ;;00904-5889-61
 ;;9002226.02101,"747,00904-5889-61 ",.02)
 ;;00904-5889-61
 ;;9002226.02101,"747,10122-0901-12 ",.01)
 ;;10122-0901-12
 ;;9002226.02101,"747,10122-0901-12 ",.02)
 ;;10122-0901-12
 ;;9002226.02101,"747,10122-0902-12 ",.01)
 ;;10122-0902-12
 ;;9002226.02101,"747,10122-0902-12 ",.02)
 ;;10122-0902-12
 ;;9002226.02101,"747,10892-0150-65 ",.01)
 ;;10892-0150-65
 ;;9002226.02101,"747,10892-0150-65 ",.02)
 ;;10892-0150-65
 ;;9002226.02101,"747,12280-0042-90 ",.01)
 ;;12280-0042-90
 ;;9002226.02101,"747,12280-0042-90 ",.02)
 ;;12280-0042-90
 ;;9002226.02101,"747,13411-0151-01 ",.01)
 ;;13411-0151-01
 ;;9002226.02101,"747,13411-0151-01 ",.02)
 ;;13411-0151-01
 ;;9002226.02101,"747,13411-0151-03 ",.01)
 ;;13411-0151-03
 ;;9002226.02101,"747,13411-0151-03 ",.02)
 ;;13411-0151-03
 ;;9002226.02101,"747,13411-0151-06 ",.01)
 ;;13411-0151-06
 ;;9002226.02101,"747,13411-0151-06 ",.02)
 ;;13411-0151-06
 ;;9002226.02101,"747,13411-0151-09 ",.01)
 ;;13411-0151-09
 ;;9002226.02101,"747,13411-0151-09 ",.02)
 ;;13411-0151-09
 ;;9002226.02101,"747,13411-0151-15 ",.01)
 ;;13411-0151-15
 ;;9002226.02101,"747,13411-0151-15 ",.02)
 ;;13411-0151-15
 ;;9002226.02101,"747,13411-0160-01 ",.01)
 ;;13411-0160-01
 ;;9002226.02101,"747,13411-0160-01 ",.02)
 ;;13411-0160-01
 ;;9002226.02101,"747,13411-0160-03 ",.01)
 ;;13411-0160-03
 ;;9002226.02101,"747,13411-0160-03 ",.02)
 ;;13411-0160-03
 ;;9002226.02101,"747,13411-0160-06 ",.01)
 ;;13411-0160-06
 ;;9002226.02101,"747,13411-0160-06 ",.02)
 ;;13411-0160-06
 ;;9002226.02101,"747,13411-0160-09 ",.01)
 ;;13411-0160-09
 ;;9002226.02101,"747,13411-0160-09 ",.02)
 ;;13411-0160-09
 ;;9002226.02101,"747,13411-0160-15 ",.01)
 ;;13411-0160-15
 ;;9002226.02101,"747,13411-0160-15 ",.02)
 ;;13411-0160-15
 ;;9002226.02101,"747,13668-0079-05 ",.01)
 ;;13668-0079-05
 ;;9002226.02101,"747,13668-0079-05 ",.02)
 ;;13668-0079-05
 ;;9002226.02101,"747,13668-0079-30 ",.01)
 ;;13668-0079-30
 ;;9002226.02101,"747,13668-0079-30 ",.02)
 ;;13668-0079-30
 ;;9002226.02101,"747,13668-0079-90 ",.01)
 ;;13668-0079-90
 ;;9002226.02101,"747,13668-0079-90 ",.02)
 ;;13668-0079-90
 ;;9002226.02101,"747,13668-0080-05 ",.01)
 ;;13668-0080-05
 ;;9002226.02101,"747,13668-0080-05 ",.02)
 ;;13668-0080-05
 ;;9002226.02101,"747,13668-0080-30 ",.01)
 ;;13668-0080-30
 ;;9002226.02101,"747,13668-0080-30 ",.02)
 ;;13668-0080-30
 ;;9002226.02101,"747,13668-0080-90 ",.01)
 ;;13668-0080-90
 ;;9002226.02101,"747,13668-0080-90 ",.02)
 ;;13668-0080-90
 ;;9002226.02101,"747,13668-0081-30 ",.01)
 ;;13668-0081-30
 ;;9002226.02101,"747,13668-0081-30 ",.02)
 ;;13668-0081-30
 ;;9002226.02101,"747,13668-0081-90 ",.01)
 ;;13668-0081-90
 ;;9002226.02101,"747,13668-0081-90 ",.02)
 ;;13668-0081-90
 ;;9002226.02101,"747,15370-0021-10 ",.01)
 ;;15370-0021-10
 ;;9002226.02101,"747,15370-0021-10 ",.02)
 ;;15370-0021-10
 ;;9002226.02101,"747,16590-0025-20 ",.01)
 ;;16590-0025-20
 ;;9002226.02101,"747,16590-0025-20 ",.02)
 ;;16590-0025-20
 ;;9002226.02101,"747,17856-0644-30 ",.01)
 ;;17856-0644-30
 ;;9002226.02101,"747,17856-0644-30 ",.02)
 ;;17856-0644-30
 ;;9002226.02101,"747,17856-0644-31 ",.01)
 ;;17856-0644-31
 ;;9002226.02101,"747,17856-0644-31 ",.02)
 ;;17856-0644-31
 ;;9002226.02101,"747,21695-0196-01 ",.01)
 ;;21695-0196-01
 ;;9002226.02101,"747,21695-0196-01 ",.02)
 ;;21695-0196-01
 ;;9002226.02101,"747,21695-0197-01 ",.01)
 ;;21695-0197-01
 ;;9002226.02101,"747,21695-0197-01 ",.02)
 ;;21695-0197-01
 ;;9002226.02101,"747,23155-0062-01 ",.01)
 ;;23155-0062-01
 ;;9002226.02101,"747,23155-0062-01 ",.02)
 ;;23155-0062-01
 ;;9002226.02101,"747,23155-0063-01 ",.01)
 ;;23155-0063-01
 ;;9002226.02101,"747,23155-0063-01 ",.02)
 ;;23155-0063-01
 ;;9002226.02101,"747,23490-7355-01 ",.01)
 ;;23490-7355-01
 ;;9002226.02101,"747,23490-7355-01 ",.02)
 ;;23490-7355-01
 ;;9002226.02101,"747,23490-7542-01 ",.01)
 ;;23490-7542-01
 ;;9002226.02101,"747,23490-7542-01 ",.02)
 ;;23490-7542-01
 ;;9002226.02101,"747,24839-0226-01 ",.01)
 ;;24839-0226-01
 ;;9002226.02101,"747,24839-0226-01 ",.02)
 ;;24839-0226-01
 ;;9002226.02101,"747,24839-0227-16 ",.01)
 ;;24839-0227-16
 ;;9002226.02101,"747,24839-0227-16 ",.02)
 ;;24839-0227-16
 ;;9002226.02101,"747,29033-0001-01 ",.01)
 ;;29033-0001-01
 ;;9002226.02101,"747,29033-0001-01 ",.02)
 ;;29033-0001-01
 ;;9002226.02101,"747,29033-0002-01 ",.01)
 ;;29033-0002-01
 ;;9002226.02101,"747,29033-0002-01 ",.02)
 ;;29033-0002-01
 ;;9002226.02101,"747,35356-0099-14 ",.01)
 ;;35356-0099-14
 ;;9002226.02101,"747,35356-0099-14 ",.02)
 ;;35356-0099-14
 ;;9002226.02101,"747,35356-0126-60 ",.01)
 ;;35356-0126-60
 ;;9002226.02101,"747,35356-0126-60 ",.02)
 ;;35356-0126-60
 ;;9002226.02101,"747,35356-0157-01 ",.01)
 ;;35356-0157-01
 ;;9002226.02101,"747,35356-0157-01 ",.02)
 ;;35356-0157-01
 ;;9002226.02101,"747,38130-0012-01 ",.01)
 ;;38130-0012-01
 ;;9002226.02101,"747,38130-0012-01 ",.02)
 ;;38130-0012-01
 ;;9002226.02101,"747,42291-0621-90 ",.01)
 ;;42291-0621-90
 ;;9002226.02101,"747,42291-0621-90 ",.02)
 ;;42291-0621-90
 ;;9002226.02101,"747,42858-0701-01 ",.01)
 ;;42858-0701-01
 ;;9002226.02101,"747,42858-0701-01 ",.02)
 ;;42858-0701-01
 ;;9002226.02101,"747,42858-0702-01 ",.01)
 ;;42858-0702-01
 ;;9002226.02101,"747,42858-0702-01 ",.02)
 ;;42858-0702-01
 ;;9002226.02101,"747,43063-0380-15 ",.01)
 ;;43063-0380-15
 ;;9002226.02101,"747,43063-0380-15 ",.02)
 ;;43063-0380-15
 ;;9002226.02101,"747,43063-0380-30 ",.01)
 ;;43063-0380-30
 ;;9002226.02101,"747,43063-0380-30 ",.02)
 ;;43063-0380-30
 ;;9002226.02101,"747,43063-0381-21 ",.01)
 ;;43063-0381-21
 ;;9002226.02101,"747,43063-0381-21 ",.02)
 ;;43063-0381-21
 ;;9002226.02101,"747,43063-0381-30 ",.01)
 ;;43063-0381-30
 ;;9002226.02101,"747,43063-0381-30 ",.02)
 ;;43063-0381-30
 ;;9002226.02101,"747,45985-0633-08 ",.01)
 ;;45985-0633-08
 ;;9002226.02101,"747,45985-0633-08 ",.02)
 ;;45985-0633-08
 ;;9002226.02101,"747,45985-0647-01 ",.01)
 ;;45985-0647-01
 ;;9002226.02101,"747,45985-0647-01 ",.02)
 ;;45985-0647-01
 ;;9002226.02101,"747,49502-0689-61 ",.01)
 ;;49502-0689-61
 ;;9002226.02101,"747,49502-0689-61 ",.02)
 ;;49502-0689-61
 ;;9002226.02101,"747,49708-0644-90 ",.01)
 ;;49708-0644-90
 ;;9002226.02101,"747,49708-0644-90 ",.02)
 ;;49708-0644-90
 ;;9002226.02101,"747,49884-0303-02 ",.01)
 ;;49884-0303-02
 ;;9002226.02101,"747,49884-0303-02 ",.02)
 ;;49884-0303-02
 ;;9002226.02101,"747,49884-0304-02 ",.01)
 ;;49884-0304-02
 ;;9002226.02101,"747,49884-0304-02 ",.02)
 ;;49884-0304-02
 ;;9002226.02101,"747,49999-0533-30 ",.01)
 ;;49999-0533-30
 ;;9002226.02101,"747,49999-0533-30 ",.02)
 ;;49999-0533-30
 ;;9002226.02101,"747,49999-0533-90 ",.01)
 ;;49999-0533-90
 ;;9002226.02101,"747,49999-0533-90 ",.02)
 ;;49999-0533-90
 ;;9002226.02101,"747,49999-0550-00 ",.01)
 ;;49999-0550-00
 ;;9002226.02101,"747,49999-0550-00 ",.02)
 ;;49999-0550-00
 ;;9002226.02101,"747,49999-0614-01 ",.01)
 ;;49999-0614-01