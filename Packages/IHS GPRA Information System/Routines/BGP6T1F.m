BGP6T1F ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;;BGP HEDIS ANTI-INFECTIVE NDC
 ;
 ; This routine loads Taxonomy BGP HEDIS ANTI-INFECTIVE NDC
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
 ;;21,"00093-2130-01 ")
 ;;1
 ;;21,"00093-2130-10 ")
 ;;2
 ;;21,"00093-2130-19 ")
 ;;3
 ;;21,"00093-2130-93 ")
 ;;4
 ;;21,"00093-2131-01 ")
 ;;5
 ;;21,"00093-2131-10 ")
 ;;6
 ;;21,"00093-2131-19 ")
 ;;7
 ;;21,"00093-2131-93 ")
 ;;8
 ;;21,"00149-0007-05 ")
 ;;9
 ;;21,"00185-0122-01 ")
 ;;10
 ;;21,"00185-0122-10 ")
 ;;11
 ;;21,"00378-1650-01 ")
 ;;12
 ;;21,"00378-1650-05 ")
 ;;13
 ;;21,"00378-1700-01 ")
 ;;14
 ;;21,"00378-1700-05 ")
 ;;15
 ;;21,"00378-3422-01 ")
 ;;16
 ;;21,"00440-1866-20 ")
 ;;17
 ;;21,"00440-7866-04 ")
 ;;18
 ;;21,"00440-7866-06 ")
 ;;19
 ;;21,"00440-7866-14 ")
 ;;20
 ;;21,"00440-7866-20 ")
 ;;21
 ;;21,"00440-7866-40 ")
 ;;22
 ;;21,"00440-7868-02 ")
 ;;23
 ;;21,"00440-7868-06 ")
 ;;24
 ;;21,"00440-7868-14 ")
 ;;25
 ;;21,"00440-7868-20 ")
 ;;26
 ;;21,"00440-7868-40 ")
 ;;27
 ;;21,"00440-7868-99 ")
 ;;28
 ;;21,"10544-0601-20 ")
 ;;29
 ;;21,"16590-0380-14 ")
 ;;30
 ;;21,"16590-0380-28 ")
 ;;31
 ;;21,"16714-0439-01 ")
 ;;32
 ;;21,"21695-0300-06 ")
 ;;33
 ;;21,"21695-0300-10 ")
 ;;34
 ;;21,"21695-0300-14 ")
 ;;35
 ;;21,"21695-0300-20 ")
 ;;36
 ;;21,"33261-0160-10 ")
 ;;37
 ;;21,"33261-0160-14 ")
 ;;38
 ;;21,"33261-0160-20 ")
 ;;39
 ;;21,"33261-0160-30 ")
 ;;40
 ;;21,"33261-0226-06 ")
 ;;41
 ;;21,"33261-0226-10 ")
 ;;42
 ;;21,"33261-0226-14 ")
 ;;43
 ;;21,"33261-0226-20 ")
 ;;44
 ;;21,"33261-0226-28 ")
 ;;45
 ;;21,"33261-0226-30 ")
 ;;46
 ;;21,"33358-0265-14 ")
 ;;47
 ;;21,"33358-0265-20 ")
 ;;48
 ;;21,"33358-0267-14 ")
 ;;49
 ;;21,"33358-0267-28 ")
 ;;50
 ;;21,"33358-0267-30 ")
 ;;51
 ;;21,"33358-0267-40 ")
 ;;52
 ;;21,"35356-0681-14 ")
 ;;53
 ;;21,"42254-0064-14 ")
 ;;54
 ;;21,"42254-0064-15 ")
 ;;55
 ;;21,"42254-0070-06 ")
 ;;56
 ;;21,"42254-0070-14 ")
 ;;57
 ;;21,"43063-0173-02 ")
 ;;58
 ;;21,"43063-0400-10 ")
 ;;59
 ;;21,"43063-0400-12 ")
 ;;60
 ;;21,"43063-0400-20 ")
 ;;61
 ;;21,"43063-0400-40 ")
 ;;62
 ;;21,"43386-0450-11 ")
 ;;63
 ;;21,"47463-0545-14 ")
 ;;64
 ;;21,"47463-0545-20 ")
 ;;65
 ;;21,"47463-0545-30 ")
 ;;66
 ;;21,"47781-0303-01 ")
 ;;67
 ;;21,"47781-0307-01 ")
 ;;68
 ;;21,"47781-0308-01 ")
 ;;69
 ;;21,"49999-0210-14 ")
 ;;70
 ;;21,"49999-0210-20 ")
 ;;71
 ;;21,"49999-0210-28 ")
 ;;72
 ;;21,"49999-0675-14 ")
 ;;73
 ;;21,"50436-6590-04 ")
 ;;74
 ;;21,"51079-0348-01 ")
 ;;75
 ;;21,"51079-0348-20 ")
 ;;76
 ;;21,"51079-0584-01 ")
 ;;77
 ;;21,"51079-0584-20 ")
 ;;78
 ;;21,"51079-0585-01 ")
 ;;79
 ;;21,"51079-0585-20 ")
 ;;80
 ;;21,"51138-0272-14 ")
 ;;81
 ;;21,"51138-0272-20 ")
 ;;82
 ;;21,"52427-0285-01 ")
 ;;83
 ;;21,"52427-0286-01 ")
 ;;84
 ;;21,"52427-0287-01 ")
 ;;85
 ;;21,"52427-0288-01 ")
 ;;86
 ;;21,"52959-0404-10 ")
 ;;87
 ;;21,"52959-0404-14 ")
 ;;88
 ;;21,"52959-0404-20 ")
 ;;89
 ;;21,"52959-0405-00 ")
 ;;90
 ;;21,"52959-0405-08 ")
 ;;91
 ;;21,"52959-0405-10 ")
 ;;92
 ;;21,"52959-0405-14 ")
 ;;93
 ;;21,"52959-0405-15 ")
 ;;94
 ;;21,"52959-0405-16 ")
 ;;95
 ;;21,"52959-0405-20 ")
 ;;96
 ;;21,"52959-0405-21 ")
 ;;97
 ;;21,"52959-0405-28 ")
 ;;98
 ;;21,"52959-0405-30 ")
 ;;99
 ;;21,"52959-0405-40 ")
 ;;100
 ;;21,"52959-0783-10 ")
 ;;101
 ;;21,"52959-0783-14 ")
 ;;102
 ;;21,"52959-0783-20 ")
 ;;103
 ;;21,"53002-0704-06 ")
 ;;104
 ;;21,"53002-0704-10 ")
 ;;105
 ;;21,"53002-0704-14 ")
 ;;106
 ;;21,"53002-0704-20 ")
 ;;107
 ;;21,"54348-0755-28 ")
 ;;108
 ;;21,"54348-0800-28 ")
 ;;109
 ;;21,"54348-0801-06 ")
 ;;110
 ;;21,"54348-0801-12 ")
 ;;111
 ;;21,"54348-0801-14 ")
 ;;112
 ;;21,"54348-0801-28 ")
 ;;113
 ;;21,"54348-0801-30 ")
 ;;114
 ;;21,"54348-0801-40 ")
 ;;115
 ;;21,"54348-0802-28 ")
 ;;116
 ;;21,"54348-0802-40 ")
 ;;117
 ;;21,"54348-0850-06 ")
 ;;118
 ;;21,"54348-0850-10 ")
 ;;119
 ;;21,"54348-0850-14 ")
 ;;120
 ;;21,"54348-0850-20 ")
 ;;121
 ;;21,"54348-0850-40 ")
 ;;122
 ;;21,"54569-0181-00 ")
 ;;123
 ;;21,"54569-0181-01 ")
 ;;124
 ;;21,"54569-0181-08 ")
 ;;125
 ;;21,"54569-1969-00 ")
 ;;126
 ;;21,"54569-1969-01 ")
 ;;127
 ;;21,"54569-1969-02 ")
 ;;128
 ;;21,"54569-1969-03 ")
 ;;129
 ;;21,"54569-1969-04 ")
 ;;130
 ;;21,"54569-3544-00 ")
 ;;131
 ;;21,"54569-3544-01 ")
 ;;132
 ;;21,"54569-3544-02 ")
 ;;133
 ;;21,"54569-5576-00 ")
 ;;134
 ;;21,"54569-5576-01 ")
 ;;135
 ;;21,"54569-8316-00 ")
 ;;136
 ;;21,"54868-0107-00 ")
 ;;137
 ;;21,"54868-0107-02 ")
 ;;138
 ;;21,"54868-0107-05 ")
 ;;139
 ;;21,"54868-0107-06 ")
 ;;140
 ;;21,"54868-0107-07 ")
 ;;141
 ;;21,"54868-0473-00 ")
 ;;142
 ;;21,"54868-0473-01 ")
 ;;143
 ;;21,"54868-0473-02 ")
 ;;144
 ;;21,"54868-0473-03 ")
 ;;145
 ;;21,"54868-0473-04 ")
 ;;146
 ;;21,"54868-0473-05 ")
 ;;147
 ;;21,"54868-0473-06 ")
 ;;148
 ;;21,"54868-0473-07 ")
 ;;149
 ;;21,"54868-2366-00 ")
 ;;150
 ;;21,"54868-2366-01 ")
 ;;151
 ;;21,"54868-2366-02 ")
 ;;152
 ;;21,"54868-2366-03 ")
 ;;153
 ;;21,"54868-2366-04 ")
 ;;154
 ;;21,"54868-2366-05 ")
 ;;155
 ;;21,"54868-2366-06 ")
 ;;156
 ;;21,"54868-2366-07 ")
 ;;157
 ;;21,"54868-6203-00 ")
 ;;158
 ;;21,"54868-6203-01 ")
 ;;159
 ;;21,"55045-2079-04 ")
 ;;160
 ;;21,"55045-2341-05 ")
 ;;161
 ;;21,"55045-3182-05 ")
 ;;162
 ;;21,"55048-0545-14 ")
 ;;163
 ;;21,"55048-0545-20 ")
 ;;164
 ;;21,"55048-0545-30 ")
 ;;165
 ;;21,"55289-0031-06 ")
 ;;166
 ;;21,"55289-0031-10 ")
 ;;167
 ;;21,"55289-0031-14 ")
 ;;168
 ;;21,"55289-0031-20 ")
 ;;169
 ;;21,"55289-0179-12 ")
 ;;170
 ;;21,"55289-0179-28 ")
 ;;171
 ;;21,"55289-0179-40 ")
 ;;172
 ;;21,"55289-0186-12 ")
 ;;173
 ;;21,"55289-0186-14 ")
 ;;174
 ;;21,"55289-0186-20 ")
 ;;175
 ;;21,"55289-0186-21 ")
 ;;176
 ;;21,"55289-0186-28 ")
 ;;177
 ;;21,"55289-0186-40 ")
 ;;178
 ;;21,"55289-0203-06 ")
 ;;179
 ;;21,"55289-0203-10 ")
 ;;180
 ;;21,"55289-0203-12 ")
 ;;181
 ;;21,"55289-0203-14 ")
 ;;182
 ;;21,"55289-0203-20 ")
 ;;183
 ;;21,"55289-0203-28 ")
 ;;184
 ;;21,"55289-0203-30 ")
 ;;185
 ;;21,"55289-0203-40 ")
 ;;186
 ;;21,"55289-0822-02 ")
 ;;187
 ;;21,"55289-0822-06 ")
 ;;188
 ;;21,"55289-0822-10 ")
 ;;189
 ;;21,"55289-0822-14 ")
 ;;190
 ;;21,"55289-0822-20 ")
 ;;191
 ;;21,"55289-0914-12 ")
 ;;192
 ;;21,"55289-0914-14 ")
 ;;193
 ;;21,"55289-0914-15 ")
 ;;194
 ;;21,"55289-0914-20 ")
 ;;195
 ;;21,"55289-0914-28 ")
 ;;196
 ;;21,"55289-0914-30 ")
 ;;197
 ;;21,"55289-0914-40 ")
 ;;198
 ;;21,"57664-0239-32 ")
 ;;199
 ;;21,"58118-0303-02 ")
 ;;200
 ;;21,"58118-0303-04 ")
 ;;201
 ;;21,"58118-0308-01 ")
 ;;202
 ;;21,"58864-0323-14 ")
 ;;203
 ;;21,"58864-0371-14 ")
 ;;204
 ;;21,"58864-0371-20 ")
 ;;205
 ;;21,"58864-0371-30 ")
 ;;206
 ;;21,"58864-0651-14 ")
 ;;207
 ;;21,"59630-0450-08 ")
 ;;208
 ;;21,"63629-1459-01 ")
 ;;209
 ;;21,"63629-1459-02 ")
 ;;210
 ;;21,"63629-1459-03 ")
 ;;211
 ;;21,"63629-1459-04 ")
 ;;212
 ;;21,"63629-1459-05 ")
 ;;213
 ;;21,"63629-1459-06 ")
 ;;214
 ;;21,"63629-1748-01 ")
 ;;215
 ;;21,"63629-1748-02 ")
 ;;216
 ;;21,"63629-1748-03 ")
 ;;217
 ;;21,"65162-0689-88 ")
 ;;218
 ;;21,"66116-0208-30 ")
 ;;219
 ;;21,"66116-0217-10 ")
 ;;220
 ;;21,"66116-0217-14 ")
 ;;221
 ;;21,"66116-0217-30 ")
 ;;222
 ;;21,"66116-0250-30 ")
 ;;223
 ;;21,"66116-0462-20 ")
 ;;224
 ;;21,"66267-0156-14 ")
 ;;225
 ;;21,"66267-0156-28 ")
 ;;226
 ;;21,"66267-0156-40 ")
 ;;227
 ;;21,"66336-0008-14 ")
 ;;228
 ;;21,"66336-0008-28 ")
 ;;229
 ;;21,"66336-0008-30 ")
 ;;230
 ;;21,"66336-0590-14 ")
 ;;231
 ;;21,"66336-0590-20 ")
 ;;232
 ;;21,"66993-0471-73 ")
 ;;233
 ;;21,"68001-0001-00 ")
 ;;234
 ;;21,"68001-0002-00 ")
 ;;235
 ;;21,"68001-0003-00 ")
 ;;236
 ;;21,"68084-0077-01 ")
 ;;237
 ;;21,"68084-0077-11 ")
 ;;238
 ;;21,"68084-0078-01 ")
 ;;239
 ;;21,"68084-0078-11 ")
 ;;240
 ;;21,"68084-0446-01 ")
 ;;241
 ;;21,"68084-0446-11 ")
 ;;242
 ;;21,"68788-0518-01 ")
 ;;243
 ;;9002226,1797,.01)
 ;;BGP HEDIS ANTI-INFECTIVE NDC
 ;;9002226,1797,.02)
 ;;@
 ;;9002226,1797,.04)
 ;;n
 ;;9002226,1797,.06)
 ;;@
 ;;9002226,1797,.08)
 ;;@
 ;;9002226,1797,.09)
 ;;3150818
 ;;9002226,1797,.11)
 ;;@
 ;;9002226,1797,.12)
 ;;@
 ;;9002226,1797,.13)
 ;;1
 ;;9002226,1797,.14)
 ;;@
 ;;9002226,1797,.15)
 ;;50.67
 ;;9002226,1797,.16)
 ;;@
 ;;9002226,1797,.17)
 ;;@
 ;;9002226,1797,3101)
 ;;@
 ;;9002226.02101,"1797,00093-2130-01 ",.01)
 ;;00093-2130-01
 ;;9002226.02101,"1797,00093-2130-01 ",.02)
 ;;00093-2130-01
 ;;9002226.02101,"1797,00093-2130-10 ",.01)
 ;;00093-2130-10
 ;;9002226.02101,"1797,00093-2130-10 ",.02)
 ;;00093-2130-10
 ;;9002226.02101,"1797,00093-2130-19 ",.01)
 ;;00093-2130-19
 ;;9002226.02101,"1797,00093-2130-19 ",.02)
 ;;00093-2130-19
 ;;9002226.02101,"1797,00093-2130-93 ",.01)
 ;;00093-2130-93
 ;;9002226.02101,"1797,00093-2130-93 ",.02)
 ;;00093-2130-93
 ;;9002226.02101,"1797,00093-2131-01 ",.01)
 ;;00093-2131-01
 ;;9002226.02101,"1797,00093-2131-01 ",.02)
 ;;00093-2131-01
 ;;9002226.02101,"1797,00093-2131-10 ",.01)
 ;;00093-2131-10
 ;;9002226.02101,"1797,00093-2131-10 ",.02)
 ;;00093-2131-10
 ;;9002226.02101,"1797,00093-2131-19 ",.01)
 ;;00093-2131-19
 ;;9002226.02101,"1797,00093-2131-19 ",.02)
 ;;00093-2131-19
 ;;9002226.02101,"1797,00093-2131-93 ",.01)
 ;;00093-2131-93
 ;;9002226.02101,"1797,00093-2131-93 ",.02)
 ;;00093-2131-93
 ;;9002226.02101,"1797,00149-0007-05 ",.01)
 ;;00149-0007-05
 ;;9002226.02101,"1797,00149-0007-05 ",.02)
 ;;00149-0007-05
 ;;9002226.02101,"1797,00185-0122-01 ",.01)
 ;;00185-0122-01
 ;;9002226.02101,"1797,00185-0122-01 ",.02)
 ;;00185-0122-01
 ;;9002226.02101,"1797,00185-0122-10 ",.01)
 ;;00185-0122-10
 ;;9002226.02101,"1797,00185-0122-10 ",.02)
 ;;00185-0122-10
 ;;9002226.02101,"1797,00378-1650-01 ",.01)
 ;;00378-1650-01
 ;;9002226.02101,"1797,00378-1650-01 ",.02)
 ;;00378-1650-01
 ;;9002226.02101,"1797,00378-1650-05 ",.01)
 ;;00378-1650-05
 ;;9002226.02101,"1797,00378-1650-05 ",.02)
 ;;00378-1650-05
 ;;9002226.02101,"1797,00378-1700-01 ",.01)
 ;;00378-1700-01
 ;;9002226.02101,"1797,00378-1700-01 ",.02)
 ;;00378-1700-01
 ;;9002226.02101,"1797,00378-1700-05 ",.01)
 ;;00378-1700-05
 ;;9002226.02101,"1797,00378-1700-05 ",.02)
 ;;00378-1700-05
 ;;9002226.02101,"1797,00378-3422-01 ",.01)
 ;;00378-3422-01
 ;;9002226.02101,"1797,00378-3422-01 ",.02)
 ;;00378-3422-01
 ;;9002226.02101,"1797,00440-1866-20 ",.01)
 ;;00440-1866-20
 ;;9002226.02101,"1797,00440-1866-20 ",.02)
 ;;00440-1866-20
 ;;9002226.02101,"1797,00440-7866-04 ",.01)
 ;;00440-7866-04
 ;;9002226.02101,"1797,00440-7866-04 ",.02)
 ;;00440-7866-04
 ;;9002226.02101,"1797,00440-7866-06 ",.01)
 ;;00440-7866-06
 ;;9002226.02101,"1797,00440-7866-06 ",.02)
 ;;00440-7866-06
 ;;9002226.02101,"1797,00440-7866-14 ",.01)
 ;;00440-7866-14
 ;;9002226.02101,"1797,00440-7866-14 ",.02)
 ;;00440-7866-14
 ;;9002226.02101,"1797,00440-7866-20 ",.01)
 ;;00440-7866-20
 ;;9002226.02101,"1797,00440-7866-20 ",.02)
 ;;00440-7866-20
 ;;9002226.02101,"1797,00440-7866-40 ",.01)
 ;;00440-7866-40
 ;;9002226.02101,"1797,00440-7866-40 ",.02)
 ;;00440-7866-40
 ;;9002226.02101,"1797,00440-7868-02 ",.01)
 ;;00440-7868-02
 ;;9002226.02101,"1797,00440-7868-02 ",.02)
 ;;00440-7868-02
 ;
OTHER ; OTHER ROUTINES
 D ^BGP6T1F2
 D ^BGP6T1F3
 D ^BGP6T1F4
 Q