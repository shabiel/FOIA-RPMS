BGPM3ACS ;IHS/MSC/SAT-CREATED BY ^ATXSTX ON APR 21, 2011;
 ;;11.0;IHS CLINICAL REPORTING;**4**;JAN 06, 2011;Build 84
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"786,00677042505 ",.02)
 ;;00677042505
 ;;9002226.02101,"786,00677111101 ",.01)
 ;;00677111101
 ;;9002226.02101,"786,00677111101 ",.02)
 ;;00677111101
 ;;9002226.02101,"786,00677112601 ",.01)
 ;;00677112601
 ;;9002226.02101,"786,00677112601 ",.02)
 ;;00677112601
 ;;9002226.02101,"786,00677147306 ",.01)
 ;;00677147306
 ;;9002226.02101,"786,00677147306 ",.02)
 ;;00677147306
 ;;9002226.02101,"786,00719123410 ",.01)
 ;;00719123410
 ;;9002226.02101,"786,00719123410 ",.02)
 ;;00719123410
 ;;9002226.02101,"786,00761004920 ",.01)
 ;;00761004920
 ;;9002226.02101,"786,00761004920 ",.02)
 ;;00761004920
 ;;9002226.02101,"786,00761023920 ",.01)
 ;;00761023920
 ;;9002226.02101,"786,00761023920 ",.02)
 ;;00761023920
 ;;9002226.02101,"786,00761067720 ",.01)
 ;;00761067720
 ;;9002226.02101,"786,00761067720 ",.02)
 ;;00761067720
 ;;9002226.02101,"786,00779068725 ",.01)
 ;;00779068725
 ;;9002226.02101,"786,00779068725 ",.02)
 ;;00779068725
 ;;9002226.02101,"786,00779068730 ",.01)
 ;;00779068730
 ;;9002226.02101,"786,00779068730 ",.02)
 ;;00779068730
 ;;9002226.02101,"786,00781105605 ",.01)
 ;;00781105605
 ;;9002226.02101,"786,00781105605 ",.02)
 ;;00781105605
 ;;9002226.02101,"786,00781105660 ",.01)
 ;;00781105660
 ;;9002226.02101,"786,00781105660 ",.02)
 ;;00781105660
 ;;9002226.02101,"786,00781111601 ",.01)
 ;;00781111601
 ;;9002226.02101,"786,00781111601 ",.02)
 ;;00781111601
 ;;9002226.02101,"786,00781111610 ",.01)
 ;;00781111610
 ;;9002226.02101,"786,00781111610 ",.02)
 ;;00781111610
 ;;9002226.02101,"786,00781117201 ",.01)
 ;;00781117201
 ;;9002226.02101,"786,00781117201 ",.02)
 ;;00781117201
 ;;9002226.02101,"786,00781117210 ",.01)
 ;;00781117210
 ;;9002226.02101,"786,00781117210 ",.02)
 ;;00781117210
 ;;9002226.02101,"786,00781121010 ",.01)
 ;;00781121010
 ;;9002226.02101,"786,00781121010 ",.02)
 ;;00781121010
 ;;9002226.02101,"786,00781121013 ",.01)
 ;;00781121013
 ;;9002226.02101,"786,00781121013 ",.02)
 ;;00781121013
 ;;9002226.02101,"786,00781121060 ",.01)
 ;;00781121060
 ;;9002226.02101,"786,00781121060 ",.02)
 ;;00781121060
 ;;9002226.02101,"786,00781121310 ",.01)
 ;;00781121310
 ;;9002226.02101,"786,00781121310 ",.02)
 ;;00781121310
 ;;9002226.02101,"786,00781121313 ",.01)
 ;;00781121313
 ;;9002226.02101,"786,00781121313 ",.02)
 ;;00781121313
 ;;9002226.02101,"786,00781121360 ",.01)
 ;;00781121360
 ;;9002226.02101,"786,00781121360 ",.02)
 ;;00781121360
 ;;9002226.02101,"786,00781132305 ",.01)
 ;;00781132305
 ;;9002226.02101,"786,00781132305 ",.02)
 ;;00781132305
 ;;9002226.02101,"786,00781132313 ",.01)
 ;;00781132313
 ;;9002226.02101,"786,00781132313 ",.02)
 ;;00781132313
 ;;9002226.02101,"786,00781132360 ",.01)
 ;;00781132360
 ;;9002226.02101,"786,00781132360 ",.02)
 ;;00781132360
 ;;9002226.02101,"786,00781214901 ",.01)
 ;;00781214901
 ;;9002226.02101,"786,00781214901 ",.02)
 ;;00781214901
 ;;9002226.02101,"786,00781215901 ",.01)
 ;;00781215901
 ;;9002226.02101,"786,00781215901 ",.02)
 ;;00781215901
 ;;9002226.02101,"786,00781260001 ",.01)
 ;;00781260001
 ;;9002226.02101,"786,00781260001 ",.02)
 ;;00781260001
 ;;9002226.02101,"786,00781260010 ",.01)
 ;;00781260010
 ;;9002226.02101,"786,00781260010 ",.02)
 ;;00781260010
 ;;9002226.02101,"786,00781507031 ",.01)
 ;;00781507031
 ;;9002226.02101,"786,00781507031 ",.02)
 ;;00781507031
 ;;9002226.02101,"786,00781507092 ",.01)
 ;;00781507092
 ;;9002226.02101,"786,00781507092 ",.02)
 ;;00781507092
 ;;9002226.02101,"786,00781507131 ",.01)
 ;;00781507131
 ;;9002226.02101,"786,00781507131 ",.02)
 ;;00781507131
 ;;9002226.02101,"786,00781507192 ",.01)
 ;;00781507192
 ;;9002226.02101,"786,00781507192 ",.02)
 ;;00781507192
 ;;9002226.02101,"786,00781507231 ",.01)
 ;;00781507231
 ;;9002226.02101,"786,00781507231 ",.02)
 ;;00781507231
 ;;9002226.02101,"786,00781507292 ",.01)
 ;;00781507292
 ;;9002226.02101,"786,00781507292 ",.02)
 ;;00781507292
 ;;9002226.02101,"786,00781507331 ",.01)
 ;;00781507331
 ;;9002226.02101,"786,00781507331 ",.02)
 ;;00781507331
 ;;9002226.02101,"786,00781507392 ",.01)
 ;;00781507392
 ;;9002226.02101,"786,00781507392 ",.02)
 ;;00781507392
 ;;9002226.02101,"786,00781507431 ",.01)
 ;;00781507431
 ;;9002226.02101,"786,00781507431 ",.02)
 ;;00781507431
 ;;9002226.02101,"786,00781507492 ",.01)
 ;;00781507492
 ;;9002226.02101,"786,00781507492 ",.02)
 ;;00781507492
 ;;9002226.02101,"786,00814528014 ",.01)
 ;;00814528014
 ;;9002226.02101,"786,00814528014 ",.02)
 ;;00814528014
 ;;9002226.02101,"786,00814528214 ",.01)
 ;;00814528214
 ;;9002226.02101,"786,00814528214 ",.02)
 ;;00814528214
 ;;9002226.02101,"786,00814531020 ",.01)
 ;;00814531020
 ;;9002226.02101,"786,00814531020 ",.02)
 ;;00814531020
 ;;9002226.02101,"786,00814531030 ",.01)
 ;;00814531030
 ;;9002226.02101,"786,00814531030 ",.02)
 ;;00814531030
 ;;9002226.02101,"786,00814531330 ",.01)
 ;;00814531330
 ;;9002226.02101,"786,00814531330 ",.02)
 ;;00814531330
 ;;9002226.02101,"786,00814531630 ",.01)
 ;;00814531630
 ;;9002226.02101,"786,00814531630 ",.02)
 ;;00814531630
 ;;9002226.02101,"786,00814531914 ",.01)
 ;;00814531914
 ;;9002226.02101,"786,00814531914 ",.02)
 ;;00814531914
 ;;9002226.02101,"786,00832041300 ",.01)
 ;;00832041300
 ;;9002226.02101,"786,00832041300 ",.02)
 ;;00832041300
 ;;9002226.02101,"786,00839143106 ",.01)
 ;;00839143106
 ;;9002226.02101,"786,00839143106 ",.02)
 ;;00839143106
 ;;9002226.02101,"786,00839143206 ",.01)
 ;;00839143206
 ;;9002226.02101,"786,00839143206 ",.02)
 ;;00839143206
 ;;9002226.02101,"786,00839143216 ",.01)
 ;;00839143216
 ;;9002226.02101,"786,00839143216 ",.02)
 ;;00839143216
 ;;9002226.02101,"786,00839524106 ",.01)
 ;;00839524106
 ;;9002226.02101,"786,00839524106 ",.02)
 ;;00839524106
 ;;9002226.02101,"786,00839610306 ",.01)
 ;;00839610306
 ;;9002226.02101,"786,00839610306 ",.02)
 ;;00839610306
 ;;9002226.02101,"786,00839610316 ",.01)
 ;;00839610316
 ;;9002226.02101,"786,00839610316 ",.02)
 ;;00839610316
 ;;9002226.02101,"786,00839645806 ",.01)
 ;;00839645806
 ;;9002226.02101,"786,00839645806 ",.02)
 ;;00839645806
 ;;9002226.02101,"786,00839645816 ",.01)
 ;;00839645816
 ;;9002226.02101,"786,00839645816 ",.02)
 ;;00839645816
 ;;9002226.02101,"786,00839722806 ",.01)
 ;;00839722806
 ;;9002226.02101,"786,00839722806 ",.02)
 ;;00839722806
 ;;9002226.02101,"786,00839754606 ",.01)
 ;;00839754606
 ;;9002226.02101,"786,00839754606 ",.02)
 ;;00839754606
 ;;9002226.02101,"786,00839778705 ",.01)
 ;;00839778705
 ;;9002226.02101,"786,00839778705 ",.02)
 ;;00839778705
 ;;9002226.02101,"786,00839778712 ",.01)
 ;;00839778712
 ;;9002226.02101,"786,00839778712 ",.02)
 ;;00839778712
 ;;9002226.02101,"786,00855061030 ",.01)
 ;;00855061030
 ;;9002226.02101,"786,00855061030 ",.02)
 ;;00855061030
 ;;9002226.02101,"786,00855061130 ",.01)
 ;;00855061130
 ;;9002226.02101,"786,00855061130 ",.02)
 ;;00855061130
 ;;9002226.02101,"786,00879008201 ",.01)
 ;;00879008201
 ;;9002226.02101,"786,00879008201 ",.02)
 ;;00879008201
 ;;9002226.02101,"786,00879008210 ",.01)
 ;;00879008210
 ;;9002226.02101,"786,00879008210 ",.02)
 ;;00879008210
 ;;9002226.02101,"786,00879008251 ",.01)
 ;;00879008251
 ;;9002226.02101,"786,00879008251 ",.02)
 ;;00879008251
 ;;9002226.02101,"786,00892000101 ",.01)
 ;;00892000101
 ;;9002226.02101,"786,00892000101 ",.02)
 ;;00892000101
 ;;9002226.02101,"786,00892000105 ",.01)
 ;;00892000105
 ;;9002226.02101,"786,00892000105 ",.02)
 ;;00892000105
 ;;9002226.02101,"786,00892000110 ",.01)
 ;;00892000110
 ;;9002226.02101,"786,00892000110 ",.02)
 ;;00892000110
 ;;9002226.02101,"786,00904062860 ",.01)
 ;;00904062860
 ;;9002226.02101,"786,00904062860 ",.02)
 ;;00904062860
 ;;9002226.02101,"786,00904062880 ",.01)
 ;;00904062880
 ;;9002226.02101,"786,00904062880 ",.02)
 ;;00904062880
 ;;9002226.02101,"786,00904062970 ",.01)
 ;;00904062970
 ;;9002226.02101,"786,00904062970 ",.02)
 ;;00904062970
 ;;9002226.02101,"786,00904062980 ",.01)
 ;;00904062980
 ;;9002226.02101,"786,00904062980 ",.02)
 ;;00904062980
 ;;9002226.02101,"786,00904063160 ",.01)
 ;;00904063160
 ;;9002226.02101,"786,00904063160 ",.02)
 ;;00904063160
 ;;9002226.02101,"786,00904063180 ",.01)
 ;;00904063180
 ;;9002226.02101,"786,00904063180 ",.02)
 ;;00904063180
 ;;9002226.02101,"786,00904063360 ",.01)
 ;;00904063360
 ;;9002226.02101,"786,00904063360 ",.02)
 ;;00904063360
 ;;9002226.02101,"786,00904227060 ",.01)
 ;;00904227060
 ;;9002226.02101,"786,00904227060 ",.02)
 ;;00904227060
 ;;9002226.02101,"786,00904227080 ",.01)
 ;;00904227080
 ;;9002226.02101,"786,00904227080 ",.02)
 ;;00904227080
 ;;9002226.02101,"786,00904227160 ",.01)
 ;;00904227160
 ;;9002226.02101,"786,00904227160 ",.02)
 ;;00904227160
 ;;9002226.02101,"786,00904227172 ",.01)
 ;;00904227172
 ;;9002226.02101,"786,00904227172 ",.02)
 ;;00904227172
 ;;9002226.02101,"786,00904227180 ",.01)
 ;;00904227180
 ;;9002226.02101,"786,00904227180 ",.02)
 ;;00904227180
 ;;9002226.02101,"786,00904291660 ",.01)
 ;;00904291660
 ;;9002226.02101,"786,00904291660 ",.02)
 ;;00904291660
 ;;9002226.02101,"786,00904434260 ",.01)
 ;;00904434260
 ;;9002226.02101,"786,00904434260 ",.02)
 ;;00904434260
 ;;9002226.02101,"786,00904434270 ",.01)
 ;;00904434270
 ;;9002226.02101,"786,00904434270 ",.02)
 ;;00904434270
 ;;9002226.02101,"786,00904434760 ",.01)
 ;;00904434760
 ;;9002226.02101,"786,00904434760 ",.02)
 ;;00904434760
 ;;9002226.02101,"786,00904523442 ",.01)
 ;;00904523442
 ;;9002226.02101,"786,00904523442 ",.02)
 ;;00904523442
 ;;9002226.02101,"786,00904523452 ",.01)
 ;;00904523452
 ;;9002226.02101,"786,00904523452 ",.02)
 ;;00904523452
 ;;9002226.02101,"786,00904523542 ",.01)
 ;;00904523542
 ;;9002226.02101,"786,00904523542 ",.02)
 ;;00904523542
 ;;9002226.02101,"786,00904523552 ",.01)
 ;;00904523552
 ;;9002226.02101,"786,00904523552 ",.02)
 ;;00904523552
 ;;9002226.02101,"786,00904537940 ",.01)
 ;;00904537940
 ;;9002226.02101,"786,00904537940 ",.02)
 ;;00904537940
 ;;9002226.02101,"786,00904537952 ",.01)
 ;;00904537952
 ;;9002226.02101,"786,00904537952 ",.02)
 ;;00904537952
 ;;9002226.02101,"786,00904537960 ",.01)
 ;;00904537960
 ;;9002226.02101,"786,00904537960 ",.02)
 ;;00904537960
 ;;9002226.02101,"786,00904537961 ",.01)
 ;;00904537961
 ;;9002226.02101,"786,00904537961 ",.02)
 ;;00904537961
 ;;9002226.02101,"786,00904558152 ",.01)
 ;;00904558152
 ;;9002226.02101,"786,00904558152 ",.02)
 ;;00904558152
 ;;9002226.02101,"786,00904558161 ",.01)
 ;;00904558161
 ;;9002226.02101,"786,00904558161 ",.02)
 ;;00904558161
 ;;9002226.02101,"786,00904558252 ",.01)
 ;;00904558252
 ;;9002226.02101,"786,00904558252 ",.02)
 ;;00904558252
 ;;9002226.02101,"786,00904558261 ",.01)
 ;;00904558261
 ;;9002226.02101,"786,00904558261 ",.02)
 ;;00904558261
 ;;9002226.02101,"786,00904558352 ",.01)
 ;;00904558352
 ;;9002226.02101,"786,00904558352 ",.02)
 ;;00904558352
 ;;9002226.02101,"786,00904558361 ",.01)
 ;;00904558361
 ;;9002226.02101,"786,00904558361 ",.02)
 ;;00904558361
 ;;9002226.02101,"786,00904580061 ",.01)
 ;;00904580061
 ;;9002226.02101,"786,00904580061 ",.02)
 ;;00904580061
 ;;9002226.02101,"786,00904580161 ",.01)
 ;;00904580161
 ;;9002226.02101,"786,00904580161 ",.02)
 ;;00904580161
 ;;9002226.02101,"786,00904580261 ",.01)
 ;;00904580261
 ;;9002226.02101,"786,00904580261 ",.02)
 ;;00904580261
 ;;9002226.02101,"786,00904598840 ",.01)
 ;;00904598840
 ;;9002226.02101,"786,00904598840 ",.02)
 ;;00904598840
 ;;9002226.02101,"786,00904598852 ",.01)
 ;;00904598852
 ;;9002226.02101,"786,00904598852 ",.02)
 ;;00904598852
 ;;9002226.02101,"786,00904598861 ",.01)
 ;;00904598861