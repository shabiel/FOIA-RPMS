BGP47W8 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 17, 2014;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"493,55289-0761-90 ",.01)
 ;;55289-0761-90
 ;;9002226.02101,"493,55289-0761-90 ",.02)
 ;;55289-0761-90
 ;;9002226.02101,"493,55289-0943-07 ",.01)
 ;;55289-0943-07
 ;;9002226.02101,"493,55289-0943-07 ",.02)
 ;;55289-0943-07
 ;;9002226.02101,"493,55289-0943-25 ",.01)
 ;;55289-0943-25
 ;;9002226.02101,"493,55289-0943-25 ",.02)
 ;;55289-0943-25
 ;;9002226.02101,"493,55289-0943-28 ",.01)
 ;;55289-0943-28
 ;;9002226.02101,"493,55289-0943-28 ",.02)
 ;;55289-0943-28
 ;;9002226.02101,"493,55289-0943-30 ",.01)
 ;;55289-0943-30
 ;;9002226.02101,"493,55289-0943-30 ",.02)
 ;;55289-0943-30
 ;;9002226.02101,"493,55513-0710-01 ",.01)
 ;;55513-0710-01
 ;;9002226.02101,"493,55513-0710-01 ",.02)
 ;;55513-0710-01
 ;;9002226.02101,"493,55513-0730-01 ",.01)
 ;;55513-0730-01
 ;;9002226.02101,"493,55513-0730-01 ",.02)
 ;;55513-0730-01
 ;;9002226.02101,"493,55553-0244-10 ",.01)
 ;;55553-0244-10
 ;;9002226.02101,"493,55553-0244-10 ",.02)
 ;;55553-0244-10
 ;;9002226.02101,"493,55553-0254-10 ",.01)
 ;;55553-0254-10
 ;;9002226.02101,"493,55553-0254-10 ",.02)
 ;;55553-0254-10
 ;;9002226.02101,"493,55887-0106-04 ",.01)
 ;;55887-0106-04
 ;;9002226.02101,"493,55887-0106-04 ",.02)
 ;;55887-0106-04
 ;;9002226.02101,"493,55887-0266-30 ",.01)
 ;;55887-0266-30
 ;;9002226.02101,"493,55887-0266-30 ",.02)
 ;;55887-0266-30
 ;;9002226.02101,"493,55887-0266-90 ",.01)
 ;;55887-0266-90
 ;;9002226.02101,"493,55887-0266-90 ",.02)
 ;;55887-0266-90
 ;;9002226.02101,"493,55887-0324-30 ",.01)
 ;;55887-0324-30
 ;;9002226.02101,"493,55887-0324-30 ",.02)
 ;;55887-0324-30
 ;;9002226.02101,"493,55887-0342-01 ",.01)
 ;;55887-0342-01
 ;;9002226.02101,"493,55887-0342-01 ",.02)
 ;;55887-0342-01
 ;;9002226.02101,"493,55887-0516-20 ",.01)
 ;;55887-0516-20
 ;;9002226.02101,"493,55887-0516-20 ",.02)
 ;;55887-0516-20
 ;;9002226.02101,"493,55887-0516-30 ",.01)
 ;;55887-0516-30
 ;;9002226.02101,"493,55887-0516-30 ",.02)
 ;;55887-0516-30
 ;;9002226.02101,"493,55887-0516-60 ",.01)
 ;;55887-0516-60
 ;;9002226.02101,"493,55887-0516-60 ",.02)
 ;;55887-0516-60
 ;;9002226.02101,"493,55887-0516-82 ",.01)
 ;;55887-0516-82
 ;;9002226.02101,"493,55887-0516-82 ",.02)
 ;;55887-0516-82
 ;;9002226.02101,"493,55887-0516-90 ",.01)
 ;;55887-0516-90
 ;;9002226.02101,"493,55887-0516-90 ",.02)
 ;;55887-0516-90
 ;;9002226.02101,"493,55887-0641-03 ",.01)
 ;;55887-0641-03
 ;;9002226.02101,"493,55887-0641-03 ",.02)
 ;;55887-0641-03
 ;;9002226.02101,"493,55887-0685-04 ",.01)
 ;;55887-0685-04
 ;;9002226.02101,"493,55887-0685-04 ",.02)
 ;;55887-0685-04
 ;;9002226.02101,"493,55887-0702-30 ",.01)
 ;;55887-0702-30
 ;;9002226.02101,"493,55887-0702-30 ",.02)
 ;;55887-0702-30
 ;;9002226.02101,"493,55887-0863-30 ",.01)
 ;;55887-0863-30
 ;;9002226.02101,"493,55887-0863-30 ",.02)
 ;;55887-0863-30
 ;;9002226.02101,"493,57664-0314-08 ",.01)
 ;;57664-0314-08
 ;;9002226.02101,"493,57664-0314-08 ",.02)
 ;;57664-0314-08
 ;;9002226.02101,"493,57664-0316-08 ",.01)
 ;;57664-0316-08
 ;;9002226.02101,"493,57664-0316-08 ",.02)
 ;;57664-0316-08
 ;;9002226.02101,"493,58016-0039-00 ",.01)
 ;;58016-0039-00
 ;;9002226.02101,"493,58016-0039-00 ",.02)
 ;;58016-0039-00
 ;;9002226.02101,"493,58016-0039-30 ",.01)
 ;;58016-0039-30
 ;;9002226.02101,"493,58016-0039-30 ",.02)
 ;;58016-0039-30
 ;;9002226.02101,"493,58016-0039-60 ",.01)
 ;;58016-0039-60
 ;;9002226.02101,"493,58016-0039-60 ",.02)
 ;;58016-0039-60
 ;;9002226.02101,"493,58016-0039-90 ",.01)
 ;;58016-0039-90
 ;;9002226.02101,"493,58016-0039-90 ",.02)
 ;;58016-0039-90
 ;;9002226.02101,"493,58016-0613-04 ",.01)
 ;;58016-0613-04
 ;;9002226.02101,"493,58016-0613-04 ",.02)
 ;;58016-0613-04
 ;;9002226.02101,"493,58016-0744-00 ",.01)
 ;;58016-0744-00
 ;;9002226.02101,"493,58016-0744-00 ",.02)
 ;;58016-0744-00
 ;;9002226.02101,"493,58016-0744-10 ",.01)
 ;;58016-0744-10
 ;;9002226.02101,"493,58016-0744-10 ",.02)
 ;;58016-0744-10
 ;;9002226.02101,"493,58016-0744-12 ",.01)
 ;;58016-0744-12
 ;;9002226.02101,"493,58016-0744-12 ",.02)
 ;;58016-0744-12
 ;;9002226.02101,"493,58016-0744-14 ",.01)
 ;;58016-0744-14
 ;;9002226.02101,"493,58016-0744-14 ",.02)
 ;;58016-0744-14
 ;;9002226.02101,"493,58016-0744-15 ",.01)
 ;;58016-0744-15
 ;;9002226.02101,"493,58016-0744-15 ",.02)
 ;;58016-0744-15
 ;;9002226.02101,"493,58016-0744-20 ",.01)
 ;;58016-0744-20
 ;;9002226.02101,"493,58016-0744-20 ",.02)
 ;;58016-0744-20
 ;;9002226.02101,"493,58016-0744-30 ",.01)
 ;;58016-0744-30
 ;;9002226.02101,"493,58016-0744-30 ",.02)
 ;;58016-0744-30
 ;;9002226.02101,"493,58016-0788-00 ",.01)
 ;;58016-0788-00
 ;;9002226.02101,"493,58016-0788-00 ",.02)
 ;;58016-0788-00
 ;;9002226.02101,"493,58016-0788-30 ",.01)
 ;;58016-0788-30
 ;;9002226.02101,"493,58016-0788-30 ",.02)
 ;;58016-0788-30
 ;;9002226.02101,"493,58016-0788-60 ",.01)
 ;;58016-0788-60
 ;;9002226.02101,"493,58016-0788-60 ",.02)
 ;;58016-0788-60
 ;;9002226.02101,"493,58016-0788-90 ",.01)
 ;;58016-0788-90
 ;;9002226.02101,"493,58016-0788-90 ",.02)
 ;;58016-0788-90
 ;;9002226.02101,"493,58016-0948-00 ",.01)
 ;;58016-0948-00
 ;;9002226.02101,"493,58016-0948-00 ",.02)
 ;;58016-0948-00
 ;;9002226.02101,"493,58016-0948-10 ",.01)
 ;;58016-0948-10
 ;;9002226.02101,"493,58016-0948-10 ",.02)
 ;;58016-0948-10
 ;;9002226.02101,"493,58016-0948-12 ",.01)
 ;;58016-0948-12
 ;;9002226.02101,"493,58016-0948-12 ",.02)
 ;;58016-0948-12
 ;;9002226.02101,"493,58016-0948-14 ",.01)
 ;;58016-0948-14
 ;;9002226.02101,"493,58016-0948-14 ",.02)
 ;;58016-0948-14
 ;;9002226.02101,"493,58016-0948-15 ",.01)
 ;;58016-0948-15
 ;;9002226.02101,"493,58016-0948-15 ",.02)
 ;;58016-0948-15
 ;;9002226.02101,"493,58016-0948-20 ",.01)
 ;;58016-0948-20
 ;;9002226.02101,"493,58016-0948-20 ",.02)
 ;;58016-0948-20
 ;;9002226.02101,"493,58016-0948-30 ",.01)
 ;;58016-0948-30
 ;;9002226.02101,"493,58016-0948-30 ",.02)
 ;;58016-0948-30
 ;;9002226.02101,"493,58016-0948-50 ",.01)
 ;;58016-0948-50
 ;;9002226.02101,"493,58016-0948-50 ",.02)
 ;;58016-0948-50
 ;;9002226.02101,"493,58016-3182-01 ",.01)
 ;;58016-3182-01
 ;;9002226.02101,"493,58016-3182-01 ",.02)
 ;;58016-3182-01
 ;;9002226.02101,"493,58016-4074-01 ",.01)
 ;;58016-4074-01
 ;;9002226.02101,"493,58016-4074-01 ",.02)
 ;;58016-4074-01
 ;;9002226.02101,"493,58864-0422-28 ",.01)
 ;;58864-0422-28
 ;;9002226.02101,"493,58864-0422-28 ",.02)
 ;;58864-0422-28
 ;;9002226.02101,"493,58864-0422-30 ",.01)
 ;;58864-0422-30
 ;;9002226.02101,"493,58864-0422-30 ",.02)
 ;;58864-0422-30
 ;;9002226.02101,"493,58864-0803-30 ",.01)
 ;;58864-0803-30
 ;;9002226.02101,"493,58864-0803-30 ",.02)
 ;;58864-0803-30
 ;;9002226.02101,"493,58864-0804-30 ",.01)
 ;;58864-0804-30
 ;;9002226.02101,"493,58864-0804-30 ",.02)
 ;;58864-0804-30
 ;;9002226.02101,"493,58864-0951-30 ",.01)
 ;;58864-0951-30
 ;;9002226.02101,"493,58864-0951-30 ",.02)
 ;;58864-0951-30
 ;;9002226.02101,"493,59746-0242-02 ",.01)
 ;;59746-0242-02
 ;;9002226.02101,"493,59746-0242-02 ",.02)
 ;;59746-0242-02
 ;;9002226.02101,"493,59746-0244-02 ",.01)
 ;;59746-0244-02
 ;;9002226.02101,"493,59746-0244-02 ",.02)
 ;;59746-0244-02
 ;;9002226.02101,"493,60429-0773-04 ",.01)
 ;;60429-0773-04
 ;;9002226.02101,"493,60429-0773-04 ",.02)
 ;;60429-0773-04
 ;;9002226.02101,"493,60429-0773-12 ",.01)
 ;;60429-0773-12
 ;;9002226.02101,"493,60429-0773-12 ",.02)
 ;;60429-0773-12
 ;;9002226.02101,"493,60505-0823-06 ",.01)
 ;;60505-0823-06
 ;;9002226.02101,"493,60505-0823-06 ",.02)
 ;;60505-0823-06
 ;;9002226.02101,"493,60505-2592-01 ",.01)
 ;;60505-2592-01
 ;;9002226.02101,"493,60505-2592-01 ",.02)
 ;;60505-2592-01
 ;;9002226.02101,"493,60505-2592-03 ",.01)
 ;;60505-2592-03
 ;;9002226.02101,"493,60505-2592-03 ",.02)
 ;;60505-2592-03
 ;;9002226.02101,"493,60505-2593-01 ",.01)
 ;;60505-2593-01
 ;;9002226.02101,"493,60505-2593-01 ",.02)
 ;;60505-2593-01
 ;;9002226.02101,"493,60505-2593-03 ",.01)
 ;;60505-2593-03
 ;;9002226.02101,"493,60505-2593-03 ",.02)
 ;;60505-2593-03
 ;;9002226.02101,"493,60505-2594-04 ",.01)
 ;;60505-2594-04
 ;;9002226.02101,"493,60505-2594-04 ",.02)
 ;;60505-2594-04
 ;;9002226.02101,"493,60505-2596-02 ",.01)
 ;;60505-2596-02
 ;;9002226.02101,"493,60505-2596-02 ",.02)
 ;;60505-2596-02
 ;;9002226.02101,"493,60505-2596-04 ",.01)
 ;;60505-2596-04
 ;;9002226.02101,"493,60505-2596-04 ",.02)
 ;;60505-2596-04
 ;;9002226.02101,"493,60505-2596-08 ",.01)
 ;;60505-2596-08
 ;;9002226.02101,"493,60505-2596-08 ",.02)
 ;;60505-2596-08
 ;;9002226.02101,"493,60505-2795-00 ",.01)
 ;;60505-2795-00
 ;;9002226.02101,"493,60505-2795-00 ",.02)
 ;;60505-2795-00
 ;;9002226.02101,"493,61570-0072-01 ",.01)
 ;;61570-0072-01
 ;;9002226.02101,"493,61570-0072-01 ",.02)
 ;;61570-0072-01
 ;;9002226.02101,"493,61570-0073-01 ",.01)
 ;;61570-0073-01
 ;;9002226.02101,"493,61570-0073-01 ",.02)
 ;;61570-0073-01
 ;;9002226.02101,"493,61570-0074-01 ",.01)
 ;;61570-0074-01
 ;;9002226.02101,"493,61570-0074-01 ",.02)
 ;;61570-0074-01
 ;;9002226.02101,"493,61570-0075-50 ",.01)
 ;;61570-0075-50
 ;;9002226.02101,"493,61570-0075-50 ",.02)
 ;;61570-0075-50
 ;;9002226.02101,"493,63874-0089-01 ",.01)
 ;;63874-0089-01
 ;;9002226.02101,"493,63874-0089-01 ",.02)
 ;;63874-0089-01
 ;;9002226.02101,"493,63874-0158-01 ",.01)
 ;;63874-0158-01
 ;;9002226.02101,"493,63874-0158-01 ",.02)
 ;;63874-0158-01
 ;;9002226.02101,"493,63874-0158-10 ",.01)
 ;;63874-0158-10
 ;;9002226.02101,"493,63874-0158-10 ",.02)
 ;;63874-0158-10
 ;;9002226.02101,"493,63874-0158-14 ",.01)
 ;;63874-0158-14
 ;;9002226.02101,"493,63874-0158-14 ",.02)
 ;;63874-0158-14
 ;;9002226.02101,"493,63874-0158-15 ",.01)
 ;;63874-0158-15
 ;;9002226.02101,"493,63874-0158-15 ",.02)
 ;;63874-0158-15
 ;;9002226.02101,"493,63874-0158-20 ",.01)
 ;;63874-0158-20
 ;;9002226.02101,"493,63874-0158-20 ",.02)
 ;;63874-0158-20
 ;;9002226.02101,"493,63874-0158-30 ",.01)
 ;;63874-0158-30
 ;;9002226.02101,"493,63874-0158-30 ",.02)
 ;;63874-0158-30
 ;;9002226.02101,"493,64011-0215-41 ",.01)
 ;;64011-0215-41
 ;;9002226.02101,"493,64011-0215-41 ",.02)
 ;;64011-0215-41
 ;;9002226.02101,"493,64679-0185-01 ",.01)
 ;;64679-0185-01
 ;;9002226.02101,"493,64679-0185-01 ",.02)
 ;;64679-0185-01
 ;;9002226.02101,"493,64679-0186-01 ",.01)
 ;;64679-0186-01
 ;;9002226.02101,"493,64679-0186-01 ",.02)
 ;;64679-0186-01
 ;;9002226.02101,"493,65862-0327-30 ",.01)
 ;;65862-0327-30
 ;;9002226.02101,"493,65862-0327-30 ",.02)
 ;;65862-0327-30
 ;;9002226.02101,"493,65862-0328-04 ",.01)
 ;;65862-0328-04
 ;;9002226.02101,"493,65862-0328-04 ",.02)
 ;;65862-0328-04
 ;;9002226.02101,"493,65862-0329-04 ",.01)
 ;;65862-0329-04
 ;;9002226.02101,"493,65862-0329-04 ",.02)
 ;;65862-0329-04
 ;;9002226.02101,"493,66105-0137-10 ",.01)
 ;;66105-0137-10
 ;;9002226.02101,"493,66105-0137-10 ",.02)
 ;;66105-0137-10
 ;;9002226.02101,"493,66105-0138-10 ",.01)
 ;;66105-0138-10
 ;;9002226.02101,"493,66105-0138-10 ",.02)
 ;;66105-0138-10
 ;;9002226.02101,"493,66105-0538-03 ",.01)
 ;;66105-0538-03
 ;;9002226.02101,"493,66105-0538-03 ",.02)
 ;;66105-0538-03
 ;;9002226.02101,"493,66336-0599-30 ",.01)
 ;;66336-0599-30
 ;;9002226.02101,"493,66336-0599-30 ",.02)
 ;;66336-0599-30
 ;;9002226.02101,"493,66336-0977-30 ",.01)
 ;;66336-0977-30
 ;;9002226.02101,"493,66336-0977-30 ",.02)
 ;;66336-0977-30
 ;;9002226.02101,"493,67801-0320-03 ",.01)
 ;;67801-0320-03
 ;;9002226.02101,"493,67801-0320-03 ",.02)
 ;;67801-0320-03
 ;;9002226.02101,"493,67801-0326-03 ",.01)
 ;;67801-0326-03
 ;;9002226.02101,"493,67801-0326-03 ",.02)
 ;;67801-0326-03
 ;;9002226.02101,"493,67801-0327-03 ",.01)
 ;;67801-0327-03
 ;;9002226.02101,"493,67801-0327-03 ",.02)
 ;;67801-0327-03
 ;;9002226.02101,"493,67877-0240-31 ",.01)
 ;;67877-0240-31
 ;;9002226.02101,"493,67877-0240-31 ",.02)
 ;;67877-0240-31
 ;;9002226.02101,"493,67877-0240-33 ",.01)
 ;;67877-0240-33
 ;;9002226.02101,"493,67877-0240-33 ",.02)
 ;;67877-0240-33
 ;;9002226.02101,"493,67877-0241-31 ",.01)
 ;;67877-0241-31
 ;;9002226.02101,"493,67877-0241-31 ",.02)
 ;;67877-0241-31
 ;;9002226.02101,"493,67877-0241-33 ",.01)
 ;;67877-0241-33
 ;;9002226.02101,"493,67877-0241-33 ",.02)
 ;;67877-0241-33
 ;;9002226.02101,"493,68084-0322-11 ",.01)
 ;;68084-0322-11
 ;;9002226.02101,"493,68084-0322-11 ",.02)
 ;;68084-0322-11
 ;;9002226.02101,"493,68084-0322-94 ",.01)
 ;;68084-0322-94
 ;;9002226.02101,"493,68084-0322-94 ",.02)
 ;;68084-0322-94
 ;;9002226.02101,"493,68115-0387-30 ",.01)
 ;;68115-0387-30
 ;;9002226.02101,"493,68115-0387-30 ",.02)
 ;;68115-0387-30
 ;;9002226.02101,"493,68258-3014-01 ",.01)
 ;;68258-3014-01
 ;;9002226.02101,"493,68258-3014-01 ",.02)
 ;;68258-3014-01
 ;;9002226.02101,"493,68968-6610-08 ",.01)
 ;;68968-6610-08
 ;;9002226.02101,"493,68968-6610-08 ",.02)
 ;;68968-6610-08
 ;;9002226.02101,"493,68968-6637-08 ",.01)
 ;;68968-6637-08
 ;;9002226.02101,"493,68968-6637-08 ",.02)
 ;;68968-6637-08
 ;;9002226.02101,"493,68968-6650-08 ",.01)
 ;;68968-6650-08
 ;;9002226.02101,"493,68968-6650-08 ",.02)
 ;;68968-6650-08
 ;;9002226.02101,"493,68968-6675-08 ",.01)
 ;;68968-6675-08
 ;;9002226.02101,"493,68968-6675-08 ",.02)
 ;;68968-6675-08
 ;;9002226.02101,"493,99207-0190-56 ",.01)
 ;;99207-0190-56
 ;;9002226.02101,"493,99207-0190-56 ",.02)
 ;;99207-0190-56