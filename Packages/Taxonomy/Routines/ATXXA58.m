ATXXA58 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"873,S42.216B ",.02)
 ;;S42.216B
 ;;9002226.02101,"873,S42.216B ",.03)
 ;;30
 ;;9002226.02101,"873,S42.221A ",.01)
 ;;S42.221A
 ;;9002226.02101,"873,S42.221A ",.02)
 ;;S42.221A
 ;;9002226.02101,"873,S42.221A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.221B ",.01)
 ;;S42.221B
 ;;9002226.02101,"873,S42.221B ",.02)
 ;;S42.221B
 ;;9002226.02101,"873,S42.221B ",.03)
 ;;30
 ;;9002226.02101,"873,S42.222A ",.01)
 ;;S42.222A
 ;;9002226.02101,"873,S42.222A ",.02)
 ;;S42.222A
 ;;9002226.02101,"873,S42.222A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.222B ",.01)
 ;;S42.222B
 ;;9002226.02101,"873,S42.222B ",.02)
 ;;S42.222B
 ;;9002226.02101,"873,S42.222B ",.03)
 ;;30
 ;;9002226.02101,"873,S42.223A ",.01)
 ;;S42.223A
 ;;9002226.02101,"873,S42.223A ",.02)
 ;;S42.223A
 ;;9002226.02101,"873,S42.223A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.223B ",.01)
 ;;S42.223B
 ;;9002226.02101,"873,S42.223B ",.02)
 ;;S42.223B
 ;;9002226.02101,"873,S42.223B ",.03)
 ;;30
 ;;9002226.02101,"873,S42.224A ",.01)
 ;;S42.224A
 ;;9002226.02101,"873,S42.224A ",.02)
 ;;S42.224A
 ;;9002226.02101,"873,S42.224A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.224B ",.01)
 ;;S42.224B
 ;;9002226.02101,"873,S42.224B ",.02)
 ;;S42.224B
 ;;9002226.02101,"873,S42.224B ",.03)
 ;;30
 ;;9002226.02101,"873,S42.225A ",.01)
 ;;S42.225A
 ;;9002226.02101,"873,S42.225A ",.02)
 ;;S42.225A
 ;;9002226.02101,"873,S42.225A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.225B ",.01)
 ;;S42.225B
 ;;9002226.02101,"873,S42.225B ",.02)
 ;;S42.225B
 ;;9002226.02101,"873,S42.225B ",.03)
 ;;30
 ;;9002226.02101,"873,S42.226A ",.01)
 ;;S42.226A
 ;;9002226.02101,"873,S42.226A ",.02)
 ;;S42.226A
 ;;9002226.02101,"873,S42.226A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.226B ",.01)
 ;;S42.226B
 ;;9002226.02101,"873,S42.226B ",.02)
 ;;S42.226B
 ;;9002226.02101,"873,S42.226B ",.03)
 ;;30
 ;;9002226.02101,"873,S42.231A ",.01)
 ;;S42.231A
 ;;9002226.02101,"873,S42.231A ",.02)
 ;;S42.231A
 ;;9002226.02101,"873,S42.231A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.231B ",.01)
 ;;S42.231B
 ;;9002226.02101,"873,S42.231B ",.02)
 ;;S42.231B
 ;;9002226.02101,"873,S42.231B ",.03)
 ;;30
 ;;9002226.02101,"873,S42.232A ",.01)
 ;;S42.232A
 ;;9002226.02101,"873,S42.232A ",.02)
 ;;S42.232A
 ;;9002226.02101,"873,S42.232A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.232B ",.01)
 ;;S42.232B
 ;;9002226.02101,"873,S42.232B ",.02)
 ;;S42.232B
 ;;9002226.02101,"873,S42.232B ",.03)
 ;;30
 ;;9002226.02101,"873,S42.239A ",.01)
 ;;S42.239A
 ;;9002226.02101,"873,S42.239A ",.02)
 ;;S42.239A
 ;;9002226.02101,"873,S42.239A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.239B ",.01)
 ;;S42.239B
 ;;9002226.02101,"873,S42.239B ",.02)
 ;;S42.239B
 ;;9002226.02101,"873,S42.239B ",.03)
 ;;30
 ;;9002226.02101,"873,S42.241A ",.01)
 ;;S42.241A
 ;;9002226.02101,"873,S42.241A ",.02)
 ;;S42.241A
 ;;9002226.02101,"873,S42.241A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.241B ",.01)
 ;;S42.241B
 ;;9002226.02101,"873,S42.241B ",.02)
 ;;S42.241B
 ;;9002226.02101,"873,S42.241B ",.03)
 ;;30
 ;;9002226.02101,"873,S42.242A ",.01)
 ;;S42.242A
 ;;9002226.02101,"873,S42.242A ",.02)
 ;;S42.242A
 ;;9002226.02101,"873,S42.242A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.242B ",.01)
 ;;S42.242B
 ;;9002226.02101,"873,S42.242B ",.02)
 ;;S42.242B
 ;;9002226.02101,"873,S42.242B ",.03)
 ;;30
 ;;9002226.02101,"873,S42.249A ",.01)
 ;;S42.249A
 ;;9002226.02101,"873,S42.249A ",.02)
 ;;S42.249A
 ;;9002226.02101,"873,S42.249A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.249B ",.01)
 ;;S42.249B
 ;;9002226.02101,"873,S42.249B ",.02)
 ;;S42.249B
 ;;9002226.02101,"873,S42.249B ",.03)
 ;;30
 ;;9002226.02101,"873,S42.251A ",.01)
 ;;S42.251A
 ;;9002226.02101,"873,S42.251A ",.02)
 ;;S42.251A
 ;;9002226.02101,"873,S42.251A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.251B ",.01)
 ;;S42.251B
 ;;9002226.02101,"873,S42.251B ",.02)
 ;;S42.251B
 ;;9002226.02101,"873,S42.251B ",.03)
 ;;30
 ;;9002226.02101,"873,S42.252A ",.01)
 ;;S42.252A
 ;;9002226.02101,"873,S42.252A ",.02)
 ;;S42.252A
 ;;9002226.02101,"873,S42.252A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.252B ",.01)
 ;;S42.252B
 ;;9002226.02101,"873,S42.252B ",.02)
 ;;S42.252B
 ;;9002226.02101,"873,S42.252B ",.03)
 ;;30
 ;;9002226.02101,"873,S42.253A ",.01)
 ;;S42.253A
 ;;9002226.02101,"873,S42.253A ",.02)
 ;;S42.253A
 ;;9002226.02101,"873,S42.253A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.253B ",.01)
 ;;S42.253B
 ;;9002226.02101,"873,S42.253B ",.02)
 ;;S42.253B
 ;;9002226.02101,"873,S42.253B ",.03)
 ;;30
 ;;9002226.02101,"873,S42.254A ",.01)
 ;;S42.254A
 ;;9002226.02101,"873,S42.254A ",.02)
 ;;S42.254A
 ;;9002226.02101,"873,S42.254A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.254B ",.01)
 ;;S42.254B
 ;;9002226.02101,"873,S42.254B ",.02)
 ;;S42.254B
 ;;9002226.02101,"873,S42.254B ",.03)
 ;;30
 ;;9002226.02101,"873,S42.255A ",.01)
 ;;S42.255A
 ;;9002226.02101,"873,S42.255A ",.02)
 ;;S42.255A
 ;;9002226.02101,"873,S42.255A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.255B ",.01)
 ;;S42.255B
 ;;9002226.02101,"873,S42.255B ",.02)
 ;;S42.255B
 ;;9002226.02101,"873,S42.255B ",.03)
 ;;30
 ;;9002226.02101,"873,S42.256A ",.01)
 ;;S42.256A
 ;;9002226.02101,"873,S42.256A ",.02)
 ;;S42.256A
 ;;9002226.02101,"873,S42.256A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.256B ",.01)
 ;;S42.256B
 ;;9002226.02101,"873,S42.256B ",.02)
 ;;S42.256B
 ;;9002226.02101,"873,S42.256B ",.03)
 ;;30
 ;;9002226.02101,"873,S42.261A ",.01)
 ;;S42.261A
 ;;9002226.02101,"873,S42.261A ",.02)
 ;;S42.261A
 ;;9002226.02101,"873,S42.261A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.261B ",.01)
 ;;S42.261B
 ;;9002226.02101,"873,S42.261B ",.02)
 ;;S42.261B
 ;;9002226.02101,"873,S42.261B ",.03)
 ;;30
 ;;9002226.02101,"873,S42.262A ",.01)
 ;;S42.262A
 ;;9002226.02101,"873,S42.262A ",.02)
 ;;S42.262A
 ;;9002226.02101,"873,S42.262A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.262B ",.01)
 ;;S42.262B
 ;;9002226.02101,"873,S42.262B ",.02)
 ;;S42.262B
 ;;9002226.02101,"873,S42.262B ",.03)
 ;;30
 ;;9002226.02101,"873,S42.263A ",.01)
 ;;S42.263A
 ;;9002226.02101,"873,S42.263A ",.02)
 ;;S42.263A
 ;;9002226.02101,"873,S42.263A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.263B ",.01)
 ;;S42.263B
 ;;9002226.02101,"873,S42.263B ",.02)
 ;;S42.263B
 ;;9002226.02101,"873,S42.263B ",.03)
 ;;30
 ;;9002226.02101,"873,S42.264A ",.01)
 ;;S42.264A
 ;;9002226.02101,"873,S42.264A ",.02)
 ;;S42.264A
 ;;9002226.02101,"873,S42.264A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.264B ",.01)
 ;;S42.264B
 ;;9002226.02101,"873,S42.264B ",.02)
 ;;S42.264B
 ;;9002226.02101,"873,S42.264B ",.03)
 ;;30
 ;;9002226.02101,"873,S42.265A ",.01)
 ;;S42.265A
 ;;9002226.02101,"873,S42.265A ",.02)
 ;;S42.265A
 ;;9002226.02101,"873,S42.265A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.265B ",.01)
 ;;S42.265B
 ;;9002226.02101,"873,S42.265B ",.02)
 ;;S42.265B
 ;;9002226.02101,"873,S42.265B ",.03)
 ;;30
 ;;9002226.02101,"873,S42.266A ",.01)
 ;;S42.266A
 ;;9002226.02101,"873,S42.266A ",.02)
 ;;S42.266A
 ;;9002226.02101,"873,S42.266A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.266B ",.01)
 ;;S42.266B
 ;;9002226.02101,"873,S42.266B ",.02)
 ;;S42.266B
 ;;9002226.02101,"873,S42.266B ",.03)
 ;;30
 ;;9002226.02101,"873,S42.271A ",.01)
 ;;S42.271A
 ;;9002226.02101,"873,S42.271A ",.02)
 ;;S42.271A
 ;;9002226.02101,"873,S42.271A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.272A ",.01)
 ;;S42.272A
 ;;9002226.02101,"873,S42.272A ",.02)
 ;;S42.272A
 ;;9002226.02101,"873,S42.272A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.279A ",.01)
 ;;S42.279A
 ;;9002226.02101,"873,S42.279A ",.02)
 ;;S42.279A
 ;;9002226.02101,"873,S42.279A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.291A ",.01)
 ;;S42.291A
 ;;9002226.02101,"873,S42.291A ",.02)
 ;;S42.291A
 ;;9002226.02101,"873,S42.291A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.291B ",.01)
 ;;S42.291B
 ;;9002226.02101,"873,S42.291B ",.02)
 ;;S42.291B
 ;;9002226.02101,"873,S42.291B ",.03)
 ;;30
 ;;9002226.02101,"873,S42.292A ",.01)
 ;;S42.292A
 ;;9002226.02101,"873,S42.292A ",.02)
 ;;S42.292A
 ;;9002226.02101,"873,S42.292A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.292B ",.01)
 ;;S42.292B
 ;;9002226.02101,"873,S42.292B ",.02)
 ;;S42.292B
 ;;9002226.02101,"873,S42.292B ",.03)
 ;;30
 ;;9002226.02101,"873,S42.293A ",.01)
 ;;S42.293A
 ;;9002226.02101,"873,S42.293A ",.02)
 ;;S42.293A
 ;;9002226.02101,"873,S42.293A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.293B ",.01)
 ;;S42.293B
 ;;9002226.02101,"873,S42.293B ",.02)
 ;;S42.293B
 ;;9002226.02101,"873,S42.293B ",.03)
 ;;30
 ;;9002226.02101,"873,S42.294A ",.01)
 ;;S42.294A
 ;;9002226.02101,"873,S42.294A ",.02)
 ;;S42.294A
 ;;9002226.02101,"873,S42.294A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.294B ",.01)
 ;;S42.294B
 ;;9002226.02101,"873,S42.294B ",.02)
 ;;S42.294B
 ;;9002226.02101,"873,S42.294B ",.03)
 ;;30
 ;;9002226.02101,"873,S42.295A ",.01)
 ;;S42.295A
 ;;9002226.02101,"873,S42.295A ",.02)
 ;;S42.295A
 ;;9002226.02101,"873,S42.295A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.295B ",.01)
 ;;S42.295B
 ;;9002226.02101,"873,S42.295B ",.02)
 ;;S42.295B
 ;;9002226.02101,"873,S42.295B ",.03)
 ;;30
 ;;9002226.02101,"873,S42.296A ",.01)
 ;;S42.296A
 ;;9002226.02101,"873,S42.296A ",.02)
 ;;S42.296A
 ;;9002226.02101,"873,S42.296A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.296B ",.01)
 ;;S42.296B
 ;;9002226.02101,"873,S42.296B ",.02)
 ;;S42.296B
 ;;9002226.02101,"873,S42.296B ",.03)
 ;;30
 ;;9002226.02101,"873,S42.301A ",.01)
 ;;S42.301A
 ;;9002226.02101,"873,S42.301A ",.02)
 ;;S42.301A
 ;;9002226.02101,"873,S42.301A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.301B ",.01)
 ;;S42.301B
 ;;9002226.02101,"873,S42.301B ",.02)
 ;;S42.301B
 ;;9002226.02101,"873,S42.301B ",.03)
 ;;30
 ;;9002226.02101,"873,S42.302A ",.01)
 ;;S42.302A
 ;;9002226.02101,"873,S42.302A ",.02)
 ;;S42.302A
 ;;9002226.02101,"873,S42.302A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.302B ",.01)
 ;;S42.302B
 ;;9002226.02101,"873,S42.302B ",.02)
 ;;S42.302B
 ;;9002226.02101,"873,S42.302B ",.03)
 ;;30
 ;;9002226.02101,"873,S42.309A ",.01)
 ;;S42.309A
 ;;9002226.02101,"873,S42.309A ",.02)
 ;;S42.309A
 ;;9002226.02101,"873,S42.309A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.309B ",.01)
 ;;S42.309B
 ;;9002226.02101,"873,S42.309B ",.02)
 ;;S42.309B
 ;;9002226.02101,"873,S42.309B ",.03)
 ;;30
 ;;9002226.02101,"873,S42.311A ",.01)
 ;;S42.311A
 ;;9002226.02101,"873,S42.311A ",.02)
 ;;S42.311A
 ;;9002226.02101,"873,S42.311A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.312A ",.01)
 ;;S42.312A
 ;;9002226.02101,"873,S42.312A ",.02)
 ;;S42.312A
 ;;9002226.02101,"873,S42.312A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.319A ",.01)
 ;;S42.319A
 ;;9002226.02101,"873,S42.319A ",.02)
 ;;S42.319A
 ;;9002226.02101,"873,S42.319A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.321A ",.01)
 ;;S42.321A
 ;;9002226.02101,"873,S42.321A ",.02)
 ;;S42.321A
 ;;9002226.02101,"873,S42.321A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.321B ",.01)
 ;;S42.321B
 ;;9002226.02101,"873,S42.321B ",.02)
 ;;S42.321B
 ;;9002226.02101,"873,S42.321B ",.03)
 ;;30
 ;;9002226.02101,"873,S42.322A ",.01)
 ;;S42.322A
 ;;9002226.02101,"873,S42.322A ",.02)
 ;;S42.322A
 ;;9002226.02101,"873,S42.322A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.322B ",.01)
 ;;S42.322B
 ;;9002226.02101,"873,S42.322B ",.02)
 ;;S42.322B
 ;;9002226.02101,"873,S42.322B ",.03)
 ;;30
 ;;9002226.02101,"873,S42.323A ",.01)
 ;;S42.323A
 ;;9002226.02101,"873,S42.323A ",.02)
 ;;S42.323A
 ;;9002226.02101,"873,S42.323A ",.03)
 ;;30
 ;;9002226.02101,"873,S42.323B ",.01)
 ;;S42.323B
 ;;9002226.02101,"873,S42.323B ",.02)
 ;;S42.323B