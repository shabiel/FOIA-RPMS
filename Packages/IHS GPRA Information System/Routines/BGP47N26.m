BGP47N26 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 16, 2014;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"730,51660-0785-10 ",.02)
 ;;51660-0785-10
 ;;9002226.02101,"730,51660-0786-01 ",.01)
 ;;51660-0786-01
 ;;9002226.02101,"730,51660-0786-01 ",.02)
 ;;51660-0786-01
 ;;9002226.02101,"730,51660-0786-10 ",.01)
 ;;51660-0786-10
 ;;9002226.02101,"730,51660-0786-10 ",.02)
 ;;51660-0786-10
 ;;9002226.02101,"730,51660-0787-01 ",.01)
 ;;51660-0787-01
 ;;9002226.02101,"730,51660-0787-01 ",.02)
 ;;51660-0787-01
 ;;9002226.02101,"730,51660-0787-10 ",.01)
 ;;51660-0787-10
 ;;9002226.02101,"730,51660-0787-10 ",.02)
 ;;51660-0787-10
 ;;9002226.02101,"730,51672-4011-01 ",.01)
 ;;51672-4011-01
 ;;9002226.02101,"730,51672-4011-01 ",.02)
 ;;51672-4011-01
 ;;9002226.02101,"730,51672-4011-05 ",.01)
 ;;51672-4011-05
 ;;9002226.02101,"730,51672-4011-05 ",.02)
 ;;51672-4011-05
 ;;9002226.02101,"730,51672-4011-06 ",.01)
 ;;51672-4011-06
 ;;9002226.02101,"730,51672-4011-06 ",.02)
 ;;51672-4011-06
 ;;9002226.02101,"730,51672-4012-01 ",.01)
 ;;51672-4012-01
 ;;9002226.02101,"730,51672-4012-01 ",.02)
 ;;51672-4012-01
 ;;9002226.02101,"730,51672-4012-05 ",.01)
 ;;51672-4012-05
 ;;9002226.02101,"730,51672-4012-05 ",.02)
 ;;51672-4012-05
 ;;9002226.02101,"730,51672-4012-06 ",.01)
 ;;51672-4012-06
 ;;9002226.02101,"730,51672-4012-06 ",.02)
 ;;51672-4012-06
 ;;9002226.02101,"730,51672-4013-01 ",.01)
 ;;51672-4013-01
 ;;9002226.02101,"730,51672-4013-01 ",.02)
 ;;51672-4013-01
 ;;9002226.02101,"730,51672-4013-05 ",.01)
 ;;51672-4013-05
 ;;9002226.02101,"730,51672-4013-05 ",.02)
 ;;51672-4013-05
 ;;9002226.02101,"730,51672-4013-06 ",.01)
 ;;51672-4013-06
 ;;9002226.02101,"730,51672-4013-06 ",.02)
 ;;51672-4013-06
 ;;9002226.02101,"730,51674-0009-01 ",.01)
 ;;51674-0009-01
 ;;9002226.02101,"730,51674-0009-01 ",.02)
 ;;51674-0009-01
 ;;9002226.02101,"730,51862-0179-01 ",.01)
 ;;51862-0179-01
 ;;9002226.02101,"730,51862-0179-01 ",.02)
 ;;51862-0179-01
 ;;9002226.02101,"730,51991-0073-01 ",.01)
 ;;51991-0073-01
 ;;9002226.02101,"730,51991-0073-01 ",.02)
 ;;51991-0073-01
 ;;9002226.02101,"730,51991-0074-01 ",.01)
 ;;51991-0074-01
 ;;9002226.02101,"730,51991-0074-01 ",.02)
 ;;51991-0074-01
 ;;9002226.02101,"730,51991-0074-05 ",.01)
 ;;51991-0074-05
 ;;9002226.02101,"730,51991-0074-05 ",.02)
 ;;51991-0074-05
 ;;9002226.02101,"730,51991-0076-33 ",.01)
 ;;51991-0076-33
 ;;9002226.02101,"730,51991-0076-33 ",.02)
 ;;51991-0076-33
 ;;9002226.02101,"730,51991-0080-51 ",.01)
 ;;51991-0080-51
 ;;9002226.02101,"730,51991-0080-51 ",.02)
 ;;51991-0080-51
 ;;9002226.02101,"730,51991-0080-52 ",.01)
 ;;51991-0080-52
 ;;9002226.02101,"730,51991-0080-52 ",.02)
 ;;51991-0080-52
 ;;9002226.02101,"730,51991-0251-33 ",.01)
 ;;51991-0251-33
 ;;9002226.02101,"730,51991-0251-33 ",.02)
 ;;51991-0251-33
 ;;9002226.02101,"730,51991-0416-01 ",.01)
 ;;51991-0416-01
 ;;9002226.02101,"730,51991-0416-01 ",.02)
 ;;51991-0416-01
 ;;9002226.02101,"730,51991-0416-02 ",.01)
 ;;51991-0416-02
 ;;9002226.02101,"730,51991-0416-02 ",.02)
 ;;51991-0416-02
 ;;9002226.02101,"730,51991-0417-01 ",.01)
 ;;51991-0417-01
 ;;9002226.02101,"730,51991-0417-01 ",.02)
 ;;51991-0417-01
 ;;9002226.02101,"730,51991-0417-02 ",.01)
 ;;51991-0417-02
 ;;9002226.02101,"730,51991-0417-02 ",.02)
 ;;51991-0417-02
 ;;9002226.02101,"730,51991-0418-01 ",.01)
 ;;51991-0418-01
 ;;9002226.02101,"730,51991-0418-01 ",.02)
 ;;51991-0418-01
 ;;9002226.02101,"730,51991-0418-02 ",.01)
 ;;51991-0418-02
 ;;9002226.02101,"730,51991-0418-02 ",.02)
 ;;51991-0418-02
 ;;9002226.02101,"730,52152-0009-02 ",.01)
 ;;52152-0009-02
 ;;9002226.02101,"730,52152-0009-02 ",.02)
 ;;52152-0009-02
 ;;9002226.02101,"730,52152-0009-05 ",.01)
 ;;52152-0009-05
 ;;9002226.02101,"730,52152-0009-05 ",.02)
 ;;52152-0009-05
 ;;9002226.02101,"730,52152-0010-02 ",.01)
 ;;52152-0010-02
 ;;9002226.02101,"730,52152-0010-02 ",.02)
 ;;52152-0010-02
 ;;9002226.02101,"730,52152-0010-05 ",.01)
 ;;52152-0010-05
 ;;9002226.02101,"730,52152-0010-05 ",.02)
 ;;52152-0010-05
 ;;9002226.02101,"730,52152-0293-08 ",.01)
 ;;52152-0293-08
 ;;9002226.02101,"730,52152-0293-08 ",.02)
 ;;52152-0293-08
 ;;9002226.02101,"730,52152-0293-30 ",.01)
 ;;52152-0293-30
 ;;9002226.02101,"730,52152-0293-30 ",.02)
 ;;52152-0293-30
 ;;9002226.02101,"730,52152-0294-08 ",.01)
 ;;52152-0294-08
 ;;9002226.02101,"730,52152-0294-08 ",.02)
 ;;52152-0294-08
 ;;9002226.02101,"730,52152-0294-30 ",.01)
 ;;52152-0294-30
 ;;9002226.02101,"730,52152-0294-30 ",.02)
 ;;52152-0294-30
 ;;9002226.02101,"730,52544-0080-01 ",.01)
 ;;52544-0080-01
 ;;9002226.02101,"730,52544-0080-01 ",.02)
 ;;52544-0080-01
 ;;9002226.02101,"730,52544-0082-01 ",.01)
 ;;52544-0082-01
 ;;9002226.02101,"730,52544-0082-01 ",.02)
 ;;52544-0082-01
 ;;9002226.02101,"730,52544-0485-01 ",.01)
 ;;52544-0485-01
 ;;9002226.02101,"730,52544-0485-01 ",.02)
 ;;52544-0485-01
 ;;9002226.02101,"730,52544-0485-05 ",.01)
 ;;52544-0485-05
 ;;9002226.02101,"730,52544-0485-05 ",.02)
 ;;52544-0485-05
 ;;9002226.02101,"730,52544-0594-01 ",.01)
 ;;52544-0594-01
 ;;9002226.02101,"730,52544-0594-01 ",.02)
 ;;52544-0594-01
 ;;9002226.02101,"730,52544-0595-01 ",.01)
 ;;52544-0595-01
 ;;9002226.02101,"730,52544-0595-01 ",.02)
 ;;52544-0595-01
 ;;9002226.02101,"730,52544-0596-01 ",.01)
 ;;52544-0596-01
 ;;9002226.02101,"730,52544-0596-01 ",.02)
 ;;52544-0596-01
 ;;9002226.02101,"730,52544-0696-01 ",.01)
 ;;52544-0696-01
 ;;9002226.02101,"730,52544-0696-01 ",.02)
 ;;52544-0696-01
 ;;9002226.02101,"730,52544-0706-01 ",.01)
 ;;52544-0706-01
 ;;9002226.02101,"730,52544-0706-01 ",.02)
 ;;52544-0706-01
 ;;9002226.02101,"730,52544-0707-05 ",.01)
 ;;52544-0707-05
 ;;9002226.02101,"730,52544-0707-05 ",.02)
 ;;52544-0707-05
 ;;9002226.02101,"730,52544-0708-01 ",.01)
 ;;52544-0708-01
 ;;9002226.02101,"730,52544-0708-01 ",.02)
 ;;52544-0708-01
 ;;9002226.02101,"730,52544-0709-01 ",.01)
 ;;52544-0709-01
 ;;9002226.02101,"730,52544-0709-01 ",.02)
 ;;52544-0709-01
 ;;9002226.02101,"730,52544-0709-05 ",.01)
 ;;52544-0709-05
 ;;9002226.02101,"730,52544-0709-05 ",.02)
 ;;52544-0709-05
 ;;9002226.02101,"730,52544-0955-01 ",.01)
 ;;52544-0955-01
 ;;9002226.02101,"730,52544-0955-01 ",.02)
 ;;52544-0955-01
 ;;9002226.02101,"730,52544-0956-01 ",.01)
 ;;52544-0956-01
 ;;9002226.02101,"730,52544-0956-01 ",.02)
 ;;52544-0956-01
 ;;9002226.02101,"730,52544-0957-01 ",.01)
 ;;52544-0957-01
 ;;9002226.02101,"730,52544-0957-01 ",.02)
 ;;52544-0957-01
 ;;9002226.02101,"730,52544-0957-05 ",.01)
 ;;52544-0957-05
 ;;9002226.02101,"730,52544-0957-05 ",.02)
 ;;52544-0957-05
 ;;9002226.02101,"730,52544-0958-01 ",.01)
 ;;52544-0958-01
 ;;9002226.02101,"730,52544-0958-01 ",.02)
 ;;52544-0958-01
 ;;9002226.02101,"730,52555-0791-01 ",.01)
 ;;52555-0791-01
 ;;9002226.02101,"730,52555-0791-01 ",.02)
 ;;52555-0791-01
 ;;9002226.02101,"730,52555-0791-05 ",.01)
 ;;52555-0791-05
 ;;9002226.02101,"730,52555-0791-05 ",.02)
 ;;52555-0791-05
 ;;9002226.02101,"730,52555-0792-01 ",.01)
 ;;52555-0792-01
 ;;9002226.02101,"730,52555-0792-01 ",.02)
 ;;52555-0792-01
 ;;9002226.02101,"730,52555-0792-05 ",.01)
 ;;52555-0792-05
 ;;9002226.02101,"730,52555-0792-05 ",.02)
 ;;52555-0792-05
 ;;9002226.02101,"730,52747-0600-60 ",.01)
 ;;52747-0600-60
 ;;9002226.02101,"730,52747-0600-60 ",.02)
 ;;52747-0600-60
 ;;9002226.02101,"730,52959-0008-02 ",.01)
 ;;52959-0008-02
 ;;9002226.02101,"730,52959-0008-02 ",.02)
 ;;52959-0008-02
 ;;9002226.02101,"730,52959-0008-15 ",.01)
 ;;52959-0008-15
 ;;9002226.02101,"730,52959-0008-15 ",.02)
 ;;52959-0008-15
 ;;9002226.02101,"730,52959-0008-20 ",.01)
 ;;52959-0008-20
 ;;9002226.02101,"730,52959-0008-20 ",.02)
 ;;52959-0008-20
 ;;9002226.02101,"730,52959-0008-30 ",.01)
 ;;52959-0008-30
 ;;9002226.02101,"730,52959-0008-30 ",.02)
 ;;52959-0008-30
 ;;9002226.02101,"730,52959-0008-40 ",.01)
 ;;52959-0008-40
 ;;9002226.02101,"730,52959-0008-40 ",.02)
 ;;52959-0008-40
 ;;9002226.02101,"730,52959-0008-50 ",.01)
 ;;52959-0008-50
 ;;9002226.02101,"730,52959-0008-50 ",.02)
 ;;52959-0008-50
 ;;9002226.02101,"730,52959-0008-60 ",.01)
 ;;52959-0008-60
 ;;9002226.02101,"730,52959-0008-60 ",.02)
 ;;52959-0008-60
 ;;9002226.02101,"730,52959-0008-90 ",.01)
 ;;52959-0008-90
 ;;9002226.02101,"730,52959-0008-90 ",.02)
 ;;52959-0008-90
 ;;9002226.02101,"730,52959-0023-06 ",.01)
 ;;52959-0023-06
 ;;9002226.02101,"730,52959-0023-06 ",.02)
 ;;52959-0023-06
 ;;9002226.02101,"730,52959-0023-20 ",.01)
 ;;52959-0023-20
 ;;9002226.02101,"730,52959-0023-20 ",.02)
 ;;52959-0023-20
 ;;9002226.02101,"730,52959-0023-30 ",.01)
 ;;52959-0023-30
 ;;9002226.02101,"730,52959-0023-30 ",.02)
 ;;52959-0023-30
 ;;9002226.02101,"730,52959-0023-50 ",.01)
 ;;52959-0023-50
 ;;9002226.02101,"730,52959-0023-50 ",.02)
 ;;52959-0023-50
 ;;9002226.02101,"730,52959-0023-60 ",.01)
 ;;52959-0023-60
 ;;9002226.02101,"730,52959-0023-60 ",.02)
 ;;52959-0023-60
 ;;9002226.02101,"730,52959-0119-15 ",.01)
 ;;52959-0119-15
 ;;9002226.02101,"730,52959-0119-15 ",.02)
 ;;52959-0119-15
 ;;9002226.02101,"730,52959-0119-30 ",.01)
 ;;52959-0119-30
 ;;9002226.02101,"730,52959-0119-30 ",.02)
 ;;52959-0119-30
 ;;9002226.02101,"730,52959-0124-00 ",.01)
 ;;52959-0124-00
 ;;9002226.02101,"730,52959-0124-00 ",.02)
 ;;52959-0124-00
 ;;9002226.02101,"730,52959-0274-03 ",.01)
 ;;52959-0274-03
 ;;9002226.02101,"730,52959-0274-03 ",.02)
 ;;52959-0274-03
 ;;9002226.02101,"730,52959-0274-06 ",.01)
 ;;52959-0274-06
 ;;9002226.02101,"730,52959-0274-06 ",.02)
 ;;52959-0274-06
 ;;9002226.02101,"730,52959-0274-30 ",.01)
 ;;52959-0274-30
 ;;9002226.02101,"730,52959-0274-30 ",.02)
 ;;52959-0274-30
 ;;9002226.02101,"730,52959-0284-00 ",.01)
 ;;52959-0284-00
 ;;9002226.02101,"730,52959-0284-00 ",.02)
 ;;52959-0284-00
 ;;9002226.02101,"730,52959-0284-30 ",.01)
 ;;52959-0284-30
 ;;9002226.02101,"730,52959-0284-30 ",.02)
 ;;52959-0284-30
 ;;9002226.02101,"730,52959-0284-60 ",.01)
 ;;52959-0284-60
 ;;9002226.02101,"730,52959-0284-60 ",.02)
 ;;52959-0284-60
 ;;9002226.02101,"730,52959-0348-00 ",.01)
 ;;52959-0348-00
 ;;9002226.02101,"730,52959-0348-00 ",.02)
 ;;52959-0348-00
 ;;9002226.02101,"730,52959-0348-02 ",.01)
 ;;52959-0348-02
 ;;9002226.02101,"730,52959-0348-02 ",.02)
 ;;52959-0348-02
 ;;9002226.02101,"730,52959-0348-10 ",.01)
 ;;52959-0348-10
 ;;9002226.02101,"730,52959-0348-10 ",.02)
 ;;52959-0348-10
 ;;9002226.02101,"730,52959-0348-12 ",.01)
 ;;52959-0348-12
 ;;9002226.02101,"730,52959-0348-12 ",.02)
 ;;52959-0348-12
 ;;9002226.02101,"730,52959-0348-14 ",.01)
 ;;52959-0348-14
 ;;9002226.02101,"730,52959-0348-14 ",.02)
 ;;52959-0348-14
 ;;9002226.02101,"730,52959-0348-15 ",.01)
 ;;52959-0348-15
 ;;9002226.02101,"730,52959-0348-15 ",.02)
 ;;52959-0348-15
 ;;9002226.02101,"730,52959-0348-20 ",.01)
 ;;52959-0348-20
 ;;9002226.02101,"730,52959-0348-20 ",.02)
 ;;52959-0348-20
 ;;9002226.02101,"730,52959-0348-30 ",.01)
 ;;52959-0348-30
 ;;9002226.02101,"730,52959-0348-30 ",.02)
 ;;52959-0348-30
 ;;9002226.02101,"730,52959-0348-50 ",.01)
 ;;52959-0348-50
 ;;9002226.02101,"730,52959-0348-50 ",.02)
 ;;52959-0348-50
 ;;9002226.02101,"730,52959-0348-60 ",.01)
 ;;52959-0348-60
 ;;9002226.02101,"730,52959-0348-60 ",.02)
 ;;52959-0348-60
 ;;9002226.02101,"730,52959-0348-90 ",.01)
 ;;52959-0348-90
 ;;9002226.02101,"730,52959-0348-90 ",.02)
 ;;52959-0348-90
 ;;9002226.02101,"730,52959-0362-10 ",.01)
 ;;52959-0362-10
 ;;9002226.02101,"730,52959-0362-10 ",.02)
 ;;52959-0362-10
 ;;9002226.02101,"730,52959-0362-15 ",.01)
 ;;52959-0362-15
 ;;9002226.02101,"730,52959-0362-15 ",.02)
 ;;52959-0362-15
 ;;9002226.02101,"730,52959-0362-20 ",.01)
 ;;52959-0362-20
 ;;9002226.02101,"730,52959-0362-20 ",.02)
 ;;52959-0362-20
 ;;9002226.02101,"730,52959-0362-30 ",.01)
 ;;52959-0362-30
 ;;9002226.02101,"730,52959-0362-30 ",.02)
 ;;52959-0362-30
 ;;9002226.02101,"730,52959-0362-60 ",.01)
 ;;52959-0362-60
 ;;9002226.02101,"730,52959-0362-60 ",.02)
 ;;52959-0362-60
 ;;9002226.02101,"730,52959-0363-10 ",.01)
 ;;52959-0363-10
 ;;9002226.02101,"730,52959-0363-10 ",.02)
 ;;52959-0363-10
 ;;9002226.02101,"730,52959-0363-15 ",.01)
 ;;52959-0363-15
 ;;9002226.02101,"730,52959-0363-15 ",.02)
 ;;52959-0363-15
 ;;9002226.02101,"730,52959-0363-20 ",.01)
 ;;52959-0363-20
 ;;9002226.02101,"730,52959-0363-20 ",.02)
 ;;52959-0363-20
 ;;9002226.02101,"730,52959-0363-21 ",.01)
 ;;52959-0363-21
 ;;9002226.02101,"730,52959-0363-21 ",.02)
 ;;52959-0363-21
 ;;9002226.02101,"730,52959-0363-25 ",.01)
 ;;52959-0363-25
 ;;9002226.02101,"730,52959-0363-25 ",.02)
 ;;52959-0363-25
 ;;9002226.02101,"730,52959-0363-30 ",.01)
 ;;52959-0363-30
 ;;9002226.02101,"730,52959-0363-30 ",.02)
 ;;52959-0363-30
 ;;9002226.02101,"730,52959-0363-60 ",.01)
 ;;52959-0363-60
 ;;9002226.02101,"730,52959-0363-60 ",.02)
 ;;52959-0363-60
 ;;9002226.02101,"730,52959-0370-00 ",.01)
 ;;52959-0370-00
 ;;9002226.02101,"730,52959-0370-00 ",.02)
 ;;52959-0370-00
 ;;9002226.02101,"730,52959-0370-02 ",.01)
 ;;52959-0370-02
 ;;9002226.02101,"730,52959-0370-02 ",.02)
 ;;52959-0370-02
 ;;9002226.02101,"730,52959-0370-12 ",.01)
 ;;52959-0370-12
 ;;9002226.02101,"730,52959-0370-12 ",.02)
 ;;52959-0370-12
 ;;9002226.02101,"730,52959-0370-20 ",.01)
 ;;52959-0370-20
 ;;9002226.02101,"730,52959-0370-20 ",.02)
 ;;52959-0370-20
 ;;9002226.02101,"730,52959-0370-25 ",.01)
 ;;52959-0370-25
 ;;9002226.02101,"730,52959-0370-25 ",.02)
 ;;52959-0370-25
 ;;9002226.02101,"730,52959-0370-30 ",.01)
 ;;52959-0370-30
 ;;9002226.02101,"730,52959-0370-30 ",.02)
 ;;52959-0370-30
 ;;9002226.02101,"730,52959-0370-50 ",.01)
 ;;52959-0370-50