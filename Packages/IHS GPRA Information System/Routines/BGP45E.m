BGP45E ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON SEP 11, 2013;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;;BGP HIV-1 TEST LOINC CODES
 ;
 ; This routine loads Taxonomy BGP HIV-1 TEST LOINC CODES
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 D OTHER
 I $O(^TMP("ATX",$J,3.6,0)) D BULL^ATXSTX2
 I $O(^TMP("ATX",$J,9002226,0)) D TAX^ATXSTX2
 D KILL^ATXSTX2
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"12855-3 ")
 ;;1
 ;;21,"12856-1 ")
 ;;2
 ;;21,"12857-9 ")
 ;;3
 ;;21,"12858-7 ")
 ;;4
 ;;21,"12859-5 ")
 ;;5
 ;;21,"12870-2 ")
 ;;6
 ;;21,"12871-0 ")
 ;;7
 ;;21,"12872-8 ")
 ;;8
 ;;21,"12875-1 ")
 ;;9
 ;;21,"12876-9 ")
 ;;10
 ;;21,"12893-4 ")
 ;;11
 ;;21,"12894-2 ")
 ;;12
 ;;21,"12895-9 ")
 ;;13
 ;;21,"13499-9 ")
 ;;14
 ;;21,"14092-1 ")
 ;;15
 ;;21,"14126-7 ")
 ;;16
 ;;21,"16132-3 ")
 ;;17
 ;;21,"16974-8 ")
 ;;18
 ;;21,"16975-5 ")
 ;;19
 ;;21,"16978-9 ")
 ;;20
 ;;21,"18396-2 ")
 ;;21
 ;;21,"19110-6 ")
 ;;22
 ;;21,"21007-0 ")
 ;;23
 ;;21,"21009-6 ")
 ;;24
 ;;21,"21331-4 ")
 ;;25
 ;;21,"21332-2 ")
 ;;26
 ;;21,"22356-0 ")
 ;;27
 ;;21,"22357-8 ")
 ;;28
 ;;21,"23876-6 ")
 ;;29
 ;;21,"24012-7 ")
 ;;30
 ;;21,"28004-0 ")
 ;;31
 ;;21,"28052-9 ")
 ;;32
 ;;21,"29327-4 ")
 ;;33
 ;;21,"29893-5 ")
 ;;34
 ;;21,"30245-5 ")
 ;;35
 ;;21,"31072-2 ")
 ;;36
 ;;21,"31201-7 ")
 ;;37
 ;;21,"31430-2 ")
 ;;38
 ;;21,"32571-2 ")
 ;;39
 ;;21,"32602-5 ")
 ;;40
 ;;21,"32827-8 ")
 ;;41
 ;;21,"32842-7 ")
 ;;42
 ;;21,"33508-3 ")
 ;;43
 ;;21,"33660-2 ")
 ;;44
 ;;21,"33866-5 ")
 ;;45
 ;;21,"34591-8 ")
 ;;46
 ;;21,"34592-6 ")
 ;;47
 ;;21,"35437-3 ")
 ;;48
 ;;21,"35438-1 ")
 ;;49
 ;;21,"35439-9 ")
 ;;50
 ;;21,"35440-7 ")
 ;;51
 ;;21,"35441-5 ")
 ;;52
 ;;21,"35442-3 ")
 ;;53
 ;;21,"35443-1 ")
 ;;54
 ;;21,"35444-9 ")
 ;;55
 ;;21,"35445-6 ")
 ;;56
 ;;21,"35446-4 ")
 ;;57
 ;;21,"35447-2 ")
 ;;58
 ;;21,"35448-0 ")
 ;;59
 ;;21,"35449-8 ")
 ;;60
 ;;21,"35450-6 ")
 ;;61
 ;;21,"35452-2 ")
 ;;62
 ;;21,"35564-4 ")
 ;;63
 ;;21,"35565-1 ")
 ;;64
 ;;21,"38998-1 ")
 ;;65
 ;;21,"40437-6 ")
 ;;66
 ;;21,"40438-4 ")
 ;;67
 ;;21,"40439-2 ")
 ;;68
 ;;21,"40732-0 ")
 ;;69
 ;;21,"40733-8 ")
 ;;70
 ;;21,"41143-9 ")
 ;;71
 ;;21,"41144-7 ")
 ;;72
 ;;21,"41145-4 ")
 ;;73
 ;;21,"41290-8 ")
 ;;74
 ;;21,"42339-2 ")
 ;;75
 ;;21,"42600-7 ")
 ;;76
 ;;21,"42627-0 ")
 ;;77
 ;;21,"42768-2 ")
 ;;78
 ;;21,"43008-2 ")
 ;;79
 ;;21,"43009-0 ")
 ;;80
 ;;21,"43010-8 ")
 ;;81
 ;;21,"43011-6 ")
 ;;82
 ;;21,"43012-4 ")
 ;;83
 ;;21,"43013-2 ")
 ;;84
 ;;21,"43185-8 ")
 ;;85
 ;;21,"43599-0 ")
 ;;86
 ;;21,"44531-2 ")
 ;;87
 ;;21,"44532-0 ")
 ;;88
 ;;21,"44533-8 ")
 ;;89
 ;;21,"44607-0 ")
 ;;90
 ;;21,"44871-2 ")
 ;;91
 ;;21,"44872-0 ")
 ;;92
 ;;21,"44873-8 ")
 ;;93
 ;;21,"48023-6 ")
 ;;94
 ;;21,"48345-3 ")
 ;;95
 ;;21,"48346-1 ")
 ;;96
 ;;21,"49483-1 ")
 ;;119
 ;;21,"49580-4 ")
 ;;124
 ;;21,"49718-0 ")
 ;;125
 ;;21,"49905-3 ")
 ;;126
 ;;21,"49965-7 ")
 ;;120
 ;;21,"51866-2 ")
 ;;121
 ;;21,"5220-9 ")
 ;;97
 ;;21,"5221-7 ")
 ;;98
 ;;21,"5222-5 ")
 ;;99
 ;;21,"5223-3 ")
 ;;100
 ;;21,"53379-4 ")
 ;;127
 ;;21,"53601-1 ")
 ;;122
 ;;21,"53825-6 ")
 ;;128
 ;;21,"54086-4 ")
 ;;129
 ;;21,"56888-1 ")
 ;;123
 ;;21,"57974-8 ")
 ;;130
 ;;21,"57975-5 ")
 ;;131
 ;;21,"58900-2 ")
 ;;132
 ;;21,"59052-1 ")
 ;;133
 ;;21,"59419-2 ")
 ;;134
 ;;21,"6429-5 ")
 ;;101
 ;;21,"6430-3 ")
 ;;102
 ;;21,"6431-1 ")
 ;;103
 ;;21,"68961-2 ")
 ;;135
 ;;21,"69668-2 ")
 ;;136
 ;;21,"73905-2 ")
 ;;137
 ;;21,"73906-0 ")
 ;;138
 ;;21,"7917-8 ")
 ;;104
 ;;21,"7918-6 ")
 ;;105
 ;;21,"9660-2 ")
 ;;106
 ;;21,"9661-0 ")
 ;;107
 ;;21,"9662-8 ")
 ;;108
 ;;21,"9663-6 ")
 ;;109
 ;;21,"9664-4 ")
 ;;110
 ;;21,"9665-1 ")
 ;;111
 ;;21,"9666-9 ")
 ;;112
 ;;21,"9667-7 ")
 ;;113
 ;;21,"9668-5 ")
 ;;114
 ;;21,"9669-3 ")
 ;;115
 ;;21,"9821-0 ")
 ;;116
 ;;21,"9836-8 ")
 ;;117
 ;;21,"9837-6 ")
 ;;118
 ;;9002226,1749,.01)
 ;;BGP HIV-1 TEST LOINC CODES
 ;;9002226,1749,.02)
 ;;@
 ;;9002226,1749,.04)
 ;;n
 ;;9002226,1749,.06)
 ;;@
 ;;9002226,1749,.08)
 ;;@
 ;;9002226,1749,.09)
 ;;3120909
 ;;9002226,1749,.11)
 ;;@
 ;;9002226,1749,.12)
 ;;@
 ;;9002226,1749,.13)
 ;;1
 ;;9002226,1749,.14)
 ;;FIHS
 ;;9002226,1749,.15)
 ;;95.3
 ;;9002226,1749,.16)
 ;;0
 ;;9002226,1749,.17)
 ;;@
 ;;9002226,1749,3101)
 ;;@
 ;;9002226.02101,"1749,12855-3 ",.01)
 ;;12855-3
 ;;9002226.02101,"1749,12855-3 ",.02)
 ;;12855-3
 ;;9002226.02101,"1749,12856-1 ",.01)
 ;;12856-1
 ;;9002226.02101,"1749,12856-1 ",.02)
 ;;12856-1
 ;;9002226.02101,"1749,12857-9 ",.01)
 ;;12857-9
 ;;9002226.02101,"1749,12857-9 ",.02)
 ;;12857-9
 ;;9002226.02101,"1749,12858-7 ",.01)
 ;;12858-7
 ;;9002226.02101,"1749,12858-7 ",.02)
 ;;12858-7
 ;;9002226.02101,"1749,12859-5 ",.01)
 ;;12859-5
 ;;9002226.02101,"1749,12859-5 ",.02)
 ;;12859-5
 ;;9002226.02101,"1749,12870-2 ",.01)
 ;;12870-2
 ;;9002226.02101,"1749,12870-2 ",.02)
 ;;12870-2
 ;;9002226.02101,"1749,12871-0 ",.01)
 ;;12871-0
 ;;9002226.02101,"1749,12871-0 ",.02)
 ;;12871-0
 ;;9002226.02101,"1749,12872-8 ",.01)
 ;;12872-8
 ;;9002226.02101,"1749,12872-8 ",.02)
 ;;12872-8
 ;;9002226.02101,"1749,12875-1 ",.01)
 ;;12875-1
 ;;9002226.02101,"1749,12875-1 ",.02)
 ;;12875-1
 ;;9002226.02101,"1749,12876-9 ",.01)
 ;;12876-9
 ;;9002226.02101,"1749,12876-9 ",.02)
 ;;12876-9
 ;;9002226.02101,"1749,12893-4 ",.01)
 ;;12893-4
 ;;9002226.02101,"1749,12893-4 ",.02)
 ;;12893-4
 ;;9002226.02101,"1749,12894-2 ",.01)
 ;;12894-2
 ;;9002226.02101,"1749,12894-2 ",.02)
 ;;12894-2
 ;;9002226.02101,"1749,12895-9 ",.01)
 ;;12895-9
 ;;9002226.02101,"1749,12895-9 ",.02)
 ;;12895-9
 ;;9002226.02101,"1749,13499-9 ",.01)
 ;;13499-9
 ;;9002226.02101,"1749,13499-9 ",.02)
 ;;13499-9
 ;;9002226.02101,"1749,14092-1 ",.01)
 ;;14092-1
 ;;9002226.02101,"1749,14092-1 ",.02)
 ;;14092-1
 ;;9002226.02101,"1749,14126-7 ",.01)
 ;;14126-7
 ;;9002226.02101,"1749,14126-7 ",.02)
 ;;14126-7
 ;;9002226.02101,"1749,16132-3 ",.01)
 ;;16132-3
 ;;9002226.02101,"1749,16132-3 ",.02)
 ;;16132-3
 ;;9002226.02101,"1749,16974-8 ",.01)
 ;;16974-8
 ;;9002226.02101,"1749,16974-8 ",.02)
 ;;16974-8
 ;;9002226.02101,"1749,16975-5 ",.01)
 ;;16975-5
 ;;9002226.02101,"1749,16975-5 ",.02)
 ;;16975-5
 ;;9002226.02101,"1749,16978-9 ",.01)
 ;;16978-9
 ;;9002226.02101,"1749,16978-9 ",.02)
 ;;16978-9
 ;;9002226.02101,"1749,18396-2 ",.01)
 ;;18396-2
 ;;9002226.02101,"1749,18396-2 ",.02)
 ;;18396-2
 ;;9002226.02101,"1749,19110-6 ",.01)
 ;;19110-6
 ;;9002226.02101,"1749,19110-6 ",.02)
 ;;19110-6
 ;;9002226.02101,"1749,21007-0 ",.01)
 ;;21007-0
 ;;9002226.02101,"1749,21007-0 ",.02)
 ;;21007-0
 ;;9002226.02101,"1749,21009-6 ",.01)
 ;;21009-6
 ;;9002226.02101,"1749,21009-6 ",.02)
 ;;21009-6
 ;;9002226.02101,"1749,21331-4 ",.01)
 ;;21331-4
 ;;9002226.02101,"1749,21331-4 ",.02)
 ;;21331-4
 ;;9002226.02101,"1749,21332-2 ",.01)
 ;;21332-2
 ;;9002226.02101,"1749,21332-2 ",.02)
 ;;21332-2
 ;;9002226.02101,"1749,22356-0 ",.01)
 ;;22356-0
 ;;9002226.02101,"1749,22356-0 ",.02)
 ;;22356-0
 ;;9002226.02101,"1749,22357-8 ",.01)
 ;;22357-8
 ;;9002226.02101,"1749,22357-8 ",.02)
 ;;22357-8
 ;;9002226.02101,"1749,23876-6 ",.01)
 ;;23876-6
 ;;9002226.02101,"1749,23876-6 ",.02)
 ;;23876-6
 ;;9002226.02101,"1749,24012-7 ",.01)
 ;;24012-7
 ;;9002226.02101,"1749,24012-7 ",.02)
 ;;24012-7
 ;;9002226.02101,"1749,28004-0 ",.01)
 ;;28004-0
 ;;9002226.02101,"1749,28004-0 ",.02)
 ;;28004-0
 ;;9002226.02101,"1749,28052-9 ",.01)
 ;;28052-9
 ;;9002226.02101,"1749,28052-9 ",.02)
 ;;28052-9
 ;;9002226.02101,"1749,29327-4 ",.01)
 ;;29327-4
 ;;9002226.02101,"1749,29327-4 ",.02)
 ;;29327-4
 ;;9002226.02101,"1749,29893-5 ",.01)
 ;;29893-5
 ;;9002226.02101,"1749,29893-5 ",.02)
 ;;29893-5
 ;;9002226.02101,"1749,30245-5 ",.01)
 ;;30245-5
 ;;9002226.02101,"1749,30245-5 ",.02)
 ;;30245-5
 ;;9002226.02101,"1749,31072-2 ",.01)
 ;;31072-2
 ;;9002226.02101,"1749,31072-2 ",.02)
 ;;31072-2
 ;;9002226.02101,"1749,31201-7 ",.01)
 ;;31201-7
 ;;9002226.02101,"1749,31201-7 ",.02)
 ;;31201-7
 ;;9002226.02101,"1749,31430-2 ",.01)
 ;;31430-2
 ;;9002226.02101,"1749,31430-2 ",.02)
 ;;31430-2
 ;;9002226.02101,"1749,32571-2 ",.01)
 ;;32571-2
 ;;9002226.02101,"1749,32571-2 ",.02)
 ;;32571-2
 ;;9002226.02101,"1749,32602-5 ",.01)
 ;;32602-5
 ;;9002226.02101,"1749,32602-5 ",.02)
 ;;32602-5
 ;;9002226.02101,"1749,32827-8 ",.01)
 ;;32827-8
 ;;9002226.02101,"1749,32827-8 ",.02)
 ;;32827-8
 ;;9002226.02101,"1749,32842-7 ",.01)
 ;;32842-7
 ;;9002226.02101,"1749,32842-7 ",.02)
 ;;32842-7
 ;;9002226.02101,"1749,33508-3 ",.01)
 ;;33508-3
 ;;9002226.02101,"1749,33508-3 ",.02)
 ;;33508-3
 ;;9002226.02101,"1749,33660-2 ",.01)
 ;;33660-2
 ;;9002226.02101,"1749,33660-2 ",.02)
 ;;33660-2
 ;;9002226.02101,"1749,33866-5 ",.01)
 ;;33866-5
 ;;9002226.02101,"1749,33866-5 ",.02)
 ;;33866-5
 ;;9002226.02101,"1749,34591-8 ",.01)
 ;;34591-8
 ;;9002226.02101,"1749,34591-8 ",.02)
 ;;34591-8
 ;;9002226.02101,"1749,34592-6 ",.01)
 ;;34592-6
 ;;9002226.02101,"1749,34592-6 ",.02)
 ;;34592-6
 ;;9002226.02101,"1749,35437-3 ",.01)
 ;;35437-3
 ;;9002226.02101,"1749,35437-3 ",.02)
 ;;35437-3
 ;;9002226.02101,"1749,35438-1 ",.01)
 ;;35438-1
 ;;9002226.02101,"1749,35438-1 ",.02)
 ;;35438-1
 ;;9002226.02101,"1749,35439-9 ",.01)
 ;;35439-9
 ;;9002226.02101,"1749,35439-9 ",.02)
 ;;35439-9
 ;;9002226.02101,"1749,35440-7 ",.01)
 ;;35440-7
 ;;9002226.02101,"1749,35440-7 ",.02)
 ;;35440-7
 ;;9002226.02101,"1749,35441-5 ",.01)
 ;;35441-5
 ;;9002226.02101,"1749,35441-5 ",.02)
 ;;35441-5
 ;;9002226.02101,"1749,35442-3 ",.01)
 ;;35442-3
 ;;9002226.02101,"1749,35442-3 ",.02)
 ;;35442-3
 ;;9002226.02101,"1749,35443-1 ",.01)
 ;;35443-1
 ;;9002226.02101,"1749,35443-1 ",.02)
 ;;35443-1
 ;;9002226.02101,"1749,35444-9 ",.01)
 ;;35444-9
 ;;9002226.02101,"1749,35444-9 ",.02)
 ;;35444-9
 ;;9002226.02101,"1749,35445-6 ",.01)
 ;;35445-6
 ;;9002226.02101,"1749,35445-6 ",.02)
 ;;35445-6
 ;;9002226.02101,"1749,35446-4 ",.01)
 ;;35446-4
 ;;9002226.02101,"1749,35446-4 ",.02)
 ;;35446-4
 ;;9002226.02101,"1749,35447-2 ",.01)
 ;;35447-2
 ;;9002226.02101,"1749,35447-2 ",.02)
 ;;35447-2
 ;;9002226.02101,"1749,35448-0 ",.01)
 ;;35448-0
 ;;9002226.02101,"1749,35448-0 ",.02)
 ;;35448-0
 ;;9002226.02101,"1749,35449-8 ",.01)
 ;;35449-8
 ;;9002226.02101,"1749,35449-8 ",.02)
 ;;35449-8
 ;;9002226.02101,"1749,35450-6 ",.01)
 ;;35450-6
 ;;9002226.02101,"1749,35450-6 ",.02)
 ;;35450-6
 ;;9002226.02101,"1749,35452-2 ",.01)
 ;;35452-2
 ;;9002226.02101,"1749,35452-2 ",.02)
 ;;35452-2
 ;;9002226.02101,"1749,35564-4 ",.01)
 ;;35564-4
 ;;9002226.02101,"1749,35564-4 ",.02)
 ;;35564-4
 ;;9002226.02101,"1749,35565-1 ",.01)
 ;;35565-1
 ;;9002226.02101,"1749,35565-1 ",.02)
 ;;35565-1
 ;;9002226.02101,"1749,38998-1 ",.01)
 ;;38998-1
 ;;9002226.02101,"1749,38998-1 ",.02)
 ;;38998-1
 ;;9002226.02101,"1749,40437-6 ",.01)
 ;;40437-6
 ;;9002226.02101,"1749,40437-6 ",.02)
 ;;40437-6
 ;;9002226.02101,"1749,40438-4 ",.01)
 ;;40438-4
 ;;9002226.02101,"1749,40438-4 ",.02)
 ;;40438-4
 ;;9002226.02101,"1749,40439-2 ",.01)
 ;;40439-2
 ;;9002226.02101,"1749,40439-2 ",.02)
 ;;40439-2
 ;;9002226.02101,"1749,40732-0 ",.01)
 ;;40732-0
 ;;9002226.02101,"1749,40732-0 ",.02)
 ;;40732-0
 ;;9002226.02101,"1749,40733-8 ",.01)
 ;;40733-8
 ;;9002226.02101,"1749,40733-8 ",.02)
 ;;40733-8
 ;;9002226.02101,"1749,41143-9 ",.01)
 ;;41143-9
 ;;9002226.02101,"1749,41143-9 ",.02)
 ;;41143-9
 ;;9002226.02101,"1749,41144-7 ",.01)
 ;;41144-7
 ;;9002226.02101,"1749,41144-7 ",.02)
 ;;41144-7
 ;;9002226.02101,"1749,41145-4 ",.01)
 ;;41145-4
 ;;9002226.02101,"1749,41145-4 ",.02)
 ;;41145-4
 ;;9002226.02101,"1749,41290-8 ",.01)
 ;;41290-8
 ;;9002226.02101,"1749,41290-8 ",.02)
 ;;41290-8
 ;;9002226.02101,"1749,42339-2 ",.01)
 ;;42339-2
 ;;9002226.02101,"1749,42339-2 ",.02)
 ;;42339-2
 ;;9002226.02101,"1749,42600-7 ",.01)
 ;;42600-7
 ;;9002226.02101,"1749,42600-7 ",.02)
 ;;42600-7
 ;;9002226.02101,"1749,42627-0 ",.01)
 ;;42627-0
 ;;9002226.02101,"1749,42627-0 ",.02)
 ;;42627-0
 ;;9002226.02101,"1749,42768-2 ",.01)
 ;;42768-2
 ;;9002226.02101,"1749,42768-2 ",.02)
 ;;42768-2
 ;;9002226.02101,"1749,43008-2 ",.01)
 ;;43008-2
 ;;9002226.02101,"1749,43008-2 ",.02)
 ;;43008-2
 ;;9002226.02101,"1749,43009-0 ",.01)
 ;;43009-0
 ;;9002226.02101,"1749,43009-0 ",.02)
 ;;43009-0
 ;;9002226.02101,"1749,43010-8 ",.01)
 ;;43010-8
 ;;9002226.02101,"1749,43010-8 ",.02)
 ;;43010-8
 ;;9002226.02101,"1749,43011-6 ",.01)
 ;;43011-6
 ;;9002226.02101,"1749,43011-6 ",.02)
 ;;43011-6
 ;;9002226.02101,"1749,43012-4 ",.01)
 ;;43012-4
 ;;9002226.02101,"1749,43012-4 ",.02)
 ;;43012-4
 ;;9002226.02101,"1749,43013-2 ",.01)
 ;;43013-2
 ;;9002226.02101,"1749,43013-2 ",.02)
 ;;43013-2
 ;;9002226.02101,"1749,43185-8 ",.01)
 ;;43185-8
 ;;9002226.02101,"1749,43185-8 ",.02)
 ;;43185-8
 ;;9002226.02101,"1749,43599-0 ",.01)
 ;;43599-0
 ;;9002226.02101,"1749,43599-0 ",.02)
 ;;43599-0
 ;;9002226.02101,"1749,44531-2 ",.01)
 ;;44531-2
 ;;9002226.02101,"1749,44531-2 ",.02)
 ;;44531-2
 ;;9002226.02101,"1749,44532-0 ",.01)
 ;;44532-0
 ;;9002226.02101,"1749,44532-0 ",.02)
 ;;44532-0
 ;;9002226.02101,"1749,44533-8 ",.01)
 ;;44533-8
 ;;9002226.02101,"1749,44533-8 ",.02)
 ;;44533-8
 ;
OTHER ; OTHER ROUTINES
 D ^BGP45E2
 Q