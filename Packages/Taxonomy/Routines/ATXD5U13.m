ATXD5U13 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 12, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"174,T64.04XS ",.03)
 ;;30
 ;;9002226.02101,"174,T64.84XA ",.01)
 ;;T64.84XA 
 ;;9002226.02101,"174,T64.84XA ",.02)
 ;;T64.84XA 
 ;;9002226.02101,"174,T64.84XA ",.03)
 ;;30
 ;;9002226.02101,"174,T64.84XD ",.01)
 ;;T64.84XD 
 ;;9002226.02101,"174,T64.84XD ",.02)
 ;;T64.84XD 
 ;;9002226.02101,"174,T64.84XD ",.03)
 ;;30
 ;;9002226.02101,"174,T64.84XS ",.01)
 ;;T64.84XS 
 ;;9002226.02101,"174,T64.84XS ",.02)
 ;;T64.84XS 
 ;;9002226.02101,"174,T64.84XS ",.03)
 ;;30
 ;;9002226.02101,"174,T65.0X4A ",.01)
 ;;T65.0X4A 
 ;;9002226.02101,"174,T65.0X4A ",.02)
 ;;T65.0X4A 
 ;;9002226.02101,"174,T65.0X4A ",.03)
 ;;30
 ;;9002226.02101,"174,T65.0X4D ",.01)
 ;;T65.0X4D 
 ;;9002226.02101,"174,T65.0X4D ",.02)
 ;;T65.0X4D 
 ;;9002226.02101,"174,T65.0X4D ",.03)
 ;;30
 ;;9002226.02101,"174,T65.0X4S ",.01)
 ;;T65.0X4S 
 ;;9002226.02101,"174,T65.0X4S ",.02)
 ;;T65.0X4S 
 ;;9002226.02101,"174,T65.0X4S ",.03)
 ;;30
 ;;9002226.02101,"174,T65.1X4A ",.01)
 ;;T65.1X4A 
 ;;9002226.02101,"174,T65.1X4A ",.02)
 ;;T65.1X4A 
 ;;9002226.02101,"174,T65.1X4A ",.03)
 ;;30
 ;;9002226.02101,"174,T65.1X4D ",.01)
 ;;T65.1X4D 
 ;;9002226.02101,"174,T65.1X4D ",.02)
 ;;T65.1X4D 
 ;;9002226.02101,"174,T65.1X4D ",.03)
 ;;30
 ;;9002226.02101,"174,T65.1X4S ",.01)
 ;;T65.1X4S 
 ;;9002226.02101,"174,T65.1X4S ",.02)
 ;;T65.1X4S 
 ;;9002226.02101,"174,T65.1X4S ",.03)
 ;;30
 ;;9002226.02101,"174,T65.214A ",.01)
 ;;T65.214A 
 ;;9002226.02101,"174,T65.214A ",.02)
 ;;T65.214A 
 ;;9002226.02101,"174,T65.214A ",.03)
 ;;30
 ;;9002226.02101,"174,T65.214D ",.01)
 ;;T65.214D 
 ;;9002226.02101,"174,T65.214D ",.02)
 ;;T65.214D 
 ;;9002226.02101,"174,T65.214D ",.03)
 ;;30
 ;;9002226.02101,"174,T65.214S ",.01)
 ;;T65.214S 
 ;;9002226.02101,"174,T65.214S ",.02)
 ;;T65.214S 
 ;;9002226.02101,"174,T65.214S ",.03)
 ;;30
 ;;9002226.02101,"174,T65.224A ",.01)
 ;;T65.224A 
 ;;9002226.02101,"174,T65.224A ",.02)
 ;;T65.224A 
 ;;9002226.02101,"174,T65.224A ",.03)
 ;;30
 ;;9002226.02101,"174,T65.224D ",.01)
 ;;T65.224D 
 ;;9002226.02101,"174,T65.224D ",.02)
 ;;T65.224D 
 ;;9002226.02101,"174,T65.224D ",.03)
 ;;30
 ;;9002226.02101,"174,T65.224S ",.01)
 ;;T65.224S 
 ;;9002226.02101,"174,T65.224S ",.02)
 ;;T65.224S 
 ;;9002226.02101,"174,T65.224S ",.03)
 ;;30
 ;;9002226.02101,"174,T65.294A ",.01)
 ;;T65.294A 
 ;;9002226.02101,"174,T65.294A ",.02)
 ;;T65.294A 
 ;;9002226.02101,"174,T65.294A ",.03)
 ;;30
 ;;9002226.02101,"174,T65.294D ",.01)
 ;;T65.294D 
 ;;9002226.02101,"174,T65.294D ",.02)
 ;;T65.294D 
 ;;9002226.02101,"174,T65.294D ",.03)
 ;;30
 ;;9002226.02101,"174,T65.294S ",.01)
 ;;T65.294S 
 ;;9002226.02101,"174,T65.294S ",.02)
 ;;T65.294S 
 ;;9002226.02101,"174,T65.294S ",.03)
 ;;30
 ;;9002226.02101,"174,T65.3X4A ",.01)
 ;;T65.3X4A 
 ;;9002226.02101,"174,T65.3X4A ",.02)
 ;;T65.3X4A 
 ;;9002226.02101,"174,T65.3X4A ",.03)
 ;;30
 ;;9002226.02101,"174,T65.3X4D ",.01)
 ;;T65.3X4D 
 ;;9002226.02101,"174,T65.3X4D ",.02)
 ;;T65.3X4D 
 ;;9002226.02101,"174,T65.3X4D ",.03)
 ;;30
 ;;9002226.02101,"174,T65.3X4S ",.01)
 ;;T65.3X4S 
 ;;9002226.02101,"174,T65.3X4S ",.02)
 ;;T65.3X4S 
 ;;9002226.02101,"174,T65.3X4S ",.03)
 ;;30
 ;;9002226.02101,"174,T65.4X4A ",.01)
 ;;T65.4X4A 
 ;;9002226.02101,"174,T65.4X4A ",.02)
 ;;T65.4X4A 
 ;;9002226.02101,"174,T65.4X4A ",.03)
 ;;30
 ;;9002226.02101,"174,T65.4X4D ",.01)
 ;;T65.4X4D 
 ;;9002226.02101,"174,T65.4X4D ",.02)
 ;;T65.4X4D 
 ;;9002226.02101,"174,T65.4X4D ",.03)
 ;;30
 ;;9002226.02101,"174,T65.4X4S ",.01)
 ;;T65.4X4S 
 ;;9002226.02101,"174,T65.4X4S ",.02)
 ;;T65.4X4S 
 ;;9002226.02101,"174,T65.4X4S ",.03)
 ;;30
 ;;9002226.02101,"174,T65.5X4A ",.01)
 ;;T65.5X4A 
 ;;9002226.02101,"174,T65.5X4A ",.02)
 ;;T65.5X4A 
 ;;9002226.02101,"174,T65.5X4A ",.03)
 ;;30
 ;;9002226.02101,"174,T65.5X4D ",.01)
 ;;T65.5X4D 
 ;;9002226.02101,"174,T65.5X4D ",.02)
 ;;T65.5X4D 
 ;;9002226.02101,"174,T65.5X4D ",.03)
 ;;30
 ;;9002226.02101,"174,T65.5X4S ",.01)
 ;;T65.5X4S 
 ;;9002226.02101,"174,T65.5X4S ",.02)
 ;;T65.5X4S 
 ;;9002226.02101,"174,T65.5X4S ",.03)
 ;;30
 ;;9002226.02101,"174,T65.6X4A ",.01)
 ;;T65.6X4A 
 ;;9002226.02101,"174,T65.6X4A ",.02)
 ;;T65.6X4A 
 ;;9002226.02101,"174,T65.6X4A ",.03)
 ;;30
 ;;9002226.02101,"174,T65.6X4D ",.01)
 ;;T65.6X4D 
 ;;9002226.02101,"174,T65.6X4D ",.02)
 ;;T65.6X4D 
 ;;9002226.02101,"174,T65.6X4D ",.03)
 ;;30
 ;;9002226.02101,"174,T65.6X4S ",.01)
 ;;T65.6X4S 
 ;;9002226.02101,"174,T65.6X4S ",.02)
 ;;T65.6X4S 
 ;;9002226.02101,"174,T65.6X4S ",.03)
 ;;30
 ;;9002226.02101,"174,T65.814A ",.01)
 ;;T65.814A 
 ;;9002226.02101,"174,T65.814A ",.02)
 ;;T65.814A 
 ;;9002226.02101,"174,T65.814A ",.03)
 ;;30
 ;;9002226.02101,"174,T65.814D ",.01)
 ;;T65.814D 
 ;;9002226.02101,"174,T65.814D ",.02)
 ;;T65.814D 
 ;;9002226.02101,"174,T65.814D ",.03)
 ;;30
 ;;9002226.02101,"174,T65.814S ",.01)
 ;;T65.814S 
 ;;9002226.02101,"174,T65.814S ",.02)
 ;;T65.814S 
 ;;9002226.02101,"174,T65.814S ",.03)
 ;;30
 ;;9002226.02101,"174,T65.824A ",.01)
 ;;T65.824A 
 ;;9002226.02101,"174,T65.824A ",.02)
 ;;T65.824A 
 ;;9002226.02101,"174,T65.824A ",.03)
 ;;30
 ;;9002226.02101,"174,T65.824D ",.01)
 ;;T65.824D 
 ;;9002226.02101,"174,T65.824D ",.02)
 ;;T65.824D 
 ;;9002226.02101,"174,T65.824D ",.03)
 ;;30
 ;;9002226.02101,"174,T65.824S ",.01)
 ;;T65.824S 
 ;;9002226.02101,"174,T65.824S ",.02)
 ;;T65.824S 
 ;;9002226.02101,"174,T65.824S ",.03)
 ;;30
 ;;9002226.02101,"174,T65.834A ",.01)
 ;;T65.834A 
 ;;9002226.02101,"174,T65.834A ",.02)
 ;;T65.834A 
 ;;9002226.02101,"174,T65.834A ",.03)
 ;;30
 ;;9002226.02101,"174,T65.834D ",.01)
 ;;T65.834D 
 ;;9002226.02101,"174,T65.834D ",.02)
 ;;T65.834D 
 ;;9002226.02101,"174,T65.834D ",.03)
 ;;30
 ;;9002226.02101,"174,T65.834S ",.01)
 ;;T65.834S 
 ;;9002226.02101,"174,T65.834S ",.02)
 ;;T65.834S 
 ;;9002226.02101,"174,T65.834S ",.03)
 ;;30
 ;;9002226.02101,"174,T65.894A ",.01)
 ;;T65.894A 
 ;;9002226.02101,"174,T65.894A ",.02)
 ;;T65.894A 
 ;;9002226.02101,"174,T65.894A ",.03)
 ;;30
 ;;9002226.02101,"174,T65.894D ",.01)
 ;;T65.894D 
 ;;9002226.02101,"174,T65.894D ",.02)
 ;;T65.894D 
 ;;9002226.02101,"174,T65.894D ",.03)
 ;;30
 ;;9002226.02101,"174,T65.894S ",.01)
 ;;T65.894S 
 ;;9002226.02101,"174,T65.894S ",.02)
 ;;T65.894S 
 ;;9002226.02101,"174,T65.894S ",.03)
 ;;30
 ;;9002226.02101,"174,T65.94XA ",.01)
 ;;T65.94XA 
 ;;9002226.02101,"174,T65.94XA ",.02)
 ;;T65.94XA 
 ;;9002226.02101,"174,T65.94XA ",.03)
 ;;30
 ;;9002226.02101,"174,T65.94XD ",.01)
 ;;T65.94XD 
 ;;9002226.02101,"174,T65.94XD ",.02)
 ;;T65.94XD 
 ;;9002226.02101,"174,T65.94XD ",.03)
 ;;30
 ;;9002226.02101,"174,T65.94XS ",.01)
 ;;T65.94XS 
 ;;9002226.02101,"174,T65.94XS ",.02)
 ;;T65.94XS 
 ;;9002226.02101,"174,T65.94XS ",.03)
 ;;30
 ;;9002226.02101,"174,T71.114A ",.01)
 ;;T71.114A 
 ;;9002226.02101,"174,T71.114A ",.02)
 ;;T71.114A 
 ;;9002226.02101,"174,T71.114A ",.03)
 ;;30
 ;;9002226.02101,"174,T71.114D ",.01)
 ;;T71.114D 
 ;;9002226.02101,"174,T71.114D ",.02)
 ;;T71.114D 
 ;;9002226.02101,"174,T71.114D ",.03)
 ;;30
 ;;9002226.02101,"174,T71.114S ",.01)
 ;;T71.114S 
 ;;9002226.02101,"174,T71.114S ",.02)
 ;;T71.114S 
 ;;9002226.02101,"174,T71.114S ",.03)
 ;;30
 ;;9002226.02101,"174,T71.124A ",.01)
 ;;T71.124A 
 ;;9002226.02101,"174,T71.124A ",.02)
 ;;T71.124A 
 ;;9002226.02101,"174,T71.124A ",.03)
 ;;30
 ;;9002226.02101,"174,T71.124D ",.01)
 ;;T71.124D 
 ;;9002226.02101,"174,T71.124D ",.02)
 ;;T71.124D 
 ;;9002226.02101,"174,T71.124D ",.03)
 ;;30
 ;;9002226.02101,"174,T71.124S ",.01)
 ;;T71.124S 
 ;;9002226.02101,"174,T71.124S ",.02)
 ;;T71.124S 
 ;;9002226.02101,"174,T71.124S ",.03)
 ;;30
 ;;9002226.02101,"174,T71.134A ",.01)
 ;;T71.134A 
 ;;9002226.02101,"174,T71.134A ",.02)
 ;;T71.134A 
 ;;9002226.02101,"174,T71.134A ",.03)
 ;;30
 ;;9002226.02101,"174,T71.134D ",.01)
 ;;T71.134D 
 ;;9002226.02101,"174,T71.134D ",.02)
 ;;T71.134D 
 ;;9002226.02101,"174,T71.134D ",.03)
 ;;30
 ;;9002226.02101,"174,T71.134S ",.01)
 ;;T71.134S 
 ;;9002226.02101,"174,T71.134S ",.02)
 ;;T71.134S 
 ;;9002226.02101,"174,T71.134S ",.03)
 ;;30
 ;;9002226.02101,"174,T71.144A ",.01)
 ;;T71.144A 
 ;;9002226.02101,"174,T71.144A ",.02)
 ;;T71.144A 
 ;;9002226.02101,"174,T71.144A ",.03)
 ;;30
 ;;9002226.02101,"174,T71.144D ",.01)
 ;;T71.144D 
 ;;9002226.02101,"174,T71.144D ",.02)
 ;;T71.144D 
 ;;9002226.02101,"174,T71.144D ",.03)
 ;;30
 ;;9002226.02101,"174,T71.144S ",.01)
 ;;T71.144S 
 ;;9002226.02101,"174,T71.144S ",.02)
 ;;T71.144S 
 ;;9002226.02101,"174,T71.144S ",.03)
 ;;30
 ;;9002226.02101,"174,T71.154A ",.01)
 ;;T71.154A 
 ;;9002226.02101,"174,T71.154A ",.02)
 ;;T71.154A 
 ;;9002226.02101,"174,T71.154A ",.03)
 ;;30
 ;;9002226.02101,"174,T71.154D ",.01)
 ;;T71.154D 
 ;;9002226.02101,"174,T71.154D ",.02)
 ;;T71.154D 
 ;;9002226.02101,"174,T71.154D ",.03)
 ;;30
 ;;9002226.02101,"174,T71.154S ",.01)
 ;;T71.154S 
 ;;9002226.02101,"174,T71.154S ",.02)
 ;;T71.154S 
 ;;9002226.02101,"174,T71.154S ",.03)
 ;;30
 ;;9002226.02101,"174,T71.164A ",.01)
 ;;T71.164A 
 ;;9002226.02101,"174,T71.164A ",.02)
 ;;T71.164A 
 ;;9002226.02101,"174,T71.164A ",.03)
 ;;30
 ;;9002226.02101,"174,T71.164D ",.01)
 ;;T71.164D 
 ;;9002226.02101,"174,T71.164D ",.02)
 ;;T71.164D 
 ;;9002226.02101,"174,T71.164D ",.03)
 ;;30
 ;;9002226.02101,"174,T71.164S ",.01)
 ;;T71.164S 
 ;;9002226.02101,"174,T71.164S ",.02)
 ;;T71.164S 
 ;;9002226.02101,"174,T71.164S ",.03)
 ;;30
 ;;9002226.02101,"174,T71.194A ",.01)
 ;;T71.194A 
 ;;9002226.02101,"174,T71.194A ",.02)
 ;;T71.194A 
 ;;9002226.02101,"174,T71.194A ",.03)
 ;;30
 ;;9002226.02101,"174,T71.194D ",.01)
 ;;T71.194D 
 ;;9002226.02101,"174,T71.194D ",.02)
 ;;T71.194D 
 ;;9002226.02101,"174,T71.194D ",.03)
 ;;30
 ;;9002226.02101,"174,T71.194S ",.01)
 ;;T71.194S 
 ;;9002226.02101,"174,T71.194S ",.02)
 ;;T71.194S 
 ;;9002226.02101,"174,T71.194S ",.03)
 ;;30
 ;;9002226.02101,"174,T71.224A ",.01)
 ;;T71.224A 
 ;;9002226.02101,"174,T71.224A ",.02)
 ;;T71.224A 
 ;;9002226.02101,"174,T71.224A ",.03)
 ;;30
 ;;9002226.02101,"174,T71.224D ",.01)
 ;;T71.224D 
 ;;9002226.02101,"174,T71.224D ",.02)
 ;;T71.224D 
 ;;9002226.02101,"174,T71.224D ",.03)
 ;;30
 ;;9002226.02101,"174,T71.224S ",.01)
 ;;T71.224S 
 ;;9002226.02101,"174,T71.224S ",.02)
 ;;T71.224S 
 ;;9002226.02101,"174,T71.224S ",.03)
 ;;30
 ;;9002226.02101,"174,T71.234A ",.01)
 ;;T71.234A 
 ;;9002226.02101,"174,T71.234A ",.02)
 ;;T71.234A 
 ;;9002226.02101,"174,T71.234A ",.03)
 ;;30
 ;;9002226.02101,"174,T71.234D ",.01)
 ;;T71.234D 
 ;;9002226.02101,"174,T71.234D ",.02)
 ;;T71.234D 
 ;;9002226.02101,"174,T71.234D ",.03)
 ;;30
 ;;9002226.02101,"174,T71.234S ",.01)
 ;;T71.234S 
 ;;9002226.02101,"174,T71.234S ",.02)
 ;;T71.234S 
 ;;9002226.02101,"174,T71.234S ",.03)
 ;;30
 ;;9002226.02101,"174,V94.9XXA ",.01)
 ;;V94.9XXA 
 ;;9002226.02101,"174,V94.9XXA ",.02)
 ;;V94.9XXA 
 ;;9002226.02101,"174,V94.9XXA ",.03)
 ;;30
 ;;9002226.02101,"174,V94.9XXD ",.01)
 ;;V94.9XXD 
 ;;9002226.02101,"174,V94.9XXD ",.02)
 ;;V94.9XXD 
 ;;9002226.02101,"174,V94.9XXD ",.03)
 ;;30
 ;;9002226.02101,"174,V94.9XXS ",.01)
 ;;V94.9XXS 
 ;;9002226.02101,"174,V94.9XXS ",.02)
 ;;V94.9XXS 
 ;;9002226.02101,"174,V94.9XXS ",.03)
 ;;30
 ;;9002226.02101,"174,Y21.1XXA ",.01)
 ;;Y21.1XXA 
 ;;9002226.02101,"174,Y21.1XXA ",.02)
 ;;Y21.1XXA 
 ;;9002226.02101,"174,Y21.1XXA ",.03)
 ;;30
 ;;9002226.02101,"174,Y21.1XXD ",.01)
 ;;Y21.1XXD 
 ;;9002226.02101,"174,Y21.1XXD ",.02)
 ;;Y21.1XXD 
 ;;9002226.02101,"174,Y21.1XXD ",.03)
 ;;30
 ;;9002226.02101,"174,Y21.1XXS ",.01)
 ;;Y21.1XXS 
 ;;9002226.02101,"174,Y21.1XXS ",.02)
 ;;Y21.1XXS 
 ;;9002226.02101,"174,Y21.1XXS ",.03)
 ;;30
 ;;9002226.02101,"174,Y21.2XXA ",.01)
 ;;Y21.2XXA 
 ;;9002226.02101,"174,Y21.2XXA ",.02)
 ;;Y21.2XXA 
 ;;9002226.02101,"174,Y21.2XXA ",.03)
 ;;30
 ;;9002226.02101,"174,Y21.2XXD ",.01)
 ;;Y21.2XXD 
 ;;9002226.02101,"174,Y21.2XXD ",.02)
 ;;Y21.2XXD 
 ;;9002226.02101,"174,Y21.2XXD ",.03)
 ;;30
 ;;9002226.02101,"174,Y21.2XXS ",.01)
 ;;Y21.2XXS 
 ;;9002226.02101,"174,Y21.2XXS ",.02)
 ;;Y21.2XXS 
 ;;9002226.02101,"174,Y21.2XXS ",.03)
 ;;30
 ;;9002226.02101,"174,Y21.3XXA ",.01)
 ;;Y21.3XXA 
 ;;9002226.02101,"174,Y21.3XXA ",.02)
 ;;Y21.3XXA 
 ;;9002226.02101,"174,Y21.3XXA ",.03)
 ;;30
 ;;9002226.02101,"174,Y21.3XXD ",.01)
 ;;Y21.3XXD 
 ;;9002226.02101,"174,Y21.3XXD ",.02)
 ;;Y21.3XXD 
 ;;9002226.02101,"174,Y21.3XXD ",.03)
 ;;30
 ;;9002226.02101,"174,Y21.3XXS ",.01)
 ;;Y21.3XXS 
 ;;9002226.02101,"174,Y21.3XXS ",.02)
 ;;Y21.3XXS 
 ;;9002226.02101,"174,Y21.3XXS ",.03)
 ;;30
 ;;9002226.02101,"174,Y21.4XXA ",.01)
 ;;Y21.4XXA 
 ;;9002226.02101,"174,Y21.4XXA ",.02)
 ;;Y21.4XXA 
 ;;9002226.02101,"174,Y21.4XXA ",.03)
 ;;30
 ;;9002226.02101,"174,Y21.4XXD ",.01)
 ;;Y21.4XXD 
 ;;9002226.02101,"174,Y21.4XXD ",.02)
 ;;Y21.4XXD 
 ;;9002226.02101,"174,Y21.4XXD ",.03)
 ;;30
 ;;9002226.02101,"174,Y21.4XXS ",.01)
 ;;Y21.4XXS 
 ;;9002226.02101,"174,Y21.4XXS ",.02)
 ;;Y21.4XXS 
 ;;9002226.02101,"174,Y21.4XXS ",.03)
 ;;30
 ;;9002226.02101,"174,Y21.8XXA ",.01)
 ;;Y21.8XXA 
 ;;9002226.02101,"174,Y21.8XXA ",.02)
 ;;Y21.8XXA 
 ;;9002226.02101,"174,Y21.8XXA ",.03)
 ;;30
 ;;9002226.02101,"174,Y21.8XXD ",.01)
 ;;Y21.8XXD 
 ;;9002226.02101,"174,Y21.8XXD ",.02)
 ;;Y21.8XXD 
 ;;9002226.02101,"174,Y21.8XXD ",.03)
 ;;30
 ;;9002226.02101,"174,Y21.8XXS ",.01)
 ;;Y21.8XXS 