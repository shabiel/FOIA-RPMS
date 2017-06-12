BGP48D ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 17, 2014;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;;BGP PQA DPP IV NDC
 ;
 ; This routine loads Taxonomy BGP PQA DPP IV NDC
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
 ;;21,"00003-4214-11 ")
 ;;1
 ;;21,"00003-4214-21 ")
 ;;2
 ;;21,"00003-4215-11 ")
 ;;3
 ;;21,"00003-4215-21 ")
 ;;4
 ;;21,"00003-4215-31 ")
 ;;5
 ;;21,"00003-4215-41 ")
 ;;6
 ;;21,"00003-4221-11 ")
 ;;7
 ;;21,"00003-4222-16 ")
 ;;8
 ;;21,"00003-4223-11 ")
 ;;9
 ;;21,"00006-0078-61 ")
 ;;10
 ;;21,"00006-0078-62 ")
 ;;11
 ;;21,"00006-0078-82 ")
 ;;12
 ;;21,"00006-0080-61 ")
 ;;13
 ;;21,"00006-0080-62 ")
 ;;14
 ;;21,"00006-0080-82 ")
 ;;15
 ;;21,"00006-0081-31 ")
 ;;16
 ;;21,"00006-0081-54 ")
 ;;17
 ;;21,"00006-0081-82 ")
 ;;18
 ;;21,"00006-0112-28 ")
 ;;19
 ;;21,"00006-0112-31 ")
 ;;20
 ;;21,"00006-0112-54 ")
 ;;21
 ;;21,"00006-0221-01 ")
 ;;22
 ;;21,"00006-0221-28 ")
 ;;23
 ;;21,"00006-0221-31 ")
 ;;24
 ;;21,"00006-0221-54 ")
 ;;25
 ;;21,"00006-0277-01 ")
 ;;26
 ;;21,"00006-0277-28 ")
 ;;27
 ;;21,"00006-0277-31 ")
 ;;28
 ;;21,"00006-0277-33 ")
 ;;29
 ;;21,"00006-0277-54 ")
 ;;30
 ;;21,"00006-0277-82 ")
 ;;31
 ;;21,"00006-0533-31 ")
 ;;32
 ;;21,"00006-0533-54 ")
 ;;33
 ;;21,"00006-0535-31 ")
 ;;34
 ;;21,"00006-0535-54 ")
 ;;35
 ;;21,"00006-0537-31 ")
 ;;36
 ;;21,"00006-0537-54 ")
 ;;37
 ;;21,"00006-0575-52 ")
 ;;38
 ;;21,"00006-0575-61 ")
 ;;39
 ;;21,"00006-0575-62 ")
 ;;40
 ;;21,"00006-0575-82 ")
 ;;41
 ;;21,"00006-0577-52 ")
 ;;42
 ;;21,"00006-0577-61 ")
 ;;43
 ;;21,"00006-0577-62 ")
 ;;44
 ;;21,"00006-0577-82 ")
 ;;45
 ;;21,"00006-0753-31 ")
 ;;46
 ;;21,"00006-0753-54 ")
 ;;47
 ;;21,"00006-0753-82 ")
 ;;48
 ;;21,"00006-0757-31 ")
 ;;49
 ;;21,"00006-0757-54 ")
 ;;50
 ;;21,"00006-0757-82 ")
 ;;51
 ;;21,"00006-0773-31 ")
 ;;52
 ;;21,"00006-0773-54 ")
 ;;53
 ;;21,"00006-0773-82 ")
 ;;54
 ;;21,"00597-0140-30 ")
 ;;55
 ;;21,"00597-0140-61 ")
 ;;56
 ;;21,"00597-0140-90 ")
 ;;57
 ;;21,"00597-0146-18 ")
 ;;58
 ;;21,"00597-0146-60 ")
 ;;59
 ;;21,"00597-0147-18 ")
 ;;60
 ;;21,"00597-0147-60 ")
 ;;61
 ;;21,"00597-0148-18 ")
 ;;62
 ;;21,"00597-0148-60 ")
 ;;63
 ;;21,"12280-0401-30 ")
 ;;64
 ;;21,"23490-0112-03 ")
 ;;65
 ;;21,"35356-0103-30 ")
 ;;66
 ;;21,"35356-0136-60 ")
 ;;67
 ;;21,"47463-0434-60 ")
 ;;68
 ;;21,"47463-0435-60 ")
 ;;69
 ;;21,"47463-0777-30 ")
 ;;70
 ;;21,"51138-0479-30 ")
 ;;71
 ;;21,"51138-0480-30 ")
 ;;72
 ;;21,"51138-0481-30 ")
 ;;73
 ;;21,"51138-0526-30 ")
 ;;74
 ;;21,"51138-0527-30 ")
 ;;75
 ;;21,"54569-5925-00 ")
 ;;76
 ;;21,"54868-1097-00 ")
 ;;77
 ;;21,"54868-1097-01 ")
 ;;78
 ;;21,"54868-5840-00 ")
 ;;79
 ;;21,"54868-5840-01 ")
 ;;80
 ;;21,"54868-5973-00 ")
 ;;81
 ;;21,"54868-6031-00 ")
 ;;82
 ;;21,"54868-6031-01 ")
 ;;83
 ;;21,"54868-6309-00 ")
 ;;84
 ;;21,"55048-0434-60 ")
 ;;85
 ;;21,"55048-0437-60 ")
 ;;86
 ;;21,"55048-0777-30 ")
 ;;87
 ;;21,"64764-0121-03 ")
 ;;88
 ;;21,"64764-0123-03 ")
 ;;89
 ;;21,"64764-0124-03 ")
 ;;90
 ;;21,"64764-0125-30 ")
 ;;91
 ;;21,"64764-0250-30 ")
 ;;92
 ;;21,"64764-0251-03 ")
 ;;93
 ;;21,"64764-0253-03 ")
 ;;94
 ;;21,"64764-0254-03 ")
 ;;95
 ;;21,"64764-0335-60 ")
 ;;96
 ;;21,"64764-0337-60 ")
 ;;97
 ;;21,"64764-0625-30 ")
 ;;98
 ;;21,"66105-0652-03 ")
 ;;99
 ;;21,"68258-5990-03 ")
 ;;100
 ;;21,"68258-5990-09 ")
 ;;101
 ;;9002226,1786,.01)
 ;;BGP PQA DPP IV NDC
 ;;9002226,1786,.02)
 ;;@
 ;;9002226,1786,.04)
 ;;n
 ;;9002226,1786,.06)
 ;;@
 ;;9002226,1786,.08)
 ;;@
 ;;9002226,1786,.09)
 ;;3140317
 ;;9002226,1786,.11)
 ;;@
 ;;9002226,1786,.12)
 ;;@
 ;;9002226,1786,.13)
 ;;1
 ;;9002226,1786,.14)
 ;;@
 ;;9002226,1786,.15)
 ;;@
 ;;9002226,1786,.16)
 ;;@
 ;;9002226,1786,.17)
 ;;@
 ;;9002226,1786,3101)
 ;;@
 ;;9002226.02101,"1786,00003-4214-11 ",.01)
 ;;00003-4214-11
 ;;9002226.02101,"1786,00003-4214-11 ",.02)
 ;;00003-4214-11
 ;;9002226.02101,"1786,00003-4214-21 ",.01)
 ;;00003-4214-21
 ;;9002226.02101,"1786,00003-4214-21 ",.02)
 ;;00003-4214-21
 ;;9002226.02101,"1786,00003-4215-11 ",.01)
 ;;00003-4215-11
 ;;9002226.02101,"1786,00003-4215-11 ",.02)
 ;;00003-4215-11
 ;;9002226.02101,"1786,00003-4215-21 ",.01)
 ;;00003-4215-21
 ;;9002226.02101,"1786,00003-4215-21 ",.02)
 ;;00003-4215-21
 ;;9002226.02101,"1786,00003-4215-31 ",.01)
 ;;00003-4215-31
 ;;9002226.02101,"1786,00003-4215-31 ",.02)
 ;;00003-4215-31
 ;;9002226.02101,"1786,00003-4215-41 ",.01)
 ;;00003-4215-41
 ;;9002226.02101,"1786,00003-4215-41 ",.02)
 ;;00003-4215-41
 ;;9002226.02101,"1786,00003-4221-11 ",.01)
 ;;00003-4221-11
 ;;9002226.02101,"1786,00003-4221-11 ",.02)
 ;;00003-4221-11
 ;;9002226.02101,"1786,00003-4222-16 ",.01)
 ;;00003-4222-16
 ;;9002226.02101,"1786,00003-4222-16 ",.02)
 ;;00003-4222-16
 ;;9002226.02101,"1786,00003-4223-11 ",.01)
 ;;00003-4223-11
 ;;9002226.02101,"1786,00003-4223-11 ",.02)
 ;;00003-4223-11
 ;;9002226.02101,"1786,00006-0078-61 ",.01)
 ;;00006-0078-61
 ;;9002226.02101,"1786,00006-0078-61 ",.02)
 ;;00006-0078-61
 ;;9002226.02101,"1786,00006-0078-62 ",.01)
 ;;00006-0078-62
 ;;9002226.02101,"1786,00006-0078-62 ",.02)
 ;;00006-0078-62
 ;;9002226.02101,"1786,00006-0078-82 ",.01)
 ;;00006-0078-82
 ;;9002226.02101,"1786,00006-0078-82 ",.02)
 ;;00006-0078-82
 ;;9002226.02101,"1786,00006-0080-61 ",.01)
 ;;00006-0080-61
 ;;9002226.02101,"1786,00006-0080-61 ",.02)
 ;;00006-0080-61
 ;;9002226.02101,"1786,00006-0080-62 ",.01)
 ;;00006-0080-62
 ;;9002226.02101,"1786,00006-0080-62 ",.02)
 ;;00006-0080-62
 ;;9002226.02101,"1786,00006-0080-82 ",.01)
 ;;00006-0080-82
 ;;9002226.02101,"1786,00006-0080-82 ",.02)
 ;;00006-0080-82
 ;;9002226.02101,"1786,00006-0081-31 ",.01)
 ;;00006-0081-31
 ;;9002226.02101,"1786,00006-0081-31 ",.02)
 ;;00006-0081-31
 ;;9002226.02101,"1786,00006-0081-54 ",.01)
 ;;00006-0081-54
 ;;9002226.02101,"1786,00006-0081-54 ",.02)
 ;;00006-0081-54
 ;;9002226.02101,"1786,00006-0081-82 ",.01)
 ;;00006-0081-82
 ;;9002226.02101,"1786,00006-0081-82 ",.02)
 ;;00006-0081-82
 ;;9002226.02101,"1786,00006-0112-28 ",.01)
 ;;00006-0112-28
 ;;9002226.02101,"1786,00006-0112-28 ",.02)
 ;;00006-0112-28
 ;;9002226.02101,"1786,00006-0112-31 ",.01)
 ;;00006-0112-31
 ;;9002226.02101,"1786,00006-0112-31 ",.02)
 ;;00006-0112-31
 ;;9002226.02101,"1786,00006-0112-54 ",.01)
 ;;00006-0112-54
 ;;9002226.02101,"1786,00006-0112-54 ",.02)
 ;;00006-0112-54
 ;;9002226.02101,"1786,00006-0221-01 ",.01)
 ;;00006-0221-01
 ;;9002226.02101,"1786,00006-0221-01 ",.02)
 ;;00006-0221-01
 ;;9002226.02101,"1786,00006-0221-28 ",.01)
 ;;00006-0221-28
 ;;9002226.02101,"1786,00006-0221-28 ",.02)
 ;;00006-0221-28
 ;;9002226.02101,"1786,00006-0221-31 ",.01)
 ;;00006-0221-31
 ;;9002226.02101,"1786,00006-0221-31 ",.02)
 ;;00006-0221-31
 ;;9002226.02101,"1786,00006-0221-54 ",.01)
 ;;00006-0221-54
 ;;9002226.02101,"1786,00006-0221-54 ",.02)
 ;;00006-0221-54
 ;;9002226.02101,"1786,00006-0277-01 ",.01)
 ;;00006-0277-01
 ;;9002226.02101,"1786,00006-0277-01 ",.02)
 ;;00006-0277-01
 ;;9002226.02101,"1786,00006-0277-28 ",.01)
 ;;00006-0277-28
 ;;9002226.02101,"1786,00006-0277-28 ",.02)
 ;;00006-0277-28
 ;;9002226.02101,"1786,00006-0277-31 ",.01)
 ;;00006-0277-31
 ;;9002226.02101,"1786,00006-0277-31 ",.02)
 ;;00006-0277-31
 ;;9002226.02101,"1786,00006-0277-33 ",.01)
 ;;00006-0277-33
 ;;9002226.02101,"1786,00006-0277-33 ",.02)
 ;;00006-0277-33
 ;;9002226.02101,"1786,00006-0277-54 ",.01)
 ;;00006-0277-54
 ;;9002226.02101,"1786,00006-0277-54 ",.02)
 ;;00006-0277-54
 ;;9002226.02101,"1786,00006-0277-82 ",.01)
 ;;00006-0277-82
 ;;9002226.02101,"1786,00006-0277-82 ",.02)
 ;;00006-0277-82
 ;;9002226.02101,"1786,00006-0533-31 ",.01)
 ;;00006-0533-31
 ;;9002226.02101,"1786,00006-0533-31 ",.02)
 ;;00006-0533-31
 ;;9002226.02101,"1786,00006-0533-54 ",.01)
 ;;00006-0533-54
 ;;9002226.02101,"1786,00006-0533-54 ",.02)
 ;;00006-0533-54
 ;;9002226.02101,"1786,00006-0535-31 ",.01)
 ;;00006-0535-31
 ;;9002226.02101,"1786,00006-0535-31 ",.02)
 ;;00006-0535-31
 ;;9002226.02101,"1786,00006-0535-54 ",.01)
 ;;00006-0535-54
 ;;9002226.02101,"1786,00006-0535-54 ",.02)
 ;;00006-0535-54
 ;;9002226.02101,"1786,00006-0537-31 ",.01)
 ;;00006-0537-31
 ;;9002226.02101,"1786,00006-0537-31 ",.02)
 ;;00006-0537-31
 ;;9002226.02101,"1786,00006-0537-54 ",.01)
 ;;00006-0537-54
 ;;9002226.02101,"1786,00006-0537-54 ",.02)
 ;;00006-0537-54
 ;;9002226.02101,"1786,00006-0575-52 ",.01)
 ;;00006-0575-52
 ;;9002226.02101,"1786,00006-0575-52 ",.02)
 ;;00006-0575-52
 ;;9002226.02101,"1786,00006-0575-61 ",.01)
 ;;00006-0575-61
 ;;9002226.02101,"1786,00006-0575-61 ",.02)
 ;;00006-0575-61
 ;;9002226.02101,"1786,00006-0575-62 ",.01)
 ;;00006-0575-62
 ;;9002226.02101,"1786,00006-0575-62 ",.02)
 ;;00006-0575-62
 ;;9002226.02101,"1786,00006-0575-82 ",.01)
 ;;00006-0575-82
 ;;9002226.02101,"1786,00006-0575-82 ",.02)
 ;;00006-0575-82
 ;;9002226.02101,"1786,00006-0577-52 ",.01)
 ;;00006-0577-52
 ;;9002226.02101,"1786,00006-0577-52 ",.02)
 ;;00006-0577-52
 ;;9002226.02101,"1786,00006-0577-61 ",.01)
 ;;00006-0577-61
 ;;9002226.02101,"1786,00006-0577-61 ",.02)
 ;;00006-0577-61
 ;;9002226.02101,"1786,00006-0577-62 ",.01)
 ;;00006-0577-62
 ;;9002226.02101,"1786,00006-0577-62 ",.02)
 ;;00006-0577-62
 ;;9002226.02101,"1786,00006-0577-82 ",.01)
 ;;00006-0577-82
 ;;9002226.02101,"1786,00006-0577-82 ",.02)
 ;;00006-0577-82
 ;;9002226.02101,"1786,00006-0753-31 ",.01)
 ;;00006-0753-31
 ;;9002226.02101,"1786,00006-0753-31 ",.02)
 ;;00006-0753-31
 ;;9002226.02101,"1786,00006-0753-54 ",.01)
 ;;00006-0753-54
 ;;9002226.02101,"1786,00006-0753-54 ",.02)
 ;;00006-0753-54
 ;;9002226.02101,"1786,00006-0753-82 ",.01)
 ;;00006-0753-82
 ;;9002226.02101,"1786,00006-0753-82 ",.02)
 ;;00006-0753-82
 ;;9002226.02101,"1786,00006-0757-31 ",.01)
 ;;00006-0757-31
 ;;9002226.02101,"1786,00006-0757-31 ",.02)
 ;;00006-0757-31
 ;;9002226.02101,"1786,00006-0757-54 ",.01)
 ;;00006-0757-54
 ;;9002226.02101,"1786,00006-0757-54 ",.02)
 ;;00006-0757-54
 ;;9002226.02101,"1786,00006-0757-82 ",.01)
 ;;00006-0757-82
 ;;9002226.02101,"1786,00006-0757-82 ",.02)
 ;;00006-0757-82
 ;;9002226.02101,"1786,00006-0773-31 ",.01)
 ;;00006-0773-31
 ;;9002226.02101,"1786,00006-0773-31 ",.02)
 ;;00006-0773-31
 ;;9002226.02101,"1786,00006-0773-54 ",.01)
 ;;00006-0773-54
 ;;9002226.02101,"1786,00006-0773-54 ",.02)
 ;;00006-0773-54
 ;;9002226.02101,"1786,00006-0773-82 ",.01)
 ;;00006-0773-82
 ;;9002226.02101,"1786,00006-0773-82 ",.02)
 ;;00006-0773-82
 ;;9002226.02101,"1786,00597-0140-30 ",.01)
 ;;00597-0140-30
 ;;9002226.02101,"1786,00597-0140-30 ",.02)
 ;;00597-0140-30
 ;;9002226.02101,"1786,00597-0140-61 ",.01)
 ;;00597-0140-61
 ;;9002226.02101,"1786,00597-0140-61 ",.02)
 ;;00597-0140-61
 ;;9002226.02101,"1786,00597-0140-90 ",.01)
 ;;00597-0140-90
 ;;9002226.02101,"1786,00597-0140-90 ",.02)
 ;;00597-0140-90
 ;;9002226.02101,"1786,00597-0146-18 ",.01)
 ;;00597-0146-18
 ;;9002226.02101,"1786,00597-0146-18 ",.02)
 ;;00597-0146-18
 ;;9002226.02101,"1786,00597-0146-60 ",.01)
 ;;00597-0146-60
 ;;9002226.02101,"1786,00597-0146-60 ",.02)
 ;;00597-0146-60
 ;;9002226.02101,"1786,00597-0147-18 ",.01)
 ;;00597-0147-18
 ;;9002226.02101,"1786,00597-0147-18 ",.02)
 ;;00597-0147-18
 ;;9002226.02101,"1786,00597-0147-60 ",.01)
 ;;00597-0147-60
 ;;9002226.02101,"1786,00597-0147-60 ",.02)
 ;;00597-0147-60
 ;;9002226.02101,"1786,00597-0148-18 ",.01)
 ;;00597-0148-18
 ;;9002226.02101,"1786,00597-0148-18 ",.02)
 ;;00597-0148-18
 ;;9002226.02101,"1786,00597-0148-60 ",.01)
 ;;00597-0148-60
 ;;9002226.02101,"1786,00597-0148-60 ",.02)
 ;;00597-0148-60
 ;;9002226.02101,"1786,12280-0401-30 ",.01)
 ;;12280-0401-30
 ;;9002226.02101,"1786,12280-0401-30 ",.02)
 ;;12280-0401-30
 ;;9002226.02101,"1786,23490-0112-03 ",.01)
 ;;23490-0112-03
 ;;9002226.02101,"1786,23490-0112-03 ",.02)
 ;;23490-0112-03
 ;;9002226.02101,"1786,35356-0103-30 ",.01)
 ;;35356-0103-30
 ;;9002226.02101,"1786,35356-0103-30 ",.02)
 ;;35356-0103-30
 ;;9002226.02101,"1786,35356-0136-60 ",.01)
 ;;35356-0136-60
 ;;9002226.02101,"1786,35356-0136-60 ",.02)
 ;;35356-0136-60
 ;;9002226.02101,"1786,47463-0434-60 ",.01)
 ;;47463-0434-60
 ;;9002226.02101,"1786,47463-0434-60 ",.02)
 ;;47463-0434-60
 ;;9002226.02101,"1786,47463-0435-60 ",.01)
 ;;47463-0435-60
 ;;9002226.02101,"1786,47463-0435-60 ",.02)
 ;;47463-0435-60
 ;;9002226.02101,"1786,47463-0777-30 ",.01)
 ;;47463-0777-30
 ;;9002226.02101,"1786,47463-0777-30 ",.02)
 ;;47463-0777-30
 ;;9002226.02101,"1786,51138-0479-30 ",.01)
 ;;51138-0479-30
 ;;9002226.02101,"1786,51138-0479-30 ",.02)
 ;;51138-0479-30
 ;;9002226.02101,"1786,51138-0480-30 ",.01)
 ;;51138-0480-30
 ;;9002226.02101,"1786,51138-0480-30 ",.02)
 ;;51138-0480-30
 ;;9002226.02101,"1786,51138-0481-30 ",.01)
 ;;51138-0481-30
 ;;9002226.02101,"1786,51138-0481-30 ",.02)
 ;;51138-0481-30
 ;;9002226.02101,"1786,51138-0526-30 ",.01)
 ;;51138-0526-30
 ;;9002226.02101,"1786,51138-0526-30 ",.02)
 ;;51138-0526-30
 ;;9002226.02101,"1786,51138-0527-30 ",.01)
 ;;51138-0527-30
 ;;9002226.02101,"1786,51138-0527-30 ",.02)
 ;;51138-0527-30
 ;;9002226.02101,"1786,54569-5925-00 ",.01)
 ;;54569-5925-00
 ;;9002226.02101,"1786,54569-5925-00 ",.02)
 ;;54569-5925-00
 ;;9002226.02101,"1786,54868-1097-00 ",.01)
 ;;54868-1097-00
 ;;9002226.02101,"1786,54868-1097-00 ",.02)
 ;;54868-1097-00
 ;;9002226.02101,"1786,54868-1097-01 ",.01)
 ;;54868-1097-01
 ;
OTHER ; OTHER ROUTINES
 D ^BGP48D2
 Q