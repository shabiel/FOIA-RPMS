FHINI01B	; ; 11-OCT-1995
	;;5.0;Dietetics;;Oct 11, 1995
	Q:'DIFQR(112)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,112,285,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,286,0)
	;;=PAPRIKA^2-028^tsp.^2.1^100^N
	;;^UTILITY(U,$J,112,286,1)
	;;=14.758^12.953^55.735^288.98^9.536^^^176.905^23.591^184.577^344.846^2344.444^33.875^4.062^.607^.843^^60604^71.12^.645
	;;^UTILITY(U,$J,112,286,2)
	;;=1.743^15.32^1.78^^^0^7.42^.9^0^2.1^1.23^8.32^6060.398^7.018^^^20.9
	;;^UTILITY(U,$J,112,286,4)
	;;=^.23^.52^.96^.12^.33^1.11
	;;^UTILITY(U,$J,112,286,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,287,0)
	;;=PARSLEY, DRIED^2-029^tsp.^0.3^100^N
	;;^UTILITY(U,$J,112,287,1)
	;;=22.422^4.431^51.658^276.216^9.02^^^1467.634^97.859^248.937^351.484^3804.692^451.857^4.754^.64^10.5^^23340^122.043^.172
	;;^UTILITY(U,$J,112,287,2)
	;;=1.23^7.929^^1.002^^0^^^0^^^^2334^12.469^^^10.3
	;;^UTILITY(U,$J,112,287,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,288,0)
	;;=PEPPER, BLACK^2-030^tsp.^2.1^100^N
	;;^UTILITY(U,$J,112,288,1)
	;;=10.948^3.26^64.809^255^10.508^^^436.637^28.862^193.554^173.413^1259^44^1.422^1.127^5.625^^190^^.109
	;;^UTILITY(U,$J,112,288,2)
	;;=.24^1.142^^^^0^.97^.16^0^.98^1.01^1.13^19^4.334^^^26.5
	;;^UTILITY(U,$J,112,288,4)
	;;=^.03^.05^.9^^^1.01
	;;^UTILITY(U,$J,112,288,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,289,0)
	;;=PEPPER, RED OR CAYENNE^2-031^tsp.^1.8^100^N
	;;^UTILITY(U,$J,112,289,1)
	;;=12.006^17.27^56.63^318^8.047^^^148.37^7.8^151.75^293.314^2014^30^2.475^.373^2^^41610^76.444^.328
	;;^UTILITY(U,$J,112,289,2)
	;;=.919^8.701^^^^0^7.71^.66^0^3.26^2.75^8.37^4161^6.04^^^25
	;;^UTILITY(U,$J,112,289,4)
	;;=.03^.03^.09^2.36^.24^.49^2.51
	;;^UTILITY(U,$J,112,289,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,290,0)
	;;=PEPPER, WHITE^2-032^tsp.^2.4^100^N
	;;^UTILITY(U,$J,112,290,1)
	;;=10.4^2.12^68.611^296^11.42^^^265.333^14.312^90.408^175.891^72.544^5^1.127^.91^4.3^^0^^.022
	;;^UTILITY(U,$J,112,290,2)
	;;=.126^.212^^^^0^^^0^^^^0^1.585
	;;^UTILITY(U,$J,112,290,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,291,0)
	;;=POPPY SEED^2-033^tsp.^2.8^100^N
	;;^UTILITY(U,$J,112,291,1)
	;;=18.041^44.704^23.69^533.193^6.782^^^1448.444^9.394^331.425^848.511^699.58^21^10.233^1.633^6.833^^0^^.849
	;;^UTILITY(U,$J,112,291,2)
	;;=.173^.976^^.444^^0^30.49^.33^0^4.87^6.34^30.82^0^6.783^^^29.2
	;;^UTILITY(U,$J,112,291,3)
	;;=.255^.905^.905^1.484^1.099^.47^.453^.882^.681^1.287^1.995^.528^1.178^2.202^4.541^1.123^1.062^.987
	;;^UTILITY(U,$J,112,291,4)
	;;=^^^4.11^.13^.67^6.17
	;;^UTILITY(U,$J,112,291,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,292,0)
	;;=POULTRY SEASONING^2-034^tsp.^1.5^100^N
	;;^UTILITY(U,$J,112,292,1)
	;;=9.59^7.53^65.59^307^9.31^^^996^35.3^224^171^684^27^3.14^.843^6.857^^2632^11.96^.264
	;;^UTILITY(U,$J,112,292,2)
	;;=.191^2.97^^^^0^^^0^^^^263.2^5.92^^^11.3
	;;^UTILITY(U,$J,112,292,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,293,0)
	;;=PUMPKIN PIE SPICE^2-035^tsp.^1.7^100^N
	;;^UTILITY(U,$J,112,293,1)
	;;=5.76^12.6^69.28^342^8.46^^^682^19.71^136^118^663^52^2.37^.484^15.844^^261^23.384^.131
	;;^UTILITY(U,$J,112,293,2)
	;;=.137^2.243^^^^0^^^0^^^^26.1^3.9^^^14.8
	;;^UTILITY(U,$J,112,293,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,294,0)
	;;=ROSEMARY, DRIED^2-036^tsp.^1.2^100^N
	;;^UTILITY(U,$J,112,294,1)
	;;=4.883^15.22^64.063^331.495^9.306^^^1280^29.25^220^70^955.2^49.517^3.233^.55^1.867^^3128^61.22^.514
	;;^UTILITY(U,$J,112,294,2)
	;;=^1^^^^0^^^0^^^^312.8^6.528
	;;^UTILITY(U,$J,112,294,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,295,0)
	;;=SAFFRON^2-037^tsp.^0.7^100^N
	;;^UTILITY(U,$J,112,295,1)
	;;=11.432^5.852^65.37^310.246^11.898^^^110.9^11.1^^252.1^1724^148.2^^.328^28.408
	;;^UTILITY(U,$J,112,295,2)
	;;=^^^^^0^^^0^^^^^5.448^^^3.9
	;;^UTILITY(U,$J,112,295,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,296,0)
	;;=SAGE, GROUND^2-038^tsp.^0.7^100^N
	;;^UTILITY(U,$J,112,296,1)
	;;=10.625^12.745^60.727^314.781^7.955^^^1652^28.117^428^91.25^1070^11^4.7^.757^3.133^^5900^32.385^.754
	;;^UTILITY(U,$J,112,296,2)
	;;=.336^5.72^^^^0^.53^1.23^0^7.03^1.87^1.76^590^7.948^^^18
	;;^UTILITY(U,$J,112,296,4)
	;;=.76^.3^.72^3.15^.12^1.25^1.75
	;;^UTILITY(U,$J,112,296,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,297,0)
	;;=SAVORY, GROUND^2-039^tsp.^1.4^100^N
	;;^UTILITY(U,$J,112,297,1)
	;;=6.73^5.907^68.73^272.052^9.003^^^2131.6^37.875^376.667^140^1051^24.143^4.3^.847^6.1^^5130^^.366
	;;^UTILITY(U,$J,112,297,2)
	;;=^4.08^^^^0^^^0^^^^513^9.63
	;;^UTILITY(U,$J,112,297,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,298,0)
	;;=SESAME SEEDS, DRY, DECORTICATED^2-040^tsp.^2.7^100^N