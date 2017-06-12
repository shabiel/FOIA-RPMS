BGP44Z ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON SEP 11, 2013;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;;BGP CHLAMYDIA LOINC CODES
 ;
 ; This routine loads Taxonomy BGP CHLAMYDIA LOINC CODES
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
 ;;21,"14463-4 ")
 ;;1
 ;;21,"14464-2 ")
 ;;2
 ;;21,"14465-9 ")
 ;;67
 ;;21,"14467-5 ")
 ;;3
 ;;21,"14470-9 ")
 ;;4
 ;;21,"14471-7 ")
 ;;5
 ;;21,"14472-5 ")
 ;;6
 ;;21,"14474-1 ")
 ;;7
 ;;21,"14509-4 ")
 ;;8
 ;;21,"14510-2 ")
 ;;9
 ;;21,"14511-0 ")
 ;;10
 ;;21,"14513-6 ")
 ;;11
 ;;21,"16600-9 ")
 ;;12
 ;;21,"16601-7 ")
 ;;13
 ;;21,"16602-5 ")
 ;;76
 ;;21,"21189-6 ")
 ;;14
 ;;21,"21190-4 ")
 ;;15
 ;;21,"21191-2 ")
 ;;16
 ;;21,"21192-0 ")
 ;;17
 ;;21,"21613-5 ")
 ;;18
 ;;21,"23838-6 ")
 ;;19
 ;;21,"31771-9 ")
 ;;20
 ;;21,"31772-7 ")
 ;;21
 ;;21,"31775-0 ")
 ;;22
 ;;21,"31776-8 ")
 ;;23
 ;;21,"31777-6 ")
 ;;24
 ;;21,"34710-4 ")
 ;;25
 ;;21,"36902-5 ")
 ;;26
 ;;21,"36903-3 ")
 ;;27
 ;;21,"42931-6 ")
 ;;28
 ;;21,"43304-5 ")
 ;;29
 ;;21,"43404-3 ")
 ;;30
 ;;21,"43405-0 ")
 ;;68
 ;;21,"43406-8 ")
 ;;31
 ;;21,"44806-8 ")
 ;;32
 ;;21,"44807-6 ")
 ;;33
 ;;21,"45067-6 ")
 ;;34
 ;;21,"45068-4 ")
 ;;35
 ;;21,"45069-2 ")
 ;;36
 ;;21,"45070-0 ")
 ;;37
 ;;21,"45072-6 ")
 ;;38
 ;;21,"45074-2 ")
 ;;39
 ;;21,"45075-9 ")
 ;;40
 ;;21,"45076-7 ")
 ;;41
 ;;21,"45078-3 ")
 ;;42
 ;;21,"45079-1 ")
 ;;77
 ;;21,"45080-9 ")
 ;;43
 ;;21,"45081-7 ")
 ;;44
 ;;21,"45082-5 ")
 ;;78
 ;;21,"45083-3 ")
 ;;79
 ;;21,"45084-1 ")
 ;;45
 ;;21,"45089-0 ")
 ;;46
 ;;21,"45090-8 ")
 ;;47
 ;;21,"45091-6 ")
 ;;48
 ;;21,"45093-2 ")
 ;;49
 ;;21,"45095-7 ")
 ;;50
 ;;21,"45098-1 ")
 ;;51
 ;;21,"45100-5 ")
 ;;52
 ;;21,"47211-8 ")
 ;;53
 ;;21,"47212-6 ")
 ;;54
 ;;21,"49096-1 ")
 ;;55
 ;;21,"4993-2 ")
 ;;56
 ;;21,"50387-0 ")
 ;;57
 ;;21,"53925-4 ")
 ;;58
 ;;21,"53926-2 ")
 ;;59
 ;;21,"557-9 ")
 ;;60
 ;;21,"560-3 ")
 ;;61
 ;;21,"57287-5 ")
 ;;69
 ;;21,"6349-5 ")
 ;;62
 ;;21,"6354-5 ")
 ;;63
 ;;21,"6355-2 ")
 ;;64
 ;;21,"6356-0 ")
 ;;65
 ;;21,"6357-8 ")
 ;;66
 ;;21,"64017-7 ")
 ;;70
 ;;21,"70161-5 ")
 ;;71
 ;;21,"70162-3 ")
 ;;72
 ;;21,"70163-1 ")
 ;;73
 ;;21,"70164-9 ")
 ;;74
 ;;21,"72828-7 ")
 ;;75
 ;;9002226,329,.01)
 ;;BGP CHLAMYDIA LOINC CODES
 ;;9002226,329,.02)
 ;;@
 ;;9002226,329,.04)
 ;;n
 ;;9002226,329,.06)
 ;;@
 ;;9002226,329,.08)
 ;;@
 ;;9002226,329,.09)
 ;;@
 ;;9002226,329,.11)
 ;;@
 ;;9002226,329,.12)
 ;;@
 ;;9002226,329,.13)
 ;;1
 ;;9002226,329,.14)
 ;;FIHS
 ;;9002226,329,.15)
 ;;95.3
 ;;9002226,329,.16)
 ;;@
 ;;9002226,329,.17)
 ;;@
 ;;9002226,329,3101)
 ;;@
 ;;9002226.02101,"329,14463-4 ",.01)
 ;;14463-4
 ;;9002226.02101,"329,14463-4 ",.02)
 ;;14463-4
 ;;9002226.02101,"329,14464-2 ",.01)
 ;;14464-2
 ;;9002226.02101,"329,14464-2 ",.02)
 ;;14464-2
 ;;9002226.02101,"329,14465-9 ",.01)
 ;;14465-9
 ;;9002226.02101,"329,14465-9 ",.02)
 ;;14465-9
 ;;9002226.02101,"329,14467-5 ",.01)
 ;;14467-5
 ;;9002226.02101,"329,14467-5 ",.02)
 ;;14467-5
 ;;9002226.02101,"329,14470-9 ",.01)
 ;;14470-9
 ;;9002226.02101,"329,14470-9 ",.02)
 ;;14470-9
 ;;9002226.02101,"329,14471-7 ",.01)
 ;;14471-7
 ;;9002226.02101,"329,14471-7 ",.02)
 ;;14471-7
 ;;9002226.02101,"329,14472-5 ",.01)
 ;;14472-5
 ;;9002226.02101,"329,14472-5 ",.02)
 ;;14472-5
 ;;9002226.02101,"329,14474-1 ",.01)
 ;;14474-1
 ;;9002226.02101,"329,14474-1 ",.02)
 ;;14474-1
 ;;9002226.02101,"329,14509-4 ",.01)
 ;;14509-4
 ;;9002226.02101,"329,14509-4 ",.02)
 ;;14509-4
 ;;9002226.02101,"329,14510-2 ",.01)
 ;;14510-2
 ;;9002226.02101,"329,14510-2 ",.02)
 ;;14510-2
 ;;9002226.02101,"329,14511-0 ",.01)
 ;;14511-0
 ;;9002226.02101,"329,14511-0 ",.02)
 ;;14511-0
 ;;9002226.02101,"329,14513-6 ",.01)
 ;;14513-6
 ;;9002226.02101,"329,14513-6 ",.02)
 ;;14513-6
 ;;9002226.02101,"329,16600-9 ",.01)
 ;;16600-9
 ;;9002226.02101,"329,16600-9 ",.02)
 ;;16600-9
 ;;9002226.02101,"329,16601-7 ",.01)
 ;;16601-7
 ;;9002226.02101,"329,16601-7 ",.02)
 ;;16601-7
 ;;9002226.02101,"329,16602-5 ",.01)
 ;;16602-5
 ;;9002226.02101,"329,16602-5 ",.02)
 ;;16602-5
 ;;9002226.02101,"329,21189-6 ",.01)
 ;;21189-6
 ;;9002226.02101,"329,21189-6 ",.02)
 ;;21189-6
 ;;9002226.02101,"329,21190-4 ",.01)
 ;;21190-4
 ;;9002226.02101,"329,21190-4 ",.02)
 ;;21190-4
 ;;9002226.02101,"329,21191-2 ",.01)
 ;;21191-2
 ;;9002226.02101,"329,21191-2 ",.02)
 ;;21191-2
 ;;9002226.02101,"329,21192-0 ",.01)
 ;;21192-0
 ;;9002226.02101,"329,21192-0 ",.02)
 ;;21192-0
 ;;9002226.02101,"329,21613-5 ",.01)
 ;;21613-5
 ;;9002226.02101,"329,21613-5 ",.02)
 ;;21613-5
 ;;9002226.02101,"329,23838-6 ",.01)
 ;;23838-6
 ;;9002226.02101,"329,23838-6 ",.02)
 ;;23838-6
 ;;9002226.02101,"329,31771-9 ",.01)
 ;;31771-9
 ;;9002226.02101,"329,31771-9 ",.02)
 ;;31771-9
 ;;9002226.02101,"329,31772-7 ",.01)
 ;;31772-7
 ;;9002226.02101,"329,31772-7 ",.02)
 ;;31772-7
 ;;9002226.02101,"329,31775-0 ",.01)
 ;;31775-0
 ;;9002226.02101,"329,31775-0 ",.02)
 ;;31775-0
 ;;9002226.02101,"329,31776-8 ",.01)
 ;;31776-8
 ;;9002226.02101,"329,31776-8 ",.02)
 ;;31776-8
 ;;9002226.02101,"329,31777-6 ",.01)
 ;;31777-6
 ;;9002226.02101,"329,31777-6 ",.02)
 ;;31777-6
 ;;9002226.02101,"329,34710-4 ",.01)
 ;;34710-4
 ;;9002226.02101,"329,34710-4 ",.02)
 ;;34710-4
 ;;9002226.02101,"329,36902-5 ",.01)
 ;;36902-5
 ;;9002226.02101,"329,36902-5 ",.02)
 ;;36902-5
 ;;9002226.02101,"329,36903-3 ",.01)
 ;;36903-3
 ;;9002226.02101,"329,36903-3 ",.02)
 ;;36903-3
 ;;9002226.02101,"329,42931-6 ",.01)
 ;;42931-6
 ;;9002226.02101,"329,42931-6 ",.02)
 ;;42931-6
 ;;9002226.02101,"329,43304-5 ",.01)
 ;;43304-5
 ;;9002226.02101,"329,43304-5 ",.02)
 ;;43304-5
 ;;9002226.02101,"329,43404-3 ",.01)
 ;;43404-3
 ;;9002226.02101,"329,43404-3 ",.02)
 ;;43404-3
 ;;9002226.02101,"329,43405-0 ",.01)
 ;;43405-0
 ;;9002226.02101,"329,43405-0 ",.02)
 ;;43405-0
 ;;9002226.02101,"329,43406-8 ",.01)
 ;;43406-8
 ;;9002226.02101,"329,43406-8 ",.02)
 ;;43406-8
 ;;9002226.02101,"329,44806-8 ",.01)
 ;;44806-8
 ;;9002226.02101,"329,44806-8 ",.02)
 ;;44806-8
 ;;9002226.02101,"329,44807-6 ",.01)
 ;;44807-6
 ;;9002226.02101,"329,44807-6 ",.02)
 ;;44807-6
 ;;9002226.02101,"329,45067-6 ",.01)
 ;;45067-6
 ;;9002226.02101,"329,45067-6 ",.02)
 ;;45067-6
 ;;9002226.02101,"329,45068-4 ",.01)
 ;;45068-4
 ;;9002226.02101,"329,45068-4 ",.02)
 ;;45068-4
 ;;9002226.02101,"329,45069-2 ",.01)
 ;;45069-2
 ;;9002226.02101,"329,45069-2 ",.02)
 ;;45069-2
 ;;9002226.02101,"329,45070-0 ",.01)
 ;;45070-0
 ;;9002226.02101,"329,45070-0 ",.02)
 ;;45070-0
 ;;9002226.02101,"329,45072-6 ",.01)
 ;;45072-6
 ;;9002226.02101,"329,45072-6 ",.02)
 ;;45072-6
 ;;9002226.02101,"329,45074-2 ",.01)
 ;;45074-2
 ;;9002226.02101,"329,45074-2 ",.02)
 ;;45074-2
 ;;9002226.02101,"329,45075-9 ",.01)
 ;;45075-9
 ;;9002226.02101,"329,45075-9 ",.02)
 ;;45075-9
 ;;9002226.02101,"329,45076-7 ",.01)
 ;;45076-7
 ;;9002226.02101,"329,45076-7 ",.02)
 ;;45076-7
 ;;9002226.02101,"329,45078-3 ",.01)
 ;;45078-3
 ;;9002226.02101,"329,45078-3 ",.02)
 ;;45078-3
 ;;9002226.02101,"329,45079-1 ",.01)
 ;;45079-1
 ;;9002226.02101,"329,45079-1 ",.02)
 ;;45079-1
 ;;9002226.02101,"329,45080-9 ",.01)
 ;;45080-9
 ;;9002226.02101,"329,45080-9 ",.02)
 ;;45080-9
 ;;9002226.02101,"329,45081-7 ",.01)
 ;;45081-7
 ;;9002226.02101,"329,45081-7 ",.02)
 ;;45081-7
 ;;9002226.02101,"329,45082-5 ",.01)
 ;;45082-5
 ;;9002226.02101,"329,45082-5 ",.02)
 ;;45082-5
 ;;9002226.02101,"329,45083-3 ",.01)
 ;;45083-3
 ;;9002226.02101,"329,45083-3 ",.02)
 ;;45083-3
 ;;9002226.02101,"329,45084-1 ",.01)
 ;;45084-1
 ;;9002226.02101,"329,45084-1 ",.02)
 ;;45084-1
 ;;9002226.02101,"329,45089-0 ",.01)
 ;;45089-0
 ;;9002226.02101,"329,45089-0 ",.02)
 ;;45089-0
 ;;9002226.02101,"329,45090-8 ",.01)
 ;;45090-8
 ;;9002226.02101,"329,45090-8 ",.02)
 ;;45090-8
 ;;9002226.02101,"329,45091-6 ",.01)
 ;;45091-6
 ;;9002226.02101,"329,45091-6 ",.02)
 ;;45091-6
 ;;9002226.02101,"329,45093-2 ",.01)
 ;;45093-2
 ;;9002226.02101,"329,45093-2 ",.02)
 ;;45093-2
 ;;9002226.02101,"329,45095-7 ",.01)
 ;;45095-7
 ;;9002226.02101,"329,45095-7 ",.02)
 ;;45095-7
 ;;9002226.02101,"329,45098-1 ",.01)
 ;;45098-1
 ;;9002226.02101,"329,45098-1 ",.02)
 ;;45098-1
 ;;9002226.02101,"329,45100-5 ",.01)
 ;;45100-5
 ;;9002226.02101,"329,45100-5 ",.02)
 ;;45100-5
 ;;9002226.02101,"329,47211-8 ",.01)
 ;;47211-8
 ;;9002226.02101,"329,47211-8 ",.02)
 ;;47211-8
 ;;9002226.02101,"329,47212-6 ",.01)
 ;;47212-6
 ;;9002226.02101,"329,47212-6 ",.02)
 ;;47212-6
 ;;9002226.02101,"329,49096-1 ",.01)
 ;;49096-1
 ;;9002226.02101,"329,49096-1 ",.02)
 ;;49096-1
 ;;9002226.02101,"329,4993-2 ",.01)
 ;;4993-2
 ;;9002226.02101,"329,4993-2 ",.02)
 ;;4993-2
 ;;9002226.02101,"329,50387-0 ",.01)
 ;;50387-0
 ;;9002226.02101,"329,50387-0 ",.02)
 ;;50387-0
 ;;9002226.02101,"329,53925-4 ",.01)
 ;;53925-4
 ;;9002226.02101,"329,53925-4 ",.02)
 ;;53925-4
 ;;9002226.02101,"329,53926-2 ",.01)
 ;;53926-2
 ;;9002226.02101,"329,53926-2 ",.02)
 ;;53926-2
 ;;9002226.02101,"329,557-9 ",.01)
 ;;557-9
 ;;9002226.02101,"329,557-9 ",.02)
 ;;557-9
 ;;9002226.02101,"329,560-3 ",.01)
 ;;560-3
 ;;9002226.02101,"329,560-3 ",.02)
 ;;560-3
 ;;9002226.02101,"329,57287-5 ",.01)
 ;;57287-5
 ;;9002226.02101,"329,57287-5 ",.02)
 ;;57287-5
 ;;9002226.02101,"329,6349-5 ",.01)
 ;;6349-5
 ;;9002226.02101,"329,6349-5 ",.02)
 ;;6349-5
 ;;9002226.02101,"329,6354-5 ",.01)
 ;;6354-5
 ;;9002226.02101,"329,6354-5 ",.02)
 ;;6354-5
 ;;9002226.02101,"329,6355-2 ",.01)
 ;;6355-2
 ;;9002226.02101,"329,6355-2 ",.02)
 ;;6355-2
 ;;9002226.02101,"329,6356-0 ",.01)
 ;;6356-0
 ;;9002226.02101,"329,6356-0 ",.02)
 ;;6356-0
 ;;9002226.02101,"329,6357-8 ",.01)
 ;;6357-8
 ;;9002226.02101,"329,6357-8 ",.02)
 ;;6357-8
 ;;9002226.02101,"329,64017-7 ",.01)
 ;;64017-7
 ;;9002226.02101,"329,64017-7 ",.02)
 ;;64017-7
 ;;9002226.02101,"329,70161-5 ",.01)
 ;;70161-5
 ;;9002226.02101,"329,70161-5 ",.02)
 ;;70161-5
 ;;9002226.02101,"329,70162-3 ",.01)
 ;;70162-3
 ;;9002226.02101,"329,70162-3 ",.02)
 ;;70162-3
 ;;9002226.02101,"329,70163-1 ",.01)
 ;;70163-1
 ;;9002226.02101,"329,70163-1 ",.02)
 ;;70163-1
 ;;9002226.02101,"329,70164-9 ",.01)
 ;;70164-9
 ;;9002226.02101,"329,70164-9 ",.02)
 ;;70164-9
 ;;9002226.02101,"329,72828-7 ",.01)
 ;;72828-7
 ;;9002226.02101,"329,72828-7 ",.02)
 ;;72828-7
 ;
OTHER ; OTHER ROUTINES
 Q