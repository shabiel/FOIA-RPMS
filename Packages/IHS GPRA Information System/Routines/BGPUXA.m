BGPUXA ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON JUL 05, 2004 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;;BGP CREATININE LOINC CODES
 ;
 ; This routine loads Taxonomy BGP CREATININE LOINC CODES
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
 ;;21,"11041-1 ")
 ;;1
 ;;21,"11042-9 ")
 ;;2
 ;;21,"11141-9 ")
 ;;3
 ;;21,"11145-0 ")
 ;;4
 ;;21,"11146-8 ")
 ;;5
 ;;21,"11147-6 ")
 ;;6
 ;;21,"11148-4 ")
 ;;7
 ;;21,"11149-2 ")
 ;;8
 ;;21,"11155-9 ")
 ;;9
 ;;21,"11214-4 ")
 ;;10
 ;;21,"12177-2 ")
 ;;11
 ;;21,"12190-5 ")
 ;;12
 ;;21,"12191-3 ")
 ;;13
 ;;21,"12192-1 ")
 ;;14
 ;;21,"12193-9 ")
 ;;15
 ;;21,"12194-7 ")
 ;;16
 ;;21,"12195-4 ")
 ;;17
 ;;21,"12421-4 ")
 ;;18
 ;;21,"12534-4 ")
 ;;19
 ;;21,"12572-4 ")
 ;;20
 ;;21,"12573-2 ")
 ;;21
 ;;21,"12574-0 ")
 ;;22
 ;;21,"12575-7 ")
 ;;23
 ;;21,"12576-5 ")
 ;;24
 ;;21,"12577-3 ")
 ;;25
 ;;21,"12578-1 ")
 ;;26
 ;;21,"12579-9 ")
 ;;27
 ;;21,"12580-7 ")
 ;;28
 ;;21,"12581-5 ")
 ;;29
 ;;21,"12582-3 ")
 ;;30
 ;;21,"12583-1 ")
 ;;31
 ;;21,"12584-9 ")
 ;;32
 ;;21,"12585-6 ")
 ;;33
 ;;21,"12586-4 ")
 ;;34
 ;;21,"12587-2 ")
 ;;35
 ;;21,"12588-0 ")
 ;;36
 ;;21,"12589-8 ")
 ;;37
 ;;21,"13001-3 ")
 ;;38
 ;;21,"13441-1 ")
 ;;39
 ;;21,"13442-9 ")
 ;;40
 ;;21,"13443-7 ")
 ;;41
 ;;21,"13445-2 ")
 ;;42
 ;;21,"13446-0 ")
 ;;43
 ;;21,"13447-8 ")
 ;;44
 ;;21,"13449-4 ")
 ;;45
 ;;21,"13450-2 ")
 ;;46
 ;;21,"13451-0 ")
 ;;47
 ;;21,"13463-5 ")
 ;;48
 ;;21,"13464-3 ")
 ;;49
 ;;21,"13465-0 ")
 ;;50
 ;;21,"13466-8 ")
 ;;51
 ;;21,"13467-6 ")
 ;;52
 ;;21,"13468-4 ")
 ;;53
 ;;21,"13469-2 ")
 ;;54
 ;;21,"13470-0 ")
 ;;55
 ;;21,"13471-8 ")
 ;;56
 ;;21,"13472-6 ")
 ;;57
 ;;21,"13473-4 ")
 ;;58
 ;;21,"13474-2 ")
 ;;59
 ;;21,"13475-9 ")
 ;;60
 ;;21,"13476-7 ")
 ;;61
 ;;21,"13477-5 ")
 ;;62
 ;;21,"13478-3 ")
 ;;63
 ;;21,"13479-1 ")
 ;;64
 ;;21,"13480-9 ")
 ;;65
 ;;21,"13481-7 ")
 ;;66
 ;;21,"13482-5 ")
 ;;67
 ;;21,"13483-3 ")
 ;;68
 ;;21,"13484-1 ")
 ;;69
 ;;21,"13485-8 ")
 ;;70
 ;;21,"13486-6 ")
 ;;71
 ;;21,"13487-4 ")
 ;;72
 ;;21,"13489-0 ")
 ;;73
 ;;21,"13490-8 ")
 ;;74
 ;;21,"13665-5 ")
 ;;75
 ;;21,"13666-3 ")
 ;;76
 ;;21,"13667-1 ")
 ;;77
 ;;21,"13668-9 ")
 ;;78
 ;;21,"13669-7 ")
 ;;79
 ;;21,"13670-5 ")
 ;;80
 ;;21,"13671-3 ")
 ;;81
 ;;21,"13672-1 ")
 ;;82
 ;;21,"13673-9 ")
 ;;83
 ;;21,"13674-7 ")
 ;;84
 ;;21,"13675-4 ")
 ;;85
 ;;21,"13676-2 ")
 ;;86
 ;;21,"13677-0 ")
 ;;87
 ;;21,"13678-8 ")
 ;;88
 ;;21,"13679-6 ")
 ;;89
 ;;21,"13680-4 ")
 ;;90
 ;;21,"13681-2 ")
 ;;91
 ;;21,"13682-0 ")
 ;;92
 ;;21,"13683-8 ")
 ;;93
 ;;21,"13684-6 ")
 ;;94
 ;;21,"13685-3 ")
 ;;95
 ;;21,"13686-1 ")
 ;;96
 ;;21,"13687-9 ")
 ;;97
 ;;21,"13688-7 ")
 ;;98
 ;;21,"13689-5 ")
 ;;99
 ;;21,"13690-3 ")
 ;;100
 ;;21,"13691-1 ")
 ;;101
 ;;21,"13692-9 ")
 ;;102
 ;;21,"13693-7 ")
 ;;103
 ;;21,"13694-5 ")
 ;;104
 ;;21,"13695-2 ")
 ;;105
 ;;21,"13696-0 ")
 ;;106
 ;;21,"13697-8 ")
 ;;107
 ;;21,"13698-6 ")
 ;;108
 ;;21,"13699-4 ")
 ;;109
 ;;21,"13700-0 ")
 ;;110
 ;;21,"13701-8 ")
 ;;111
 ;;21,"13702-6 ")
 ;;112
 ;;21,"13703-4 ")
 ;;113
 ;;21,"13704-2 ")
 ;;114
 ;;21,"13705-9 ")
 ;;115
 ;;21,"13706-7 ")
 ;;116
 ;;21,"13707-5 ")
 ;;117
 ;;21,"13708-3 ")
 ;;118
 ;;21,"13709-1 ")
 ;;119
 ;;21,"13710-9 ")
 ;;120
 ;;21,"13711-7 ")
 ;;121
 ;;21,"13712-5 ")
 ;;122
 ;;21,"13713-3 ")
 ;;123
 ;;21,"13714-1 ")
 ;;124
 ;;21,"13715-8 ")
 ;;125
 ;;21,"13716-6 ")
 ;;126
 ;;21,"13717-4 ")
 ;;127
 ;;21,"13718-2 ")
 ;;128
 ;;21,"13719-0 ")
 ;;129
 ;;21,"13720-8 ")
 ;;130
 ;;21,"13721-6 ")
 ;;131
 ;;21,"13722-4 ")
 ;;132
 ;;21,"13723-2 ")
 ;;133
 ;;21,"13724-0 ")
 ;;134
 ;;21,"13725-7 ")
 ;;135
 ;;21,"13726-5 ")
 ;;136
 ;;21,"13727-3 ")
 ;;137
 ;;21,"13728-1 ")
 ;;138
 ;;21,"13729-9 ")
 ;;139
 ;;21,"13730-7 ")
 ;;140
 ;;21,"13731-5 ")
 ;;141
 ;;21,"13732-3 ")
 ;;142
 ;;21,"13733-1 ")
 ;;143
 ;;21,"13734-9 ")
 ;;144
 ;;21,"13735-6 ")
 ;;145
 ;;21,"13736-4 ")
 ;;146
 ;;21,"13737-2 ")
 ;;147
 ;;21,"13738-0 ")
 ;;148
 ;;21,"13739-8 ")
 ;;149
 ;;21,"13740-6 ")
 ;;150
 ;;21,"13741-4 ")
 ;;151
 ;;21,"13742-2 ")
 ;;152
 ;;21,"13743-0 ")
 ;;153
 ;;21,"13744-8 ")
 ;;154
 ;;21,"13745-5 ")
 ;;155
 ;;21,"13746-3 ")
 ;;156
 ;;21,"13747-1 ")
 ;;157
 ;;21,"13748-9 ")
 ;;158
 ;;21,"13749-7 ")
 ;;159
 ;;21,"13750-5 ")
 ;;160
 ;;21,"13751-3 ")
 ;;161
 ;;21,"13752-1 ")
 ;;162
 ;;21,"13753-9 ")
 ;;163
 ;;21,"13754-7 ")
 ;;164
 ;;21,"13755-4 ")
 ;;165
 ;;21,"13756-2 ")
 ;;166
 ;;21,"13757-0 ")
 ;;167
 ;;21,"13758-8 ")
 ;;168
 ;;21,"13759-6 ")
 ;;169
 ;;21,"13760-4 ")
 ;;170
 ;;21,"13761-2 ")
 ;;171
 ;;21,"13762-0 ")
 ;;172
 ;;21,"13763-8 ")
 ;;173
 ;;21,"13764-6 ")
 ;;174
 ;;21,"13765-3 ")
 ;;175
 ;;21,"13766-1 ")
 ;;176
 ;;21,"13767-9 ")
 ;;177
 ;;21,"13768-7 ")
 ;;178
 ;;21,"13769-5 ")
 ;;179
 ;
OTHER ; OTHER ROUTINES
 D ^BGPUXAB
 D ^BGPUXAC
 D ^BGPUXAD
 D ^BGPUXAE
 D ^BGPUXAF
 D ^BGPUXAG
 D ^BGPUXAH
 D ^BGPUXAI
 D ^BGPUXAJ
 D ^BGPUXAK
 D ^BGPUXAL
 D ^BGPUXAM
 D ^BGPUXAN
 D ^BGPUXAO
 D ^BGPUXAP
 D ^BGPUXAQ
 Q