ATXXB167 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1804,3E0H7SF ",.02)
 ;;3E0H7SF 
 ;;9002226.02101,"1804,3E0H7SF ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0H7TZ ",.01)
 ;;3E0H7TZ 
 ;;9002226.02101,"1804,3E0H7TZ ",.02)
 ;;3E0H7TZ 
 ;;9002226.02101,"1804,3E0H7TZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0H804 ",.01)
 ;;3E0H804 
 ;;9002226.02101,"1804,3E0H804 ",.02)
 ;;3E0H804 
 ;;9002226.02101,"1804,3E0H804 ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0H80M ",.01)
 ;;3E0H80M 
 ;;9002226.02101,"1804,3E0H80M ",.02)
 ;;3E0H80M 
 ;;9002226.02101,"1804,3E0H80M ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0H829 ",.01)
 ;;3E0H829 
 ;;9002226.02101,"1804,3E0H829 ",.02)
 ;;3E0H829 
 ;;9002226.02101,"1804,3E0H829 ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0H87Z ",.01)
 ;;3E0H87Z 
 ;;9002226.02101,"1804,3E0H87Z ",.02)
 ;;3E0H87Z 
 ;;9002226.02101,"1804,3E0H87Z ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0H8BZ ",.01)
 ;;3E0H8BZ 
 ;;9002226.02101,"1804,3E0H8BZ ",.02)
 ;;3E0H8BZ 
 ;;9002226.02101,"1804,3E0H8BZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0H8HZ ",.01)
 ;;3E0H8HZ 
 ;;9002226.02101,"1804,3E0H8HZ ",.02)
 ;;3E0H8HZ 
 ;;9002226.02101,"1804,3E0H8HZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0H8KZ ",.01)
 ;;3E0H8KZ 
 ;;9002226.02101,"1804,3E0H8KZ ",.02)
 ;;3E0H8KZ 
 ;;9002226.02101,"1804,3E0H8KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0H8NZ ",.01)
 ;;3E0H8NZ 
 ;;9002226.02101,"1804,3E0H8NZ ",.02)
 ;;3E0H8NZ 
 ;;9002226.02101,"1804,3E0H8NZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0H8SF ",.01)
 ;;3E0H8SF 
 ;;9002226.02101,"1804,3E0H8SF ",.02)
 ;;3E0H8SF 
 ;;9002226.02101,"1804,3E0H8SF ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0H8TZ ",.01)
 ;;3E0H8TZ 
 ;;9002226.02101,"1804,3E0H8TZ ",.02)
 ;;3E0H8TZ 
 ;;9002226.02101,"1804,3E0H8TZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0J304 ",.01)
 ;;3E0J304 
 ;;9002226.02101,"1804,3E0J304 ",.02)
 ;;3E0J304 
 ;;9002226.02101,"1804,3E0J304 ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0J30M ",.01)
 ;;3E0J30M 
 ;;9002226.02101,"1804,3E0J30M ",.02)
 ;;3E0J30M 
 ;;9002226.02101,"1804,3E0J30M ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0J329 ",.01)
 ;;3E0J329 
 ;;9002226.02101,"1804,3E0J329 ",.02)
 ;;3E0J329 
 ;;9002226.02101,"1804,3E0J329 ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0J33Z ",.01)
 ;;3E0J33Z 
 ;;9002226.02101,"1804,3E0J33Z ",.02)
 ;;3E0J33Z 
 ;;9002226.02101,"1804,3E0J33Z ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0J3NZ ",.01)
 ;;3E0J3NZ 
 ;;9002226.02101,"1804,3E0J3NZ ",.02)
 ;;3E0J3NZ 
 ;;9002226.02101,"1804,3E0J3NZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0J3SF ",.01)
 ;;3E0J3SF 
 ;;9002226.02101,"1804,3E0J3SF ",.02)
 ;;3E0J3SF 
 ;;9002226.02101,"1804,3E0J3SF ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0J704 ",.01)
 ;;3E0J704 
 ;;9002226.02101,"1804,3E0J704 ",.02)
 ;;3E0J704 
 ;;9002226.02101,"1804,3E0J704 ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0J70M ",.01)
 ;;3E0J70M 
 ;;9002226.02101,"1804,3E0J70M ",.02)
 ;;3E0J70M 
 ;;9002226.02101,"1804,3E0J70M ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0J729 ",.01)
 ;;3E0J729 
 ;;9002226.02101,"1804,3E0J729 ",.02)
 ;;3E0J729 
 ;;9002226.02101,"1804,3E0J729 ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0J7NZ ",.01)
 ;;3E0J7NZ 
 ;;9002226.02101,"1804,3E0J7NZ ",.02)
 ;;3E0J7NZ 
 ;;9002226.02101,"1804,3E0J7NZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0J7SF ",.01)
 ;;3E0J7SF 
 ;;9002226.02101,"1804,3E0J7SF ",.02)
 ;;3E0J7SF 
 ;;9002226.02101,"1804,3E0J7SF ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0J804 ",.01)
 ;;3E0J804 
 ;;9002226.02101,"1804,3E0J804 ",.02)
 ;;3E0J804 
 ;;9002226.02101,"1804,3E0J804 ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0J80M ",.01)
 ;;3E0J80M 
 ;;9002226.02101,"1804,3E0J80M ",.02)
 ;;3E0J80M 
 ;;9002226.02101,"1804,3E0J80M ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0J829 ",.01)
 ;;3E0J829 
 ;;9002226.02101,"1804,3E0J829 ",.02)
 ;;3E0J829 
 ;;9002226.02101,"1804,3E0J829 ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0J8NZ ",.01)
 ;;3E0J8NZ 
 ;;9002226.02101,"1804,3E0J8NZ ",.02)
 ;;3E0J8NZ 
 ;;9002226.02101,"1804,3E0J8NZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0J8SF ",.01)
 ;;3E0J8SF 
 ;;9002226.02101,"1804,3E0J8SF ",.02)
 ;;3E0J8SF 
 ;;9002226.02101,"1804,3E0J8SF ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0K304 ",.01)
 ;;3E0K304 
 ;;9002226.02101,"1804,3E0K304 ",.02)
 ;;3E0K304 
 ;;9002226.02101,"1804,3E0K304 ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0K30M ",.01)
 ;;3E0K30M 
 ;;9002226.02101,"1804,3E0K30M ",.02)
 ;;3E0K30M 
 ;;9002226.02101,"1804,3E0K30M ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0K329 ",.01)
 ;;3E0K329 
 ;;9002226.02101,"1804,3E0K329 ",.02)
 ;;3E0K329 
 ;;9002226.02101,"1804,3E0K329 ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0K33Z ",.01)
 ;;3E0K33Z 
 ;;9002226.02101,"1804,3E0K33Z ",.02)
 ;;3E0K33Z 
 ;;9002226.02101,"1804,3E0K33Z ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0K3BZ ",.01)
 ;;3E0K3BZ 
 ;;9002226.02101,"1804,3E0K3BZ ",.02)
 ;;3E0K3BZ 
 ;;9002226.02101,"1804,3E0K3BZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0K3HZ ",.01)
 ;;3E0K3HZ 
 ;;9002226.02101,"1804,3E0K3HZ ",.02)
 ;;3E0K3HZ 
 ;;9002226.02101,"1804,3E0K3HZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0K3KZ ",.01)
 ;;3E0K3KZ 
 ;;9002226.02101,"1804,3E0K3KZ ",.02)
 ;;3E0K3KZ 
 ;;9002226.02101,"1804,3E0K3KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0K3NZ ",.01)
 ;;3E0K3NZ 
 ;;9002226.02101,"1804,3E0K3NZ ",.02)
 ;;3E0K3NZ 
 ;;9002226.02101,"1804,3E0K3NZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0K3SF ",.01)
 ;;3E0K3SF 
 ;;9002226.02101,"1804,3E0K3SF ",.02)
 ;;3E0K3SF 
 ;;9002226.02101,"1804,3E0K3SF ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0K3TZ ",.01)
 ;;3E0K3TZ 
 ;;9002226.02101,"1804,3E0K3TZ ",.02)
 ;;3E0K3TZ 
 ;;9002226.02101,"1804,3E0K3TZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0K704 ",.01)
 ;;3E0K704 
 ;;9002226.02101,"1804,3E0K704 ",.02)
 ;;3E0K704 
 ;;9002226.02101,"1804,3E0K704 ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0K70M ",.01)
 ;;3E0K70M 
 ;;9002226.02101,"1804,3E0K70M ",.02)
 ;;3E0K70M 
 ;;9002226.02101,"1804,3E0K70M ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0K729 ",.01)
 ;;3E0K729 
 ;;9002226.02101,"1804,3E0K729 ",.02)
 ;;3E0K729 
 ;;9002226.02101,"1804,3E0K729 ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0K7BZ ",.01)
 ;;3E0K7BZ 
 ;;9002226.02101,"1804,3E0K7BZ ",.02)
 ;;3E0K7BZ 
 ;;9002226.02101,"1804,3E0K7BZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0K7GC ",.01)
 ;;3E0K7GC 
 ;;9002226.02101,"1804,3E0K7GC ",.02)
 ;;3E0K7GC 
 ;;9002226.02101,"1804,3E0K7GC ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0K7HZ ",.01)
 ;;3E0K7HZ 
 ;;9002226.02101,"1804,3E0K7HZ ",.02)
 ;;3E0K7HZ 
 ;;9002226.02101,"1804,3E0K7HZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0K7KZ ",.01)
 ;;3E0K7KZ 
 ;;9002226.02101,"1804,3E0K7KZ ",.02)
 ;;3E0K7KZ 
 ;;9002226.02101,"1804,3E0K7KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0K7NZ ",.01)
 ;;3E0K7NZ 
 ;;9002226.02101,"1804,3E0K7NZ ",.02)
 ;;3E0K7NZ 
 ;;9002226.02101,"1804,3E0K7NZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0K7SF ",.01)
 ;;3E0K7SF 
 ;;9002226.02101,"1804,3E0K7SF ",.02)
 ;;3E0K7SF 
 ;;9002226.02101,"1804,3E0K7SF ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0K7TZ ",.01)
 ;;3E0K7TZ 
 ;;9002226.02101,"1804,3E0K7TZ ",.02)
 ;;3E0K7TZ 
 ;;9002226.02101,"1804,3E0K7TZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0K804 ",.01)
 ;;3E0K804 
 ;;9002226.02101,"1804,3E0K804 ",.02)
 ;;3E0K804 
 ;;9002226.02101,"1804,3E0K804 ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0K80M ",.01)
 ;;3E0K80M 
 ;;9002226.02101,"1804,3E0K80M ",.02)
 ;;3E0K80M 
 ;;9002226.02101,"1804,3E0K80M ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0K829 ",.01)
 ;;3E0K829 
 ;;9002226.02101,"1804,3E0K829 ",.02)
 ;;3E0K829 
 ;;9002226.02101,"1804,3E0K829 ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0K8BZ ",.01)
 ;;3E0K8BZ 
 ;;9002226.02101,"1804,3E0K8BZ ",.02)
 ;;3E0K8BZ 
 ;;9002226.02101,"1804,3E0K8BZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0K8GC ",.01)
 ;;3E0K8GC 
 ;;9002226.02101,"1804,3E0K8GC ",.02)
 ;;3E0K8GC 
 ;;9002226.02101,"1804,3E0K8GC ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0K8HZ ",.01)
 ;;3E0K8HZ 
 ;;9002226.02101,"1804,3E0K8HZ ",.02)
 ;;3E0K8HZ 
 ;;9002226.02101,"1804,3E0K8HZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0K8KZ ",.01)
 ;;3E0K8KZ 
 ;;9002226.02101,"1804,3E0K8KZ ",.02)
 ;;3E0K8KZ 
 ;;9002226.02101,"1804,3E0K8KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0K8NZ ",.01)
 ;;3E0K8NZ 
 ;;9002226.02101,"1804,3E0K8NZ ",.02)
 ;;3E0K8NZ 
 ;;9002226.02101,"1804,3E0K8NZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0K8SF ",.01)
 ;;3E0K8SF 
 ;;9002226.02101,"1804,3E0K8SF ",.02)
 ;;3E0K8SF 
 ;;9002226.02101,"1804,3E0K8SF ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0K8TZ ",.01)
 ;;3E0K8TZ 
 ;;9002226.02101,"1804,3E0K8TZ ",.02)
 ;;3E0K8TZ 
 ;;9002226.02101,"1804,3E0K8TZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0L05Z ",.01)
 ;;3E0L05Z 
 ;;9002226.02101,"1804,3E0L05Z ",.02)
 ;;3E0L05Z 
 ;;9002226.02101,"1804,3E0L05Z ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0L304 ",.01)
 ;;3E0L304 
 ;;9002226.02101,"1804,3E0L304 ",.02)
 ;;3E0L304 
 ;;9002226.02101,"1804,3E0L304 ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0L30M ",.01)
 ;;3E0L30M 
 ;;9002226.02101,"1804,3E0L30M ",.02)
 ;;3E0L30M 
 ;;9002226.02101,"1804,3E0L30M ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0L329 ",.01)
 ;;3E0L329 
 ;;9002226.02101,"1804,3E0L329 ",.02)
 ;;3E0L329 
 ;;9002226.02101,"1804,3E0L329 ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0L33Z ",.01)
 ;;3E0L33Z 
 ;;9002226.02101,"1804,3E0L33Z ",.02)
 ;;3E0L33Z 
 ;;9002226.02101,"1804,3E0L33Z ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0L3NZ ",.01)
 ;;3E0L3NZ 
 ;;9002226.02101,"1804,3E0L3NZ ",.02)
 ;;3E0L3NZ 
 ;;9002226.02101,"1804,3E0L3NZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0L704 ",.01)
 ;;3E0L704 
 ;;9002226.02101,"1804,3E0L704 ",.02)
 ;;3E0L704 
 ;;9002226.02101,"1804,3E0L704 ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0L70M ",.01)
 ;;3E0L70M 
 ;;9002226.02101,"1804,3E0L70M ",.02)
 ;;3E0L70M 
 ;;9002226.02101,"1804,3E0L70M ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0M05Z ",.01)
 ;;3E0M05Z 
 ;;9002226.02101,"1804,3E0M05Z ",.02)
 ;;3E0M05Z 
 ;;9002226.02101,"1804,3E0M05Z ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0M304 ",.01)
 ;;3E0M304 
 ;;9002226.02101,"1804,3E0M304 ",.02)
 ;;3E0M304 
 ;;9002226.02101,"1804,3E0M304 ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0M30M ",.01)
 ;;3E0M30M 
 ;;9002226.02101,"1804,3E0M30M ",.02)
 ;;3E0M30M 
 ;;9002226.02101,"1804,3E0M30M ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0M329 ",.01)
 ;;3E0M329 
 ;;9002226.02101,"1804,3E0M329 ",.02)
 ;;3E0M329 
 ;;9002226.02101,"1804,3E0M329 ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0M33Z ",.01)
 ;;3E0M33Z 
 ;;9002226.02101,"1804,3E0M33Z ",.02)
 ;;3E0M33Z 
 ;;9002226.02101,"1804,3E0M33Z ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0M3NZ ",.01)
 ;;3E0M3NZ 
 ;;9002226.02101,"1804,3E0M3NZ ",.02)
 ;;3E0M3NZ 
 ;;9002226.02101,"1804,3E0M3NZ ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0M704 ",.01)
 ;;3E0M704 
 ;;9002226.02101,"1804,3E0M704 ",.02)
 ;;3E0M704 
 ;;9002226.02101,"1804,3E0M704 ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0M70M ",.01)
 ;;3E0M70M 
 ;;9002226.02101,"1804,3E0M70M ",.02)
 ;;3E0M70M 
 ;;9002226.02101,"1804,3E0M70M ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0N304 ",.01)
 ;;3E0N304 
 ;;9002226.02101,"1804,3E0N304 ",.02)
 ;;3E0N304 
 ;;9002226.02101,"1804,3E0N304 ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0N30M ",.01)
 ;;3E0N30M 
 ;;9002226.02101,"1804,3E0N30M ",.02)
 ;;3E0N30M 
 ;;9002226.02101,"1804,3E0N30M ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0N329 ",.01)
 ;;3E0N329 
 ;;9002226.02101,"1804,3E0N329 ",.02)
 ;;3E0N329 
 ;;9002226.02101,"1804,3E0N329 ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0N33Z ",.01)
 ;;3E0N33Z 
 ;;9002226.02101,"1804,3E0N33Z ",.02)
 ;;3E0N33Z 
 ;;9002226.02101,"1804,3E0N33Z ",.03)
 ;;31
 ;;9002226.02101,"1804,3E0N3NZ ",.01)
 ;;3E0N3NZ 
 ;;9002226.02101,"1804,3E0N3NZ ",.02)
 ;;3E0N3NZ 