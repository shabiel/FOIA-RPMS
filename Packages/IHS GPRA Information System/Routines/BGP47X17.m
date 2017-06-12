BGP47X17 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 17, 2014;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1195,33261-0848-60 ",.02)
 ;;33261-0848-60
 ;;9002226.02101,"1195,33261-0848-90 ",.01)
 ;;33261-0848-90
 ;;9002226.02101,"1195,33261-0848-90 ",.02)
 ;;33261-0848-90
 ;;9002226.02101,"1195,33261-0855-00 ",.01)
 ;;33261-0855-00
 ;;9002226.02101,"1195,33261-0855-00 ",.02)
 ;;33261-0855-00
 ;;9002226.02101,"1195,33261-0855-30 ",.01)
 ;;33261-0855-30
 ;;9002226.02101,"1195,33261-0855-30 ",.02)
 ;;33261-0855-30
 ;;9002226.02101,"1195,33261-0855-60 ",.01)
 ;;33261-0855-60
 ;;9002226.02101,"1195,33261-0855-60 ",.02)
 ;;33261-0855-60
 ;;9002226.02101,"1195,33261-0855-90 ",.01)
 ;;33261-0855-90
 ;;9002226.02101,"1195,33261-0855-90 ",.02)
 ;;33261-0855-90
 ;;9002226.02101,"1195,33261-0898-00 ",.01)
 ;;33261-0898-00
 ;;9002226.02101,"1195,33261-0898-00 ",.02)
 ;;33261-0898-00
 ;;9002226.02101,"1195,33261-0898-30 ",.01)
 ;;33261-0898-30
 ;;9002226.02101,"1195,33261-0898-30 ",.02)
 ;;33261-0898-30
 ;;9002226.02101,"1195,33261-0898-60 ",.01)
 ;;33261-0898-60
 ;;9002226.02101,"1195,33261-0898-60 ",.02)
 ;;33261-0898-60
 ;;9002226.02101,"1195,33261-0898-90 ",.01)
 ;;33261-0898-90
 ;;9002226.02101,"1195,33261-0898-90 ",.02)
 ;;33261-0898-90
 ;;9002226.02101,"1195,33261-0942-00 ",.01)
 ;;33261-0942-00
 ;;9002226.02101,"1195,33261-0942-00 ",.02)
 ;;33261-0942-00
 ;;9002226.02101,"1195,33261-0942-30 ",.01)
 ;;33261-0942-30
 ;;9002226.02101,"1195,33261-0942-30 ",.02)
 ;;33261-0942-30
 ;;9002226.02101,"1195,33261-0942-60 ",.01)
 ;;33261-0942-60
 ;;9002226.02101,"1195,33261-0942-60 ",.02)
 ;;33261-0942-60
 ;;9002226.02101,"1195,33261-0942-90 ",.01)
 ;;33261-0942-90
 ;;9002226.02101,"1195,33261-0942-90 ",.02)
 ;;33261-0942-90
 ;;9002226.02101,"1195,33358-0037-00 ",.01)
 ;;33358-0037-00
 ;;9002226.02101,"1195,33358-0037-00 ",.02)
 ;;33358-0037-00
 ;;9002226.02101,"1195,33358-0037-30 ",.01)
 ;;33358-0037-30
 ;;9002226.02101,"1195,33358-0037-30 ",.02)
 ;;33358-0037-30
 ;;9002226.02101,"1195,33358-0037-60 ",.01)
 ;;33358-0037-60
 ;;9002226.02101,"1195,33358-0037-60 ",.02)
 ;;33358-0037-60
 ;;9002226.02101,"1195,33358-0038-00 ",.01)
 ;;33358-0038-00
 ;;9002226.02101,"1195,33358-0038-00 ",.02)
 ;;33358-0038-00
 ;;9002226.02101,"1195,33358-0038-30 ",.01)
 ;;33358-0038-30
 ;;9002226.02101,"1195,33358-0038-30 ",.02)
 ;;33358-0038-30
 ;;9002226.02101,"1195,33358-0038-60 ",.01)
 ;;33358-0038-60
 ;;9002226.02101,"1195,33358-0038-60 ",.02)
 ;;33358-0038-60
 ;;9002226.02101,"1195,33358-0039-00 ",.01)
 ;;33358-0039-00
 ;;9002226.02101,"1195,33358-0039-00 ",.02)
 ;;33358-0039-00
 ;;9002226.02101,"1195,33358-0039-30 ",.01)
 ;;33358-0039-30
 ;;9002226.02101,"1195,33358-0039-30 ",.02)
 ;;33358-0039-30
 ;;9002226.02101,"1195,33358-0192-30 ",.01)
 ;;33358-0192-30
 ;;9002226.02101,"1195,33358-0192-30 ",.02)
 ;;33358-0192-30
 ;;9002226.02101,"1195,33358-0193-30 ",.01)
 ;;33358-0193-30
 ;;9002226.02101,"1195,33358-0193-30 ",.02)
 ;;33358-0193-30
 ;;9002226.02101,"1195,33358-0194-30 ",.01)
 ;;33358-0194-30
 ;;9002226.02101,"1195,33358-0194-30 ",.02)
 ;;33358-0194-30
 ;;9002226.02101,"1195,33358-0242-00 ",.01)
 ;;33358-0242-00
 ;;9002226.02101,"1195,33358-0242-00 ",.02)
 ;;33358-0242-00
 ;;9002226.02101,"1195,33358-0242-01 ",.01)
 ;;33358-0242-01
 ;;9002226.02101,"1195,33358-0242-01 ",.02)
 ;;33358-0242-01
 ;;9002226.02101,"1195,33358-0242-30 ",.01)
 ;;33358-0242-30
 ;;9002226.02101,"1195,33358-0242-30 ",.02)
 ;;33358-0242-30
 ;;9002226.02101,"1195,33358-0242-60 ",.01)
 ;;33358-0242-60
 ;;9002226.02101,"1195,33358-0242-60 ",.02)
 ;;33358-0242-60
 ;;9002226.02101,"1195,33358-0242-90 ",.01)
 ;;33358-0242-90
 ;;9002226.02101,"1195,33358-0242-90 ",.02)
 ;;33358-0242-90
 ;;9002226.02101,"1195,33358-0243-00 ",.01)
 ;;33358-0243-00
 ;;9002226.02101,"1195,33358-0243-00 ",.02)
 ;;33358-0243-00
 ;;9002226.02101,"1195,33358-0243-30 ",.01)
 ;;33358-0243-30
 ;;9002226.02101,"1195,33358-0243-30 ",.02)
 ;;33358-0243-30
 ;;9002226.02101,"1195,35356-0362-30 ",.01)
 ;;35356-0362-30
 ;;9002226.02101,"1195,35356-0362-30 ",.02)
 ;;35356-0362-30
 ;;9002226.02101,"1195,35356-0362-60 ",.01)
 ;;35356-0362-60
 ;;9002226.02101,"1195,35356-0362-60 ",.02)
 ;;35356-0362-60
 ;;9002226.02101,"1195,35356-0415-30 ",.01)
 ;;35356-0415-30
 ;;9002226.02101,"1195,35356-0415-30 ",.02)
 ;;35356-0415-30
 ;;9002226.02101,"1195,35356-0490-30 ",.01)
 ;;35356-0490-30
 ;;9002226.02101,"1195,35356-0490-30 ",.02)
 ;;35356-0490-30
 ;;9002226.02101,"1195,35356-0512-30 ",.01)
 ;;35356-0512-30
 ;;9002226.02101,"1195,35356-0512-30 ",.02)
 ;;35356-0512-30
 ;;9002226.02101,"1195,35356-0512-60 ",.01)
 ;;35356-0512-60
 ;;9002226.02101,"1195,35356-0512-60 ",.02)
 ;;35356-0512-60
 ;;9002226.02101,"1195,35356-0513-30 ",.01)
 ;;35356-0513-30
 ;;9002226.02101,"1195,35356-0513-30 ",.02)
 ;;35356-0513-30
 ;;9002226.02101,"1195,35356-0513-60 ",.01)
 ;;35356-0513-60
 ;;9002226.02101,"1195,35356-0513-60 ",.02)
 ;;35356-0513-60
 ;;9002226.02101,"1195,35356-0518-30 ",.01)
 ;;35356-0518-30
 ;;9002226.02101,"1195,35356-0518-30 ",.02)
 ;;35356-0518-30
 ;;9002226.02101,"1195,35356-0526-00 ",.01)
 ;;35356-0526-00
 ;;9002226.02101,"1195,35356-0526-00 ",.02)
 ;;35356-0526-00
 ;;9002226.02101,"1195,35356-0526-30 ",.01)
 ;;35356-0526-30
 ;;9002226.02101,"1195,35356-0526-30 ",.02)
 ;;35356-0526-30
 ;;9002226.02101,"1195,35356-0526-60 ",.01)
 ;;35356-0526-60
 ;;9002226.02101,"1195,35356-0526-60 ",.02)
 ;;35356-0526-60
 ;;9002226.02101,"1195,35356-0737-30 ",.01)
 ;;35356-0737-30
 ;;9002226.02101,"1195,35356-0737-30 ",.02)
 ;;35356-0737-30
 ;;9002226.02101,"1195,35356-0738-00 ",.01)
 ;;35356-0738-00
 ;;9002226.02101,"1195,35356-0738-00 ",.02)
 ;;35356-0738-00
 ;;9002226.02101,"1195,35356-0782-30 ",.01)
 ;;35356-0782-30
 ;;9002226.02101,"1195,35356-0782-30 ",.02)
 ;;35356-0782-30
 ;;9002226.02101,"1195,35356-0782-60 ",.01)
 ;;35356-0782-60
 ;;9002226.02101,"1195,35356-0782-60 ",.02)
 ;;35356-0782-60
 ;;9002226.02101,"1195,35356-0782-90 ",.01)
 ;;35356-0782-90
 ;;9002226.02101,"1195,35356-0782-90 ",.02)
 ;;35356-0782-90
 ;;9002226.02101,"1195,35356-0859-30 ",.01)
 ;;35356-0859-30
 ;;9002226.02101,"1195,35356-0859-30 ",.02)
 ;;35356-0859-30
 ;;9002226.02101,"1195,35356-0888-30 ",.01)
 ;;35356-0888-30
 ;;9002226.02101,"1195,35356-0888-30 ",.02)
 ;;35356-0888-30
 ;;9002226.02101,"1195,35356-0888-60 ",.01)
 ;;35356-0888-60
 ;;9002226.02101,"1195,35356-0888-60 ",.02)
 ;;35356-0888-60
 ;;9002226.02101,"1195,35356-0888-90 ",.01)
 ;;35356-0888-90
 ;;9002226.02101,"1195,35356-0888-90 ",.02)
 ;;35356-0888-90
 ;;9002226.02101,"1195,35356-0889-30 ",.01)
 ;;35356-0889-30
 ;;9002226.02101,"1195,35356-0889-30 ",.02)
 ;;35356-0889-30
 ;;9002226.02101,"1195,35356-0889-60 ",.01)
 ;;35356-0889-60
 ;;9002226.02101,"1195,35356-0889-60 ",.02)
 ;;35356-0889-60
 ;;9002226.02101,"1195,35356-0889-90 ",.01)
 ;;35356-0889-90
 ;;9002226.02101,"1195,35356-0889-90 ",.02)
 ;;35356-0889-90
 ;;9002226.02101,"1195,35356-0898-30 ",.01)
 ;;35356-0898-30
 ;;9002226.02101,"1195,35356-0898-30 ",.02)
 ;;35356-0898-30
 ;;9002226.02101,"1195,35356-0898-60 ",.01)
 ;;35356-0898-60
 ;;9002226.02101,"1195,35356-0898-60 ",.02)
 ;;35356-0898-60
 ;;9002226.02101,"1195,35356-0898-90 ",.01)
 ;;35356-0898-90
 ;;9002226.02101,"1195,35356-0898-90 ",.02)
 ;;35356-0898-90
 ;;9002226.02101,"1195,35356-0908-30 ",.01)
 ;;35356-0908-30
 ;;9002226.02101,"1195,35356-0908-30 ",.02)
 ;;35356-0908-30
 ;;9002226.02101,"1195,35356-0908-60 ",.01)
 ;;35356-0908-60
 ;;9002226.02101,"1195,35356-0908-60 ",.02)
 ;;35356-0908-60
 ;;9002226.02101,"1195,35356-0930-30 ",.01)
 ;;35356-0930-30
 ;;9002226.02101,"1195,35356-0930-30 ",.02)
 ;;35356-0930-30
 ;;9002226.02101,"1195,35356-0930-60 ",.01)
 ;;35356-0930-60
 ;;9002226.02101,"1195,35356-0930-60 ",.02)
 ;;35356-0930-60
 ;;9002226.02101,"1195,35356-0930-90 ",.01)
 ;;35356-0930-90
 ;;9002226.02101,"1195,35356-0930-90 ",.02)
 ;;35356-0930-90
 ;;9002226.02101,"1195,35356-0934-30 ",.01)
 ;;35356-0934-30
 ;;9002226.02101,"1195,35356-0934-30 ",.02)
 ;;35356-0934-30
 ;;9002226.02101,"1195,35356-0934-60 ",.01)
 ;;35356-0934-60
 ;;9002226.02101,"1195,35356-0934-60 ",.02)
 ;;35356-0934-60
 ;;9002226.02101,"1195,35356-0934-90 ",.01)
 ;;35356-0934-90
 ;;9002226.02101,"1195,35356-0934-90 ",.02)
 ;;35356-0934-90
 ;;9002226.02101,"1195,35356-0946-30 ",.01)
 ;;35356-0946-30
 ;;9002226.02101,"1195,35356-0946-30 ",.02)
 ;;35356-0946-30
 ;;9002226.02101,"1195,35356-0946-60 ",.01)
 ;;35356-0946-60
 ;;9002226.02101,"1195,35356-0946-60 ",.02)
 ;;35356-0946-60
 ;;9002226.02101,"1195,38245-0724-20 ",.01)
 ;;38245-0724-20
 ;;9002226.02101,"1195,38245-0724-20 ",.02)
 ;;38245-0724-20
 ;;9002226.02101,"1195,38245-0727-20 ",.01)
 ;;38245-0727-20
 ;;9002226.02101,"1195,38245-0727-20 ",.02)
 ;;38245-0727-20
 ;;9002226.02101,"1195,42254-0005-30 ",.01)
 ;;42254-0005-30
 ;;9002226.02101,"1195,42254-0005-30 ",.02)
 ;;42254-0005-30
 ;;9002226.02101,"1195,42254-0046-30 ",.01)
 ;;42254-0046-30
 ;;9002226.02101,"1195,42254-0046-30 ",.02)
 ;;42254-0046-30
 ;;9002226.02101,"1195,42254-0046-90 ",.01)
 ;;42254-0046-90
 ;;9002226.02101,"1195,42254-0046-90 ",.02)
 ;;42254-0046-90
 ;;9002226.02101,"1195,42254-0094-30 ",.01)
 ;;42254-0094-30
 ;;9002226.02101,"1195,42254-0094-30 ",.02)
 ;;42254-0094-30
 ;;9002226.02101,"1195,42254-0107-30 ",.01)
 ;;42254-0107-30
 ;;9002226.02101,"1195,42254-0107-30 ",.02)
 ;;42254-0107-30
 ;;9002226.02101,"1195,42254-0107-60 ",.01)
 ;;42254-0107-60
 ;;9002226.02101,"1195,42254-0107-60 ",.02)
 ;;42254-0107-60
 ;;9002226.02101,"1195,42254-0107-90 ",.01)
 ;;42254-0107-90
 ;;9002226.02101,"1195,42254-0107-90 ",.02)
 ;;42254-0107-90
 ;;9002226.02101,"1195,42254-0162-00 ",.01)
 ;;42254-0162-00
 ;;9002226.02101,"1195,42254-0162-00 ",.02)
 ;;42254-0162-00
 ;;9002226.02101,"1195,42254-0218-30 ",.01)
 ;;42254-0218-30
 ;;9002226.02101,"1195,42254-0218-30 ",.02)
 ;;42254-0218-30
 ;;9002226.02101,"1195,42254-0273-30 ",.01)
 ;;42254-0273-30
 ;;9002226.02101,"1195,42254-0273-30 ",.02)
 ;;42254-0273-30
 ;;9002226.02101,"1195,42254-0273-90 ",.01)
 ;;42254-0273-90
 ;;9002226.02101,"1195,42254-0273-90 ",.02)
 ;;42254-0273-90
 ;;9002226.02101,"1195,42254-0279-30 ",.01)
 ;;42254-0279-30
 ;;9002226.02101,"1195,42254-0279-30 ",.02)
 ;;42254-0279-30
 ;;9002226.02101,"1195,42291-0101-90 ",.01)
 ;;42291-0101-90
 ;;9002226.02101,"1195,42291-0101-90 ",.02)
 ;;42291-0101-90
 ;;9002226.02101,"1195,42291-0102-90 ",.01)
 ;;42291-0102-90
 ;;9002226.02101,"1195,42291-0102-90 ",.02)
 ;;42291-0102-90
 ;;9002226.02101,"1195,42291-0140-10 ",.01)
 ;;42291-0140-10
 ;;9002226.02101,"1195,42291-0140-10 ",.02)
 ;;42291-0140-10
 ;;9002226.02101,"1195,42291-0140-18 ",.01)
 ;;42291-0140-18
 ;;9002226.02101,"1195,42291-0140-18 ",.02)
 ;;42291-0140-18
 ;;9002226.02101,"1195,42291-0140-45 ",.01)
 ;;42291-0140-45
 ;;9002226.02101,"1195,42291-0140-45 ",.02)
 ;;42291-0140-45
 ;;9002226.02101,"1195,42291-0140-90 ",.01)
 ;;42291-0140-90
 ;;9002226.02101,"1195,42291-0140-90 ",.02)
 ;;42291-0140-90
 ;;9002226.02101,"1195,42291-0141-10 ",.01)
 ;;42291-0141-10
 ;;9002226.02101,"1195,42291-0141-10 ",.02)
 ;;42291-0141-10
 ;;9002226.02101,"1195,42291-0141-18 ",.01)
 ;;42291-0141-18
 ;;9002226.02101,"1195,42291-0141-18 ",.02)
 ;;42291-0141-18
 ;;9002226.02101,"1195,42291-0141-45 ",.01)
 ;;42291-0141-45
 ;;9002226.02101,"1195,42291-0141-45 ",.02)
 ;;42291-0141-45
 ;;9002226.02101,"1195,42291-0141-90 ",.01)
 ;;42291-0141-90
 ;;9002226.02101,"1195,42291-0141-90 ",.02)
 ;;42291-0141-90
 ;;9002226.02101,"1195,42291-0142-18 ",.01)
 ;;42291-0142-18
 ;;9002226.02101,"1195,42291-0142-18 ",.02)
 ;;42291-0142-18
 ;;9002226.02101,"1195,42291-0142-45 ",.01)
 ;;42291-0142-45
 ;;9002226.02101,"1195,42291-0142-45 ",.02)
 ;;42291-0142-45
 ;;9002226.02101,"1195,42291-0142-50 ",.01)
 ;;42291-0142-50
 ;;9002226.02101,"1195,42291-0142-50 ",.02)
 ;;42291-0142-50
 ;;9002226.02101,"1195,42291-0142-90 ",.01)
 ;;42291-0142-90
 ;;9002226.02101,"1195,42291-0142-90 ",.02)
 ;;42291-0142-90
 ;;9002226.02101,"1195,42291-0171-90 ",.01)
 ;;42291-0171-90
 ;;9002226.02101,"1195,42291-0171-90 ",.02)
 ;;42291-0171-90
 ;;9002226.02101,"1195,42291-0172-90 ",.01)
 ;;42291-0172-90
 ;;9002226.02101,"1195,42291-0172-90 ",.02)
 ;;42291-0172-90
 ;;9002226.02101,"1195,42291-0173-90 ",.01)
 ;;42291-0173-90
 ;;9002226.02101,"1195,42291-0173-90 ",.02)
 ;;42291-0173-90
 ;;9002226.02101,"1195,42291-0201-50 ",.01)
 ;;42291-0201-50
 ;;9002226.02101,"1195,42291-0201-50 ",.02)
 ;;42291-0201-50
 ;;9002226.02101,"1195,42291-0201-60 ",.01)
 ;;42291-0201-60
 ;;9002226.02101,"1195,42291-0201-60 ",.02)
 ;;42291-0201-60
 ;;9002226.02101,"1195,42291-0201-90 ",.01)
 ;;42291-0201-90
 ;;9002226.02101,"1195,42291-0201-90 ",.02)
 ;;42291-0201-90
 ;;9002226.02101,"1195,42291-0202-18 ",.01)
 ;;42291-0202-18
 ;;9002226.02101,"1195,42291-0202-18 ",.02)
 ;;42291-0202-18
 ;;9002226.02101,"1195,42291-0202-50 ",.01)
 ;;42291-0202-50
 ;;9002226.02101,"1195,42291-0202-50 ",.02)
 ;;42291-0202-50
 ;;9002226.02101,"1195,42291-0202-60 ",.01)
 ;;42291-0202-60
 ;;9002226.02101,"1195,42291-0202-60 ",.02)
 ;;42291-0202-60
 ;;9002226.02101,"1195,42291-0202-90 ",.01)
 ;;42291-0202-90
 ;;9002226.02101,"1195,42291-0202-90 ",.02)
 ;;42291-0202-90
 ;;9002226.02101,"1195,42291-0203-30 ",.01)
 ;;42291-0203-30
 ;;9002226.02101,"1195,42291-0203-30 ",.02)
 ;;42291-0203-30
 ;;9002226.02101,"1195,42291-0203-50 ",.01)
 ;;42291-0203-50
 ;;9002226.02101,"1195,42291-0203-50 ",.02)
 ;;42291-0203-50
 ;;9002226.02101,"1195,42291-0203-60 ",.01)
 ;;42291-0203-60
 ;;9002226.02101,"1195,42291-0203-60 ",.02)
 ;;42291-0203-60