BGP31R13 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 29, 2012;
 ;;13.0;IHS CLINICAL REPORTING;;NOV 20, 2012;Build 81
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"806,54569-3831-02 ",.02)
 ;;54569-3831-02
 ;;9002226.02101,"806,54569-3831-04 ",.01)
 ;;54569-3831-04
 ;;9002226.02101,"806,54569-3831-04 ",.02)
 ;;54569-3831-04
 ;;9002226.02101,"806,54569-3831-08 ",.01)
 ;;54569-3831-08
 ;;9002226.02101,"806,54569-3831-08 ",.02)
 ;;54569-3831-08
 ;;9002226.02101,"806,54569-3832-00 ",.01)
 ;;54569-3832-00
 ;;9002226.02101,"806,54569-3832-00 ",.02)
 ;;54569-3832-00
 ;;9002226.02101,"806,54569-4354-00 ",.01)
 ;;54569-4354-00
 ;;9002226.02101,"806,54569-4354-00 ",.02)
 ;;54569-4354-00
 ;;9002226.02101,"806,54569-4354-01 ",.01)
 ;;54569-4354-01
 ;;9002226.02101,"806,54569-4354-01 ",.02)
 ;;54569-4354-01
 ;;9002226.02101,"806,54569-4365-00 ",.01)
 ;;54569-4365-00
 ;;9002226.02101,"806,54569-4365-00 ",.02)
 ;;54569-4365-00
 ;;9002226.02101,"806,54569-4366-00 ",.01)
 ;;54569-4366-00
 ;;9002226.02101,"806,54569-4366-00 ",.02)
 ;;54569-4366-00
 ;;9002226.02101,"806,54569-4367-00 ",.01)
 ;;54569-4367-00
 ;;9002226.02101,"806,54569-4367-00 ",.02)
 ;;54569-4367-00
 ;;9002226.02101,"806,54569-4367-01 ",.01)
 ;;54569-4367-01
 ;;9002226.02101,"806,54569-4367-01 ",.02)
 ;;54569-4367-01
 ;;9002226.02101,"806,54569-4471-00 ",.01)
 ;;54569-4471-00
 ;;9002226.02101,"806,54569-4471-00 ",.02)
 ;;54569-4471-00
 ;;9002226.02101,"806,54569-4471-01 ",.01)
 ;;54569-4471-01
 ;;9002226.02101,"806,54569-4471-01 ",.02)
 ;;54569-4471-01
 ;;9002226.02101,"806,54569-4618-00 ",.01)
 ;;54569-4618-00
 ;;9002226.02101,"806,54569-4618-00 ",.02)
 ;;54569-4618-00
 ;;9002226.02101,"806,54569-4673-00 ",.01)
 ;;54569-4673-00
 ;;9002226.02101,"806,54569-4673-00 ",.02)
 ;;54569-4673-00
 ;;9002226.02101,"806,54569-4695-00 ",.01)
 ;;54569-4695-00
 ;;9002226.02101,"806,54569-4695-00 ",.02)
 ;;54569-4695-00
 ;;9002226.02101,"806,54569-4695-01 ",.01)
 ;;54569-4695-01
 ;;9002226.02101,"806,54569-4695-01 ",.02)
 ;;54569-4695-01
 ;;9002226.02101,"806,54569-4711-00 ",.01)
 ;;54569-4711-00
 ;;9002226.02101,"806,54569-4711-00 ",.02)
 ;;54569-4711-00
 ;;9002226.02101,"806,54569-4907-00 ",.01)
 ;;54569-4907-00
 ;;9002226.02101,"806,54569-4907-00 ",.02)
 ;;54569-4907-00
 ;;9002226.02101,"806,54569-4908-00 ",.01)
 ;;54569-4908-00
 ;;9002226.02101,"806,54569-4908-00 ",.02)
 ;;54569-4908-00
 ;;9002226.02101,"806,54569-4925-00 ",.01)
 ;;54569-4925-00
 ;;9002226.02101,"806,54569-4925-00 ",.02)
 ;;54569-4925-00
 ;;9002226.02101,"806,54569-4929-00 ",.01)
 ;;54569-4929-00
 ;;9002226.02101,"806,54569-4929-00 ",.02)
 ;;54569-4929-00
 ;;9002226.02101,"806,54569-5141-00 ",.01)
 ;;54569-5141-00
 ;;9002226.02101,"806,54569-5141-00 ",.02)
 ;;54569-5141-00
 ;;9002226.02101,"806,54569-5152-00 ",.01)
 ;;54569-5152-00
 ;;9002226.02101,"806,54569-5152-00 ",.02)
 ;;54569-5152-00
 ;;9002226.02101,"806,54569-5153-00 ",.01)
 ;;54569-5153-00
 ;;9002226.02101,"806,54569-5153-00 ",.02)
 ;;54569-5153-00
 ;;9002226.02101,"806,54569-5164-00 ",.01)
 ;;54569-5164-00
 ;;9002226.02101,"806,54569-5164-00 ",.02)
 ;;54569-5164-00
 ;;9002226.02101,"806,54569-5210-00 ",.01)
 ;;54569-5210-00
 ;;9002226.02101,"806,54569-5210-00 ",.02)
 ;;54569-5210-00
 ;;9002226.02101,"806,54569-5210-01 ",.01)
 ;;54569-5210-01
 ;;9002226.02101,"806,54569-5210-01 ",.02)
 ;;54569-5210-01
 ;;9002226.02101,"806,54569-5211-00 ",.01)
 ;;54569-5211-00
 ;;9002226.02101,"806,54569-5211-00 ",.02)
 ;;54569-5211-00
 ;;9002226.02101,"806,54569-5211-01 ",.01)
 ;;54569-5211-01
 ;;9002226.02101,"806,54569-5211-01 ",.02)
 ;;54569-5211-01
 ;;9002226.02101,"806,54569-5581-00 ",.01)
 ;;54569-5581-00
 ;;9002226.02101,"806,54569-5581-00 ",.02)
 ;;54569-5581-00
 ;;9002226.02101,"806,54569-5618-00 ",.01)
 ;;54569-5618-00
 ;;9002226.02101,"806,54569-5618-00 ",.02)
 ;;54569-5618-00
 ;;9002226.02101,"806,54569-5618-01 ",.01)
 ;;54569-5618-01
 ;;9002226.02101,"806,54569-5618-01 ",.02)
 ;;54569-5618-01
 ;;9002226.02101,"806,54569-5618-02 ",.01)
 ;;54569-5618-02
 ;;9002226.02101,"806,54569-5618-02 ",.02)
 ;;54569-5618-02
 ;;9002226.02101,"806,54569-5619-00 ",.01)
 ;;54569-5619-00
 ;;9002226.02101,"806,54569-5619-00 ",.02)
 ;;54569-5619-00
 ;;9002226.02101,"806,54569-5619-01 ",.01)
 ;;54569-5619-01
 ;;9002226.02101,"806,54569-5619-01 ",.02)
 ;;54569-5619-01
 ;;9002226.02101,"806,54569-5619-02 ",.01)
 ;;54569-5619-02
 ;;9002226.02101,"806,54569-5619-02 ",.02)
 ;;54569-5619-02
 ;;9002226.02101,"806,54569-5623-00 ",.01)
 ;;54569-5623-00
 ;;9002226.02101,"806,54569-5623-00 ",.02)
 ;;54569-5623-00
 ;;9002226.02101,"806,54569-5636-00 ",.01)
 ;;54569-5636-00
 ;;9002226.02101,"806,54569-5636-00 ",.02)
 ;;54569-5636-00
 ;;9002226.02101,"806,54569-5636-01 ",.01)
 ;;54569-5636-01
 ;;9002226.02101,"806,54569-5636-01 ",.02)
 ;;54569-5636-01
 ;;9002226.02101,"806,54569-5858-00 ",.01)
 ;;54569-5858-00
 ;;9002226.02101,"806,54569-5858-00 ",.02)
 ;;54569-5858-00
 ;;9002226.02101,"806,54807-0891-01 ",.01)
 ;;54807-0891-01
 ;;9002226.02101,"806,54807-0891-01 ",.02)
 ;;54807-0891-01
 ;;9002226.02101,"806,54868-0036-00 ",.01)
 ;;54868-0036-00
 ;;9002226.02101,"806,54868-0036-00 ",.02)
 ;;54868-0036-00
 ;;9002226.02101,"806,54868-0036-02 ",.01)
 ;;54868-0036-02
 ;;9002226.02101,"806,54868-0036-02 ",.02)
 ;;54868-0036-02
 ;;9002226.02101,"806,54868-0036-04 ",.01)
 ;;54868-0036-04
 ;;9002226.02101,"806,54868-0036-04 ",.02)
 ;;54868-0036-04
 ;;9002226.02101,"806,54868-0041-00 ",.01)
 ;;54868-0041-00
 ;;9002226.02101,"806,54868-0041-00 ",.02)
 ;;54868-0041-00
 ;;9002226.02101,"806,54868-0083-00 ",.01)
 ;;54868-0083-00
 ;;9002226.02101,"806,54868-0083-00 ",.02)
 ;;54868-0083-00
 ;;9002226.02101,"806,54868-0084-00 ",.01)
 ;;54868-0084-00
 ;;9002226.02101,"806,54868-0084-00 ",.02)
 ;;54868-0084-00
 ;;9002226.02101,"806,54868-0084-01 ",.01)
 ;;54868-0084-01
 ;;9002226.02101,"806,54868-0084-01 ",.02)
 ;;54868-0084-01
 ;;9002226.02101,"806,54868-0084-02 ",.01)
 ;;54868-0084-02
 ;;9002226.02101,"806,54868-0084-02 ",.02)
 ;;54868-0084-02
 ;;9002226.02101,"806,54868-0365-00 ",.01)
 ;;54868-0365-00
 ;;9002226.02101,"806,54868-0365-00 ",.02)
 ;;54868-0365-00
 ;;9002226.02101,"806,54868-0365-01 ",.01)
 ;;54868-0365-01
 ;;9002226.02101,"806,54868-0365-01 ",.02)
 ;;54868-0365-01
 ;;9002226.02101,"806,54868-0365-02 ",.01)
 ;;54868-0365-02
 ;;9002226.02101,"806,54868-0365-02 ",.02)
 ;;54868-0365-02
 ;;9002226.02101,"806,54868-0365-03 ",.01)
 ;;54868-0365-03
 ;;9002226.02101,"806,54868-0365-03 ",.02)
 ;;54868-0365-03
 ;;9002226.02101,"806,54868-0373-01 ",.01)
 ;;54868-0373-01
 ;;9002226.02101,"806,54868-0373-01 ",.02)
 ;;54868-0373-01
 ;;9002226.02101,"806,54868-0373-02 ",.01)
 ;;54868-0373-02
 ;;9002226.02101,"806,54868-0373-02 ",.02)
 ;;54868-0373-02
 ;;9002226.02101,"806,54868-0451-00 ",.01)
 ;;54868-0451-00
 ;;9002226.02101,"806,54868-0451-00 ",.02)
 ;;54868-0451-00
 ;;9002226.02101,"806,54868-0451-01 ",.01)
 ;;54868-0451-01
 ;;9002226.02101,"806,54868-0451-01 ",.02)
 ;;54868-0451-01
 ;;9002226.02101,"806,54868-0451-02 ",.01)
 ;;54868-0451-02
 ;;9002226.02101,"806,54868-0451-02 ",.02)
 ;;54868-0451-02
 ;;9002226.02101,"806,54868-0451-03 ",.01)
 ;;54868-0451-03
 ;;9002226.02101,"806,54868-0451-03 ",.02)
 ;;54868-0451-03
 ;;9002226.02101,"806,54868-0451-04 ",.01)
 ;;54868-0451-04
 ;;9002226.02101,"806,54868-0451-04 ",.02)
 ;;54868-0451-04
 ;;9002226.02101,"806,54868-0451-05 ",.01)
 ;;54868-0451-05
 ;;9002226.02101,"806,54868-0451-05 ",.02)
 ;;54868-0451-05
 ;;9002226.02101,"806,54868-0451-06 ",.01)
 ;;54868-0451-06
 ;;9002226.02101,"806,54868-0451-06 ",.02)
 ;;54868-0451-06
 ;;9002226.02101,"806,54868-0451-07 ",.01)
 ;;54868-0451-07
 ;;9002226.02101,"806,54868-0451-07 ",.02)
 ;;54868-0451-07
 ;;9002226.02101,"806,54868-0452-03 ",.01)
 ;;54868-0452-03
 ;;9002226.02101,"806,54868-0452-03 ",.02)
 ;;54868-0452-03
 ;;9002226.02101,"806,54868-0453-00 ",.01)
 ;;54868-0453-00
 ;;9002226.02101,"806,54868-0453-00 ",.02)
 ;;54868-0453-00
 ;;9002226.02101,"806,54868-0453-01 ",.01)
 ;;54868-0453-01
 ;;9002226.02101,"806,54868-0453-01 ",.02)
 ;;54868-0453-01
 ;;9002226.02101,"806,54868-0453-02 ",.01)
 ;;54868-0453-02
 ;;9002226.02101,"806,54868-0453-02 ",.02)
 ;;54868-0453-02
 ;;9002226.02101,"806,54868-0453-03 ",.01)
 ;;54868-0453-03
 ;;9002226.02101,"806,54868-0453-03 ",.02)
 ;;54868-0453-03
 ;;9002226.02101,"806,54868-0453-04 ",.01)
 ;;54868-0453-04
 ;;9002226.02101,"806,54868-0453-04 ",.02)
 ;;54868-0453-04
 ;;9002226.02101,"806,54868-0453-05 ",.01)
 ;;54868-0453-05
 ;;9002226.02101,"806,54868-0453-05 ",.02)
 ;;54868-0453-05
 ;;9002226.02101,"806,54868-0453-06 ",.01)
 ;;54868-0453-06
 ;;9002226.02101,"806,54868-0453-06 ",.02)
 ;;54868-0453-06
 ;;9002226.02101,"806,54868-0494-00 ",.01)
 ;;54868-0494-00
 ;;9002226.02101,"806,54868-0494-00 ",.02)
 ;;54868-0494-00
 ;;9002226.02101,"806,54868-0494-01 ",.01)
 ;;54868-0494-01
 ;;9002226.02101,"806,54868-0494-01 ",.02)
 ;;54868-0494-01
 ;;9002226.02101,"806,54868-0494-02 ",.01)
 ;;54868-0494-02
 ;;9002226.02101,"806,54868-0494-02 ",.02)
 ;;54868-0494-02
 ;;9002226.02101,"806,54868-0494-03 ",.01)
 ;;54868-0494-03
 ;;9002226.02101,"806,54868-0494-03 ",.02)
 ;;54868-0494-03
 ;;9002226.02101,"806,54868-0495-00 ",.01)
 ;;54868-0495-00
 ;;9002226.02101,"806,54868-0495-00 ",.02)
 ;;54868-0495-00
 ;;9002226.02101,"806,54868-0794-00 ",.01)
 ;;54868-0794-00
 ;;9002226.02101,"806,54868-0794-00 ",.02)
 ;;54868-0794-00
 ;;9002226.02101,"806,54868-0794-01 ",.01)
 ;;54868-0794-01
 ;;9002226.02101,"806,54868-0794-01 ",.02)
 ;;54868-0794-01
 ;;9002226.02101,"806,54868-0877-01 ",.01)
 ;;54868-0877-01
 ;;9002226.02101,"806,54868-0877-01 ",.02)
 ;;54868-0877-01
 ;;9002226.02101,"806,54868-0996-01 ",.01)
 ;;54868-0996-01
 ;;9002226.02101,"806,54868-0996-01 ",.02)
 ;;54868-0996-01
 ;;9002226.02101,"806,54868-0996-02 ",.01)
 ;;54868-0996-02
 ;;9002226.02101,"806,54868-0996-02 ",.02)
 ;;54868-0996-02
 ;;9002226.02101,"806,54868-1244-01 ",.01)
 ;;54868-1244-01
 ;;9002226.02101,"806,54868-1244-01 ",.02)
 ;;54868-1244-01
 ;;9002226.02101,"806,54868-1244-02 ",.01)
 ;;54868-1244-02
 ;;9002226.02101,"806,54868-1244-02 ",.02)
 ;;54868-1244-02
 ;;9002226.02101,"806,54868-1244-03 ",.01)
 ;;54868-1244-03
 ;;9002226.02101,"806,54868-1244-03 ",.02)
 ;;54868-1244-03
 ;;9002226.02101,"806,54868-1244-04 ",.01)
 ;;54868-1244-04
 ;;9002226.02101,"806,54868-1244-04 ",.02)
 ;;54868-1244-04
 ;;9002226.02101,"806,54868-1245-01 ",.01)
 ;;54868-1245-01
 ;;9002226.02101,"806,54868-1245-01 ",.02)
 ;;54868-1245-01
 ;;9002226.02101,"806,54868-1245-02 ",.01)
 ;;54868-1245-02
 ;;9002226.02101,"806,54868-1245-02 ",.02)
 ;;54868-1245-02
 ;;9002226.02101,"806,54868-1245-05 ",.01)
 ;;54868-1245-05
 ;;9002226.02101,"806,54868-1245-05 ",.02)
 ;;54868-1245-05
 ;;9002226.02101,"806,54868-1253-00 ",.01)
 ;;54868-1253-00
 ;;9002226.02101,"806,54868-1253-00 ",.02)
 ;;54868-1253-00
 ;;9002226.02101,"806,54868-1253-01 ",.01)
 ;;54868-1253-01
 ;;9002226.02101,"806,54868-1253-01 ",.02)
 ;;54868-1253-01
 ;;9002226.02101,"806,54868-1253-02 ",.01)
 ;;54868-1253-02
 ;;9002226.02101,"806,54868-1253-02 ",.02)
 ;;54868-1253-02
 ;;9002226.02101,"806,54868-1261-00 ",.01)
 ;;54868-1261-00
 ;;9002226.02101,"806,54868-1261-00 ",.02)
 ;;54868-1261-00
 ;;9002226.02101,"806,54868-1262-00 ",.01)
 ;;54868-1262-00
 ;;9002226.02101,"806,54868-1262-00 ",.02)
 ;;54868-1262-00
 ;;9002226.02101,"806,54868-1262-01 ",.01)
 ;;54868-1262-01
 ;;9002226.02101,"806,54868-1262-01 ",.02)
 ;;54868-1262-01
 ;;9002226.02101,"806,54868-1262-02 ",.01)
 ;;54868-1262-02
 ;;9002226.02101,"806,54868-1262-02 ",.02)
 ;;54868-1262-02
 ;;9002226.02101,"806,54868-1432-00 ",.01)
 ;;54868-1432-00
 ;;9002226.02101,"806,54868-1432-00 ",.02)
 ;;54868-1432-00
 ;;9002226.02101,"806,54868-1432-01 ",.01)
 ;;54868-1432-01
 ;;9002226.02101,"806,54868-1432-01 ",.02)
 ;;54868-1432-01
 ;;9002226.02101,"806,54868-1629-00 ",.01)
 ;;54868-1629-00
 ;;9002226.02101,"806,54868-1629-00 ",.02)
 ;;54868-1629-00
 ;;9002226.02101,"806,54868-1629-01 ",.01)
 ;;54868-1629-01
 ;;9002226.02101,"806,54868-1629-01 ",.02)
 ;;54868-1629-01
 ;;9002226.02101,"806,54868-1629-02 ",.01)
 ;;54868-1629-02
 ;;9002226.02101,"806,54868-1629-02 ",.02)
 ;;54868-1629-02
 ;;9002226.02101,"806,54868-1629-03 ",.01)
 ;;54868-1629-03
 ;;9002226.02101,"806,54868-1629-03 ",.02)
 ;;54868-1629-03
 ;;9002226.02101,"806,54868-1688-01 ",.01)
 ;;54868-1688-01
 ;;9002226.02101,"806,54868-1688-01 ",.02)
 ;;54868-1688-01
 ;;9002226.02101,"806,54868-1746-00 ",.01)
 ;;54868-1746-00
 ;;9002226.02101,"806,54868-1746-00 ",.02)
 ;;54868-1746-00
 ;;9002226.02101,"806,54868-2702-00 ",.01)
 ;;54868-2702-00
 ;;9002226.02101,"806,54868-2702-00 ",.02)
 ;;54868-2702-00
 ;;9002226.02101,"806,54868-2702-01 ",.01)
 ;;54868-2702-01
 ;;9002226.02101,"806,54868-2702-01 ",.02)
 ;;54868-2702-01
 ;;9002226.02101,"806,54868-2702-02 ",.01)
 ;;54868-2702-02
 ;;9002226.02101,"806,54868-2702-02 ",.02)
 ;;54868-2702-02
 ;;9002226.02101,"806,54868-2702-03 ",.01)
 ;;54868-2702-03
 ;;9002226.02101,"806,54868-2702-03 ",.02)
 ;;54868-2702-03
 ;;9002226.02101,"806,54868-2702-04 ",.01)
 ;;54868-2702-04
 ;;9002226.02101,"806,54868-2702-04 ",.02)
 ;;54868-2702-04
 ;;9002226.02101,"806,54868-3017-00 ",.01)
 ;;54868-3017-00
 ;;9002226.02101,"806,54868-3017-00 ",.02)
 ;;54868-3017-00
 ;;9002226.02101,"806,54868-3099-01 ",.01)
 ;;54868-3099-01
 ;;9002226.02101,"806,54868-3099-01 ",.02)
 ;;54868-3099-01
 ;;9002226.02101,"806,54868-3114-00 ",.01)
 ;;54868-3114-00
 ;;9002226.02101,"806,54868-3114-00 ",.02)
 ;;54868-3114-00
 ;;9002226.02101,"806,54868-3114-01 ",.01)
 ;;54868-3114-01