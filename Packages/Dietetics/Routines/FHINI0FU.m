FHINI0FU	; ; 11-OCT-1995
	;;5.0;Dietetics;;Oct 11, 1995
	Q:'DIFQR(112)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,112,9700,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9701,0)
	;;=SOUPS,CHICKEN NUGGETS W/VEG & NOODLES,CHUNKY,CAMPBELL'S^BC-02974^10.8-oz.^305
	;;^UTILITY(U,$J,112,9701,1)
	;;=3.639^1.934^7.77^63.279^^^^16.066^.59^^^92.787^343.607^^^^^1125.246^3.279^.033
	;;^UTILITY(U,$J,112,9701,2)
	;;=.039^1.279
	;;^UTILITY(U,$J,112,9701,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9702,0)
	;;=SOUPS,CHICKEN RICE,CAMPBELL'S^BC-02975^7.3-oz.^206
	;;^UTILITY(U,$J,112,9702,1)
	;;=1.359^.971^2.573^24.757^^^^5.825^.243^^^24.757^386.408^^^^^257.767^0^.005
	;;^UTILITY(U,$J,112,9702,2)
	;;=.005^.388
	;;^UTILITY(U,$J,112,9702,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9703,0)
	;;=SOUPS,CHICKEN RICE,HOME COOKIN'^BC-02976^10.8-oz.^305
	;;^UTILITY(U,$J,112,9703,1)
	;;=4.426^1.803^3.607^48.197^^^^10.82^.361^^^78.361^351.475^^^^^604.59^0^.023
	;;^UTILITY(U,$J,112,9703,2)
	;;=.049^1.443
	;;^UTILITY(U,$J,112,9703,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9704,0)
	;;=SOUPS,CHICKEN RICE W/VEG,PROGRESSO^BC-02977^9.5-oz.^269
	;;^UTILITY(U,$J,112,9704,1)
	;;=2.974^1.115^7.435^52.045^^^^^^^^89.219^349.442
	;;^UTILITY(U,$J,112,9704,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9705,0)
	;;=SOUPS,CHICKEN VEG CHUNKY,CAMPBELL'S^BC-02978^9.5-oz.^269
	;;^UTILITY(U,$J,112,9705,1)
	;;=3.829^1.97^7.212^62.082^^^^12.268^.558^^^129.368^393.309^^^^^2262.082^2.23^.015
	;;^UTILITY(U,$J,112,9705,2)
	;;=.045^1.152^^^^^^^7.807
	;;^UTILITY(U,$J,112,9705,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9706,0)
	;;=SOUPS,CHICKEN VEG,CHUNKY,LOW NA,CAMPBELL'S^BC-02979^10.8-oz.^305
	;;^UTILITY(U,$J,112,9706,1)
	;;=4.951^3.377^6.59^76.721^^^^13.443^.59^^61.967^139.016^29.508^^^^^2590.82^3.607^.066
	;;^UTILITY(U,$J,112,9706,2)
	;;=.141^2.033^^^^^^^14.426^1.016^^.951
	;;^UTILITY(U,$J,112,9706,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9707,0)
	;;=SOUPS,CHICKEN VEG W/RICE,HOME COOKIN'^BC-02980^10.76-oz.^305
	;;^UTILITY(U,$J,112,9707,1)
	;;=4.262^.885^4.492^42.951^^^^15.082^.721^^^91.803^324.918^^^^^1230.164^2.951^.03
	;;^UTILITY(U,$J,112,9707,2)
	;;=.023^1.082
	;;^UTILITY(U,$J,112,9707,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9708,0)
	;;=SOUPS,CHICKEN W/NOODLES & MUSHROOMS,CHUNKY,CAMPBELL'S^BC-02981^10.76-oz.^305
	;;^UTILITY(U,$J,112,9708,1)
	;;=4.557^2.164^6.59^63.934^^^^11.148^.689^^^78.033^374.426^^^^^460.984^0^.039
	;;^UTILITY(U,$J,112,9708,2)
	;;=.079^1.541
	;;^UTILITY(U,$J,112,9708,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9709,0)
	;;=SOUPS,CHICKEN W/NOODLES,HOME COOKIN'^BC-02982^10.76-oz.^305
	;;^UTILITY(U,$J,112,9709,1)
	;;=4.525^1.115^3.574^42.295^^^^12.459^.656^^^60^369.18^^^^^1260.984^1.311^.026
	;;^UTILITY(U,$J,112,9709,2)
	;;=.049^1.377
	;;^UTILITY(U,$J,112,9709,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9710,0)
	;;=SOUPS,CHICKEN W/NOODLES,LOW NA,CAMPBELL'S^BC-02983^10.8-oz.^305
	;;^UTILITY(U,$J,112,9710,1)
	;;=4.557^1.607^5.541^54.754^^^^10.492^.656^^56.066^89.18^27.541^^^^^656.721^.984^.062
	;;^UTILITY(U,$J,112,9710,2)
	;;=.121^1.902^^^^^^^21.311^.492^^.361
	;;^UTILITY(U,$J,112,9710,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9711,0)
	;;=SOUPS,CHICKEN W/RICE,CHUNKY,CAMPBELL'S^BC-02984^9.5-oz.^269
	;;^UTILITY(U,$J,112,9711,1)
	;;=3.755^1.413^5.762^50.929^^^^14.87^.446^^^89.219^391.45^^^^^2201.115^1.859^.011
	;;^UTILITY(U,$J,112,9711,2)
	;;=.041^1.152^^^^^^^1.115
	;;^UTILITY(U,$J,112,9711,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9712,0)
	;;=SOUPS,CHILI BEEF W/BEANS,CAMPBELL'S^BC-02985^7.5-oz.^213
	;;^UTILITY(U,$J,112,9712,1)
	;;=2.582^2.3^7.84^62.441^^^^19.718^.798^^^142.254^452.582^^^^^338.967^0^.033
	;;^UTILITY(U,$J,112,9712,2)
	;;=.019^.329
	;;^UTILITY(U,$J,112,9712,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9713,0)
	;;=SOUPS,CHILI BEEF W/ BEANS,CHUNKY,CAMPBELL'S^BC-02986^9.7-oz.^276
	;;^UTILITY(U,$J,112,9713,1)
	;;=6.812^2.101^11.775^93.116^^^^22.101^1.486^^^198.551^355.072^^^^^516.667^2.174^.04
	;;^UTILITY(U,$J,112,9713,2)
	;;=.047^.833
	;;^UTILITY(U,$J,112,9713,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9714,0)
	;;=SOUPS,CLAM CHOWDER,MANHATTAN,STYLE,CAMPBELL'S^BC-02987^7.3-oz.^206
	;;^UTILITY(U,$J,112,9714,1)
	;;=.971^.874^5.34^33.495^^^^12.136^.485^^^106.311^390.777^^^^^868.932^1.942^.01