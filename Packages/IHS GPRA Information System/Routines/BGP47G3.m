BGP47G3 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 16, 2014;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"558,60505-3573-03 ",.01)
 ;;60505-3573-03
 ;;9002226.02101,"558,60505-3573-03 ",.02)
 ;;60505-3573-03
 ;;9002226.02101,"558,60505-3573-08 ",.01)
 ;;60505-3573-08
 ;;9002226.02101,"558,60505-3573-08 ",.02)
 ;;60505-3573-08
 ;;9002226.02101,"558,60505-3573-09 ",.01)
 ;;60505-3573-09
 ;;9002226.02101,"558,60505-3573-09 ",.02)
 ;;60505-3573-09
 ;;9002226.02101,"558,60505-3574-03 ",.01)
 ;;60505-3574-03
 ;;9002226.02101,"558,60505-3574-03 ",.02)
 ;;60505-3574-03
 ;;9002226.02101,"558,60505-3574-08 ",.01)
 ;;60505-3574-08
 ;;9002226.02101,"558,60505-3574-08 ",.02)
 ;;60505-3574-08
 ;;9002226.02101,"558,60505-3574-09 ",.01)
 ;;60505-3574-09
 ;;9002226.02101,"558,60505-3574-09 ",.02)
 ;;60505-3574-09
 ;;9002226.02101,"558,62175-0204-32 ",.01)
 ;;62175-0204-32
 ;;9002226.02101,"558,62175-0204-32 ",.02)
 ;;62175-0204-32
 ;;9002226.02101,"558,62175-0204-43 ",.01)
 ;;62175-0204-43
 ;;9002226.02101,"558,62175-0204-43 ",.02)
 ;;62175-0204-43
 ;;9002226.02101,"558,62175-0204-46 ",.01)
 ;;62175-0204-46
 ;;9002226.02101,"558,62175-0204-46 ",.02)
 ;;62175-0204-46
 ;;9002226.02101,"558,62175-0205-32 ",.01)
 ;;62175-0205-32
 ;;9002226.02101,"558,62175-0205-32 ",.02)
 ;;62175-0205-32
 ;;9002226.02101,"558,62175-0205-43 ",.01)
 ;;62175-0205-43
 ;;9002226.02101,"558,62175-0205-43 ",.02)
 ;;62175-0205-43
 ;;9002226.02101,"558,62175-0205-46 ",.01)
 ;;62175-0205-46
 ;;9002226.02101,"558,62175-0205-46 ",.02)
 ;;62175-0205-46
 ;;9002226.02101,"558,62175-0210-32 ",.01)
 ;;62175-0210-32
 ;;9002226.02101,"558,62175-0210-32 ",.02)
 ;;62175-0210-32
 ;;9002226.02101,"558,62175-0210-46 ",.01)
 ;;62175-0210-46
 ;;9002226.02101,"558,62175-0210-46 ",.02)
 ;;62175-0210-46
 ;;9002226.02101,"558,63629-1639-01 ",.01)
 ;;63629-1639-01
 ;;9002226.02101,"558,63629-1639-01 ",.02)
 ;;63629-1639-01
 ;;9002226.02101,"558,65862-0567-05 ",.01)
 ;;65862-0567-05
 ;;9002226.02101,"558,65862-0567-05 ",.02)
 ;;65862-0567-05
 ;;9002226.02101,"558,65862-0567-30 ",.01)
 ;;65862-0567-30
 ;;9002226.02101,"558,65862-0567-30 ",.02)
 ;;65862-0567-30
 ;;9002226.02101,"558,65862-0567-90 ",.01)
 ;;65862-0567-90
 ;;9002226.02101,"558,65862-0567-90 ",.02)
 ;;65862-0567-90
 ;;9002226.02101,"558,65862-0568-05 ",.01)
 ;;65862-0568-05
 ;;9002226.02101,"558,65862-0568-05 ",.02)
 ;;65862-0568-05
 ;;9002226.02101,"558,65862-0568-30 ",.01)
 ;;65862-0568-30
 ;;9002226.02101,"558,65862-0568-30 ",.02)
 ;;65862-0568-30
 ;;9002226.02101,"558,65862-0568-90 ",.01)
 ;;65862-0568-90
 ;;9002226.02101,"558,65862-0568-90 ",.02)
 ;;65862-0568-90
 ;;9002226.02101,"558,65862-0574-19 ",.01)
 ;;65862-0574-19
 ;;9002226.02101,"558,65862-0574-19 ",.02)
 ;;65862-0574-19
 ;;9002226.02101,"558,65862-0574-30 ",.01)
 ;;65862-0574-30
 ;;9002226.02101,"558,65862-0574-30 ",.02)
 ;;65862-0574-30
 ;;9002226.02101,"558,65862-0574-90 ",.01)
 ;;65862-0574-90
 ;;9002226.02101,"558,65862-0574-90 ",.02)
 ;;65862-0574-90
 ;;9002226.02101,"558,66105-0164-02 ",.01)
 ;;66105-0164-02
 ;;9002226.02101,"558,66105-0164-02 ",.02)
 ;;66105-0164-02
 ;;9002226.02101,"558,66105-0164-03 ",.01)
 ;;66105-0164-03
 ;;9002226.02101,"558,66105-0164-03 ",.02)
 ;;66105-0164-03
 ;;9002226.02101,"558,66105-0164-06 ",.01)
 ;;66105-0164-06
 ;;9002226.02101,"558,66105-0164-06 ",.02)
 ;;66105-0164-06
 ;;9002226.02101,"558,66105-0164-09 ",.01)
 ;;66105-0164-09
 ;;9002226.02101,"558,66105-0164-09 ",.02)
 ;;66105-0164-09
 ;;9002226.02101,"558,66105-0164-10 ",.01)
 ;;66105-0164-10
 ;;9002226.02101,"558,66105-0164-10 ",.02)
 ;;66105-0164-10
 ;;9002226.02101,"558,66105-0501-06 ",.01)
 ;;66105-0501-06
 ;;9002226.02101,"558,66105-0501-06 ",.02)
 ;;66105-0501-06
 ;;9002226.02101,"558,66105-0502-06 ",.01)
 ;;66105-0502-06
 ;;9002226.02101,"558,66105-0502-06 ",.02)
 ;;66105-0502-06
 ;;9002226.02101,"558,67801-0305-03 ",.01)
 ;;67801-0305-03
 ;;9002226.02101,"558,67801-0305-03 ",.02)
 ;;67801-0305-03
 ;;9002226.02101,"558,68084-0619-01 ",.01)
 ;;68084-0619-01
 ;;9002226.02101,"558,68084-0619-01 ",.02)
 ;;68084-0619-01
 ;;9002226.02101,"558,68084-0619-11 ",.01)
 ;;68084-0619-11
 ;;9002226.02101,"558,68084-0619-11 ",.02)
 ;;68084-0619-11
 ;;9002226.02101,"558,68084-0620-01 ",.01)
 ;;68084-0620-01
 ;;9002226.02101,"558,68084-0620-01 ",.02)
 ;;68084-0620-01
 ;;9002226.02101,"558,68084-0620-11 ",.01)
 ;;68084-0620-11
 ;;9002226.02101,"558,68084-0620-11 ",.02)
 ;;68084-0620-11
 ;;9002226.02101,"558,68115-0638-60 ",.01)
 ;;68115-0638-60
 ;;9002226.02101,"558,68115-0638-60 ",.02)
 ;;68115-0638-60
 ;;9002226.02101,"558,68115-0923-30 ",.01)
 ;;68115-0923-30
 ;;9002226.02101,"558,68115-0923-30 ",.02)
 ;;68115-0923-30
 ;;9002226.02101,"558,68115-0923-90 ",.01)
 ;;68115-0923-90
 ;;9002226.02101,"558,68115-0923-90 ",.02)
 ;;68115-0923-90
 ;;9002226.02101,"558,68258-3032-03 ",.01)
 ;;68258-3032-03
 ;;9002226.02101,"558,68258-3032-03 ",.02)
 ;;68258-3032-03
 ;;9002226.02101,"558,68258-3033-03 ",.01)
 ;;68258-3033-03
 ;;9002226.02101,"558,68258-3033-03 ",.02)
 ;;68258-3033-03
 ;;9002226.02101,"558,68462-0392-05 ",.01)
 ;;68462-0392-05
 ;;9002226.02101,"558,68462-0392-05 ",.02)
 ;;68462-0392-05
 ;;9002226.02101,"558,68462-0392-30 ",.01)
 ;;68462-0392-30
 ;;9002226.02101,"558,68462-0392-30 ",.02)
 ;;68462-0392-30
 ;;9002226.02101,"558,68462-0392-90 ",.01)
 ;;68462-0392-90
 ;;9002226.02101,"558,68462-0392-90 ",.02)
 ;;68462-0392-90
 ;;9002226.02101,"558,68734-0700-10 ",.01)
 ;;68734-0700-10
 ;;9002226.02101,"558,68734-0700-10 ",.02)
 ;;68734-0700-10
 ;;9002226.02101,"558,68734-0710-10 ",.01)
 ;;68734-0710-10
 ;;9002226.02101,"558,68734-0710-10 ",.02)
 ;;68734-0710-10