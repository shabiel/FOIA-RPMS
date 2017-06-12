BGP61M6 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"68180-0480-03 ")
 ;;1820
 ;;21,"68180-0481-01 ")
 ;;1821
 ;;21,"68180-0481-02 ")
 ;;1822
 ;;21,"68180-0481-03 ")
 ;;1823
 ;;21,"68180-0482-06 ")
 ;;1824
 ;;21,"68180-0482-09 ")
 ;;1825
 ;;21,"68180-0485-02 ")
 ;;1826
 ;;21,"68180-0485-09 ")
 ;;1827
 ;;21,"68180-0486-02 ")
 ;;1828
 ;;21,"68180-0486-09 ")
 ;;1829
 ;;21,"68180-0487-02 ")
 ;;1830
 ;;21,"68180-0487-09 ")
 ;;1831
 ;;21,"68180-0488-02 ")
 ;;1832
 ;;21,"68180-0488-09 ")
 ;;1833
 ;;21,"68258-6000-03 ")
 ;;1834
 ;;21,"68258-6000-09 ")
 ;;1835
 ;;21,"68258-6001-03 ")
 ;;1836
 ;;21,"68258-6001-09 ")
 ;;1837
 ;;21,"68258-6002-03 ")
 ;;1838
 ;;21,"68258-6002-09 ")
 ;;1839
 ;;21,"68258-6009-03 ")
 ;;1840
 ;;21,"68258-6009-09 ")
 ;;1841
 ;;21,"68258-6013-03 ")
 ;;1842
 ;;21,"68258-6013-09 ")
 ;;1843
 ;;21,"68258-6016-03 ")
 ;;1844
 ;;21,"68258-6017-03 ")
 ;;1845
 ;;21,"68258-6041-03 ")
 ;;1846
 ;;21,"68258-6042-03 ")
 ;;1847
 ;;21,"68258-6043-03 ")
 ;;1848
 ;;21,"68258-6043-09 ")
 ;;1849
 ;;21,"68258-6044-03 ")
 ;;1850
 ;;21,"68258-6044-09 ")
 ;;1851
 ;;21,"68258-6049-03 ")
 ;;1852
 ;;21,"68258-6050-03 ")
 ;;1853
 ;;21,"68258-6970-03 ")
 ;;1854
 ;;21,"68258-6983-03 ")
 ;;1855
 ;;21,"68258-6984-03 ")
 ;;1856
 ;;21,"68258-6985-09 ")
 ;;1857
 ;;21,"68258-6992-09 ")
 ;;1858
 ;;21,"68258-6993-09 ")
 ;;1859
 ;;21,"68382-0065-05 ")
 ;;1860
 ;;21,"68382-0065-06 ")
 ;;1861
 ;;21,"68382-0065-10 ")
 ;;1862
 ;;21,"68382-0065-14 ")
 ;;1863
 ;;21,"68382-0065-16 ")
 ;;1864
 ;;21,"68382-0066-05 ")
 ;;1865
 ;;21,"68382-0066-06 ")
 ;;1866
 ;;21,"68382-0066-10 ")
 ;;1867
 ;;21,"68382-0066-14 ")
 ;;1868
 ;;21,"68382-0066-16 ")
 ;;1869
 ;;21,"68382-0066-24 ")
 ;;1870
 ;;21,"68382-0067-05 ")
 ;;1871
 ;;21,"68382-0067-06 ")
 ;;1872
 ;;21,"68382-0067-10 ")
 ;;1873
 ;;21,"68382-0067-14 ")
 ;;1874
 ;;21,"68382-0067-16 ")
 ;;1875
 ;;21,"68382-0067-24 ")
 ;;1876
 ;;21,"68382-0068-05 ")
 ;;1877
 ;;21,"68382-0068-06 ")
 ;;1878
 ;;21,"68382-0068-10 ")
 ;;1879
 ;;21,"68382-0068-14 ")
 ;;1880
 ;;21,"68382-0068-16 ")
 ;;1881
 ;;21,"68382-0068-40 ")
 ;;1882
 ;;21,"68382-0069-05 ")
 ;;1883
 ;;21,"68382-0069-06 ")
 ;;1884
 ;;21,"68382-0069-10 ")
 ;;1885
 ;;21,"68382-0069-14 ")
 ;;1886
 ;;21,"68382-0069-16 ")
 ;;1887
 ;;21,"68382-0070-05 ")
 ;;1888
 ;;21,"68382-0070-16 ")
 ;;1889
 ;;21,"68382-0071-05 ")
 ;;1890
 ;;21,"68382-0071-16 ")
 ;;1891
 ;;21,"68382-0072-05 ")
 ;;1892
 ;;21,"68382-0072-16 ")
 ;;1893
 ;;21,"68382-0073-05 ")
 ;;1894
 ;;21,"68382-0073-16 ")
 ;;1895
 ;;21,"68462-0195-05 ")
 ;;1896
 ;;21,"68462-0195-90 ")
 ;;1897
 ;;21,"68462-0196-05 ")
 ;;1898
 ;;21,"68462-0196-90 ")
 ;;1899
 ;;21,"68462-0197-05 ")
 ;;1900
 ;;21,"68462-0197-90 ")
 ;;1901
 ;;21,"68462-0198-05 ")
 ;;1902
 ;;21,"68462-0198-90 ")
 ;;1903
 ;;21,"68645-0261-54 ")
 ;;1904
 ;;21,"68645-0262-54 ")
 ;;1905
 ;;21,"68645-0263-54 ")
 ;;1906
 ;;21,"68645-0402-70 ")
 ;;1907
 ;;21,"68645-0403-70 ")
 ;;1908
 ;;21,"68645-0417-54 ")
 ;;1909
 ;;21,"68645-0418-54 ")
 ;;1910
 ;;21,"68645-0458-70 ")
 ;;1911
 ;;21,"68645-0459-70 ")
 ;;1912
 ;;21,"68645-0460-54 ")
 ;;1913
 ;;21,"68645-0461-54 ")
 ;;1914
 ;;21,"68645-0470-54 ")
 ;;1915
 ;;21,"68645-0471-54 ")
 ;;1916
 ;;21,"68645-0472-54 ")
 ;;1917
 ;;21,"68645-0480-70 ")
 ;;1918
 ;;21,"68645-0481-70 ")
 ;;1919
 ;;21,"68645-0482-54 ")
 ;;1920
 ;;21,"68645-0483-54 ")
 ;;1921
 ;;21,"68645-0495-54 ")
 ;;1922
 ;;21,"68788-0074-03 ")
 ;;1923
 ;;21,"68788-9182-03 ")
 ;;1924
 ;;21,"68788-9556-03 ")
 ;;1925
 ;;21,"68788-9668-03 ")
 ;;1926
 ;;21,"68788-9683-03 ")
 ;;1927
 ;;21,"68788-9835-03 ")
 ;;1928
 ;;21,"68788-9836-03 ")
 ;;1929
 ;;21,"68788-9868-03 ")
 ;;1930
 ;;21,"68788-9869-03 ")
 ;;1931
 ;;9002226,1224,.01)
 ;;BGP PQA STATIN NDC
 ;;9002226,1224,.02)
 ;;@
 ;;9002226,1224,.04)
 ;;n
 ;;9002226,1224,.06)
 ;;@
 ;;9002226,1224,.08)
 ;;@
 ;;9002226,1224,.09)
 ;;3150818
 ;;9002226,1224,.11)
 ;;@
 ;;9002226,1224,.12)
 ;;@
 ;;9002226,1224,.13)
 ;;1
 ;;9002226,1224,.14)
 ;;@
 ;;9002226,1224,.15)
 ;;50.67
 ;;9002226,1224,.16)
 ;;@
 ;;9002226,1224,.17)
 ;;@
 ;;9002226,1224,3101)
 ;;@
 ;;9002226.02101,"1224,00002-4770-90 ",.01)
 ;;00002-4770-90
 ;;9002226.02101,"1224,00002-4770-90 ",.02)
 ;;00002-4770-90
 ;;9002226.02101,"1224,00002-4771-90 ",.01)
 ;;00002-4771-90
 ;;9002226.02101,"1224,00002-4771-90 ",.02)
 ;;00002-4771-90
 ;;9002226.02101,"1224,00002-4772-90 ",.01)
 ;;00002-4772-90
 ;;9002226.02101,"1224,00002-4772-90 ",.02)
 ;;00002-4772-90
 ;;9002226.02101,"1224,00003-5178-05 ",.01)
 ;;00003-5178-05
 ;;9002226.02101,"1224,00003-5178-05 ",.02)
 ;;00003-5178-05
 ;;9002226.02101,"1224,00003-5194-10 ",.01)
 ;;00003-5194-10
 ;;9002226.02101,"1224,00003-5194-10 ",.02)
 ;;00003-5194-10
 ;;9002226.02101,"1224,00003-5195-10 ",.01)
 ;;00003-5195-10
 ;;9002226.02101,"1224,00003-5195-10 ",.02)
 ;;00003-5195-10
 ;;9002226.02101,"1224,00006-0533-31 ",.01)
 ;;00006-0533-31
 ;;9002226.02101,"1224,00006-0533-31 ",.02)
 ;;00006-0533-31
 ;;9002226.02101,"1224,00006-0533-54 ",.01)
 ;;00006-0533-54
 ;;9002226.02101,"1224,00006-0533-54 ",.02)
 ;;00006-0533-54
 ;;9002226.02101,"1224,00006-0535-31 ",.01)
 ;;00006-0535-31
 ;;9002226.02101,"1224,00006-0535-31 ",.02)
 ;;00006-0535-31
 ;;9002226.02101,"1224,00006-0535-54 ",.01)
 ;;00006-0535-54
 ;;9002226.02101,"1224,00006-0535-54 ",.02)
 ;;00006-0535-54
 ;;9002226.02101,"1224,00006-0537-31 ",.01)
 ;;00006-0537-31
 ;;9002226.02101,"1224,00006-0537-31 ",.02)
 ;;00006-0537-31
 ;;9002226.02101,"1224,00006-0537-54 ",.01)
 ;;00006-0537-54
 ;;9002226.02101,"1224,00006-0537-54 ",.02)
 ;;00006-0537-54
 ;;9002226.02101,"1224,00006-0543-31 ",.01)
 ;;00006-0543-31
 ;;9002226.02101,"1224,00006-0543-31 ",.02)
 ;;00006-0543-31
 ;;9002226.02101,"1224,00006-0543-54 ",.01)
 ;;00006-0543-54
 ;;9002226.02101,"1224,00006-0543-54 ",.02)
 ;;00006-0543-54
 ;;9002226.02101,"1224,00006-0726-31 ",.01)
 ;;00006-0726-31
 ;;9002226.02101,"1224,00006-0726-31 ",.02)
 ;;00006-0726-31
 ;;9002226.02101,"1224,00006-0731-61 ",.01)
 ;;00006-0731-61
 ;;9002226.02101,"1224,00006-0731-61 ",.02)
 ;;00006-0731-61
 ;;9002226.02101,"1224,00006-0732-61 ",.01)
 ;;00006-0732-61
 ;;9002226.02101,"1224,00006-0732-61 ",.02)
 ;;00006-0732-61
 ;;9002226.02101,"1224,00006-0735-31 ",.01)
 ;;00006-0735-31
 ;;9002226.02101,"1224,00006-0735-31 ",.02)
 ;;00006-0735-31
 ;;9002226.02101,"1224,00006-0735-54 ",.01)
 ;;00006-0735-54
 ;;9002226.02101,"1224,00006-0735-54 ",.02)
 ;;00006-0735-54
 ;;9002226.02101,"1224,00006-0740-31 ",.01)
 ;;00006-0740-31
 ;;9002226.02101,"1224,00006-0740-31 ",.02)
 ;;00006-0740-31
 ;;9002226.02101,"1224,00006-0740-54 ",.01)
 ;;00006-0740-54
 ;;9002226.02101,"1224,00006-0740-54 ",.02)
 ;;00006-0740-54
 ;;9002226.02101,"1224,00006-0749-31 ",.01)
 ;;00006-0749-31
 ;;9002226.02101,"1224,00006-0749-31 ",.02)
 ;;00006-0749-31
 ;;9002226.02101,"1224,00006-0749-54 ",.01)
 ;;00006-0749-54
 ;;9002226.02101,"1224,00006-0749-54 ",.02)
 ;;00006-0749-54
 ;;9002226.02101,"1224,00006-0753-31 ",.01)
 ;;00006-0753-31
 ;;9002226.02101,"1224,00006-0753-31 ",.02)
 ;;00006-0753-31
 ;;9002226.02101,"1224,00006-0753-54 ",.01)
 ;;00006-0753-54
 ;;9002226.02101,"1224,00006-0753-54 ",.02)
 ;;00006-0753-54
 ;;9002226.02101,"1224,00006-0753-82 ",.01)
 ;;00006-0753-82
 ;;9002226.02101,"1224,00006-0753-82 ",.02)
 ;;00006-0753-82
 ;;9002226.02101,"1224,00006-0757-31 ",.01)
 ;;00006-0757-31
 ;;9002226.02101,"1224,00006-0757-31 ",.02)
 ;;00006-0757-31
 ;;9002226.02101,"1224,00006-0757-54 ",.01)
 ;;00006-0757-54
 ;;9002226.02101,"1224,00006-0757-54 ",.02)
 ;;00006-0757-54
 ;;9002226.02101,"1224,00006-0757-82 ",.01)
 ;;00006-0757-82
 ;;9002226.02101,"1224,00006-0757-82 ",.02)
 ;;00006-0757-82
 ;;9002226.02101,"1224,00006-0773-31 ",.01)
 ;;00006-0773-31
 ;;9002226.02101,"1224,00006-0773-31 ",.02)
 ;;00006-0773-31
 ;;9002226.02101,"1224,00006-0773-54 ",.01)
 ;;00006-0773-54
 ;;9002226.02101,"1224,00006-0773-54 ",.02)
 ;;00006-0773-54
 ;;9002226.02101,"1224,00006-0773-82 ",.01)
 ;;00006-0773-82
 ;;9002226.02101,"1224,00006-0773-82 ",.02)
 ;;00006-0773-82
 ;;9002226.02101,"1224,00069-2150-30 ",.01)
 ;;00069-2150-30
 ;;9002226.02101,"1224,00069-2150-30 ",.02)
 ;;00069-2150-30
 ;;9002226.02101,"1224,00069-2160-30 ",.01)
 ;;00069-2160-30
 ;;9002226.02101,"1224,00069-2160-30 ",.02)
 ;;00069-2160-30
 ;;9002226.02101,"1224,00069-2170-30 ",.01)
 ;;00069-2170-30
 ;;9002226.02101,"1224,00069-2170-30 ",.02)
 ;;00069-2170-30
 ;;9002226.02101,"1224,00069-2180-30 ",.01)
 ;;00069-2180-30
 ;;9002226.02101,"1224,00069-2180-30 ",.02)
 ;;00069-2180-30
 ;;9002226.02101,"1224,00069-2190-30 ",.01)
 ;;00069-2190-30
 ;;9002226.02101,"1224,00069-2190-30 ",.02)
 ;;00069-2190-30
 ;;9002226.02101,"1224,00069-2250-30 ",.01)
 ;;00069-2250-30
 ;;9002226.02101,"1224,00069-2250-30 ",.02)
 ;;00069-2250-30
 ;;9002226.02101,"1224,00069-2260-30 ",.01)
 ;;00069-2260-30
 ;;9002226.02101,"1224,00069-2260-30 ",.02)
 ;;00069-2260-30
 ;;9002226.02101,"1224,00069-2270-30 ",.01)
 ;;00069-2270-30
 ;;9002226.02101,"1224,00069-2270-30 ",.02)
 ;;00069-2270-30
 ;;9002226.02101,"1224,00069-2960-30 ",.01)
 ;;00069-2960-30
 ;;9002226.02101,"1224,00069-2960-30 ",.02)
 ;;00069-2960-30
 ;;9002226.02101,"1224,00069-2970-30 ",.01)
 ;;00069-2970-30
 ;;9002226.02101,"1224,00069-2970-30 ",.02)
 ;;00069-2970-30
 ;;9002226.02101,"1224,00069-2980-30 ",.01)
 ;;00069-2980-30
 ;;9002226.02101,"1224,00069-2980-30 ",.02)
 ;;00069-2980-30
 ;;9002226.02101,"1224,00071-0155-23 ",.01)
 ;;00071-0155-23
 ;;9002226.02101,"1224,00071-0155-23 ",.02)
 ;;00071-0155-23
 ;;9002226.02101,"1224,00071-0155-34 ",.01)
 ;;00071-0155-34
 ;;9002226.02101,"1224,00071-0155-34 ",.02)
 ;;00071-0155-34
 ;;9002226.02101,"1224,00071-0155-40 ",.01)
 ;;00071-0155-40
 ;;9002226.02101,"1224,00071-0155-40 ",.02)
 ;;00071-0155-40
 ;;9002226.02101,"1224,00071-0156-23 ",.01)
 ;;00071-0156-23
 ;;9002226.02101,"1224,00071-0156-23 ",.02)
 ;;00071-0156-23
 ;;9002226.02101,"1224,00071-0156-40 ",.01)
 ;;00071-0156-40
 ;;9002226.02101,"1224,00071-0156-40 ",.02)
 ;;00071-0156-40
 ;;9002226.02101,"1224,00071-0156-94 ",.01)
 ;;00071-0156-94
 ;;9002226.02101,"1224,00071-0156-94 ",.02)
 ;;00071-0156-94
 ;;9002226.02101,"1224,00071-0157-23 ",.01)
 ;;00071-0157-23
 ;;9002226.02101,"1224,00071-0157-23 ",.02)
 ;;00071-0157-23
 ;;9002226.02101,"1224,00071-0157-40 ",.01)
 ;;00071-0157-40
 ;;9002226.02101,"1224,00071-0157-40 ",.02)
 ;;00071-0157-40
 ;;9002226.02101,"1224,00071-0157-73 ",.01)
 ;;00071-0157-73
 ;;9002226.02101,"1224,00071-0157-73 ",.02)
 ;;00071-0157-73
 ;;9002226.02101,"1224,00071-0157-88 ",.01)
 ;;00071-0157-88
 ;;9002226.02101,"1224,00071-0157-88 ",.02)
 ;;00071-0157-88
 ;;9002226.02101,"1224,00071-0158-23 ",.01)
 ;;00071-0158-23
 ;;9002226.02101,"1224,00071-0158-23 ",.02)
 ;;00071-0158-23
 ;;9002226.02101,"1224,00071-0158-73 ",.01)
 ;;00071-0158-73
 ;;9002226.02101,"1224,00071-0158-73 ",.02)
 ;;00071-0158-73
 ;;9002226.02101,"1224,00071-0158-88 ",.01)
 ;;00071-0158-88
 ;;9002226.02101,"1224,00071-0158-88 ",.02)
 ;;00071-0158-88
 ;;9002226.02101,"1224,00071-0158-92 ",.01)
 ;;00071-0158-92
 ;;9002226.02101,"1224,00071-0158-92 ",.02)
 ;;00071-0158-92
 ;;9002226.02101,"1224,00074-3005-90 ",.01)
 ;;00074-3005-90
 ;;9002226.02101,"1224,00074-3005-90 ",.02)
 ;;00074-3005-90
 ;;9002226.02101,"1224,00074-3007-90 ",.01)
 ;;00074-3007-90
 ;;9002226.02101,"1224,00074-3007-90 ",.02)
 ;;00074-3007-90
 ;;9002226.02101,"1224,00074-3010-90 ",.01)
 ;;00074-3010-90
 ;;9002226.02101,"1224,00074-3010-90 ",.02)
 ;;00074-3010-90
 ;;9002226.02101,"1224,00074-3072-90 ",.01)
 ;;00074-3072-90
 ;;9002226.02101,"1224,00074-3072-90 ",.02)
 ;;00074-3072-90
 ;;9002226.02101,"1224,00074-3312-90 ",.01)
 ;;00074-3312-90
 ;;9002226.02101,"1224,00074-3312-90 ",.02)
 ;;00074-3312-90
 ;;9002226.02101,"1224,00074-3315-90 ",.01)
 ;;00074-3315-90
 ;;9002226.02101,"1224,00074-3315-90 ",.02)
 ;;00074-3315-90
 ;;9002226.02101,"1224,00074-3455-90 ",.01)
 ;;00074-3455-90
 ;;9002226.02101,"1224,00074-3455-90 ",.02)
 ;;00074-3455-90
 ;;9002226.02101,"1224,00074-3457-90 ",.01)
 ;;00074-3457-90
 ;;9002226.02101,"1224,00074-3457-90 ",.02)
 ;;00074-3457-90
 ;;9002226.02101,"1224,00074-3459-90 ",.01)
 ;;00074-3459-90
 ;;9002226.02101,"1224,00074-3459-90 ",.02)
 ;;00074-3459-90
 ;;9002226.02101,"1224,00078-0176-05 ",.01)
 ;;00078-0176-05