BGP61L9 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1876,00049-1560-66 ",.01)
 ;;00049-1560-66
 ;;9002226.02101,"1876,00049-1560-66 ",.02)
 ;;00049-1560-66
 ;;9002226.02101,"1876,00049-1560-73 ",.01)
 ;;00049-1560-73
 ;;9002226.02101,"1876,00049-1560-73 ",.02)
 ;;00049-1560-73
 ;;9002226.02101,"1876,00049-1620-30 ",.01)
 ;;00049-1620-30
 ;;9002226.02101,"1876,00049-1620-30 ",.02)
 ;;00049-1620-30
 ;;9002226.02101,"1876,00049-4110-66 ",.01)
 ;;00049-4110-66
 ;;9002226.02101,"1876,00049-4110-66 ",.02)
 ;;00049-4110-66
 ;;9002226.02101,"1876,00049-4120-66 ",.01)
 ;;00049-4120-66
 ;;9002226.02101,"1876,00049-4120-66 ",.02)
 ;;00049-4120-66
 ;;9002226.02101,"1876,00078-0351-05 ",.01)
 ;;00078-0351-05
 ;;9002226.02101,"1876,00078-0351-05 ",.02)
 ;;00078-0351-05
 ;;9002226.02101,"1876,00078-0352-05 ",.01)
 ;;00078-0352-05
 ;;9002226.02101,"1876,00078-0352-05 ",.02)
 ;;00078-0352-05
 ;;9002226.02101,"1876,00087-6060-05 ",.01)
 ;;00087-6060-05
 ;;9002226.02101,"1876,00087-6060-05 ",.02)
 ;;00087-6060-05
 ;;9002226.02101,"1876,00087-6060-10 ",.01)
 ;;00087-6060-10
 ;;9002226.02101,"1876,00087-6060-10 ",.02)
 ;;00087-6060-10
 ;;9002226.02101,"1876,00087-6063-13 ",.01)
 ;;00087-6063-13
 ;;9002226.02101,"1876,00087-6063-13 ",.02)
 ;;00087-6063-13
 ;;9002226.02101,"1876,00087-6064-13 ",.01)
 ;;00087-6064-13
 ;;9002226.02101,"1876,00087-6064-13 ",.02)
 ;;00087-6064-13
 ;;9002226.02101,"1876,00087-6070-05 ",.01)
 ;;00087-6070-05
 ;;9002226.02101,"1876,00087-6070-05 ",.02)
 ;;00087-6070-05
 ;;9002226.02101,"1876,00087-6071-11 ",.01)
 ;;00087-6071-11
 ;;9002226.02101,"1876,00087-6071-11 ",.02)
 ;;00087-6071-11
 ;;9002226.02101,"1876,00087-6072-11 ",.01)
 ;;00087-6072-11
 ;;9002226.02101,"1876,00087-6072-11 ",.02)
 ;;00087-6072-11
 ;;9002226.02101,"1876,00087-6073-11 ",.01)
 ;;00087-6073-11
 ;;9002226.02101,"1876,00087-6073-11 ",.02)
 ;;00087-6073-11
 ;;9002226.02101,"1876,00087-6074-11 ",.01)
 ;;00087-6074-11
 ;;9002226.02101,"1876,00087-6074-11 ",.02)
 ;;00087-6074-11
 ;;9002226.02101,"1876,00093-1048-01 ",.01)
 ;;00093-1048-01
 ;;9002226.02101,"1876,00093-1048-01 ",.02)
 ;;00093-1048-01
 ;;9002226.02101,"1876,00093-1048-10 ",.01)
 ;;00093-1048-10
 ;;9002226.02101,"1876,00093-1048-10 ",.02)
 ;;00093-1048-10
 ;;9002226.02101,"1876,00093-1048-19 ",.01)
 ;;00093-1048-19
 ;;9002226.02101,"1876,00093-1048-19 ",.02)
 ;;00093-1048-19
 ;;9002226.02101,"1876,00093-1048-93 ",.01)
 ;;00093-1048-93
 ;;9002226.02101,"1876,00093-1048-93 ",.02)
 ;;00093-1048-93
 ;;9002226.02101,"1876,00093-1048-98 ",.01)
 ;;00093-1048-98
 ;;9002226.02101,"1876,00093-1048-98 ",.02)
 ;;00093-1048-98
 ;;9002226.02101,"1876,00093-1049-01 ",.01)
 ;;00093-1049-01
 ;;9002226.02101,"1876,00093-1049-01 ",.02)
 ;;00093-1049-01
 ;;9002226.02101,"1876,00093-1049-10 ",.01)
 ;;00093-1049-10
 ;;9002226.02101,"1876,00093-1049-10 ",.02)
 ;;00093-1049-10
 ;;9002226.02101,"1876,00093-1049-98 ",.01)
 ;;00093-1049-98
 ;;9002226.02101,"1876,00093-1049-98 ",.02)
 ;;00093-1049-98
 ;;9002226.02101,"1876,00093-2046-05 ",.01)
 ;;00093-2046-05
 ;;9002226.02101,"1876,00093-2046-05 ",.02)
 ;;00093-2046-05
 ;;9002226.02101,"1876,00093-2046-56 ",.01)
 ;;00093-2046-56
 ;;9002226.02101,"1876,00093-2046-56 ",.02)
 ;;00093-2046-56
 ;;9002226.02101,"1876,00093-2046-98 ",.01)
 ;;00093-2046-98
 ;;9002226.02101,"1876,00093-2046-98 ",.02)
 ;;00093-2046-98
 ;;9002226.02101,"1876,00093-2047-05 ",.01)
 ;;00093-2047-05
 ;;9002226.02101,"1876,00093-2047-05 ",.02)
 ;;00093-2047-05
 ;;9002226.02101,"1876,00093-2047-56 ",.01)
 ;;00093-2047-56
 ;;9002226.02101,"1876,00093-2047-56 ",.02)
 ;;00093-2047-56
 ;;9002226.02101,"1876,00093-2047-98 ",.01)
 ;;00093-2047-98
 ;;9002226.02101,"1876,00093-2047-98 ",.02)
 ;;00093-2047-98
 ;;9002226.02101,"1876,00093-2048-05 ",.01)
 ;;00093-2048-05
 ;;9002226.02101,"1876,00093-2048-05 ",.02)
 ;;00093-2048-05
 ;;9002226.02101,"1876,00093-2048-56 ",.01)
 ;;00093-2048-56
 ;;9002226.02101,"1876,00093-2048-56 ",.02)
 ;;00093-2048-56
 ;;9002226.02101,"1876,00093-2048-98 ",.01)
 ;;00093-2048-98
 ;;9002226.02101,"1876,00093-2048-98 ",.02)
 ;;00093-2048-98
 ;;9002226.02101,"1876,00093-5049-06 ",.01)
 ;;00093-5049-06
 ;;9002226.02101,"1876,00093-5049-06 ",.02)
 ;;00093-5049-06
 ;;9002226.02101,"1876,00093-5049-86 ",.01)
 ;;00093-5049-86
 ;;9002226.02101,"1876,00093-5049-86 ",.02)
 ;;00093-5049-86
 ;;9002226.02101,"1876,00093-5050-06 ",.01)
 ;;00093-5050-06
 ;;9002226.02101,"1876,00093-5050-06 ",.02)
 ;;00093-5050-06
 ;;9002226.02101,"1876,00093-5050-86 ",.01)
 ;;00093-5050-86
 ;;9002226.02101,"1876,00093-5050-86 ",.02)
 ;;00093-5050-86
 ;;9002226.02101,"1876,00093-5710-01 ",.01)
 ;;00093-5710-01
 ;;9002226.02101,"1876,00093-5710-01 ",.02)
 ;;00093-5710-01
 ;;9002226.02101,"1876,00093-5710-05 ",.01)
 ;;00093-5710-05
 ;;9002226.02101,"1876,00093-5710-05 ",.02)
 ;;00093-5710-05
 ;;9002226.02101,"1876,00093-5710-19 ",.01)
 ;;00093-5710-19
 ;;9002226.02101,"1876,00093-5710-19 ",.02)
 ;;00093-5710-19
 ;;9002226.02101,"1876,00093-5710-93 ",.01)
 ;;00093-5710-93
 ;;9002226.02101,"1876,00093-5710-93 ",.02)
 ;;00093-5710-93
 ;;9002226.02101,"1876,00093-5711-01 ",.01)
 ;;00093-5711-01
 ;;9002226.02101,"1876,00093-5711-01 ",.02)
 ;;00093-5711-01
 ;;9002226.02101,"1876,00093-5711-05 ",.01)
 ;;00093-5711-05
 ;;9002226.02101,"1876,00093-5711-05 ",.02)
 ;;00093-5711-05
 ;;9002226.02101,"1876,00093-5711-19 ",.01)
 ;;00093-5711-19
 ;;9002226.02101,"1876,00093-5711-19 ",.02)
 ;;00093-5711-19
 ;;9002226.02101,"1876,00093-5711-93 ",.01)
 ;;00093-5711-93
 ;;9002226.02101,"1876,00093-5711-93 ",.02)
 ;;00093-5711-93
 ;;9002226.02101,"1876,00093-5712-01 ",.01)
 ;;00093-5712-01
 ;;9002226.02101,"1876,00093-5712-01 ",.02)
 ;;00093-5712-01
 ;;9002226.02101,"1876,00093-5712-05 ",.01)
 ;;00093-5712-05
 ;;9002226.02101,"1876,00093-5712-05 ",.02)
 ;;00093-5712-05
 ;;9002226.02101,"1876,00093-5712-19 ",.01)
 ;;00093-5712-19
 ;;9002226.02101,"1876,00093-5712-19 ",.02)
 ;;00093-5712-19
 ;;9002226.02101,"1876,00093-5712-93 ",.01)
 ;;00093-5712-93
 ;;9002226.02101,"1876,00093-5712-93 ",.02)
 ;;00093-5712-93
 ;;9002226.02101,"1876,00093-7212-01 ",.01)
 ;;00093-7212-01
 ;;9002226.02101,"1876,00093-7212-01 ",.02)
 ;;00093-7212-01
 ;;9002226.02101,"1876,00093-7214-01 ",.01)
 ;;00093-7214-01
 ;;9002226.02101,"1876,00093-7214-01 ",.02)
 ;;00093-7214-01
 ;;9002226.02101,"1876,00093-7214-10 ",.01)
 ;;00093-7214-10
 ;;9002226.02101,"1876,00093-7214-10 ",.02)
 ;;00093-7214-10
 ;;9002226.02101,"1876,00093-7214-98 ",.01)
 ;;00093-7214-98
 ;;9002226.02101,"1876,00093-7214-98 ",.02)
 ;;00093-7214-98
 ;;9002226.02101,"1876,00093-7254-01 ",.01)
 ;;00093-7254-01
 ;;9002226.02101,"1876,00093-7254-01 ",.02)
 ;;00093-7254-01
 ;;9002226.02101,"1876,00093-7255-01 ",.01)
 ;;00093-7255-01
 ;;9002226.02101,"1876,00093-7255-01 ",.02)
 ;;00093-7255-01
 ;;9002226.02101,"1876,00093-7256-01 ",.01)
 ;;00093-7256-01
 ;;9002226.02101,"1876,00093-7256-01 ",.02)
 ;;00093-7256-01
 ;;9002226.02101,"1876,00093-7256-52 ",.01)
 ;;00093-7256-52
 ;;9002226.02101,"1876,00093-7256-52 ",.02)
 ;;00093-7256-52
 ;;9002226.02101,"1876,00093-7261-05 ",.01)
 ;;00093-7261-05
 ;;9002226.02101,"1876,00093-7261-05 ",.02)
 ;;00093-7261-05
 ;;9002226.02101,"1876,00093-7262-05 ",.01)
 ;;00093-7262-05
 ;;9002226.02101,"1876,00093-7262-05 ",.02)
 ;;00093-7262-05
 ;;9002226.02101,"1876,00093-7267-01 ",.01)
 ;;00093-7267-01
 ;;9002226.02101,"1876,00093-7267-01 ",.02)
 ;;00093-7267-01
 ;;9002226.02101,"1876,00093-7267-10 ",.01)
 ;;00093-7267-10
 ;;9002226.02101,"1876,00093-7267-10 ",.02)
 ;;00093-7267-10
 ;;9002226.02101,"1876,00093-7271-05 ",.01)
 ;;00093-7271-05
 ;;9002226.02101,"1876,00093-7271-05 ",.02)
 ;;00093-7271-05
 ;;9002226.02101,"1876,00093-7271-56 ",.01)
 ;;00093-7271-56
 ;;9002226.02101,"1876,00093-7271-56 ",.02)
 ;;00093-7271-56
 ;;9002226.02101,"1876,00093-7271-98 ",.01)
 ;;00093-7271-98
 ;;9002226.02101,"1876,00093-7271-98 ",.02)
 ;;00093-7271-98
 ;;9002226.02101,"1876,00093-7272-05 ",.01)
 ;;00093-7272-05
 ;;9002226.02101,"1876,00093-7272-05 ",.02)
 ;;00093-7272-05
 ;;9002226.02101,"1876,00093-7272-56 ",.01)
 ;;00093-7272-56
 ;;9002226.02101,"1876,00093-7272-56 ",.02)
 ;;00093-7272-56
 ;;9002226.02101,"1876,00093-7272-98 ",.01)
 ;;00093-7272-98
 ;;9002226.02101,"1876,00093-7272-98 ",.02)
 ;;00093-7272-98
 ;;9002226.02101,"1876,00093-7455-01 ",.01)
 ;;00093-7455-01
 ;;9002226.02101,"1876,00093-7455-01 ",.02)
 ;;00093-7455-01
 ;;9002226.02101,"1876,00093-7456-01 ",.01)
 ;;00093-7456-01
 ;;9002226.02101,"1876,00093-7456-01 ",.02)
 ;;00093-7456-01
 ;;9002226.02101,"1876,00093-7457-01 ",.01)
 ;;00093-7457-01
 ;;9002226.02101,"1876,00093-7457-01 ",.02)
 ;;00093-7457-01
 ;;9002226.02101,"1876,00093-7677-06 ",.01)
 ;;00093-7677-06
 ;;9002226.02101,"1876,00093-7677-06 ",.02)
 ;;00093-7677-06
 ;;9002226.02101,"1876,00093-7677-86 ",.01)
 ;;00093-7677-86
 ;;9002226.02101,"1876,00093-7677-86 ",.02)
 ;;00093-7677-86
 ;;9002226.02101,"1876,00093-7678-06 ",.01)
 ;;00093-7678-06
 ;;9002226.02101,"1876,00093-7678-06 ",.02)
 ;;00093-7678-06
 ;;9002226.02101,"1876,00093-7678-86 ",.01)
 ;;00093-7678-86
 ;;9002226.02101,"1876,00093-7678-86 ",.02)
 ;;00093-7678-86
 ;;9002226.02101,"1876,00093-8034-01 ",.01)
 ;;00093-8034-01
 ;;9002226.02101,"1876,00093-8034-01 ",.02)
 ;;00093-8034-01
 ;;9002226.02101,"1876,00093-8035-01 ",.01)
 ;;00093-8035-01
 ;;9002226.02101,"1876,00093-8035-01 ",.02)
 ;;00093-8035-01
 ;;9002226.02101,"1876,00093-8035-05 ",.01)
 ;;00093-8035-05
 ;;9002226.02101,"1876,00093-8035-05 ",.02)
 ;;00093-8035-05
 ;;9002226.02101,"1876,00093-8036-01 ",.01)
 ;;00093-8036-01
 ;;9002226.02101,"1876,00093-8036-01 ",.02)
 ;;00093-8036-01
 ;;9002226.02101,"1876,00093-8342-01 ",.01)
 ;;00093-8342-01
 ;;9002226.02101,"1876,00093-8342-01 ",.02)
 ;;00093-8342-01
 ;;9002226.02101,"1876,00093-8343-01 ",.01)
 ;;00093-8343-01
 ;;9002226.02101,"1876,00093-8343-01 ",.02)
 ;;00093-8343-01
 ;;9002226.02101,"1876,00093-8343-05 ",.01)
 ;;00093-8343-05
 ;;9002226.02101,"1876,00093-8343-05 ",.02)
 ;;00093-8343-05
 ;;9002226.02101,"1876,00093-8343-10 ",.01)
 ;;00093-8343-10
 ;;9002226.02101,"1876,00093-8343-10 ",.02)
 ;;00093-8343-10
 ;;9002226.02101,"1876,00093-8343-98 ",.01)
 ;;00093-8343-98
 ;;9002226.02101,"1876,00093-8343-98 ",.02)
 ;;00093-8343-98
 ;;9002226.02101,"1876,00093-8344-01 ",.01)
 ;;00093-8344-01
 ;;9002226.02101,"1876,00093-8344-01 ",.02)
 ;;00093-8344-01
 ;;9002226.02101,"1876,00093-8344-05 ",.01)
 ;;00093-8344-05
 ;;9002226.02101,"1876,00093-8344-05 ",.02)
 ;;00093-8344-05
 ;;9002226.02101,"1876,00093-8344-10 ",.01)
 ;;00093-8344-10
 ;;9002226.02101,"1876,00093-8344-10 ",.02)
 ;;00093-8344-10
 ;;9002226.02101,"1876,00093-8344-19 ",.01)
 ;;00093-8344-19
 ;;9002226.02101,"1876,00093-8344-19 ",.02)
 ;;00093-8344-19
 ;;9002226.02101,"1876,00093-8344-93 ",.01)
 ;;00093-8344-93
 ;;9002226.02101,"1876,00093-8344-93 ",.02)
 ;;00093-8344-93
 ;;9002226.02101,"1876,00093-8344-98 ",.01)
 ;;00093-8344-98
 ;;9002226.02101,"1876,00093-8344-98 ",.02)
 ;;00093-8344-98
 ;;9002226.02101,"1876,00093-9364-01 ",.01)
 ;;00093-9364-01
 ;;9002226.02101,"1876,00093-9364-01 ",.02)
 ;;00093-9364-01
 ;;9002226.02101,"1876,00093-9364-05 ",.01)
 ;;00093-9364-05
 ;;9002226.02101,"1876,00093-9364-05 ",.02)
 ;;00093-9364-05
 ;;9002226.02101,"1876,00093-9364-10 ",.01)
 ;;00093-9364-10
 ;;9002226.02101,"1876,00093-9364-10 ",.02)
 ;;00093-9364-10
 ;;9002226.02101,"1876,00093-9433-01 ",.01)
 ;;00093-9433-01
 ;;9002226.02101,"1876,00093-9433-01 ",.02)
 ;;00093-9433-01
 ;;9002226.02101,"1876,00093-9433-05 ",.01)
 ;;00093-9433-05
 ;;9002226.02101,"1876,00093-9433-05 ",.02)
 ;;00093-9433-05
 ;;9002226.02101,"1876,00093-9477-53 ",.01)
 ;;00093-9477-53
 ;;9002226.02101,"1876,00093-9477-53 ",.02)
 ;;00093-9477-53
 ;;9002226.02101,"1876,00143-9918-01 ",.01)
 ;;00143-9918-01
 ;;9002226.02101,"1876,00143-9918-01 ",.02)
 ;;00143-9918-01
 ;;9002226.02101,"1876,00143-9919-01 ",.01)
 ;;00143-9919-01
 ;;9002226.02101,"1876,00143-9919-01 ",.02)
 ;;00143-9919-01
 ;;9002226.02101,"1876,00143-9919-05 ",.01)
 ;;00143-9919-05
 ;;9002226.02101,"1876,00143-9919-05 ",.02)
 ;;00143-9919-05
 ;;9002226.02101,"1876,00143-9920-01 ",.01)
 ;;00143-9920-01
 ;;9002226.02101,"1876,00143-9920-01 ",.02)
 ;;00143-9920-01
 ;;9002226.02101,"1876,00143-9920-05 ",.01)
 ;;00143-9920-05
 ;;9002226.02101,"1876,00143-9920-05 ",.02)
 ;;00143-9920-05
 ;;9002226.02101,"1876,00143-9920-10 ",.01)
 ;;00143-9920-10
 ;;9002226.02101,"1876,00143-9920-10 ",.02)
 ;;00143-9920-10
 ;;9002226.02101,"1876,00169-0081-81 ",.01)
 ;;00169-0081-81
 ;;9002226.02101,"1876,00169-0081-81 ",.02)
 ;;00169-0081-81