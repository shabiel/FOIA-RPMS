ATXXA123 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"873,S91.144A ",.01)
 ;;S91.144A
 ;;9002226.02101,"873,S91.144A ",.02)
 ;;S91.144A
 ;;9002226.02101,"873,S91.144A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.145A ",.01)
 ;;S91.145A
 ;;9002226.02101,"873,S91.145A ",.02)
 ;;S91.145A
 ;;9002226.02101,"873,S91.145A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.146A ",.01)
 ;;S91.146A
 ;;9002226.02101,"873,S91.146A ",.02)
 ;;S91.146A
 ;;9002226.02101,"873,S91.146A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.149A ",.01)
 ;;S91.149A
 ;;9002226.02101,"873,S91.149A ",.02)
 ;;S91.149A
 ;;9002226.02101,"873,S91.149A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.151A ",.01)
 ;;S91.151A
 ;;9002226.02101,"873,S91.151A ",.02)
 ;;S91.151A
 ;;9002226.02101,"873,S91.151A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.152A ",.01)
 ;;S91.152A
 ;;9002226.02101,"873,S91.152A ",.02)
 ;;S91.152A
 ;;9002226.02101,"873,S91.152A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.153A ",.01)
 ;;S91.153A
 ;;9002226.02101,"873,S91.153A ",.02)
 ;;S91.153A
 ;;9002226.02101,"873,S91.153A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.154A ",.01)
 ;;S91.154A
 ;;9002226.02101,"873,S91.154A ",.02)
 ;;S91.154A
 ;;9002226.02101,"873,S91.154A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.155A ",.01)
 ;;S91.155A
 ;;9002226.02101,"873,S91.155A ",.02)
 ;;S91.155A
 ;;9002226.02101,"873,S91.155A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.156A ",.01)
 ;;S91.156A
 ;;9002226.02101,"873,S91.156A ",.02)
 ;;S91.156A
 ;;9002226.02101,"873,S91.156A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.159A ",.01)
 ;;S91.159A
 ;;9002226.02101,"873,S91.159A ",.02)
 ;;S91.159A
 ;;9002226.02101,"873,S91.159A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.201A ",.01)
 ;;S91.201A
 ;;9002226.02101,"873,S91.201A ",.02)
 ;;S91.201A
 ;;9002226.02101,"873,S91.201A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.202A ",.01)
 ;;S91.202A
 ;;9002226.02101,"873,S91.202A ",.02)
 ;;S91.202A
 ;;9002226.02101,"873,S91.202A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.203A ",.01)
 ;;S91.203A
 ;;9002226.02101,"873,S91.203A ",.02)
 ;;S91.203A
 ;;9002226.02101,"873,S91.203A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.204A ",.01)
 ;;S91.204A
 ;;9002226.02101,"873,S91.204A ",.02)
 ;;S91.204A
 ;;9002226.02101,"873,S91.204A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.205A ",.01)
 ;;S91.205A
 ;;9002226.02101,"873,S91.205A ",.02)
 ;;S91.205A
 ;;9002226.02101,"873,S91.205A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.206A ",.01)
 ;;S91.206A
 ;;9002226.02101,"873,S91.206A ",.02)
 ;;S91.206A
 ;;9002226.02101,"873,S91.206A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.209A ",.01)
 ;;S91.209A
 ;;9002226.02101,"873,S91.209A ",.02)
 ;;S91.209A
 ;;9002226.02101,"873,S91.209A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.211A ",.01)
 ;;S91.211A
 ;;9002226.02101,"873,S91.211A ",.02)
 ;;S91.211A
 ;;9002226.02101,"873,S91.211A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.212A ",.01)
 ;;S91.212A
 ;;9002226.02101,"873,S91.212A ",.02)
 ;;S91.212A
 ;;9002226.02101,"873,S91.212A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.213A ",.01)
 ;;S91.213A
 ;;9002226.02101,"873,S91.213A ",.02)
 ;;S91.213A
 ;;9002226.02101,"873,S91.213A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.214A ",.01)
 ;;S91.214A
 ;;9002226.02101,"873,S91.214A ",.02)
 ;;S91.214A
 ;;9002226.02101,"873,S91.214A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.215A ",.01)
 ;;S91.215A
 ;;9002226.02101,"873,S91.215A ",.02)
 ;;S91.215A
 ;;9002226.02101,"873,S91.215A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.216A ",.01)
 ;;S91.216A
 ;;9002226.02101,"873,S91.216A ",.02)
 ;;S91.216A
 ;;9002226.02101,"873,S91.216A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.219A ",.01)
 ;;S91.219A
 ;;9002226.02101,"873,S91.219A ",.02)
 ;;S91.219A
 ;;9002226.02101,"873,S91.219A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.221A ",.01)
 ;;S91.221A
 ;;9002226.02101,"873,S91.221A ",.02)
 ;;S91.221A
 ;;9002226.02101,"873,S91.221A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.222A ",.01)
 ;;S91.222A
 ;;9002226.02101,"873,S91.222A ",.02)
 ;;S91.222A
 ;;9002226.02101,"873,S91.222A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.223A ",.01)
 ;;S91.223A
 ;;9002226.02101,"873,S91.223A ",.02)
 ;;S91.223A
 ;;9002226.02101,"873,S91.223A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.224A ",.01)
 ;;S91.224A
 ;;9002226.02101,"873,S91.224A ",.02)
 ;;S91.224A
 ;;9002226.02101,"873,S91.224A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.225A ",.01)
 ;;S91.225A
 ;;9002226.02101,"873,S91.225A ",.02)
 ;;S91.225A
 ;;9002226.02101,"873,S91.225A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.226A ",.01)
 ;;S91.226A
 ;;9002226.02101,"873,S91.226A ",.02)
 ;;S91.226A
 ;;9002226.02101,"873,S91.226A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.229A ",.01)
 ;;S91.229A
 ;;9002226.02101,"873,S91.229A ",.02)
 ;;S91.229A
 ;;9002226.02101,"873,S91.229A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.231A ",.01)
 ;;S91.231A
 ;;9002226.02101,"873,S91.231A ",.02)
 ;;S91.231A
 ;;9002226.02101,"873,S91.231A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.232A ",.01)
 ;;S91.232A
 ;;9002226.02101,"873,S91.232A ",.02)
 ;;S91.232A
 ;;9002226.02101,"873,S91.232A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.233A ",.01)
 ;;S91.233A
 ;;9002226.02101,"873,S91.233A ",.02)
 ;;S91.233A
 ;;9002226.02101,"873,S91.233A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.234A ",.01)
 ;;S91.234A
 ;;9002226.02101,"873,S91.234A ",.02)
 ;;S91.234A
 ;;9002226.02101,"873,S91.234A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.235A ",.01)
 ;;S91.235A
 ;;9002226.02101,"873,S91.235A ",.02)
 ;;S91.235A
 ;;9002226.02101,"873,S91.235A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.236A ",.01)
 ;;S91.236A
 ;;9002226.02101,"873,S91.236A ",.02)
 ;;S91.236A
 ;;9002226.02101,"873,S91.236A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.239A ",.01)
 ;;S91.239A
 ;;9002226.02101,"873,S91.239A ",.02)
 ;;S91.239A
 ;;9002226.02101,"873,S91.239A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.241A ",.01)
 ;;S91.241A
 ;;9002226.02101,"873,S91.241A ",.02)
 ;;S91.241A
 ;;9002226.02101,"873,S91.241A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.242A ",.01)
 ;;S91.242A
 ;;9002226.02101,"873,S91.242A ",.02)
 ;;S91.242A
 ;;9002226.02101,"873,S91.242A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.243A ",.01)
 ;;S91.243A
 ;;9002226.02101,"873,S91.243A ",.02)
 ;;S91.243A
 ;;9002226.02101,"873,S91.243A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.244A ",.01)
 ;;S91.244A
 ;;9002226.02101,"873,S91.244A ",.02)
 ;;S91.244A
 ;;9002226.02101,"873,S91.244A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.245A ",.01)
 ;;S91.245A
 ;;9002226.02101,"873,S91.245A ",.02)
 ;;S91.245A
 ;;9002226.02101,"873,S91.245A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.246A ",.01)
 ;;S91.246A
 ;;9002226.02101,"873,S91.246A ",.02)
 ;;S91.246A
 ;;9002226.02101,"873,S91.246A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.249A ",.01)
 ;;S91.249A
 ;;9002226.02101,"873,S91.249A ",.02)
 ;;S91.249A
 ;;9002226.02101,"873,S91.249A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.251A ",.01)
 ;;S91.251A
 ;;9002226.02101,"873,S91.251A ",.02)
 ;;S91.251A
 ;;9002226.02101,"873,S91.251A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.252A ",.01)
 ;;S91.252A
 ;;9002226.02101,"873,S91.252A ",.02)
 ;;S91.252A
 ;;9002226.02101,"873,S91.252A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.253A ",.01)
 ;;S91.253A
 ;;9002226.02101,"873,S91.253A ",.02)
 ;;S91.253A
 ;;9002226.02101,"873,S91.253A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.254A ",.01)
 ;;S91.254A
 ;;9002226.02101,"873,S91.254A ",.02)
 ;;S91.254A
 ;;9002226.02101,"873,S91.254A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.255A ",.01)
 ;;S91.255A
 ;;9002226.02101,"873,S91.255A ",.02)
 ;;S91.255A
 ;;9002226.02101,"873,S91.255A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.256A ",.01)
 ;;S91.256A
 ;;9002226.02101,"873,S91.256A ",.02)
 ;;S91.256A
 ;;9002226.02101,"873,S91.256A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.259A ",.01)
 ;;S91.259A
 ;;9002226.02101,"873,S91.259A ",.02)
 ;;S91.259A
 ;;9002226.02101,"873,S91.259A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.301A ",.01)
 ;;S91.301A
 ;;9002226.02101,"873,S91.301A ",.02)
 ;;S91.301A
 ;;9002226.02101,"873,S91.301A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.302A ",.01)
 ;;S91.302A
 ;;9002226.02101,"873,S91.302A ",.02)
 ;;S91.302A
 ;;9002226.02101,"873,S91.302A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.309A ",.01)
 ;;S91.309A
 ;;9002226.02101,"873,S91.309A ",.02)
 ;;S91.309A
 ;;9002226.02101,"873,S91.309A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.311A ",.01)
 ;;S91.311A
 ;;9002226.02101,"873,S91.311A ",.02)
 ;;S91.311A
 ;;9002226.02101,"873,S91.311A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.312A ",.01)
 ;;S91.312A
 ;;9002226.02101,"873,S91.312A ",.02)
 ;;S91.312A
 ;;9002226.02101,"873,S91.312A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.319A ",.01)
 ;;S91.319A
 ;;9002226.02101,"873,S91.319A ",.02)
 ;;S91.319A
 ;;9002226.02101,"873,S91.319A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.321A ",.01)
 ;;S91.321A
 ;;9002226.02101,"873,S91.321A ",.02)
 ;;S91.321A
 ;;9002226.02101,"873,S91.321A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.322A ",.01)
 ;;S91.322A
 ;;9002226.02101,"873,S91.322A ",.02)
 ;;S91.322A
 ;;9002226.02101,"873,S91.322A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.329A ",.01)
 ;;S91.329A
 ;;9002226.02101,"873,S91.329A ",.02)
 ;;S91.329A
 ;;9002226.02101,"873,S91.329A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.331A ",.01)
 ;;S91.331A
 ;;9002226.02101,"873,S91.331A ",.02)
 ;;S91.331A
 ;;9002226.02101,"873,S91.331A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.332A ",.01)
 ;;S91.332A
 ;;9002226.02101,"873,S91.332A ",.02)
 ;;S91.332A
 ;;9002226.02101,"873,S91.332A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.339A ",.01)
 ;;S91.339A
 ;;9002226.02101,"873,S91.339A ",.02)
 ;;S91.339A
 ;;9002226.02101,"873,S91.339A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.341A ",.01)
 ;;S91.341A
 ;;9002226.02101,"873,S91.341A ",.02)
 ;;S91.341A
 ;;9002226.02101,"873,S91.341A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.342A ",.01)
 ;;S91.342A
 ;;9002226.02101,"873,S91.342A ",.02)
 ;;S91.342A
 ;;9002226.02101,"873,S91.342A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.349A ",.01)
 ;;S91.349A
 ;;9002226.02101,"873,S91.349A ",.02)
 ;;S91.349A
 ;;9002226.02101,"873,S91.349A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.351A ",.01)
 ;;S91.351A
 ;;9002226.02101,"873,S91.351A ",.02)
 ;;S91.351A
 ;;9002226.02101,"873,S91.351A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.352A ",.01)
 ;;S91.352A
 ;;9002226.02101,"873,S91.352A ",.02)
 ;;S91.352A
 ;;9002226.02101,"873,S91.352A ",.03)
 ;;30
 ;;9002226.02101,"873,S91.359A ",.01)
 ;;S91.359A
 ;;9002226.02101,"873,S91.359A ",.02)
 ;;S91.359A
 ;;9002226.02101,"873,S91.359A ",.03)
 ;;30
 ;;9002226.02101,"873,S92.001A ",.01)
 ;;S92.001A
 ;;9002226.02101,"873,S92.001A ",.02)
 ;;S92.001A
 ;;9002226.02101,"873,S92.001A ",.03)
 ;;30
 ;;9002226.02101,"873,S92.001B ",.01)
 ;;S92.001B
 ;;9002226.02101,"873,S92.001B ",.02)
 ;;S92.001B
 ;;9002226.02101,"873,S92.001B ",.03)
 ;;30
 ;;9002226.02101,"873,S92.002A ",.01)
 ;;S92.002A
 ;;9002226.02101,"873,S92.002A ",.02)
 ;;S92.002A
 ;;9002226.02101,"873,S92.002A ",.03)
 ;;30
 ;;9002226.02101,"873,S92.002B ",.01)
 ;;S92.002B
 ;;9002226.02101,"873,S92.002B ",.02)
 ;;S92.002B
 ;;9002226.02101,"873,S92.002B ",.03)
 ;;30
 ;;9002226.02101,"873,S92.009A ",.01)
 ;;S92.009A
 ;;9002226.02101,"873,S92.009A ",.02)
 ;;S92.009A
 ;;9002226.02101,"873,S92.009A ",.03)
 ;;30
 ;;9002226.02101,"873,S92.009B ",.01)
 ;;S92.009B
 ;;9002226.02101,"873,S92.009B ",.02)
 ;;S92.009B
 ;;9002226.02101,"873,S92.009B ",.03)
 ;;30
 ;;9002226.02101,"873,S92.011A ",.01)
 ;;S92.011A
 ;;9002226.02101,"873,S92.011A ",.02)
 ;;S92.011A
 ;;9002226.02101,"873,S92.011A ",.03)
 ;;30
 ;;9002226.02101,"873,S92.011B ",.01)
 ;;S92.011B