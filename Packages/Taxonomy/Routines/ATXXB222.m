ATXXB222 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1804,D9060ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9061ZZ ",.01)
 ;;D9061ZZ 
 ;;9002226.02101,"1804,D9061ZZ ",.02)
 ;;D9061ZZ 
 ;;9002226.02101,"1804,D9061ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9062ZZ ",.01)
 ;;D9062ZZ 
 ;;9002226.02101,"1804,D9062ZZ ",.02)
 ;;D9062ZZ 
 ;;9002226.02101,"1804,D9062ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9063Z0 ",.01)
 ;;D9063Z0 
 ;;9002226.02101,"1804,D9063Z0 ",.02)
 ;;D9063Z0 
 ;;9002226.02101,"1804,D9063Z0 ",.03)
 ;;31
 ;;9002226.02101,"1804,D9063ZZ ",.01)
 ;;D9063ZZ 
 ;;9002226.02101,"1804,D9063ZZ ",.02)
 ;;D9063ZZ 
 ;;9002226.02101,"1804,D9063ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9064ZZ ",.01)
 ;;D9064ZZ 
 ;;9002226.02101,"1804,D9064ZZ ",.02)
 ;;D9064ZZ 
 ;;9002226.02101,"1804,D9064ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9065ZZ ",.01)
 ;;D9065ZZ 
 ;;9002226.02101,"1804,D9065ZZ ",.02)
 ;;D9065ZZ 
 ;;9002226.02101,"1804,D9065ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9066ZZ ",.01)
 ;;D9066ZZ 
 ;;9002226.02101,"1804,D9066ZZ ",.02)
 ;;D9066ZZ 
 ;;9002226.02101,"1804,D9066ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9070ZZ ",.01)
 ;;D9070ZZ 
 ;;9002226.02101,"1804,D9070ZZ ",.02)
 ;;D9070ZZ 
 ;;9002226.02101,"1804,D9070ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9071ZZ ",.01)
 ;;D9071ZZ 
 ;;9002226.02101,"1804,D9071ZZ ",.02)
 ;;D9071ZZ 
 ;;9002226.02101,"1804,D9071ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9072ZZ ",.01)
 ;;D9072ZZ 
 ;;9002226.02101,"1804,D9072ZZ ",.02)
 ;;D9072ZZ 
 ;;9002226.02101,"1804,D9072ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9073Z0 ",.01)
 ;;D9073Z0 
 ;;9002226.02101,"1804,D9073Z0 ",.02)
 ;;D9073Z0 
 ;;9002226.02101,"1804,D9073Z0 ",.03)
 ;;31
 ;;9002226.02101,"1804,D9073ZZ ",.01)
 ;;D9073ZZ 
 ;;9002226.02101,"1804,D9073ZZ ",.02)
 ;;D9073ZZ 
 ;;9002226.02101,"1804,D9073ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9074ZZ ",.01)
 ;;D9074ZZ 
 ;;9002226.02101,"1804,D9074ZZ ",.02)
 ;;D9074ZZ 
 ;;9002226.02101,"1804,D9074ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9075ZZ ",.01)
 ;;D9075ZZ 
 ;;9002226.02101,"1804,D9075ZZ ",.02)
 ;;D9075ZZ 
 ;;9002226.02101,"1804,D9075ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9076ZZ ",.01)
 ;;D9076ZZ 
 ;;9002226.02101,"1804,D9076ZZ ",.02)
 ;;D9076ZZ 
 ;;9002226.02101,"1804,D9076ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9080ZZ ",.01)
 ;;D9080ZZ 
 ;;9002226.02101,"1804,D9080ZZ ",.02)
 ;;D9080ZZ 
 ;;9002226.02101,"1804,D9080ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9081ZZ ",.01)
 ;;D9081ZZ 
 ;;9002226.02101,"1804,D9081ZZ ",.02)
 ;;D9081ZZ 
 ;;9002226.02101,"1804,D9081ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9082ZZ ",.01)
 ;;D9082ZZ 
 ;;9002226.02101,"1804,D9082ZZ ",.02)
 ;;D9082ZZ 
 ;;9002226.02101,"1804,D9082ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9083Z0 ",.01)
 ;;D9083Z0 
 ;;9002226.02101,"1804,D9083Z0 ",.02)
 ;;D9083Z0 
 ;;9002226.02101,"1804,D9083Z0 ",.03)
 ;;31
 ;;9002226.02101,"1804,D9083ZZ ",.01)
 ;;D9083ZZ 
 ;;9002226.02101,"1804,D9083ZZ ",.02)
 ;;D9083ZZ 
 ;;9002226.02101,"1804,D9083ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9084ZZ ",.01)
 ;;D9084ZZ 
 ;;9002226.02101,"1804,D9084ZZ ",.02)
 ;;D9084ZZ 
 ;;9002226.02101,"1804,D9084ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9085ZZ ",.01)
 ;;D9085ZZ 
 ;;9002226.02101,"1804,D9085ZZ ",.02)
 ;;D9085ZZ 
 ;;9002226.02101,"1804,D9085ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9086ZZ ",.01)
 ;;D9086ZZ 
 ;;9002226.02101,"1804,D9086ZZ ",.02)
 ;;D9086ZZ 
 ;;9002226.02101,"1804,D9086ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9090ZZ ",.01)
 ;;D9090ZZ 
 ;;9002226.02101,"1804,D9090ZZ ",.02)
 ;;D9090ZZ 
 ;;9002226.02101,"1804,D9090ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9091ZZ ",.01)
 ;;D9091ZZ 
 ;;9002226.02101,"1804,D9091ZZ ",.02)
 ;;D9091ZZ 
 ;;9002226.02101,"1804,D9091ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9092ZZ ",.01)
 ;;D9092ZZ 
 ;;9002226.02101,"1804,D9092ZZ ",.02)
 ;;D9092ZZ 
 ;;9002226.02101,"1804,D9092ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9093Z0 ",.01)
 ;;D9093Z0 
 ;;9002226.02101,"1804,D9093Z0 ",.02)
 ;;D9093Z0 
 ;;9002226.02101,"1804,D9093Z0 ",.03)
 ;;31
 ;;9002226.02101,"1804,D9093ZZ ",.01)
 ;;D9093ZZ 
 ;;9002226.02101,"1804,D9093ZZ ",.02)
 ;;D9093ZZ 
 ;;9002226.02101,"1804,D9093ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9094ZZ ",.01)
 ;;D9094ZZ 
 ;;9002226.02101,"1804,D9094ZZ ",.02)
 ;;D9094ZZ 
 ;;9002226.02101,"1804,D9094ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9095ZZ ",.01)
 ;;D9095ZZ 
 ;;9002226.02101,"1804,D9095ZZ ",.02)
 ;;D9095ZZ 
 ;;9002226.02101,"1804,D9095ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9096ZZ ",.01)
 ;;D9096ZZ 
 ;;9002226.02101,"1804,D9096ZZ ",.02)
 ;;D9096ZZ 
 ;;9002226.02101,"1804,D9096ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D90B0ZZ ",.01)
 ;;D90B0ZZ 
 ;;9002226.02101,"1804,D90B0ZZ ",.02)
 ;;D90B0ZZ 
 ;;9002226.02101,"1804,D90B0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D90B1ZZ ",.01)
 ;;D90B1ZZ 
 ;;9002226.02101,"1804,D90B1ZZ ",.02)
 ;;D90B1ZZ 
 ;;9002226.02101,"1804,D90B1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D90B2ZZ ",.01)
 ;;D90B2ZZ 
 ;;9002226.02101,"1804,D90B2ZZ ",.02)
 ;;D90B2ZZ 
 ;;9002226.02101,"1804,D90B2ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D90B3Z0 ",.01)
 ;;D90B3Z0 
 ;;9002226.02101,"1804,D90B3Z0 ",.02)
 ;;D90B3Z0 
 ;;9002226.02101,"1804,D90B3Z0 ",.03)
 ;;31
 ;;9002226.02101,"1804,D90B3ZZ ",.01)
 ;;D90B3ZZ 
 ;;9002226.02101,"1804,D90B3ZZ ",.02)
 ;;D90B3ZZ 
 ;;9002226.02101,"1804,D90B3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D90B4ZZ ",.01)
 ;;D90B4ZZ 
 ;;9002226.02101,"1804,D90B4ZZ ",.02)
 ;;D90B4ZZ 
 ;;9002226.02101,"1804,D90B4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D90B5ZZ ",.01)
 ;;D90B5ZZ 
 ;;9002226.02101,"1804,D90B5ZZ ",.02)
 ;;D90B5ZZ 
 ;;9002226.02101,"1804,D90B5ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D90B6ZZ ",.01)
 ;;D90B6ZZ 
 ;;9002226.02101,"1804,D90B6ZZ ",.02)
 ;;D90B6ZZ 
 ;;9002226.02101,"1804,D90B6ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D90D0ZZ ",.01)
 ;;D90D0ZZ 
 ;;9002226.02101,"1804,D90D0ZZ ",.02)
 ;;D90D0ZZ 
 ;;9002226.02101,"1804,D90D0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D90D1ZZ ",.01)
 ;;D90D1ZZ 
 ;;9002226.02101,"1804,D90D1ZZ ",.02)
 ;;D90D1ZZ 
 ;;9002226.02101,"1804,D90D1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D90D2ZZ ",.01)
 ;;D90D2ZZ 
 ;;9002226.02101,"1804,D90D2ZZ ",.02)
 ;;D90D2ZZ 
 ;;9002226.02101,"1804,D90D2ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D90D3Z0 ",.01)
 ;;D90D3Z0 
 ;;9002226.02101,"1804,D90D3Z0 ",.02)
 ;;D90D3Z0 
 ;;9002226.02101,"1804,D90D3Z0 ",.03)
 ;;31
 ;;9002226.02101,"1804,D90D3ZZ ",.01)
 ;;D90D3ZZ 
 ;;9002226.02101,"1804,D90D3ZZ ",.02)
 ;;D90D3ZZ 
 ;;9002226.02101,"1804,D90D3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D90D4ZZ ",.01)
 ;;D90D4ZZ 
 ;;9002226.02101,"1804,D90D4ZZ ",.02)
 ;;D90D4ZZ 
 ;;9002226.02101,"1804,D90D4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D90D5ZZ ",.01)
 ;;D90D5ZZ 
 ;;9002226.02101,"1804,D90D5ZZ ",.02)
 ;;D90D5ZZ 
 ;;9002226.02101,"1804,D90D5ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D90D6ZZ ",.01)
 ;;D90D6ZZ 
 ;;9002226.02101,"1804,D90D6ZZ ",.02)
 ;;D90D6ZZ 
 ;;9002226.02101,"1804,D90D6ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D90F0ZZ ",.01)
 ;;D90F0ZZ 
 ;;9002226.02101,"1804,D90F0ZZ ",.02)
 ;;D90F0ZZ 
 ;;9002226.02101,"1804,D90F0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D90F1ZZ ",.01)
 ;;D90F1ZZ 
 ;;9002226.02101,"1804,D90F1ZZ ",.02)
 ;;D90F1ZZ 
 ;;9002226.02101,"1804,D90F1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D90F2ZZ ",.01)
 ;;D90F2ZZ 
 ;;9002226.02101,"1804,D90F2ZZ ",.02)
 ;;D90F2ZZ 
 ;;9002226.02101,"1804,D90F2ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D90F3Z0 ",.01)
 ;;D90F3Z0 
 ;;9002226.02101,"1804,D90F3Z0 ",.02)
 ;;D90F3Z0 
 ;;9002226.02101,"1804,D90F3Z0 ",.03)
 ;;31
 ;;9002226.02101,"1804,D90F3ZZ ",.01)
 ;;D90F3ZZ 
 ;;9002226.02101,"1804,D90F3ZZ ",.02)
 ;;D90F3ZZ 
 ;;9002226.02101,"1804,D90F3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D90F4ZZ ",.01)
 ;;D90F4ZZ 
 ;;9002226.02101,"1804,D90F4ZZ ",.02)
 ;;D90F4ZZ 
 ;;9002226.02101,"1804,D90F4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D90F5ZZ ",.01)
 ;;D90F5ZZ 
 ;;9002226.02101,"1804,D90F5ZZ ",.02)
 ;;D90F5ZZ 
 ;;9002226.02101,"1804,D90F5ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D90F6ZZ ",.01)
 ;;D90F6ZZ 
 ;;9002226.02101,"1804,D90F6ZZ ",.02)
 ;;D90F6ZZ 
 ;;9002226.02101,"1804,D90F6ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D91097Z ",.01)
 ;;D91097Z 
 ;;9002226.02101,"1804,D91097Z ",.02)
 ;;D91097Z 
 ;;9002226.02101,"1804,D91097Z ",.03)
 ;;31
 ;;9002226.02101,"1804,D91098Z ",.01)
 ;;D91098Z 
 ;;9002226.02101,"1804,D91098Z ",.02)
 ;;D91098Z 
 ;;9002226.02101,"1804,D91098Z ",.03)
 ;;31
 ;;9002226.02101,"1804,D91099Z ",.01)
 ;;D91099Z 
 ;;9002226.02101,"1804,D91099Z ",.02)
 ;;D91099Z 
 ;;9002226.02101,"1804,D91099Z ",.03)
 ;;31
 ;;9002226.02101,"1804,D9109BZ ",.01)
 ;;D9109BZ 
 ;;9002226.02101,"1804,D9109BZ ",.02)
 ;;D9109BZ 
 ;;9002226.02101,"1804,D9109BZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9109CZ ",.01)
 ;;D9109CZ 
 ;;9002226.02101,"1804,D9109CZ ",.02)
 ;;D9109CZ 
 ;;9002226.02101,"1804,D9109CZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9109YZ ",.01)
 ;;D9109YZ 
 ;;9002226.02101,"1804,D9109YZ ",.02)
 ;;D9109YZ 
 ;;9002226.02101,"1804,D9109YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D910B7Z ",.01)
 ;;D910B7Z 
 ;;9002226.02101,"1804,D910B7Z ",.02)
 ;;D910B7Z 
 ;;9002226.02101,"1804,D910B7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,D910B8Z ",.01)
 ;;D910B8Z 
 ;;9002226.02101,"1804,D910B8Z ",.02)
 ;;D910B8Z 
 ;;9002226.02101,"1804,D910B8Z ",.03)
 ;;31
 ;;9002226.02101,"1804,D910B9Z ",.01)
 ;;D910B9Z 
 ;;9002226.02101,"1804,D910B9Z ",.02)
 ;;D910B9Z 
 ;;9002226.02101,"1804,D910B9Z ",.03)
 ;;31
 ;;9002226.02101,"1804,D910BBZ ",.01)
 ;;D910BBZ 
 ;;9002226.02101,"1804,D910BBZ ",.02)
 ;;D910BBZ 
 ;;9002226.02101,"1804,D910BBZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D910BCZ ",.01)
 ;;D910BCZ 
 ;;9002226.02101,"1804,D910BCZ ",.02)
 ;;D910BCZ 
 ;;9002226.02101,"1804,D910BCZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D910BYZ ",.01)
 ;;D910BYZ 
 ;;9002226.02101,"1804,D910BYZ ",.02)
 ;;D910BYZ 
 ;;9002226.02101,"1804,D910BYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D91197Z ",.01)
 ;;D91197Z 
 ;;9002226.02101,"1804,D91197Z ",.02)
 ;;D91197Z 
 ;;9002226.02101,"1804,D91197Z ",.03)
 ;;31
 ;;9002226.02101,"1804,D91198Z ",.01)
 ;;D91198Z 
 ;;9002226.02101,"1804,D91198Z ",.02)
 ;;D91198Z 
 ;;9002226.02101,"1804,D91198Z ",.03)
 ;;31
 ;;9002226.02101,"1804,D91199Z ",.01)
 ;;D91199Z 
 ;;9002226.02101,"1804,D91199Z ",.02)
 ;;D91199Z 
 ;;9002226.02101,"1804,D91199Z ",.03)
 ;;31
 ;;9002226.02101,"1804,D9119BZ ",.01)
 ;;D9119BZ 
 ;;9002226.02101,"1804,D9119BZ ",.02)
 ;;D9119BZ 
 ;;9002226.02101,"1804,D9119BZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9119CZ ",.01)
 ;;D9119CZ 
 ;;9002226.02101,"1804,D9119CZ ",.02)
 ;;D9119CZ 
 ;;9002226.02101,"1804,D9119CZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D9119YZ ",.01)
 ;;D9119YZ 
 ;;9002226.02101,"1804,D9119YZ ",.02)
 ;;D9119YZ 
 ;;9002226.02101,"1804,D9119YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D911B7Z ",.01)
 ;;D911B7Z 
 ;;9002226.02101,"1804,D911B7Z ",.02)
 ;;D911B7Z 
 ;;9002226.02101,"1804,D911B7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,D911B8Z ",.01)
 ;;D911B8Z 
 ;;9002226.02101,"1804,D911B8Z ",.02)
 ;;D911B8Z 
 ;;9002226.02101,"1804,D911B8Z ",.03)
 ;;31
 ;;9002226.02101,"1804,D911B9Z ",.01)
 ;;D911B9Z 
 ;;9002226.02101,"1804,D911B9Z ",.02)
 ;;D911B9Z 
 ;;9002226.02101,"1804,D911B9Z ",.03)
 ;;31
 ;;9002226.02101,"1804,D911BBZ ",.01)
 ;;D911BBZ 
 ;;9002226.02101,"1804,D911BBZ ",.02)
 ;;D911BBZ 
 ;;9002226.02101,"1804,D911BBZ ",.03)
 ;;31
 ;;9002226.02101,"1804,D911BCZ ",.01)
 ;;D911BCZ 
 ;;9002226.02101,"1804,D911BCZ ",.02)
 ;;D911BCZ 
 ;;9002226.02101,"1804,D911BCZ ",.03)
 ;;31