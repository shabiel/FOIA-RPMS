ATXXA117 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"873,S83.136A ",.01)
 ;;S83.136A
 ;;9002226.02101,"873,S83.136A ",.02)
 ;;S83.136A
 ;;9002226.02101,"873,S83.136A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.141A ",.01)
 ;;S83.141A
 ;;9002226.02101,"873,S83.141A ",.02)
 ;;S83.141A
 ;;9002226.02101,"873,S83.141A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.142A ",.01)
 ;;S83.142A
 ;;9002226.02101,"873,S83.142A ",.02)
 ;;S83.142A
 ;;9002226.02101,"873,S83.142A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.143A ",.01)
 ;;S83.143A
 ;;9002226.02101,"873,S83.143A ",.02)
 ;;S83.143A
 ;;9002226.02101,"873,S83.143A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.144A ",.01)
 ;;S83.144A
 ;;9002226.02101,"873,S83.144A ",.02)
 ;;S83.144A
 ;;9002226.02101,"873,S83.144A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.145A ",.01)
 ;;S83.145A
 ;;9002226.02101,"873,S83.145A ",.02)
 ;;S83.145A
 ;;9002226.02101,"873,S83.145A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.146A ",.01)
 ;;S83.146A
 ;;9002226.02101,"873,S83.146A ",.02)
 ;;S83.146A
 ;;9002226.02101,"873,S83.146A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.191A ",.01)
 ;;S83.191A
 ;;9002226.02101,"873,S83.191A ",.02)
 ;;S83.191A
 ;;9002226.02101,"873,S83.191A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.192A ",.01)
 ;;S83.192A
 ;;9002226.02101,"873,S83.192A ",.02)
 ;;S83.192A
 ;;9002226.02101,"873,S83.192A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.193A ",.01)
 ;;S83.193A
 ;;9002226.02101,"873,S83.193A ",.02)
 ;;S83.193A
 ;;9002226.02101,"873,S83.193A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.194A ",.01)
 ;;S83.194A
 ;;9002226.02101,"873,S83.194A ",.02)
 ;;S83.194A
 ;;9002226.02101,"873,S83.194A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.195A ",.01)
 ;;S83.195A
 ;;9002226.02101,"873,S83.195A ",.02)
 ;;S83.195A
 ;;9002226.02101,"873,S83.195A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.196A ",.01)
 ;;S83.196A
 ;;9002226.02101,"873,S83.196A ",.02)
 ;;S83.196A
 ;;9002226.02101,"873,S83.196A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.200A ",.01)
 ;;S83.200A
 ;;9002226.02101,"873,S83.200A ",.02)
 ;;S83.200A
 ;;9002226.02101,"873,S83.200A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.201A ",.01)
 ;;S83.201A
 ;;9002226.02101,"873,S83.201A ",.02)
 ;;S83.201A
 ;;9002226.02101,"873,S83.201A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.202A ",.01)
 ;;S83.202A
 ;;9002226.02101,"873,S83.202A ",.02)
 ;;S83.202A
 ;;9002226.02101,"873,S83.202A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.203A ",.01)
 ;;S83.203A
 ;;9002226.02101,"873,S83.203A ",.02)
 ;;S83.203A
 ;;9002226.02101,"873,S83.203A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.204A ",.01)
 ;;S83.204A
 ;;9002226.02101,"873,S83.204A ",.02)
 ;;S83.204A
 ;;9002226.02101,"873,S83.204A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.205A ",.01)
 ;;S83.205A
 ;;9002226.02101,"873,S83.205A ",.02)
 ;;S83.205A
 ;;9002226.02101,"873,S83.205A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.206A ",.01)
 ;;S83.206A
 ;;9002226.02101,"873,S83.206A ",.02)
 ;;S83.206A
 ;;9002226.02101,"873,S83.206A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.207A ",.01)
 ;;S83.207A
 ;;9002226.02101,"873,S83.207A ",.02)
 ;;S83.207A
 ;;9002226.02101,"873,S83.207A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.209A ",.01)
 ;;S83.209A
 ;;9002226.02101,"873,S83.209A ",.02)
 ;;S83.209A
 ;;9002226.02101,"873,S83.209A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.211A ",.01)
 ;;S83.211A
 ;;9002226.02101,"873,S83.211A ",.02)
 ;;S83.211A
 ;;9002226.02101,"873,S83.211A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.212A ",.01)
 ;;S83.212A
 ;;9002226.02101,"873,S83.212A ",.02)
 ;;S83.212A
 ;;9002226.02101,"873,S83.212A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.219A ",.01)
 ;;S83.219A
 ;;9002226.02101,"873,S83.219A ",.02)
 ;;S83.219A
 ;;9002226.02101,"873,S83.219A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.221A ",.01)
 ;;S83.221A
 ;;9002226.02101,"873,S83.221A ",.02)
 ;;S83.221A
 ;;9002226.02101,"873,S83.221A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.222A ",.01)
 ;;S83.222A
 ;;9002226.02101,"873,S83.222A ",.02)
 ;;S83.222A
 ;;9002226.02101,"873,S83.222A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.229A ",.01)
 ;;S83.229A
 ;;9002226.02101,"873,S83.229A ",.02)
 ;;S83.229A
 ;;9002226.02101,"873,S83.229A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.231A ",.01)
 ;;S83.231A
 ;;9002226.02101,"873,S83.231A ",.02)
 ;;S83.231A
 ;;9002226.02101,"873,S83.231A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.232A ",.01)
 ;;S83.232A
 ;;9002226.02101,"873,S83.232A ",.02)
 ;;S83.232A
 ;;9002226.02101,"873,S83.232A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.239A ",.01)
 ;;S83.239A
 ;;9002226.02101,"873,S83.239A ",.02)
 ;;S83.239A
 ;;9002226.02101,"873,S83.239A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.241A ",.01)
 ;;S83.241A
 ;;9002226.02101,"873,S83.241A ",.02)
 ;;S83.241A
 ;;9002226.02101,"873,S83.241A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.242A ",.01)
 ;;S83.242A
 ;;9002226.02101,"873,S83.242A ",.02)
 ;;S83.242A
 ;;9002226.02101,"873,S83.242A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.249A ",.01)
 ;;S83.249A
 ;;9002226.02101,"873,S83.249A ",.02)
 ;;S83.249A
 ;;9002226.02101,"873,S83.249A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.251A ",.01)
 ;;S83.251A
 ;;9002226.02101,"873,S83.251A ",.02)
 ;;S83.251A
 ;;9002226.02101,"873,S83.251A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.252A ",.01)
 ;;S83.252A
 ;;9002226.02101,"873,S83.252A ",.02)
 ;;S83.252A
 ;;9002226.02101,"873,S83.252A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.259A ",.01)
 ;;S83.259A
 ;;9002226.02101,"873,S83.259A ",.02)
 ;;S83.259A
 ;;9002226.02101,"873,S83.259A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.261A ",.01)
 ;;S83.261A
 ;;9002226.02101,"873,S83.261A ",.02)
 ;;S83.261A
 ;;9002226.02101,"873,S83.261A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.262A ",.01)
 ;;S83.262A
 ;;9002226.02101,"873,S83.262A ",.02)
 ;;S83.262A
 ;;9002226.02101,"873,S83.262A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.269A ",.01)
 ;;S83.269A
 ;;9002226.02101,"873,S83.269A ",.02)
 ;;S83.269A
 ;;9002226.02101,"873,S83.269A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.271A ",.01)
 ;;S83.271A
 ;;9002226.02101,"873,S83.271A ",.02)
 ;;S83.271A
 ;;9002226.02101,"873,S83.271A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.272A ",.01)
 ;;S83.272A
 ;;9002226.02101,"873,S83.272A ",.02)
 ;;S83.272A
 ;;9002226.02101,"873,S83.272A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.279A ",.01)
 ;;S83.279A
 ;;9002226.02101,"873,S83.279A ",.02)
 ;;S83.279A
 ;;9002226.02101,"873,S83.279A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.281A ",.01)
 ;;S83.281A
 ;;9002226.02101,"873,S83.281A ",.02)
 ;;S83.281A
 ;;9002226.02101,"873,S83.281A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.282A ",.01)
 ;;S83.282A
 ;;9002226.02101,"873,S83.282A ",.02)
 ;;S83.282A
 ;;9002226.02101,"873,S83.282A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.289A ",.01)
 ;;S83.289A
 ;;9002226.02101,"873,S83.289A ",.02)
 ;;S83.289A
 ;;9002226.02101,"873,S83.289A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.30XA ",.01)
 ;;S83.30XA
 ;;9002226.02101,"873,S83.30XA ",.02)
 ;;S83.30XA
 ;;9002226.02101,"873,S83.30XA ",.03)
 ;;30
 ;;9002226.02101,"873,S83.31XA ",.01)
 ;;S83.31XA
 ;;9002226.02101,"873,S83.31XA ",.02)
 ;;S83.31XA
 ;;9002226.02101,"873,S83.31XA ",.03)
 ;;30
 ;;9002226.02101,"873,S83.32XA ",.01)
 ;;S83.32XA
 ;;9002226.02101,"873,S83.32XA ",.02)
 ;;S83.32XA
 ;;9002226.02101,"873,S83.32XA ",.03)
 ;;30
 ;;9002226.02101,"873,S83.401A ",.01)
 ;;S83.401A
 ;;9002226.02101,"873,S83.401A ",.02)
 ;;S83.401A
 ;;9002226.02101,"873,S83.401A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.402A ",.01)
 ;;S83.402A
 ;;9002226.02101,"873,S83.402A ",.02)
 ;;S83.402A
 ;;9002226.02101,"873,S83.402A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.409A ",.01)
 ;;S83.409A
 ;;9002226.02101,"873,S83.409A ",.02)
 ;;S83.409A
 ;;9002226.02101,"873,S83.409A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.411A ",.01)
 ;;S83.411A
 ;;9002226.02101,"873,S83.411A ",.02)
 ;;S83.411A
 ;;9002226.02101,"873,S83.411A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.412A ",.01)
 ;;S83.412A
 ;;9002226.02101,"873,S83.412A ",.02)
 ;;S83.412A
 ;;9002226.02101,"873,S83.412A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.419A ",.01)
 ;;S83.419A
 ;;9002226.02101,"873,S83.419A ",.02)
 ;;S83.419A
 ;;9002226.02101,"873,S83.419A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.421A ",.01)
 ;;S83.421A
 ;;9002226.02101,"873,S83.421A ",.02)
 ;;S83.421A
 ;;9002226.02101,"873,S83.421A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.422A ",.01)
 ;;S83.422A
 ;;9002226.02101,"873,S83.422A ",.02)
 ;;S83.422A
 ;;9002226.02101,"873,S83.422A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.429A ",.01)
 ;;S83.429A
 ;;9002226.02101,"873,S83.429A ",.02)
 ;;S83.429A
 ;;9002226.02101,"873,S83.429A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.501A ",.01)
 ;;S83.501A
 ;;9002226.02101,"873,S83.501A ",.02)
 ;;S83.501A
 ;;9002226.02101,"873,S83.501A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.502A ",.01)
 ;;S83.502A
 ;;9002226.02101,"873,S83.502A ",.02)
 ;;S83.502A
 ;;9002226.02101,"873,S83.502A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.509A ",.01)
 ;;S83.509A
 ;;9002226.02101,"873,S83.509A ",.02)
 ;;S83.509A
 ;;9002226.02101,"873,S83.509A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.511A ",.01)
 ;;S83.511A
 ;;9002226.02101,"873,S83.511A ",.02)
 ;;S83.511A
 ;;9002226.02101,"873,S83.511A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.512A ",.01)
 ;;S83.512A
 ;;9002226.02101,"873,S83.512A ",.02)
 ;;S83.512A
 ;;9002226.02101,"873,S83.512A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.519A ",.01)
 ;;S83.519A
 ;;9002226.02101,"873,S83.519A ",.02)
 ;;S83.519A
 ;;9002226.02101,"873,S83.519A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.521A ",.01)
 ;;S83.521A
 ;;9002226.02101,"873,S83.521A ",.02)
 ;;S83.521A
 ;;9002226.02101,"873,S83.521A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.522A ",.01)
 ;;S83.522A
 ;;9002226.02101,"873,S83.522A ",.02)
 ;;S83.522A
 ;;9002226.02101,"873,S83.522A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.529A ",.01)
 ;;S83.529A
 ;;9002226.02101,"873,S83.529A ",.02)
 ;;S83.529A
 ;;9002226.02101,"873,S83.529A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.60XA ",.01)
 ;;S83.60XA
 ;;9002226.02101,"873,S83.60XA ",.02)
 ;;S83.60XA
 ;;9002226.02101,"873,S83.60XA ",.03)
 ;;30
 ;;9002226.02101,"873,S83.61XA ",.01)
 ;;S83.61XA
 ;;9002226.02101,"873,S83.61XA ",.02)
 ;;S83.61XA
 ;;9002226.02101,"873,S83.61XA ",.03)
 ;;30
 ;;9002226.02101,"873,S83.62XA ",.01)
 ;;S83.62XA
 ;;9002226.02101,"873,S83.62XA ",.02)
 ;;S83.62XA
 ;;9002226.02101,"873,S83.62XA ",.03)
 ;;30
 ;;9002226.02101,"873,S83.8X1A ",.01)
 ;;S83.8X1A
 ;;9002226.02101,"873,S83.8X1A ",.02)
 ;;S83.8X1A
 ;;9002226.02101,"873,S83.8X1A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.8X2A ",.01)
 ;;S83.8X2A
 ;;9002226.02101,"873,S83.8X2A ",.02)
 ;;S83.8X2A
 ;;9002226.02101,"873,S83.8X2A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.8X9A ",.01)
 ;;S83.8X9A
 ;;9002226.02101,"873,S83.8X9A ",.02)
 ;;S83.8X9A
 ;;9002226.02101,"873,S83.8X9A ",.03)
 ;;30
 ;;9002226.02101,"873,S83.90XA ",.01)
 ;;S83.90XA
 ;;9002226.02101,"873,S83.90XA ",.02)
 ;;S83.90XA
 ;;9002226.02101,"873,S83.90XA ",.03)
 ;;30
 ;;9002226.02101,"873,S83.91XA ",.01)
 ;;S83.91XA
 ;;9002226.02101,"873,S83.91XA ",.02)
 ;;S83.91XA
 ;;9002226.02101,"873,S83.91XA ",.03)
 ;;30
 ;;9002226.02101,"873,S83.92XA ",.01)
 ;;S83.92XA
 ;;9002226.02101,"873,S83.92XA ",.02)
 ;;S83.92XA
 ;;9002226.02101,"873,S83.92XA ",.03)
 ;;30
 ;;9002226.02101,"873,S84.00XA ",.01)
 ;;S84.00XA
 ;;9002226.02101,"873,S84.00XA ",.02)
 ;;S84.00XA
 ;;9002226.02101,"873,S84.00XA ",.03)
 ;;30
 ;;9002226.02101,"873,S84.01XA ",.01)
 ;;S84.01XA
 ;;9002226.02101,"873,S84.01XA ",.02)
 ;;S84.01XA
 ;;9002226.02101,"873,S84.01XA ",.03)
 ;;30
 ;;9002226.02101,"873,S84.02XA ",.01)
 ;;S84.02XA