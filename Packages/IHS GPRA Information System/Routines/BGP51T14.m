BGP51T14 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1199,67253-0462-11 ",.02)
 ;;67253-0462-11
 ;;9002226.02101,"1199,67253-0462-50 ",.01)
 ;;67253-0462-50
 ;;9002226.02101,"1199,67253-0462-50 ",.02)
 ;;67253-0462-50
 ;;9002226.02101,"1199,67544-0097-53 ",.01)
 ;;67544-0097-53
 ;;9002226.02101,"1199,67544-0097-53 ",.02)
 ;;67544-0097-53
 ;;9002226.02101,"1199,67544-0097-60 ",.01)
 ;;67544-0097-60
 ;;9002226.02101,"1199,67544-0097-60 ",.02)
 ;;67544-0097-60
 ;;9002226.02101,"1199,67544-0097-70 ",.01)
 ;;67544-0097-70
 ;;9002226.02101,"1199,67544-0097-70 ",.02)
 ;;67544-0097-70
 ;;9002226.02101,"1199,67544-0097-80 ",.01)
 ;;67544-0097-80
 ;;9002226.02101,"1199,67544-0097-80 ",.02)
 ;;67544-0097-80
 ;;9002226.02101,"1199,67544-0097-92 ",.01)
 ;;67544-0097-92
 ;;9002226.02101,"1199,67544-0097-92 ",.02)
 ;;67544-0097-92
 ;;9002226.02101,"1199,67544-0097-94 ",.01)
 ;;67544-0097-94
 ;;9002226.02101,"1199,67544-0097-94 ",.02)
 ;;67544-0097-94
 ;;9002226.02101,"1199,67544-0129-53 ",.01)
 ;;67544-0129-53
 ;;9002226.02101,"1199,67544-0129-53 ",.02)
 ;;67544-0129-53
 ;;9002226.02101,"1199,67544-0129-70 ",.01)
 ;;67544-0129-70
 ;;9002226.02101,"1199,67544-0129-70 ",.02)
 ;;67544-0129-70
 ;;9002226.02101,"1199,67544-0129-80 ",.01)
 ;;67544-0129-80
 ;;9002226.02101,"1199,67544-0129-80 ",.02)
 ;;67544-0129-80
 ;;9002226.02101,"1199,67544-0129-94 ",.01)
 ;;67544-0129-94
 ;;9002226.02101,"1199,67544-0129-94 ",.02)
 ;;67544-0129-94
 ;;9002226.02101,"1199,67544-0199-80 ",.01)
 ;;67544-0199-80
 ;;9002226.02101,"1199,67544-0199-80 ",.02)
 ;;67544-0199-80
 ;;9002226.02101,"1199,67544-0296-70 ",.01)
 ;;67544-0296-70
 ;;9002226.02101,"1199,67544-0296-70 ",.02)
 ;;67544-0296-70
 ;;9002226.02101,"1199,67544-0302-32 ",.01)
 ;;67544-0302-32
 ;;9002226.02101,"1199,67544-0302-32 ",.02)
 ;;67544-0302-32
 ;;9002226.02101,"1199,67544-0302-45 ",.01)
 ;;67544-0302-45
 ;;9002226.02101,"1199,67544-0302-45 ",.02)
 ;;67544-0302-45
 ;;9002226.02101,"1199,67544-0302-60 ",.01)
 ;;67544-0302-60
 ;;9002226.02101,"1199,67544-0302-60 ",.02)
 ;;67544-0302-60
 ;;9002226.02101,"1199,67544-0302-73 ",.01)
 ;;67544-0302-73
 ;;9002226.02101,"1199,67544-0302-73 ",.02)
 ;;67544-0302-73
 ;;9002226.02101,"1199,67544-0302-80 ",.01)
 ;;67544-0302-80
 ;;9002226.02101,"1199,67544-0302-80 ",.02)
 ;;67544-0302-80
 ;;9002226.02101,"1199,67544-0302-92 ",.01)
 ;;67544-0302-92
 ;;9002226.02101,"1199,67544-0302-92 ",.02)
 ;;67544-0302-92
 ;;9002226.02101,"1199,67544-0302-98 ",.01)
 ;;67544-0302-98
 ;;9002226.02101,"1199,67544-0302-98 ",.02)
 ;;67544-0302-98
 ;;9002226.02101,"1199,67544-0364-70 ",.01)
 ;;67544-0364-70
 ;;9002226.02101,"1199,67544-0364-70 ",.02)
 ;;67544-0364-70
 ;;9002226.02101,"1199,67544-0417-70 ",.01)
 ;;67544-0417-70
 ;;9002226.02101,"1199,67544-0417-70 ",.02)
 ;;67544-0417-70
 ;;9002226.02101,"1199,67544-0511-70 ",.01)
 ;;67544-0511-70
 ;;9002226.02101,"1199,67544-0511-70 ",.02)
 ;;67544-0511-70
 ;;9002226.02101,"1199,67544-0511-94 ",.01)
 ;;67544-0511-94
 ;;9002226.02101,"1199,67544-0511-94 ",.02)
 ;;67544-0511-94
 ;;9002226.02101,"1199,67544-0566-53 ",.01)
 ;;67544-0566-53
 ;;9002226.02101,"1199,67544-0566-53 ",.02)
 ;;67544-0566-53
 ;;9002226.02101,"1199,67544-0566-60 ",.01)
 ;;67544-0566-60
 ;;9002226.02101,"1199,67544-0566-60 ",.02)
 ;;67544-0566-60
 ;;9002226.02101,"1199,67544-0566-70 ",.01)
 ;;67544-0566-70
 ;;9002226.02101,"1199,67544-0566-70 ",.02)
 ;;67544-0566-70
 ;;9002226.02101,"1199,67544-0566-80 ",.01)
 ;;67544-0566-80
 ;;9002226.02101,"1199,67544-0566-80 ",.02)
 ;;67544-0566-80
 ;;9002226.02101,"1199,67544-0566-90 ",.01)
 ;;67544-0566-90
 ;;9002226.02101,"1199,67544-0566-90 ",.02)
 ;;67544-0566-90
 ;;9002226.02101,"1199,67544-0566-92 ",.01)
 ;;67544-0566-92
 ;;9002226.02101,"1199,67544-0566-92 ",.02)
 ;;67544-0566-92
 ;;9002226.02101,"1199,67544-0566-94 ",.01)
 ;;67544-0566-94
 ;;9002226.02101,"1199,67544-0566-94 ",.02)
 ;;67544-0566-94
 ;;9002226.02101,"1199,67544-0613-53 ",.01)
 ;;67544-0613-53
 ;;9002226.02101,"1199,67544-0613-53 ",.02)
 ;;67544-0613-53
 ;;9002226.02101,"1199,67544-0613-60 ",.01)
 ;;67544-0613-60
 ;;9002226.02101,"1199,67544-0613-60 ",.02)
 ;;67544-0613-60
 ;;9002226.02101,"1199,67544-0613-70 ",.01)
 ;;67544-0613-70
 ;;9002226.02101,"1199,67544-0613-70 ",.02)
 ;;67544-0613-70
 ;;9002226.02101,"1199,67544-0613-80 ",.01)
 ;;67544-0613-80
 ;;9002226.02101,"1199,67544-0613-80 ",.02)
 ;;67544-0613-80
 ;;9002226.02101,"1199,67544-0613-90 ",.01)
 ;;67544-0613-90
 ;;9002226.02101,"1199,67544-0613-90 ",.02)
 ;;67544-0613-90
 ;;9002226.02101,"1199,67544-0613-92 ",.01)
 ;;67544-0613-92
 ;;9002226.02101,"1199,67544-0613-92 ",.02)
 ;;67544-0613-92
 ;;9002226.02101,"1199,67544-0613-94 ",.01)
 ;;67544-0613-94
 ;;9002226.02101,"1199,67544-0613-94 ",.02)
 ;;67544-0613-94
 ;;9002226.02101,"1199,67544-0643-80 ",.01)
 ;;67544-0643-80
 ;;9002226.02101,"1199,67544-0643-80 ",.02)
 ;;67544-0643-80
 ;;9002226.02101,"1199,67544-0643-94 ",.01)
 ;;67544-0643-94
 ;;9002226.02101,"1199,67544-0643-94 ",.02)
 ;;67544-0643-94
 ;;9002226.02101,"1199,67544-0653-53 ",.01)
 ;;67544-0653-53
 ;;9002226.02101,"1199,67544-0653-53 ",.02)
 ;;67544-0653-53
 ;;9002226.02101,"1199,67544-0653-60 ",.01)
 ;;67544-0653-60
 ;;9002226.02101,"1199,67544-0653-60 ",.02)
 ;;67544-0653-60
 ;;9002226.02101,"1199,67544-0653-70 ",.01)
 ;;67544-0653-70
 ;;9002226.02101,"1199,67544-0653-70 ",.02)
 ;;67544-0653-70
 ;;9002226.02101,"1199,67544-0653-80 ",.01)
 ;;67544-0653-80
 ;;9002226.02101,"1199,67544-0653-80 ",.02)
 ;;67544-0653-80
 ;;9002226.02101,"1199,67544-0653-90 ",.01)
 ;;67544-0653-90
 ;;9002226.02101,"1199,67544-0653-90 ",.02)
 ;;67544-0653-90
 ;;9002226.02101,"1199,67544-0653-92 ",.01)
 ;;67544-0653-92
 ;;9002226.02101,"1199,67544-0653-92 ",.02)
 ;;67544-0653-92
 ;;9002226.02101,"1199,67544-0653-94 ",.01)
 ;;67544-0653-94
 ;;9002226.02101,"1199,67544-0653-94 ",.02)
 ;;67544-0653-94
 ;;9002226.02101,"1199,67544-0653-98 ",.01)
 ;;67544-0653-98
 ;;9002226.02101,"1199,67544-0653-98 ",.02)
 ;;67544-0653-98
 ;;9002226.02101,"1199,67544-0661-41 ",.01)
 ;;67544-0661-41
 ;;9002226.02101,"1199,67544-0661-41 ",.02)
 ;;67544-0661-41
 ;;9002226.02101,"1199,67544-0661-81 ",.01)
 ;;67544-0661-81
 ;;9002226.02101,"1199,67544-0661-81 ",.02)
 ;;67544-0661-81
 ;;9002226.02101,"1199,67544-0751-60 ",.01)
 ;;67544-0751-60
 ;;9002226.02101,"1199,67544-0751-60 ",.02)
 ;;67544-0751-60
 ;;9002226.02101,"1199,67544-0751-80 ",.01)
 ;;67544-0751-80
 ;;9002226.02101,"1199,67544-0751-80 ",.02)
 ;;67544-0751-80
 ;;9002226.02101,"1199,67544-0756-60 ",.01)
 ;;67544-0756-60
 ;;9002226.02101,"1199,67544-0756-60 ",.02)
 ;;67544-0756-60
 ;;9002226.02101,"1199,67544-0756-80 ",.01)
 ;;67544-0756-80
 ;;9002226.02101,"1199,67544-0756-80 ",.02)
 ;;67544-0756-80
 ;;9002226.02101,"1199,67544-0808-60 ",.01)
 ;;67544-0808-60
 ;;9002226.02101,"1199,67544-0808-60 ",.02)
 ;;67544-0808-60
 ;;9002226.02101,"1199,67544-0875-60 ",.01)
 ;;67544-0875-60
 ;;9002226.02101,"1199,67544-0875-60 ",.02)
 ;;67544-0875-60
 ;;9002226.02101,"1199,67544-0875-80 ",.01)
 ;;67544-0875-80
 ;;9002226.02101,"1199,67544-0875-80 ",.02)
 ;;67544-0875-80
 ;;9002226.02101,"1199,67544-0927-60 ",.01)
 ;;67544-0927-60
 ;;9002226.02101,"1199,67544-0927-60 ",.02)
 ;;67544-0927-60
 ;;9002226.02101,"1199,67544-1129-70 ",.01)
 ;;67544-1129-70
 ;;9002226.02101,"1199,67544-1129-70 ",.02)
 ;;67544-1129-70
 ;;9002226.02101,"1199,68001-0177-00 ",.01)
 ;;68001-0177-00
 ;;9002226.02101,"1199,68001-0177-00 ",.02)
 ;;68001-0177-00
 ;;9002226.02101,"1199,68001-0178-00 ",.01)
 ;;68001-0178-00
 ;;9002226.02101,"1199,68001-0178-00 ",.02)
 ;;68001-0178-00
 ;;9002226.02101,"1199,68001-0179-00 ",.01)
 ;;68001-0179-00
 ;;9002226.02101,"1199,68001-0179-00 ",.02)
 ;;68001-0179-00
 ;;9002226.02101,"1199,68071-0008-30 ",.01)
 ;;68071-0008-30
 ;;9002226.02101,"1199,68071-0008-30 ",.02)
 ;;68071-0008-30
 ;;9002226.02101,"1199,68071-0028-30 ",.01)
 ;;68071-0028-30
 ;;9002226.02101,"1199,68071-0028-30 ",.02)
 ;;68071-0028-30
 ;;9002226.02101,"1199,68071-0028-60 ",.01)
 ;;68071-0028-60
 ;;9002226.02101,"1199,68071-0028-60 ",.02)
 ;;68071-0028-60
 ;;9002226.02101,"1199,68071-0388-30 ",.01)
 ;;68071-0388-30
 ;;9002226.02101,"1199,68071-0388-30 ",.02)
 ;;68071-0388-30
 ;;9002226.02101,"1199,68071-0823-30 ",.01)
 ;;68071-0823-30
 ;;9002226.02101,"1199,68071-0823-30 ",.02)
 ;;68071-0823-30
 ;;9002226.02101,"1199,68084-0111-01 ",.01)
 ;;68084-0111-01
 ;;9002226.02101,"1199,68084-0111-01 ",.02)
 ;;68084-0111-01
 ;;9002226.02101,"1199,68084-0111-11 ",.01)
 ;;68084-0111-11
 ;;9002226.02101,"1199,68084-0111-11 ",.02)
 ;;68084-0111-11
 ;;9002226.02101,"1199,68084-0112-01 ",.01)
 ;;68084-0112-01
 ;;9002226.02101,"1199,68084-0112-01 ",.02)
 ;;68084-0112-01
 ;;9002226.02101,"1199,68084-0112-11 ",.01)
 ;;68084-0112-11
 ;;9002226.02101,"1199,68084-0112-11 ",.02)
 ;;68084-0112-11
 ;;9002226.02101,"1199,68084-0136-01 ",.01)
 ;;68084-0136-01
 ;;9002226.02101,"1199,68084-0136-01 ",.02)
 ;;68084-0136-01
 ;;9002226.02101,"1199,68084-0136-11 ",.01)
 ;;68084-0136-11
 ;;9002226.02101,"1199,68084-0136-11 ",.02)
 ;;68084-0136-11
 ;;9002226.02101,"1199,68084-0137-01 ",.01)
 ;;68084-0137-01
 ;;9002226.02101,"1199,68084-0137-01 ",.02)
 ;;68084-0137-01
 ;;9002226.02101,"1199,68084-0137-11 ",.01)
 ;;68084-0137-11
 ;;9002226.02101,"1199,68084-0137-11 ",.02)
 ;;68084-0137-11
 ;;9002226.02101,"1199,68084-0138-01 ",.01)
 ;;68084-0138-01
 ;;9002226.02101,"1199,68084-0138-01 ",.02)
 ;;68084-0138-01
 ;;9002226.02101,"1199,68084-0138-11 ",.01)
 ;;68084-0138-11
 ;;9002226.02101,"1199,68084-0138-11 ",.02)
 ;;68084-0138-11
 ;;9002226.02101,"1199,68084-0295-11 ",.01)
 ;;68084-0295-11
 ;;9002226.02101,"1199,68084-0295-11 ",.02)
 ;;68084-0295-11
 ;;9002226.02101,"1199,68084-0295-21 ",.01)
 ;;68084-0295-21
 ;;9002226.02101,"1199,68084-0295-21 ",.02)
 ;;68084-0295-21
 ;;9002226.02101,"1199,68084-0326-01 ",.01)
 ;;68084-0326-01
 ;;9002226.02101,"1199,68084-0326-01 ",.02)
 ;;68084-0326-01
 ;;9002226.02101,"1199,68084-0326-11 ",.01)
 ;;68084-0326-11
 ;;9002226.02101,"1199,68084-0326-11 ",.02)
 ;;68084-0326-11
 ;;9002226.02101,"1199,68084-0327-01 ",.01)
 ;;68084-0327-01
 ;;9002226.02101,"1199,68084-0327-01 ",.02)
 ;;68084-0327-01
 ;;9002226.02101,"1199,68084-0327-11 ",.01)
 ;;68084-0327-11
 ;;9002226.02101,"1199,68084-0327-11 ",.02)
 ;;68084-0327-11
 ;;9002226.02101,"1199,68084-0556-11 ",.01)
 ;;68084-0556-11
 ;;9002226.02101,"1199,68084-0556-11 ",.02)
 ;;68084-0556-11
 ;;9002226.02101,"1199,68084-0556-21 ",.01)
 ;;68084-0556-21
 ;;9002226.02101,"1199,68084-0556-21 ",.02)
 ;;68084-0556-21
 ;;9002226.02101,"1199,68084-0745-25 ",.01)
 ;;68084-0745-25
 ;;9002226.02101,"1199,68084-0745-25 ",.02)
 ;;68084-0745-25
 ;;9002226.02101,"1199,68084-0745-95 ",.01)
 ;;68084-0745-95
 ;;9002226.02101,"1199,68084-0745-95 ",.02)
 ;;68084-0745-95
 ;;9002226.02101,"1199,68645-0150-54 ",.01)
 ;;68645-0150-54
 ;;9002226.02101,"1199,68645-0150-54 ",.02)
 ;;68645-0150-54
 ;;9002226.02101,"1199,68645-0151-59 ",.01)
 ;;68645-0151-59
 ;;9002226.02101,"1199,68645-0151-59 ",.02)
 ;;68645-0151-59
 ;;9002226.02101,"1199,68645-0210-54 ",.01)
 ;;68645-0210-54
 ;;9002226.02101,"1199,68645-0210-54 ",.02)
 ;;68645-0210-54
 ;;9002226.02101,"1199,68645-0211-54 ",.01)
 ;;68645-0211-54
 ;;9002226.02101,"1199,68645-0211-54 ",.02)
 ;;68645-0211-54
 ;;9002226.02101,"1199,76439-0123-10 ",.01)
 ;;76439-0123-10
 ;;9002226.02101,"1199,76439-0123-10 ",.02)
 ;;76439-0123-10
 ;;9002226.02101,"1199,76439-0124-10 ",.01)
 ;;76439-0124-10
 ;;9002226.02101,"1199,76439-0124-10 ",.02)
 ;;76439-0124-10
 ;;9002226.02101,"1199,76439-0125-10 ",.01)
 ;;76439-0125-10
 ;;9002226.02101,"1199,76439-0125-10 ",.02)
 ;;76439-0125-10