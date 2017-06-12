BGP47D81 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 16, 2014;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"734,68180-0182-02 ",.02)
 ;;68180-0182-02
 ;;9002226.02101,"734,68180-0182-03 ",.01)
 ;;68180-0182-03
 ;;9002226.02101,"734,68180-0182-03 ",.02)
 ;;68180-0182-03
 ;;9002226.02101,"734,68180-0202-01 ",.01)
 ;;68180-0202-01
 ;;9002226.02101,"734,68180-0202-01 ",.02)
 ;;68180-0202-01
 ;;9002226.02101,"734,68180-0202-02 ",.01)
 ;;68180-0202-02
 ;;9002226.02101,"734,68180-0202-02 ",.02)
 ;;68180-0202-02
 ;;9002226.02101,"734,68180-0202-03 ",.01)
 ;;68180-0202-03
 ;;9002226.02101,"734,68180-0202-03 ",.02)
 ;;68180-0202-03
 ;;9002226.02101,"734,68180-0240-01 ",.01)
 ;;68180-0240-01
 ;;9002226.02101,"734,68180-0240-01 ",.02)
 ;;68180-0240-01
 ;;9002226.02101,"734,68180-0240-08 ",.01)
 ;;68180-0240-08
 ;;9002226.02101,"734,68180-0240-08 ",.02)
 ;;68180-0240-08
 ;;9002226.02101,"734,68180-0241-01 ",.01)
 ;;68180-0241-01
 ;;9002226.02101,"734,68180-0241-01 ",.02)
 ;;68180-0241-01
 ;;9002226.02101,"734,68180-0241-02 ",.01)
 ;;68180-0241-02
 ;;9002226.02101,"734,68180-0241-02 ",.02)
 ;;68180-0241-02
 ;;9002226.02101,"734,68180-0241-08 ",.01)
 ;;68180-0241-08
 ;;9002226.02101,"734,68180-0241-08 ",.02)
 ;;68180-0241-08
 ;;9002226.02101,"734,68180-0242-01 ",.01)
 ;;68180-0242-01
 ;;9002226.02101,"734,68180-0242-01 ",.02)
 ;;68180-0242-01
 ;;9002226.02101,"734,68180-0242-20 ",.01)
 ;;68180-0242-20
 ;;9002226.02101,"734,68180-0242-20 ",.02)
 ;;68180-0242-20
 ;;9002226.02101,"734,68180-0302-20 ",.01)
 ;;68180-0302-20
 ;;9002226.02101,"734,68180-0302-20 ",.02)
 ;;68180-0302-20
 ;;9002226.02101,"734,68180-0302-60 ",.01)
 ;;68180-0302-60
 ;;9002226.02101,"734,68180-0302-60 ",.02)
 ;;68180-0302-60
 ;;9002226.02101,"734,68180-0303-20 ",.01)
 ;;68180-0303-20
 ;;9002226.02101,"734,68180-0303-20 ",.02)
 ;;68180-0303-20
 ;;9002226.02101,"734,68180-0303-60 ",.01)
 ;;68180-0303-60
 ;;9002226.02101,"734,68180-0303-60 ",.02)
 ;;68180-0303-60
 ;;9002226.02101,"734,68180-0379-06 ",.01)
 ;;68180-0379-06
 ;;9002226.02101,"734,68180-0379-06 ",.02)
 ;;68180-0379-06
 ;;9002226.02101,"734,68180-0380-06 ",.01)
 ;;68180-0380-06
 ;;9002226.02101,"734,68180-0380-06 ",.02)
 ;;68180-0380-06
 ;;9002226.02101,"734,68180-0381-06 ",.01)
 ;;68180-0381-06
 ;;9002226.02101,"734,68180-0381-06 ",.02)
 ;;68180-0381-06
 ;;9002226.02101,"734,68180-0401-01 ",.01)
 ;;68180-0401-01
 ;;9002226.02101,"734,68180-0401-01 ",.02)
 ;;68180-0401-01
 ;;9002226.02101,"734,68180-0401-02 ",.01)
 ;;68180-0401-02
 ;;9002226.02101,"734,68180-0401-02 ",.02)
 ;;68180-0401-02
 ;;9002226.02101,"734,68180-0401-03 ",.01)
 ;;68180-0401-03
 ;;9002226.02101,"734,68180-0401-03 ",.02)
 ;;68180-0401-03
 ;;9002226.02101,"734,68180-0402-01 ",.01)
 ;;68180-0402-01
 ;;9002226.02101,"734,68180-0402-01 ",.02)
 ;;68180-0402-01
 ;;9002226.02101,"734,68180-0402-02 ",.01)
 ;;68180-0402-02
 ;;9002226.02101,"734,68180-0402-02 ",.02)
 ;;68180-0402-02
 ;;9002226.02101,"734,68180-0402-03 ",.01)
 ;;68180-0402-03
 ;;9002226.02101,"734,68180-0402-03 ",.02)
 ;;68180-0402-03
 ;;9002226.02101,"734,68180-0403-01 ",.01)
 ;;68180-0403-01
 ;;9002226.02101,"734,68180-0403-01 ",.02)
 ;;68180-0403-01
 ;;9002226.02101,"734,68180-0404-01 ",.01)
 ;;68180-0404-01
 ;;9002226.02101,"734,68180-0404-01 ",.02)
 ;;68180-0404-01
 ;;9002226.02101,"734,68180-0404-02 ",.01)
 ;;68180-0404-02
 ;;9002226.02101,"734,68180-0404-02 ",.02)
 ;;68180-0404-02
 ;;9002226.02101,"734,68180-0611-01 ",.01)
 ;;68180-0611-01
 ;;9002226.02101,"734,68180-0611-01 ",.02)
 ;;68180-0611-01
 ;;9002226.02101,"734,68180-0611-10 ",.01)
 ;;68180-0611-10
 ;;9002226.02101,"734,68180-0611-10 ",.02)
 ;;68180-0611-10
 ;;9002226.02101,"734,68180-0622-01 ",.01)
 ;;68180-0622-01
 ;;9002226.02101,"734,68180-0622-01 ",.02)
 ;;68180-0622-01
 ;;9002226.02101,"734,68180-0622-10 ",.01)
 ;;68180-0622-10
 ;;9002226.02101,"734,68180-0622-10 ",.02)
 ;;68180-0622-10
 ;;9002226.02101,"734,68180-0633-01 ",.01)
 ;;68180-0633-01
 ;;9002226.02101,"734,68180-0633-01 ",.02)
 ;;68180-0633-01
 ;;9002226.02101,"734,68180-0633-10 ",.01)
 ;;68180-0633-10
 ;;9002226.02101,"734,68180-0633-10 ",.02)
 ;;68180-0633-10
 ;;9002226.02101,"734,68180-0644-01 ",.01)
 ;;68180-0644-01
 ;;9002226.02101,"734,68180-0644-01 ",.02)
 ;;68180-0644-01
 ;;9002226.02101,"734,68180-0644-10 ",.01)
 ;;68180-0644-10
 ;;9002226.02101,"734,68180-0644-10 ",.02)
 ;;68180-0644-10
 ;;9002226.02101,"734,68180-0657-01 ",.01)
 ;;68180-0657-01
 ;;9002226.02101,"734,68180-0657-01 ",.02)
 ;;68180-0657-01
 ;;9002226.02101,"734,68180-0711-60 ",.01)
 ;;68180-0711-60
 ;;9002226.02101,"734,68180-0711-60 ",.02)
 ;;68180-0711-60
 ;;9002226.02101,"734,68180-0722-10 ",.01)
 ;;68180-0722-10
 ;;9002226.02101,"734,68180-0722-10 ",.02)
 ;;68180-0722-10
 ;;9002226.02101,"734,68180-0722-20 ",.01)
 ;;68180-0722-20
 ;;9002226.02101,"734,68180-0722-20 ",.02)
 ;;68180-0722-20
 ;;9002226.02101,"734,68180-0723-10 ",.01)
 ;;68180-0723-10
 ;;9002226.02101,"734,68180-0723-10 ",.02)
 ;;68180-0723-10
 ;;9002226.02101,"734,68180-0723-20 ",.01)
 ;;68180-0723-20
 ;;9002226.02101,"734,68180-0723-20 ",.02)
 ;;68180-0723-20
 ;;9002226.02101,"734,68258-3012-01 ",.01)
 ;;68258-3012-01
 ;;9002226.02101,"734,68258-3012-01 ",.02)
 ;;68258-3012-01
 ;;9002226.02101,"734,68258-9300-02 ",.01)
 ;;68258-9300-02
 ;;9002226.02101,"734,68258-9300-02 ",.02)
 ;;68258-9300-02
 ;;9002226.02101,"734,68308-0710-10 ",.01)
 ;;68308-0710-10
 ;;9002226.02101,"734,68308-0710-10 ",.02)
 ;;68308-0710-10
 ;;9002226.02101,"734,68308-0775-60 ",.01)
 ;;68308-0775-60
 ;;9002226.02101,"734,68308-0775-60 ",.02)
 ;;68308-0775-60
 ;;9002226.02101,"734,68330-0001-01 ",.01)
 ;;68330-0001-01
 ;;9002226.02101,"734,68330-0001-01 ",.02)
 ;;68330-0001-01
 ;;9002226.02101,"734,68330-0001-10 ",.01)
 ;;68330-0001-10
 ;;9002226.02101,"734,68330-0001-10 ",.02)
 ;;68330-0001-10
 ;;9002226.02101,"734,68330-0002-01 ",.01)
 ;;68330-0002-01
 ;;9002226.02101,"734,68330-0002-01 ",.02)
 ;;68330-0002-01
 ;;9002226.02101,"734,68330-0002-10 ",.01)
 ;;68330-0002-10
 ;;9002226.02101,"734,68330-0002-10 ",.02)
 ;;68330-0002-10
 ;;9002226.02101,"734,68330-0003-01 ",.01)
 ;;68330-0003-01
 ;;9002226.02101,"734,68330-0003-01 ",.02)
 ;;68330-0003-01
 ;;9002226.02101,"734,68330-0003-10 ",.01)
 ;;68330-0003-10
 ;;9002226.02101,"734,68330-0003-10 ",.02)
 ;;68330-0003-10
 ;;9002226.02101,"734,68330-0004-01 ",.01)
 ;;68330-0004-01
 ;;9002226.02101,"734,68330-0004-01 ",.02)
 ;;68330-0004-01
 ;;9002226.02101,"734,68330-0004-10 ",.01)
 ;;68330-0004-10
 ;;9002226.02101,"734,68330-0004-10 ",.02)
 ;;68330-0004-10
 ;;9002226.02101,"734,68330-0005-01 ",.01)
 ;;68330-0005-01
 ;;9002226.02101,"734,68330-0005-01 ",.02)
 ;;68330-0005-01
 ;;9002226.02101,"734,68330-0006-01 ",.01)
 ;;68330-0006-01
 ;;9002226.02101,"734,68330-0006-01 ",.02)
 ;;68330-0006-01
 ;;9002226.02101,"734,68330-0015-25 ",.01)
 ;;68330-0015-25
 ;;9002226.02101,"734,68330-0015-25 ",.02)
 ;;68330-0015-25
 ;;9002226.02101,"734,68382-0015-01 ",.01)
 ;;68382-0015-01
 ;;9002226.02101,"734,68382-0015-01 ",.02)
 ;;68382-0015-01
 ;;9002226.02101,"734,68382-0015-18 ",.01)
 ;;68382-0015-18
 ;;9002226.02101,"734,68382-0015-18 ",.02)
 ;;68382-0015-18
 ;;9002226.02101,"734,68382-0016-01 ",.01)
 ;;68382-0016-01
 ;;9002226.02101,"734,68382-0016-01 ",.02)
 ;;68382-0016-01
 ;;9002226.02101,"734,68382-0016-18 ",.01)
 ;;68382-0016-18
 ;;9002226.02101,"734,68382-0016-18 ",.02)
 ;;68382-0016-18
 ;;9002226.02101,"734,68382-0017-01 ",.01)
 ;;68382-0017-01
 ;;9002226.02101,"734,68382-0017-01 ",.02)
 ;;68382-0017-01
 ;;9002226.02101,"734,68382-0017-18 ",.01)
 ;;68382-0017-18
 ;;9002226.02101,"734,68382-0017-18 ",.02)
 ;;68382-0017-18
 ;;9002226.02101,"734,68382-0761-14 ",.01)
 ;;68382-0761-14
 ;;9002226.02101,"734,68382-0761-14 ",.02)
 ;;68382-0761-14
 ;;9002226.02101,"734,68382-0762-14 ",.01)
 ;;68382-0762-14
 ;;9002226.02101,"734,68382-0762-14 ",.02)
 ;;68382-0762-14
 ;;9002226.02101,"734,68382-0763-14 ",.01)
 ;;68382-0763-14
 ;;9002226.02101,"734,68382-0763-14 ",.02)
 ;;68382-0763-14
 ;;9002226.02101,"734,68382-0764-05 ",.01)
 ;;68382-0764-05
 ;;9002226.02101,"734,68382-0764-05 ",.02)
 ;;68382-0764-05
 ;;9002226.02101,"734,68382-0764-06 ",.01)
 ;;68382-0764-06
 ;;9002226.02101,"734,68382-0764-06 ",.02)
 ;;68382-0764-06
 ;;9002226.02101,"734,68382-0765-05 ",.01)
 ;;68382-0765-05
 ;;9002226.02101,"734,68382-0765-05 ",.02)
 ;;68382-0765-05
 ;;9002226.02101,"734,68382-0765-06 ",.01)
 ;;68382-0765-06
 ;;9002226.02101,"734,68382-0765-06 ",.02)
 ;;68382-0765-06
 ;;9002226.02101,"734,68387-0117-30 ",.01)
 ;;68387-0117-30
 ;;9002226.02101,"734,68387-0117-30 ",.02)
 ;;68387-0117-30
 ;;9002226.02101,"734,68387-0190-20 ",.01)
 ;;68387-0190-20
 ;;9002226.02101,"734,68387-0190-20 ",.02)
 ;;68387-0190-20
 ;;9002226.02101,"734,68387-0190-21 ",.01)
 ;;68387-0190-21
 ;;9002226.02101,"734,68387-0190-21 ",.02)
 ;;68387-0190-21
 ;;9002226.02101,"734,68387-0190-30 ",.01)
 ;;68387-0190-30
 ;;9002226.02101,"734,68387-0190-30 ",.02)
 ;;68387-0190-30
 ;;9002226.02101,"734,68387-0190-40 ",.01)
 ;;68387-0190-40
 ;;9002226.02101,"734,68387-0190-40 ",.02)
 ;;68387-0190-40
 ;;9002226.02101,"734,68387-0380-20 ",.01)
 ;;68387-0380-20
 ;;9002226.02101,"734,68387-0380-20 ",.02)
 ;;68387-0380-20
 ;;9002226.02101,"734,68387-0385-20 ",.01)
 ;;68387-0385-20
 ;;9002226.02101,"734,68387-0385-20 ",.02)
 ;;68387-0385-20
 ;;9002226.02101,"734,68387-0385-30 ",.01)
 ;;68387-0385-30
 ;;9002226.02101,"734,68387-0385-30 ",.02)
 ;;68387-0385-30
 ;;9002226.02101,"734,68387-0385-60 ",.01)
 ;;68387-0385-60
 ;;9002226.02101,"734,68387-0385-60 ",.02)
 ;;68387-0385-60
 ;;9002226.02101,"734,68387-0390-20 ",.01)
 ;;68387-0390-20
 ;;9002226.02101,"734,68387-0390-20 ",.02)
 ;;68387-0390-20
 ;;9002226.02101,"734,68387-0390-28 ",.01)
 ;;68387-0390-28
 ;;9002226.02101,"734,68387-0390-28 ",.02)
 ;;68387-0390-28
 ;;9002226.02101,"734,68387-0430-30 ",.01)
 ;;68387-0430-30
 ;;9002226.02101,"734,68387-0430-30 ",.02)
 ;;68387-0430-30
 ;;9002226.02101,"734,68387-0430-40 ",.01)
 ;;68387-0430-40
 ;;9002226.02101,"734,68387-0430-40 ",.02)
 ;;68387-0430-40
 ;;9002226.02101,"734,68387-0470-14 ",.01)
 ;;68387-0470-14
 ;;9002226.02101,"734,68387-0470-14 ",.02)
 ;;68387-0470-14
 ;;9002226.02101,"734,68387-0470-20 ",.01)
 ;;68387-0470-20
 ;;9002226.02101,"734,68387-0470-20 ",.02)
 ;;68387-0470-20
 ;;9002226.02101,"734,68387-0534-01 ",.01)
 ;;68387-0534-01
 ;;9002226.02101,"734,68387-0534-01 ",.02)
 ;;68387-0534-01
 ;;9002226.02101,"734,68387-0535-15 ",.01)
 ;;68387-0535-15
 ;;9002226.02101,"734,68387-0535-15 ",.02)
 ;;68387-0535-15
 ;;9002226.02101,"734,68387-0535-20 ",.01)
 ;;68387-0535-20
 ;;9002226.02101,"734,68387-0535-20 ",.02)
 ;;68387-0535-20
 ;;9002226.02101,"734,68387-0565-06 ",.01)
 ;;68387-0565-06
 ;;9002226.02101,"734,68387-0565-06 ",.02)
 ;;68387-0565-06
 ;;9002226.02101,"734,68387-0580-15 ",.01)
 ;;68387-0580-15
 ;;9002226.02101,"734,68387-0580-15 ",.02)
 ;;68387-0580-15
 ;;9002226.02101,"734,68453-0112-10 ",.01)
 ;;68453-0112-10
 ;;9002226.02101,"734,68453-0112-10 ",.02)
 ;;68453-0112-10
 ;;9002226.02101,"734,68453-0113-10 ",.01)
 ;;68453-0113-10
 ;;9002226.02101,"734,68453-0113-10 ",.02)
 ;;68453-0113-10
 ;;9002226.02101,"734,68453-0115-05 ",.01)
 ;;68453-0115-05
 ;;9002226.02101,"734,68453-0115-05 ",.02)
 ;;68453-0115-05
 ;;9002226.02101,"734,68453-0142-03 ",.01)
 ;;68453-0142-03
 ;;9002226.02101,"734,68453-0142-03 ",.02)
 ;;68453-0142-03
 ;;9002226.02101,"734,68462-0339-01 ",.01)
 ;;68462-0339-01
 ;;9002226.02101,"734,68462-0339-01 ",.02)
 ;;68462-0339-01
 ;;9002226.02101,"734,68462-0339-05 ",.01)
 ;;68462-0339-05
 ;;9002226.02101,"734,68462-0339-05 ",.02)
 ;;68462-0339-05
 ;;9002226.02101,"734,68462-0340-01 ",.01)
 ;;68462-0340-01
 ;;9002226.02101,"734,68462-0340-01 ",.02)
 ;;68462-0340-01
 ;;9002226.02101,"734,68462-0340-05 ",.01)
 ;;68462-0340-05
 ;;9002226.02101,"734,68462-0340-05 ",.02)
 ;;68462-0340-05
 ;;9002226.02101,"734,68645-0030-20 ",.01)
 ;;68645-0030-20
 ;;9002226.02101,"734,68645-0030-20 ",.02)
 ;;68645-0030-20
 ;;9002226.02101,"734,68774-0120-60 ",.01)
 ;;68774-0120-60
 ;;9002226.02101,"734,68774-0120-60 ",.02)
 ;;68774-0120-60
 ;;9002226.02101,"734,68774-0122-60 ",.01)
 ;;68774-0122-60
 ;;9002226.02101,"734,68774-0122-60 ",.02)
 ;;68774-0122-60
 ;;9002226.02101,"734,68774-0302-29 ",.01)
 ;;68774-0302-29
 ;;9002226.02101,"734,68774-0302-29 ",.02)
 ;;68774-0302-29
 ;;9002226.02101,"734,68774-0302-35 ",.01)
 ;;68774-0302-35
 ;;9002226.02101,"734,68774-0302-35 ",.02)
 ;;68774-0302-35
 ;;9002226.02101,"734,68774-0303-29 ",.01)
 ;;68774-0303-29
 ;;9002226.02101,"734,68774-0303-29 ",.02)
 ;;68774-0303-29
 ;;9002226.02101,"734,68774-0303-35 ",.01)
 ;;68774-0303-35
 ;;9002226.02101,"734,68774-0303-35 ",.02)
 ;;68774-0303-35
 ;;9002226.02101,"734,68820-0016-10 ",.01)
 ;;68820-0016-10
 ;;9002226.02101,"734,68820-0016-10 ",.02)
 ;;68820-0016-10
 ;;9002226.02101,"734,68820-0017-08 ",.01)
 ;;68820-0017-08
 ;;9002226.02101,"734,68820-0017-08 ",.02)
 ;;68820-0017-08
 ;;9002226.02101,"734,68820-0018-15 ",.01)
 ;;68820-0018-15
 ;;9002226.02101,"734,68820-0018-15 ",.02)
 ;;68820-0018-15
 ;;9002226.02101,"734,68820-0018-16 ",.01)
 ;;68820-0018-16
 ;;9002226.02101,"734,68820-0018-16 ",.02)
 ;;68820-0018-16
 ;;9002226.02101,"734,68820-0018-17 ",.01)
 ;;68820-0018-17
 ;;9002226.02101,"734,68820-0018-17 ",.02)
 ;;68820-0018-17
 ;;9002226.02101,"734,68820-0019-15 ",.01)
 ;;68820-0019-15
 ;;9002226.02101,"734,68820-0019-15 ",.02)
 ;;68820-0019-15
 ;;9002226.02101,"734,68820-0019-16 ",.01)
 ;;68820-0019-16