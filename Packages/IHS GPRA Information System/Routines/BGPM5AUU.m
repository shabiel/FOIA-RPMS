BGPM5AUU ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON AUG 29, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1033,00781579210 ",.02)
 ;;00781579210
 ;;9002226.02101,"1033,00781579220 ",.01)
 ;;00781579220
 ;;9002226.02101,"1033,00781579220 ",.02)
 ;;00781579220
 ;;9002226.02101,"1033,00781579250 ",.01)
 ;;00781579250
 ;;9002226.02101,"1033,00781579250 ",.02)
 ;;00781579250
 ;;9002226.02101,"1033,00781602246 ",.01)
 ;;00781602246
 ;;9002226.02101,"1033,00781602246 ",.02)
 ;;00781602246
 ;;9002226.02101,"1033,00781602252 ",.01)
 ;;00781602252
 ;;9002226.02101,"1033,00781602252 ",.02)
 ;;00781602252
 ;;9002226.02101,"1033,00781602346 ",.01)
 ;;00781602346
 ;;9002226.02101,"1033,00781602346 ",.02)
 ;;00781602346
 ;;9002226.02101,"1033,00781602352 ",.01)
 ;;00781602352
 ;;9002226.02101,"1033,00781602352 ",.02)
 ;;00781602352
 ;;9002226.02101,"1033,00781603446 ",.01)
 ;;00781603446
 ;;9002226.02101,"1033,00781603446 ",.02)
 ;;00781603446
 ;;9002226.02101,"1033,00781603455 ",.01)
 ;;00781603455
 ;;9002226.02101,"1033,00781603455 ",.02)
 ;;00781603455
 ;;9002226.02101,"1033,00781603458 ",.01)
 ;;00781603458
 ;;9002226.02101,"1033,00781603458 ",.02)
 ;;00781603458
 ;;9002226.02101,"1033,00781603846 ",.01)
 ;;00781603846
 ;;9002226.02101,"1033,00781603846 ",.02)
 ;;00781603846
 ;;9002226.02101,"1033,00781603855 ",.01)
 ;;00781603855
 ;;9002226.02101,"1033,00781603855 ",.02)
 ;;00781603855
 ;;9002226.02101,"1033,00781603858 ",.01)
 ;;00781603858
 ;;9002226.02101,"1033,00781603858 ",.02)
 ;;00781603858
 ;;9002226.02101,"1033,00781603946 ",.01)
 ;;00781603946
 ;;9002226.02101,"1033,00781603946 ",.02)
 ;;00781603946
 ;;9002226.02101,"1033,00781603955 ",.01)
 ;;00781603955
 ;;9002226.02101,"1033,00781603955 ",.02)
 ;;00781603955
 ;;9002226.02101,"1033,00781603958 ",.01)
 ;;00781603958
 ;;9002226.02101,"1033,00781603958 ",.02)
 ;;00781603958
 ;;9002226.02101,"1033,00781604105 ",.01)
 ;;00781604105
 ;;9002226.02101,"1033,00781604105 ",.02)
 ;;00781604105
 ;;9002226.02101,"1033,00781604106 ",.01)
 ;;00781604106
 ;;9002226.02101,"1033,00781604106 ",.02)
 ;;00781604106
 ;;9002226.02101,"1033,00781604108 ",.01)
 ;;00781604108
 ;;9002226.02101,"1033,00781604108 ",.02)
 ;;00781604108
 ;;9002226.02101,"1033,00781604146 ",.01)
 ;;00781604146
 ;;9002226.02101,"1033,00781604146 ",.02)
 ;;00781604146
 ;;9002226.02101,"1033,00781604155 ",.01)
 ;;00781604155
 ;;9002226.02101,"1033,00781604155 ",.02)
 ;;00781604155
 ;;9002226.02101,"1033,00781604158 ",.01)
 ;;00781604158
 ;;9002226.02101,"1033,00781604158 ",.02)
 ;;00781604158
 ;;9002226.02101,"1033,00781606316 ",.01)
 ;;00781606316
 ;;9002226.02101,"1033,00781606316 ",.02)
 ;;00781606316
 ;;9002226.02101,"1033,00781607746 ",.01)
 ;;00781607746
 ;;9002226.02101,"1033,00781607746 ",.02)
 ;;00781607746
 ;;9002226.02101,"1033,00781607761 ",.01)
 ;;00781607761
 ;;9002226.02101,"1033,00781607761 ",.02)
 ;;00781607761
 ;;9002226.02101,"1033,00781607846 ",.01)
 ;;00781607846
 ;;9002226.02101,"1033,00781607846 ",.02)
 ;;00781607846
 ;;9002226.02101,"1033,00781607861 ",.01)
 ;;00781607861
 ;;9002226.02101,"1033,00781607861 ",.02)
 ;;00781607861
 ;;9002226.02101,"1033,00781610246 ",.01)
 ;;00781610246
 ;;9002226.02101,"1033,00781610246 ",.02)
 ;;00781610246
 ;;9002226.02101,"1033,00781610446 ",.01)
 ;;00781610446
 ;;9002226.02101,"1033,00781610446 ",.02)
 ;;00781610446
 ;;9002226.02101,"1033,00781612046 ",.01)
 ;;00781612046
 ;;9002226.02101,"1033,00781612046 ",.02)
 ;;00781612046
 ;;9002226.02101,"1033,00781612048 ",.01)
 ;;00781612048
 ;;9002226.02101,"1033,00781612048 ",.02)
 ;;00781612048
 ;;9002226.02101,"1033,00781612146 ",.01)
 ;;00781612146
 ;;9002226.02101,"1033,00781612146 ",.02)
 ;;00781612146
 ;;9002226.02101,"1033,00781612148 ",.01)
 ;;00781612148
 ;;9002226.02101,"1033,00781612148 ",.02)
 ;;00781612148
 ;;9002226.02101,"1033,00781613494 ",.01)
 ;;00781613494
 ;;9002226.02101,"1033,00781613494 ",.02)
 ;;00781613494
 ;;9002226.02101,"1033,00781613495 ",.01)
 ;;00781613495
 ;;9002226.02101,"1033,00781613495 ",.02)
 ;;00781613495
 ;;9002226.02101,"1033,00781613594 ",.01)
 ;;00781613594
 ;;9002226.02101,"1033,00781613594 ",.02)
 ;;00781613594
 ;;9002226.02101,"1033,00781613595 ",.01)
 ;;00781613595
 ;;9002226.02101,"1033,00781613595 ",.02)
 ;;00781613595
 ;;9002226.02101,"1033,00781613694 ",.01)
 ;;00781613694
 ;;9002226.02101,"1033,00781613694 ",.02)
 ;;00781613694
 ;;9002226.02101,"1033,00781613948 ",.01)
 ;;00781613948
 ;;9002226.02101,"1033,00781613948 ",.02)
 ;;00781613948
 ;;9002226.02101,"1033,00781613954 ",.01)
 ;;00781613954
 ;;9002226.02101,"1033,00781613954 ",.02)
 ;;00781613954
 ;;9002226.02101,"1033,00781613957 ",.01)
 ;;00781613957
 ;;9002226.02101,"1033,00781613957 ",.02)
 ;;00781613957
 ;;9002226.02101,"1033,00781615394 ",.01)
 ;;00781615394
 ;;9002226.02101,"1033,00781615394 ",.02)
 ;;00781615394
 ;;9002226.02101,"1033,00781615395 ",.01)
 ;;00781615395
 ;;9002226.02101,"1033,00781615395 ",.02)
 ;;00781615395
 ;;9002226.02101,"1033,00781615397 ",.01)
 ;;00781615397
 ;;9002226.02101,"1033,00781615397 ",.02)
 ;;00781615397
 ;;9002226.02101,"1033,00781615646 ",.01)
 ;;00781615646
 ;;9002226.02101,"1033,00781615646 ",.02)
 ;;00781615646
 ;;9002226.02101,"1033,00781615652 ",.01)
 ;;00781615652
 ;;9002226.02101,"1033,00781615652 ",.02)
 ;;00781615652
 ;;9002226.02101,"1033,00781615657 ",.01)
 ;;00781615657
 ;;9002226.02101,"1033,00781615657 ",.02)
 ;;00781615657
 ;;9002226.02101,"1033,00781615746 ",.01)
 ;;00781615746
 ;;9002226.02101,"1033,00781615746 ",.02)
 ;;00781615746
 ;;9002226.02101,"1033,00781615752 ",.01)
 ;;00781615752
 ;;9002226.02101,"1033,00781615752 ",.02)
 ;;00781615752
 ;;9002226.02101,"1033,00781615757 ",.01)
 ;;00781615757
 ;;9002226.02101,"1033,00781615757 ",.02)
 ;;00781615757
 ;;9002226.02101,"1033,00781616846 ",.01)
 ;;00781616846
 ;;9002226.02101,"1033,00781616846 ",.02)
 ;;00781616846
 ;;9002226.02101,"1033,00781616852 ",.01)
 ;;00781616852
 ;;9002226.02101,"1033,00781616852 ",.02)
 ;;00781616852
 ;;9002226.02101,"1033,00781616946 ",.01)
 ;;00781616946
 ;;9002226.02101,"1033,00781616946 ",.02)
 ;;00781616946
 ;;9002226.02101,"1033,00781616952 ",.01)
 ;;00781616952
 ;;9002226.02101,"1033,00781616952 ",.02)
 ;;00781616952
 ;;9002226.02101,"1033,00781620246 ",.01)
 ;;00781620246
 ;;9002226.02101,"1033,00781620246 ",.02)
 ;;00781620246
 ;;9002226.02101,"1033,00781620257 ",.01)
 ;;00781620257
 ;;9002226.02101,"1033,00781620257 ",.02)
 ;;00781620257
 ;;9002226.02101,"1033,00781620291 ",.01)
 ;;00781620291
 ;;9002226.02101,"1033,00781620291 ",.02)
 ;;00781620291
 ;;9002226.02101,"1033,00781620346 ",.01)
 ;;00781620346
 ;;9002226.02101,"1033,00781620346 ",.02)
 ;;00781620346
 ;;9002226.02101,"1033,00781620357 ",.01)
 ;;00781620357
 ;;9002226.02101,"1033,00781620357 ",.02)
 ;;00781620357
 ;;9002226.02101,"1033,00781620391 ",.01)
 ;;00781620391
 ;;9002226.02101,"1033,00781620391 ",.02)
 ;;00781620391
 ;;9002226.02101,"1033,00781920696 ",.01)
 ;;00781920696
 ;;9002226.02101,"1033,00781920696 ",.02)
 ;;00781920696
 ;;9002226.02101,"1033,00781920795 ",.01)
 ;;00781920795
 ;;9002226.02101,"1033,00781920795 ",.02)
 ;;00781920795
 ;;9002226.02101,"1033,00781932685 ",.01)
 ;;00781932685
 ;;9002226.02101,"1033,00781932685 ",.02)
 ;;00781932685
 ;;9002226.02101,"1033,00781932695 ",.01)
 ;;00781932695
 ;;9002226.02101,"1033,00781932695 ",.02)
 ;;00781932695
 ;;9002226.02101,"1033,00781932785 ",.01)
 ;;00781932785
 ;;9002226.02101,"1033,00781932785 ",.02)
 ;;00781932785
 ;;9002226.02101,"1033,00781932795 ",.01)
 ;;00781932795
 ;;9002226.02101,"1033,00781932795 ",.02)
 ;;00781932795
 ;;9002226.02101,"1033,00781932885 ",.01)
 ;;00781932885
 ;;9002226.02101,"1033,00781932885 ",.02)
 ;;00781932885
 ;;9002226.02101,"1033,00781932895 ",.01)
 ;;00781932895
 ;;9002226.02101,"1033,00781932895 ",.02)
 ;;00781932895
 ;;9002226.02101,"1033,00781932990 ",.01)
 ;;00781932990
 ;;9002226.02101,"1033,00781932990 ",.02)
 ;;00781932990
 ;;9002226.02101,"1033,00781932995 ",.01)
 ;;00781932995
 ;;9002226.02101,"1033,00781932995 ",.02)
 ;;00781932995
 ;;9002226.02101,"1033,00781933046 ",.01)
 ;;00781933046
 ;;9002226.02101,"1033,00781933046 ",.02)
 ;;00781933046
 ;;9002226.02101,"1033,00781933746 ",.01)
 ;;00781933746
 ;;9002226.02101,"1033,00781933746 ",.02)
 ;;00781933746
 ;;9002226.02101,"1033,00781933795 ",.01)
 ;;00781933795
 ;;9002226.02101,"1033,00781933795 ",.02)
 ;;00781933795
 ;;9002226.02101,"1033,00781933885 ",.01)
 ;;00781933885
 ;;9002226.02101,"1033,00781933885 ",.02)
 ;;00781933885
 ;;9002226.02101,"1033,00781933895 ",.01)
 ;;00781933895
 ;;9002226.02101,"1033,00781933895 ",.02)
 ;;00781933895
 ;;9002226.02101,"1033,00781933985 ",.01)
 ;;00781933985
 ;;9002226.02101,"1033,00781933985 ",.02)
 ;;00781933985
 ;;9002226.02101,"1033,00781933996 ",.01)
 ;;00781933996
 ;;9002226.02101,"1033,00781933996 ",.02)
 ;;00781933996
 ;;9002226.02101,"1033,00781936301 ",.01)
 ;;00781936301
 ;;9002226.02101,"1033,00781936301 ",.02)
 ;;00781936301
 ;;9002226.02101,"1033,00781936305 ",.01)
 ;;00781936305
 ;;9002226.02101,"1033,00781936305 ",.02)
 ;;00781936305
 ;;9002226.02101,"1033,00781940178 ",.01)
 ;;00781940178
 ;;9002226.02101,"1033,00781940178 ",.02)
 ;;00781940178
 ;;9002226.02101,"1033,00781940195 ",.01)
 ;;00781940195
 ;;9002226.02101,"1033,00781940195 ",.02)
 ;;00781940195
 ;;9002226.02101,"1033,00781940278 ",.01)
 ;;00781940278
 ;;9002226.02101,"1033,00781940278 ",.02)
 ;;00781940278
 ;;9002226.02101,"1033,00781940295 ",.01)
 ;;00781940295
 ;;9002226.02101,"1033,00781940295 ",.02)
 ;;00781940295
 ;;9002226.02101,"1033,00781940485 ",.01)
 ;;00781940485
 ;;9002226.02101,"1033,00781940485 ",.02)
 ;;00781940485
 ;;9002226.02101,"1033,00781940495 ",.01)
 ;;00781940495
 ;;9002226.02101,"1033,00781940495 ",.02)
 ;;00781940495
 ;;9002226.02101,"1033,00781940778 ",.01)
 ;;00781940778
 ;;9002226.02101,"1033,00781940778 ",.02)
 ;;00781940778
 ;;9002226.02101,"1033,00781940795 ",.01)
 ;;00781940795
 ;;9002226.02101,"1033,00781940795 ",.02)
 ;;00781940795
 ;;9002226.02101,"1033,00781940880 ",.01)
 ;;00781940880
 ;;9002226.02101,"1033,00781940880 ",.02)
 ;;00781940880
 ;;9002226.02101,"1033,00781940895 ",.01)
 ;;00781940895
 ;;9002226.02101,"1033,00781940895 ",.02)
 ;;00781940895
 ;;9002226.02101,"1033,00781940946 ",.01)
 ;;00781940946
 ;;9002226.02101,"1033,00781940946 ",.02)
 ;;00781940946
 ;;9002226.02101,"1033,00781940995 ",.01)
 ;;00781940995
 ;;9002226.02101,"1033,00781940995 ",.02)
 ;;00781940995
 ;;9002226.02101,"1033,00781941215 ",.01)
 ;;00781941215
 ;;9002226.02101,"1033,00781941215 ",.02)
 ;;00781941215
 ;;9002226.02101,"1033,00781941292 ",.01)
 ;;00781941292
 ;;9002226.02101,"1033,00781941292 ",.02)
 ;;00781941292
 ;;9002226.02101,"1033,00781941315 ",.01)
 ;;00781941315
 ;;9002226.02101,"1033,00781941315 ",.02)
 ;;00781941315
 ;;9002226.02101,"1033,00781941392 ",.01)
 ;;00781941392
 ;;9002226.02101,"1033,00781941392 ",.02)
 ;;00781941392
 ;;9002226.02101,"1033,00781945170 ",.01)
 ;;00781945170
 ;;9002226.02101,"1033,00781945170 ",.02)
 ;;00781945170
 ;;9002226.02101,"1033,00781945195 ",.01)
 ;;00781945195
 ;;9002226.02101,"1033,00781945195 ",.02)
 ;;00781945195
 ;;9002226.02101,"1033,00781945196 ",.01)
 ;;00781945196
 ;;9002226.02101,"1033,00781945196 ",.02)
 ;;00781945196
 ;;9002226.02101,"1033,00781945246 ",.01)
 ;;00781945246
 ;;9002226.02101,"1033,00781945246 ",.02)
 ;;00781945246
 ;;9002226.02101,"1033,00781945295 ",.01)
 ;;00781945295
 ;;9002226.02101,"1033,00781945295 ",.02)
 ;;00781945295
 ;;9002226.02101,"1033,00904042751 ",.01)
 ;;00904042751
 ;;9002226.02101,"1033,00904042751 ",.02)
 ;;00904042751