FHINI05Q	; ; 11-OCT-1995
	;;5.0;Dietetics;;Oct 11, 1995
	Q:'DIFQR(112)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,112,1971,4)
	;;=.01^.03^.38^2.13^.43^1.31^3.47^.08
	;;^UTILITY(U,$J,112,1971,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1972,0)
	;;=VEAL, LOIN, TOT ED, BRAISED^17-105^oz.^28.3^64^N
	;;^UTILITY(U,$J,112,1972,1)
	;;=30.19^17.21^0^284^52.02^^^28^1.09^24^220^280^80^3.63^.091^.034^.4^0^0^.04
	;;^UTILITY(U,$J,112,1972,2)
	;;=.3^9.03^.79^.26^14^1.21^.91^.11^118^6.73^6.73^1.16^0^1.11^^^0
	;;^UTILITY(U,$J,112,1972,3)
	;;=.306^1.319^1.487^2.403^2.487^.704^.341^1.218^.962^1.668^1.775^1.096^1.795^2.604^4.775^1.551^1.26^1.131
	;;^UTILITY(U,$J,112,1972,4)
	;;=.01^.05^.66^3.61^.73^2.22^5.84^.13
	;;^UTILITY(U,$J,112,1972,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1973,0)
	;;=VEAL, PLATE, STEWED, TOT ED^2386-0^oz.^28.3^^N
	;;^UTILITY(U,$J,112,1973,1)
	;;=26.1^21.2^0^303^52.1^^^12^3.3^^138^208.8^45.7^^^^^0^0^.05
	;;^UTILITY(U,$J,112,1973,2)
	;;=.24^4.6^^^^^.42^^101^10.18
	;;^UTILITY(U,$J,112,1973,20)
	;;=USDA  Std. Reference, Release 8
	;;^UTILITY(U,$J,112,1974,0)
	;;=VEAL, RIB, ROASTED, TOT ED^17-112^oz.^28.3^67^N
	;;^UTILITY(U,$J,112,1974,1)
	;;=23.96^13.96^0^228^59.91^^^11^.97^22^197^295^92^4.09^.099^.03^.35^0^0^.05
	;;^UTILITY(U,$J,112,1974,2)
	;;=.27^6.98^1.28^.25^13^1.46^.75^.09^110^5.41^5.44^.95^0^1.05^^^0
	;;^UTILITY(U,$J,112,1974,3)
	;;=.243^1.047^1.18^1.907^1.974^.559^.27^.967^.764^1.324^1.409^.87^1.425^2.067^3.79^1.231^1^.898
	;;^UTILITY(U,$J,112,1974,4)
	;;=.01^.04^.53^2.91^.59^1.78^4.73^.11
	;;^UTILITY(U,$J,112,1974,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1975,0)
	;;=VEAL, TOT ED, COOKED^17-089^oz.^28.3^72^N
	;;^UTILITY(U,$J,112,1975,1)
	;;=30.1^11.39^0^231^57.08^^^22^1.15^26^239^325^87^4.76^.114^.036^.4^0^0^.06
	;;^UTILITY(U,$J,112,1975,2)
	;;=.32^7.97^1.26^.31^15^1.57^.63^.07^114^4.28^4.4^.8^0^1.2^^^0
	;;^UTILITY(U,$J,112,1975,3)
	;;=.305^1.315^1.482^2.395^2.48^.702^.34^1.215^.96^1.663^1.77^1.092^1.79^2.596^4.761^1.547^1.257^1.128
	;;^UTILITY(U,$J,112,1975,4)
	;;=.01^.03^.41^2.32^.47^1.41^3.84^.1
	;;^UTILITY(U,$J,112,1975,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1976,0)
	;;=VEGETABLE JUICE COCKTAIL, CND^11-578^fl oz.^30.3^100^N
	;;^UTILITY(U,$J,112,1976,1)
	;;=.63^.09^4.55^19^93.52^^^11^.42^11^17^193^365^.2^.2^.1^^1170^27.7^.043
	;;^UTILITY(U,$J,112,1976,2)
	;;=.028^.726^.266^.14^21.1^0^.036^.001^0^.013^.014^.038^117^1.21^^^.6
	;;^UTILITY(U,$J,112,1976,4)
	;;=^^0^.009^0^.003^.014^^^.5
	;;^UTILITY(U,$J,112,1976,20)
	;;=USDA Std. Reference, Release 10;HCF Nutrition Research Foundation, Inc, 1990
	;;^UTILITY(U,$J,112,1977,0)
	;;=VEGETABLE MAIN DISHES, CND, PEANUTS AND SOYA^2397-0^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,1977,1)
	;;=11.7^16.9^13.4^237^55.3^^^0^0^^0^0^0^^^^^0^0^0
	;;^UTILITY(U,$J,112,1977,2)
	;;=0^0^^^^^6^^0^4^^^^2.7
	;;^UTILITY(U,$J,112,1977,4)
	;;=^^^^^^7
	;;^UTILITY(U,$J,112,1977,20)
	;;=USDA  Std. Reference, Release 8
	;;^UTILITY(U,$J,112,1978,0)
	;;=VEGETABLE MAIN DISHES, CND, WHEAT PROTEIN^2398-0^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,1978,1)
	;;=16.3^.8^8.8^109^72.9^^^0^0^^0^0^0^^^^^0^0^0
	;;^UTILITY(U,$J,112,1978,2)
	;;=0^0^^^^^0^^0^0^^^^1.2
	;;^UTILITY(U,$J,112,1978,4)
	;;=^^^^^^0
	;;^UTILITY(U,$J,112,1978,20)
	;;=USDA  Std. Reference, Release 8
	;;^UTILITY(U,$J,112,1979,0)
	;;=VEGETABLE MAIN DISHES, CND, WHEAT PROTEIN, NUTS OR PEANUTS^2399-0^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,1979,1)
	;;=20.3^7.1^17.7^212^52.4^^^0^0^^0^0^0^^^^^0^0^0
	;;^UTILITY(U,$J,112,1979,2)
	;;=0^0^^^^^2^^0^2^^^^2.5
	;;^UTILITY(U,$J,112,1979,4)
	;;=^^^^^^3
	;;^UTILITY(U,$J,112,1979,20)
	;;=USDA  Std. Reference, Release 8
	;;^UTILITY(U,$J,112,1980,0)
	;;=VEGETABLE MAIN DISHES, CND, WHEAT PROTEIN, VEGETABLE OIL^2400-0^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,1980,1)
	;;=19.1^10.4^5.2^189^63.5^^^0^0^^0^0^0^^^^^0^0^0
	;;^UTILITY(U,$J,112,1980,2)
	;;=0^0^^^^^5^^0^3^^^^1.8
	;;^UTILITY(U,$J,112,1980,4)
	;;=^^^^^^2
	;;^UTILITY(U,$J,112,1980,20)
	;;=USDA  Std. Reference, Release 8
	;;^UTILITY(U,$J,112,1981,0)
	;;=VEGETABLE MAIN DISHES, CND, WHEAT/SOY PROTEIN^2401-0^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,1981,1)
	;;=16.1^1.2^7.6^104^73.4^^^0^0^^0^0^0^^^^^0^0^0
	;;^UTILITY(U,$J,112,1981,2)
	;;=0^0^^^^^0^^0^0^^^^1.7
	;;^UTILITY(U,$J,112,1981,4)
	;;=^^^^^^0
	;;^UTILITY(U,$J,112,1981,20)
	;;=USDA  Std. Reference, Release 8
	;;^UTILITY(U,$J,112,1982,0)
	;;=VEGETABLE MAIN DISHES, CND, WHEAT/SOY PROTEIN, VEG OIL^2402-0^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,1982,1)
	;;=16.1^5.6^9.5^150^66.6^^^0^0^^0^0^0^^^^^0^0^0
	;;^UTILITY(U,$J,112,1982,2)
	;;=0^0^^^^^3^^0^1^^^^2.2
	;;^UTILITY(U,$J,112,1982,4)
	;;=^^^^^^1
	;;^UTILITY(U,$J,112,1982,20)
	;;=USDA  Std. Reference, Release 8