FHINI04M	; ; 11-OCT-1995
	;;5.0;Dietetics;;Oct 11, 1995
	Q:'DIFQR(112)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,112,1548,4)
	;;=.08^.09^.31^.82^.07^.38^.79^0
	;;^UTILITY(U,$J,112,1548,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1549,0)
	;;=RENNIN DESSERT, CHOCOLATE, MADE FR MIX^19-221^cups^255^100^N
	;;^UTILITY(U,$J,112,1549,1)
	;;=3.2^3.3^13.3^92^79.3^^^124^.3^20^97^179^51^.5^.083^.066^^114^.8^.036
	;;^UTILITY(U,$J,112,1549,2)
	;;=.152^.106^.287^.041^5^.32^.08^.05^12^2.06^.97^.13^24^.8
	;;^UTILITY(U,$J,112,1549,3)
	;;=.043^.136^.18^.29^.236^.073^.029^.147^.144^.203^.117^.081^.111^.237^.626^.079^.288^.164
	;;^UTILITY(U,$J,112,1549,4)
	;;=.08^.09^.31^.91^.07^.49^.9^0
	;;^UTILITY(U,$J,112,1549,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1550,0)
	;;=RENNIN DESSERT, PREP FR MIX, OTHER THAN STR AND RASPBRY^1864-1^cups^250^100^N
	;;^UTILITY(U,$J,112,1550,1)
	;;=3.2^3.6^12.8^95^79.7^^^117^0^^92^128^46^^^^^150^1^.03
	;;^UTILITY(U,$J,112,1550,2)
	;;=.16^.1^^^^^.01^^13^1.98^^^^.7
	;;^UTILITY(U,$J,112,1550,4)
	;;=^^^^^^1.18
	;;^UTILITY(U,$J,112,1550,20)
	;;=USDA  Std. Reference, Release 8
	;;^UTILITY(U,$J,112,1551,0)
	;;=RENNIN DESSERT, PREP FR MIX, STRAWBERRY AND RASPBERRY^1864-2^cups^250^100^N
	;;^UTILITY(U,$J,112,1551,1)
	;;=3.2^3.6^12.8^95^79.7^^^121^0^^84^128^46^^^^^150^1^.03
	;;^UTILITY(U,$J,112,1551,2)
	;;=.16^.1^^^^^.01^^13^1.98^^^^.7
	;;^UTILITY(U,$J,112,1551,4)
	;;=^^^^^^1.18
	;;^UTILITY(U,$J,112,1551,20)
	;;=USDA  Std. Reference, Release 8
	;;^UTILITY(U,$J,112,1552,0)
	;;=RICE, BROWN, RAW^20-036^cups^185^100^N
	;;^UTILITY(U,$J,112,1552,1)
	;;=7.94^2.92^77.24^370^10.37^^^23^1.47^143^333^223^7^2.02^.277^3.743^.68^0^0^.401
	;;^UTILITY(U,$J,112,1552,2)
	;;=.093^5.091^1.493^.509^20^0^1^.044^0^.584^1.056^1.044^0^1.53^^^3.5
	;;^UTILITY(U,$J,112,1552,3)
	;;=.101^.291^.336^.657^.303^.179^.096^.41^.298^.466^.602^.202^.463^.743^1.618^.391^.372^.411
	;;^UTILITY(U,$J,112,1552,4)
	;;=^.003^.011^.498^.01^.052^1.046^^^23.4
	;;^UTILITY(U,$J,112,1552,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1553,0)
	;;=RICE, BROWN, CKD, W/SALT ADDED^20-037^cups^195^372^N
	;;^UTILITY(U,$J,112,1553,1)
	;;=2.58^.9^22.96^111^73.09^^^10^.42^43^83^43^5^.63^.1^.905^^0^0^.096
	;;^UTILITY(U,$J,112,1553,2)
	;;=.025^1.528^.285^.145^4^0^.309^.014^0^.18^.327^.323^0^.46^^^1.8
	;;^UTILITY(U,$J,112,1553,3)
	;;=.033^.095^.109^.214^.099^.058^.031^.133^.097^.151^.196^.066^.151^.242^.526^.127^.121^.134
	;;^UTILITY(U,$J,112,1553,4)
	;;=^.001^.003^.154^.003^.016^.323^^^9.8
	;;^UTILITY(U,$J,112,1553,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1554,0)
	;;=RICE, BROWN, MEDIUM-GRAIN, COOKED^20-041^cups^195^370^N
	;;^UTILITY(U,$J,112,1554,1)
	;;=2.32^.83^23.51^112^72.96^^^10^.53^44^77^79^1^.62^.081^1.097^^0^0^.102
	;;^UTILITY(U,$J,112,1554,2)
	;;=.012^1.33^.392^.149^4^0^.283^.013^0^.165^.3^.296^0^.39
	;;^UTILITY(U,$J,112,1554,3)
	;;=.03^.085^.098^.191^.088^.052^.028^.119^.087^.136^.175^.059^.135^.217^.472^.114^.109^.12
	;;^UTILITY(U,$J,112,1554,4)
	;;=^.001^.003^.141^.003^.015^.297
	;;^UTILITY(U,$J,112,1554,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1555,0)
	;;=RICE, WHITE, ENR, RAW^20-044^cups^185^100^N
	;;^UTILITY(U,$J,112,1555,1)
	;;=7.13^.66^79.95^365^11.62^^^28^4.31^25^115^115^5^1.09^.22^1.088^.11^0^0^.576
	;;^UTILITY(U,$J,112,1555,2)
	;;=.049^4.192^1.014^.164^8^0^.146^.031^0^.18^.206^.177^0^.64^^^1.3
	;;^UTILITY(U,$J,112,1555,3)
	;;=.083^.255^.308^.589^.258^.168^.146^.381^.238^.435^.594^.168^.413^.67^1.389^.325^.335^.375
	;;^UTILITY(U,$J,112,1555,4)
	;;=^^.004^.161^.002^.012^.203^^1^15.1
	;;^UTILITY(U,$J,112,1555,20)
	;;=USDA Std. Reference, Release 10;HCF Nutrition Research Foundation, Inc, 1990
	;;^UTILITY(U,$J,112,1556,0)
	;;=RICE, WHITE, ENR, W/SALT^20-345^cups^205^100^N
	;;^UTILITY(U,$J,112,1556,1)
	;;=2.69^.28^28.17^130^68.44^^^10^1.2^12^43^35^382^.49^.069^.472^^0^0^.163
	;;^UTILITY(U,$J,112,1556,2)
	;;=.013^1.476^.39^.093^3^0^.062^.013^0^.077^.088^.076^0^.41^^^.4
	;;^UTILITY(U,$J,112,1556,3)
	;;=.031^.096^.116^.222^.097^.063^.055^.144^.09^.164^.224^.063^.156^.253^.524^.122^.127^.141
	;;^UTILITY(U,$J,112,1556,4)
	;;=^^.002^.069^.001^.005^.087
	;;^UTILITY(U,$J,112,1556,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1557,0)
	;;=RICE, WHITE, MEDIUM-GRAIN, COOKED, ENRICHED^20-051^cups^205^319^N
	;;^UTILITY(U,$J,112,1557,1)
	;;=2.38^.21^28.59^130^68.61^^^3^1.49^13^37^29^0^.42^.038^.377^^0^0^.167
	;;^UTILITY(U,$J,112,1557,2)
	;;=.016^1.835^.411^.05^2^0^.046^.01^0^.057^.065^.056^0^.21^^^.3
	;;^UTILITY(U,$J,112,1557,3)
	;;=.028^.085^.103^.197^.086^.056^.049^.127^.08^.145^.198^.056^.138^.224^.464^.108^.112^.125