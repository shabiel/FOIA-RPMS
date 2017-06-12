ATXD4S ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 11, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BQI GONORRHEA DXS
 ;
 ; This routine loads Taxonomy BQI GONORRHEA DXS
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 D OTHER
 I $O(^TMP("ATX",$J,3.6,0)) D BULL^ATXSTX2
 I $O(^TMP("ATX",$J,9002226,0)) D TAX^ATXSTX2
 D KILL^ATXSTX2
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"098.0 ")
 ;;1
 ;;21,"647.10 ")
 ;;2
 ;;21,"A54.00 ")
 ;;3
 ;;21,"A54.01 ")
 ;;4
 ;;21,"A54.02 ")
 ;;5
 ;;21,"A54.03 ")
 ;;6
 ;;21,"A54.09 ")
 ;;7
 ;;21,"A54.1 ")
 ;;8
 ;;21,"A54.21 ")
 ;;9
 ;;21,"A54.22 ")
 ;;10
 ;;21,"A54.23 ")
 ;;11
 ;;21,"A54.24 ")
 ;;12
 ;;21,"A54.29 ")
 ;;13
 ;;21,"A54.30 ")
 ;;14
 ;;21,"A54.31 ")
 ;;15
 ;;21,"A54.32 ")
 ;;16
 ;;21,"A54.33 ")
 ;;17
 ;;21,"A54.39 ")
 ;;18
 ;;21,"A54.40 ")
 ;;19
 ;;21,"A54.41 ")
 ;;20
 ;;21,"A54.42 ")
 ;;21
 ;;21,"A54.43 ")
 ;;22
 ;;21,"A54.49 ")
 ;;23
 ;;21,"A54.5 ")
 ;;24
 ;;21,"A54.6 ")
 ;;25
 ;;21,"A54.81 ")
 ;;26
 ;;21,"A54.82 ")
 ;;27
 ;;21,"A54.83 ")
 ;;28
 ;;21,"A54.84 ")
 ;;29
 ;;21,"A54.85 ")
 ;;30
 ;;21,"A54.86 ")
 ;;31
 ;;21,"A54.89 ")
 ;;32
 ;;21,"A54.9 ")
 ;;33
 ;;21,"O98.211 ")
 ;;34
 ;;21,"O98.212 ")
 ;;35
 ;;21,"O98.213 ")
 ;;36
 ;;21,"O98.219 ")
 ;;37
 ;;21,"O98.22 ")
 ;;38
 ;;21,"O98.23 ")
 ;;39
 ;;9002226,1833,.01)
 ;;BQI GONORRHEA DXS
 ;;9002226,1833,.02)
 ;;Gonorrhea
 ;;9002226,1833,.04)
 ;;n
 ;;9002226,1833,.06)
 ;;@
 ;;9002226,1833,.08)
 ;;0
 ;;9002226,1833,.09)
 ;;3140311
 ;;9002226,1833,.11)
 ;;@
 ;;9002226,1833,.12)
 ;;31
 ;;9002226,1833,.13)
 ;;1
 ;;9002226,1833,.14)
 ;;@
 ;;9002226,1833,.15)
 ;;80
 ;;9002226,1833,.16)
 ;;@
 ;;9002226,1833,.17)
 ;;@
 ;;9002226,1833,3101)
 ;;@
 ;;9002226.01101,"1833,1",.01)
 ;;CDC Nationally Notificable Disease
 ;;9002226.02101,"1833,098.0 ",.01)
 ;;098.0
 ;;9002226.02101,"1833,098.0 ",.02)
 ;;098.89
 ;;9002226.02101,"1833,098.0 ",.03)
 ;;1
 ;;9002226.02101,"1833,647.10 ",.01)
 ;;647.10
 ;;9002226.02101,"1833,647.10 ",.02)
 ;;647.14
 ;;9002226.02101,"1833,647.10 ",.03)
 ;;1
 ;;9002226.02101,"1833,A54.00 ",.01)
 ;;A54.00 
 ;;9002226.02101,"1833,A54.00 ",.02)
 ;;A54.00 
 ;;9002226.02101,"1833,A54.00 ",.03)
 ;;30
 ;;9002226.02101,"1833,A54.01 ",.01)
 ;;A54.01 
 ;;9002226.02101,"1833,A54.01 ",.02)
 ;;A54.01 
 ;;9002226.02101,"1833,A54.01 ",.03)
 ;;30
 ;;9002226.02101,"1833,A54.02 ",.01)
 ;;A54.02 
 ;;9002226.02101,"1833,A54.02 ",.02)
 ;;A54.02 
 ;;9002226.02101,"1833,A54.02 ",.03)
 ;;30
 ;;9002226.02101,"1833,A54.03 ",.01)
 ;;A54.03 
 ;;9002226.02101,"1833,A54.03 ",.02)
 ;;A54.03 
 ;;9002226.02101,"1833,A54.03 ",.03)
 ;;30
 ;;9002226.02101,"1833,A54.09 ",.01)
 ;;A54.09 
 ;;9002226.02101,"1833,A54.09 ",.02)
 ;;A54.09 
 ;;9002226.02101,"1833,A54.09 ",.03)
 ;;30
 ;;9002226.02101,"1833,A54.1 ",.01)
 ;;A54.1 
 ;;9002226.02101,"1833,A54.1 ",.02)
 ;;A54.1 
 ;;9002226.02101,"1833,A54.1 ",.03)
 ;;30
 ;;9002226.02101,"1833,A54.21 ",.01)
 ;;A54.21 
 ;;9002226.02101,"1833,A54.21 ",.02)
 ;;A54.21 
 ;;9002226.02101,"1833,A54.21 ",.03)
 ;;30
 ;;9002226.02101,"1833,A54.22 ",.01)
 ;;A54.22 
 ;;9002226.02101,"1833,A54.22 ",.02)
 ;;A54.22 
 ;;9002226.02101,"1833,A54.22 ",.03)
 ;;30
 ;;9002226.02101,"1833,A54.23 ",.01)
 ;;A54.23 
 ;;9002226.02101,"1833,A54.23 ",.02)
 ;;A54.23 
 ;;9002226.02101,"1833,A54.23 ",.03)
 ;;30
 ;;9002226.02101,"1833,A54.24 ",.01)
 ;;A54.24 
 ;;9002226.02101,"1833,A54.24 ",.02)
 ;;A54.24 
 ;;9002226.02101,"1833,A54.24 ",.03)
 ;;30
 ;;9002226.02101,"1833,A54.29 ",.01)
 ;;A54.29 
 ;;9002226.02101,"1833,A54.29 ",.02)
 ;;A54.29 
 ;;9002226.02101,"1833,A54.29 ",.03)
 ;;30
 ;;9002226.02101,"1833,A54.30 ",.01)
 ;;A54.30 
 ;;9002226.02101,"1833,A54.30 ",.02)
 ;;A54.30 
 ;;9002226.02101,"1833,A54.30 ",.03)
 ;;30
 ;;9002226.02101,"1833,A54.31 ",.01)
 ;;A54.31 
 ;;9002226.02101,"1833,A54.31 ",.02)
 ;;A54.31 
 ;;9002226.02101,"1833,A54.31 ",.03)
 ;;30
 ;;9002226.02101,"1833,A54.32 ",.01)
 ;;A54.32 
 ;;9002226.02101,"1833,A54.32 ",.02)
 ;;A54.32 
 ;;9002226.02101,"1833,A54.32 ",.03)
 ;;30
 ;;9002226.02101,"1833,A54.33 ",.01)
 ;;A54.33 
 ;;9002226.02101,"1833,A54.33 ",.02)
 ;;A54.33 
 ;;9002226.02101,"1833,A54.33 ",.03)
 ;;30
 ;;9002226.02101,"1833,A54.39 ",.01)
 ;;A54.39 
 ;;9002226.02101,"1833,A54.39 ",.02)
 ;;A54.39 
 ;;9002226.02101,"1833,A54.39 ",.03)
 ;;30
 ;;9002226.02101,"1833,A54.40 ",.01)
 ;;A54.40 
 ;;9002226.02101,"1833,A54.40 ",.02)
 ;;A54.40 
 ;;9002226.02101,"1833,A54.40 ",.03)
 ;;30
 ;;9002226.02101,"1833,A54.41 ",.01)
 ;;A54.41 
 ;;9002226.02101,"1833,A54.41 ",.02)
 ;;A54.41 
 ;;9002226.02101,"1833,A54.41 ",.03)
 ;;30
 ;;9002226.02101,"1833,A54.42 ",.01)
 ;;A54.42 
 ;;9002226.02101,"1833,A54.42 ",.02)
 ;;A54.42 
 ;;9002226.02101,"1833,A54.42 ",.03)
 ;;30
 ;;9002226.02101,"1833,A54.43 ",.01)
 ;;A54.43 
 ;;9002226.02101,"1833,A54.43 ",.02)
 ;;A54.43 
 ;;9002226.02101,"1833,A54.43 ",.03)
 ;;30
 ;;9002226.02101,"1833,A54.49 ",.01)
 ;;A54.49 
 ;;9002226.02101,"1833,A54.49 ",.02)
 ;;A54.49 
 ;;9002226.02101,"1833,A54.49 ",.03)
 ;;30
 ;;9002226.02101,"1833,A54.5 ",.01)
 ;;A54.5 
 ;;9002226.02101,"1833,A54.5 ",.02)
 ;;A54.5 
 ;;9002226.02101,"1833,A54.5 ",.03)
 ;;30
 ;;9002226.02101,"1833,A54.6 ",.01)
 ;;A54.6 
 ;;9002226.02101,"1833,A54.6 ",.02)
 ;;A54.6 
 ;;9002226.02101,"1833,A54.6 ",.03)
 ;;30
 ;;9002226.02101,"1833,A54.81 ",.01)
 ;;A54.81 
 ;;9002226.02101,"1833,A54.81 ",.02)
 ;;A54.81 
 ;;9002226.02101,"1833,A54.81 ",.03)
 ;;30
 ;;9002226.02101,"1833,A54.82 ",.01)
 ;;A54.82 
 ;;9002226.02101,"1833,A54.82 ",.02)
 ;;A54.82 
 ;;9002226.02101,"1833,A54.82 ",.03)
 ;;30
 ;;9002226.02101,"1833,A54.83 ",.01)
 ;;A54.83 
 ;;9002226.02101,"1833,A54.83 ",.02)
 ;;A54.83 
 ;;9002226.02101,"1833,A54.83 ",.03)
 ;;30
 ;;9002226.02101,"1833,A54.84 ",.01)
 ;;A54.84 
 ;;9002226.02101,"1833,A54.84 ",.02)
 ;;A54.84 
 ;;9002226.02101,"1833,A54.84 ",.03)
 ;;30
 ;;9002226.02101,"1833,A54.85 ",.01)
 ;;A54.85 
 ;;9002226.02101,"1833,A54.85 ",.02)
 ;;A54.85 
 ;;9002226.02101,"1833,A54.85 ",.03)
 ;;30
 ;;9002226.02101,"1833,A54.86 ",.01)
 ;;A54.86 
 ;;9002226.02101,"1833,A54.86 ",.02)
 ;;A54.86 
 ;;9002226.02101,"1833,A54.86 ",.03)
 ;;30
 ;;9002226.02101,"1833,A54.89 ",.01)
 ;;A54.89 
 ;;9002226.02101,"1833,A54.89 ",.02)
 ;;A54.89 
 ;;9002226.02101,"1833,A54.89 ",.03)
 ;;30
 ;;9002226.02101,"1833,A54.9 ",.01)
 ;;A54.9 
 ;;9002226.02101,"1833,A54.9 ",.02)
 ;;A54.9 
 ;;9002226.02101,"1833,A54.9 ",.03)
 ;;30
 ;;9002226.02101,"1833,O98.211 ",.01)
 ;;O98.211 
 ;;9002226.02101,"1833,O98.211 ",.02)
 ;;O98.211 
 ;;9002226.02101,"1833,O98.211 ",.03)
 ;;30
 ;;9002226.02101,"1833,O98.212 ",.01)
 ;;O98.212 
 ;;9002226.02101,"1833,O98.212 ",.02)
 ;;O98.212 
 ;;9002226.02101,"1833,O98.212 ",.03)
 ;;30
 ;;9002226.02101,"1833,O98.213 ",.01)
 ;;O98.213 
 ;;9002226.02101,"1833,O98.213 ",.02)
 ;;O98.213 
 ;;9002226.02101,"1833,O98.213 ",.03)
 ;;30
 ;;9002226.02101,"1833,O98.219 ",.01)
 ;;O98.219 
 ;;9002226.02101,"1833,O98.219 ",.02)
 ;;O98.219 
 ;;9002226.02101,"1833,O98.219 ",.03)
 ;;30
 ;;9002226.02101,"1833,O98.22 ",.01)
 ;;O98.22 
 ;;9002226.02101,"1833,O98.22 ",.02)
 ;;O98.22 
 ;;9002226.02101,"1833,O98.22 ",.03)
 ;;30
 ;;9002226.02101,"1833,O98.23 ",.01)
 ;;O98.23 
 ;;9002226.02101,"1833,O98.23 ",.02)
 ;;O98.23 
 ;;9002226.02101,"1833,O98.23 ",.03)
 ;;30
 ;;9002226.04101,"1833,1",.01)
 ;;BQI
 ;;9002226.05101,"1833,1",.01)
 ;;GONORRHEA
 ;
OTHER ; OTHER ROUTINES
 Q