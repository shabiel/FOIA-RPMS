BGP61A20 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1799,52959-0274-06 ",.01)
 ;;52959-0274-06
 ;;9002226.02101,"1799,52959-0274-06 ",.02)
 ;;52959-0274-06
 ;;9002226.02101,"1799,52959-0274-30 ",.01)
 ;;52959-0274-30
 ;;9002226.02101,"1799,52959-0274-30 ",.02)
 ;;52959-0274-30
 ;;9002226.02101,"1799,52959-0284-00 ",.01)
 ;;52959-0284-00
 ;;9002226.02101,"1799,52959-0284-00 ",.02)
 ;;52959-0284-00
 ;;9002226.02101,"1799,52959-0284-30 ",.01)
 ;;52959-0284-30
 ;;9002226.02101,"1799,52959-0284-30 ",.02)
 ;;52959-0284-30
 ;;9002226.02101,"1799,52959-0284-60 ",.01)
 ;;52959-0284-60
 ;;9002226.02101,"1799,52959-0284-60 ",.02)
 ;;52959-0284-60
 ;;9002226.02101,"1799,52959-0348-00 ",.01)
 ;;52959-0348-00
 ;;9002226.02101,"1799,52959-0348-00 ",.02)
 ;;52959-0348-00
 ;;9002226.02101,"1799,52959-0348-02 ",.01)
 ;;52959-0348-02
 ;;9002226.02101,"1799,52959-0348-02 ",.02)
 ;;52959-0348-02
 ;;9002226.02101,"1799,52959-0348-10 ",.01)
 ;;52959-0348-10
 ;;9002226.02101,"1799,52959-0348-10 ",.02)
 ;;52959-0348-10
 ;;9002226.02101,"1799,52959-0348-12 ",.01)
 ;;52959-0348-12
 ;;9002226.02101,"1799,52959-0348-12 ",.02)
 ;;52959-0348-12
 ;;9002226.02101,"1799,52959-0348-14 ",.01)
 ;;52959-0348-14
 ;;9002226.02101,"1799,52959-0348-14 ",.02)
 ;;52959-0348-14
 ;;9002226.02101,"1799,52959-0348-15 ",.01)
 ;;52959-0348-15
 ;;9002226.02101,"1799,52959-0348-15 ",.02)
 ;;52959-0348-15
 ;;9002226.02101,"1799,52959-0348-20 ",.01)
 ;;52959-0348-20
 ;;9002226.02101,"1799,52959-0348-20 ",.02)
 ;;52959-0348-20
 ;;9002226.02101,"1799,52959-0348-30 ",.01)
 ;;52959-0348-30
 ;;9002226.02101,"1799,52959-0348-30 ",.02)
 ;;52959-0348-30
 ;;9002226.02101,"1799,52959-0348-50 ",.01)
 ;;52959-0348-50
 ;;9002226.02101,"1799,52959-0348-50 ",.02)
 ;;52959-0348-50
 ;;9002226.02101,"1799,52959-0348-60 ",.01)
 ;;52959-0348-60
 ;;9002226.02101,"1799,52959-0348-60 ",.02)
 ;;52959-0348-60
 ;;9002226.02101,"1799,52959-0348-90 ",.01)
 ;;52959-0348-90
 ;;9002226.02101,"1799,52959-0348-90 ",.02)
 ;;52959-0348-90
 ;;9002226.02101,"1799,52959-0362-10 ",.01)
 ;;52959-0362-10
 ;;9002226.02101,"1799,52959-0362-10 ",.02)
 ;;52959-0362-10
 ;;9002226.02101,"1799,52959-0362-15 ",.01)
 ;;52959-0362-15
 ;;9002226.02101,"1799,52959-0362-15 ",.02)
 ;;52959-0362-15
 ;;9002226.02101,"1799,52959-0362-20 ",.01)
 ;;52959-0362-20
 ;;9002226.02101,"1799,52959-0362-20 ",.02)
 ;;52959-0362-20
 ;;9002226.02101,"1799,52959-0362-30 ",.01)
 ;;52959-0362-30
 ;;9002226.02101,"1799,52959-0362-30 ",.02)
 ;;52959-0362-30
 ;;9002226.02101,"1799,52959-0362-60 ",.01)
 ;;52959-0362-60
 ;;9002226.02101,"1799,52959-0362-60 ",.02)
 ;;52959-0362-60
 ;;9002226.02101,"1799,52959-0363-10 ",.01)
 ;;52959-0363-10
 ;;9002226.02101,"1799,52959-0363-10 ",.02)
 ;;52959-0363-10
 ;;9002226.02101,"1799,52959-0363-15 ",.01)
 ;;52959-0363-15
 ;;9002226.02101,"1799,52959-0363-15 ",.02)
 ;;52959-0363-15
 ;;9002226.02101,"1799,52959-0363-20 ",.01)
 ;;52959-0363-20
 ;;9002226.02101,"1799,52959-0363-20 ",.02)
 ;;52959-0363-20
 ;;9002226.02101,"1799,52959-0363-21 ",.01)
 ;;52959-0363-21
 ;;9002226.02101,"1799,52959-0363-21 ",.02)
 ;;52959-0363-21
 ;;9002226.02101,"1799,52959-0363-25 ",.01)
 ;;52959-0363-25
 ;;9002226.02101,"1799,52959-0363-25 ",.02)
 ;;52959-0363-25
 ;;9002226.02101,"1799,52959-0363-30 ",.01)
 ;;52959-0363-30
 ;;9002226.02101,"1799,52959-0363-30 ",.02)
 ;;52959-0363-30
 ;;9002226.02101,"1799,52959-0363-60 ",.01)
 ;;52959-0363-60
 ;;9002226.02101,"1799,52959-0363-60 ",.02)
 ;;52959-0363-60
 ;;9002226.02101,"1799,52959-0370-00 ",.01)
 ;;52959-0370-00
 ;;9002226.02101,"1799,52959-0370-00 ",.02)
 ;;52959-0370-00
 ;;9002226.02101,"1799,52959-0370-02 ",.01)
 ;;52959-0370-02
 ;;9002226.02101,"1799,52959-0370-02 ",.02)
 ;;52959-0370-02
 ;;9002226.02101,"1799,52959-0370-12 ",.01)
 ;;52959-0370-12
 ;;9002226.02101,"1799,52959-0370-12 ",.02)
 ;;52959-0370-12
 ;;9002226.02101,"1799,52959-0370-20 ",.01)
 ;;52959-0370-20
 ;;9002226.02101,"1799,52959-0370-20 ",.02)
 ;;52959-0370-20
 ;;9002226.02101,"1799,52959-0370-25 ",.01)
 ;;52959-0370-25
 ;;9002226.02101,"1799,52959-0370-25 ",.02)
 ;;52959-0370-25
 ;;9002226.02101,"1799,52959-0370-30 ",.01)
 ;;52959-0370-30
 ;;9002226.02101,"1799,52959-0370-30 ",.02)
 ;;52959-0370-30
 ;;9002226.02101,"1799,52959-0370-50 ",.01)
 ;;52959-0370-50
 ;;9002226.02101,"1799,52959-0370-50 ",.02)
 ;;52959-0370-50
 ;;9002226.02101,"1799,52959-0370-60 ",.01)
 ;;52959-0370-60
 ;;9002226.02101,"1799,52959-0370-60 ",.02)
 ;;52959-0370-60
 ;;9002226.02101,"1799,52959-0370-90 ",.01)
 ;;52959-0370-90
 ;;9002226.02101,"1799,52959-0370-90 ",.02)
 ;;52959-0370-90
 ;;9002226.02101,"1799,52959-0399-00 ",.01)
 ;;52959-0399-00
 ;;9002226.02101,"1799,52959-0399-00 ",.02)
 ;;52959-0399-00
 ;;9002226.02101,"1799,52959-0399-02 ",.01)
 ;;52959-0399-02
 ;;9002226.02101,"1799,52959-0399-02 ",.02)
 ;;52959-0399-02
 ;;9002226.02101,"1799,52959-0399-30 ",.01)
 ;;52959-0399-30
 ;;9002226.02101,"1799,52959-0399-30 ",.02)
 ;;52959-0399-30
 ;;9002226.02101,"1799,52959-0399-50 ",.01)
 ;;52959-0399-50
 ;;9002226.02101,"1799,52959-0399-50 ",.02)
 ;;52959-0399-50
 ;;9002226.02101,"1799,52959-0399-90 ",.01)
 ;;52959-0399-90
 ;;9002226.02101,"1799,52959-0399-90 ",.02)
 ;;52959-0399-90
 ;;9002226.02101,"1799,52959-0514-00 ",.01)
 ;;52959-0514-00
 ;;9002226.02101,"1799,52959-0514-00 ",.02)
 ;;52959-0514-00
 ;;9002226.02101,"1799,52959-0514-01 ",.01)
 ;;52959-0514-01
 ;;9002226.02101,"1799,52959-0514-01 ",.02)
 ;;52959-0514-01
 ;;9002226.02101,"1799,52959-0514-10 ",.01)
 ;;52959-0514-10
 ;;9002226.02101,"1799,52959-0514-10 ",.02)
 ;;52959-0514-10
 ;;9002226.02101,"1799,52959-0514-20 ",.01)
 ;;52959-0514-20
 ;;9002226.02101,"1799,52959-0514-20 ",.02)
 ;;52959-0514-20
 ;;9002226.02101,"1799,52959-0514-21 ",.01)
 ;;52959-0514-21
 ;;9002226.02101,"1799,52959-0514-21 ",.02)
 ;;52959-0514-21
 ;;9002226.02101,"1799,52959-0514-30 ",.01)
 ;;52959-0514-30
 ;;9002226.02101,"1799,52959-0514-30 ",.02)
 ;;52959-0514-30
 ;;9002226.02101,"1799,52959-0514-60 ",.01)
 ;;52959-0514-60
 ;;9002226.02101,"1799,52959-0514-60 ",.02)
 ;;52959-0514-60
 ;;9002226.02101,"1799,52959-0514-90 ",.01)
 ;;52959-0514-90
 ;;9002226.02101,"1799,52959-0514-90 ",.02)
 ;;52959-0514-90
 ;;9002226.02101,"1799,52959-0537-30 ",.01)
 ;;52959-0537-30
 ;;9002226.02101,"1799,52959-0537-30 ",.02)
 ;;52959-0537-30
 ;;9002226.02101,"1799,52959-0537-90 ",.01)
 ;;52959-0537-90
 ;;9002226.02101,"1799,52959-0537-90 ",.02)
 ;;52959-0537-90
 ;;9002226.02101,"1799,52959-0541-10 ",.01)
 ;;52959-0541-10
 ;;9002226.02101,"1799,52959-0541-10 ",.02)
 ;;52959-0541-10
 ;;9002226.02101,"1799,52959-0541-20 ",.01)
 ;;52959-0541-20
 ;;9002226.02101,"1799,52959-0541-20 ",.02)
 ;;52959-0541-20
 ;;9002226.02101,"1799,52959-0541-30 ",.01)
 ;;52959-0541-30
 ;;9002226.02101,"1799,52959-0541-30 ",.02)
 ;;52959-0541-30
 ;;9002226.02101,"1799,52959-0541-60 ",.01)
 ;;52959-0541-60
 ;;9002226.02101,"1799,52959-0541-60 ",.02)
 ;;52959-0541-60
 ;;9002226.02101,"1799,52959-0542-14 ",.01)
 ;;52959-0542-14
 ;;9002226.02101,"1799,52959-0542-14 ",.02)
 ;;52959-0542-14
 ;;9002226.02101,"1799,52959-0542-15 ",.01)
 ;;52959-0542-15
 ;;9002226.02101,"1799,52959-0542-15 ",.02)
 ;;52959-0542-15
 ;;9002226.02101,"1799,52959-0542-21 ",.01)
 ;;52959-0542-21
 ;;9002226.02101,"1799,52959-0542-21 ",.02)
 ;;52959-0542-21
 ;;9002226.02101,"1799,52959-0542-28 ",.01)
 ;;52959-0542-28
 ;;9002226.02101,"1799,52959-0542-28 ",.02)
 ;;52959-0542-28
 ;;9002226.02101,"1799,52959-0542-30 ",.01)
 ;;52959-0542-30
 ;;9002226.02101,"1799,52959-0542-30 ",.02)
 ;;52959-0542-30
 ;;9002226.02101,"1799,52959-0542-40 ",.01)
 ;;52959-0542-40
 ;;9002226.02101,"1799,52959-0542-40 ",.02)
 ;;52959-0542-40
 ;;9002226.02101,"1799,52959-0542-42 ",.01)
 ;;52959-0542-42
 ;;9002226.02101,"1799,52959-0542-42 ",.02)
 ;;52959-0542-42
 ;;9002226.02101,"1799,52959-0662-30 ",.01)
 ;;52959-0662-30
 ;;9002226.02101,"1799,52959-0662-30 ",.02)
 ;;52959-0662-30
 ;;9002226.02101,"1799,52959-0727-00 ",.01)
 ;;52959-0727-00
 ;;9002226.02101,"1799,52959-0727-00 ",.02)
 ;;52959-0727-00
 ;;9002226.02101,"1799,52959-0727-10 ",.01)
 ;;52959-0727-10
 ;;9002226.02101,"1799,52959-0727-10 ",.02)
 ;;52959-0727-10
 ;;9002226.02101,"1799,52959-0727-30 ",.01)
 ;;52959-0727-30
 ;;9002226.02101,"1799,52959-0727-30 ",.02)
 ;;52959-0727-30
 ;;9002226.02101,"1799,52959-0767-30 ",.01)
 ;;52959-0767-30
 ;;9002226.02101,"1799,52959-0767-30 ",.02)
 ;;52959-0767-30
 ;;9002226.02101,"1799,52959-0767-60 ",.01)
 ;;52959-0767-60
 ;;9002226.02101,"1799,52959-0767-60 ",.02)
 ;;52959-0767-60
 ;;9002226.02101,"1799,52959-0791-30 ",.01)
 ;;52959-0791-30
 ;;9002226.02101,"1799,52959-0791-30 ",.02)
 ;;52959-0791-30
 ;;9002226.02101,"1799,52959-0852-00 ",.01)
 ;;52959-0852-00
 ;;9002226.02101,"1799,52959-0852-00 ",.02)
 ;;52959-0852-00
 ;;9002226.02101,"1799,52959-0852-10 ",.01)
 ;;52959-0852-10
 ;;9002226.02101,"1799,52959-0852-10 ",.02)
 ;;52959-0852-10
 ;;9002226.02101,"1799,52959-0852-12 ",.01)
 ;;52959-0852-12
 ;;9002226.02101,"1799,52959-0852-12 ",.02)
 ;;52959-0852-12
 ;;9002226.02101,"1799,52959-0852-30 ",.01)
 ;;52959-0852-30
 ;;9002226.02101,"1799,52959-0852-30 ",.02)
 ;;52959-0852-30
 ;;9002226.02101,"1799,52959-0852-60 ",.01)
 ;;52959-0852-60
 ;;9002226.02101,"1799,52959-0852-60 ",.02)
 ;;52959-0852-60
 ;;9002226.02101,"1799,52959-0865-00 ",.01)
 ;;52959-0865-00
 ;;9002226.02101,"1799,52959-0865-00 ",.02)
 ;;52959-0865-00
 ;;9002226.02101,"1799,52959-0865-30 ",.01)
 ;;52959-0865-30
 ;;9002226.02101,"1799,52959-0865-30 ",.02)
 ;;52959-0865-30
 ;;9002226.02101,"1799,52959-0870-30 ",.01)
 ;;52959-0870-30
 ;;9002226.02101,"1799,52959-0870-30 ",.02)
 ;;52959-0870-30
 ;;9002226.02101,"1799,52959-0879-02 ",.01)
 ;;52959-0879-02
 ;;9002226.02101,"1799,52959-0879-02 ",.02)
 ;;52959-0879-02
 ;;9002226.02101,"1799,52959-0879-10 ",.01)
 ;;52959-0879-10
 ;;9002226.02101,"1799,52959-0879-10 ",.02)
 ;;52959-0879-10
 ;;9002226.02101,"1799,52959-0879-14 ",.01)
 ;;52959-0879-14
 ;;9002226.02101,"1799,52959-0879-14 ",.02)
 ;;52959-0879-14
 ;;9002226.02101,"1799,52959-0879-15 ",.01)
 ;;52959-0879-15
 ;;9002226.02101,"1799,52959-0879-15 ",.02)
 ;;52959-0879-15
 ;;9002226.02101,"1799,52959-0879-20 ",.01)
 ;;52959-0879-20
 ;;9002226.02101,"1799,52959-0879-20 ",.02)
 ;;52959-0879-20
 ;;9002226.02101,"1799,52959-0879-28 ",.01)
 ;;52959-0879-28
 ;;9002226.02101,"1799,52959-0879-28 ",.02)
 ;;52959-0879-28
 ;;9002226.02101,"1799,52959-0879-30 ",.01)
 ;;52959-0879-30
 ;;9002226.02101,"1799,52959-0879-30 ",.02)
 ;;52959-0879-30
 ;;9002226.02101,"1799,52959-0879-42 ",.01)
 ;;52959-0879-42
 ;;9002226.02101,"1799,52959-0879-42 ",.02)
 ;;52959-0879-42
 ;;9002226.02101,"1799,52959-0879-60 ",.01)
 ;;52959-0879-60
 ;;9002226.02101,"1799,52959-0879-60 ",.02)
 ;;52959-0879-60
 ;;9002226.02101,"1799,52959-0879-90 ",.01)
 ;;52959-0879-90
 ;;9002226.02101,"1799,52959-0879-90 ",.02)
 ;;52959-0879-90
 ;;9002226.02101,"1799,52959-0880-00 ",.01)
 ;;52959-0880-00
 ;;9002226.02101,"1799,52959-0880-00 ",.02)
 ;;52959-0880-00
 ;;9002226.02101,"1799,52959-0880-02 ",.01)
 ;;52959-0880-02
 ;;9002226.02101,"1799,52959-0880-02 ",.02)
 ;;52959-0880-02
 ;;9002226.02101,"1799,52959-0880-10 ",.01)
 ;;52959-0880-10
 ;;9002226.02101,"1799,52959-0880-10 ",.02)
 ;;52959-0880-10
 ;;9002226.02101,"1799,52959-0880-14 ",.01)
 ;;52959-0880-14
 ;;9002226.02101,"1799,52959-0880-14 ",.02)
 ;;52959-0880-14
 ;;9002226.02101,"1799,52959-0880-15 ",.01)
 ;;52959-0880-15
 ;;9002226.02101,"1799,52959-0880-15 ",.02)
 ;;52959-0880-15
 ;;9002226.02101,"1799,52959-0880-20 ",.01)
 ;;52959-0880-20
 ;;9002226.02101,"1799,52959-0880-20 ",.02)
 ;;52959-0880-20
 ;;9002226.02101,"1799,52959-0880-28 ",.01)
 ;;52959-0880-28