BGP73F39 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 05, 2017;
 ;;17.1;IHS CLINICAL REPORTING;;MAY 10, 2017;Build 29
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"868,33261-0020-07 ",.02)
 ;;33261-0020-07
 ;;9002226.02101,"868,33261-0020-10 ",.01)
 ;;33261-0020-10
 ;;9002226.02101,"868,33261-0020-10 ",.02)
 ;;33261-0020-10
 ;;9002226.02101,"868,33261-0020-14 ",.01)
 ;;33261-0020-14
 ;;9002226.02101,"868,33261-0020-14 ",.02)
 ;;33261-0020-14
 ;;9002226.02101,"868,33261-0020-20 ",.01)
 ;;33261-0020-20
 ;;9002226.02101,"868,33261-0020-20 ",.02)
 ;;33261-0020-20
 ;;9002226.02101,"868,33261-0020-21 ",.01)
 ;;33261-0020-21
 ;;9002226.02101,"868,33261-0020-21 ",.02)
 ;;33261-0020-21
 ;;9002226.02101,"868,33261-0020-28 ",.01)
 ;;33261-0020-28
 ;;9002226.02101,"868,33261-0020-28 ",.02)
 ;;33261-0020-28
 ;;9002226.02101,"868,33261-0020-30 ",.01)
 ;;33261-0020-30
 ;;9002226.02101,"868,33261-0020-30 ",.02)
 ;;33261-0020-30
 ;;9002226.02101,"868,33261-0020-40 ",.01)
 ;;33261-0020-40
 ;;9002226.02101,"868,33261-0020-40 ",.02)
 ;;33261-0020-40
 ;;9002226.02101,"868,33261-0020-42 ",.01)
 ;;33261-0020-42
 ;;9002226.02101,"868,33261-0020-42 ",.02)
 ;;33261-0020-42
 ;;9002226.02101,"868,33261-0020-48 ",.01)
 ;;33261-0020-48
 ;;9002226.02101,"868,33261-0020-48 ",.02)
 ;;33261-0020-48
 ;;9002226.02101,"868,33261-0020-60 ",.01)
 ;;33261-0020-60
 ;;9002226.02101,"868,33261-0020-60 ",.02)
 ;;33261-0020-60
 ;;9002226.02101,"868,33261-0111-01 ",.01)
 ;;33261-0111-01
 ;;9002226.02101,"868,33261-0111-01 ",.02)
 ;;33261-0111-01
 ;;9002226.02101,"868,33261-0112-01 ",.01)
 ;;33261-0112-01
 ;;9002226.02101,"868,33261-0112-01 ",.02)
 ;;33261-0112-01
 ;;9002226.02101,"868,33261-0137-10 ",.01)
 ;;33261-0137-10
 ;;9002226.02101,"868,33261-0137-10 ",.02)
 ;;33261-0137-10
 ;;9002226.02101,"868,33261-0137-12 ",.01)
 ;;33261-0137-12
 ;;9002226.02101,"868,33261-0137-12 ",.02)
 ;;33261-0137-12
 ;;9002226.02101,"868,33261-0137-14 ",.01)
 ;;33261-0137-14
 ;;9002226.02101,"868,33261-0137-14 ",.02)
 ;;33261-0137-14
 ;;9002226.02101,"868,33261-0137-20 ",.01)
 ;;33261-0137-20
 ;;9002226.02101,"868,33261-0137-20 ",.02)
 ;;33261-0137-20
 ;;9002226.02101,"868,33261-0137-21 ",.01)
 ;;33261-0137-21
 ;;9002226.02101,"868,33261-0137-21 ",.02)
 ;;33261-0137-21
 ;;9002226.02101,"868,33261-0137-28 ",.01)
 ;;33261-0137-28
 ;;9002226.02101,"868,33261-0137-28 ",.02)
 ;;33261-0137-28
 ;;9002226.02101,"868,33261-0137-30 ",.01)
 ;;33261-0137-30
 ;;9002226.02101,"868,33261-0137-30 ",.02)
 ;;33261-0137-30
 ;;9002226.02101,"868,33261-0137-40 ",.01)
 ;;33261-0137-40
 ;;9002226.02101,"868,33261-0137-40 ",.02)
 ;;33261-0137-40
 ;;9002226.02101,"868,33261-0137-60 ",.01)
 ;;33261-0137-60
 ;;9002226.02101,"868,33261-0137-60 ",.02)
 ;;33261-0137-60
 ;;9002226.02101,"868,33261-0137-84 ",.01)
 ;;33261-0137-84
 ;;9002226.02101,"868,33261-0137-84 ",.02)
 ;;33261-0137-84
 ;;9002226.02101,"868,33261-0396-30 ",.01)
 ;;33261-0396-30
 ;;9002226.02101,"868,33261-0396-30 ",.02)
 ;;33261-0396-30
 ;;9002226.02101,"868,33342-0021-08 ",.01)
 ;;33342-0021-08
 ;;9002226.02101,"868,33342-0021-08 ",.02)
 ;;33342-0021-08
 ;;9002226.02101,"868,33342-0022-08 ",.01)
 ;;33342-0022-08
 ;;9002226.02101,"868,33342-0022-08 ",.02)
 ;;33342-0022-08
 ;;9002226.02101,"868,33342-0023-32 ",.01)
 ;;33342-0023-32
 ;;9002226.02101,"868,33342-0023-32 ",.02)
 ;;33342-0023-32
 ;;9002226.02101,"868,33358-0025-10 ",.01)
 ;;33358-0025-10
 ;;9002226.02101,"868,33358-0025-10 ",.02)
 ;;33358-0025-10
 ;;9002226.02101,"868,33358-0025-20 ",.01)
 ;;33358-0025-20
 ;;9002226.02101,"868,33358-0025-20 ",.02)
 ;;33358-0025-20
 ;;9002226.02101,"868,33358-0025-30 ",.01)
 ;;33358-0025-30
 ;;9002226.02101,"868,33358-0025-30 ",.02)
 ;;33358-0025-30
 ;;9002226.02101,"868,33358-0026-30 ",.01)
 ;;33358-0026-30
 ;;9002226.02101,"868,33358-0026-30 ",.02)
 ;;33358-0026-30
 ;;9002226.02101,"868,33358-0026-45 ",.01)
 ;;33358-0026-45
 ;;9002226.02101,"868,33358-0026-45 ",.02)
 ;;33358-0026-45
 ;;9002226.02101,"868,33358-0026-64 ",.01)
 ;;33358-0026-64
 ;;9002226.02101,"868,33358-0026-64 ",.02)
 ;;33358-0026-64
 ;;9002226.02101,"868,33358-0026-84 ",.01)
 ;;33358-0026-84
 ;;9002226.02101,"868,33358-0026-84 ",.02)
 ;;33358-0026-84
 ;;9002226.02101,"868,33358-0028-00 ",.01)
 ;;33358-0028-00
 ;;9002226.02101,"868,33358-0028-00 ",.02)
 ;;33358-0028-00
 ;;9002226.02101,"868,33358-0028-10 ",.01)
 ;;33358-0028-10
 ;;9002226.02101,"868,33358-0028-10 ",.02)
 ;;33358-0028-10
 ;;9002226.02101,"868,33358-0028-16 ",.01)
 ;;33358-0028-16
 ;;9002226.02101,"868,33358-0028-16 ",.02)
 ;;33358-0028-16
 ;;9002226.02101,"868,33358-0028-20 ",.01)
 ;;33358-0028-20
 ;;9002226.02101,"868,33358-0028-20 ",.02)
 ;;33358-0028-20
 ;;9002226.02101,"868,33358-0028-21 ",.01)
 ;;33358-0028-21
 ;;9002226.02101,"868,33358-0028-21 ",.02)
 ;;33358-0028-21
 ;;9002226.02101,"868,33358-0028-30 ",.01)
 ;;33358-0028-30
 ;;9002226.02101,"868,33358-0028-30 ",.02)
 ;;33358-0028-30
 ;;9002226.02101,"868,33358-0028-40 ",.01)
 ;;33358-0028-40
 ;;9002226.02101,"868,33358-0028-40 ",.02)
 ;;33358-0028-40
 ;;9002226.02101,"868,33358-0028-45 ",.01)
 ;;33358-0028-45
 ;;9002226.02101,"868,33358-0028-45 ",.02)
 ;;33358-0028-45
 ;;9002226.02101,"868,33358-0028-60 ",.01)
 ;;33358-0028-60
 ;;9002226.02101,"868,33358-0028-60 ",.02)
 ;;33358-0028-60
 ;;9002226.02101,"868,33358-0029-20 ",.01)
 ;;33358-0029-20
 ;;9002226.02101,"868,33358-0029-20 ",.02)
 ;;33358-0029-20
 ;;9002226.02101,"868,33358-0030-20 ",.01)
 ;;33358-0030-20
 ;;9002226.02101,"868,33358-0030-20 ",.02)
 ;;33358-0030-20
 ;;9002226.02101,"868,33358-0031-20 ",.01)
 ;;33358-0031-20
 ;;9002226.02101,"868,33358-0031-20 ",.02)
 ;;33358-0031-20
 ;;9002226.02101,"868,33358-0032-20 ",.01)
 ;;33358-0032-20
 ;;9002226.02101,"868,33358-0032-20 ",.02)
 ;;33358-0032-20
 ;;9002226.02101,"868,33358-0032-28 ",.01)
 ;;33358-0032-28
 ;;9002226.02101,"868,33358-0032-28 ",.02)
 ;;33358-0032-28
 ;;9002226.02101,"868,33358-0032-30 ",.01)
 ;;33358-0032-30
 ;;9002226.02101,"868,33358-0032-30 ",.02)
 ;;33358-0032-30
 ;;9002226.02101,"868,33358-0032-40 ",.01)
 ;;33358-0032-40
 ;;9002226.02101,"868,33358-0032-40 ",.02)
 ;;33358-0032-40
 ;;9002226.02101,"868,33358-0033-20 ",.01)
 ;;33358-0033-20
 ;;9002226.02101,"868,33358-0033-20 ",.02)
 ;;33358-0033-20
 ;;9002226.02101,"868,33358-0033-30 ",.01)
 ;;33358-0033-30
 ;;9002226.02101,"868,33358-0033-30 ",.02)
 ;;33358-0033-30
 ;;9002226.02101,"868,33358-0033-40 ",.01)
 ;;33358-0033-40
 ;;9002226.02101,"868,33358-0033-40 ",.02)
 ;;33358-0033-40
 ;;9002226.02101,"868,33358-0040-06 ",.01)
 ;;33358-0040-06
 ;;9002226.02101,"868,33358-0040-06 ",.02)
 ;;33358-0040-06
 ;;9002226.02101,"868,33358-0041-10 ",.01)
 ;;33358-0041-10
 ;;9002226.02101,"868,33358-0041-10 ",.02)
 ;;33358-0041-10
 ;;9002226.02101,"868,33358-0067-14 ",.01)
 ;;33358-0067-14
 ;;9002226.02101,"868,33358-0067-14 ",.02)
 ;;33358-0067-14
 ;;9002226.02101,"868,33358-0067-28 ",.01)
 ;;33358-0067-28
 ;;9002226.02101,"868,33358-0067-28 ",.02)
 ;;33358-0067-28
 ;;9002226.02101,"868,33358-0068-20 ",.01)
 ;;33358-0068-20
 ;;9002226.02101,"868,33358-0068-20 ",.02)
 ;;33358-0068-20
 ;;9002226.02101,"868,33358-0071-15 ",.01)
 ;;33358-0071-15
 ;;9002226.02101,"868,33358-0071-15 ",.02)
 ;;33358-0071-15
 ;;9002226.02101,"868,33358-0071-20 ",.01)
 ;;33358-0071-20
 ;;9002226.02101,"868,33358-0071-20 ",.02)
 ;;33358-0071-20
 ;;9002226.02101,"868,33358-0071-28 ",.01)
 ;;33358-0071-28
 ;;9002226.02101,"868,33358-0071-28 ",.02)
 ;;33358-0071-28
 ;;9002226.02101,"868,33358-0071-40 ",.01)
 ;;33358-0071-40
 ;;9002226.02101,"868,33358-0071-40 ",.02)
 ;;33358-0071-40
 ;;9002226.02101,"868,33358-0071-60 ",.01)
 ;;33358-0071-60
 ;;9002226.02101,"868,33358-0071-60 ",.02)
 ;;33358-0071-60
 ;;9002226.02101,"868,33358-0072-14 ",.01)
 ;;33358-0072-14
 ;;9002226.02101,"868,33358-0072-14 ",.02)
 ;;33358-0072-14
 ;;9002226.02101,"868,33358-0072-15 ",.01)
 ;;33358-0072-15
 ;;9002226.02101,"868,33358-0072-15 ",.02)
 ;;33358-0072-15
 ;;9002226.02101,"868,33358-0072-20 ",.01)
 ;;33358-0072-20
 ;;9002226.02101,"868,33358-0072-20 ",.02)
 ;;33358-0072-20
 ;;9002226.02101,"868,33358-0072-21 ",.01)
 ;;33358-0072-21
 ;;9002226.02101,"868,33358-0072-21 ",.02)
 ;;33358-0072-21
 ;;9002226.02101,"868,33358-0072-28 ",.01)
 ;;33358-0072-28
 ;;9002226.02101,"868,33358-0072-28 ",.02)
 ;;33358-0072-28
 ;;9002226.02101,"868,33358-0072-30 ",.01)
 ;;33358-0072-30
 ;;9002226.02101,"868,33358-0072-30 ",.02)
 ;;33358-0072-30
 ;;9002226.02101,"868,33358-0072-40 ",.01)
 ;;33358-0072-40
 ;;9002226.02101,"868,33358-0072-40 ",.02)
 ;;33358-0072-40
 ;;9002226.02101,"868,33358-0072-60 ",.01)
 ;;33358-0072-60
 ;;9002226.02101,"868,33358-0072-60 ",.02)
 ;;33358-0072-60
 ;;9002226.02101,"868,33358-0080-01 ",.01)
 ;;33358-0080-01
 ;;9002226.02101,"868,33358-0080-01 ",.02)
 ;;33358-0080-01
 ;;9002226.02101,"868,33358-0080-06 ",.01)
 ;;33358-0080-06
 ;;9002226.02101,"868,33358-0080-06 ",.02)
 ;;33358-0080-06
 ;;9002226.02101,"868,33358-0081-01 ",.01)
 ;;33358-0081-01
 ;;9002226.02101,"868,33358-0081-01 ",.02)
 ;;33358-0081-01
 ;;9002226.02101,"868,33358-0081-06 ",.01)
 ;;33358-0081-06
 ;;9002226.02101,"868,33358-0081-06 ",.02)
 ;;33358-0081-06
 ;;9002226.02101,"868,33358-0081-10 ",.01)
 ;;33358-0081-10
 ;;9002226.02101,"868,33358-0081-10 ",.02)
 ;;33358-0081-10
 ;;9002226.02101,"868,33358-0081-14 ",.01)
 ;;33358-0081-14
 ;;9002226.02101,"868,33358-0081-14 ",.02)
 ;;33358-0081-14
 ;;9002226.02101,"868,33358-0081-20 ",.01)
 ;;33358-0081-20
 ;;9002226.02101,"868,33358-0081-20 ",.02)
 ;;33358-0081-20
 ;;9002226.02101,"868,33358-0081-28 ",.01)
 ;;33358-0081-28
 ;;9002226.02101,"868,33358-0081-28 ",.02)
 ;;33358-0081-28
 ;;9002226.02101,"868,33358-0081-30 ",.01)
 ;;33358-0081-30
 ;;9002226.02101,"868,33358-0081-30 ",.02)
 ;;33358-0081-30
 ;;9002226.02101,"868,33358-0081-60 ",.01)
 ;;33358-0081-60
 ;;9002226.02101,"868,33358-0081-60 ",.02)
 ;;33358-0081-60
 ;;9002226.02101,"868,33358-0086-20 ",.01)
 ;;33358-0086-20
 ;;9002226.02101,"868,33358-0086-20 ",.02)
 ;;33358-0086-20
 ;;9002226.02101,"868,33358-0087-14 ",.01)
 ;;33358-0087-14
 ;;9002226.02101,"868,33358-0087-14 ",.02)
 ;;33358-0087-14
 ;;9002226.02101,"868,33358-0088-12 ",.01)
 ;;33358-0088-12
 ;;9002226.02101,"868,33358-0088-12 ",.02)
 ;;33358-0088-12
 ;;9002226.02101,"868,33358-0088-28 ",.01)
 ;;33358-0088-28
 ;;9002226.02101,"868,33358-0088-28 ",.02)
 ;;33358-0088-28
 ;;9002226.02101,"868,33358-0088-30 ",.01)
 ;;33358-0088-30
 ;;9002226.02101,"868,33358-0088-30 ",.02)
 ;;33358-0088-30
 ;;9002226.02101,"868,33358-0089-20 ",.01)
 ;;33358-0089-20
 ;;9002226.02101,"868,33358-0089-20 ",.02)
 ;;33358-0089-20
 ;;9002226.02101,"868,33358-0089-30 ",.01)
 ;;33358-0089-30
 ;;9002226.02101,"868,33358-0089-30 ",.02)
 ;;33358-0089-30
 ;;9002226.02101,"868,33358-0106-14 ",.01)
 ;;33358-0106-14
 ;;9002226.02101,"868,33358-0106-14 ",.02)
 ;;33358-0106-14
 ;;9002226.02101,"868,33358-0106-20 ",.01)
 ;;33358-0106-20
 ;;9002226.02101,"868,33358-0106-20 ",.02)
 ;;33358-0106-20
 ;;9002226.02101,"868,33358-0106-30 ",.01)
 ;;33358-0106-30
 ;;9002226.02101,"868,33358-0106-30 ",.02)
 ;;33358-0106-30
 ;;9002226.02101,"868,33358-0106-40 ",.01)
 ;;33358-0106-40
 ;;9002226.02101,"868,33358-0106-40 ",.02)
 ;;33358-0106-40
 ;;9002226.02101,"868,33358-0107-14 ",.01)
 ;;33358-0107-14
 ;;9002226.02101,"868,33358-0107-14 ",.02)
 ;;33358-0107-14
 ;;9002226.02101,"868,33358-0107-20 ",.01)
 ;;33358-0107-20
 ;;9002226.02101,"868,33358-0107-20 ",.02)
 ;;33358-0107-20
 ;;9002226.02101,"868,33358-0107-30 ",.01)
 ;;33358-0107-30
 ;;9002226.02101,"868,33358-0107-30 ",.02)
 ;;33358-0107-30
 ;;9002226.02101,"868,33358-0107-40 ",.01)
 ;;33358-0107-40
 ;;9002226.02101,"868,33358-0107-40 ",.02)
 ;;33358-0107-40
 ;;9002226.02101,"868,33358-0120-14 ",.01)
 ;;33358-0120-14