ATXXB245 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1804,F01ZCZZ ",.02)
 ;;F01ZCZZ 
 ;;9002226.02101,"1804,F01ZCZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F01ZDEZ ",.01)
 ;;F01ZDEZ 
 ;;9002226.02101,"1804,F01ZDEZ ",.02)
 ;;F01ZDEZ 
 ;;9002226.02101,"1804,F01ZDEZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F01ZDFZ ",.01)
 ;;F01ZDFZ 
 ;;9002226.02101,"1804,F01ZDFZ ",.02)
 ;;F01ZDFZ 
 ;;9002226.02101,"1804,F01ZDFZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F01ZDUZ ",.01)
 ;;F01ZDUZ 
 ;;9002226.02101,"1804,F01ZDUZ ",.02)
 ;;F01ZDUZ 
 ;;9002226.02101,"1804,F01ZDUZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F01ZDYZ ",.01)
 ;;F01ZDYZ 
 ;;9002226.02101,"1804,F01ZDYZ ",.02)
 ;;F01ZDYZ 
 ;;9002226.02101,"1804,F01ZDYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F01ZDZZ ",.01)
 ;;F01ZDZZ 
 ;;9002226.02101,"1804,F01ZDZZ ",.02)
 ;;F01ZDZZ 
 ;;9002226.02101,"1804,F01ZDZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F01ZFEZ ",.01)
 ;;F01ZFEZ 
 ;;9002226.02101,"1804,F01ZFEZ ",.02)
 ;;F01ZFEZ 
 ;;9002226.02101,"1804,F01ZFEZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F01ZFFZ ",.01)
 ;;F01ZFFZ 
 ;;9002226.02101,"1804,F01ZFFZ ",.02)
 ;;F01ZFFZ 
 ;;9002226.02101,"1804,F01ZFFZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F01ZFUZ ",.01)
 ;;F01ZFUZ 
 ;;9002226.02101,"1804,F01ZFUZ ",.02)
 ;;F01ZFUZ 
 ;;9002226.02101,"1804,F01ZFUZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F01ZFZZ ",.01)
 ;;F01ZFZZ 
 ;;9002226.02101,"1804,F01ZFZZ ",.02)
 ;;F01ZFZZ 
 ;;9002226.02101,"1804,F01ZFZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0209YZ ",.01)
 ;;F0209YZ 
 ;;9002226.02101,"1804,F0209YZ ",.02)
 ;;F0209YZ 
 ;;9002226.02101,"1804,F0209YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0209ZZ ",.01)
 ;;F0209ZZ 
 ;;9002226.02101,"1804,F0209ZZ ",.02)
 ;;F0209ZZ 
 ;;9002226.02101,"1804,F0209ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F020DYZ ",.01)
 ;;F020DYZ 
 ;;9002226.02101,"1804,F020DYZ ",.02)
 ;;F020DYZ 
 ;;9002226.02101,"1804,F020DYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F020DZZ ",.01)
 ;;F020DZZ 
 ;;9002226.02101,"1804,F020DZZ ",.02)
 ;;F020DZZ 
 ;;9002226.02101,"1804,F020DZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F021DYZ ",.01)
 ;;F021DYZ 
 ;;9002226.02101,"1804,F021DYZ ",.02)
 ;;F021DYZ 
 ;;9002226.02101,"1804,F021DYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F021DZZ ",.01)
 ;;F021DZZ 
 ;;9002226.02101,"1804,F021DZZ ",.02)
 ;;F021DZZ 
 ;;9002226.02101,"1804,F021DZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F022DYZ ",.01)
 ;;F022DYZ 
 ;;9002226.02101,"1804,F022DYZ ",.02)
 ;;F022DYZ 
 ;;9002226.02101,"1804,F022DYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F022DZZ ",.01)
 ;;F022DZZ 
 ;;9002226.02101,"1804,F022DZZ ",.02)
 ;;F022DZZ 
 ;;9002226.02101,"1804,F022DZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F023DYZ ",.01)
 ;;F023DYZ 
 ;;9002226.02101,"1804,F023DYZ ",.02)
 ;;F023DYZ 
 ;;9002226.02101,"1804,F023DYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F023DZZ ",.01)
 ;;F023DZZ 
 ;;9002226.02101,"1804,F023DZZ ",.02)
 ;;F023DZZ 
 ;;9002226.02101,"1804,F023DZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F024GCZ ",.01)
 ;;F024GCZ 
 ;;9002226.02101,"1804,F024GCZ ",.02)
 ;;F024GCZ 
 ;;9002226.02101,"1804,F024GCZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F024GGZ ",.01)
 ;;F024GGZ 
 ;;9002226.02101,"1804,F024GGZ ",.02)
 ;;F024GGZ 
 ;;9002226.02101,"1804,F024GGZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F024GYZ ",.01)
 ;;F024GYZ 
 ;;9002226.02101,"1804,F024GYZ ",.02)
 ;;F024GYZ 
 ;;9002226.02101,"1804,F024GYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F024GZZ ",.01)
 ;;F024GZZ 
 ;;9002226.02101,"1804,F024GZZ ",.02)
 ;;F024GZZ 
 ;;9002226.02101,"1804,F024GZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F025GCZ ",.01)
 ;;F025GCZ 
 ;;9002226.02101,"1804,F025GCZ ",.02)
 ;;F025GCZ 
 ;;9002226.02101,"1804,F025GCZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F025GGZ ",.01)
 ;;F025GGZ 
 ;;9002226.02101,"1804,F025GGZ ",.02)
 ;;F025GGZ 
 ;;9002226.02101,"1804,F025GGZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F025GYZ ",.01)
 ;;F025GYZ 
 ;;9002226.02101,"1804,F025GYZ ",.02)
 ;;F025GYZ 
 ;;9002226.02101,"1804,F025GYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F025GZZ ",.01)
 ;;F025GZZ 
 ;;9002226.02101,"1804,F025GZZ ",.02)
 ;;F025GZZ 
 ;;9002226.02101,"1804,F025GZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F026GCZ ",.01)
 ;;F026GCZ 
 ;;9002226.02101,"1804,F026GCZ ",.02)
 ;;F026GCZ 
 ;;9002226.02101,"1804,F026GCZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F026GGZ ",.01)
 ;;F026GGZ 
 ;;9002226.02101,"1804,F026GGZ ",.02)
 ;;F026GGZ 
 ;;9002226.02101,"1804,F026GGZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F026GYZ ",.01)
 ;;F026GYZ 
 ;;9002226.02101,"1804,F026GYZ ",.02)
 ;;F026GYZ 
 ;;9002226.02101,"1804,F026GYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F026GZZ ",.01)
 ;;F026GZZ 
 ;;9002226.02101,"1804,F026GZZ ",.02)
 ;;F026GZZ 
 ;;9002226.02101,"1804,F026GZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0277EZ ",.01)
 ;;F0277EZ 
 ;;9002226.02101,"1804,F0277EZ ",.02)
 ;;F0277EZ 
 ;;9002226.02101,"1804,F0277EZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0277GZ ",.01)
 ;;F0277GZ 
 ;;9002226.02101,"1804,F0277GZ ",.02)
 ;;F0277GZ 
 ;;9002226.02101,"1804,F0277GZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0277UZ ",.01)
 ;;F0277UZ 
 ;;9002226.02101,"1804,F0277UZ ",.02)
 ;;F0277UZ 
 ;;9002226.02101,"1804,F0277UZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0277YZ ",.01)
 ;;F0277YZ 
 ;;9002226.02101,"1804,F0277YZ ",.02)
 ;;F0277YZ 
 ;;9002226.02101,"1804,F0277YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F0277ZZ ",.01)
 ;;F0277ZZ 
 ;;9002226.02101,"1804,F0277ZZ ",.02)
 ;;F0277ZZ 
 ;;9002226.02101,"1804,F0277ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F027GCZ ",.01)
 ;;F027GCZ 
 ;;9002226.02101,"1804,F027GCZ ",.02)
 ;;F027GCZ 
 ;;9002226.02101,"1804,F027GCZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F027GGZ ",.01)
 ;;F027GGZ 
 ;;9002226.02101,"1804,F027GGZ ",.02)
 ;;F027GGZ 
 ;;9002226.02101,"1804,F027GGZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F027GYZ ",.01)
 ;;F027GYZ 
 ;;9002226.02101,"1804,F027GYZ ",.02)
 ;;F027GYZ 
 ;;9002226.02101,"1804,F027GYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F027GZZ ",.01)
 ;;F027GZZ 
 ;;9002226.02101,"1804,F027GZZ ",.02)
 ;;F027GZZ 
 ;;9002226.02101,"1804,F027GZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F028GCZ ",.01)
 ;;F028GCZ 
 ;;9002226.02101,"1804,F028GCZ ",.02)
 ;;F028GCZ 
 ;;9002226.02101,"1804,F028GCZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F028GGZ ",.01)
 ;;F028GGZ 
 ;;9002226.02101,"1804,F028GGZ ",.02)
 ;;F028GGZ 
 ;;9002226.02101,"1804,F028GGZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F028GYZ ",.01)
 ;;F028GYZ 
 ;;9002226.02101,"1804,F028GYZ ",.02)
 ;;F028GYZ 
 ;;9002226.02101,"1804,F028GYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F028GZZ ",.01)
 ;;F028GZZ 
 ;;9002226.02101,"1804,F028GZZ ",.02)
 ;;F028GZZ 
 ;;9002226.02101,"1804,F028GZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F029GCZ ",.01)
 ;;F029GCZ 
 ;;9002226.02101,"1804,F029GCZ ",.02)
 ;;F029GCZ 
 ;;9002226.02101,"1804,F029GCZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F029GGZ ",.01)
 ;;F029GGZ 
 ;;9002226.02101,"1804,F029GGZ ",.02)
 ;;F029GGZ 
 ;;9002226.02101,"1804,F029GGZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F029GYZ ",.01)
 ;;F029GYZ 
 ;;9002226.02101,"1804,F029GYZ ",.02)
 ;;F029GYZ 
 ;;9002226.02101,"1804,F029GYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F029GZZ ",.01)
 ;;F029GZZ 
 ;;9002226.02101,"1804,F029GZZ ",.02)
 ;;F029GZZ 
 ;;9002226.02101,"1804,F029GZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F02BGCZ ",.01)
 ;;F02BGCZ 
 ;;9002226.02101,"1804,F02BGCZ ",.02)
 ;;F02BGCZ 
 ;;9002226.02101,"1804,F02BGCZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F02BGGZ ",.01)
 ;;F02BGGZ 
 ;;9002226.02101,"1804,F02BGGZ ",.02)
 ;;F02BGGZ 
 ;;9002226.02101,"1804,F02BGGZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F02BGYZ ",.01)
 ;;F02BGYZ 
 ;;9002226.02101,"1804,F02BGYZ ",.02)
 ;;F02BGYZ 
 ;;9002226.02101,"1804,F02BGYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F02BGZZ ",.01)
 ;;F02BGZZ 
 ;;9002226.02101,"1804,F02BGZZ ",.02)
 ;;F02BGZZ 
 ;;9002226.02101,"1804,F02BGZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F02C7EZ ",.01)
 ;;F02C7EZ 
 ;;9002226.02101,"1804,F02C7EZ ",.02)
 ;;F02C7EZ 
 ;;9002226.02101,"1804,F02C7EZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F02C7GZ ",.01)
 ;;F02C7GZ 
 ;;9002226.02101,"1804,F02C7GZ ",.02)
 ;;F02C7GZ 
 ;;9002226.02101,"1804,F02C7GZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F02C7UZ ",.01)
 ;;F02C7UZ 
 ;;9002226.02101,"1804,F02C7UZ ",.02)
 ;;F02C7UZ 
 ;;9002226.02101,"1804,F02C7UZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F02C7YZ ",.01)
 ;;F02C7YZ 
 ;;9002226.02101,"1804,F02C7YZ ",.02)
 ;;F02C7YZ 
 ;;9002226.02101,"1804,F02C7YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F02C7ZZ ",.01)
 ;;F02C7ZZ 
 ;;9002226.02101,"1804,F02C7ZZ ",.02)
 ;;F02C7ZZ 
 ;;9002226.02101,"1804,F02C7ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F02CGCZ ",.01)
 ;;F02CGCZ 
 ;;9002226.02101,"1804,F02CGCZ ",.02)
 ;;F02CGCZ 
 ;;9002226.02101,"1804,F02CGCZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F02CGGZ ",.01)
 ;;F02CGGZ 
 ;;9002226.02101,"1804,F02CGGZ ",.02)
 ;;F02CGGZ 
 ;;9002226.02101,"1804,F02CGGZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F02CGYZ ",.01)
 ;;F02CGYZ 
 ;;9002226.02101,"1804,F02CGYZ ",.02)
 ;;F02CGYZ 
 ;;9002226.02101,"1804,F02CGYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F02CGZZ ",.01)
 ;;F02CGZZ 
 ;;9002226.02101,"1804,F02CGZZ ",.02)
 ;;F02CGZZ 
 ;;9002226.02101,"1804,F02CGZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F02Z0EZ ",.01)
 ;;F02Z0EZ 
 ;;9002226.02101,"1804,F02Z0EZ ",.02)
 ;;F02Z0EZ 
 ;;9002226.02101,"1804,F02Z0EZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F02Z0FZ ",.01)
 ;;F02Z0FZ 
 ;;9002226.02101,"1804,F02Z0FZ ",.02)
 ;;F02Z0FZ 
 ;;9002226.02101,"1804,F02Z0FZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F02Z0UZ ",.01)
 ;;F02Z0UZ 
 ;;9002226.02101,"1804,F02Z0UZ ",.02)
 ;;F02Z0UZ 
 ;;9002226.02101,"1804,F02Z0UZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F02Z0ZZ ",.01)
 ;;F02Z0ZZ 
 ;;9002226.02101,"1804,F02Z0ZZ ",.02)
 ;;F02Z0ZZ 
 ;;9002226.02101,"1804,F02Z0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F02Z1EZ ",.01)
 ;;F02Z1EZ 
 ;;9002226.02101,"1804,F02Z1EZ ",.02)
 ;;F02Z1EZ 
 ;;9002226.02101,"1804,F02Z1EZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F02Z1FZ ",.01)
 ;;F02Z1FZ 
 ;;9002226.02101,"1804,F02Z1FZ ",.02)
 ;;F02Z1FZ 
 ;;9002226.02101,"1804,F02Z1FZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F02Z1UZ ",.01)
 ;;F02Z1UZ 
 ;;9002226.02101,"1804,F02Z1UZ ",.02)
 ;;F02Z1UZ 
 ;;9002226.02101,"1804,F02Z1UZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F02Z1ZZ ",.01)
 ;;F02Z1ZZ 
 ;;9002226.02101,"1804,F02Z1ZZ ",.02)
 ;;F02Z1ZZ 
 ;;9002226.02101,"1804,F02Z1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F02Z2YZ ",.01)
 ;;F02Z2YZ 
 ;;9002226.02101,"1804,F02Z2YZ ",.02)
 ;;F02Z2YZ 
 ;;9002226.02101,"1804,F02Z2YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F02Z2ZZ ",.01)
 ;;F02Z2ZZ 
 ;;9002226.02101,"1804,F02Z2ZZ ",.02)
 ;;F02Z2ZZ 
 ;;9002226.02101,"1804,F02Z2ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F02Z3EZ ",.01)
 ;;F02Z3EZ 
 ;;9002226.02101,"1804,F02Z3EZ ",.02)
 ;;F02Z3EZ 
 ;;9002226.02101,"1804,F02Z3EZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F02Z3FZ ",.01)
 ;;F02Z3FZ 
 ;;9002226.02101,"1804,F02Z3FZ ",.02)
 ;;F02Z3FZ 
 ;;9002226.02101,"1804,F02Z3FZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F02Z3UZ ",.01)
 ;;F02Z3UZ 
 ;;9002226.02101,"1804,F02Z3UZ ",.02)
 ;;F02Z3UZ 
 ;;9002226.02101,"1804,F02Z3UZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F02Z3ZZ ",.01)
 ;;F02Z3ZZ 
 ;;9002226.02101,"1804,F02Z3ZZ ",.02)
 ;;F02Z3ZZ 
 ;;9002226.02101,"1804,F02Z3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F02Z4EZ ",.01)
 ;;F02Z4EZ 
 ;;9002226.02101,"1804,F02Z4EZ ",.02)
 ;;F02Z4EZ 
 ;;9002226.02101,"1804,F02Z4EZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F02Z4FZ ",.01)
 ;;F02Z4FZ 
 ;;9002226.02101,"1804,F02Z4FZ ",.02)
 ;;F02Z4FZ 
 ;;9002226.02101,"1804,F02Z4FZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F02Z4UZ ",.01)
 ;;F02Z4UZ 
 ;;9002226.02101,"1804,F02Z4UZ ",.02)
 ;;F02Z4UZ 