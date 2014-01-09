BGP31P26 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 29, 2012;
 ;;13.0;IHS CLINICAL REPORTING;;NOV 20, 2012;Build 81
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"730,52959-0542-28 ",.02)
 ;;52959-0542-28
 ;;9002226.02101,"730,52959-0542-30 ",.01)
 ;;52959-0542-30
 ;;9002226.02101,"730,52959-0542-30 ",.02)
 ;;52959-0542-30
 ;;9002226.02101,"730,52959-0542-40 ",.01)
 ;;52959-0542-40
 ;;9002226.02101,"730,52959-0542-40 ",.02)
 ;;52959-0542-40
 ;;9002226.02101,"730,52959-0542-42 ",.01)
 ;;52959-0542-42
 ;;9002226.02101,"730,52959-0542-42 ",.02)
 ;;52959-0542-42
 ;;9002226.02101,"730,52959-0662-30 ",.01)
 ;;52959-0662-30
 ;;9002226.02101,"730,52959-0662-30 ",.02)
 ;;52959-0662-30
 ;;9002226.02101,"730,52959-0727-00 ",.01)
 ;;52959-0727-00
 ;;9002226.02101,"730,52959-0727-00 ",.02)
 ;;52959-0727-00
 ;;9002226.02101,"730,52959-0727-10 ",.01)
 ;;52959-0727-10
 ;;9002226.02101,"730,52959-0727-10 ",.02)
 ;;52959-0727-10
 ;;9002226.02101,"730,52959-0727-30 ",.01)
 ;;52959-0727-30
 ;;9002226.02101,"730,52959-0727-30 ",.02)
 ;;52959-0727-30
 ;;9002226.02101,"730,52959-0767-30 ",.01)
 ;;52959-0767-30
 ;;9002226.02101,"730,52959-0767-30 ",.02)
 ;;52959-0767-30
 ;;9002226.02101,"730,52959-0767-60 ",.01)
 ;;52959-0767-60
 ;;9002226.02101,"730,52959-0767-60 ",.02)
 ;;52959-0767-60
 ;;9002226.02101,"730,52959-0791-30 ",.01)
 ;;52959-0791-30
 ;;9002226.02101,"730,52959-0791-30 ",.02)
 ;;52959-0791-30
 ;;9002226.02101,"730,52959-0852-00 ",.01)
 ;;52959-0852-00
 ;;9002226.02101,"730,52959-0852-00 ",.02)
 ;;52959-0852-00
 ;;9002226.02101,"730,52959-0852-10 ",.01)
 ;;52959-0852-10
 ;;9002226.02101,"730,52959-0852-10 ",.02)
 ;;52959-0852-10
 ;;9002226.02101,"730,52959-0852-12 ",.01)
 ;;52959-0852-12
 ;;9002226.02101,"730,52959-0852-12 ",.02)
 ;;52959-0852-12
 ;;9002226.02101,"730,52959-0852-30 ",.01)
 ;;52959-0852-30
 ;;9002226.02101,"730,52959-0852-30 ",.02)
 ;;52959-0852-30
 ;;9002226.02101,"730,52959-0852-60 ",.01)
 ;;52959-0852-60
 ;;9002226.02101,"730,52959-0852-60 ",.02)
 ;;52959-0852-60
 ;;9002226.02101,"730,52959-0865-00 ",.01)
 ;;52959-0865-00
 ;;9002226.02101,"730,52959-0865-00 ",.02)
 ;;52959-0865-00
 ;;9002226.02101,"730,52959-0865-30 ",.01)
 ;;52959-0865-30
 ;;9002226.02101,"730,52959-0865-30 ",.02)
 ;;52959-0865-30
 ;;9002226.02101,"730,52959-0870-30 ",.01)
 ;;52959-0870-30
 ;;9002226.02101,"730,52959-0870-30 ",.02)
 ;;52959-0870-30
 ;;9002226.02101,"730,52959-0879-02 ",.01)
 ;;52959-0879-02
 ;;9002226.02101,"730,52959-0879-02 ",.02)
 ;;52959-0879-02
 ;;9002226.02101,"730,52959-0879-10 ",.01)
 ;;52959-0879-10
 ;;9002226.02101,"730,52959-0879-10 ",.02)
 ;;52959-0879-10
 ;;9002226.02101,"730,52959-0879-14 ",.01)
 ;;52959-0879-14
 ;;9002226.02101,"730,52959-0879-14 ",.02)
 ;;52959-0879-14
 ;;9002226.02101,"730,52959-0879-15 ",.01)
 ;;52959-0879-15
 ;;9002226.02101,"730,52959-0879-15 ",.02)
 ;;52959-0879-15
 ;;9002226.02101,"730,52959-0879-20 ",.01)
 ;;52959-0879-20
 ;;9002226.02101,"730,52959-0879-20 ",.02)
 ;;52959-0879-20
 ;;9002226.02101,"730,52959-0879-28 ",.01)
 ;;52959-0879-28
 ;;9002226.02101,"730,52959-0879-28 ",.02)
 ;;52959-0879-28
 ;;9002226.02101,"730,52959-0879-30 ",.01)
 ;;52959-0879-30
 ;;9002226.02101,"730,52959-0879-30 ",.02)
 ;;52959-0879-30
 ;;9002226.02101,"730,52959-0879-60 ",.01)
 ;;52959-0879-60
 ;;9002226.02101,"730,52959-0879-60 ",.02)
 ;;52959-0879-60
 ;;9002226.02101,"730,52959-0879-90 ",.01)
 ;;52959-0879-90
 ;;9002226.02101,"730,52959-0879-90 ",.02)
 ;;52959-0879-90
 ;;9002226.02101,"730,52959-0880-00 ",.01)
 ;;52959-0880-00
 ;;9002226.02101,"730,52959-0880-00 ",.02)
 ;;52959-0880-00
 ;;9002226.02101,"730,52959-0880-02 ",.01)
 ;;52959-0880-02
 ;;9002226.02101,"730,52959-0880-02 ",.02)
 ;;52959-0880-02
 ;;9002226.02101,"730,52959-0880-10 ",.01)
 ;;52959-0880-10
 ;;9002226.02101,"730,52959-0880-10 ",.02)
 ;;52959-0880-10
 ;;9002226.02101,"730,52959-0880-14 ",.01)
 ;;52959-0880-14
 ;;9002226.02101,"730,52959-0880-14 ",.02)
 ;;52959-0880-14
 ;;9002226.02101,"730,52959-0880-15 ",.01)
 ;;52959-0880-15
 ;;9002226.02101,"730,52959-0880-15 ",.02)
 ;;52959-0880-15
 ;;9002226.02101,"730,52959-0880-20 ",.01)
 ;;52959-0880-20
 ;;9002226.02101,"730,52959-0880-20 ",.02)
 ;;52959-0880-20
 ;;9002226.02101,"730,52959-0880-28 ",.01)
 ;;52959-0880-28
 ;;9002226.02101,"730,52959-0880-28 ",.02)
 ;;52959-0880-28
 ;;9002226.02101,"730,52959-0880-30 ",.01)
 ;;52959-0880-30
 ;;9002226.02101,"730,52959-0880-30 ",.02)
 ;;52959-0880-30
 ;;9002226.02101,"730,52959-0880-60 ",.01)
 ;;52959-0880-60
 ;;9002226.02101,"730,52959-0880-60 ",.02)
 ;;52959-0880-60
 ;;9002226.02101,"730,52959-0880-90 ",.01)
 ;;52959-0880-90
 ;;9002226.02101,"730,52959-0880-90 ",.02)
 ;;52959-0880-90
 ;;9002226.02101,"730,52959-0881-30 ",.01)
 ;;52959-0881-30
 ;;9002226.02101,"730,52959-0881-30 ",.02)
 ;;52959-0881-30
 ;;9002226.02101,"730,52959-0900-30 ",.01)
 ;;52959-0900-30
 ;;9002226.02101,"730,52959-0900-30 ",.02)
 ;;52959-0900-30
 ;;9002226.02101,"730,52959-0912-60 ",.01)
 ;;52959-0912-60
 ;;9002226.02101,"730,52959-0912-60 ",.02)
 ;;52959-0912-60
 ;;9002226.02101,"730,52959-0913-02 ",.01)
 ;;52959-0913-02
 ;;9002226.02101,"730,52959-0913-02 ",.02)
 ;;52959-0913-02
 ;;9002226.02101,"730,52959-0913-30 ",.01)
 ;;52959-0913-30
 ;;9002226.02101,"730,52959-0913-30 ",.02)
 ;;52959-0913-30
 ;;9002226.02101,"730,52959-0913-90 ",.01)
 ;;52959-0913-90
 ;;9002226.02101,"730,52959-0913-90 ",.02)
 ;;52959-0913-90
 ;;9002226.02101,"730,52959-0919-00 ",.01)
 ;;52959-0919-00
 ;;9002226.02101,"730,52959-0919-00 ",.02)
 ;;52959-0919-00
 ;;9002226.02101,"730,52959-0919-30 ",.01)
 ;;52959-0919-30
 ;;9002226.02101,"730,52959-0919-30 ",.02)
 ;;52959-0919-30
 ;;9002226.02101,"730,52959-0919-60 ",.01)
 ;;52959-0919-60
 ;;9002226.02101,"730,52959-0919-60 ",.02)
 ;;52959-0919-60
 ;;9002226.02101,"730,52959-0957-30 ",.01)
 ;;52959-0957-30
 ;;9002226.02101,"730,52959-0957-30 ",.02)
 ;;52959-0957-30
 ;;9002226.02101,"730,52959-0971-30 ",.01)
 ;;52959-0971-30
 ;;9002226.02101,"730,52959-0971-30 ",.02)
 ;;52959-0971-30
 ;;9002226.02101,"730,53002-0339-00 ",.01)
 ;;53002-0339-00
 ;;9002226.02101,"730,53002-0339-00 ",.02)
 ;;53002-0339-00
 ;;9002226.02101,"730,53002-0339-30 ",.01)
 ;;53002-0339-30
 ;;9002226.02101,"730,53002-0339-30 ",.02)
 ;;53002-0339-30
 ;;9002226.02101,"730,53002-0339-60 ",.01)
 ;;53002-0339-60
 ;;9002226.02101,"730,53002-0339-60 ",.02)
 ;;53002-0339-60
 ;;9002226.02101,"730,53002-0361-10 ",.01)
 ;;53002-0361-10
 ;;9002226.02101,"730,53002-0361-10 ",.02)
 ;;53002-0361-10
 ;;9002226.02101,"730,53002-0361-20 ",.01)
 ;;53002-0361-20
 ;;9002226.02101,"730,53002-0361-20 ",.02)
 ;;53002-0361-20
 ;;9002226.02101,"730,53002-0361-30 ",.01)
 ;;53002-0361-30
 ;;9002226.02101,"730,53002-0361-30 ",.02)
 ;;53002-0361-30
 ;;9002226.02101,"730,53002-0361-40 ",.01)
 ;;53002-0361-40
 ;;9002226.02101,"730,53002-0361-40 ",.02)
 ;;53002-0361-40
 ;;9002226.02101,"730,53002-0491-00 ",.01)
 ;;53002-0491-00
 ;;9002226.02101,"730,53002-0491-00 ",.02)
 ;;53002-0491-00
 ;;9002226.02101,"730,53002-0491-30 ",.01)
 ;;53002-0491-30
 ;;9002226.02101,"730,53002-0491-30 ",.02)
 ;;53002-0491-30
 ;;9002226.02101,"730,53002-0491-60 ",.01)
 ;;53002-0491-60
 ;;9002226.02101,"730,53002-0491-60 ",.02)
 ;;53002-0491-60
 ;;9002226.02101,"730,53002-0502-05 ",.01)
 ;;53002-0502-05
 ;;9002226.02101,"730,53002-0502-05 ",.02)
 ;;53002-0502-05
 ;;9002226.02101,"730,53002-0502-10 ",.01)
 ;;53002-0502-10
 ;;9002226.02101,"730,53002-0502-10 ",.02)
 ;;53002-0502-10
 ;;9002226.02101,"730,53002-0502-20 ",.01)
 ;;53002-0502-20
 ;;9002226.02101,"730,53002-0502-20 ",.02)
 ;;53002-0502-20
 ;;9002226.02101,"730,53002-0502-30 ",.01)
 ;;53002-0502-30
 ;;9002226.02101,"730,53002-0502-30 ",.02)
 ;;53002-0502-30
 ;;9002226.02101,"730,53002-1292-01 ",.01)
 ;;53002-1292-01
 ;;9002226.02101,"730,53002-1292-01 ",.02)
 ;;53002-1292-01
 ;;9002226.02101,"730,53002-1292-02 ",.01)
 ;;53002-1292-02
 ;;9002226.02101,"730,53002-1292-02 ",.02)
 ;;53002-1292-02
 ;;9002226.02101,"730,53002-1292-03 ",.01)
 ;;53002-1292-03
 ;;9002226.02101,"730,53002-1292-03 ",.02)
 ;;53002-1292-03
 ;;9002226.02101,"730,53002-1594-01 ",.01)
 ;;53002-1594-01
 ;;9002226.02101,"730,53002-1594-01 ",.02)
 ;;53002-1594-01
 ;;9002226.02101,"730,53265-0235-10 ",.01)
 ;;53265-0235-10
 ;;9002226.02101,"730,53265-0235-10 ",.02)
 ;;53265-0235-10
 ;;9002226.02101,"730,53265-0235-50 ",.01)
 ;;53265-0235-50
 ;;9002226.02101,"730,53265-0235-50 ",.02)
 ;;53265-0235-50
 ;;9002226.02101,"730,53265-0236-10 ",.01)
 ;;53265-0236-10
 ;;9002226.02101,"730,53265-0236-10 ",.02)
 ;;53265-0236-10
 ;;9002226.02101,"730,53265-0236-50 ",.01)
 ;;53265-0236-50
 ;;9002226.02101,"730,53265-0236-50 ",.02)
 ;;53265-0236-50
 ;;9002226.02101,"730,53265-0240-10 ",.01)
 ;;53265-0240-10
 ;;9002226.02101,"730,53265-0240-10 ",.02)
 ;;53265-0240-10
 ;;9002226.02101,"730,53489-0104-01 ",.01)
 ;;53489-0104-01
 ;;9002226.02101,"730,53489-0104-01 ",.02)
 ;;53489-0104-01
 ;;9002226.02101,"730,53489-0104-10 ",.01)
 ;;53489-0104-10
 ;;9002226.02101,"730,53489-0104-10 ",.02)
 ;;53489-0104-10
 ;;9002226.02101,"730,53489-0105-01 ",.01)
 ;;53489-0105-01
 ;;9002226.02101,"730,53489-0105-01 ",.02)
 ;;53489-0105-01
 ;;9002226.02101,"730,53489-0105-10 ",.01)
 ;;53489-0105-10
 ;;9002226.02101,"730,53489-0105-10 ",.02)
 ;;53489-0105-10
 ;;9002226.02101,"730,53489-0106-01 ",.01)
 ;;53489-0106-01
 ;;9002226.02101,"730,53489-0106-01 ",.02)
 ;;53489-0106-01
 ;;9002226.02101,"730,53489-0106-10 ",.01)
 ;;53489-0106-10
 ;;9002226.02101,"730,53489-0106-10 ",.02)
 ;;53489-0106-10
 ;;9002226.02101,"730,53489-0107-01 ",.01)
 ;;53489-0107-01
 ;;9002226.02101,"730,53489-0107-01 ",.02)
 ;;53489-0107-01
 ;;9002226.02101,"730,53489-0107-05 ",.01)
 ;;53489-0107-05
 ;;9002226.02101,"730,53489-0107-05 ",.02)
 ;;53489-0107-05
 ;;9002226.02101,"730,53489-0108-01 ",.01)
 ;;53489-0108-01
 ;;9002226.02101,"730,53489-0108-01 ",.02)
 ;;53489-0108-01
 ;;9002226.02101,"730,53489-0109-01 ",.01)
 ;;53489-0109-01
 ;;9002226.02101,"730,53489-0109-01 ",.02)
 ;;53489-0109-01
 ;;9002226.02101,"730,53489-0148-01 ",.01)
 ;;53489-0148-01
 ;;9002226.02101,"730,53489-0148-01 ",.02)
 ;;53489-0148-01
 ;;9002226.02101,"730,53489-0148-10 ",.01)
 ;;53489-0148-10
 ;;9002226.02101,"730,53489-0148-10 ",.02)
 ;;53489-0148-10
 ;;9002226.02101,"730,53489-0149-01 ",.01)
 ;;53489-0149-01
 ;;9002226.02101,"730,53489-0149-01 ",.02)
 ;;53489-0149-01
 ;;9002226.02101,"730,53489-0149-10 ",.01)
 ;;53489-0149-10
 ;;9002226.02101,"730,53489-0149-10 ",.02)
 ;;53489-0149-10
 ;;9002226.02101,"730,53489-0150-01 ",.01)
 ;;53489-0150-01
 ;;9002226.02101,"730,53489-0150-01 ",.02)
 ;;53489-0150-01
 ;;9002226.02101,"730,53489-0150-10 ",.01)
 ;;53489-0150-10
 ;;9002226.02101,"730,53489-0150-10 ",.02)
 ;;53489-0150-10
 ;;9002226.02101,"730,53489-0281-01 ",.01)
 ;;53489-0281-01
 ;;9002226.02101,"730,53489-0281-01 ",.02)
 ;;53489-0281-01
 ;;9002226.02101,"730,53489-0281-05 ",.01)
 ;;53489-0281-05
 ;;9002226.02101,"730,53489-0281-05 ",.02)
 ;;53489-0281-05
 ;;9002226.02101,"730,53489-0281-10 ",.01)
 ;;53489-0281-10
 ;;9002226.02101,"730,53489-0281-10 ",.02)
 ;;53489-0281-10
 ;;9002226.02101,"730,53489-0330-01 ",.01)
 ;;53489-0330-01
 ;;9002226.02101,"730,53489-0330-01 ",.02)
 ;;53489-0330-01
 ;;9002226.02101,"730,53489-0330-10 ",.01)
 ;;53489-0330-10
 ;;9002226.02101,"730,53489-0330-10 ",.02)
 ;;53489-0330-10
 ;;9002226.02101,"730,53489-0331-01 ",.01)
 ;;53489-0331-01
 ;;9002226.02101,"730,53489-0331-01 ",.02)
 ;;53489-0331-01
 ;;9002226.02101,"730,53489-0331-10 ",.01)
 ;;53489-0331-10
 ;;9002226.02101,"730,53489-0331-10 ",.02)
 ;;53489-0331-10
 ;;9002226.02101,"730,53489-0332-01 ",.01)
 ;;53489-0332-01
 ;;9002226.02101,"730,53489-0332-01 ",.02)
 ;;53489-0332-01
 ;;9002226.02101,"730,53489-0332-10 ",.01)
 ;;53489-0332-10
 ;;9002226.02101,"730,53489-0332-10 ",.02)
 ;;53489-0332-10
 ;;9002226.02101,"730,53489-0500-01 ",.01)
 ;;53489-0500-01
 ;;9002226.02101,"730,53489-0500-01 ",.02)
 ;;53489-0500-01
 ;;9002226.02101,"730,53489-0600-01 ",.01)
 ;;53489-0600-01
 ;;9002226.02101,"730,53489-0600-01 ",.02)
 ;;53489-0600-01
 ;;9002226.02101,"730,53489-0600-10 ",.01)
 ;;53489-0600-10
 ;;9002226.02101,"730,53489-0600-10 ",.02)
 ;;53489-0600-10
 ;;9002226.02101,"730,53489-0601-01 ",.01)
 ;;53489-0601-01
 ;;9002226.02101,"730,53489-0601-01 ",.02)
 ;;53489-0601-01
 ;;9002226.02101,"730,53489-0601-10 ",.01)
 ;;53489-0601-10
 ;;9002226.02101,"730,53489-0601-10 ",.02)
 ;;53489-0601-10
 ;;9002226.02101,"730,54348-0507-30 ",.01)
 ;;54348-0507-30
 ;;9002226.02101,"730,54348-0507-30 ",.02)
 ;;54348-0507-30
 ;;9002226.02101,"730,54348-0588-08 ",.01)
 ;;54348-0588-08
 ;;9002226.02101,"730,54348-0588-08 ",.02)
 ;;54348-0588-08
 ;;9002226.02101,"730,54348-0588-10 ",.01)
 ;;54348-0588-10
 ;;9002226.02101,"730,54348-0588-10 ",.02)
 ;;54348-0588-10
 ;;9002226.02101,"730,54348-0588-30 ",.01)
 ;;54348-0588-30
 ;;9002226.02101,"730,54348-0588-30 ",.02)
 ;;54348-0588-30
 ;;9002226.02101,"730,54348-0987-16 ",.01)
 ;;54348-0987-16
 ;;9002226.02101,"730,54348-0987-16 ",.02)
 ;;54348-0987-16
 ;;9002226.02101,"730,54569-0013-00 ",.01)
 ;;54569-0013-00
 ;;9002226.02101,"730,54569-0013-00 ",.02)
 ;;54569-0013-00
 ;;9002226.02101,"730,54569-0013-02 ",.01)
 ;;54569-0013-02
 ;;9002226.02101,"730,54569-0013-02 ",.02)
 ;;54569-0013-02
 ;;9002226.02101,"730,54569-0172-00 ",.01)
 ;;54569-0172-00
 ;;9002226.02101,"730,54569-0172-00 ",.02)
 ;;54569-0172-00
 ;;9002226.02101,"730,54569-0172-01 ",.01)
 ;;54569-0172-01
 ;;9002226.02101,"730,54569-0172-01 ",.02)
 ;;54569-0172-01
 ;;9002226.02101,"730,54569-0172-04 ",.01)
 ;;54569-0172-04