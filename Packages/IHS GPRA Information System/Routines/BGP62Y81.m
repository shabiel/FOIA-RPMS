BGP62Y81 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 11, 2016;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"868,61553-0014-73 ",.02)
 ;;61553-0014-73
 ;;9002226.02101,"868,61553-0045-41 ",.01)
 ;;61553-0045-41
 ;;9002226.02101,"868,61553-0045-41 ",.02)
 ;;61553-0045-41
 ;;9002226.02101,"868,61553-0048-72 ",.01)
 ;;61553-0048-72
 ;;9002226.02101,"868,61553-0048-72 ",.02)
 ;;61553-0048-72
 ;;9002226.02101,"868,61553-0211-48 ",.01)
 ;;61553-0211-48
 ;;9002226.02101,"868,61553-0211-48 ",.02)
 ;;61553-0211-48
 ;;9002226.02101,"868,61553-0216-48 ",.01)
 ;;61553-0216-48
 ;;9002226.02101,"868,61553-0216-48 ",.02)
 ;;61553-0216-48
 ;;9002226.02101,"868,61570-0050-11 ",.01)
 ;;61570-0050-11
 ;;9002226.02101,"868,61570-0050-11 ",.02)
 ;;61570-0050-11
 ;;9002226.02101,"868,61570-0052-01 ",.01)
 ;;61570-0052-01
 ;;9002226.02101,"868,61570-0052-01 ",.02)
 ;;61570-0052-01
 ;;9002226.02101,"868,61570-0053-01 ",.01)
 ;;61570-0053-01
 ;;9002226.02101,"868,61570-0053-01 ",.02)
 ;;61570-0053-01
 ;;9002226.02101,"868,61570-0053-05 ",.01)
 ;;61570-0053-05
 ;;9002226.02101,"868,61570-0053-05 ",.02)
 ;;61570-0053-05
 ;;9002226.02101,"868,61570-0053-20 ",.01)
 ;;61570-0053-20
 ;;9002226.02101,"868,61570-0053-20 ",.02)
 ;;61570-0053-20
 ;;9002226.02101,"868,61570-0054-10 ",.01)
 ;;61570-0054-10
 ;;9002226.02101,"868,61570-0054-10 ",.02)
 ;;61570-0054-10
 ;;9002226.02101,"868,61570-0055-10 ",.01)
 ;;61570-0055-10
 ;;9002226.02101,"868,61570-0055-10 ",.02)
 ;;61570-0055-10
 ;;9002226.02101,"868,61570-0056-10 ",.01)
 ;;61570-0056-10
 ;;9002226.02101,"868,61570-0056-10 ",.02)
 ;;61570-0056-10
 ;;9002226.02101,"868,61748-0111-14 ",.01)
 ;;61748-0111-14
 ;;9002226.02101,"868,61748-0111-14 ",.02)
 ;;61748-0111-14
 ;;9002226.02101,"868,61971-0115-01 ",.01)
 ;;61971-0115-01
 ;;9002226.02101,"868,61971-0115-01 ",.02)
 ;;61971-0115-01
 ;;9002226.02101,"868,61971-0115-05 ",.01)
 ;;61971-0115-05
 ;;9002226.02101,"868,61971-0115-05 ",.02)
 ;;61971-0115-05
 ;;9002226.02101,"868,61971-0120-01 ",.01)
 ;;61971-0120-01
 ;;9002226.02101,"868,61971-0120-01 ",.02)
 ;;61971-0120-01
 ;;9002226.02101,"868,61971-0120-05 ",.01)
 ;;61971-0120-05
 ;;9002226.02101,"868,61971-0120-05 ",.02)
 ;;61971-0120-05
 ;;9002226.02101,"868,62037-0777-60 ",.01)
 ;;62037-0777-60
 ;;9002226.02101,"868,62037-0777-60 ",.02)
 ;;62037-0777-60
 ;;9002226.02101,"868,62436-0728-01 ",.01)
 ;;62436-0728-01
 ;;9002226.02101,"868,62436-0728-01 ",.02)
 ;;62436-0728-01
 ;;9002226.02101,"868,62436-0729-03 ",.01)
 ;;62436-0729-03
 ;;9002226.02101,"868,62436-0729-03 ",.02)
 ;;62436-0729-03
 ;;9002226.02101,"868,62436-0729-04 ",.01)
 ;;62436-0729-04
 ;;9002226.02101,"868,62436-0729-04 ",.02)
 ;;62436-0729-04
 ;;9002226.02101,"868,62436-0730-01 ",.01)
 ;;62436-0730-01
 ;;9002226.02101,"868,62436-0730-01 ",.02)
 ;;62436-0730-01
 ;;9002226.02101,"868,62436-0730-05 ",.01)
 ;;62436-0730-05
 ;;9002226.02101,"868,62436-0730-05 ",.02)
 ;;62436-0730-05
 ;;9002226.02101,"868,62584-0235-01 ",.01)
 ;;62584-0235-01
 ;;9002226.02101,"868,62584-0235-01 ",.02)
 ;;62584-0235-01
 ;;9002226.02101,"868,62584-0235-11 ",.01)
 ;;62584-0235-11
 ;;9002226.02101,"868,62584-0235-11 ",.02)
 ;;62584-0235-11
 ;;9002226.02101,"868,62584-0236-01 ",.01)
 ;;62584-0236-01
 ;;9002226.02101,"868,62584-0236-01 ",.02)
 ;;62584-0236-01
 ;;9002226.02101,"868,62584-0236-11 ",.01)
 ;;62584-0236-11
 ;;9002226.02101,"868,62584-0236-11 ",.02)
 ;;62584-0236-11
 ;;9002226.02101,"868,62584-0237-01 ",.01)
 ;;62584-0237-01
 ;;9002226.02101,"868,62584-0237-01 ",.02)
 ;;62584-0237-01
 ;;9002226.02101,"868,62584-0237-11 ",.01)
 ;;62584-0237-11
 ;;9002226.02101,"868,62584-0237-11 ",.02)
 ;;62584-0237-11
 ;;9002226.02101,"868,62584-0238-01 ",.01)
 ;;62584-0238-01
 ;;9002226.02101,"868,62584-0238-01 ",.02)
 ;;62584-0238-01
 ;;9002226.02101,"868,62584-0238-11 ",.01)
 ;;62584-0238-11
 ;;9002226.02101,"868,62584-0238-11 ",.02)
 ;;62584-0238-11
 ;;9002226.02101,"868,62584-0338-01 ",.01)
 ;;62584-0338-01
 ;;9002226.02101,"868,62584-0338-01 ",.02)
 ;;62584-0338-01
 ;;9002226.02101,"868,62584-0338-11 ",.01)
 ;;62584-0338-11
 ;;9002226.02101,"868,62584-0338-11 ",.02)
 ;;62584-0338-11
 ;;9002226.02101,"868,62584-0693-01 ",.01)
 ;;62584-0693-01
 ;;9002226.02101,"868,62584-0693-01 ",.02)
 ;;62584-0693-01
 ;;9002226.02101,"868,62584-0693-11 ",.01)
 ;;62584-0693-11
 ;;9002226.02101,"868,62584-0693-11 ",.02)
 ;;62584-0693-11
 ;;9002226.02101,"868,62584-0693-21 ",.01)
 ;;62584-0693-21
 ;;9002226.02101,"868,62584-0693-21 ",.02)
 ;;62584-0693-21
 ;;9002226.02101,"868,62584-0857-01 ",.01)
 ;;62584-0857-01
 ;;9002226.02101,"868,62584-0857-01 ",.02)
 ;;62584-0857-01
 ;;9002226.02101,"868,62584-0857-11 ",.01)
 ;;62584-0857-11
 ;;9002226.02101,"868,62584-0857-11 ",.02)
 ;;62584-0857-11
 ;;9002226.02101,"868,62756-0293-13 ",.01)
 ;;62756-0293-13
 ;;9002226.02101,"868,62756-0293-13 ",.02)
 ;;62756-0293-13
 ;;9002226.02101,"868,62756-0293-88 ",.01)
 ;;62756-0293-88
 ;;9002226.02101,"868,62756-0293-88 ",.02)
 ;;62756-0293-88
 ;;9002226.02101,"868,62756-0294-13 ",.01)
 ;;62756-0294-13
 ;;9002226.02101,"868,62756-0294-13 ",.02)
 ;;62756-0294-13
 ;;9002226.02101,"868,62756-0294-88 ",.01)
 ;;62756-0294-88
 ;;9002226.02101,"868,62756-0294-88 ",.02)
 ;;62756-0294-88
 ;;9002226.02101,"868,62756-0512-44 ",.01)
 ;;62756-0512-44
 ;;9002226.02101,"868,62756-0512-44 ",.02)
 ;;62756-0512-44
 ;;9002226.02101,"868,63304-0131-01 ",.01)
 ;;63304-0131-01
 ;;9002226.02101,"868,63304-0131-01 ",.02)
 ;;63304-0131-01
 ;;9002226.02101,"868,63304-0132-04 ",.01)
 ;;63304-0132-04
 ;;9002226.02101,"868,63304-0132-04 ",.02)
 ;;63304-0132-04
 ;;9002226.02101,"868,63304-0132-50 ",.01)
 ;;63304-0132-50
 ;;9002226.02101,"868,63304-0132-50 ",.02)
 ;;63304-0132-50
 ;;9002226.02101,"868,63304-0148-01 ",.01)
 ;;63304-0148-01
 ;;9002226.02101,"868,63304-0148-01 ",.02)
 ;;63304-0148-01
 ;;9002226.02101,"868,63304-0149-01 ",.01)
 ;;63304-0149-01
 ;;9002226.02101,"868,63304-0149-01 ",.02)
 ;;63304-0149-01
 ;;9002226.02101,"868,63304-0149-50 ",.01)
 ;;63304-0149-50
 ;;9002226.02101,"868,63304-0149-50 ",.02)
 ;;63304-0149-50
 ;;9002226.02101,"868,63304-0173-30 ",.01)
 ;;63304-0173-30
 ;;9002226.02101,"868,63304-0173-30 ",.02)
 ;;63304-0173-30
 ;;9002226.02101,"868,63304-0509-01 ",.01)
 ;;63304-0509-01
 ;;9002226.02101,"868,63304-0509-01 ",.02)
 ;;63304-0509-01
 ;;9002226.02101,"868,63304-0509-20 ",.01)
 ;;63304-0509-20
 ;;9002226.02101,"868,63304-0509-20 ",.02)
 ;;63304-0509-20
 ;;9002226.02101,"868,63304-0512-50 ",.01)
 ;;63304-0512-50
 ;;9002226.02101,"868,63304-0512-50 ",.02)
 ;;63304-0512-50
 ;;9002226.02101,"868,63304-0520-20 ",.01)
 ;;63304-0520-20
 ;;9002226.02101,"868,63304-0520-20 ",.02)
 ;;63304-0520-20
 ;;9002226.02101,"868,63304-0521-01 ",.01)
 ;;63304-0521-01
 ;;9002226.02101,"868,63304-0521-01 ",.02)
 ;;63304-0521-01
 ;;9002226.02101,"868,63304-0521-20 ",.01)
 ;;63304-0521-20
 ;;9002226.02101,"868,63304-0521-20 ",.02)
 ;;63304-0521-20
 ;;9002226.02101,"868,63304-0582-01 ",.01)
 ;;63304-0582-01
 ;;9002226.02101,"868,63304-0582-01 ",.02)
 ;;63304-0582-01
 ;;9002226.02101,"868,63304-0582-50 ",.01)
 ;;63304-0582-50
 ;;9002226.02101,"868,63304-0582-50 ",.02)
 ;;63304-0582-50
 ;;9002226.02101,"868,63304-0615-01 ",.01)
 ;;63304-0615-01
 ;;9002226.02101,"868,63304-0615-01 ",.02)
 ;;63304-0615-01
 ;;9002226.02101,"868,63304-0616-50 ",.01)
 ;;63304-0616-50
 ;;9002226.02101,"868,63304-0616-50 ",.02)
 ;;63304-0616-50
 ;;9002226.02101,"868,63304-0656-01 ",.01)
 ;;63304-0656-01
 ;;9002226.02101,"868,63304-0656-01 ",.02)
 ;;63304-0656-01
 ;;9002226.02101,"868,63304-0656-05 ",.01)
 ;;63304-0656-05
 ;;9002226.02101,"868,63304-0656-05 ",.02)
 ;;63304-0656-05
 ;;9002226.02101,"868,63304-0657-01 ",.01)
 ;;63304-0657-01
 ;;9002226.02101,"868,63304-0657-01 ",.02)
 ;;63304-0657-01
 ;;9002226.02101,"868,63304-0657-05 ",.01)
 ;;63304-0657-05
 ;;9002226.02101,"868,63304-0657-05 ",.02)
 ;;63304-0657-05
 ;;9002226.02101,"868,63304-0658-01 ",.01)
 ;;63304-0658-01
 ;;9002226.02101,"868,63304-0658-01 ",.02)
 ;;63304-0658-01
 ;;9002226.02101,"868,63304-0659-01 ",.01)
 ;;63304-0659-01
 ;;9002226.02101,"868,63304-0659-01 ",.02)
 ;;63304-0659-01
 ;;9002226.02101,"868,63304-0692-01 ",.01)
 ;;63304-0692-01
 ;;9002226.02101,"868,63304-0692-01 ",.02)
 ;;63304-0692-01
 ;;9002226.02101,"868,63304-0692-05 ",.01)
 ;;63304-0692-05
 ;;9002226.02101,"868,63304-0692-05 ",.02)
 ;;63304-0692-05
 ;;9002226.02101,"868,63304-0693-01 ",.01)
 ;;63304-0693-01
 ;;9002226.02101,"868,63304-0693-01 ",.02)
 ;;63304-0693-01
 ;;9002226.02101,"868,63304-0693-16 ",.01)
 ;;63304-0693-16
 ;;9002226.02101,"868,63304-0693-16 ",.02)
 ;;63304-0693-16
 ;;9002226.02101,"868,63304-0694-01 ",.01)
 ;;63304-0694-01
 ;;9002226.02101,"868,63304-0694-01 ",.02)
 ;;63304-0694-01
 ;;9002226.02101,"868,63304-0695-01 ",.01)
 ;;63304-0695-01
 ;;9002226.02101,"868,63304-0695-01 ",.02)
 ;;63304-0695-01
 ;;9002226.02101,"868,63304-0696-05 ",.01)
 ;;63304-0696-05
 ;;9002226.02101,"868,63304-0696-05 ",.02)
 ;;63304-0696-05
 ;;9002226.02101,"868,63304-0696-50 ",.01)
 ;;63304-0696-50
 ;;9002226.02101,"868,63304-0696-50 ",.02)
 ;;63304-0696-50
 ;;9002226.02101,"868,63304-0697-01 ",.01)
 ;;63304-0697-01
 ;;9002226.02101,"868,63304-0697-01 ",.02)
 ;;63304-0697-01
 ;;9002226.02101,"868,63304-0698-01 ",.01)
 ;;63304-0698-01
 ;;9002226.02101,"868,63304-0698-01 ",.02)
 ;;63304-0698-01
 ;;9002226.02101,"868,63304-0699-50 ",.01)
 ;;63304-0699-50
 ;;9002226.02101,"868,63304-0699-50 ",.02)
 ;;63304-0699-50
 ;;9002226.02101,"868,63304-0709-01 ",.01)
 ;;63304-0709-01
 ;;9002226.02101,"868,63304-0709-01 ",.02)
 ;;63304-0709-01
 ;;9002226.02101,"868,63304-0710-01 ",.01)
 ;;63304-0710-01
 ;;9002226.02101,"868,63304-0710-01 ",.02)
 ;;63304-0710-01
 ;;9002226.02101,"868,63304-0711-01 ",.01)
 ;;63304-0711-01
 ;;9002226.02101,"868,63304-0711-01 ",.02)
 ;;63304-0711-01
 ;;9002226.02101,"868,63304-0711-50 ",.01)
 ;;63304-0711-50
 ;;9002226.02101,"868,63304-0711-50 ",.02)
 ;;63304-0711-50
 ;;9002226.02101,"868,63304-0713-20 ",.01)
 ;;63304-0713-20
 ;;9002226.02101,"868,63304-0713-20 ",.02)
 ;;63304-0713-20
 ;;9002226.02101,"868,63304-0725-01 ",.01)
 ;;63304-0725-01
 ;;9002226.02101,"868,63304-0725-01 ",.02)
 ;;63304-0725-01
 ;;9002226.02101,"868,63304-0725-60 ",.01)
 ;;63304-0725-60
 ;;9002226.02101,"868,63304-0725-60 ",.02)
 ;;63304-0725-60
 ;;9002226.02101,"868,63304-0726-01 ",.01)
 ;;63304-0726-01
 ;;9002226.02101,"868,63304-0726-01 ",.02)
 ;;63304-0726-01
 ;;9002226.02101,"868,63304-0726-60 ",.01)
 ;;63304-0726-60
 ;;9002226.02101,"868,63304-0726-60 ",.02)
 ;;63304-0726-60
 ;;9002226.02101,"868,63304-0751-20 ",.01)
 ;;63304-0751-20
 ;;9002226.02101,"868,63304-0751-20 ",.02)
 ;;63304-0751-20
 ;;9002226.02101,"868,63304-0751-60 ",.01)
 ;;63304-0751-60
 ;;9002226.02101,"868,63304-0751-60 ",.02)
 ;;63304-0751-60
 ;;9002226.02101,"868,63304-0752-20 ",.01)
 ;;63304-0752-20
 ;;9002226.02101,"868,63304-0752-20 ",.02)
 ;;63304-0752-20
 ;;9002226.02101,"868,63304-0752-60 ",.01)
 ;;63304-0752-60
 ;;9002226.02101,"868,63304-0752-60 ",.02)
 ;;63304-0752-60
 ;;9002226.02101,"868,63304-0753-20 ",.01)
 ;;63304-0753-20
 ;;9002226.02101,"868,63304-0753-20 ",.02)
 ;;63304-0753-20
 ;;9002226.02101,"868,63304-0754-20 ",.01)
 ;;63304-0754-20
 ;;9002226.02101,"868,63304-0754-20 ",.02)
 ;;63304-0754-20
 ;;9002226.02101,"868,63304-0760-20 ",.01)
 ;;63304-0760-20
 ;;9002226.02101,"868,63304-0760-20 ",.02)
 ;;63304-0760-20
 ;;9002226.02101,"868,63304-0763-01 ",.01)
 ;;63304-0763-01
 ;;9002226.02101,"868,63304-0763-01 ",.02)
 ;;63304-0763-01
 ;;9002226.02101,"868,63304-0768-01 ",.01)
 ;;63304-0768-01
 ;;9002226.02101,"868,63304-0768-01 ",.02)
 ;;63304-0768-01
 ;;9002226.02101,"868,63304-0768-02 ",.01)
 ;;63304-0768-02