ATXO1B ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 28, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BGP CABG PROCS
 ;
 ; This routine loads Taxonomy BGP CABG PROCS
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
 ;;21,"0210093 ")
 ;;1
 ;;21,"0210098 ")
 ;;2
 ;;21,"0210099 ")
 ;;3
 ;;21,"021009C ")
 ;;4
 ;;21,"021009F ")
 ;;5
 ;;21,"021009W ")
 ;;6
 ;;21,"02100A3 ")
 ;;7
 ;;21,"02100A8 ")
 ;;8
 ;;21,"02100A9 ")
 ;;9
 ;;21,"02100AC ")
 ;;10
 ;;21,"02100AF ")
 ;;11
 ;;21,"02100AW ")
 ;;12
 ;;21,"02100J3 ")
 ;;13
 ;;21,"02100J8 ")
 ;;14
 ;;21,"02100J9 ")
 ;;15
 ;;21,"02100JC ")
 ;;16
 ;;21,"02100JF ")
 ;;17
 ;;21,"02100JW ")
 ;;18
 ;;21,"02100K3 ")
 ;;19
 ;;21,"02100K8 ")
 ;;20
 ;;21,"02100K9 ")
 ;;21
 ;;21,"02100KC ")
 ;;22
 ;;21,"02100KF ")
 ;;23
 ;;21,"02100KW ")
 ;;24
 ;;21,"02100Z3 ")
 ;;25
 ;;21,"02100Z8 ")
 ;;26
 ;;21,"02100Z9 ")
 ;;27
 ;;21,"02100ZC ")
 ;;28
 ;;21,"02100ZF ")
 ;;29
 ;;21,"0210493 ")
 ;;30
 ;;21,"0210498 ")
 ;;31
 ;;21,"0210499 ")
 ;;32
 ;;21,"021049C ")
 ;;33
 ;;21,"021049F ")
 ;;34
 ;;21,"021049W ")
 ;;35
 ;;21,"02104A3 ")
 ;;36
 ;;21,"02104A8 ")
 ;;37
 ;;21,"02104A9 ")
 ;;38
 ;;21,"02104AC ")
 ;;39
 ;;21,"02104AF ")
 ;;40
 ;;21,"02104AW ")
 ;;41
 ;;21,"02104J3 ")
 ;;42
 ;;21,"02104J8 ")
 ;;43
 ;;21,"02104J9 ")
 ;;44
 ;;21,"02104JC ")
 ;;45
 ;;21,"02104JF ")
 ;;46
 ;;21,"02104JW ")
 ;;47
 ;;21,"02104K3 ")
 ;;48
 ;;21,"02104K8 ")
 ;;49
 ;;21,"02104K9 ")
 ;;50
 ;;21,"02104KC ")
 ;;51
 ;;21,"02104KF ")
 ;;52
 ;;21,"02104KW ")
 ;;53
 ;;21,"02104Z3 ")
 ;;54
 ;;21,"02104Z8 ")
 ;;55
 ;;21,"02104Z9 ")
 ;;56
 ;;21,"02104ZC ")
 ;;57
 ;;21,"02104ZF ")
 ;;58
 ;;21,"0211093 ")
 ;;59
 ;;21,"0211098 ")
 ;;60
 ;;21,"0211099 ")
 ;;61
 ;;21,"021109C ")
 ;;62
 ;;21,"021109F ")
 ;;63
 ;;21,"021109W ")
 ;;64
 ;;21,"02110A3 ")
 ;;65
 ;;21,"02110A8 ")
 ;;66
 ;;21,"02110A9 ")
 ;;67
 ;;21,"02110AC ")
 ;;68
 ;;21,"02110AF ")
 ;;69
 ;;21,"02110AW ")
 ;;70
 ;;21,"02110J3 ")
 ;;71
 ;;21,"02110J8 ")
 ;;72
 ;;21,"02110J9 ")
 ;;73
 ;;21,"02110JC ")
 ;;74
 ;;21,"02110JF ")
 ;;75
 ;;21,"02110JW ")
 ;;76
 ;;21,"02110K3 ")
 ;;77
 ;;21,"02110K8 ")
 ;;78
 ;;21,"02110K9 ")
 ;;79
 ;;21,"02110KC ")
 ;;80
 ;;21,"02110KF ")
 ;;81
 ;;21,"02110KW ")
 ;;82
 ;;21,"02110Z3 ")
 ;;83
 ;;21,"02110Z8 ")
 ;;84
 ;;21,"02110Z9 ")
 ;;85
 ;;21,"02110ZC ")
 ;;86
 ;;21,"02110ZF ")
 ;;87
 ;;21,"0211493 ")
 ;;88
 ;;21,"0211498 ")
 ;;89
 ;;21,"0211499 ")
 ;;90
 ;;21,"021149C ")
 ;;91
 ;;21,"021149F ")
 ;;92
 ;;21,"021149W ")
 ;;93
 ;;21,"02114A3 ")
 ;;94
 ;;21,"02114A8 ")
 ;;95
 ;;21,"02114A9 ")
 ;;96
 ;;21,"02114AC ")
 ;;97
 ;;21,"02114AF ")
 ;;98
 ;;21,"02114AW ")
 ;;99
 ;;21,"02114J3 ")
 ;;100
 ;;21,"02114J8 ")
 ;;101
 ;;21,"02114J9 ")
 ;;102
 ;;21,"02114JC ")
 ;;103
 ;;21,"02114JF ")
 ;;104
 ;;21,"02114JW ")
 ;;105
 ;;21,"02114K3 ")
 ;;106
 ;;21,"02114K8 ")
 ;;107
 ;;21,"02114K9 ")
 ;;108
 ;;21,"02114KC ")
 ;;109
 ;;21,"02114KF ")
 ;;110
 ;;21,"02114KW ")
 ;;111
 ;;21,"02114Z3 ")
 ;;112
 ;;21,"02114Z8 ")
 ;;113
 ;;21,"02114Z9 ")
 ;;114
 ;;21,"02114ZC ")
 ;;115
 ;;21,"02114ZF ")
 ;;116
 ;;21,"0212093 ")
 ;;117
 ;;21,"0212098 ")
 ;;118
 ;;21,"0212099 ")
 ;;119
 ;;21,"021209C ")
 ;;120
 ;;21,"021209F ")
 ;;121
 ;;21,"021209W ")
 ;;122
 ;;21,"02120A3 ")
 ;;123
 ;;21,"02120A8 ")
 ;;124
 ;;21,"02120A9 ")
 ;;125
 ;;21,"02120AC ")
 ;;126
 ;;21,"02120AF ")
 ;;127
 ;;21,"02120AW ")
 ;;128
 ;;21,"02120J3 ")
 ;;129
 ;;21,"02120J8 ")
 ;;130
 ;;21,"02120J9 ")
 ;;131
 ;;21,"02120JC ")
 ;;132
 ;;21,"02120JF ")
 ;;133
 ;;21,"02120JW ")
 ;;134
 ;;21,"02120K3 ")
 ;;135
 ;;21,"02120K8 ")
 ;;136
 ;;21,"02120K9 ")
 ;;137
 ;;21,"02120KC ")
 ;;138
 ;;21,"02120KF ")
 ;;139
 ;;21,"02120KW ")
 ;;140
 ;;21,"02120Z3 ")
 ;;141
 ;;21,"02120Z8 ")
 ;;142
 ;;21,"02120Z9 ")
 ;;143
 ;;21,"02120ZC ")
 ;;144
 ;;21,"02120ZF ")
 ;;145
 ;;21,"0212493 ")
 ;;146
 ;;21,"0212498 ")
 ;;147
 ;;21,"0212499 ")
 ;;148
 ;;21,"021249C ")
 ;;149
 ;;21,"021249F ")
 ;;150
 ;;21,"021249W ")
 ;;151
 ;;21,"02124A3 ")
 ;;152
 ;;21,"02124A8 ")
 ;;153
 ;;21,"02124A9 ")
 ;;154
 ;;21,"02124AC ")
 ;;155
 ;;21,"02124AF ")
 ;;156
 ;;21,"02124AW ")
 ;;157
 ;;21,"02124J3 ")
 ;;158
 ;;21,"02124J8 ")
 ;;159
 ;;21,"02124J9 ")
 ;;160
 ;;21,"02124JC ")
 ;;161
 ;;21,"02124JF ")
 ;;162
 ;;21,"02124JW ")
 ;;163
 ;;21,"02124K3 ")
 ;;164
 ;;21,"02124K8 ")
 ;;165
 ;;21,"02124K9 ")
 ;;166
 ;;21,"02124KC ")
 ;;167
 ;;21,"02124KF ")
 ;;168
 ;;21,"02124KW ")
 ;;169
 ;;21,"02124Z3 ")
 ;;170
 ;;21,"02124Z8 ")
 ;;171
 ;;21,"02124Z9 ")
 ;;172
 ;;21,"02124ZC ")
 ;;173
 ;;21,"02124ZF ")
 ;;174
 ;;21,"0213093 ")
 ;;175
 ;;21,"0213098 ")
 ;;176
 ;;21,"0213099 ")
 ;;177
 ;;21,"021309C ")
 ;;178
 ;;21,"021309F ")
 ;;179
 ;;21,"021309W ")
 ;;180
 ;;21,"02130A3 ")
 ;;181
 ;;21,"02130A8 ")
 ;;182
 ;;21,"02130A9 ")
 ;;183
 ;;21,"02130AC ")
 ;;184
 ;;21,"02130AF ")
 ;;185
 ;;21,"02130AW ")
 ;;186
 ;;21,"02130J3 ")
 ;;187
 ;;21,"02130J8 ")
 ;;188
 ;;21,"02130J9 ")
 ;;189
 ;;21,"02130JC ")
 ;;190
 ;;21,"02130JF ")
 ;;191
 ;;21,"02130JW ")
 ;;192
 ;;21,"02130K3 ")
 ;;193
 ;;21,"02130K8 ")
 ;;194
 ;;21,"02130K9 ")
 ;;195
 ;;21,"02130KC ")
 ;;196
 ;;21,"02130KF ")
 ;;197
 ;;21,"02130KW ")
 ;;198
 ;;21,"02130Z3 ")
 ;;199
 ;;21,"02130Z8 ")
 ;;200
 ;;21,"02130Z9 ")
 ;;201
 ;;21,"02130ZC ")
 ;;202
 ;;21,"02130ZF ")
 ;;203
 ;;21,"0213493 ")
 ;;204
 ;;21,"0213498 ")
 ;;205
 ;;21,"0213499 ")
 ;;206
 ;;21,"021349C ")
 ;;207
 ;;21,"021349F ")
 ;;208
 ;;21,"021349W ")
 ;;209
 ;;21,"02134A3 ")
 ;;210
 ;;21,"02134A8 ")
 ;;211
 ;;21,"02134A9 ")
 ;;212
 ;;21,"02134AC ")
 ;;213
 ;;21,"02134AF ")
 ;;214
 ;;21,"02134AW ")
 ;;215
 ;;21,"02134J3 ")
 ;;216
 ;;21,"02134J8 ")
 ;;217
 ;;21,"02134J9 ")
 ;;218
 ;;21,"02134JC ")
 ;;219
 ;;21,"02134JF ")
 ;;220
 ;;21,"02134JW ")
 ;;221
 ;;21,"02134K3 ")
 ;;222
 ;;21,"02134K8 ")
 ;;223
 ;;21,"02134K9 ")
 ;;224
 ;;21,"02134KC ")
 ;;225
 ;;21,"02134KF ")
 ;;226
 ;;21,"02134KW ")
 ;;227
 ;;21,"02134Z3 ")
 ;;228
 ;;21,"02134Z8 ")
 ;;229
 ;;21,"02134Z9 ")
 ;;230
 ;;21,"02134ZC ")
 ;;231
 ;;21,"02134ZF ")
 ;;232
 ;;21,"36.10 ")
 ;;233
 ;;9002226,342,.01)
 ;;BGP CABG PROCS
 ;;9002226,342,.02)
 ;;@
 ;;9002226,342,.04)
 ;;n
 ;;9002226,342,.06)
 ;;@
 ;;9002226,342,.08)
 ;;0
 ;;9002226,342,.09)
 ;;3130514
 ;;9002226,342,.11)
 ;;@
 ;;9002226,342,.12)
 ;;255
 ;;9002226,342,.13)
 ;;1
 ;;9002226,342,.14)
 ;;@
 ;;9002226,342,.15)
 ;;80.1
 ;;9002226,342,.16)
 ;;@
 ;;9002226,342,.17)
 ;;@
 ;;9002226,342,3101)
 ;;@
 ;;9002226.02101,"342,0210093 ",.01)
 ;;0210093
 ;;9002226.02101,"342,0210093 ",.02)
 ;;0210093
 ;;9002226.02101,"342,0210093 ",.03)
 ;;31
 ;;9002226.02101,"342,0210098 ",.01)
 ;;0210098
 ;;9002226.02101,"342,0210098 ",.02)
 ;;0210098
 ;;9002226.02101,"342,0210098 ",.03)
 ;;31
 ;;9002226.02101,"342,0210099 ",.01)
 ;;0210099
 ;;9002226.02101,"342,0210099 ",.02)
 ;;0210099
 ;;9002226.02101,"342,0210099 ",.03)
 ;;31
 ;;9002226.02101,"342,021009C ",.01)
 ;;021009C
 ;;9002226.02101,"342,021009C ",.02)
 ;;021009C
 ;;9002226.02101,"342,021009C ",.03)
 ;;31
 ;;9002226.02101,"342,021009F ",.01)
 ;;021009F
 ;;9002226.02101,"342,021009F ",.02)
 ;;021009F
 ;;9002226.02101,"342,021009F ",.03)
 ;;31
 ;;9002226.02101,"342,021009W ",.01)
 ;;021009W
 ;;9002226.02101,"342,021009W ",.02)
 ;;021009W
 ;;9002226.02101,"342,021009W ",.03)
 ;;31
 ;;9002226.02101,"342,02100A3 ",.01)
 ;;02100A3
 ;;9002226.02101,"342,02100A3 ",.02)
 ;;02100A3
 ;;9002226.02101,"342,02100A3 ",.03)
 ;;31
 ;;9002226.02101,"342,02100A8 ",.01)
 ;;02100A8
 ;;9002226.02101,"342,02100A8 ",.02)
 ;;02100A8
 ;;9002226.02101,"342,02100A8 ",.03)
 ;;31
 ;;9002226.02101,"342,02100A9 ",.01)
 ;;02100A9
 ;;9002226.02101,"342,02100A9 ",.02)
 ;;02100A9
 ;;9002226.02101,"342,02100A9 ",.03)
 ;;31
 ;;9002226.02101,"342,02100AC ",.01)
 ;;02100AC
 ;;9002226.02101,"342,02100AC ",.02)
 ;;02100AC
 ;;9002226.02101,"342,02100AC ",.03)
 ;;31
 ;;9002226.02101,"342,02100AF ",.01)
 ;;02100AF
 ;;9002226.02101,"342,02100AF ",.02)
 ;;02100AF
 ;;9002226.02101,"342,02100AF ",.03)
 ;;31
 ;;9002226.02101,"342,02100AW ",.01)
 ;;02100AW
 ;;9002226.02101,"342,02100AW ",.02)
 ;;02100AW
 ;;9002226.02101,"342,02100AW ",.03)
 ;;31
 ;;9002226.02101,"342,02100J3 ",.01)
 ;;02100J3
 ;;9002226.02101,"342,02100J3 ",.02)
 ;;02100J3
 ;;9002226.02101,"342,02100J3 ",.03)
 ;;31
 ;;9002226.02101,"342,02100J8 ",.01)
 ;;02100J8
 ;;9002226.02101,"342,02100J8 ",.02)
 ;;02100J8
 ;;9002226.02101,"342,02100J8 ",.03)
 ;;31
 ;;9002226.02101,"342,02100J9 ",.01)
 ;;02100J9
 ;;9002226.02101,"342,02100J9 ",.02)
 ;;02100J9
 ;;9002226.02101,"342,02100J9 ",.03)
 ;;31
 ;;9002226.02101,"342,02100JC ",.01)
 ;;02100JC
 ;;9002226.02101,"342,02100JC ",.02)
 ;;02100JC
 ;;9002226.02101,"342,02100JC ",.03)
 ;;31
 ;;9002226.02101,"342,02100JF ",.01)
 ;;02100JF
 ;;9002226.02101,"342,02100JF ",.02)
 ;;02100JF
 ;;9002226.02101,"342,02100JF ",.03)
 ;;31
 ;;9002226.02101,"342,02100JW ",.01)
 ;;02100JW
 ;;9002226.02101,"342,02100JW ",.02)
 ;;02100JW
 ;;9002226.02101,"342,02100JW ",.03)
 ;;31
 ;;9002226.02101,"342,02100K3 ",.01)
 ;;02100K3
 ;;9002226.02101,"342,02100K3 ",.02)
 ;;02100K3
 ;;9002226.02101,"342,02100K3 ",.03)
 ;;31
 ;;9002226.02101,"342,02100K8 ",.01)
 ;;02100K8
 ;;9002226.02101,"342,02100K8 ",.02)
 ;;02100K8
 ;;9002226.02101,"342,02100K8 ",.03)
 ;;31
 ;;9002226.02101,"342,02100K9 ",.01)
 ;;02100K9
 ;;9002226.02101,"342,02100K9 ",.02)
 ;;02100K9
 ;;9002226.02101,"342,02100K9 ",.03)
 ;;31
 ;;9002226.02101,"342,02100KC ",.01)
 ;;02100KC
 ;;9002226.02101,"342,02100KC ",.02)
 ;;02100KC
 ;;9002226.02101,"342,02100KC ",.03)
 ;;31
 ;;9002226.02101,"342,02100KF ",.01)
 ;;02100KF
 ;;9002226.02101,"342,02100KF ",.02)
 ;;02100KF
 ;;9002226.02101,"342,02100KF ",.03)
 ;;31
 ;;9002226.02101,"342,02100KW ",.01)
 ;;02100KW
 ;;9002226.02101,"342,02100KW ",.02)
 ;;02100KW
 ;;9002226.02101,"342,02100KW ",.03)
 ;;31
 ;;9002226.02101,"342,02100Z3 ",.01)
 ;;02100Z3
 ;;9002226.02101,"342,02100Z3 ",.02)
 ;;02100Z3
 ;;9002226.02101,"342,02100Z3 ",.03)
 ;;31
 ;;9002226.02101,"342,02100Z8 ",.01)
 ;;02100Z8
 ;;9002226.02101,"342,02100Z8 ",.02)
 ;;02100Z8
 ;;9002226.02101,"342,02100Z8 ",.03)
 ;;31
 ;;9002226.02101,"342,02100Z9 ",.01)
 ;;02100Z9
 ;;9002226.02101,"342,02100Z9 ",.02)
 ;;02100Z9
 ;;9002226.02101,"342,02100Z9 ",.03)
 ;;31
 ;;9002226.02101,"342,02100ZC ",.01)
 ;;02100ZC
 ;;9002226.02101,"342,02100ZC ",.02)
 ;;02100ZC
 ;;9002226.02101,"342,02100ZC ",.03)
 ;;31
 ;;9002226.02101,"342,02100ZF ",.01)
 ;;02100ZF
 ;;9002226.02101,"342,02100ZF ",.02)
 ;;02100ZF
 ;;9002226.02101,"342,02100ZF ",.03)
 ;;31
 ;;9002226.02101,"342,0210493 ",.01)
 ;;0210493
 ;;9002226.02101,"342,0210493 ",.02)
 ;;0210493
 ;;9002226.02101,"342,0210493 ",.03)
 ;;31
 ;;9002226.02101,"342,0210498 ",.01)
 ;;0210498
 ;;9002226.02101,"342,0210498 ",.02)
 ;;0210498
 ;;9002226.02101,"342,0210498 ",.03)
 ;;31
 ;;9002226.02101,"342,0210499 ",.01)
 ;;0210499
 ;;9002226.02101,"342,0210499 ",.02)
 ;;0210499
 ;;9002226.02101,"342,0210499 ",.03)
 ;;31
 ;;9002226.02101,"342,021049C ",.01)
 ;;021049C
 ;;9002226.02101,"342,021049C ",.02)
 ;;021049C
 ;;9002226.02101,"342,021049C ",.03)
 ;;31
 ;;9002226.02101,"342,021049F ",.01)
 ;;021049F
 ;;9002226.02101,"342,021049F ",.02)
 ;;021049F
 ;;9002226.02101,"342,021049F ",.03)
 ;;31
 ;;9002226.02101,"342,021049W ",.01)
 ;;021049W
 ;;9002226.02101,"342,021049W ",.02)
 ;;021049W
 ;;9002226.02101,"342,021049W ",.03)
 ;;31
 ;;9002226.02101,"342,02104A3 ",.01)
 ;;02104A3
 ;;9002226.02101,"342,02104A3 ",.02)
 ;;02104A3
 ;;9002226.02101,"342,02104A3 ",.03)
 ;;31
 ;;9002226.02101,"342,02104A8 ",.01)
 ;;02104A8
 ;;9002226.02101,"342,02104A8 ",.02)
 ;;02104A8
 ;;9002226.02101,"342,02104A8 ",.03)
 ;;31
 ;;9002226.02101,"342,02104A9 ",.01)
 ;;02104A9
 ;;9002226.02101,"342,02104A9 ",.02)
 ;;02104A9
 ;;9002226.02101,"342,02104A9 ",.03)
 ;;31
 ;;9002226.02101,"342,02104AC ",.01)
 ;;02104AC
 ;;9002226.02101,"342,02104AC ",.02)
 ;;02104AC
 ;;9002226.02101,"342,02104AC ",.03)
 ;;31
 ;;9002226.02101,"342,02104AF ",.01)
 ;;02104AF
 ;;9002226.02101,"342,02104AF ",.02)
 ;;02104AF
 ;;9002226.02101,"342,02104AF ",.03)
 ;;31
 ;;9002226.02101,"342,02104AW ",.01)
 ;;02104AW
 ;;9002226.02101,"342,02104AW ",.02)
 ;;02104AW
 ;;9002226.02101,"342,02104AW ",.03)
 ;;31
 ;;9002226.02101,"342,02104J3 ",.01)
 ;;02104J3
 ;;9002226.02101,"342,02104J3 ",.02)
 ;;02104J3
 ;;9002226.02101,"342,02104J3 ",.03)
 ;;31
 ;;9002226.02101,"342,02104J8 ",.01)
 ;;02104J8
 ;;9002226.02101,"342,02104J8 ",.02)
 ;;02104J8
 ;;9002226.02101,"342,02104J8 ",.03)
 ;;31
 ;;9002226.02101,"342,02104J9 ",.01)
 ;;02104J9
 ;;9002226.02101,"342,02104J9 ",.02)
 ;;02104J9
 ;;9002226.02101,"342,02104J9 ",.03)
 ;;31
 ;
OTHER ; OTHER ROUTINES
 D ^ATXO1B2
 D ^ATXO1B3
 D ^ATXO1B4
 Q