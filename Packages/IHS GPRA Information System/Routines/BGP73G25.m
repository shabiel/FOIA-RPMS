BGP73G25 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 05, 2017;
 ;;17.1;IHS CLINICAL REPORTING;;MAY 10, 2017;Build 29
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"869,00904-3990-61 ",.02)
 ;;00904-3990-61
 ;;9002226.02101,"869,00904-3991-61 ",.01)
 ;;00904-3991-61
 ;;9002226.02101,"869,00904-3991-61 ",.02)
 ;;00904-3991-61
 ;;9002226.02101,"869,00904-5219-60 ",.01)
 ;;00904-5219-60
 ;;9002226.02101,"869,00904-5219-60 ",.02)
 ;;00904-5219-60
 ;;9002226.02101,"869,00904-5676-61 ",.01)
 ;;00904-5676-61
 ;;9002226.02101,"869,00904-5676-61 ",.02)
 ;;00904-5676-61
 ;;9002226.02101,"869,00904-5677-61 ",.01)
 ;;00904-5677-61
 ;;9002226.02101,"869,00904-5677-61 ",.02)
 ;;00904-5677-61
 ;;9002226.02101,"869,00904-5678-61 ",.01)
 ;;00904-5678-61
 ;;9002226.02101,"869,00904-5678-61 ",.02)
 ;;00904-5678-61
 ;;9002226.02101,"869,00904-5784-61 ",.01)
 ;;00904-5784-61
 ;;9002226.02101,"869,00904-5784-61 ",.02)
 ;;00904-5784-61
 ;;9002226.02101,"869,00904-5785-61 ",.01)
 ;;00904-5785-61
 ;;9002226.02101,"869,00904-5785-61 ",.02)
 ;;00904-5785-61
 ;;9002226.02101,"869,00904-5913-61 ",.01)
 ;;00904-5913-61
 ;;9002226.02101,"869,00904-5913-61 ",.02)
 ;;00904-5913-61
 ;;9002226.02101,"869,00904-6084-61 ",.01)
 ;;00904-6084-61
 ;;9002226.02101,"869,00904-6084-61 ",.02)
 ;;00904-6084-61
 ;;9002226.02101,"869,00904-6085-61 ",.01)
 ;;00904-6085-61
 ;;9002226.02101,"869,00904-6085-61 ",.02)
 ;;00904-6085-61
 ;;9002226.02101,"869,00904-6086-61 ",.01)
 ;;00904-6086-61
 ;;9002226.02101,"869,00904-6086-61 ",.02)
 ;;00904-6086-61
 ;;9002226.02101,"869,00904-6087-61 ",.01)
 ;;00904-6087-61
 ;;9002226.02101,"869,00904-6087-61 ",.02)
 ;;00904-6087-61
 ;;9002226.02101,"869,00904-6088-61 ",.01)
 ;;00904-6088-61
 ;;9002226.02101,"869,00904-6088-61 ",.02)
 ;;00904-6088-61
 ;;9002226.02101,"869,00904-6089-61 ",.01)
 ;;00904-6089-61
 ;;9002226.02101,"869,00904-6089-61 ",.02)
 ;;00904-6089-61
 ;;9002226.02101,"869,00904-6093-61 ",.01)
 ;;00904-6093-61
 ;;9002226.02101,"869,00904-6093-61 ",.02)
 ;;00904-6093-61
 ;;9002226.02101,"869,00904-6109-61 ",.01)
 ;;00904-6109-61
 ;;9002226.02101,"869,00904-6109-61 ",.02)
 ;;00904-6109-61
 ;;9002226.02101,"869,00904-6110-61 ",.01)
 ;;00904-6110-61
 ;;9002226.02101,"869,00904-6110-61 ",.02)
 ;;00904-6110-61
 ;;9002226.02101,"869,00904-6111-61 ",.01)
 ;;00904-6111-61
 ;;9002226.02101,"869,00904-6111-61 ",.02)
 ;;00904-6111-61
 ;;9002226.02101,"869,00904-6112-61 ",.01)
 ;;00904-6112-61
 ;;9002226.02101,"869,00904-6112-61 ",.02)
 ;;00904-6112-61
 ;;9002226.02101,"869,00904-6129-61 ",.01)
 ;;00904-6129-61
 ;;9002226.02101,"869,00904-6129-61 ",.02)
 ;;00904-6129-61
 ;;9002226.02101,"869,00904-6246-61 ",.01)
 ;;00904-6246-61
 ;;9002226.02101,"869,00904-6246-61 ",.02)
 ;;00904-6246-61
 ;;9002226.02101,"869,00904-6247-61 ",.01)
 ;;00904-6247-61
 ;;9002226.02101,"869,00904-6247-61 ",.02)
 ;;00904-6247-61
 ;;9002226.02101,"869,00904-6248-61 ",.01)
 ;;00904-6248-61
 ;;9002226.02101,"869,00904-6248-61 ",.02)
 ;;00904-6248-61
 ;;9002226.02101,"869,00904-6314-61 ",.01)
 ;;00904-6314-61
 ;;9002226.02101,"869,00904-6314-61 ",.02)
 ;;00904-6314-61
 ;;9002226.02101,"869,00904-6315-61 ",.01)
 ;;00904-6315-61
 ;;9002226.02101,"869,00904-6315-61 ",.02)
 ;;00904-6315-61
 ;;9002226.02101,"869,00904-6331-61 ",.01)
 ;;00904-6331-61
 ;;9002226.02101,"869,00904-6331-61 ",.02)
 ;;00904-6331-61
 ;;9002226.02101,"869,00904-6332-61 ",.01)
 ;;00904-6332-61
 ;;9002226.02101,"869,00904-6332-61 ",.02)
 ;;00904-6332-61
 ;;9002226.02101,"869,00904-6333-61 ",.01)
 ;;00904-6333-61
 ;;9002226.02101,"869,00904-6333-61 ",.02)
 ;;00904-6333-61
 ;;9002226.02101,"869,00904-6366-61 ",.01)
 ;;00904-6366-61
 ;;9002226.02101,"869,00904-6366-61 ",.02)
 ;;00904-6366-61
 ;;9002226.02101,"869,00904-6367-61 ",.01)
 ;;00904-6367-61
 ;;9002226.02101,"869,00904-6367-61 ",.02)
 ;;00904-6367-61
 ;;9002226.02101,"869,00904-6368-61 ",.01)
 ;;00904-6368-61
 ;;9002226.02101,"869,00904-6368-61 ",.02)
 ;;00904-6368-61
 ;;9002226.02101,"869,00904-6426-61 ",.01)
 ;;00904-6426-61
 ;;9002226.02101,"869,00904-6426-61 ",.02)
 ;;00904-6426-61
 ;;9002226.02101,"869,00904-6427-61 ",.01)
 ;;00904-6427-61
 ;;9002226.02101,"869,00904-6427-61 ",.02)
 ;;00904-6427-61
 ;;9002226.02101,"869,00904-6452-61 ",.01)
 ;;00904-6452-61
 ;;9002226.02101,"869,00904-6452-61 ",.02)
 ;;00904-6452-61
 ;;9002226.02101,"869,00904-6453-61 ",.01)
 ;;00904-6453-61
 ;;9002226.02101,"869,00904-6453-61 ",.02)
 ;;00904-6453-61
 ;;9002226.02101,"869,00904-6454-61 ",.01)
 ;;00904-6454-61
 ;;9002226.02101,"869,00904-6454-61 ",.02)
 ;;00904-6454-61
 ;;9002226.02101,"869,00904-6468-61 ",.01)
 ;;00904-6468-61
 ;;9002226.02101,"869,00904-6468-61 ",.02)
 ;;00904-6468-61
 ;;9002226.02101,"869,00904-6469-61 ",.01)
 ;;00904-6469-61
 ;;9002226.02101,"869,00904-6469-61 ",.02)
 ;;00904-6469-61
 ;;9002226.02101,"869,00904-6470-61 ",.01)
 ;;00904-6470-61
 ;;9002226.02101,"869,00904-6470-61 ",.02)
 ;;00904-6470-61
 ;;9002226.02101,"869,00904-6519-61 ",.01)
 ;;00904-6519-61
 ;;9002226.02101,"869,00904-6519-61 ",.02)
 ;;00904-6519-61
 ;;9002226.02101,"869,00904-6554-61 ",.01)
 ;;00904-6554-61
 ;;9002226.02101,"869,00904-6554-61 ",.02)
 ;;00904-6554-61
 ;;9002226.02101,"869,00904-6555-61 ",.01)
 ;;00904-6555-61
 ;;9002226.02101,"869,00904-6555-61 ",.02)
 ;;00904-6555-61
 ;;9002226.02101,"869,00955-1030-10 ",.01)
 ;;00955-1030-10
 ;;9002226.02101,"869,00955-1030-10 ",.02)
 ;;00955-1030-10
 ;;9002226.02101,"869,00955-1031-10 ",.01)
 ;;00955-1031-10
 ;;9002226.02101,"869,00955-1031-10 ",.02)
 ;;00955-1031-10
 ;;9002226.02101,"869,00955-1032-10 ",.01)
 ;;00955-1032-10
 ;;9002226.02101,"869,00955-1032-10 ",.02)
 ;;00955-1032-10
 ;;9002226.02101,"869,00955-1033-10 ",.01)
 ;;00955-1033-10
 ;;9002226.02101,"869,00955-1033-10 ",.02)
 ;;00955-1033-10
 ;;9002226.02101,"869,00955-1034-10 ",.01)
 ;;00955-1034-10
 ;;9002226.02101,"869,00955-1034-10 ",.02)
 ;;00955-1034-10
 ;;9002226.02101,"869,00955-1035-05 ",.01)
 ;;00955-1035-05
 ;;9002226.02101,"869,00955-1035-05 ",.02)
 ;;00955-1035-05
 ;;9002226.02101,"869,10370-0101-00 ",.01)
 ;;10370-0101-00
 ;;9002226.02101,"869,10370-0101-00 ",.02)
 ;;10370-0101-00
 ;;9002226.02101,"869,10370-0101-03 ",.01)
 ;;10370-0101-03
 ;;9002226.02101,"869,10370-0101-03 ",.02)
 ;;10370-0101-03
 ;;9002226.02101,"869,10370-0101-50 ",.01)
 ;;10370-0101-50
 ;;9002226.02101,"869,10370-0101-50 ",.02)
 ;;10370-0101-50
 ;;9002226.02101,"869,10370-0102-00 ",.01)
 ;;10370-0102-00
 ;;9002226.02101,"869,10370-0102-00 ",.02)
 ;;10370-0102-00
 ;;9002226.02101,"869,10370-0102-03 ",.01)
 ;;10370-0102-03
 ;;9002226.02101,"869,10370-0102-03 ",.02)
 ;;10370-0102-03
 ;;9002226.02101,"869,10370-0102-50 ",.01)
 ;;10370-0102-50
 ;;9002226.02101,"869,10370-0102-50 ",.02)
 ;;10370-0102-50
 ;;9002226.02101,"869,10370-0159-06 ",.01)
 ;;10370-0159-06
 ;;9002226.02101,"869,10370-0159-06 ",.02)
 ;;10370-0159-06
 ;;9002226.02101,"869,10370-0160-06 ",.01)
 ;;10370-0160-06
 ;;9002226.02101,"869,10370-0160-06 ",.02)
 ;;10370-0160-06
 ;;9002226.02101,"869,10370-0160-10 ",.01)
 ;;10370-0160-10
 ;;9002226.02101,"869,10370-0160-10 ",.02)
 ;;10370-0160-10
 ;;9002226.02101,"869,10370-0160-50 ",.01)
 ;;10370-0160-50
 ;;9002226.02101,"869,10370-0160-50 ",.02)
 ;;10370-0160-50
 ;;9002226.02101,"869,10370-0161-06 ",.01)
 ;;10370-0161-06
 ;;9002226.02101,"869,10370-0161-06 ",.02)
 ;;10370-0161-06
 ;;9002226.02101,"869,10370-0175-11 ",.01)
 ;;10370-0175-11
 ;;9002226.02101,"869,10370-0175-11 ",.02)
 ;;10370-0175-11
 ;;9002226.02101,"869,10370-0176-11 ",.01)
 ;;10370-0176-11
 ;;9002226.02101,"869,10370-0176-11 ",.02)
 ;;10370-0176-11
 ;;9002226.02101,"869,10544-0329-30 ",.01)
 ;;10544-0329-30
 ;;9002226.02101,"869,10544-0329-30 ",.02)
 ;;10544-0329-30
 ;;9002226.02101,"869,10544-0336-30 ",.01)
 ;;10544-0336-30
 ;;9002226.02101,"869,10544-0336-30 ",.02)
 ;;10544-0336-30
 ;;9002226.02101,"869,10544-0346-30 ",.01)
 ;;10544-0346-30
 ;;9002226.02101,"869,10544-0346-30 ",.02)
 ;;10544-0346-30
 ;;9002226.02101,"869,10544-0346-60 ",.01)
 ;;10544-0346-60
 ;;9002226.02101,"869,10544-0346-60 ",.02)
 ;;10544-0346-60
 ;;9002226.02101,"869,10544-0405-30 ",.01)
 ;;10544-0405-30
 ;;9002226.02101,"869,10544-0405-30 ",.02)
 ;;10544-0405-30
 ;;9002226.02101,"869,10768-7060-03 ",.01)
 ;;10768-7060-03
 ;;9002226.02101,"869,10768-7060-03 ",.02)
 ;;10768-7060-03
 ;;9002226.02101,"869,10768-7191-03 ",.01)
 ;;10768-7191-03
 ;;9002226.02101,"869,10768-7191-03 ",.02)
 ;;10768-7191-03
 ;;9002226.02101,"869,10768-7616-03 ",.01)
 ;;10768-7616-03
 ;;9002226.02101,"869,10768-7616-03 ",.02)
 ;;10768-7616-03
 ;;9002226.02101,"869,12280-0065-00 ",.01)
 ;;12280-0065-00
 ;;9002226.02101,"869,12280-0065-00 ",.02)
 ;;12280-0065-00
 ;;9002226.02101,"869,12280-0171-60 ",.01)
 ;;12280-0171-60
 ;;9002226.02101,"869,12280-0171-60 ",.02)
 ;;12280-0171-60
 ;;9002226.02101,"869,13107-0001-05 ",.01)
 ;;13107-0001-05
 ;;9002226.02101,"869,13107-0001-05 ",.02)
 ;;13107-0001-05
 ;;9002226.02101,"869,13107-0001-30 ",.01)
 ;;13107-0001-30
 ;;9002226.02101,"869,13107-0001-30 ",.02)
 ;;13107-0001-30
 ;;9002226.02101,"869,13107-0003-05 ",.01)
 ;;13107-0003-05
 ;;9002226.02101,"869,13107-0003-05 ",.02)
 ;;13107-0003-05
 ;;9002226.02101,"869,13107-0003-30 ",.01)
 ;;13107-0003-30
 ;;9002226.02101,"869,13107-0003-30 ",.02)
 ;;13107-0003-30
 ;;9002226.02101,"869,13107-0003-34 ",.01)
 ;;13107-0003-34
 ;;9002226.02101,"869,13107-0003-34 ",.02)
 ;;13107-0003-34
 ;;9002226.02101,"869,13107-0005-01 ",.01)
 ;;13107-0005-01
 ;;9002226.02101,"869,13107-0005-01 ",.02)
 ;;13107-0005-01
 ;;9002226.02101,"869,13107-0005-05 ",.01)
 ;;13107-0005-05
 ;;9002226.02101,"869,13107-0005-05 ",.02)
 ;;13107-0005-05
 ;;9002226.02101,"869,13107-0006-01 ",.01)
 ;;13107-0006-01
 ;;9002226.02101,"869,13107-0006-01 ",.02)
 ;;13107-0006-01
 ;;9002226.02101,"869,13107-0006-05 ",.01)
 ;;13107-0006-05
 ;;9002226.02101,"869,13107-0006-05 ",.02)
 ;;13107-0006-05
 ;;9002226.02101,"869,13107-0007-01 ",.01)
 ;;13107-0007-01
 ;;9002226.02101,"869,13107-0007-01 ",.02)
 ;;13107-0007-01
 ;;9002226.02101,"869,13107-0007-05 ",.01)
 ;;13107-0007-05
 ;;9002226.02101,"869,13107-0007-05 ",.02)
 ;;13107-0007-05
 ;;9002226.02101,"869,13107-0031-05 ",.01)
 ;;13107-0031-05
 ;;9002226.02101,"869,13107-0031-05 ",.02)
 ;;13107-0031-05
 ;;9002226.02101,"869,13107-0031-30 ",.01)
 ;;13107-0031-30
 ;;9002226.02101,"869,13107-0031-30 ",.02)
 ;;13107-0031-30
 ;;9002226.02101,"869,13107-0031-34 ",.01)
 ;;13107-0031-34
 ;;9002226.02101,"869,13107-0031-34 ",.02)
 ;;13107-0031-34
 ;;9002226.02101,"869,13107-0032-05 ",.01)
 ;;13107-0032-05
 ;;9002226.02101,"869,13107-0032-05 ",.02)
 ;;13107-0032-05
 ;;9002226.02101,"869,13107-0032-34 ",.01)
 ;;13107-0032-34
 ;;9002226.02101,"869,13107-0032-34 ",.02)
 ;;13107-0032-34
 ;;9002226.02101,"869,13107-0154-05 ",.01)
 ;;13107-0154-05
 ;;9002226.02101,"869,13107-0154-05 ",.02)
 ;;13107-0154-05
 ;;9002226.02101,"869,13107-0154-30 ",.01)
 ;;13107-0154-30
 ;;9002226.02101,"869,13107-0154-30 ",.02)
 ;;13107-0154-30
 ;;9002226.02101,"869,13107-0154-90 ",.01)
 ;;13107-0154-90
 ;;9002226.02101,"869,13107-0154-90 ",.02)
 ;;13107-0154-90
 ;;9002226.02101,"869,13107-0155-05 ",.01)
 ;;13107-0155-05
 ;;9002226.02101,"869,13107-0155-05 ",.02)
 ;;13107-0155-05
 ;;9002226.02101,"869,13107-0155-30 ",.01)
 ;;13107-0155-30
 ;;9002226.02101,"869,13107-0155-30 ",.02)
 ;;13107-0155-30
 ;;9002226.02101,"869,13107-0155-90 ",.01)
 ;;13107-0155-90
 ;;9002226.02101,"869,13107-0155-90 ",.02)
 ;;13107-0155-90
 ;;9002226.02101,"869,13107-0155-99 ",.01)
 ;;13107-0155-99
 ;;9002226.02101,"869,13107-0155-99 ",.02)
 ;;13107-0155-99
 ;;9002226.02101,"869,13107-0156-05 ",.01)
 ;;13107-0156-05
 ;;9002226.02101,"869,13107-0156-05 ",.02)
 ;;13107-0156-05
 ;;9002226.02101,"869,13107-0156-30 ",.01)
 ;;13107-0156-30