BGP2VJ4 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 27, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
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
 ;;9002226.02101,"747,00603-5946-29 ",.01)
 ;;00603-5946-29
 ;;9002226.02101,"747,00603-5946-29 ",.02)
 ;;00603-5946-29
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
 ;;9002226.02101,"747,00904-1555-16 ",.01)
 ;;00904-1555-16
 ;;9002226.02101,"747,00904-1555-16 ",.02)
 ;;00904-1555-16
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
 ;;9002226.02101,"747,15370-0021-10 ",.01)
 ;;15370-0021-10
 ;;9002226.02101,"747,15370-0021-10 ",.02)
 ;;15370-0021-10
 ;;9002226.02101,"747,16590-0025-20 ",.01)
 ;;16590-0025-20
 ;;9002226.02101,"747,16590-0025-20 ",.02)
 ;;16590-0025-20
 ;;9002226.02101,"747,17236-0324-01 ",.01)
 ;;17236-0324-01
 ;;9002226.02101,"747,17236-0324-01 ",.02)
 ;;17236-0324-01
 ;;9002226.02101,"747,17236-0324-10 ",.01)
 ;;17236-0324-10
 ;;9002226.02101,"747,17236-0324-10 ",.02)
 ;;17236-0324-10
 ;;9002226.02101,"747,17236-0325-01 ",.01)
 ;;17236-0325-01
 ;;9002226.02101,"747,17236-0325-01 ",.02)
 ;;17236-0325-01
 ;;9002226.02101,"747,17236-0325-10 ",.01)
 ;;17236-0325-10
 ;;9002226.02101,"747,17236-0325-10 ",.02)
 ;;17236-0325-10
 ;;9002226.02101,"747,17236-0335-01 ",.01)
 ;;17236-0335-01
 ;;9002226.02101,"747,17236-0335-01 ",.02)
 ;;17236-0335-01
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
 ;;9002226.02101,"747,45985-0633-08 ",.01)
 ;;45985-0633-08
 ;;9002226.02101,"747,45985-0633-08 ",.02)
 ;;45985-0633-08
 ;;9002226.02101,"747,45985-0647-01 ",.01)
 ;;45985-0647-01
 ;;9002226.02101,"747,45985-0647-01 ",.02)
 ;;45985-0647-01
 ;;9002226.02101,"747,46672-0614-16 ",.01)
 ;;46672-0614-16
 ;;9002226.02101,"747,46672-0614-16 ",.02)
 ;;46672-0614-16
 ;;9002226.02101,"747,49502-0689-02 ",.01)
 ;;49502-0689-02
 ;;9002226.02101,"747,49502-0689-02 ",.02)
 ;;49502-0689-02
 ;;9002226.02101,"747,49502-0689-12 ",.01)
 ;;49502-0689-12
 ;;9002226.02101,"747,49502-0689-12 ",.02)
 ;;49502-0689-12
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
 ;;9002226.02101,"747,49999-0614-01 ",.02)
 ;;49999-0614-01
 ;;9002226.02101,"747,49999-0614-12 ",.01)
 ;;49999-0614-12
 ;;9002226.02101,"747,49999-0614-12 ",.02)
 ;;49999-0614-12
 ;;9002226.02101,"747,49999-0819-60 ",.01)
 ;;49999-0819-60
 ;;9002226.02101,"747,49999-0819-60 ",.02)
 ;;49999-0819-60
 ;;9002226.02101,"747,49999-0884-30 ",.01)
 ;;49999-0884-30
 ;;9002226.02101,"747,49999-0884-30 ",.02)
 ;;49999-0884-30
 ;;9002226.02101,"747,49999-0884-90 ",.01)
 ;;49999-0884-90
 ;;9002226.02101,"747,49999-0884-90 ",.02)
 ;;49999-0884-90
 ;;9002226.02101,"747,49999-0921-30 ",.01)
 ;;49999-0921-30
 ;;9002226.02101,"747,49999-0921-30 ",.02)
 ;;49999-0921-30
 ;;9002226.02101,"747,49999-0952-30 ",.01)
 ;;49999-0952-30
 ;;9002226.02101,"747,49999-0952-30 ",.02)
 ;;49999-0952-30
 ;;9002226.02101,"747,49999-0984-60 ",.01)
 ;;49999-0984-60
 ;;9002226.02101,"747,49999-0984-60 ",.02)
 ;;49999-0984-60
 ;;9002226.02101,"747,49999-0985-60 ",.01)
 ;;49999-0985-60
 ;;9002226.02101,"747,49999-0985-60 ",.02)
 ;;49999-0985-60
 ;;9002226.02101,"747,50111-0459-01 ",.01)
 ;;50111-0459-01
 ;;9002226.02101,"747,50111-0459-01 ",.02)
 ;;50111-0459-01
 ;;9002226.02101,"747,50111-0459-02 ",.01)
 ;;50111-0459-02
 ;;9002226.02101,"747,50111-0459-02 ",.02)
 ;;50111-0459-02
 ;;9002226.02101,"747,50111-0459-03 ",.01)
 ;;50111-0459-03
 ;;9002226.02101,"747,50111-0459-03 ",.02)
 ;;50111-0459-03
 ;;9002226.02101,"747,50111-0482-01 ",.01)
 ;;50111-0482-01
 ;;9002226.02101,"747,50111-0482-01 ",.02)
 ;;50111-0482-01
 ;;9002226.02101,"747,50111-0482-02 ",.01)
 ;;50111-0482-02
 ;;9002226.02101,"747,50111-0482-02 ",.02)
 ;;50111-0482-02
 ;;9002226.02101,"747,50111-0482-03 ",.01)
 ;;50111-0482-03
 ;;9002226.02101,"747,50111-0482-03 ",.02)
 ;;50111-0482-03
 ;;9002226.02101,"747,50111-0483-01 ",.01)
 ;;50111-0483-01
 ;;9002226.02101,"747,50111-0483-01 ",.02)
 ;;50111-0483-01
 ;;9002226.02101,"747,50111-0483-02 ",.01)
 ;;50111-0483-02
 ;;9002226.02101,"747,50111-0483-02 ",.02)
 ;;50111-0483-02
 ;;9002226.02101,"747,50111-0518-01 ",.01)
 ;;50111-0518-01
 ;;9002226.02101,"747,50111-0518-01 ",.02)
 ;;50111-0518-01
 ;;9002226.02101,"747,50242-0040-62 ",.01)
 ;;50242-0040-62
 ;;9002226.02101,"747,50242-0040-62 ",.02)
 ;;50242-0040-62
 ;;9002226.02101,"747,50383-0806-16 ",.01)
 ;;50383-0806-16
 ;;9002226.02101,"747,50383-0806-16 ",.02)
 ;;50383-0806-16
 ;;9002226.02101,"747,50474-0100-01 ",.01)
 ;;50474-0100-01
 ;;9002226.02101,"747,50474-0100-01 ",.02)
 ;;50474-0100-01
 ;;9002226.02101,"747,50474-0200-01 ",.01)
 ;;50474-0200-01
 ;;9002226.02101,"747,50474-0200-01 ",.02)
 ;;50474-0200-01
 ;;9002226.02101,"747,50474-0200-50 ",.01)
 ;;50474-0200-50
 ;;9002226.02101,"747,50474-0200-50 ",.02)
 ;;50474-0200-50
 ;;9002226.02101,"747,50474-0300-01 ",.01)
 ;;50474-0300-01
 ;;9002226.02101,"747,50474-0300-01 ",.02)
 ;;50474-0300-01
 ;;9002226.02101,"747,50474-0300-50 ",.01)
 ;;50474-0300-50
 ;;9002226.02101,"747,50474-0300-50 ",.02)
 ;;50474-0300-50
 ;;9002226.02101,"747,50474-0400-01 ",.01)
 ;;50474-0400-01
 ;;9002226.02101,"747,50474-0400-01 ",.02)
 ;;50474-0400-01
 ;;9002226.02101,"747,50991-0200-16 ",.01)
 ;;50991-0200-16
 ;;9002226.02101,"747,50991-0200-16 ",.02)
 ;;50991-0200-16
 ;;9002226.02101,"747,50991-0214-16 ",.01)
 ;;50991-0214-16
 ;;9002226.02101,"747,50991-0214-16 ",.02)
 ;;50991-0214-16
 ;;9002226.02101,"747,50991-0400-01 ",.01)
 ;;50991-0400-01
 ;;9002226.02101,"747,50991-0400-01 ",.02)
 ;;50991-0400-01
 ;;9002226.02101,"747,50991-0413-01 ",.01)
 ;;50991-0413-01
 ;;9002226.02101,"747,50991-0413-01 ",.02)
 ;;50991-0413-01
 ;;9002226.02101,"747,51991-0536-01 ",.01)
 ;;51991-0536-01
 ;;9002226.02101,"747,51991-0536-01 ",.02)
 ;;51991-0536-01
 ;;9002226.02101,"747,52959-0131-00 ",.01)
 ;;52959-0131-00
 ;;9002226.02101,"747,52959-0131-00 ",.02)
 ;;52959-0131-00
 ;;9002226.02101,"747,52959-0279-30 ",.01)
 ;;52959-0279-30
 ;;9002226.02101,"747,52959-0279-30 ",.02)
 ;;52959-0279-30
 ;;9002226.02101,"747,52959-0286-03 ",.01)
 ;;52959-0286-03
 ;;9002226.02101,"747,52959-0286-03 ",.02)
 ;;52959-0286-03
 ;;9002226.02101,"747,54569-0049-00 ",.01)
 ;;54569-0049-00
 ;;9002226.02101,"747,54569-0049-00 ",.02)
 ;;54569-0049-00
 ;;9002226.02101,"747,54569-0053-00 ",.01)
 ;;54569-0053-00