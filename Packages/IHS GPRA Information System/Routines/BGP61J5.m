BGP61J5 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1223,67544-0254-53 ",.01)
 ;;67544-0254-53
 ;;9002226.02101,"1223,67544-0254-53 ",.02)
 ;;67544-0254-53
 ;;9002226.02101,"1223,68071-0405-15 ",.01)
 ;;68071-0405-15
 ;;9002226.02101,"1223,68071-0405-15 ",.02)
 ;;68071-0405-15
 ;;9002226.02101,"1223,68071-0406-15 ",.01)
 ;;68071-0406-15
 ;;9002226.02101,"1223,68071-0406-15 ",.02)
 ;;68071-0406-15
 ;;9002226.02101,"1223,68071-0407-15 ",.01)
 ;;68071-0407-15
 ;;9002226.02101,"1223,68071-0407-15 ",.02)
 ;;68071-0407-15
 ;;9002226.02101,"1223,68084-0629-01 ",.01)
 ;;68084-0629-01
 ;;9002226.02101,"1223,68084-0629-01 ",.02)
 ;;68084-0629-01
 ;;9002226.02101,"1223,68084-0629-11 ",.01)
 ;;68084-0629-11
 ;;9002226.02101,"1223,68084-0629-11 ",.02)
 ;;68084-0629-11
 ;;9002226.02101,"1223,68084-0630-01 ",.01)
 ;;68084-0630-01
 ;;9002226.02101,"1223,68084-0630-01 ",.02)
 ;;68084-0630-01
 ;;9002226.02101,"1223,68084-0630-11 ",.01)
 ;;68084-0630-11
 ;;9002226.02101,"1223,68084-0630-11 ",.02)
 ;;68084-0630-11
 ;;9002226.02101,"1223,68084-0631-01 ",.01)
 ;;68084-0631-01
 ;;9002226.02101,"1223,68084-0631-01 ",.02)
 ;;68084-0631-01
 ;;9002226.02101,"1223,68084-0631-11 ",.01)
 ;;68084-0631-11
 ;;9002226.02101,"1223,68084-0631-11 ",.02)
 ;;68084-0631-11
 ;;9002226.02101,"1223,68084-0649-01 ",.01)
 ;;68084-0649-01
 ;;9002226.02101,"1223,68084-0649-01 ",.02)
 ;;68084-0649-01
 ;;9002226.02101,"1223,68084-0649-11 ",.01)
 ;;68084-0649-11
 ;;9002226.02101,"1223,68084-0649-11 ",.02)
 ;;68084-0649-11
 ;;9002226.02101,"1223,68084-0652-01 ",.01)
 ;;68084-0652-01
 ;;9002226.02101,"1223,68084-0652-01 ",.02)
 ;;68084-0652-01
 ;;9002226.02101,"1223,68084-0652-11 ",.01)
 ;;68084-0652-11
 ;;9002226.02101,"1223,68084-0652-11 ",.02)
 ;;68084-0652-11
 ;;9002226.02101,"1223,68084-0660-01 ",.01)
 ;;68084-0660-01
 ;;9002226.02101,"1223,68084-0660-01 ",.02)
 ;;68084-0660-01
 ;;9002226.02101,"1223,68084-0660-11 ",.01)
 ;;68084-0660-11
 ;;9002226.02101,"1223,68084-0660-11 ",.02)
 ;;68084-0660-11
 ;;9002226.02101,"1223,68258-3034-03 ",.01)
 ;;68258-3034-03
 ;;9002226.02101,"1223,68258-3034-03 ",.02)
 ;;68258-3034-03
 ;;9002226.02101,"1223,68258-5230-03 ",.01)
 ;;68258-5230-03
 ;;9002226.02101,"1223,68258-5230-03 ",.02)
 ;;68258-5230-03
 ;;9002226.02101,"1223,68258-5991-03 ",.01)
 ;;68258-5991-03
 ;;9002226.02101,"1223,68258-5991-03 ",.02)
 ;;68258-5991-03
 ;;9002226.02101,"1223,68258-6007-03 ",.01)
 ;;68258-6007-03
 ;;9002226.02101,"1223,68258-6007-03 ",.02)
 ;;68258-6007-03
 ;;9002226.04101,"1223,1",.01)
 ;;BGP