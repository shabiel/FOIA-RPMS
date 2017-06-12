BGP45B6 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON SEP 11, 2013;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"710,54270-4 ",.01)
 ;;54270-4
 ;;9002226.02101,"710,54270-4 ",.02)
 ;;54270-4
 ;;9002226.02101,"710,54271-2 ",.01)
 ;;54271-2
 ;;9002226.02101,"710,54271-2 ",.02)
 ;;54271-2
 ;;9002226.02101,"710,54272-0 ",.01)
 ;;54272-0
 ;;9002226.02101,"710,54272-0 ",.02)
 ;;54272-0
 ;;9002226.02101,"710,54273-8 ",.01)
 ;;54273-8
 ;;9002226.02101,"710,54273-8 ",.02)
 ;;54273-8
 ;;9002226.02101,"710,54274-6 ",.01)
 ;;54274-6
 ;;9002226.02101,"710,54274-6 ",.02)
 ;;54274-6
 ;;9002226.02101,"710,54275-3 ",.01)
 ;;54275-3
 ;;9002226.02101,"710,54275-3 ",.02)
 ;;54275-3
 ;;9002226.02101,"710,54276-1 ",.01)
 ;;54276-1
 ;;9002226.02101,"710,54276-1 ",.02)
 ;;54276-1
 ;;9002226.02101,"710,54277-9 ",.01)
 ;;54277-9
 ;;9002226.02101,"710,54277-9 ",.02)
 ;;54277-9
 ;;9002226.02101,"710,54392-6 ",.01)
 ;;54392-6
 ;;9002226.02101,"710,54392-6 ",.02)
 ;;54392-6
 ;;9002226.02101,"710,54393-4 ",.01)
 ;;54393-4
 ;;9002226.02101,"710,54393-4 ",.02)
 ;;54393-4
 ;;9002226.02101,"710,54394-2 ",.01)
 ;;54394-2
 ;;9002226.02101,"710,54394-2 ",.02)
 ;;54394-2
 ;;9002226.02101,"710,54395-9 ",.01)
 ;;54395-9
 ;;9002226.02101,"710,54395-9 ",.02)
 ;;54395-9
 ;;9002226.02101,"710,54396-7 ",.01)
 ;;54396-7
 ;;9002226.02101,"710,54396-7 ",.02)
 ;;54396-7
 ;;9002226.02101,"710,54397-5 ",.01)
 ;;54397-5
 ;;9002226.02101,"710,54397-5 ",.02)
 ;;54397-5
 ;;9002226.02101,"710,54398-3 ",.01)
 ;;54398-3
 ;;9002226.02101,"710,54398-3 ",.02)
 ;;54398-3
 ;;9002226.02101,"710,54399-1 ",.01)
 ;;54399-1
 ;;9002226.02101,"710,54399-1 ",.02)
 ;;54399-1
 ;;9002226.02101,"710,54400-7 ",.01)
 ;;54400-7
 ;;9002226.02101,"710,54400-7 ",.02)
 ;;54400-7
 ;;9002226.02101,"710,54401-5 ",.01)
 ;;54401-5
 ;;9002226.02101,"710,54401-5 ",.02)
 ;;54401-5
 ;;9002226.02101,"710,54495-7 ",.01)
 ;;54495-7
 ;;9002226.02101,"710,54495-7 ",.02)
 ;;54495-7
 ;;9002226.02101,"710,54496-5 ",.01)
 ;;54496-5
 ;;9002226.02101,"710,54496-5 ",.02)
 ;;54496-5
 ;;9002226.02101,"710,54497-3 ",.01)
 ;;54497-3
 ;;9002226.02101,"710,54497-3 ",.02)
 ;;54497-3
 ;;9002226.02101,"710,54498-1 ",.01)
 ;;54498-1
 ;;9002226.02101,"710,54498-1 ",.02)
 ;;54498-1
 ;;9002226.02101,"710,54499-9 ",.01)
 ;;54499-9
 ;;9002226.02101,"710,54499-9 ",.02)
 ;;54499-9
 ;;9002226.02101,"710,55351-1 ",.01)
 ;;55351-1
 ;;9002226.02101,"710,55351-1 ",.02)
 ;;55351-1
 ;;9002226.02101,"710,55352-9 ",.01)
 ;;55352-9
 ;;9002226.02101,"710,55352-9 ",.02)
 ;;55352-9
 ;;9002226.02101,"710,55381-8 ",.01)
 ;;55381-8
 ;;9002226.02101,"710,55381-8 ",.02)
 ;;55381-8
 ;;9002226.02101,"710,56751-1 ",.01)
 ;;56751-1
 ;;9002226.02101,"710,56751-1 ",.02)
 ;;56751-1
 ;;9002226.02101,"710,57350-1 ",.01)
 ;;57350-1
 ;;9002226.02101,"710,57350-1 ",.02)
 ;;57350-1
 ;;9002226.02101,"710,57971-4 ",.01)
 ;;57971-4
 ;;9002226.02101,"710,57971-4 ",.02)
 ;;57971-4
 ;;9002226.02101,"710,57972-2 ",.01)
 ;;57972-2
 ;;9002226.02101,"710,57972-2 ",.02)
 ;;57972-2
 ;;9002226.02101,"710,5914-7 ",.01)
 ;;5914-7
 ;;9002226.02101,"710,5914-7 ",.02)
 ;;5914-7
 ;;9002226.02101,"710,59157-8 ",.01)
 ;;59157-8
 ;;9002226.02101,"710,59157-8 ",.02)
 ;;59157-8
 ;;9002226.02101,"710,59791-4 ",.01)
 ;;59791-4
 ;;9002226.02101,"710,59791-4 ",.02)
 ;;59791-4
 ;;9002226.02101,"710,59792-2 ",.01)
 ;;59792-2
 ;;9002226.02101,"710,59792-2 ",.02)
 ;;59792-2
 ;;9002226.02101,"710,59793-0 ",.01)
 ;;59793-0
 ;;9002226.02101,"710,59793-0 ",.02)
 ;;59793-0
 ;;9002226.02101,"710,59794-8 ",.01)
 ;;59794-8
 ;;9002226.02101,"710,59794-8 ",.02)
 ;;59794-8
 ;;9002226.02101,"710,59795-5 ",.01)
 ;;59795-5
 ;;9002226.02101,"710,59795-5 ",.02)
 ;;59795-5
 ;;9002226.02101,"710,59796-3 ",.01)
 ;;59796-3
 ;;9002226.02101,"710,59796-3 ",.02)
 ;;59796-3
 ;;9002226.02101,"710,59797-1 ",.01)
 ;;59797-1
 ;;9002226.02101,"710,59797-1 ",.02)
 ;;59797-1
 ;;9002226.02101,"710,59812-8 ",.01)
 ;;59812-8
 ;;9002226.02101,"710,59812-8 ",.02)
 ;;59812-8
 ;;9002226.02101,"710,59813-6 ",.01)
 ;;59813-6
 ;;9002226.02101,"710,59813-6 ",.02)
 ;;59813-6
 ;;9002226.02101,"710,59814-4 ",.01)
 ;;59814-4
 ;;9002226.02101,"710,59814-4 ",.02)
 ;;59814-4
 ;;9002226.02101,"710,59815-1 ",.01)
 ;;59815-1
 ;;9002226.02101,"710,59815-1 ",.02)
 ;;59815-1
 ;;9002226.02101,"710,6689-4 ",.01)
 ;;6689-4
 ;;9002226.02101,"710,6689-4 ",.02)
 ;;6689-4
 ;;9002226.02101,"710,6749-6 ",.01)
 ;;6749-6
 ;;9002226.02101,"710,6749-6 ",.02)
 ;;6749-6
 ;;9002226.02101,"710,6752-0 ",.01)
 ;;6752-0
 ;;9002226.02101,"710,6752-0 ",.02)
 ;;6752-0
 ;;9002226.02101,"710,6753-8 ",.01)
 ;;6753-8
 ;;9002226.02101,"710,6753-8 ",.02)
 ;;6753-8
 ;;9002226.02101,"710,6754-6 ",.01)
 ;;6754-6
 ;;9002226.02101,"710,6754-6 ",.02)
 ;;6754-6
 ;;9002226.02101,"710,6755-3 ",.01)
 ;;6755-3
 ;;9002226.02101,"710,6755-3 ",.02)
 ;;6755-3
 ;;9002226.02101,"710,6756-1 ",.01)
 ;;6756-1
 ;;9002226.02101,"710,6756-1 ",.02)
 ;;6756-1
 ;;9002226.02101,"710,6759-5 ",.01)
 ;;6759-5
 ;;9002226.02101,"710,6759-5 ",.02)
 ;;6759-5
 ;;9002226.02101,"710,6760-3 ",.01)
 ;;6760-3
 ;;9002226.02101,"710,6760-3 ",.02)
 ;;6760-3
 ;;9002226.02101,"710,6762-9 ",.01)
 ;;6762-9
 ;;9002226.02101,"710,6762-9 ",.02)
 ;;6762-9
 ;;9002226.02101,"710,6764-5 ",.01)
 ;;6764-5
 ;;9002226.02101,"710,6764-5 ",.02)
 ;;6764-5
 ;;9002226.02101,"710,6777-7 ",.01)
 ;;6777-7
 ;;9002226.02101,"710,6777-7 ",.02)
 ;;6777-7
 ;;9002226.02101,"710,69941-3 ",.01)
 ;;69941-3
 ;;9002226.02101,"710,69941-3 ",.02)
 ;;69941-3
 ;;9002226.02101,"710,69942-1 ",.01)
 ;;69942-1
 ;;9002226.02101,"710,69942-1 ",.02)
 ;;69942-1
 ;;9002226.02101,"710,69943-9 ",.01)
 ;;69943-9
 ;;9002226.02101,"710,69943-9 ",.02)
 ;;69943-9
 ;;9002226.02101,"710,69944-7 ",.01)
 ;;69944-7
 ;;9002226.02101,"710,69944-7 ",.02)
 ;;69944-7
 ;;9002226.02101,"710,70208-4 ",.01)
 ;;70208-4
 ;;9002226.02101,"710,70208-4 ",.02)
 ;;70208-4
 ;;9002226.02101,"710,72171-2 ",.01)
 ;;72171-2
 ;;9002226.02101,"710,72171-2 ",.02)
 ;;72171-2
 ;;9002226.02101,"710,72516-8 ",.01)
 ;;72516-8
 ;;9002226.02101,"710,72516-8 ",.02)
 ;;72516-8
 ;;9002226.02101,"710,72895-6 ",.01)
 ;;72895-6
 ;;9002226.02101,"710,72895-6 ",.02)
 ;;72895-6
 ;;9002226.02101,"710,72896-4 ",.01)
 ;;72896-4
 ;;9002226.02101,"710,72896-4 ",.02)
 ;;72896-4
 ;;9002226.02101,"710,9375-7 ",.01)
 ;;9375-7
 ;;9002226.02101,"710,9375-7 ",.02)
 ;;9375-7
 ;;9002226.02101,"710,9376-5 ",.01)
 ;;9376-5
 ;;9002226.02101,"710,9376-5 ",.02)
 ;;9376-5
 ;;9002226.02101,"710,9377-3 ",.01)
 ;;9377-3
 ;;9002226.02101,"710,9377-3 ",.02)
 ;;9377-3
 ;;9002226.02101,"710,9378-1 ",.01)
 ;;9378-1
 ;;9002226.02101,"710,9378-1 ",.02)
 ;;9378-1