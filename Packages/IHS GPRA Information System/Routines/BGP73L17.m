BGP73L17 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 05, 2017;
 ;;17.1;IHS CLINICAL REPORTING;;MAY 10, 2017;Build 29
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"873,65862-0468-30 ",.02)
 ;;65862-0468-30
 ;;9002226.02101,"873,65862-0468-90 ",.01)
 ;;65862-0468-90
 ;;9002226.02101,"873,65862-0468-90 ",.02)
 ;;65862-0468-90
 ;;9002226.02101,"873,65862-0468-99 ",.01)
 ;;65862-0468-99
 ;;9002226.02101,"873,65862-0468-99 ",.02)
 ;;65862-0468-99
 ;;9002226.02101,"873,65862-0469-30 ",.01)
 ;;65862-0469-30
 ;;9002226.02101,"873,65862-0469-30 ",.02)
 ;;65862-0469-30
 ;;9002226.02101,"873,65862-0469-90 ",.01)
 ;;65862-0469-90
 ;;9002226.02101,"873,65862-0469-90 ",.02)
 ;;65862-0469-90
 ;;9002226.02101,"873,65862-0469-99 ",.01)
 ;;65862-0469-99
 ;;9002226.02101,"873,65862-0469-99 ",.02)
 ;;65862-0469-99
 ;;9002226.02101,"873,65862-0470-30 ",.01)
 ;;65862-0470-30
 ;;9002226.02101,"873,65862-0470-30 ",.02)
 ;;65862-0470-30
 ;;9002226.02101,"873,65862-0470-90 ",.01)
 ;;65862-0470-90
 ;;9002226.02101,"873,65862-0470-90 ",.02)
 ;;65862-0470-90
 ;;9002226.02101,"873,65862-0470-99 ",.01)
 ;;65862-0470-99
 ;;9002226.02101,"873,65862-0470-99 ",.02)
 ;;65862-0470-99
 ;;9002226.02101,"873,65862-0547-90 ",.01)
 ;;65862-0547-90
 ;;9002226.02101,"873,65862-0547-90 ",.02)
 ;;65862-0547-90
 ;;9002226.02101,"873,65862-0547-99 ",.01)
 ;;65862-0547-99
 ;;9002226.02101,"873,65862-0547-99 ",.02)
 ;;65862-0547-99
 ;;9002226.02101,"873,65862-0548-90 ",.01)
 ;;65862-0548-90
 ;;9002226.02101,"873,65862-0548-90 ",.02)
 ;;65862-0548-90
 ;;9002226.02101,"873,65862-0548-99 ",.01)
 ;;65862-0548-99
 ;;9002226.02101,"873,65862-0548-99 ",.02)
 ;;65862-0548-99
 ;;9002226.02101,"873,65862-0549-90 ",.01)
 ;;65862-0549-90
 ;;9002226.02101,"873,65862-0549-90 ",.02)
 ;;65862-0549-90
 ;;9002226.02101,"873,65862-0549-99 ",.01)
 ;;65862-0549-99
 ;;9002226.02101,"873,65862-0549-99 ",.02)
 ;;65862-0549-99
 ;;9002226.02101,"873,65862-0550-05 ",.01)
 ;;65862-0550-05
 ;;9002226.02101,"873,65862-0550-05 ",.02)
 ;;65862-0550-05
 ;;9002226.02101,"873,65862-0550-90 ",.01)
 ;;65862-0550-90
 ;;9002226.02101,"873,65862-0550-90 ",.02)
 ;;65862-0550-90
 ;;9002226.02101,"873,65862-0551-05 ",.01)
 ;;65862-0551-05
 ;;9002226.02101,"873,65862-0551-05 ",.02)
 ;;65862-0551-05
 ;;9002226.02101,"873,65862-0551-90 ",.01)
 ;;65862-0551-90
 ;;9002226.02101,"873,65862-0551-90 ",.02)
 ;;65862-0551-90
 ;;9002226.02101,"873,65862-0570-30 ",.01)
 ;;65862-0570-30
 ;;9002226.02101,"873,65862-0570-30 ",.02)
 ;;65862-0570-30
 ;;9002226.02101,"873,65862-0571-90 ",.01)
 ;;65862-0571-90
 ;;9002226.02101,"873,65862-0571-90 ",.02)
 ;;65862-0571-90
 ;;9002226.02101,"873,65862-0572-90 ",.01)
 ;;65862-0572-90
 ;;9002226.02101,"873,65862-0572-90 ",.02)
 ;;65862-0572-90
 ;;9002226.02101,"873,65862-0573-90 ",.01)
 ;;65862-0573-90
 ;;9002226.02101,"873,65862-0573-90 ",.02)
 ;;65862-0573-90
 ;;9002226.02101,"873,65862-0637-30 ",.01)
 ;;65862-0637-30
 ;;9002226.02101,"873,65862-0637-30 ",.02)
 ;;65862-0637-30
 ;;9002226.02101,"873,65862-0637-90 ",.01)
 ;;65862-0637-90
 ;;9002226.02101,"873,65862-0637-90 ",.02)
 ;;65862-0637-90
 ;;9002226.02101,"873,65862-0638-05 ",.01)
 ;;65862-0638-05
 ;;9002226.02101,"873,65862-0638-05 ",.02)
 ;;65862-0638-05
 ;;9002226.02101,"873,65862-0638-30 ",.01)
 ;;65862-0638-30
 ;;9002226.02101,"873,65862-0638-30 ",.02)
 ;;65862-0638-30
 ;;9002226.02101,"873,65862-0638-90 ",.01)
 ;;65862-0638-90
 ;;9002226.02101,"873,65862-0638-90 ",.02)
 ;;65862-0638-90
 ;;9002226.02101,"873,65862-0639-05 ",.01)
 ;;65862-0639-05
 ;;9002226.02101,"873,65862-0639-05 ",.02)
 ;;65862-0639-05
 ;;9002226.02101,"873,65862-0639-30 ",.01)
 ;;65862-0639-30
 ;;9002226.02101,"873,65862-0639-30 ",.02)
 ;;65862-0639-30
 ;;9002226.02101,"873,65862-0639-90 ",.01)
 ;;65862-0639-90
 ;;9002226.02101,"873,65862-0639-90 ",.02)
 ;;65862-0639-90
 ;;9002226.02101,"873,65862-0867-03 ",.01)
 ;;65862-0867-03
 ;;9002226.02101,"873,65862-0867-03 ",.02)
 ;;65862-0867-03
 ;;9002226.02101,"873,65862-0868-03 ",.01)
 ;;65862-0868-03
 ;;9002226.02101,"873,65862-0868-03 ",.02)
 ;;65862-0868-03
 ;;9002226.02101,"873,65862-0869-03 ",.01)
 ;;65862-0869-03
 ;;9002226.02101,"873,65862-0869-03 ",.02)
 ;;65862-0869-03
 ;;9002226.02101,"873,66105-0503-01 ",.01)
 ;;66105-0503-01
 ;;9002226.02101,"873,66105-0503-01 ",.02)
 ;;66105-0503-01
 ;;9002226.02101,"873,66105-0503-03 ",.01)
 ;;66105-0503-03
 ;;9002226.02101,"873,66105-0503-03 ",.02)
 ;;66105-0503-03
 ;;9002226.02101,"873,66105-0503-06 ",.01)
 ;;66105-0503-06
 ;;9002226.02101,"873,66105-0503-06 ",.02)
 ;;66105-0503-06
 ;;9002226.02101,"873,66105-0503-09 ",.01)
 ;;66105-0503-09
 ;;9002226.02101,"873,66105-0503-09 ",.02)
 ;;66105-0503-09
 ;;9002226.02101,"873,66105-0503-15 ",.01)
 ;;66105-0503-15
 ;;9002226.02101,"873,66105-0503-15 ",.02)
 ;;66105-0503-15
 ;;9002226.02101,"873,66105-0504-01 ",.01)
 ;;66105-0504-01
 ;;9002226.02101,"873,66105-0504-01 ",.02)
 ;;66105-0504-01
 ;;9002226.02101,"873,66105-0504-03 ",.01)
 ;;66105-0504-03
 ;;9002226.02101,"873,66105-0504-03 ",.02)
 ;;66105-0504-03
 ;;9002226.02101,"873,66105-0504-06 ",.01)
 ;;66105-0504-06
 ;;9002226.02101,"873,66105-0504-06 ",.02)
 ;;66105-0504-06
 ;;9002226.02101,"873,66105-0504-09 ",.01)
 ;;66105-0504-09
 ;;9002226.02101,"873,66105-0504-09 ",.02)
 ;;66105-0504-09
 ;;9002226.02101,"873,66105-0504-15 ",.01)
 ;;66105-0504-15
 ;;9002226.02101,"873,66105-0504-15 ",.02)
 ;;66105-0504-15
 ;;9002226.02101,"873,66105-0544-09 ",.01)
 ;;66105-0544-09
 ;;9002226.02101,"873,66105-0544-09 ",.02)
 ;;66105-0544-09
 ;;9002226.02101,"873,66105-0545-01 ",.01)
 ;;66105-0545-01
 ;;9002226.02101,"873,66105-0545-01 ",.02)
 ;;66105-0545-01
 ;;9002226.02101,"873,66105-0545-03 ",.01)
 ;;66105-0545-03
 ;;9002226.02101,"873,66105-0545-03 ",.02)
 ;;66105-0545-03
 ;;9002226.02101,"873,66105-0545-06 ",.01)
 ;;66105-0545-06
 ;;9002226.02101,"873,66105-0545-06 ",.02)
 ;;66105-0545-06
 ;;9002226.02101,"873,66105-0545-09 ",.01)
 ;;66105-0545-09
 ;;9002226.02101,"873,66105-0545-09 ",.02)
 ;;66105-0545-09
 ;;9002226.02101,"873,66105-0545-10 ",.01)
 ;;66105-0545-10
 ;;9002226.02101,"873,66105-0545-10 ",.02)
 ;;66105-0545-10
 ;;9002226.02101,"873,66105-0552-10 ",.01)
 ;;66105-0552-10
 ;;9002226.02101,"873,66105-0552-10 ",.02)
 ;;66105-0552-10
 ;;9002226.02101,"873,66105-0553-03 ",.01)
 ;;66105-0553-03
 ;;9002226.02101,"873,66105-0553-03 ",.02)
 ;;66105-0553-03
 ;;9002226.02101,"873,66105-0553-10 ",.01)
 ;;66105-0553-10
 ;;9002226.02101,"873,66105-0553-10 ",.02)
 ;;66105-0553-10
 ;;9002226.02101,"873,66105-0663-03 ",.01)
 ;;66105-0663-03
 ;;9002226.02101,"873,66105-0663-03 ",.02)
 ;;66105-0663-03
 ;;9002226.02101,"873,66105-0669-03 ",.01)
 ;;66105-0669-03
 ;;9002226.02101,"873,66105-0669-03 ",.02)
 ;;66105-0669-03
 ;;9002226.02101,"873,66105-0842-03 ",.01)
 ;;66105-0842-03
 ;;9002226.02101,"873,66105-0842-03 ",.02)
 ;;66105-0842-03
 ;;9002226.02101,"873,66105-0842-06 ",.01)
 ;;66105-0842-06
 ;;9002226.02101,"873,66105-0842-06 ",.02)
 ;;66105-0842-06
 ;;9002226.02101,"873,66105-0842-09 ",.01)
 ;;66105-0842-09
 ;;9002226.02101,"873,66105-0842-09 ",.02)
 ;;66105-0842-09
 ;;9002226.02101,"873,66105-0842-10 ",.01)
 ;;66105-0842-10
 ;;9002226.02101,"873,66105-0842-10 ",.02)
 ;;66105-0842-10
 ;;9002226.02101,"873,66105-0842-28 ",.01)
 ;;66105-0842-28
 ;;9002226.02101,"873,66105-0842-28 ",.02)
 ;;66105-0842-28
 ;;9002226.02101,"873,66336-0169-30 ",.01)
 ;;66336-0169-30
 ;;9002226.02101,"873,66336-0169-30 ",.02)
 ;;66336-0169-30
 ;;9002226.02101,"873,67544-0382-30 ",.01)
 ;;67544-0382-30
 ;;9002226.02101,"873,67544-0382-30 ",.02)
 ;;67544-0382-30
 ;;9002226.02101,"873,67544-0400-45 ",.01)
 ;;67544-0400-45
 ;;9002226.02101,"873,67544-0400-45 ",.02)
 ;;67544-0400-45
 ;;9002226.02101,"873,68071-0785-30 ",.01)
 ;;68071-0785-30
 ;;9002226.02101,"873,68071-0785-30 ",.02)
 ;;68071-0785-30
 ;;9002226.02101,"873,68071-0785-60 ",.01)
 ;;68071-0785-60
 ;;9002226.02101,"873,68071-0785-60 ",.02)
 ;;68071-0785-60
 ;;9002226.02101,"873,68071-0786-30 ",.01)
 ;;68071-0786-30
 ;;9002226.02101,"873,68071-0786-30 ",.02)
 ;;68071-0786-30
 ;;9002226.02101,"873,68071-0786-60 ",.01)
 ;;68071-0786-60
 ;;9002226.02101,"873,68071-0786-60 ",.02)
 ;;68071-0786-60
 ;;9002226.02101,"873,68084-0007-11 ",.01)
 ;;68084-0007-11
 ;;9002226.02101,"873,68084-0007-11 ",.02)
 ;;68084-0007-11
 ;;9002226.02101,"873,68084-0007-21 ",.01)
 ;;68084-0007-21
 ;;9002226.02101,"873,68084-0007-21 ",.02)
 ;;68084-0007-21
 ;;9002226.02101,"873,68084-0217-21 ",.01)
 ;;68084-0217-21
 ;;9002226.02101,"873,68084-0217-21 ",.02)
 ;;68084-0217-21
 ;;9002226.02101,"873,68084-0346-01 ",.01)
 ;;68084-0346-01
 ;;9002226.02101,"873,68084-0346-01 ",.02)
 ;;68084-0346-01
 ;;9002226.02101,"873,68084-0346-11 ",.01)
 ;;68084-0346-11
 ;;9002226.02101,"873,68084-0346-11 ",.02)
 ;;68084-0346-11
 ;;9002226.02101,"873,68084-0347-01 ",.01)
 ;;68084-0347-01
 ;;9002226.02101,"873,68084-0347-01 ",.02)
 ;;68084-0347-01
 ;;9002226.02101,"873,68084-0347-11 ",.01)
 ;;68084-0347-11
 ;;9002226.02101,"873,68084-0347-11 ",.02)
 ;;68084-0347-11
 ;;9002226.02101,"873,68084-0348-01 ",.01)
 ;;68084-0348-01
 ;;9002226.02101,"873,68084-0348-01 ",.02)
 ;;68084-0348-01
 ;;9002226.02101,"873,68084-0348-11 ",.01)
 ;;68084-0348-11
 ;;9002226.02101,"873,68084-0348-11 ",.02)
 ;;68084-0348-11
 ;;9002226.02101,"873,68084-0644-21 ",.01)
 ;;68084-0644-21
 ;;9002226.02101,"873,68084-0644-21 ",.02)
 ;;68084-0644-21
 ;;9002226.02101,"873,68084-0749-21 ",.01)
 ;;68084-0749-21
 ;;9002226.02101,"873,68084-0749-21 ",.02)
 ;;68084-0749-21
 ;;9002226.02101,"873,68084-0804-01 ",.01)
 ;;68084-0804-01
 ;;9002226.02101,"873,68084-0804-01 ",.02)
 ;;68084-0804-01
 ;;9002226.02101,"873,68084-0817-25 ",.01)
 ;;68084-0817-25
 ;;9002226.02101,"873,68084-0817-25 ",.02)
 ;;68084-0817-25
 ;;9002226.02101,"873,68084-0822-01 ",.01)
 ;;68084-0822-01
 ;;9002226.02101,"873,68084-0822-01 ",.02)
 ;;68084-0822-01
 ;;9002226.02101,"873,68084-0834-25 ",.01)
 ;;68084-0834-25
 ;;9002226.02101,"873,68084-0834-25 ",.02)
 ;;68084-0834-25
 ;;9002226.02101,"873,68084-0877-25 ",.01)
 ;;68084-0877-25
 ;;9002226.02101,"873,68084-0877-25 ",.02)
 ;;68084-0877-25
 ;;9002226.02101,"873,68084-0877-95 ",.01)
 ;;68084-0877-95
 ;;9002226.02101,"873,68084-0877-95 ",.02)
 ;;68084-0877-95
 ;;9002226.02101,"873,68084-0926-21 ",.01)
 ;;68084-0926-21
 ;;9002226.02101,"873,68084-0926-21 ",.02)
 ;;68084-0926-21
 ;;9002226.02101,"873,68084-0959-11 ",.01)
 ;;68084-0959-11
 ;;9002226.02101,"873,68084-0959-11 ",.02)
 ;;68084-0959-11
 ;;9002226.02101,"873,68084-0959-21 ",.01)
 ;;68084-0959-21
 ;;9002226.02101,"873,68084-0959-21 ",.02)
 ;;68084-0959-21
 ;;9002226.02101,"873,68115-0669-00 ",.01)
 ;;68115-0669-00
 ;;9002226.02101,"873,68115-0669-00 ",.02)
 ;;68115-0669-00
 ;;9002226.02101,"873,68115-0703-30 ",.01)
 ;;68115-0703-30
 ;;9002226.02101,"873,68115-0703-30 ",.02)
 ;;68115-0703-30
 ;;9002226.02101,"873,68115-0854-00 ",.01)
 ;;68115-0854-00
 ;;9002226.02101,"873,68115-0854-00 ",.02)
 ;;68115-0854-00
 ;;9002226.02101,"873,68180-0101-02 ",.01)
 ;;68180-0101-02
 ;;9002226.02101,"873,68180-0101-02 ",.02)
 ;;68180-0101-02
 ;;9002226.02101,"873,68180-0101-09 ",.01)
 ;;68180-0101-09
 ;;9002226.02101,"873,68180-0101-09 ",.02)
 ;;68180-0101-09
 ;;9002226.02101,"873,68180-0102-02 ",.01)
 ;;68180-0102-02
 ;;9002226.02101,"873,68180-0102-02 ",.02)
 ;;68180-0102-02
 ;;9002226.02101,"873,68180-0102-09 ",.01)
 ;;68180-0102-09
 ;;9002226.02101,"873,68180-0102-09 ",.02)
 ;;68180-0102-09
 ;;9002226.02101,"873,68180-0103-02 ",.01)
 ;;68180-0103-02
 ;;9002226.02101,"873,68180-0103-02 ",.02)
 ;;68180-0103-02
 ;;9002226.02101,"873,68180-0103-09 ",.01)
 ;;68180-0103-09
 ;;9002226.02101,"873,68180-0103-09 ",.02)
 ;;68180-0103-09
 ;;9002226.02101,"873,68180-0104-02 ",.01)
 ;;68180-0104-02