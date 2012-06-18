BGP21L43 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1201,67544-0050-53 ",.02)
 ;;67544-0050-53
 ;;9002226.02101,"1201,67544-0050-60 ",.01)
 ;;67544-0050-60
 ;;9002226.02101,"1201,67544-0050-60 ",.02)
 ;;67544-0050-60
 ;;9002226.02101,"1201,67544-0051-15 ",.01)
 ;;67544-0051-15
 ;;9002226.02101,"1201,67544-0051-15 ",.02)
 ;;67544-0051-15
 ;;9002226.02101,"1201,67544-0051-16 ",.01)
 ;;67544-0051-16
 ;;9002226.02101,"1201,67544-0051-16 ",.02)
 ;;67544-0051-16
 ;;9002226.02101,"1201,67544-0051-45 ",.01)
 ;;67544-0051-45
 ;;9002226.02101,"1201,67544-0051-45 ",.02)
 ;;67544-0051-45
 ;;9002226.02101,"1201,67544-0051-53 ",.01)
 ;;67544-0051-53
 ;;9002226.02101,"1201,67544-0051-53 ",.02)
 ;;67544-0051-53
 ;;9002226.02101,"1201,67544-0060-15 ",.01)
 ;;67544-0060-15
 ;;9002226.02101,"1201,67544-0060-15 ",.02)
 ;;67544-0060-15
 ;;9002226.02101,"1201,67544-0060-30 ",.01)
 ;;67544-0060-30
 ;;9002226.02101,"1201,67544-0060-30 ",.02)
 ;;67544-0060-30
 ;;9002226.02101,"1201,67544-0060-45 ",.01)
 ;;67544-0060-45
 ;;9002226.02101,"1201,67544-0060-45 ",.02)
 ;;67544-0060-45
 ;;9002226.02101,"1201,67544-0060-60 ",.01)
 ;;67544-0060-60
 ;;9002226.02101,"1201,67544-0060-60 ",.02)
 ;;67544-0060-60
 ;;9002226.02101,"1201,67544-0081-15 ",.01)
 ;;67544-0081-15
 ;;9002226.02101,"1201,67544-0081-15 ",.02)
 ;;67544-0081-15
 ;;9002226.02101,"1201,67544-0081-30 ",.01)
 ;;67544-0081-30
 ;;9002226.02101,"1201,67544-0081-30 ",.02)
 ;;67544-0081-30
 ;;9002226.02101,"1201,67544-0081-45 ",.01)
 ;;67544-0081-45
 ;;9002226.02101,"1201,67544-0081-45 ",.02)
 ;;67544-0081-45
 ;;9002226.02101,"1201,67544-0081-60 ",.01)
 ;;67544-0081-60
 ;;9002226.02101,"1201,67544-0081-60 ",.02)
 ;;67544-0081-60
 ;;9002226.02101,"1201,67544-0082-15 ",.01)
 ;;67544-0082-15
 ;;9002226.02101,"1201,67544-0082-15 ",.02)
 ;;67544-0082-15
 ;;9002226.02101,"1201,67544-0082-45 ",.01)
 ;;67544-0082-45
 ;;9002226.02101,"1201,67544-0082-45 ",.02)
 ;;67544-0082-45
 ;;9002226.02101,"1201,67544-0106-15 ",.01)
 ;;67544-0106-15
 ;;9002226.02101,"1201,67544-0106-15 ",.02)
 ;;67544-0106-15
 ;;9002226.02101,"1201,67544-0106-30 ",.01)
 ;;67544-0106-30
 ;;9002226.02101,"1201,67544-0106-30 ",.02)
 ;;67544-0106-30
 ;;9002226.02101,"1201,67544-0106-45 ",.01)
 ;;67544-0106-45
 ;;9002226.02101,"1201,67544-0106-45 ",.02)
 ;;67544-0106-45
 ;;9002226.02101,"1201,67544-0106-53 ",.01)
 ;;67544-0106-53
 ;;9002226.02101,"1201,67544-0106-53 ",.02)
 ;;67544-0106-53
 ;;9002226.02101,"1201,67544-0106-60 ",.01)
 ;;67544-0106-60
 ;;9002226.02101,"1201,67544-0106-60 ",.02)
 ;;67544-0106-60
 ;;9002226.02101,"1201,67544-0106-80 ",.01)
 ;;67544-0106-80
 ;;9002226.02101,"1201,67544-0106-80 ",.02)
 ;;67544-0106-80
 ;;9002226.02101,"1201,67544-0225-15 ",.01)
 ;;67544-0225-15
 ;;9002226.02101,"1201,67544-0225-15 ",.02)
 ;;67544-0225-15
 ;;9002226.02101,"1201,67544-0225-30 ",.01)
 ;;67544-0225-30
 ;;9002226.02101,"1201,67544-0225-30 ",.02)
 ;;67544-0225-30
 ;;9002226.02101,"1201,67544-0225-45 ",.01)
 ;;67544-0225-45
 ;;9002226.02101,"1201,67544-0225-45 ",.02)
 ;;67544-0225-45
 ;;9002226.02101,"1201,67544-0225-53 ",.01)
 ;;67544-0225-53
 ;;9002226.02101,"1201,67544-0225-53 ",.02)
 ;;67544-0225-53
 ;;9002226.02101,"1201,67544-0225-60 ",.01)
 ;;67544-0225-60
 ;;9002226.02101,"1201,67544-0225-60 ",.02)
 ;;67544-0225-60
 ;;9002226.02101,"1201,67544-0225-80 ",.01)
 ;;67544-0225-80
 ;;9002226.02101,"1201,67544-0225-80 ",.02)
 ;;67544-0225-80
 ;;9002226.02101,"1201,67544-0245-30 ",.01)
 ;;67544-0245-30
 ;;9002226.02101,"1201,67544-0245-30 ",.02)
 ;;67544-0245-30
 ;;9002226.02101,"1201,67544-0245-60 ",.01)
 ;;67544-0245-60
 ;;9002226.02101,"1201,67544-0245-60 ",.02)
 ;;67544-0245-60
 ;;9002226.02101,"1201,67544-0247-30 ",.01)
 ;;67544-0247-30
 ;;9002226.02101,"1201,67544-0247-30 ",.02)
 ;;67544-0247-30
 ;;9002226.02101,"1201,67544-0854-45 ",.01)
 ;;67544-0854-45
 ;;9002226.02101,"1201,67544-0854-45 ",.02)
 ;;67544-0854-45
 ;;9002226.02101,"1201,67544-0854-60 ",.01)
 ;;67544-0854-60
 ;;9002226.02101,"1201,67544-0854-60 ",.02)
 ;;67544-0854-60
 ;;9002226.02101,"1201,67544-0855-15 ",.01)
 ;;67544-0855-15
 ;;9002226.02101,"1201,67544-0855-15 ",.02)
 ;;67544-0855-15
 ;;9002226.02101,"1201,67544-0855-30 ",.01)
 ;;67544-0855-30
 ;;9002226.02101,"1201,67544-0855-30 ",.02)
 ;;67544-0855-30
 ;;9002226.02101,"1201,67544-0855-45 ",.01)
 ;;67544-0855-45
 ;;9002226.02101,"1201,67544-0855-45 ",.02)
 ;;67544-0855-45
 ;;9002226.02101,"1201,67544-0855-60 ",.01)
 ;;67544-0855-60
 ;;9002226.02101,"1201,67544-0855-60 ",.02)
 ;;67544-0855-60
 ;;9002226.02101,"1201,67544-0856-15 ",.01)
 ;;67544-0856-15
 ;;9002226.02101,"1201,67544-0856-15 ",.02)
 ;;67544-0856-15
 ;;9002226.02101,"1201,67544-0856-45 ",.01)
 ;;67544-0856-45
 ;;9002226.02101,"1201,67544-0856-45 ",.02)
 ;;67544-0856-45
 ;;9002226.02101,"1201,67544-0857-15 ",.01)
 ;;67544-0857-15
 ;;9002226.02101,"1201,67544-0857-15 ",.02)
 ;;67544-0857-15
 ;;9002226.02101,"1201,67544-0857-45 ",.01)
 ;;67544-0857-45
 ;;9002226.02101,"1201,67544-0857-45 ",.02)
 ;;67544-0857-45
 ;;9002226.02101,"1201,67544-0857-60 ",.01)
 ;;67544-0857-60
 ;;9002226.02101,"1201,67544-0857-60 ",.02)
 ;;67544-0857-60
 ;;9002226.02101,"1201,67544-1001-30 ",.01)
 ;;67544-1001-30
 ;;9002226.02101,"1201,67544-1001-30 ",.02)
 ;;67544-1001-30