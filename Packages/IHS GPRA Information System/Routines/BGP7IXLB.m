BGP7IXLB ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 11, 2006 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"00339-5389-11 ")
 ;;152
 ;;21,"00339-5724-01 ")
 ;;2918
 ;;21,"00339-5724-06 ")
 ;;2919
 ;;21,"00339-5724-11 ")
 ;;61
 ;;21,"00339-5724-12 ")
 ;;126
 ;;21,"00339-5725-01 ")
 ;;62
 ;;21,"00339-5725-06 ")
 ;;63
 ;;21,"00339-5725-11 ")
 ;;64
 ;;21,"00339-5725-12 ")
 ;;153
 ;;21,"00339-5725-14 ")
 ;;65
 ;;21,"00339-5725-18 ")
 ;;66
 ;;21,"00339-5727-11 ")
 ;;67
 ;;21,"00339-5727-12 ")
 ;;68
 ;;21,"00339-5752-11 ")
 ;;897
 ;;21,"00339-5753-12 ")
 ;;1677
 ;;21,"00339-5754-11 ")
 ;;898
 ;;21,"00339-5755-12 ")
 ;;1678
 ;;21,"00339-5756-11 ")
 ;;899
 ;;21,"00339-5757-12 ")
 ;;1679
 ;;21,"00339-5759-12 ")
 ;;1659
 ;;21,"00339-5781-11 ")
 ;;238
 ;;21,"00339-5782-11 ")
 ;;239
 ;;21,"00339-5783-11 ")
 ;;240
 ;;21,"00339-5839-12 ")
 ;;1080
 ;;21,"00339-5840-11 ")
 ;;1058
 ;;21,"00339-5841-12 ")
 ;;1059
 ;;21,"00339-5889-11 ")
 ;;410
 ;;21,"00339-5891-11 ")
 ;;411
 ;;21,"00339-6005-11 ")
 ;;1085
 ;;21,"00339-6006-11 ")
 ;;1086
 ;;21,"00339-6092-11 ")
 ;;2904
 ;;21,"00339-6186-11 ")
 ;;1203
 ;;21,"00339-6187-14 ")
 ;;1204
 ;;21,"00339-6191-11 ")
 ;;275
 ;;21,"00349-8451-01 ")
 ;;514
 ;;21,"00349-8451-10 ")
 ;;515
 ;;21,"00349-8452-01 ")
 ;;813
 ;;21,"00349-8452-10 ")
 ;;814
 ;;21,"00349-8453-01 ")
 ;;859
 ;;21,"00349-8453-10 ")
 ;;860
 ;;21,"00349-8454-01 ")
 ;;960
 ;;21,"00349-8454-05 ")
 ;;961
 ;;21,"00349-8509-01 ")
 ;;1108
 ;;21,"00349-8509-05 ")
 ;;1109
 ;;21,"00349-8510-01 ")
 ;;1126
 ;;21,"00349-8689-01 ")
 ;;1051
 ;;21,"00349-8690-01 ")
 ;;1024
 ;;21,"00349-8691-01 ")
 ;;1033
 ;;21,"00349-8699-01 ")
 ;;1680
 ;;21,"00349-8700-01 ")
 ;;1681
 ;;21,"00349-8707-01 ")
 ;;1660
 ;;21,"00349-8736-01 ")
 ;;933
 ;;21,"00349-8736-05 ")
 ;;934
 ;;21,"00349-8937-10 ")
 ;;1799
 ;;21,"00349-8938-10 ")
 ;;1661
 ;;21,"00364-0756-01 ")
 ;;1662
 ;;21,"00364-0756-02 ")
 ;;1663
 ;;21,"00364-0757-01 ")
 ;;1800
 ;;21,"00364-0757-02 ")
 ;;1801
 ;;21,"00364-0758-01 ")
 ;;1664
 ;;21,"00364-0758-02 ")
 ;;1665
 ;;21,"00364-0760-01 ")
 ;;1682
 ;;21,"00364-0760-05 ")
 ;;1683
 ;;21,"00364-0760-90 ")
 ;;962
 ;;21,"00364-0838-02 ")
 ;;1110
 ;;21,"00364-2359-01 ")
 ;;1622
 ;;21,"00364-2513-01 ")
 ;;1780
 ;;21,"00364-2513-02 ")
 ;;1781
 ;;21,"00364-2513-90 ")
 ;;1782
 ;;21,"00364-2514-01 ")
 ;;1614
 ;;21,"00364-2514-90 ")
 ;;1615
 ;;21,"00364-2527-01 ")
 ;;1775
 ;;21,"00364-2528-01 ")
 ;;1638
 ;;21,"00364-2652-01 ")
 ;;1591
 ;;21,"00364-2652-02 ")
 ;;1592
 ;;21,"00364-2653-01 ")
 ;;1706
 ;;21,"00364-2653-02 ")
 ;;1707
 ;;21,"00378-0018-01 ")
 ;;1616
 ;;21,"00378-0028-01 ")
 ;;1637
 ;;21,"00378-0032-01 ")
 ;;1610
 ;;21,"00378-0032-10 ")
 ;;1611
 ;;21,"00378-0047-01 ")
 ;;1612
 ;;21,"00378-0047-10 ")
 ;;1613
 ;;21,"00378-0052-01 ")
 ;;1617
 ;;21,"00378-0055-01 ")
 ;;1623
 ;;21,"00378-0127-01 ")
 ;;1618
 ;;21,"00378-0182-01 ")
 ;;1642
 ;;21,"00378-0182-10 ")
 ;;1643
 ;;21,"00378-0183-01 ")
 ;;1709
 ;;21,"00378-0183-10 ")
 ;;1710
 ;;21,"00378-0184-01 ")
 ;;1644
 ;;21,"00378-0184-10 ")
 ;;1645
 ;;21,"00378-0185-01 ")
 ;;1624
 ;;21,"00378-0185-05 ")
 ;;1625
 ;;21,"00378-0185-10 ")
 ;;516
 ;;21,"00378-0218-01 ")
 ;;1646
 ;;21,"00378-0218-10 ")
 ;;1647
 ;;21,"00378-0221-01 ")
 ;;1626
 ;;21,"00378-0231-01 ")
 ;;1783
 ;;21,"00378-0231-10 ")
 ;;1784
 ;;21,"00378-0305-01 ")
 ;;1569
 ;;21,"00378-0310-01 ")
 ;;1570
 ;;21,"00378-0314-01 ")
 ;;1571
 ;;21,"00378-0347-01 ")
 ;;1641
 ;;21,"00378-0347-10 ")
 ;;517
 ;;21,"00378-0424-01 ")
 ;;1711
 ;;21,"00378-0434-01 ")
 ;;1712
 ;;21,"00378-0445-01 ")
 ;;1572
 ;;21,"00378-0501-01 ")
 ;;1627
 ;;21,"00378-0501-05 ")
 ;;1094
 ;;21,"00378-0501-10 ")
 ;;1628
 ;;21,"00378-0503-01 ")
 ;;1629
 ;;21,"00378-0503-05 ")
 ;;1097
 ;;21,"00378-0503-10 ")
 ;;1630
 ;;21,"00378-0505-01 ")
 ;;1713
 ;;21,"00378-0505-05 ")
 ;;1714
 ;;21,"00378-0715-01 ")
 ;;1631
 ;;21,"00378-0715-10 ")
 ;;1034
 ;;21,"00378-0731-01 ")
 ;;1776
 ;;21,"00378-0731-10 ")
 ;;518
 ;;21,"00378-0757-01 ")
 ;;1619
 ;;21,"00378-0757-10 ")
 ;;1620
 ;;21,"00378-1132-01 ")
 ;;1790
 ;;21,"00378-1132-10 ")
 ;;1791
 ;;21,"00378-1171-01 ")
 ;;1792
 ;;21,"00378-1171-10 ")
 ;;1793
 ;;21,"00378-1200-01 ")
 ;;1794
 ;;21,"00378-1400-01 ")
 ;;1621
 ;;21,"00378-2063-01 ")
 ;;1777
 ;;21,"00378-2064-01 ")
 ;;1656
 ;;21,"00403-1052-01 ")
 ;;519
 ;;21,"00403-1056-71 ")
 ;;520
 ;;21,"00403-4582-01 ")
 ;;69
 ;;21,"00403-4582-30 ")
 ;;70
 ;;21,"00405-4103-01 ")
 ;;1774
 ;;21,"00405-4104-01 ")
 ;;1687
 ;;21,"00405-4106-01 ")
 ;;1674
 ;;21,"00405-4107-01 ")
 ;;1778
 ;;21,"00405-4107-03 ")
 ;;1779
 ;;21,"00405-4108-01 ")
 ;;1684
 ;;21,"00405-4674-01 ")
 ;;1725
 ;;21,"00405-4674-03 ")
 ;;1726
 ;;21,"00405-4804-01 ")
 ;;1685
 ;;21,"00405-4805-01 ")
 ;;1686
 ;;21,"00405-4884-01 ")
 ;;1666
 ;;21,"00405-4884-03 ")
 ;;1667
 ;;21,"00405-4885-01 ")
 ;;1818
 ;;21,"00405-4885-03 ")
 ;;1819
 ;;21,"00405-4886-01 ")
 ;;1668
 ;;21,"00405-4886-03 ")
 ;;1669
 ;;21,"00405-4888-01 ")
 ;;1719
 ;;21,"00405-4888-02 ")
 ;;1720
 ;;21,"00405-4890-01 ")
 ;;1721
 ;;21,"00405-4891-01 ")
 ;;1722
 ;;21,"00405-4892-01 ")
 ;;1723
 ;;21,"00405-4893-01 ")
 ;;1670
 ;;21,"00405-4894-01 ")
 ;;1876
 ;;21,"00405-4895-01 ")
 ;;1773
 ;;21,"00405-5020-01 ")
 ;;1724
 ;;21,"00405-5673-01 ")
 ;;1727
 ;;21,"00405-5673-03 ")
 ;;1728
 ;;21,"00406-2022-01 ")
 ;;2927
 ;;21,"00406-2022-10 ")
 ;;2928
 ;;21,"00406-2023-01 ")
 ;;2943
 ;;21,"00406-2023-10 ")
 ;;2944
 ;;21,"00406-2024-01 ")
 ;;2966
 ;;21,"00406-2024-10 ")
 ;;2967
 ;;21,"00440-7170-30 ")
 ;;127
 ;;21,"00440-7170-90 ")
 ;;128
 ;;21,"00440-7171-10 ")
 ;;154
 ;;21,"00440-7171-30 ")
 ;;155
 ;;21,"00440-7171-60 ")
 ;;156
 ;;21,"00440-7171-90 ")
 ;;157
 ;;21,"00440-7171-92 ")
 ;;158
 ;;21,"00440-7172-30 ")
 ;;71
 ;;21,"00440-7172-90 ")
 ;;72
 ;;21,"00440-7785-20 ")
 ;;276
 ;;21,"00440-7785-30 ")
 ;;277
 ;;21,"00440-7785-60 ")
 ;;278
 ;;21,"00440-7785-92 ")
 ;;279
 ;;21,"00440-7786-30 ")
 ;;248
 ;;21,"00440-7786-60 ")
 ;;227
 ;;21,"00440-7786-92 ")
 ;;249
 ;;21,"00440-8230-60 ")
 ;;521
 ;;21,"00440-8230-90 ")
 ;;522
 ;;21,"00440-8230-91 ")
 ;;523
 ;;21,"00440-8230-92 ")
 ;;524
 ;;21,"00440-8230-94 ")
 ;;525
 ;;21,"00440-8231-60 ")
 ;;815
 ;;21,"00440-8231-90 ")
 ;;816
 ;;21,"00440-8231-92 ")
 ;;817
 ;;21,"00440-8231-94 ")
 ;;818
 ;;21,"00440-8232-30 ")
 ;;861
 ;;21,"00440-8232-90 ")
 ;;862
 ;;21,"00440-8232-94 ")
 ;;863
 ;;21,"00440-8233-90 ")
 ;;900
 ;;21,"00440-8233-94 ")
 ;;901
 ;;21,"00440-8234-90 ")
 ;;944
 ;;21,"00440-8234-94 ")
 ;;945
 ;;21,"00480-0100-01 ")
 ;;1205
 ;;21,"00480-0102-01 ")
 ;;1206
 ;;21,"00480-0102-05 ")
 ;;1207
 ;;21,"00480-0106-01 ")
 ;;1208
 ;;21,"00480-0733-01 ")
 ;;280
 ;;21,"00480-0733-10 ")
 ;;281
 ;;21,"00480-0734-01 ")
 ;;282
 ;;21,"00480-0734-10 ")
 ;;283
 ;;21,"00480-0752-01 ")
 ;;73
 ;;21,"00480-0752-10 ")
 ;;74
 ;;21,"00480-0753-01 ")
 ;;75
 ;;21,"00480-1060-01 ")
 ;;989
 ;;21,"00480-1061-01 ")
 ;;990
 ;;21,"00480-1061-10 ")
 ;;991
 ;;21,"00480-1062-01 ")
 ;;992
 ;;21,"00480-1063-01 ")
 ;;993
 ;;21,"00536-3332-01 ")
 ;;1879
 ;;21,"00536-4247-01 ")
 ;;1881
 ;;21,"00536-4402-01 ")
 ;;1913
 ;;21,"00536-4403-05 ")
 ;;1127
 ;;21,"00536-4695-01 ")
 ;;1052
 ;;21,"00536-4697-01 ")
 ;;1035
 ;;21,"00536-4912-02 ")
 ;;1688
 ;;21,"00536-5639-01 ")
 ;;1689
 ;;21,"00555-0427-05 ")
 ;;1914
 ;;21,"00555-0428-05 ")
 ;;1111
 ;;21,"00556-0402-01 ")
 ;;526
 ;;21,"00556-0402-10 ")
 ;;527
 ;;21,"00556-0403-10 ")
 ;;819
 ;;21,"00556-0404-10 ")
 ;;864
 ;;21,"00591-0437-01 ")
 ;;1880
 ;;21,"00591-0438-01 ")
 ;;1771
 ;;21,"00591-0462-01 ")
 ;;1729
 ;;21,"00591-0462-10 ")
 ;;1730
 ;;21,"00591-0463-01 ")
 ;;1731
 ;;21,"00591-0463-10 ")
 ;;1732
 ;;21,"00591-0605-01 ")
 ;;1755
 ;;21,"00591-0605-05 ")
 ;;1756
 ;;21,"00591-0606-01 ")
 ;;1948
 ;;21,"00591-0606-05 ")
 ;;1949
 ;;21,"00591-0607-01 ")
 ;;1772
 ;;21,"00591-0841-01 ")
 ;;1743
 ;;21,"00591-0841-05 ")
 ;;1744
 ;;21,"00591-0842-01 ")
 ;;1745
 ;;21,"00591-0842-05 ")
 ;;1746
 ;;21,"00591-0843-01 ")
 ;;1936
 ;;21,"00591-0843-30 ")
 ;;1937
 ;;21,"00591-5554-01 ")
 ;;1751
 ;;21,"00591-5554-04 ")
 ;;528
 ;;21,"00591-5554-10 ")
 ;;1752
 ;;21,"00591-5555-01 ")
 ;;1940
 ;;21,"00591-5555-04 ")
 ;;820
 ;;21,"00591-5555-10 ")
 ;;1941
 ;;21,"00591-5556-01 ")
 ;;1753
 ;;21,"00591-5556-04 ")
 ;;865
 ;;21,"00591-5556-10 ")
 ;;1754
 ;;21,"00591-5557-01 ")
 ;;1759
 ;;21,"00591-5557-03 ")
 ;;963
 ;;21,"00591-5557-05 ")
 ;;1760
 ;;21,"00591-5736-01 ")
 ;;1053
 ;;21,"00591-5737-01 ")
 ;;1025
 ;;21,"00591-5738-01 ")
 ;;1036
 ;;21,"00591-5777-01 ")
 ;;1938
 ;;21,"00591-5777-04 ")
 ;;159
 ;;21,"00591-5777-10 ")
 ;;1939
 ;;21,"00591-5778-01 ")
 ;;1716
 ;;21,"00591-5782-01 ")
 ;;1960
 ;;21,"00591-5783-01 ")
 ;;1795
 ;;21,"00603-2047-21 ")
 ;;1708
 ;;21,"00603-2048-21 ")
 ;;1931
 ;;21,"00603-2370-21 ")
 ;;1742
 ;;21,"00603-2371-21 ")
 ;;1929
 ;;21,"00603-2371-32 ")
 ;;1930
 ;;21,"00603-2372-21 ")
 ;;1690
 ;;21,"00603-2374-21 ")
 ;;1943
 ;;21,"00603-2375-21 ")
 ;;1757
 ;;21,"00603-4627-21 ")
 ;;1740
 ;;21,"00603-4627-32 ")
 ;;1741
 ;;21,"00603-4628-21 ")
 ;;1785
 ;;21,"00603-4628-32 ")
 ;;1786
 ;;21,"00603-4740-21 ")
 ;;1739
 ;;21,"00603-4741-21 ")
 ;;1932
 ;;21,"00603-4742-21 ")
 ;;1933
 ;;21,"00603-5220-21 ")
 ;;1717
 ;;21,"00603-5221-21 ")
 ;;1718
 ;;21,"00603-5489-21 ")
 ;;1747
 ;;21,"00603-5489-32 ")
 ;;1748
 ;;21,"00603-5490-21 ")
 ;;1934
 ;;21,"00603-5490-32 ")
 ;;1935
 ;;21,"00603-5491-32 ")
 ;;1749
 ;;21,"00603-5492-21 ")
 ;;1761
 ;;21,"00603-5492-28 ")
 ;;1762
 ;;21,"00603-5493-21 ")
 ;;1763
 ;;21,"00603-5493-28 ")
 ;;1764
 ;;21,"00603-5497-21 ")
 ;;1765
 ;;21,"00603-5498-21 ")
 ;;1766
 ;;21,"00603-5499-21 ")
 ;;1767
 ;;21,"00603-5500-21 ")
 ;;1750
 ;;21,"00603-5503-21 ")
 ;;1944
 ;;21,"00603-5503-28 ")
 ;;1945
 ;;21,"00603-5504-21 ")
 ;;1796
 ;;21,"00603-5769-21 ")
 ;;1018
 ;;21,"00603-5769-28 ")
 ;;1019
 ;;21,"00603-5770-21 ")
 ;;994
 ;;21,"00603-5771-21 ")
 ;;1014
 ;;21,"00603-5772-21 ")
 ;;1016
 ;;21,"00603-6071-21 ")
 ;;1768
 ;;21,"00603-6072-21 ")
 ;;1769
 ;;21,"00603-6073-21 ")
 ;;1037
 ;;21,"00615-1331-29 ")
 ;;902
 ;;21,"00615-1331-43 ")
 ;;903
 ;;21,"00615-1331-53 ")
 ;;904
 ;;21,"00615-1331-63 ")
 ;;905
 ;;21,"00615-1331-65 ")
 ;;906
 ;;21,"00615-1332-29 ")
 ;;946
 ;;21,"00615-1332-43 ")
 ;;947
 ;;21,"00615-1332-53 ")
 ;;948
 ;;21,"00615-1332-63 ")
 ;;949
 ;;21,"00615-1332-65 ")
 ;;950
 ;;21,"00615-2561-29 ")
 ;;529
 ;;21,"00615-2561-43 ")
 ;;1812
 ;;21,"00615-2561-53 ")
 ;;1813
 ;;21,"00615-2561-63 ")
 ;;1814
 ;;21,"00615-2561-65 ")
 ;;530
 ;;21,"00615-2562-13 ")
 ;;1970
 ;;21,"00615-2562-29 ")
 ;;821
 ;;21,"00615-2562-43 ")
 ;;822
 ;;21,"00615-2562-53 ")
 ;;1971
 ;;21,"00615-2562-63 ")
 ;;1972
 ;;21,"00615-2563-29 ")
 ;;866
 ;;21,"00615-2563-43 ")
 ;;867
 ;;21,"00615-2563-53 ")
 ;;1815
 ;;21,"00615-2563-63 ")
 ;;1816
 ;;21,"00615-3506-13 ")
 ;;1810
 ;;21,"00615-3532-29 ")
 ;;160
 ;;21,"00615-3532-43 ")
 ;;1963
 ;;21,"00615-3532-53 ")
 ;;1964
 ;;21,"00615-3532-63 ")
 ;;1965
 ;;21,"00615-3532-65 ")
 ;;161
 ;;21,"00615-3532-88 ")
 ;;162
 ;;21,"00615-3544-29 ")
 ;;129
 ;;21,"00615-3544-43 ")
 ;;1860
 ;;21,"00615-3544-53 ")
 ;;1861
 ;;21,"00615-3544-63 ")
 ;;1862
 ;;21,"00615-3544-65 ")
 ;;130
 ;;21,"00615-3544-88 ")
 ;;131
 ;;21,"00615-3547-13 ")
 ;;1811
 ;;21,"00615-3552-13 ")
 ;;1921
 ;;21,"00615-3552-29 ")
 ;;284
 ;;21,"00615-3552-43 ")
 ;;1922
 ;;21,"00615-3552-53 ")
 ;;1923
 ;;21,"00615-3552-63 ")
 ;;1924
 ;;21,"00615-3552-65 ")
 ;;285
 ;;21,"00615-3553-53 ")
 ;;250
 ;;21,"00615-3553-63 ")
 ;;251
 ;;21,"00615-3576-13 ")
 ;;406
 ;;21,"00615-3577-13 ")
 ;;412
 ;;21,"00615-3578-13 ")
 ;;463
 ;;21,"00641-4031-86 ")
 ;;1026
 ;;21,"00677-1042-10 ")
 ;;1942
 ;;21,"00677-1043-10 ")
 ;;1758
 ;;21,"00677-1044-05 ")
 ;;1852
 ;;21,"00677-1107-01 ")
 ;;1878
 ;;21,"00677-1364-01 ")
 ;;1853
 ;;21,"00677-1365-01 ")
 ;;1854
 ;;21,"00677-1366-01 ")
 ;;1817
 ;;21,"00677-1457-01 ")
 ;;1822
 ;;21,"00677-1458-01 ")
 ;;1823
 ;;21,"00677-1478-01 ")
 ;;1961
 ;;21,"00677-1478-10 ")
 ;;1962
 ;;21,"00677-1479-01 ")
 ;;1824
 ;;21,"00677-1479-10 ")
 ;;1825
 ;;21,"00677-1480-01 ")
 ;;1973
 ;;21,"00677-1481-01 ")
 ;;1877
 ;;21,"00677-1482-01 ")
 ;;1838
 ;;21,"00677-1482-10 ")
 ;;1839
 ;;21,"00677-1483-01 ")
 ;;1840
 ;;21,"00677-1633-01 ")
 ;;1863
 ;;21,"00677-1633-10 ")
 ;;132
 ;;21,"00677-1701-01 ")
 ;;1858
 ;;21,"00677-1701-05 ")
 ;;1859
 ;;21,"00677-1701-06 ")
 ;;1209
 ;;21,"00677-1702-01 ")
 ;;1980
 ;;21,"00677-1702-05 ")
 ;;1981
 ;;21,"00677-1702-06 ")
 ;;1210
 ;;21,"00677-1703-01 ")
 ;;1841
 ;;21,"00677-1703-05 ")
 ;;1842
 ;;21,"00677-1703-06 ")
 ;;1211
 ;;21,"00677-1709-01 ")
 ;;1802
 ;;21,"00677-1709-05 ")
 ;;1803