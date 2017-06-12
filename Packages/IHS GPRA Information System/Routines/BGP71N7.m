BGP71N7 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 30, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"67544-0996-28 ")
 ;;1987
 ;;21,"67544-0996-30 ")
 ;;1988
 ;;21,"67544-0996-40 ")
 ;;1989
 ;;21,"67544-0996-45 ")
 ;;1990
 ;;21,"67544-0996-53 ")
 ;;1991
 ;;21,"67544-0996-59 ")
 ;;1992
 ;;21,"67544-0996-60 ")
 ;;1993
 ;;21,"67544-0996-62 ")
 ;;1994
 ;;21,"67877-0210-01 ")
 ;;1995
 ;;21,"67877-0211-01 ")
 ;;1996
 ;;21,"68047-0721-01 ")
 ;;2051
 ;;21,"68071-0304-30 ")
 ;;1997
 ;;21,"68071-0361-30 ")
 ;;1998
 ;;21,"68071-0414-30 ")
 ;;2035
 ;;21,"68071-0421-30 ")
 ;;2055
 ;;21,"68071-0421-60 ")
 ;;2056
 ;;21,"68071-0421-90 ")
 ;;2057
 ;;21,"68071-0698-10 ")
 ;;2036
 ;;21,"68071-0698-14 ")
 ;;2037
 ;;21,"68071-0698-20 ")
 ;;2038
 ;;21,"68071-0698-30 ")
 ;;2039
 ;;21,"68071-0698-60 ")
 ;;2040
 ;;21,"68071-0703-14 ")
 ;;2041
 ;;21,"68071-0703-30 ")
 ;;2042
 ;;21,"68071-0703-45 ")
 ;;2043
 ;;21,"68071-0703-60 ")
 ;;2044
 ;;21,"68071-0788-30 ")
 ;;2045
 ;;21,"68071-0789-30 ")
 ;;2046
 ;;21,"68071-2007-03 ")
 ;;2047
 ;;21,"68071-2007-06 ")
 ;;2048
 ;;21,"68084-0189-01 ")
 ;;2049
 ;;21,"68084-0189-11 ")
 ;;2050
 ;;21,"68084-0200-01 ")
 ;;2052
 ;;21,"68084-0200-11 ")
 ;;2053
 ;;21,"68084-0225-01 ")
 ;;2054
 ;;21,"68084-0225-11 ")
 ;;2058
 ;;21,"68084-0226-01 ")
 ;;2059
 ;;21,"68084-0226-11 ")
 ;;2060
 ;;21,"68084-0396-01 ")
 ;;2079
 ;;21,"68084-0396-11 ")
 ;;2080
 ;;21,"68084-0396-65 ")
 ;;2081
 ;;21,"68084-0523-11 ")
 ;;2061
 ;;21,"68084-0523-21 ")
 ;;2062
 ;;21,"68084-0790-11 ")
 ;;2084
 ;;21,"68084-0790-21 ")
 ;;2085
 ;;21,"68084-0790-25 ")
 ;;2086
 ;;21,"68084-0790-95 ")
 ;;2087
 ;;21,"68084-0814-11 ")
 ;;2088
 ;;21,"68084-0814-21 ")
 ;;2089
 ;;21,"68084-0818-25 ")
 ;;2090
 ;;21,"68084-0818-95 ")
 ;;2091
 ;;21,"68084-0889-11 ")
 ;;2063
 ;;21,"68084-0889-21 ")
 ;;2064
 ;;21,"68084-0934-32 ")
 ;;2094
 ;;21,"68084-0934-33 ")
 ;;2095
 ;;21,"68084-0989-25 ")
 ;;2096
 ;;21,"68084-0989-95 ")
 ;;2097
 ;;21,"68084-0995-25 ")
 ;;2098
 ;;21,"68084-0995-95 ")
 ;;2099
 ;;21,"68180-0311-01 ")
 ;;2100
 ;;21,"68180-0312-01 ")
 ;;2101
 ;;21,"68180-0313-01 ")
 ;;2102
 ;;21,"68180-0314-06 ")
 ;;2103
 ;;21,"68180-0315-06 ")
 ;;2104
 ;;21,"68180-0316-06 ")
 ;;2105
 ;;21,"68180-0317-06 ")
 ;;2106
 ;;21,"68180-0322-01 ")
 ;;2065
 ;;21,"68180-0323-01 ")
 ;;2066
 ;;21,"68180-0324-01 ")
 ;;2067
 ;;21,"68180-0779-01 ")
 ;;2068
 ;;21,"68180-0780-01 ")
 ;;2069
 ;;21,"68258-2012-09 ")
 ;;2112
 ;;21,"68258-7048-03 ")
 ;;2070
 ;;21,"68258-7049-03 ")
 ;;2071
 ;;21,"68258-7160-03 ")
 ;;2115
 ;;21,"68308-0219-01 ")
 ;;2116
 ;;21,"68308-0220-01 ")
 ;;2117
 ;;21,"68308-0312-10 ")
 ;;2118
 ;;21,"68308-0554-10 ")
 ;;2119
 ;;21,"68387-0520-12 ")
 ;;2120
 ;;21,"68387-0520-30 ")
 ;;2121
 ;;21,"68387-0520-60 ")
 ;;2122
 ;;21,"68387-0520-90 ")
 ;;2123
 ;;21,"68405-0023-26 ")
 ;;2072
 ;;21,"68405-0044-26 ")
 ;;2073
 ;;21,"68405-0053-26 ")
 ;;2126
 ;;21,"68453-0170-10 ")
 ;;2127
 ;;21,"68462-0279-01 ")
 ;;2074
 ;;21,"68462-0279-05 ")
 ;;2075
 ;;21,"68462-0280-01 ")
 ;;2076
 ;;21,"68462-0280-05 ")
 ;;2077
 ;;21,"68462-0382-01 ")
 ;;2078
 ;;21,"68462-0383-01 ")
 ;;2082
 ;;21,"68462-0384-01 ")
 ;;2083
 ;;21,"68645-0230-59 ")
 ;;2135
 ;;21,"68788-0748-03 ")
 ;;2136
 ;;21,"68788-0748-06 ")
 ;;2137
 ;;21,"68788-0748-09 ")
 ;;2138
 ;;21,"68788-2212-03 ")
 ;;2139
 ;;21,"68788-2212-06 ")
 ;;2140
 ;;21,"68788-2212-09 ")
 ;;2141
 ;;21,"68788-2213-03 ")
 ;;2142
 ;;21,"68788-2213-06 ")
 ;;2143
 ;;21,"68788-8923-01 ")
 ;;2092
 ;;21,"68788-8923-02 ")
 ;;2093
 ;;21,"68788-8923-03 ")
 ;;2107
 ;;21,"68788-8923-06 ")
 ;;2108
 ;;21,"68788-8923-09 ")
 ;;2109
 ;;21,"68788-8953-01 ")
 ;;2110
 ;;21,"68788-8953-02 ")
 ;;2111
 ;;21,"68788-8953-03 ")
 ;;2113
 ;;21,"68788-8953-06 ")
 ;;2114
 ;;21,"68788-8953-09 ")
 ;;2124
 ;;21,"68788-8970-02 ")
 ;;2125
 ;;21,"68788-8970-03 ")
 ;;2128
 ;;21,"68788-8970-06 ")
 ;;2129
 ;;21,"68788-8970-09 ")
 ;;2130
 ;;21,"68788-8971-03 ")
 ;;2131
 ;;21,"68788-8971-06 ")
 ;;2132
 ;;21,"68788-8971-09 ")
 ;;2133
 ;;21,"68788-9013-03 ")
 ;;2161
 ;;21,"68788-9013-06 ")
 ;;2162
 ;;21,"68788-9013-09 ")
 ;;2163
 ;;21,"68788-9127-03 ")
 ;;2134
 ;;21,"68788-9127-06 ")
 ;;2144
 ;;21,"68788-9127-09 ")
 ;;2145
 ;;21,"68788-9824-01 ")
 ;;2146
 ;;21,"68788-9824-02 ")
 ;;2147
 ;;21,"68788-9824-03 ")
 ;;2148
 ;;21,"68788-9824-06 ")
 ;;2149
 ;;21,"68788-9824-09 ")
 ;;2150
 ;;21,"68788-9905-03 ")
 ;;2151
 ;;21,"68788-9905-06 ")
 ;;2152
 ;;21,"68788-9905-09 ")
 ;;2153
 ;;21,"69158-0000-00 ")
 ;;2154
 ;;21,"69158-0001-00 ")
 ;;2155
 ;;21,"69158-0002-00 ")
 ;;2156
 ;;21,"69315-0133-01 ")
 ;;2157
 ;;21,"69315-0133-10 ")
 ;;2158
 ;;21,"69315-0134-01 ")
 ;;2159
 ;;21,"69315-0134-10 ")
 ;;2160
 ;;21,"69315-0135-01 ")
 ;;2164
 ;;21,"69315-0135-10 ")
 ;;2165
 ;;21,"69499-0302-30 ")
 ;;2166
 ;;21,"69499-0302-40 ")
 ;;2167
 ;;21,"69874-0422-10 ")
 ;;2168
 ;;21,"70362-0721-01 ")
 ;;2169
 ;;21,"70362-0722-01 ")
 ;;2170
 ;;21,"75826-0112-10 ")
 ;;2171
 ;;21,"75826-0118-10 ")
 ;;2172
 ;;21,"76478-0501-20 ")
 ;;2173
 ;;21,"76478-0501-50 ")
 ;;2174
 ;;9002226,1799,.01)
 ;;BGP HEDIS CENTRAL NERVOUS NDC
 ;;9002226,1799,.02)
 ;;@
 ;;9002226,1799,.04)
 ;;n
 ;;9002226,1799,.06)
 ;;@
 ;;9002226,1799,.08)
 ;;@
 ;;9002226,1799,.09)
 ;;3160812
 ;;9002226,1799,.11)
 ;;@
 ;;9002226,1799,.12)
 ;;@
 ;;9002226,1799,.13)
 ;;1
 ;;9002226,1799,.14)
 ;;@
 ;;9002226,1799,.15)
 ;;50.67
 ;;9002226,1799,.16)
 ;;@
 ;;9002226,1799,.17)
 ;;@
 ;;9002226,1799,.22)
 ;;1
 ;;9002226,1799,3101)
 ;;@
 ;;9002226.02101,"1799,00024-5401-31 ",.01)
 ;;00024-5401-31
 ;;9002226.02101,"1799,00024-5401-31 ",.02)
 ;;00024-5401-31
 ;;9002226.02101,"1799,00024-5421-31 ",.01)
 ;;00024-5421-31
 ;;9002226.02101,"1799,00024-5421-31 ",.02)
 ;;00024-5421-31
 ;;9002226.02101,"1799,00024-5421-50 ",.01)
 ;;00024-5421-50
 ;;9002226.02101,"1799,00024-5421-50 ",.02)
 ;;00024-5421-50
 ;;9002226.02101,"1799,00024-5501-10 ",.01)
 ;;00024-5501-10
 ;;9002226.02101,"1799,00024-5501-10 ",.02)
 ;;00024-5501-10
 ;;9002226.02101,"1799,00024-5501-31 ",.01)
 ;;00024-5501-31
 ;;9002226.02101,"1799,00024-5501-31 ",.02)
 ;;00024-5501-31
 ;;9002226.02101,"1799,00024-5521-10 ",.01)
 ;;00024-5521-10
 ;;9002226.02101,"1799,00024-5521-10 ",.02)
 ;;00024-5521-10
 ;;9002226.02101,"1799,00024-5521-31 ",.01)
 ;;00024-5521-31
 ;;9002226.02101,"1799,00024-5521-31 ",.02)
 ;;00024-5521-31
 ;;9002226.02101,"1799,00024-5521-50 ",.01)
 ;;00024-5521-50
 ;;9002226.02101,"1799,00024-5521-50 ",.02)
 ;;00024-5521-50
 ;;9002226.02101,"1799,00037-0110-16 ",.01)
 ;;00037-0110-16
 ;;9002226.02101,"1799,00037-0110-16 ",.02)
 ;;00037-0110-16
 ;;9002226.02101,"1799,00037-0113-60 ",.01)
 ;;00037-0113-60
 ;;9002226.02101,"1799,00037-0113-60 ",.02)
 ;;00037-0113-60
 ;;9002226.02101,"1799,00037-0114-60 ",.01)
 ;;00037-0114-60
 ;;9002226.02101,"1799,00037-0114-60 ",.02)
 ;;00037-0114-60
 ;;9002226.02101,"1799,00037-6010-30 ",.01)
 ;;00037-6010-30
 ;;9002226.02101,"1799,00037-6010-30 ",.02)
 ;;00037-6010-30
 ;;9002226.02101,"1799,00037-6050-30 ",.01)
 ;;00037-6050-30
 ;;9002226.02101,"1799,00037-6050-30 ",.02)
 ;;00037-6050-30
 ;;9002226.02101,"1799,00054-0084-25 ",.01)
 ;;00054-0084-25
 ;;9002226.02101,"1799,00054-0084-25 ",.02)
 ;;00054-0084-25
 ;;9002226.02101,"1799,00054-0085-25 ",.01)
 ;;00054-0085-25
 ;;9002226.02101,"1799,00054-0085-25 ",.02)
 ;;00054-0085-25
 ;;9002226.02101,"1799,00054-0086-25 ",.01)
 ;;00054-0086-25
 ;;9002226.02101,"1799,00054-0086-25 ",.02)
 ;;00054-0086-25
 ;;9002226.02101,"1799,00054-0086-29 ",.01)
 ;;00054-0086-29
 ;;9002226.02101,"1799,00054-0086-29 ",.02)
 ;;00054-0086-29
 ;;9002226.02101,"1799,00054-0087-25 ",.01)
 ;;00054-0087-25
 ;;9002226.02101,"1799,00054-0087-25 ",.02)
 ;;00054-0087-25
 ;;9002226.02101,"1799,00054-0087-29 ",.01)
 ;;00054-0087-29
 ;;9002226.02101,"1799,00054-0087-29 ",.02)
 ;;00054-0087-29
 ;;9002226.02101,"1799,00054-0273-13 ",.01)
 ;;00054-0273-13
 ;;9002226.02101,"1799,00054-0273-13 ",.02)
 ;;00054-0273-13
 ;;9002226.02101,"1799,00054-0274-13 ",.01)
 ;;00054-0274-13
 ;;9002226.02101,"1799,00054-0274-13 ",.02)
 ;;00054-0274-13
 ;;9002226.02101,"1799,00054-0275-13 ",.01)
 ;;00054-0275-13
 ;;9002226.02101,"1799,00054-0275-13 ",.02)
 ;;00054-0275-13
 ;;9002226.02101,"1799,00054-0276-13 ",.01)
 ;;00054-0276-13
 ;;9002226.02101,"1799,00054-0276-13 ",.02)
 ;;00054-0276-13
 ;;9002226.02101,"1799,00054-0290-13 ",.01)
 ;;00054-0290-13
 ;;9002226.02101,"1799,00054-0290-13 ",.02)
 ;;00054-0290-13
 ;;9002226.02101,"1799,00054-0291-25 ",.01)
 ;;00054-0291-25
 ;;9002226.02101,"1799,00054-0291-25 ",.02)
 ;;00054-0291-25
 ;;9002226.02101,"1799,00054-0292-25 ",.01)
 ;;00054-0292-25
 ;;9002226.02101,"1799,00054-0292-25 ",.02)
 ;;00054-0292-25
 ;;9002226.02101,"1799,00093-0073-01 ",.01)
 ;;00093-0073-01
 ;;9002226.02101,"1799,00093-0073-01 ",.02)
 ;;00093-0073-01
 ;;9002226.02101,"1799,00093-0074-01 ",.01)
 ;;00093-0074-01
 ;;9002226.02101,"1799,00093-0074-01 ",.02)
 ;;00093-0074-01
 ;;9002226.02101,"1799,00093-5268-01 ",.01)
 ;;00093-5268-01
 ;;9002226.02101,"1799,00093-5268-01 ",.02)
 ;;00093-5268-01
 ;;9002226.02101,"1799,00093-5269-01 ",.01)
 ;;00093-5269-01
 ;;9002226.02101,"1799,00093-5269-01 ",.02)
 ;;00093-5269-01
 ;;9002226.02101,"1799,00093-5537-56 ",.01)
 ;;00093-5537-56
 ;;9002226.02101,"1799,00093-5537-56 ",.02)
 ;;00093-5537-56
 ;;9002226.02101,"1799,00093-5538-01 ",.01)
 ;;00093-5538-01
 ;;9002226.02101,"1799,00093-5538-01 ",.02)
 ;;00093-5538-01
 ;;9002226.02101,"1799,00093-5539-01 ",.01)
 ;;00093-5539-01
 ;;9002226.02101,"1799,00093-5539-01 ",.02)
 ;;00093-5539-01
 ;;9002226.02101,"1799,00093-9612-12 ",.01)
 ;;00093-9612-12
 ;;9002226.02101,"1799,00093-9612-12 ",.02)
 ;;00093-9612-12
 ;;9002226.02101,"1799,00095-0950-05 ",.01)
 ;;00095-0950-05
 ;;9002226.02101,"1799,00095-0950-05 ",.02)
 ;;00095-0950-05
 ;;9002226.02101,"1799,00095-3000-01 ",.01)
 ;;00095-3000-01
 ;;9002226.02101,"1799,00095-3000-01 ",.02)
 ;;00095-3000-01
 ;;9002226.02101,"1799,00143-1115-01 ",.01)
 ;;00143-1115-01
 ;;9002226.02101,"1799,00143-1115-01 ",.02)
 ;;00143-1115-01
 ;;9002226.02101,"1799,00143-1115-05 ",.01)
 ;;00143-1115-05
 ;;9002226.02101,"1799,00143-1115-05 ",.02)
 ;;00143-1115-05
 ;;9002226.02101,"1799,00143-1445-01 ",.01)
 ;;00143-1445-01
 ;;9002226.02101,"1799,00143-1445-01 ",.02)
 ;;00143-1445-01
 ;;9002226.02101,"1799,00143-1445-05 ",.01)
 ;;00143-1445-05
 ;;9002226.02101,"1799,00143-1445-05 ",.02)
 ;;00143-1445-05
 ;;9002226.02101,"1799,00143-1445-10 ",.01)
 ;;00143-1445-10
 ;;9002226.02101,"1799,00143-1445-10 ",.02)
 ;;00143-1445-10
 ;;9002226.02101,"1799,00143-1450-01 ",.01)
 ;;00143-1450-01
 ;;9002226.02101,"1799,00143-1450-01 ",.02)
 ;;00143-1450-01
 ;;9002226.02101,"1799,00143-1450-05 ",.01)
 ;;00143-1450-05
 ;;9002226.02101,"1799,00143-1450-05 ",.02)
 ;;00143-1450-05
 ;;9002226.02101,"1799,00143-1450-10 ",.01)
 ;;00143-1450-10
 ;;9002226.02101,"1799,00143-1450-10 ",.02)
 ;;00143-1450-10
 ;;9002226.02101,"1799,00143-1455-01 ",.01)
 ;;00143-1455-01
 ;;9002226.02101,"1799,00143-1455-01 ",.02)
 ;;00143-1455-01
 ;;9002226.02101,"1799,00143-1455-05 ",.01)
 ;;00143-1455-05
 ;;9002226.02101,"1799,00143-1455-05 ",.02)
 ;;00143-1455-05
 ;;9002226.02101,"1799,00143-1455-10 ",.01)
 ;;00143-1455-10
 ;;9002226.02101,"1799,00143-1455-10 ",.02)
 ;;00143-1455-10
 ;;9002226.02101,"1799,00143-1458-01 ",.01)
 ;;00143-1458-01