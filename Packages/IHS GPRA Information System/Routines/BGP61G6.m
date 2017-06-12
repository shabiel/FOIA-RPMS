BGP61G6 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"62037-0597-90 ")
 ;;1821
 ;;21,"62037-0598-05 ")
 ;;1822
 ;;21,"62037-0598-90 ")
 ;;1823
 ;;21,"62037-0599-05 ")
 ;;1824
 ;;21,"62037-0599-90 ")
 ;;1825
 ;;21,"62037-0600-05 ")
 ;;1826
 ;;21,"62037-0600-90 ")
 ;;1827
 ;;21,"62037-0691-30 ")
 ;;1828
 ;;21,"62037-0691-90 ")
 ;;1829
 ;;21,"62037-0692-30 ")
 ;;1830
 ;;21,"62037-0692-90 ")
 ;;1831
 ;;21,"62037-0693-30 ")
 ;;1832
 ;;21,"62037-0693-90 ")
 ;;1833
 ;;21,"62037-0694-30 ")
 ;;1834
 ;;21,"62037-0694-90 ")
 ;;1835
 ;;21,"62037-0695-30 ")
 ;;1836
 ;;21,"62037-0695-90 ")
 ;;1837
 ;;21,"62037-0696-05 ")
 ;;1838
 ;;21,"62037-0696-30 ")
 ;;1839
 ;;21,"62037-0696-90 ")
 ;;1840
 ;;21,"62037-0697-05 ")
 ;;1841
 ;;21,"62037-0697-30 ")
 ;;1842
 ;;21,"62037-0697-90 ")
 ;;1843
 ;;21,"62037-0698-05 ")
 ;;1844
 ;;21,"62037-0698-30 ")
 ;;1845
 ;;21,"62037-0698-90 ")
 ;;1846
 ;;21,"62037-0699-05 ")
 ;;1847
 ;;21,"62037-0699-30 ")
 ;;1848
 ;;21,"62037-0699-90 ")
 ;;1849
 ;;21,"62037-0700-05 ")
 ;;1850
 ;;21,"62037-0700-30 ")
 ;;1851
 ;;21,"62037-0700-90 ")
 ;;1852
 ;;21,"62175-0260-37 ")
 ;;1853
 ;;21,"62175-0260-43 ")
 ;;1854
 ;;21,"62175-0260-46 ")
 ;;1855
 ;;21,"62175-0260-55 ")
 ;;1856
 ;;21,"62175-0261-37 ")
 ;;1857
 ;;21,"62175-0261-43 ")
 ;;1858
 ;;21,"62175-0261-46 ")
 ;;1859
 ;;21,"62175-0261-55 ")
 ;;1860
 ;;21,"62175-0262-32 ")
 ;;1861
 ;;21,"62175-0262-37 ")
 ;;1862
 ;;21,"62175-0262-46 ")
 ;;1863
 ;;21,"62175-0485-37 ")
 ;;1864
 ;;21,"62175-0486-37 ")
 ;;1865
 ;;21,"62175-0487-37 ")
 ;;1866
 ;;21,"62175-0570-37 ")
 ;;1867
 ;;21,"62175-0571-37 ")
 ;;1868
 ;;21,"62175-0572-37 ")
 ;;1869
 ;;21,"62175-0580-37 ")
 ;;1870
 ;;21,"62175-0581-37 ")
 ;;1871
 ;;21,"62175-0582-37 ")
 ;;1872
 ;;21,"62175-0583-37 ")
 ;;1873
 ;;21,"62451-0733-19 ")
 ;;1874
 ;;21,"62451-0734-19 ")
 ;;1875
 ;;21,"62451-8841-54 ")
 ;;1876
 ;;21,"62451-8841-72 ")
 ;;1877
 ;;21,"62451-8851-54 ")
 ;;1878
 ;;21,"62451-8851-72 ")
 ;;1879
 ;;21,"62584-0974-01 ")
 ;;1880
 ;;21,"62584-0974-11 ")
 ;;1881
 ;;21,"62584-0974-30 ")
 ;;1882
 ;;21,"62584-0974-90 ")
 ;;1883
 ;;21,"62584-0975-01 ")
 ;;1884
 ;;21,"62584-0975-11 ")
 ;;1885
 ;;21,"62584-0975-30 ")
 ;;1886
 ;;21,"62584-0975-90 ")
 ;;1887
 ;;21,"62584-0976-01 ")
 ;;1888
 ;;21,"62584-0976-11 ")
 ;;1889
 ;;21,"62584-0976-30 ")
 ;;1890
 ;;21,"62584-0976-90 ")
 ;;1891
 ;;21,"62584-0977-01 ")
 ;;1892
 ;;21,"62584-0977-11 ")
 ;;1893
 ;;21,"62584-0977-30 ")
 ;;1894
 ;;21,"62584-0977-90 ")
 ;;1895
 ;;21,"63304-0435-01 ")
 ;;1896
 ;;21,"63304-0436-01 ")
 ;;1897
 ;;21,"63304-0437-01 ")
 ;;1898
 ;;21,"63304-0499-30 ")
 ;;1899
 ;;21,"63304-0500-30 ")
 ;;1900
 ;;21,"63304-0501-30 ")
 ;;1901
 ;;21,"63304-0502-30 ")
 ;;1902
 ;;21,"63304-0503-30 ")
 ;;1903
 ;;21,"63304-0587-30 ")
 ;;1904
 ;;21,"63304-0588-30 ")
 ;;1905
 ;;21,"63304-0589-30 ")
 ;;1906
 ;;21,"63304-0590-30 ")
 ;;1907
 ;;21,"63304-0591-30 ")
 ;;1908
 ;;21,"63304-0603-30 ")
 ;;1909
 ;;21,"63629-1454-01 ")
 ;;1910
 ;;21,"63629-1559-01 ")
 ;;1911
 ;;21,"63629-1559-02 ")
 ;;1912
 ;;21,"63629-1560-01 ")
 ;;1913
 ;;21,"63629-1561-01 ")
 ;;1914
 ;;21,"63629-1561-02 ")
 ;;1915
 ;;21,"63629-1561-03 ")
 ;;1916
 ;;21,"63629-1561-04 ")
 ;;1917
 ;;21,"63629-1565-01 ")
 ;;1918
 ;;21,"63629-1565-02 ")
 ;;1919
 ;;21,"63629-1565-03 ")
 ;;1920
 ;;21,"63629-1566-01 ")
 ;;1921
 ;;21,"63629-1566-02 ")
 ;;1922
 ;;21,"63629-1566-03 ")
 ;;1923
 ;;21,"63629-1566-04 ")
 ;;1924
 ;;21,"63629-1566-05 ")
 ;;1925
 ;;21,"63629-1597-01 ")
 ;;1926
 ;;21,"63629-3052-01 ")
 ;;1927
 ;;21,"63629-3052-02 ")
 ;;1928
 ;;21,"63629-3052-03 ")
 ;;1929
 ;;21,"63629-3564-01 ")
 ;;1930
 ;;21,"63629-3649-01 ")
 ;;1931
 ;;21,"63629-3678-01 ")
 ;;1932
 ;;21,"63629-3750-01 ")
 ;;1933
 ;;21,"63629-4073-01 ")
 ;;1934
 ;;21,"63629-4089-01 ")
 ;;1935
 ;;21,"63629-4337-01 ")
 ;;1936
 ;;21,"63629-4717-01 ")
 ;;1937
 ;;21,"63739-0079-10 ")
 ;;1938
 ;;21,"63739-0080-10 ")
 ;;1939
 ;;21,"63739-0283-10 ")
 ;;1940
 ;;21,"63739-0283-31 ")
 ;;1941
 ;;21,"63739-0284-10 ")
 ;;1942
 ;;21,"63739-0284-31 ")
 ;;1943
 ;;21,"63739-0285-04 ")
 ;;1944
 ;;21,"63739-0285-10 ")
 ;;1945
 ;;21,"63739-0285-31 ")
 ;;1946
 ;;21,"63739-0631-10 ")
 ;;1947
 ;;21,"64455-0771-47 ")
 ;;1948
 ;;21,"64455-0771-55 ")
 ;;1949
 ;;21,"64455-0772-47 ")
 ;;1950
 ;;21,"64455-0791-47 ")
 ;;1951
 ;;21,"64455-0795-42 ")
 ;;1952
 ;;21,"64455-0795-49 ")
 ;;1953
 ;;21,"64455-0796-30 ")
 ;;1954
 ;;21,"64455-0796-42 ")
 ;;1955
 ;;21,"64455-0796-49 ")
 ;;1956
 ;;21,"64455-0796-50 ")
 ;;1957
 ;;21,"64455-0797-30 ")
 ;;1958
 ;;21,"64455-0797-42 ")
 ;;1959
 ;;21,"64455-0797-49 ")
 ;;1960
 ;;21,"64455-0799-42 ")
 ;;1961
 ;;21,"64679-0421-01 ")
 ;;1962
 ;;21,"64679-0422-01 ")
 ;;1963
 ;;21,"64679-0422-02 ")
 ;;1964
 ;;21,"64679-0423-01 ")
 ;;1965
 ;;21,"64679-0423-02 ")
 ;;1966
 ;;21,"65084-0412-18 ")
 ;;1967
 ;;21,"65162-0006-09 ")
 ;;1968
 ;;21,"65162-0006-50 ")
 ;;1969
 ;;21,"65162-0007-09 ")
 ;;1970
 ;;21,"65162-0007-50 ")
 ;;1971
 ;;21,"65162-0008-09 ")
 ;;1972
 ;;21,"65162-0008-50 ")
 ;;1973
 ;;21,"65243-0028-09 ")
 ;;1974
 ;;21,"65243-0054-09 ")
 ;;1975
 ;;21,"65243-0111-09 ")
 ;;1976
 ;;21,"65243-0260-09 ")
 ;;1977
 ;;21,"65243-0311-09 ")
 ;;1978
 ;;21,"65243-0312-09 ")
 ;;1979
 ;;21,"65243-0312-18 ")
 ;;1980
 ;;21,"65243-0317-09 ")
 ;;1981
 ;;21,"65243-0318-09 ")
 ;;1982
 ;;21,"65597-0110-30 ")
 ;;1983
 ;;21,"65597-0110-90 ")
 ;;1984
 ;;21,"65597-0111-30 ")
 ;;1985
 ;;21,"65597-0111-90 ")
 ;;1986
 ;;21,"65597-0112-30 ")
 ;;1987
 ;;21,"65597-0112-90 ")
 ;;1988
 ;;21,"65597-0113-30 ")
 ;;1989
 ;;21,"65597-0113-90 ")
 ;;1990
 ;;21,"65597-0114-30 ")
 ;;1991
 ;;21,"65597-0114-90 ")
 ;;1992
 ;;21,"65597-0115-30 ")
 ;;1993
 ;;21,"65597-0115-90 ")
 ;;1994
 ;;21,"65597-0116-30 ")
 ;;1995
 ;;21,"65597-0116-90 ")
 ;;1996
 ;;21,"65597-0117-30 ")
 ;;1997
 ;;21,"65597-0117-90 ")
 ;;1998
 ;;21,"65597-0118-30 ")
 ;;1999
 ;;21,"65597-0118-90 ")
 ;;2000
 ;;21,"65862-0101-05 ")
 ;;2001
 ;;21,"65862-0101-90 ")
 ;;2002
 ;;21,"65862-0101-99 ")
 ;;2003
 ;;21,"65862-0102-05 ")
 ;;2004
 ;;21,"65862-0102-90 ")
 ;;2005
 ;;21,"65862-0102-99 ")
 ;;2006
 ;;21,"65862-0103-05 ")
 ;;2007
 ;;21,"65862-0103-90 ")
 ;;2008
 ;;21,"65862-0103-99 ")
 ;;2009
 ;;21,"65862-0582-01 ")
 ;;2010
 ;;21,"65862-0582-05 ")
 ;;2011
 ;;21,"65862-0583-01 ")
 ;;2012
 ;;21,"65862-0583-05 ")
 ;;2013
 ;;21,"65862-0584-01 ")
 ;;2014
 ;;21,"65862-0584-05 ")
 ;;2015
 ;;21,"65862-0585-01 ")
 ;;2016
 ;;21,"65862-0585-05 ")
 ;;2017
 ;;21,"65862-0586-01 ")
 ;;2018
 ;;21,"65862-0586-05 ")
 ;;2019
 ;;21,"65862-0587-01 ")
 ;;2020
 ;;21,"65862-0587-05 ")
 ;;2021
 ;;21,"65862-0673-01 ")
 ;;2022
 ;;21,"65862-0673-99 ")
 ;;2023
 ;;21,"65862-0674-01 ")
 ;;2024
 ;;21,"65862-0674-99 ")
 ;;2025
 ;;21,"65862-0675-01 ")
 ;;2026
 ;;21,"65862-0675-99 ")
 ;;2027
 ;;21,"66105-0528-01 ")
 ;;2028
 ;;21,"66105-0528-03 ")
 ;;2029
 ;;21,"66105-0528-06 ")
 ;;2030
 ;;21,"66105-0528-09 ")
 ;;2031
 ;;21,"66105-0528-10 ")
 ;;2032
 ;;21,"66105-0529-01 ")
 ;;2033
 ;;21,"66105-0529-03 ")
 ;;2034
 ;;21,"66105-0529-06 ")
 ;;2035
 ;;21,"66105-0529-09 ")
 ;;2036
 ;;21,"66105-0529-10 ")
 ;;2037
 ;;21,"66116-0278-30 ")
 ;;2038
 ;;21,"66116-0432-30 ")
 ;;2039
 ;;21,"66116-0433-30 ")
 ;;2040
 ;;21,"66116-0468-30 ")
 ;;2041
 ;;21,"66116-0492-30 ")
 ;;2042
 ;;21,"66267-0212-30 ")
 ;;2043
 ;;21,"66267-0322-30 ")
 ;;2044
 ;;21,"66267-0508-30 ")
 ;;2045
 ;;21,"66267-0684-30 ")
 ;;2046
 ;;21,"66336-0127-30 ")
 ;;2047
 ;;21,"66336-0255-30 ")
 ;;2048
 ;;21,"66336-0296-30 ")
 ;;2049
 ;;21,"66336-0296-90 ")
 ;;2050
 ;;21,"66336-0300-30 ")
 ;;2051
 ;;21,"66336-0348-30 ")
 ;;2052
 ;;21,"66336-0348-60 ")
 ;;2053
 ;;21,"66336-0348-90 ")
 ;;2054
 ;;21,"66336-0424-30 ")
 ;;2055
 ;;21,"66336-0669-14 ")
 ;;2056
 ;;21,"66336-0669-30 ")
 ;;2057
 ;;21,"66336-0669-90 ")
 ;;2058
 ;;21,"66336-0683-30 ")
 ;;2059
 ;;21,"66336-0781-30 ")
 ;;2060
 ;;21,"66336-0781-90 ")
 ;;2061
 ;;21,"66336-0809-30 ")
 ;;2062
 ;;21,"66336-0809-90 ")
 ;;2063
 ;;21,"66336-0894-30 ")
 ;;2064
 ;;21,"66336-0894-90 ")
 ;;2065
 ;;21,"66336-0959-30 ")
 ;;2066
 ;;21,"66336-0959-90 ")
 ;;2067
 ;;21,"66993-0472-02 ")
 ;;2068
 ;;21,"66993-0473-02 ")
 ;;2069
 ;;21,"66993-0475-02 ")
 ;;2070
 ;;21,"67286-0813-03 ")
 ;;2071
 ;;21,"67286-0813-04 ")
 ;;2072
 ;;21,"67286-0814-03 ")
 ;;2073
 ;;21,"67544-0071-30 ")
 ;;2074
 ;;21,"67544-0086-30 ")
 ;;2075
 ;;21,"67544-0185-60 ")
 ;;2076
 ;;21,"67544-0185-81 ")
 ;;2077
 ;;21,"67544-0185-82 ")
 ;;2078
 ;;21,"67544-0262-30 ")
 ;;2079
 ;;21,"67544-0262-60 ")
 ;;2080
 ;;21,"67544-0263-30 ")
 ;;2081
 ;;21,"67544-0263-60 ")
 ;;2082
 ;;21,"67544-0264-30 ")
 ;;2083
 ;;21,"67544-0264-60 ")
 ;;2084
 ;;21,"67544-0265-30 ")
 ;;2085
 ;;21,"67544-0265-60 ")
 ;;2086
 ;;21,"67544-0266-30 ")
 ;;2087
 ;;21,"67544-0266-60 ")
 ;;2088
 ;;21,"67544-0297-60 ")
 ;;2089
 ;;21,"67544-0388-30 ")
 ;;2090
 ;;21,"67544-0388-60 ")
 ;;2091
 ;;21,"67544-0390-30 ")
 ;;2092
 ;;21,"67544-0390-53 ")
 ;;2093
 ;;21,"67544-0390-60 ")
 ;;2094
 ;;21,"67544-0390-70 ")
 ;;2095
 ;;21,"67544-0390-80 ")
 ;;2096
 ;;21,"67544-0809-30 ")
 ;;2097
 ;;21,"67544-0809-60 ")
 ;;2098
 ;;21,"67544-0979-15 ")
 ;;2099
 ;;21,"67544-0979-30 ")
 ;;2100
 ;;21,"67544-0979-45 ")
 ;;2101
 ;;21,"67544-0979-60 ")
 ;;2102
 ;;21,"67544-0993-30 ")
 ;;2103
 ;;21,"67767-0151-01 ")
 ;;2104
 ;;21,"67767-0151-05 ")
 ;;2105
 ;;21,"67767-0153-01 ")
 ;;2106
 ;;21,"67767-0153-05 ")
 ;;2107
 ;;21,"67877-0197-05 ")
 ;;2108
 ;;21,"67877-0197-10 ")
 ;;2109
 ;;21,"67877-0197-90 ")
 ;;2110
 ;;21,"67877-0198-05 ")
 ;;2111
 ;;21,"67877-0198-10 ")
 ;;2112
 ;;21,"67877-0198-90 ")
 ;;2113
 ;;21,"67877-0199-05 ")
 ;;2114
 ;;21,"67877-0199-10 ")
 ;;2115
 ;;21,"67877-0199-90 ")
 ;;2116
 ;;21,"68001-0130-00 ")
 ;;2117
 ;;21,"68001-0131-00 ")
 ;;2118
 ;;21,"68001-0132-00 ")
 ;;2119
 ;;21,"68001-0133-00 ")
 ;;2120
 ;;21,"68001-0134-00 ")
 ;;2121
 ;;21,"68001-0135-00 ")
 ;;2122
 ;;21,"68071-0011-30 ")
 ;;2123
 ;;21,"68071-0339-30 ")
 ;;2124
 ;;21,"68071-0522-30 ")
 ;;2125
 ;;21,"68071-0707-30 ")
 ;;2126
 ;;21,"68071-0728-30 ")
 ;;2127
 ;;21,"68071-1348-00 ")
 ;;2128
 ;;21,"68071-1349-00 ")
 ;;2129
 ;;21,"68084-0052-01 ")
 ;;2130
 ;;21,"68084-0052-11 ")
 ;;2131
 ;;21,"68084-0052-30 ")
 ;;2132
 ;;21,"68084-0052-90 ")
 ;;2133
 ;;21,"68084-0053-01 ")
 ;;2134
 ;;21,"68084-0053-11 ")
 ;;2135
 ;;21,"68084-0053-30 ")
 ;;2136
 ;;21,"68084-0053-90 ")
 ;;2137
 ;;21,"68084-0054-01 ")
 ;;2138
 ;;21,"68084-0054-11 ")
 ;;2139
 ;;21,"68084-0054-30 ")
 ;;2140
 ;;21,"68084-0054-90 ")
 ;;2141
 ;;21,"68084-0055-01 ")
 ;;2142
 ;;21,"68084-0055-11 ")
 ;;2143
 ;;21,"68084-0055-30 ")
 ;;2144
 ;;21,"68084-0055-90 ")
 ;;2145
 ;;21,"68084-0142-01 ")
 ;;2146
 ;;21,"68084-0142-11 ")
 ;;2147
 ;;21,"68084-0142-30 ")
 ;;2148
 ;;21,"68084-0142-90 ")
 ;;2149
 ;;21,"68084-0143-01 ")
 ;;2150
 ;;21,"68084-0143-11 ")
 ;;2151
 ;;21,"68084-0143-30 ")
 ;;2152
 ;;21,"68084-0143-90 ")
 ;;2153
 ;;21,"68084-0237-01 ")
 ;;2154
 ;;21,"68084-0237-11 ")
 ;;2155
 ;;21,"68084-0239-01 ")
 ;;2156
 ;;21,"68084-0239-11 ")
 ;;2157
 ;;21,"68084-0258-01 ")
 ;;2158
 ;;21,"68084-0258-11 ")
 ;;2159
 ;;21,"68084-0259-01 ")
 ;;2160
 ;;21,"68084-0259-11 ")
 ;;2161
 ;;21,"68084-0260-01 ")
 ;;2162
 ;;21,"68084-0260-11 ")
 ;;2163
 ;;21,"68084-0349-11 ")
 ;;2164
 ;;21,"68084-0349-21 ")
 ;;2165
 ;;21,"68084-0350-01 ")
 ;;2166
 ;;21,"68084-0350-11 ")
 ;;2167
 ;;21,"68084-0351-11 ")
 ;;2168
 ;;21,"68084-0351-21 ")
 ;;2169
 ;;21,"68084-0498-01 ")
 ;;2170
 ;;21,"68084-0498-11 ")
 ;;2171
 ;;21,"68084-0505-01 ")
 ;;2172
 ;;21,"68084-0505-11 ")
 ;;2173
 ;;21,"68084-0506-01 ")
 ;;2174
 ;;21,"68084-0506-11 ")
 ;;2175
 ;;21,"68084-0597-01 ")
 ;;2176
 ;;21,"68084-0597-11 ")
 ;;2177
 ;;21,"68084-0598-01 ")
 ;;2178
 ;;21,"68084-0598-11 ")
 ;;2179