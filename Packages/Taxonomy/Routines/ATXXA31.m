ATXXA31 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"873,S02.401B ",.02)
 ;;S02.401B
 ;;9002226.02101,"873,S02.401B ",.03)
 ;;30
 ;;9002226.02101,"873,S02.402A ",.01)
 ;;S02.402A
 ;;9002226.02101,"873,S02.402A ",.02)
 ;;S02.402A
 ;;9002226.02101,"873,S02.402A ",.03)
 ;;30
 ;;9002226.02101,"873,S02.402B ",.01)
 ;;S02.402B
 ;;9002226.02101,"873,S02.402B ",.02)
 ;;S02.402B
 ;;9002226.02101,"873,S02.402B ",.03)
 ;;30
 ;;9002226.02101,"873,S02.411A ",.01)
 ;;S02.411A
 ;;9002226.02101,"873,S02.411A ",.02)
 ;;S02.411A
 ;;9002226.02101,"873,S02.411A ",.03)
 ;;30
 ;;9002226.02101,"873,S02.411B ",.01)
 ;;S02.411B
 ;;9002226.02101,"873,S02.411B ",.02)
 ;;S02.411B
 ;;9002226.02101,"873,S02.411B ",.03)
 ;;30
 ;;9002226.02101,"873,S02.412A ",.01)
 ;;S02.412A
 ;;9002226.02101,"873,S02.412A ",.02)
 ;;S02.412A
 ;;9002226.02101,"873,S02.412A ",.03)
 ;;30
 ;;9002226.02101,"873,S02.412B ",.01)
 ;;S02.412B
 ;;9002226.02101,"873,S02.412B ",.02)
 ;;S02.412B
 ;;9002226.02101,"873,S02.412B ",.03)
 ;;30
 ;;9002226.02101,"873,S02.413A ",.01)
 ;;S02.413A
 ;;9002226.02101,"873,S02.413A ",.02)
 ;;S02.413A
 ;;9002226.02101,"873,S02.413A ",.03)
 ;;30
 ;;9002226.02101,"873,S02.413B ",.01)
 ;;S02.413B
 ;;9002226.02101,"873,S02.413B ",.02)
 ;;S02.413B
 ;;9002226.02101,"873,S02.413B ",.03)
 ;;30
 ;;9002226.02101,"873,S02.42XA ",.01)
 ;;S02.42XA
 ;;9002226.02101,"873,S02.42XA ",.02)
 ;;S02.42XA
 ;;9002226.02101,"873,S02.42XA ",.03)
 ;;30
 ;;9002226.02101,"873,S02.42XB ",.01)
 ;;S02.42XB
 ;;9002226.02101,"873,S02.42XB ",.02)
 ;;S02.42XB
 ;;9002226.02101,"873,S02.42XB ",.03)
 ;;30
 ;;9002226.02101,"873,S02.5XXA ",.01)
 ;;S02.5XXA
 ;;9002226.02101,"873,S02.5XXA ",.02)
 ;;S02.5XXA
 ;;9002226.02101,"873,S02.5XXA ",.03)
 ;;30
 ;;9002226.02101,"873,S02.5XXB ",.01)
 ;;S02.5XXB
 ;;9002226.02101,"873,S02.5XXB ",.02)
 ;;S02.5XXB
 ;;9002226.02101,"873,S02.5XXB ",.03)
 ;;30
 ;;9002226.02101,"873,S02.600A ",.01)
 ;;S02.600A
 ;;9002226.02101,"873,S02.600A ",.02)
 ;;S02.600A
 ;;9002226.02101,"873,S02.600A ",.03)
 ;;30
 ;;9002226.02101,"873,S02.600B ",.01)
 ;;S02.600B
 ;;9002226.02101,"873,S02.600B ",.02)
 ;;S02.600B
 ;;9002226.02101,"873,S02.600B ",.03)
 ;;30
 ;;9002226.02101,"873,S02.609A ",.01)
 ;;S02.609A
 ;;9002226.02101,"873,S02.609A ",.02)
 ;;S02.609A
 ;;9002226.02101,"873,S02.609A ",.03)
 ;;30
 ;;9002226.02101,"873,S02.609B ",.01)
 ;;S02.609B
 ;;9002226.02101,"873,S02.609B ",.02)
 ;;S02.609B
 ;;9002226.02101,"873,S02.609B ",.03)
 ;;30
 ;;9002226.02101,"873,S02.61XA ",.01)
 ;;S02.61XA
 ;;9002226.02101,"873,S02.61XA ",.02)
 ;;S02.61XA
 ;;9002226.02101,"873,S02.61XA ",.03)
 ;;30
 ;;9002226.02101,"873,S02.61XB ",.01)
 ;;S02.61XB
 ;;9002226.02101,"873,S02.61XB ",.02)
 ;;S02.61XB
 ;;9002226.02101,"873,S02.61XB ",.03)
 ;;30
 ;;9002226.02101,"873,S02.62XA ",.01)
 ;;S02.62XA
 ;;9002226.02101,"873,S02.62XA ",.02)
 ;;S02.62XA
 ;;9002226.02101,"873,S02.62XA ",.03)
 ;;30
 ;;9002226.02101,"873,S02.62XB ",.01)
 ;;S02.62XB
 ;;9002226.02101,"873,S02.62XB ",.02)
 ;;S02.62XB
 ;;9002226.02101,"873,S02.62XB ",.03)
 ;;30
 ;;9002226.02101,"873,S02.63XA ",.01)
 ;;S02.63XA
 ;;9002226.02101,"873,S02.63XA ",.02)
 ;;S02.63XA
 ;;9002226.02101,"873,S02.63XA ",.03)
 ;;30
 ;;9002226.02101,"873,S02.63XB ",.01)
 ;;S02.63XB
 ;;9002226.02101,"873,S02.63XB ",.02)
 ;;S02.63XB
 ;;9002226.02101,"873,S02.63XB ",.03)
 ;;30
 ;;9002226.02101,"873,S02.64XA ",.01)
 ;;S02.64XA
 ;;9002226.02101,"873,S02.64XA ",.02)
 ;;S02.64XA
 ;;9002226.02101,"873,S02.64XA ",.03)
 ;;30
 ;;9002226.02101,"873,S02.64XB ",.01)
 ;;S02.64XB
 ;;9002226.02101,"873,S02.64XB ",.02)
 ;;S02.64XB
 ;;9002226.02101,"873,S02.64XB ",.03)
 ;;30
 ;;9002226.02101,"873,S02.65XA ",.01)
 ;;S02.65XA
 ;;9002226.02101,"873,S02.65XA ",.02)
 ;;S02.65XA
 ;;9002226.02101,"873,S02.65XA ",.03)
 ;;30
 ;;9002226.02101,"873,S02.65XB ",.01)
 ;;S02.65XB
 ;;9002226.02101,"873,S02.65XB ",.02)
 ;;S02.65XB
 ;;9002226.02101,"873,S02.65XB ",.03)
 ;;30
 ;;9002226.02101,"873,S02.66XA ",.01)
 ;;S02.66XA
 ;;9002226.02101,"873,S02.66XA ",.02)
 ;;S02.66XA
 ;;9002226.02101,"873,S02.66XA ",.03)
 ;;30
 ;;9002226.02101,"873,S02.66XB ",.01)
 ;;S02.66XB
 ;;9002226.02101,"873,S02.66XB ",.02)
 ;;S02.66XB
 ;;9002226.02101,"873,S02.66XB ",.03)
 ;;30
 ;;9002226.02101,"873,S02.67XA ",.01)
 ;;S02.67XA
 ;;9002226.02101,"873,S02.67XA ",.02)
 ;;S02.67XA
 ;;9002226.02101,"873,S02.67XA ",.03)
 ;;30
 ;;9002226.02101,"873,S02.67XB ",.01)
 ;;S02.67XB
 ;;9002226.02101,"873,S02.67XB ",.02)
 ;;S02.67XB
 ;;9002226.02101,"873,S02.67XB ",.03)
 ;;30
 ;;9002226.02101,"873,S02.69XA ",.01)
 ;;S02.69XA
 ;;9002226.02101,"873,S02.69XA ",.02)
 ;;S02.69XA
 ;;9002226.02101,"873,S02.69XA ",.03)
 ;;30
 ;;9002226.02101,"873,S02.69XB ",.01)
 ;;S02.69XB
 ;;9002226.02101,"873,S02.69XB ",.02)
 ;;S02.69XB
 ;;9002226.02101,"873,S02.69XB ",.03)
 ;;30
 ;;9002226.02101,"873,S02.8XXA ",.01)
 ;;S02.8XXA
 ;;9002226.02101,"873,S02.8XXA ",.02)
 ;;S02.8XXA
 ;;9002226.02101,"873,S02.8XXA ",.03)
 ;;30
 ;;9002226.02101,"873,S02.8XXB ",.01)
 ;;S02.8XXB
 ;;9002226.02101,"873,S02.8XXB ",.02)
 ;;S02.8XXB
 ;;9002226.02101,"873,S02.8XXB ",.03)
 ;;30
 ;;9002226.02101,"873,S02.91XA ",.01)
 ;;S02.91XA
 ;;9002226.02101,"873,S02.91XA ",.02)
 ;;S02.91XA
 ;;9002226.02101,"873,S02.91XA ",.03)
 ;;30
 ;;9002226.02101,"873,S02.91XB ",.01)
 ;;S02.91XB
 ;;9002226.02101,"873,S02.91XB ",.02)
 ;;S02.91XB
 ;;9002226.02101,"873,S02.91XB ",.03)
 ;;30
 ;;9002226.02101,"873,S02.92XA ",.01)
 ;;S02.92XA
 ;;9002226.02101,"873,S02.92XA ",.02)
 ;;S02.92XA
 ;;9002226.02101,"873,S02.92XA ",.03)
 ;;30
 ;;9002226.02101,"873,S02.92XB ",.01)
 ;;S02.92XB
 ;;9002226.02101,"873,S02.92XB ",.02)
 ;;S02.92XB
 ;;9002226.02101,"873,S02.92XB ",.03)
 ;;30
 ;;9002226.02101,"873,S03.0XXA ",.01)
 ;;S03.0XXA
 ;;9002226.02101,"873,S03.0XXA ",.02)
 ;;S03.0XXA
 ;;9002226.02101,"873,S03.0XXA ",.03)
 ;;30
 ;;9002226.02101,"873,S03.1XXA ",.01)
 ;;S03.1XXA
 ;;9002226.02101,"873,S03.1XXA ",.02)
 ;;S03.1XXA
 ;;9002226.02101,"873,S03.1XXA ",.03)
 ;;30
 ;;9002226.02101,"873,S03.2XXA ",.01)
 ;;S03.2XXA
 ;;9002226.02101,"873,S03.2XXA ",.02)
 ;;S03.2XXA
 ;;9002226.02101,"873,S03.2XXA ",.03)
 ;;30
 ;;9002226.02101,"873,S03.4XXA ",.01)
 ;;S03.4XXA
 ;;9002226.02101,"873,S03.4XXA ",.02)
 ;;S03.4XXA
 ;;9002226.02101,"873,S03.4XXA ",.03)
 ;;30
 ;;9002226.02101,"873,S03.8XXA ",.01)
 ;;S03.8XXA
 ;;9002226.02101,"873,S03.8XXA ",.02)
 ;;S03.8XXA
 ;;9002226.02101,"873,S03.8XXA ",.03)
 ;;30
 ;;9002226.02101,"873,S03.9XXA ",.01)
 ;;S03.9XXA
 ;;9002226.02101,"873,S03.9XXA ",.02)
 ;;S03.9XXA
 ;;9002226.02101,"873,S03.9XXA ",.03)
 ;;30
 ;;9002226.02101,"873,S04.011A ",.01)
 ;;S04.011A
 ;;9002226.02101,"873,S04.011A ",.02)
 ;;S04.011A
 ;;9002226.02101,"873,S04.011A ",.03)
 ;;30
 ;;9002226.02101,"873,S04.012A ",.01)
 ;;S04.012A
 ;;9002226.02101,"873,S04.012A ",.02)
 ;;S04.012A
 ;;9002226.02101,"873,S04.012A ",.03)
 ;;30
 ;;9002226.02101,"873,S04.019A ",.01)
 ;;S04.019A
 ;;9002226.02101,"873,S04.019A ",.02)
 ;;S04.019A
 ;;9002226.02101,"873,S04.019A ",.03)
 ;;30
 ;;9002226.02101,"873,S04.02XA ",.01)
 ;;S04.02XA
 ;;9002226.02101,"873,S04.02XA ",.02)
 ;;S04.02XA
 ;;9002226.02101,"873,S04.02XA ",.03)
 ;;30
 ;;9002226.02101,"873,S04.031A ",.01)
 ;;S04.031A
 ;;9002226.02101,"873,S04.031A ",.02)
 ;;S04.031A
 ;;9002226.02101,"873,S04.031A ",.03)
 ;;30
 ;;9002226.02101,"873,S04.032A ",.01)
 ;;S04.032A
 ;;9002226.02101,"873,S04.032A ",.02)
 ;;S04.032A
 ;;9002226.02101,"873,S04.032A ",.03)
 ;;30
 ;;9002226.02101,"873,S04.039A ",.01)
 ;;S04.039A
 ;;9002226.02101,"873,S04.039A ",.02)
 ;;S04.039A
 ;;9002226.02101,"873,S04.039A ",.03)
 ;;30
 ;;9002226.02101,"873,S04.041A ",.01)
 ;;S04.041A
 ;;9002226.02101,"873,S04.041A ",.02)
 ;;S04.041A
 ;;9002226.02101,"873,S04.041A ",.03)
 ;;30
 ;;9002226.02101,"873,S04.042A ",.01)
 ;;S04.042A
 ;;9002226.02101,"873,S04.042A ",.02)
 ;;S04.042A
 ;;9002226.02101,"873,S04.042A ",.03)
 ;;30
 ;;9002226.02101,"873,S04.049A ",.01)
 ;;S04.049A
 ;;9002226.02101,"873,S04.049A ",.02)
 ;;S04.049A
 ;;9002226.02101,"873,S04.049A ",.03)
 ;;30
 ;;9002226.02101,"873,S04.10XA ",.01)
 ;;S04.10XA
 ;;9002226.02101,"873,S04.10XA ",.02)
 ;;S04.10XA
 ;;9002226.02101,"873,S04.10XA ",.03)
 ;;30
 ;;9002226.02101,"873,S04.11XA ",.01)
 ;;S04.11XA
 ;;9002226.02101,"873,S04.11XA ",.02)
 ;;S04.11XA
 ;;9002226.02101,"873,S04.11XA ",.03)
 ;;30
 ;;9002226.02101,"873,S04.12XA ",.01)
 ;;S04.12XA
 ;;9002226.02101,"873,S04.12XA ",.02)
 ;;S04.12XA
 ;;9002226.02101,"873,S04.12XA ",.03)
 ;;30
 ;;9002226.02101,"873,S04.20XA ",.01)
 ;;S04.20XA
 ;;9002226.02101,"873,S04.20XA ",.02)
 ;;S04.20XA
 ;;9002226.02101,"873,S04.20XA ",.03)
 ;;30
 ;;9002226.02101,"873,S04.21XA ",.01)
 ;;S04.21XA
 ;;9002226.02101,"873,S04.21XA ",.02)
 ;;S04.21XA
 ;;9002226.02101,"873,S04.21XA ",.03)
 ;;30
 ;;9002226.02101,"873,S04.22XA ",.01)
 ;;S04.22XA
 ;;9002226.02101,"873,S04.22XA ",.02)
 ;;S04.22XA
 ;;9002226.02101,"873,S04.22XA ",.03)
 ;;30
 ;;9002226.02101,"873,S04.30XA ",.01)
 ;;S04.30XA
 ;;9002226.02101,"873,S04.30XA ",.02)
 ;;S04.30XA
 ;;9002226.02101,"873,S04.30XA ",.03)
 ;;30
 ;;9002226.02101,"873,S04.31XA ",.01)
 ;;S04.31XA
 ;;9002226.02101,"873,S04.31XA ",.02)
 ;;S04.31XA
 ;;9002226.02101,"873,S04.31XA ",.03)
 ;;30
 ;;9002226.02101,"873,S04.32XA ",.01)
 ;;S04.32XA
 ;;9002226.02101,"873,S04.32XA ",.02)
 ;;S04.32XA
 ;;9002226.02101,"873,S04.32XA ",.03)
 ;;30
 ;;9002226.02101,"873,S04.40XA ",.01)
 ;;S04.40XA
 ;;9002226.02101,"873,S04.40XA ",.02)
 ;;S04.40XA
 ;;9002226.02101,"873,S04.40XA ",.03)
 ;;30
 ;;9002226.02101,"873,S04.41XA ",.01)
 ;;S04.41XA
 ;;9002226.02101,"873,S04.41XA ",.02)
 ;;S04.41XA
 ;;9002226.02101,"873,S04.41XA ",.03)
 ;;30
 ;;9002226.02101,"873,S04.42XA ",.01)
 ;;S04.42XA
 ;;9002226.02101,"873,S04.42XA ",.02)
 ;;S04.42XA
 ;;9002226.02101,"873,S04.42XA ",.03)
 ;;30
 ;;9002226.02101,"873,S04.50XA ",.01)
 ;;S04.50XA
 ;;9002226.02101,"873,S04.50XA ",.02)
 ;;S04.50XA
 ;;9002226.02101,"873,S04.50XA ",.03)
 ;;30
 ;;9002226.02101,"873,S04.51XA ",.01)
 ;;S04.51XA
 ;;9002226.02101,"873,S04.51XA ",.02)
 ;;S04.51XA
 ;;9002226.02101,"873,S04.51XA ",.03)
 ;;30
 ;;9002226.02101,"873,S04.52XA ",.01)
 ;;S04.52XA
 ;;9002226.02101,"873,S04.52XA ",.02)
 ;;S04.52XA
 ;;9002226.02101,"873,S04.52XA ",.03)
 ;;30
 ;;9002226.02101,"873,S04.60XA ",.01)
 ;;S04.60XA
 ;;9002226.02101,"873,S04.60XA ",.02)
 ;;S04.60XA
 ;;9002226.02101,"873,S04.60XA ",.03)
 ;;30
 ;;9002226.02101,"873,S04.61XA ",.01)
 ;;S04.61XA
 ;;9002226.02101,"873,S04.61XA ",.02)
 ;;S04.61XA
 ;;9002226.02101,"873,S04.61XA ",.03)
 ;;30
 ;;9002226.02101,"873,S04.62XA ",.01)
 ;;S04.62XA
 ;;9002226.02101,"873,S04.62XA ",.02)
 ;;S04.62XA
 ;;9002226.02101,"873,S04.62XA ",.03)
 ;;30
 ;;9002226.02101,"873,S04.70XA ",.01)
 ;;S04.70XA
 ;;9002226.02101,"873,S04.70XA ",.02)
 ;;S04.70XA
 ;;9002226.02101,"873,S04.70XA ",.03)
 ;;30
 ;;9002226.02101,"873,S04.71XA ",.01)
 ;;S04.71XA
 ;;9002226.02101,"873,S04.71XA ",.02)
 ;;S04.71XA
 ;;9002226.02101,"873,S04.71XA ",.03)
 ;;30
 ;;9002226.02101,"873,S04.72XA ",.01)
 ;;S04.72XA
 ;;9002226.02101,"873,S04.72XA ",.02)
 ;;S04.72XA
 ;;9002226.02101,"873,S04.72XA ",.03)
 ;;30
 ;;9002226.02101,"873,S04.811A ",.01)
 ;;S04.811A
 ;;9002226.02101,"873,S04.811A ",.02)
 ;;S04.811A
 ;;9002226.02101,"873,S04.811A ",.03)
 ;;30
 ;;9002226.02101,"873,S04.812A ",.01)
 ;;S04.812A
 ;;9002226.02101,"873,S04.812A ",.02)
 ;;S04.812A
 ;;9002226.02101,"873,S04.812A ",.03)
 ;;30
 ;;9002226.02101,"873,S04.819A ",.01)
 ;;S04.819A
 ;;9002226.02101,"873,S04.819A ",.02)
 ;;S04.819A