BGP63E22 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 11, 2016;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"873,65862-0163-90 ",.02)
 ;;65862-0163-90
 ;;9002226.02101,"873,65862-0201-90 ",.01)
 ;;65862-0201-90
 ;;9002226.02101,"873,65862-0201-90 ",.02)
 ;;65862-0201-90
 ;;9002226.02101,"873,65862-0201-99 ",.01)
 ;;65862-0201-99
 ;;9002226.02101,"873,65862-0201-99 ",.02)
 ;;65862-0201-99
 ;;9002226.02101,"873,65862-0202-30 ",.01)
 ;;65862-0202-30
 ;;9002226.02101,"873,65862-0202-30 ",.02)
 ;;65862-0202-30
 ;;9002226.02101,"873,65862-0202-90 ",.01)
 ;;65862-0202-90
 ;;9002226.02101,"873,65862-0202-90 ",.02)
 ;;65862-0202-90
 ;;9002226.02101,"873,65862-0202-99 ",.01)
 ;;65862-0202-99
 ;;9002226.02101,"873,65862-0202-99 ",.02)
 ;;65862-0202-99
 ;;9002226.02101,"873,65862-0203-30 ",.01)
 ;;65862-0203-30
 ;;9002226.02101,"873,65862-0203-30 ",.02)
 ;;65862-0203-30
 ;;9002226.02101,"873,65862-0203-90 ",.01)
 ;;65862-0203-90
 ;;9002226.02101,"873,65862-0203-90 ",.02)
 ;;65862-0203-90
 ;;9002226.02101,"873,65862-0203-99 ",.01)
 ;;65862-0203-99
 ;;9002226.02101,"873,65862-0203-99 ",.02)
 ;;65862-0203-99
 ;;9002226.02101,"873,65862-0308-01 ",.01)
 ;;65862-0308-01
 ;;9002226.02101,"873,65862-0308-01 ",.02)
 ;;65862-0308-01
 ;;9002226.02101,"873,65862-0309-01 ",.01)
 ;;65862-0309-01
 ;;9002226.02101,"873,65862-0309-01 ",.02)
 ;;65862-0309-01
 ;;9002226.02101,"873,65862-0468-30 ",.01)
 ;;65862-0468-30
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
 ;;9002226.02101,"873,65862-0582-01 ",.01)
 ;;65862-0582-01
 ;;9002226.02101,"873,65862-0582-01 ",.02)
 ;;65862-0582-01
 ;;9002226.02101,"873,65862-0582-05 ",.01)
 ;;65862-0582-05
 ;;9002226.02101,"873,65862-0582-05 ",.02)
 ;;65862-0582-05
 ;;9002226.02101,"873,65862-0583-01 ",.01)
 ;;65862-0583-01
 ;;9002226.02101,"873,65862-0583-01 ",.02)
 ;;65862-0583-01
 ;;9002226.02101,"873,65862-0583-05 ",.01)
 ;;65862-0583-05
 ;;9002226.02101,"873,65862-0583-05 ",.02)
 ;;65862-0583-05
 ;;9002226.02101,"873,65862-0584-01 ",.01)
 ;;65862-0584-01
 ;;9002226.02101,"873,65862-0584-01 ",.02)
 ;;65862-0584-01
 ;;9002226.02101,"873,65862-0584-05 ",.01)
 ;;65862-0584-05
 ;;9002226.02101,"873,65862-0584-05 ",.02)
 ;;65862-0584-05
 ;;9002226.02101,"873,65862-0585-01 ",.01)
 ;;65862-0585-01
 ;;9002226.02101,"873,65862-0585-01 ",.02)
 ;;65862-0585-01
 ;;9002226.02101,"873,65862-0585-05 ",.01)
 ;;65862-0585-05
 ;;9002226.02101,"873,65862-0585-05 ",.02)
 ;;65862-0585-05
 ;;9002226.02101,"873,65862-0586-01 ",.01)
 ;;65862-0586-01
 ;;9002226.02101,"873,65862-0586-01 ",.02)
 ;;65862-0586-01
 ;;9002226.02101,"873,65862-0586-05 ",.01)
 ;;65862-0586-05
 ;;9002226.02101,"873,65862-0586-05 ",.02)
 ;;65862-0586-05
 ;;9002226.02101,"873,65862-0587-01 ",.01)
 ;;65862-0587-01
 ;;9002226.02101,"873,65862-0587-01 ",.02)
 ;;65862-0587-01
 ;;9002226.02101,"873,65862-0587-05 ",.01)
 ;;65862-0587-05
 ;;9002226.02101,"873,65862-0587-05 ",.02)
 ;;65862-0587-05
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
 ;;9002226.02101,"873,66336-0572-30 ",.01)
 ;;66336-0572-30
 ;;9002226.02101,"873,66336-0572-30 ",.02)
 ;;66336-0572-30
 ;;9002226.02101,"873,66336-0805-30 ",.01)
 ;;66336-0805-30
 ;;9002226.02101,"873,66336-0805-30 ",.02)
 ;;66336-0805-30
 ;;9002226.02101,"873,67544-0377-60 ",.01)
 ;;67544-0377-60
 ;;9002226.02101,"873,67544-0377-60 ",.02)
 ;;67544-0377-60
 ;;9002226.02101,"873,67544-0382-30 ",.01)
 ;;67544-0382-30
 ;;9002226.02101,"873,67544-0382-30 ",.02)
 ;;67544-0382-30
 ;;9002226.02101,"873,67544-0400-45 ",.01)
 ;;67544-0400-45
 ;;9002226.02101,"873,67544-0400-45 ",.02)
 ;;67544-0400-45
 ;;9002226.02101,"873,67544-0418-60 ",.01)
 ;;67544-0418-60
 ;;9002226.02101,"873,67544-0418-60 ",.02)
 ;;67544-0418-60
 ;;9002226.02101,"873,67801-0340-03 ",.01)
 ;;67801-0340-03
 ;;9002226.02101,"873,67801-0340-03 ",.02)
 ;;67801-0340-03
 ;;9002226.02101,"873,67801-0342-03 ",.01)
 ;;67801-0342-03
 ;;9002226.02101,"873,67801-0342-03 ",.02)
 ;;67801-0342-03
 ;;9002226.02101,"873,67801-0343-03 ",.01)
 ;;67801-0343-03
 ;;9002226.02101,"873,67801-0343-03 ",.02)
 ;;67801-0343-03
 ;;9002226.02101,"873,67801-0441-03 ",.01)
 ;;67801-0441-03
 ;;9002226.02101,"873,67801-0441-03 ",.02)
 ;;67801-0441-03
 ;;9002226.02101,"873,68001-0130-00 ",.01)
 ;;68001-0130-00
 ;;9002226.02101,"873,68001-0130-00 ",.02)
 ;;68001-0130-00
 ;;9002226.02101,"873,68001-0131-00 ",.01)
 ;;68001-0131-00
 ;;9002226.02101,"873,68001-0131-00 ",.02)
 ;;68001-0131-00
 ;;9002226.02101,"873,68001-0132-00 ",.01)
 ;;68001-0132-00
 ;;9002226.02101,"873,68001-0132-00 ",.02)
 ;;68001-0132-00
 ;;9002226.02101,"873,68001-0133-00 ",.01)
 ;;68001-0133-00
 ;;9002226.02101,"873,68001-0133-00 ",.02)
 ;;68001-0133-00
 ;;9002226.02101,"873,68001-0134-00 ",.01)
 ;;68001-0134-00
 ;;9002226.02101,"873,68001-0134-00 ",.02)
 ;;68001-0134-00
 ;;9002226.02101,"873,68001-0135-00 ",.01)
 ;;68001-0135-00