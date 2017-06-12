BGP47J6 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 16, 2014;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"55289-0100-01 ")
 ;;1953
 ;;21,"55289-0100-10 ")
 ;;1954
 ;;21,"55289-0100-15 ")
 ;;1955
 ;;21,"55289-0100-20 ")
 ;;1956
 ;;21,"55289-0100-30 ")
 ;;1957
 ;;21,"55289-0100-40 ")
 ;;1958
 ;;21,"55289-0138-12 ")
 ;;1959
 ;;21,"55289-0138-17 ")
 ;;1960
 ;;21,"55289-0138-20 ")
 ;;1961
 ;;21,"55289-0138-25 ")
 ;;1962
 ;;21,"55289-0138-30 ")
 ;;1963
 ;;21,"55289-0139-01 ")
 ;;1964
 ;;21,"55289-0139-06 ")
 ;;1965
 ;;21,"55289-0139-10 ")
 ;;1966
 ;;21,"55289-0139-12 ")
 ;;1967
 ;;21,"55289-0139-20 ")
 ;;1968
 ;;21,"55289-0139-30 ")
 ;;1969
 ;;21,"55289-0139-40 ")
 ;;1970
 ;;21,"55289-0139-60 ")
 ;;1971
 ;;21,"55289-0139-97 ")
 ;;1972
 ;;21,"55289-0151-04 ")
 ;;1973
 ;;21,"55289-0195-10 ")
 ;;1974
 ;;21,"55289-0226-10 ")
 ;;1975
 ;;21,"55289-0226-15 ")
 ;;1976
 ;;21,"55289-0226-30 ")
 ;;1977
 ;;21,"55289-0278-20 ")
 ;;1978
 ;;21,"55289-0278-60 ")
 ;;1979
 ;;21,"55289-0284-20 ")
 ;;1980
 ;;21,"55289-0284-30 ")
 ;;1981
 ;;21,"55289-0284-60 ")
 ;;1982
 ;;21,"55289-0336-30 ")
 ;;1983
 ;;21,"55289-0354-10 ")
 ;;1984
 ;;21,"55289-0414-04 ")
 ;;1985
 ;;21,"55289-0414-06 ")
 ;;1986
 ;;21,"55289-0415-02 ")
 ;;1987
 ;;21,"55289-0415-04 ")
 ;;1988
 ;;21,"55289-0415-06 ")
 ;;1989
 ;;21,"55289-0415-79 ")
 ;;1990
 ;;21,"55289-0429-20 ")
 ;;1991
 ;;21,"55289-0429-60 ")
 ;;1992
 ;;21,"55289-0430-20 ")
 ;;1993
 ;;21,"55289-0442-04 ")
 ;;1994
 ;;21,"55289-0464-02 ")
 ;;1995
 ;;21,"55289-0464-05 ")
 ;;1996
 ;;21,"55289-0464-10 ")
 ;;1997
 ;;21,"55289-0464-12 ")
 ;;1998
 ;;21,"55289-0464-15 ")
 ;;1999
 ;;21,"55289-0464-20 ")
 ;;2000
 ;;21,"55289-0464-25 ")
 ;;2001
 ;;21,"55289-0464-30 ")
 ;;2002
 ;;21,"55289-0464-60 ")
 ;;2003
 ;;21,"55289-0464-79 ")
 ;;2004
 ;;21,"55289-0478-20 ")
 ;;2005
 ;;21,"55289-0490-20 ")
 ;;2006
 ;;21,"55289-0531-04 ")
 ;;2007
 ;;21,"55289-0575-20 ")
 ;;2008
 ;;21,"55289-0639-06 ")
 ;;2009
 ;;21,"55289-0762-30 ")
 ;;2010
 ;;21,"55289-0807-20 ")
 ;;2011
 ;;21,"55289-0912-01 ")
 ;;2012
 ;;21,"55289-0912-10 ")
 ;;2013
 ;;21,"55289-0912-30 ")
 ;;2014
 ;;21,"55289-0912-60 ")
 ;;2015
 ;;21,"55289-0928-02 ")
 ;;2016
 ;;21,"55289-0928-04 ")
 ;;2017
 ;;21,"55289-0928-06 ")
 ;;2018
 ;;21,"55289-0928-79 ")
 ;;2019
 ;;21,"55289-0940-02 ")
 ;;2020
 ;;21,"55289-0940-06 ")
 ;;2021
 ;;21,"55289-0948-02 ")
 ;;2022
 ;;21,"55289-0951-08 ")
 ;;2023
 ;;21,"55494-0100-10 ")
 ;;2024
 ;;21,"55499-1035-01 ")
 ;;2025
 ;;21,"55654-0028-01 ")
 ;;2026
 ;;21,"55700-0033-30 ")
 ;;2027
 ;;21,"55700-0042-15 ")
 ;;2028
 ;;21,"55700-0042-20 ")
 ;;2029
 ;;21,"55700-0042-30 ")
 ;;2030
 ;;21,"55700-0042-60 ")
 ;;2031
 ;;21,"55887-0232-20 ")
 ;;2032
 ;;21,"55887-0247-04 ")
 ;;2033
 ;;21,"55887-0268-15 ")
 ;;2034
 ;;21,"55887-0268-20 ")
 ;;2035
 ;;21,"55887-0268-30 ")
 ;;2036
 ;;21,"55887-0268-60 ")
 ;;2037
 ;;21,"55887-0268-90 ")
 ;;2038
 ;;21,"55887-0354-20 ")
 ;;2039
 ;;21,"55887-0387-04 ")
 ;;2040
 ;;21,"55887-0422-30 ")
 ;;2041
 ;;21,"55887-0531-02 ")
 ;;2042
 ;;21,"55887-0531-06 ")
 ;;2043
 ;;21,"55887-0531-12 ")
 ;;2044
 ;;21,"55887-0561-12 ")
 ;;2045
 ;;21,"55887-0621-03 ")
 ;;2046
 ;;21,"55887-0621-12 ")
 ;;2047
 ;;21,"55887-0675-04 ")
 ;;2048
 ;;21,"55887-0766-04 ")
 ;;2049
 ;;21,"55887-0885-20 ")
 ;;2050
 ;;21,"55887-0885-28 ")
 ;;2051
 ;;21,"55887-0885-30 ")
 ;;2052
 ;;21,"55887-0936-04 ")
 ;;2053
 ;;21,"55887-0936-10 ")
 ;;2054
 ;;21,"55887-0936-12 ")
 ;;2055
 ;;21,"55887-0936-15 ")
 ;;2056
 ;;21,"55887-0936-20 ")
 ;;2057
 ;;21,"55887-0936-25 ")
 ;;2058
 ;;21,"55887-0936-28 ")
 ;;2059
 ;;21,"55887-0936-30 ")
 ;;2060
 ;;21,"55887-0936-60 ")
 ;;2061
 ;;21,"55887-0936-82 ")
 ;;2062
 ;;21,"55887-0936-90 ")
 ;;2063
 ;;21,"55887-0942-15 ")
 ;;2064
 ;;21,"55887-0942-30 ")
 ;;2065
 ;;21,"55887-0942-60 ")
 ;;2066
 ;;21,"55887-0985-10 ")
 ;;2067
 ;;21,"55887-0985-15 ")
 ;;2068
 ;;21,"55887-0985-20 ")
 ;;2069
 ;;21,"55887-0985-30 ")
 ;;2070
 ;;21,"56062-0379-26 ")
 ;;2071
 ;;21,"56062-0462-62 ")
 ;;2072
 ;;21,"56062-0479-62 ")
 ;;2073
 ;;21,"56062-0479-67 ")
 ;;2074
 ;;21,"56062-0479-78 ")
 ;;2075
 ;;21,"57664-0107-88 ")
 ;;2076
 ;;21,"57664-0108-18 ")
 ;;2077
 ;;21,"57664-0108-88 ")
 ;;2078
 ;;21,"57664-0109-88 ")
 ;;2079
 ;;21,"57664-0146-31 ")
 ;;2080
 ;;21,"57664-0146-34 ")
 ;;2081
 ;;21,"57664-0185-31 ")
 ;;2082
 ;;21,"57664-0185-34 ")
 ;;2083
 ;;21,"57866-0012-02 ")
 ;;2084
 ;;21,"57866-0176-01 ")
 ;;2085
 ;;21,"57866-0176-02 ")
 ;;2086
 ;;21,"57866-0190-01 ")
 ;;2087
 ;;21,"57866-0190-02 ")
 ;;2088
 ;;21,"57866-0215-01 ")
 ;;2089
 ;;21,"57866-0239-01 ")
 ;;2090
 ;;21,"57866-0323-01 ")
 ;;2091
 ;;21,"57866-0323-02 ")
 ;;2092
 ;;21,"57866-0323-04 ")
 ;;2093
 ;;21,"57866-0323-05 ")
 ;;2094
 ;;21,"57866-0323-06 ")
 ;;2095
 ;;21,"57866-0323-08 ")
 ;;2096
 ;;21,"57866-3013-02 ")
 ;;2097
 ;;21,"57866-3371-01 ")
 ;;2098
 ;;21,"57866-3371-02 ")
 ;;2099
 ;;21,"57866-3371-03 ")
 ;;2100
 ;;21,"57866-3371-04 ")
 ;;2101
 ;;21,"57866-3372-01 ")
 ;;2102
 ;;21,"57866-3372-02 ")
 ;;2103
 ;;21,"57866-3372-03 ")
 ;;2104
 ;;21,"57866-3372-04 ")
 ;;2105
 ;;21,"57866-3874-01 ")
 ;;2106
 ;;21,"57866-3874-03 ")
 ;;2107
 ;;21,"57866-3874-04 ")
 ;;2108
 ;;21,"57866-3874-05 ")
 ;;2109
 ;;21,"57866-3874-06 ")
 ;;2110
 ;;21,"57866-3874-07 ")
 ;;2111
 ;;21,"57866-3874-09 ")
 ;;2112
 ;;21,"57866-3875-01 ")
 ;;2113
 ;;21,"57866-3875-02 ")
 ;;2114
 ;;21,"57866-3875-04 ")
 ;;2115
 ;;21,"57866-3876-02 ")
 ;;2116
 ;;21,"57866-3876-03 ")
 ;;2117
 ;;21,"57866-3876-04 ")
 ;;2118
 ;;21,"57866-3893-01 ")
 ;;2119
 ;;21,"57866-3893-02 ")
 ;;2120
 ;;21,"57866-3893-03 ")
 ;;2121
 ;;21,"57866-3894-01 ")
 ;;2122
 ;;21,"57866-3894-02 ")
 ;;2123
 ;;21,"57866-3894-03 ")
 ;;2124
 ;;21,"57866-4379-01 ")
 ;;2125
 ;;21,"57866-4379-02 ")
 ;;2126
 ;;21,"57866-4379-03 ")
 ;;2127
 ;;21,"57866-4379-04 ")
 ;;2128
 ;;21,"57866-4379-06 ")
 ;;2129
 ;;21,"57866-4379-07 ")
 ;;2130
 ;;21,"57866-4379-08 ")
 ;;2131
 ;;21,"57866-4440-01 ")
 ;;2132
 ;;21,"57866-4440-02 ")
 ;;2133
 ;;21,"57866-4440-03 ")
 ;;2134
 ;;21,"58016-0018-00 ")
 ;;2135
 ;;21,"58016-0018-30 ")
 ;;2136
 ;;21,"58016-0018-60 ")
 ;;2137
 ;;21,"58016-0018-90 ")
 ;;2138
 ;;21,"58016-0041-00 ")
 ;;2139
 ;;21,"58016-0041-30 ")
 ;;2140
 ;;21,"58016-0041-60 ")
 ;;2141
 ;;21,"58016-0041-90 ")
 ;;2142
 ;;21,"58016-0259-00 ")
 ;;2143
 ;;21,"58016-0259-10 ")
 ;;2144
 ;;21,"58016-0259-20 ")
 ;;2145
 ;;21,"58016-0259-30 ")
 ;;2146
 ;;21,"58016-0259-50 ")
 ;;2147
 ;;21,"58016-0259-60 ")
 ;;2148
 ;;21,"58016-0283-00 ")
 ;;2149
 ;;21,"58016-0283-02 ")
 ;;2150
 ;;21,"58016-0283-30 ")
 ;;2151
 ;;21,"58016-0283-60 ")
 ;;2152
 ;;21,"58016-0283-90 ")
 ;;2153
 ;;21,"58016-0390-01 ")
 ;;2154
 ;;21,"58016-0405-00 ")
 ;;2155
 ;;21,"58016-0405-06 ")
 ;;2156
 ;;21,"58016-0405-15 ")
 ;;2157
 ;;21,"58016-0405-20 ")
 ;;2158
 ;;21,"58016-0405-30 ")
 ;;2159
 ;;21,"58016-0406-00 ")
 ;;2160
 ;;21,"58016-0406-09 ")
 ;;2161
 ;;21,"58016-0406-12 ")
 ;;2162
 ;;21,"58016-0406-15 ")
 ;;2163
 ;;21,"58016-0406-20 ")
 ;;2164
 ;;21,"58016-0406-30 ")
 ;;2165
 ;;21,"58016-0406-40 ")
 ;;2166
 ;;21,"58016-0406-60 ")
 ;;2167
 ;;21,"58016-0407-01 ")
 ;;2168
 ;;21,"58016-0409-00 ")
 ;;2169
 ;;21,"58016-0409-10 ")
 ;;2170
 ;;21,"58016-0409-12 ")
 ;;2171
 ;;21,"58016-0409-15 ")
 ;;2172
 ;;21,"58016-0409-20 ")
 ;;2173
 ;;21,"58016-0409-21 ")
 ;;2174
 ;;21,"58016-0409-24 ")
 ;;2175
 ;;21,"58016-0409-30 ")
 ;;2176
 ;;21,"58016-0409-60 ")
 ;;2177
 ;;21,"58016-0409-90 ")
 ;;2178
 ;;21,"58016-0413-10 ")
 ;;2179
 ;;21,"58016-0413-15 ")
 ;;2180
 ;;21,"58016-0413-20 ")
 ;;2181
 ;;21,"58016-0413-30 ")
 ;;2182
 ;;21,"58016-0424-00 ")
 ;;2183
 ;;21,"58016-0424-02 ")
 ;;2184
 ;;21,"58016-0424-03 ")
 ;;2185
 ;;21,"58016-0424-10 ")
 ;;2186
 ;;21,"58016-0424-12 ")
 ;;2187
 ;;21,"58016-0424-15 ")
 ;;2188
 ;;21,"58016-0424-20 ")
 ;;2189
 ;;21,"58016-0424-30 ")
 ;;2190
 ;;21,"58016-0424-50 ")
 ;;2191
 ;;21,"58016-0424-60 ")
 ;;2192
 ;;21,"58016-0424-73 ")
 ;;2193
 ;;21,"58016-0424-89 ")
 ;;2194
 ;;21,"58016-0424-90 ")
 ;;2195
 ;;21,"58016-0452-00 ")
 ;;2196
 ;;21,"58016-0452-20 ")
 ;;2197
 ;;21,"58016-0452-30 ")
 ;;2198
 ;;21,"58016-0464-10 ")
 ;;2199
 ;;21,"58016-0464-15 ")
 ;;2200
 ;;21,"58016-0464-20 ")
 ;;2201
 ;;21,"58016-0464-30 ")
 ;;2202
 ;;21,"58016-0472-24 ")
 ;;2203
 ;;21,"58016-0472-36 ")
 ;;2204
 ;;21,"58016-0642-20 ")
 ;;2205
 ;;21,"58016-0659-16 ")
 ;;2206
 ;;21,"58016-0749-20 ")
 ;;2207
 ;;21,"58016-0798-00 ")
 ;;2208
 ;;21,"58016-0798-30 ")
 ;;2209
 ;;21,"58016-0798-60 ")
 ;;2210
 ;;21,"58016-4014-01 ")
 ;;2211
 ;;21,"58016-4062-01 ")
 ;;2212
 ;;21,"58016-4845-01 ")
 ;;2213
 ;;21,"58016-4852-01 ")
 ;;2214
 ;;21,"58016-5009-01 ")
 ;;2215
 ;;21,"58016-9299-01 ")
 ;;2216
 ;;21,"58118-0011-06 ")
 ;;2217
 ;;21,"58118-0011-08 ")
 ;;2218
 ;;21,"58118-0012-06 ")
 ;;2219
 ;;21,"58118-0012-08 ")
 ;;2220
 ;;21,"58118-0034-01 ")
 ;;2221
 ;;21,"58118-0613-03 ")
 ;;2222
 ;;21,"58118-0613-06 ")
 ;;2223
 ;;21,"58118-0615-03 ")
 ;;2224
 ;;21,"58118-0615-06 ")
 ;;2225
 ;;21,"58118-5307-01 ")
 ;;2226
 ;;21,"58118-5307-02 ")
 ;;2227
 ;;21,"58118-5307-03 ")
 ;;2228
 ;;21,"58118-5307-05 ")
 ;;2229
 ;;21,"58118-5307-09 ")
 ;;2230
 ;;21,"58118-9914-01 ")
 ;;2231
 ;;21,"58118-9915-01 ")
 ;;2232
 ;;21,"58177-0019-04 ")
 ;;2233
 ;;21,"58177-0020-04 ")
 ;;2234
 ;;21,"58177-0027-04 ")
 ;;2235
 ;;21,"58177-0076-04 ")
 ;;2236
 ;;21,"58177-0077-04 ")
 ;;2237
 ;;21,"58177-0917-07 ")
 ;;2238
 ;;21,"58177-0920-07 ")
 ;;2239
 ;;21,"58177-0924-07 ")
 ;;2240
 ;;21,"58238-0215-04 ")
 ;;2241
 ;;21,"58407-0012-01 ")
 ;;2242
 ;;21,"58407-0755-16 ")
 ;;2243
 ;;21,"58407-0920-16 ")
 ;;2244
 ;;21,"58552-0305-01 ")
 ;;2245
 ;;21,"58605-0150-01 ")
 ;;2246
 ;;21,"58605-0152-01 ")
 ;;2247
 ;;21,"58605-0153-01 ")
 ;;2248
 ;;21,"58605-0274-01 ")
 ;;2249
 ;;21,"58605-0277-01 ")
 ;;2250
 ;;21,"58605-0402-01 ")
 ;;2251
 ;;21,"58605-0403-01 ")
 ;;2252
 ;;21,"58605-0436-01 ")
 ;;2253
 ;;21,"58605-0437-01 ")
 ;;2254
 ;;21,"58605-0438-01 ")
 ;;2255
 ;;21,"58605-0440-01 ")
 ;;2256
 ;;21,"58605-0502-01 ")
 ;;2257
 ;;21,"58864-0045-20 ")
 ;;2258
 ;;21,"58864-0045-30 ")
 ;;2259
 ;;21,"58864-0045-42 ")
 ;;2260
 ;;21,"58864-0045-60 ")
 ;;2261
 ;;21,"58864-0055-06 ")
 ;;2262
 ;;21,"58864-0055-60 ")
 ;;2263
 ;;21,"58864-0056-30 ")
 ;;2264
 ;;21,"58864-0056-60 ")
 ;;2265
 ;;21,"58864-0094-30 ")
 ;;2266
 ;;21,"58864-0163-01 ")
 ;;2267
 ;;21,"58864-0163-30 ")
 ;;2268
 ;;21,"58864-0163-60 ")
 ;;2269
 ;;21,"58864-0671-10 ")
 ;;2270
 ;;21,"58864-0671-42 ")
 ;;2271
 ;;21,"58864-0758-30 ")
 ;;2272
 ;;21,"58864-0761-10 ")
 ;;2273
 ;;21,"58864-0761-25 ")
 ;;2274
 ;;21,"58864-0761-30 ")
 ;;2275
 ;;21,"58864-0761-42 ")
 ;;2276
 ;;21,"58869-0401-01 ")
 ;;2277
 ;;21,"58869-0406-01 ")
 ;;2278
 ;;21,"59196-0003-01 ")
 ;;2279
 ;;21,"59196-0004-01 ")
 ;;2280
 ;;21,"59196-0006-01 ")
 ;;2281
 ;;21,"59196-0033-01 ")
 ;;2282
 ;;21,"59196-0114-01 ")
 ;;2283
 ;;21,"59196-0116-01 ")
 ;;2284
 ;;21,"59196-0117-01 ")
 ;;2285
 ;;21,"59310-0112-10 ")
 ;;2286
 ;;21,"59702-0040-04 ")
 ;;2287
 ;;21,"59702-0111-01 ")
 ;;2288
 ;;21,"59702-0112-01 ")
 ;;2289
 ;;21,"59702-0141-04 ")
 ;;2290
 ;;21,"59702-0152-01 ")
 ;;2291
 ;;21,"59741-0134-30 ")
 ;;2292
 ;;21,"59741-0135-04 ")
 ;;2293
 ;;21,"59741-0135-16 ")
 ;;2294
 ;;21,"59741-0135-20 ")
 ;;2295
 ;;21,"59741-0136-30 ")
 ;;2296
 ;;21,"59743-0053-01 ")
 ;;2297
 ;;21,"59743-0053-05 ")
 ;;2298
 ;;21,"59743-0060-01 ")
 ;;2299
 ;;21,"59743-0061-01 ")
 ;;2300
 ;;21,"59879-0504-01 ")
 ;;2301
 ;;21,"60258-0081-16 ")
 ;;2302
 ;;21,"60258-0230-16 ")
 ;;2303
 ;;21,"60258-0231-16 ")
 ;;2304
 ;;21,"60258-0233-01 ")
 ;;2305
 ;;21,"60258-0235-16 ")
 ;;2306
 ;;21,"60258-0236-30 ")
 ;;2307
 ;;21,"60258-0251-16 ")
 ;;2308
 ;;21,"60258-0278-16 ")
 ;;2309
 ;;21,"60258-0295-01 ")
 ;;2310
 ;;21,"60258-0315-16 ")
 ;;2311
 ;;21,"60258-0316-16 ")
 ;;2312
 ;;21,"60258-0329-01 ")
 ;;2313
 ;;21,"60258-0351-01 ")
 ;;2314
 ;;21,"60258-0352-01 ")
 ;;2315
 ;;21,"60258-0404-16 ")
 ;;2316
 ;;21,"60258-0405-16 ")
 ;;2317
 ;;21,"60258-0407-16 ")
 ;;2318
 ;;21,"60258-0416-30 ")
 ;;2319
 ;;21,"60258-0420-16 ")
 ;;2320
 ;;21,"60258-0421-16 ")
 ;;2321
 ;;21,"60258-0422-16 ")
 ;;2322
 ;;21,"60258-0424-16 ")
 ;;2323
 ;;21,"60258-0427-30 ")
 ;;2324
 ;;21,"60258-0430-16 ")
 ;;2325
 ;;21,"60258-0432-16 ")
 ;;2326
 ;;21,"60258-0433-30 ")
 ;;2327
 ;;21,"60258-0434-16 ")
 ;;2328
 ;;21,"60258-0435-30 ")
 ;;2329
 ;;21,"60258-0436-16 ")
 ;;2330
 ;;21,"60258-0437-30 ")
 ;;2331
 ;;21,"60258-0438-16 ")
 ;;2332
 ;;21,"60258-0443-30 ")
 ;;2333
 ;;21,"60258-0445-30 ")
 ;;2334
 ;;21,"60258-0470-01 ")
 ;;2335
 ;;21,"60258-0471-01 ")
 ;;2336
 ;;21,"60258-0683-16 ")
 ;;2337
 ;;21,"60258-0850-01 ")
 ;;2338