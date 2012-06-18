BGP8FXKB ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 28, 2007 ;
 ;;8.0;IHS CLINICAL REPORTING;;MAR 12, 2008
 ;;;BGP6;;SEP 28, 2007
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"630,51655-0452-25 ",.02)
 ;;51655-0452-25
 ;;9002226.02101,"630,51991-0078-01 ",.01)
 ;;51991-0078-01
 ;;9002226.02101,"630,51991-0078-01 ",.02)
 ;;51991-0078-01
 ;;9002226.02101,"630,51991-0079-01 ",.01)
 ;;51991-0079-01
 ;;9002226.02101,"630,51991-0079-01 ",.02)
 ;;51991-0079-01
 ;;9002226.02101,"630,52959-0222-00 ",.01)
 ;;52959-0222-00
 ;;9002226.02101,"630,52959-0222-00 ",.02)
 ;;52959-0222-00
 ;;9002226.02101,"630,52959-0223-00 ",.01)
 ;;52959-0223-00
 ;;9002226.02101,"630,52959-0223-00 ",.02)
 ;;52959-0223-00
 ;;9002226.02101,"630,52959-0223-30 ",.01)
 ;;52959-0223-30
 ;;9002226.02101,"630,52959-0223-30 ",.02)
 ;;52959-0223-30
 ;;9002226.02101,"630,54569-0811-01 ",.01)
 ;;54569-0811-01
 ;;9002226.02101,"630,54569-0811-01 ",.02)
 ;;54569-0811-01
 ;;9002226.02101,"630,54569-0812-00 ",.01)
 ;;54569-0812-00
 ;;9002226.02101,"630,54569-0812-00 ",.02)
 ;;54569-0812-00
 ;;9002226.02101,"630,54569-0812-01 ",.01)
 ;;54569-0812-01
 ;;9002226.02101,"630,54569-0812-01 ",.02)
 ;;54569-0812-01
 ;;9002226.02101,"630,54569-0812-02 ",.01)
 ;;54569-0812-02
 ;;9002226.02101,"630,54569-0812-02 ",.02)
 ;;54569-0812-02
 ;;9002226.02101,"630,54569-0812-05 ",.01)
 ;;54569-0812-05
 ;;9002226.02101,"630,54569-0812-05 ",.02)
 ;;54569-0812-05
 ;;9002226.02101,"630,54569-0813-00 ",.01)
 ;;54569-0813-00
 ;;9002226.02101,"630,54569-0813-00 ",.02)
 ;;54569-0813-00
 ;;9002226.02101,"630,54569-0813-01 ",.01)
 ;;54569-0813-01
 ;;9002226.02101,"630,54569-0813-01 ",.02)
 ;;54569-0813-01
 ;;9002226.02101,"630,54569-0849-00 ",.01)
 ;;54569-0849-00
 ;;9002226.02101,"630,54569-0849-00 ",.02)
 ;;54569-0849-00
 ;;9002226.02101,"630,54569-0849-01 ",.01)
 ;;54569-0849-01
 ;;9002226.02101,"630,54569-0849-01 ",.02)
 ;;54569-0849-01
 ;;9002226.02101,"630,54569-4354-01 ",.01)
 ;;54569-4354-01
 ;;9002226.02101,"630,54569-4354-01 ",.02)
 ;;54569-4354-01
 ;;9002226.02101,"630,54569-4618-00 ",.01)
 ;;54569-4618-00
 ;;9002226.02101,"630,54569-4618-00 ",.02)
 ;;54569-4618-00
 ;;9002226.02101,"630,54569-4673-00 ",.01)
 ;;54569-4673-00
 ;;9002226.02101,"630,54569-4673-00 ",.02)
 ;;54569-4673-00
 ;;9002226.02101,"630,54569-4925-00 ",.01)
 ;;54569-4925-00
 ;;9002226.02101,"630,54569-4925-00 ",.02)
 ;;54569-4925-00
 ;;9002226.02101,"630,54569-8006-00 ",.01)
 ;;54569-8006-00
 ;;9002226.02101,"630,54569-8006-00 ",.02)
 ;;54569-8006-00
 ;;9002226.02101,"630,54569-8006-01 ",.01)
 ;;54569-8006-01
 ;;9002226.02101,"630,54569-8006-01 ",.02)
 ;;54569-8006-01
 ;;9002226.02101,"630,54569-8006-02 ",.01)
 ;;54569-8006-02
 ;;9002226.02101,"630,54569-8006-02 ",.02)
 ;;54569-8006-02
 ;;9002226.02101,"630,54569-8014-00 ",.01)
 ;;54569-8014-00
 ;;9002226.02101,"630,54569-8014-00 ",.02)
 ;;54569-8014-00
 ;;9002226.02101,"630,54569-8500-00 ",.01)
 ;;54569-8500-00
 ;;9002226.02101,"630,54569-8500-00 ",.02)
 ;;54569-8500-00
 ;;9002226.02101,"630,54569-8500-01 ",.01)
 ;;54569-8500-01
 ;;9002226.02101,"630,54569-8500-01 ",.02)
 ;;54569-8500-01
 ;;9002226.02101,"630,54569-8500-02 ",.01)
 ;;54569-8500-02
 ;;9002226.02101,"630,54569-8500-02 ",.02)
 ;;54569-8500-02
 ;;9002226.02101,"630,54569-8505-00 ",.01)
 ;;54569-8505-00
 ;;9002226.02101,"630,54569-8505-00 ",.02)
 ;;54569-8505-00
 ;;9002226.02101,"630,54569-8505-01 ",.01)
 ;;54569-8505-01
 ;;9002226.02101,"630,54569-8505-01 ",.02)
 ;;54569-8505-01
 ;;9002226.02101,"630,54569-8505-02 ",.01)
 ;;54569-8505-02
 ;;9002226.02101,"630,54569-8505-02 ",.02)
 ;;54569-8505-02
 ;;9002226.02101,"630,54569-8517-00 ",.01)
 ;;54569-8517-00
 ;;9002226.02101,"630,54569-8517-00 ",.02)
 ;;54569-8517-00
 ;;9002226.02101,"630,54569-8517-01 ",.01)
 ;;54569-8517-01
 ;;9002226.02101,"630,54569-8517-01 ",.02)
 ;;54569-8517-01
 ;;9002226.02101,"630,54569-8518-00 ",.01)
 ;;54569-8518-00
 ;;9002226.02101,"630,54569-8518-00 ",.02)
 ;;54569-8518-00
 ;;9002226.02101,"630,54569-8518-01 ",.01)
 ;;54569-8518-01
 ;;9002226.02101,"630,54569-8518-01 ",.02)
 ;;54569-8518-01
 ;;9002226.02101,"630,54569-8525-00 ",.01)
 ;;54569-8525-00
 ;;9002226.02101,"630,54569-8525-00 ",.02)
 ;;54569-8525-00
 ;;9002226.02101,"630,54569-8551-00 ",.01)
 ;;54569-8551-00
 ;;9002226.02101,"630,54569-8551-00 ",.02)
 ;;54569-8551-00
 ;;9002226.02101,"630,54868-0365-00 ",.01)
 ;;54868-0365-00
 ;;9002226.02101,"630,54868-0365-00 ",.02)
 ;;54868-0365-00
 ;;9002226.02101,"630,54868-0365-02 ",.01)
 ;;54868-0365-02
 ;;9002226.02101,"630,54868-0365-02 ",.02)
 ;;54868-0365-02
 ;;9002226.02101,"630,54868-0451-00 ",.01)
 ;;54868-0451-00
 ;;9002226.02101,"630,54868-0451-00 ",.02)
 ;;54868-0451-00
 ;;9002226.02101,"630,54868-0451-01 ",.01)
 ;;54868-0451-01
 ;;9002226.02101,"630,54868-0451-01 ",.02)
 ;;54868-0451-01
 ;;9002226.02101,"630,54868-0451-02 ",.01)
 ;;54868-0451-02
 ;;9002226.02101,"630,54868-0451-02 ",.02)
 ;;54868-0451-02
 ;;9002226.02101,"630,54868-0451-03 ",.01)
 ;;54868-0451-03
 ;;9002226.02101,"630,54868-0451-03 ",.02)
 ;;54868-0451-03
 ;;9002226.02101,"630,54868-0452-03 ",.01)
 ;;54868-0452-03
 ;;9002226.02101,"630,54868-0452-03 ",.02)
 ;;54868-0452-03
 ;;9002226.02101,"630,54868-0453-00 ",.01)
 ;;54868-0453-00
 ;;9002226.02101,"630,54868-0453-00 ",.02)
 ;;54868-0453-00
 ;;9002226.02101,"630,54868-0453-01 ",.01)
 ;;54868-0453-01
 ;;9002226.02101,"630,54868-0453-01 ",.02)
 ;;54868-0453-01
 ;;9002226.02101,"630,54868-0453-02 ",.01)
 ;;54868-0453-02
 ;;9002226.02101,"630,54868-0453-02 ",.02)
 ;;54868-0453-02
 ;;9002226.02101,"630,54868-0453-04 ",.01)
 ;;54868-0453-04
 ;;9002226.02101,"630,54868-0453-04 ",.02)
 ;;54868-0453-04
 ;;9002226.02101,"630,54868-0453-05 ",.01)
 ;;54868-0453-05
 ;;9002226.02101,"630,54868-0453-05 ",.02)
 ;;54868-0453-05
 ;;9002226.02101,"630,54868-1261-00 ",.01)
 ;;54868-1261-00
 ;;9002226.02101,"630,54868-1261-00 ",.02)
 ;;54868-1261-00
 ;;9002226.02101,"630,54868-1262-00 ",.01)
 ;;54868-1262-00
 ;;9002226.02101,"630,54868-1262-00 ",.02)
 ;;54868-1262-00
 ;;9002226.02101,"630,54868-2702-00 ",.01)
 ;;54868-2702-00
 ;;9002226.02101,"630,54868-2702-00 ",.02)
 ;;54868-2702-00
 ;;9002226.02101,"630,54868-3653-00 ",.01)
 ;;54868-3653-00
 ;;9002226.02101,"630,54868-3653-00 ",.02)
 ;;54868-3653-00
 ;;9002226.02101,"630,54868-3799-00 ",.01)
 ;;54868-3799-00
 ;;9002226.02101,"630,54868-3799-00 ",.02)
 ;;54868-3799-00
 ;;9002226.02101,"630,54868-3800-00 ",.01)
 ;;54868-3800-00
 ;;9002226.02101,"630,54868-3800-00 ",.02)
 ;;54868-3800-00
 ;;9002226.02101,"630,55289-0047-25 ",.01)
 ;;55289-0047-25
 ;;9002226.02101,"630,55289-0047-25 ",.02)
 ;;55289-0047-25
 ;;9002226.02101,"630,55289-0047-30 ",.01)
 ;;55289-0047-30
 ;;9002226.02101,"630,55289-0047-30 ",.02)
 ;;55289-0047-30
 ;;9002226.02101,"630,55289-0047-42 ",.01)
 ;;55289-0047-42
 ;;9002226.02101,"630,55289-0047-42 ",.02)
 ;;55289-0047-42
 ;;9002226.02101,"630,55289-0047-90 ",.01)
 ;;55289-0047-90
 ;;9002226.02101,"630,55289-0047-90 ",.02)
 ;;55289-0047-90
 ;;9002226.02101,"630,55289-0123-30 ",.01)
 ;;55289-0123-30
 ;;9002226.02101,"630,55289-0123-30 ",.02)
 ;;55289-0123-30
 ;;9002226.02101,"630,55289-0943-07 ",.01)
 ;;55289-0943-07
 ;;9002226.02101,"630,55289-0943-07 ",.02)
 ;;55289-0943-07
 ;;9002226.02101,"630,55289-0943-25 ",.01)
 ;;55289-0943-25
 ;;9002226.02101,"630,55289-0943-25 ",.02)
 ;;55289-0943-25
 ;;9002226.02101,"630,55289-0943-30 ",.01)
 ;;55289-0943-30
 ;;9002226.02101,"630,55289-0943-30 ",.02)
 ;;55289-0943-30
 ;;9002226.02101,"630,57866-6681-01 ",.01)
 ;;57866-6681-01
 ;;9002226.02101,"630,57866-6681-01 ",.02)
 ;;57866-6681-01
 ;;9002226.02101,"630,57866-6681-02 ",.01)
 ;;57866-6681-02
 ;;9002226.02101,"630,57866-6681-02 ",.02)
 ;;57866-6681-02
 ;;9002226.02101,"630,57866-6681-03 ",.01)
 ;;57866-6681-03
 ;;9002226.02101,"630,57866-6681-03 ",.02)
 ;;57866-6681-03
 ;;9002226.02101,"630,57866-6682-01 ",.01)
 ;;57866-6682-01
 ;;9002226.02101,"630,57866-6682-01 ",.02)
 ;;57866-6682-01
 ;;9002226.02101,"630,57866-7987-01 ",.01)
 ;;57866-7987-01
 ;;9002226.02101,"630,57866-7987-01 ",.02)
 ;;57866-7987-01
 ;;9002226.02101,"630,58016-0744-00 ",.01)
 ;;58016-0744-00
 ;;9002226.02101,"630,58016-0744-00 ",.02)
 ;;58016-0744-00
 ;;9002226.02101,"630,58016-0744-10 ",.01)
 ;;58016-0744-10
 ;;9002226.02101,"630,58016-0744-10 ",.02)
 ;;58016-0744-10
 ;;9002226.02101,"630,58016-0744-12 ",.01)
 ;;58016-0744-12
 ;;9002226.02101,"630,58016-0744-12 ",.02)
 ;;58016-0744-12
 ;;9002226.02101,"630,58016-0744-14 ",.01)
 ;;58016-0744-14
 ;;9002226.02101,"630,58016-0744-14 ",.02)
 ;;58016-0744-14
 ;;9002226.02101,"630,58016-0744-15 ",.01)
 ;;58016-0744-15
 ;;9002226.02101,"630,58016-0744-15 ",.02)
 ;;58016-0744-15
 ;;9002226.02101,"630,58016-0744-20 ",.01)
 ;;58016-0744-20
 ;;9002226.02101,"630,58016-0744-20 ",.02)
 ;;58016-0744-20
 ;;9002226.02101,"630,58016-0744-30 ",.01)
 ;;58016-0744-30
 ;;9002226.02101,"630,58016-0744-30 ",.02)
 ;;58016-0744-30
 ;;9002226.02101,"630,58016-0948-00 ",.01)
 ;;58016-0948-00
 ;;9002226.02101,"630,58016-0948-00 ",.02)
 ;;58016-0948-00
 ;;9002226.02101,"630,58016-0948-10 ",.01)
 ;;58016-0948-10
 ;;9002226.02101,"630,58016-0948-10 ",.02)
 ;;58016-0948-10
 ;;9002226.02101,"630,58016-0948-12 ",.01)
 ;;58016-0948-12
 ;;9002226.02101,"630,58016-0948-12 ",.02)
 ;;58016-0948-12
 ;;9002226.02101,"630,58016-0948-14 ",.01)
 ;;58016-0948-14
 ;;9002226.02101,"630,58016-0948-14 ",.02)
 ;;58016-0948-14
 ;;9002226.02101,"630,58016-0948-15 ",.01)
 ;;58016-0948-15
 ;;9002226.02101,"630,58016-0948-15 ",.02)
 ;;58016-0948-15
 ;;9002226.02101,"630,58016-0948-20 ",.01)
 ;;58016-0948-20
 ;;9002226.02101,"630,58016-0948-20 ",.02)
 ;;58016-0948-20
 ;;9002226.02101,"630,58016-0948-30 ",.01)
 ;;58016-0948-30
 ;;9002226.02101,"630,58016-0948-30 ",.02)
 ;;58016-0948-30
 ;;9002226.02101,"630,58016-0948-50 ",.01)
 ;;58016-0948-50
 ;;9002226.02101,"630,58016-0948-50 ",.02)
 ;;58016-0948-50
 ;;9002226.02101,"630,58016-0983-10 ",.01)
 ;;58016-0983-10
 ;;9002226.02101,"630,58016-0983-10 ",.02)
 ;;58016-0983-10
 ;;9002226.02101,"630,58016-0983-12 ",.01)
 ;;58016-0983-12
 ;;9002226.02101,"630,58016-0983-12 ",.02)
 ;;58016-0983-12
 ;;9002226.02101,"630,58016-0983-14 ",.01)
 ;;58016-0983-14
 ;;9002226.02101,"630,58016-0983-14 ",.02)
 ;;58016-0983-14
 ;;9002226.02101,"630,58016-0983-15 ",.01)
 ;;58016-0983-15
 ;;9002226.02101,"630,58016-0983-15 ",.02)
 ;;58016-0983-15
 ;;9002226.02101,"630,58016-0983-20 ",.01)
 ;;58016-0983-20
 ;;9002226.02101,"630,58016-0983-20 ",.02)
 ;;58016-0983-20
 ;;9002226.02101,"630,58016-4074-01 ",.01)
 ;;58016-4074-01
 ;;9002226.02101,"630,58016-4074-01 ",.02)
 ;;58016-4074-01
 ;;9002226.02101,"630,59243-0560-01 ",.01)
 ;;59243-0560-01
 ;;9002226.02101,"630,59243-0560-01 ",.02)
 ;;59243-0560-01
 ;;9002226.02101,"630,59243-0570-01 ",.01)
 ;;59243-0570-01
 ;;9002226.02101,"630,59243-0570-01 ",.02)
 ;;59243-0570-01
 ;;9002226.02101,"630,61570-0072-01 ",.01)
 ;;61570-0072-01
 ;;9002226.02101,"630,61570-0072-01 ",.02)
 ;;61570-0072-01
 ;;9002226.02101,"630,61570-0073-01 ",.01)
 ;;61570-0073-01
 ;;9002226.02101,"630,61570-0073-01 ",.02)
 ;;61570-0073-01
 ;;9002226.02101,"630,61570-0074-01 ",.01)
 ;;61570-0074-01
 ;;9002226.02101,"630,61570-0074-01 ",.02)
 ;;61570-0074-01
 ;;9002226.02101,"630,61570-0075-50 ",.01)
 ;;61570-0075-50
 ;;9002226.02101,"630,61570-0075-50 ",.02)
 ;;61570-0075-50
 ;;9002226.02101,"630,64248-0101-01 ",.01)
 ;;64248-0101-01
 ;;9002226.02101,"630,64248-0101-01 ",.02)
 ;;64248-0101-01
 ;;9002226.02101,"630,64248-0102-01 ",.01)
 ;;64248-0102-01
 ;;9002226.02101,"630,64248-0102-01 ",.02)
 ;;64248-0102-01
 ;;9002226.02101,"630,66116-0285-30 ",.01)
 ;;66116-0285-30
 ;;9002226.02101,"630,66116-0285-30 ",.02)
 ;;66116-0285-30
 ;;9002226.02101,"630,66576-0230-01 ",.01)
 ;;66576-0230-01
 ;;9002226.02101,"630,66576-0230-01 ",.02)
 ;;66576-0230-01
 ;;9002226.02101,"630,66576-0231-01 ",.01)
 ;;66576-0231-01
 ;;9002226.02101,"630,66576-0231-01 ",.02)
 ;;66576-0231-01
 ;;9002226.02101,"630,66993-0920-02 ",.01)
 ;;66993-0920-02
 ;;9002226.02101,"630,66993-0920-02 ",.02)
 ;;66993-0920-02
 ;;9002226.02101,"630,66993-0921-02 ",.01)
 ;;66993-0921-02
 ;;9002226.02101,"630,66993-0921-02 ",.02)
 ;;66993-0921-02
 ;;9002226.02101,"630,68115-0294-30 ",.01)
 ;;68115-0294-30
 ;;9002226.02101,"630,68115-0294-30 ",.02)
 ;;68115-0294-30