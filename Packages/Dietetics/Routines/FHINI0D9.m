FHINI0D9	; ; 11-OCT-1995
	;;5.0;Dietetics;;Oct 11, 1995
	Q:'DIFQR(112)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,112,8425,2)
	;;=^^^^^^^^^^^^^^^^0
	;;^UTILITY(U,$J,112,8425,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8426,0)
	;;=FISH,WHITE PERCH,FRIED FILLET^BC-01699^2.3-oz.^65
	;;^UTILITY(U,$J,112,8426,1)
	;;=19.231^8.154^0^150.769^^^^13.846^1.077^^173.846^^^^^^^0^0^.062
	;;^UTILITY(U,$J,112,8426,2)
	;;=.077^4.154^^^^^^^^^^^^^^^0
	;;^UTILITY(U,$J,112,8426,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8427,0)
	;;=FISH,YELLOWTAIL W/LEMON BUTTER SCE,HEALTHY CHOICE^BC-01700^8.25-oz.^234
	;;^UTILITY(U,$J,112,8427,1)
	;;=6.838^1.709^14.103^98.291^^^^28.632^^^95.299^162.393^166.667^^^^^^0^.085
	;;^UTILITY(U,$J,112,8427,2)
	;;=.06^.855^^^^^^^19.231^.855^^.427
	;;^UTILITY(U,$J,112,8427,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8428,0)
	;;=JUICE,APPLE CRANBERRY,CND,MOTT'S^BC-01701^6-floz.^187
	;;^UTILITY(U,$J,112,8428,1)
	;;=0^0^12.834^44.385^88.984^^^12.834^.428^^^101.07^9.091
	;;^UTILITY(U,$J,112,8428,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8429,0)
	;;=JUICE,APPLE GRAPE,CND,MOTT'S^BC-01702^6-floz.^187
	;;^UTILITY(U,$J,112,8429,1)
	;;=0^0^12.299^45.989^88.021^^^14.973^.588^^^78.075^9.091
	;;^UTILITY(U,$J,112,8429,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8430,0)
	;;=JUICE,APPLE RASPBERRY,CND,MOTT'S^BC-01703^6-floz.^185
	;;^UTILITY(U,$J,112,8430,1)
	;;=0^0^11.892^44.865^89.027^^^15.135^.541^^^85.946^25.946
	;;^UTILITY(U,$J,112,8430,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8431,0)
	;;=JUICE,BEEFAMATO,CND,MOTT'S^BC-01704^6-floz.^185
	;;^UTILITY(U,$J,112,8431,1)
	;;=.541^0^10.27^43.243^91.027^^^9.189^.162^^^99.459^129.73^^^^^^1.081
	;;^UTILITY(U,$J,112,8431,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8432,0)
	;;=JUICE,CLAMATO,CND,MOTT'S^BC-01705^6-floz.^187
	;;^UTILITY(U,$J,112,8432,1)
	;;=.535^0^12.299^51.337^88.984^^^12.299^.16^^^57.754^435.829^^^^^^4.278
	;;^UTILITY(U,$J,112,8432,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8433,0)
	;;=JUICE,GRAPEFRUIT,CITRUS HILL PLUS CALCIUM^BC-01706^6-floz.^185
	;;^UTILITY(U,$J,112,8433,1)
	;;=0^0^10.27^37.838^^^^108.108^^^8.108^75.676^5.405^^^^^^32.432^.016
	;;^UTILITY(U,$J,112,8433,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8434,0)
	;;=JUICE,ORANGE,CITRUS HILL PLUS CALCIUM^BC-01707^6-floz.^185
	;;^UTILITY(U,$J,112,8434,1)
	;;=0^0^10.811^48.649^^^^108.108^^^13.514^189.189^5.405^^^^^^38.919^.065
	;;^UTILITY(U,$J,112,8434,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8435,0)
	;;=JUICE,ORANGE,PINEAPPLE,BANANA,LAND O'LAKES^BC-01708^6-floz.^186
	;;^UTILITY(U,$J,112,8435,1)
	;;=.538^0^12.903^53.763^^^^^^^^193.548^0
	;;^UTILITY(U,$J,112,8435,2)
	;;=^^^^^^^^0^0^0^0
	;;^UTILITY(U,$J,112,8435,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8436,0)
	;;=JUICE,PINEAPPLE,CND,DOLE^BC-01709^6-floz.^188
	;;^UTILITY(U,$J,112,8436,1)
	;;=.426^.106^13.511^54.787^^^^14.894^.319^^9.043^148.936^1.064^^^^^47.872^^.048
	;;^UTILITY(U,$J,112,8436,2)
	;;=.021^.213
	;;^UTILITY(U,$J,112,8436,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8437,0)
	;;=JUICE,TOMATO,FROM CONCENTRATION,CAMPBELL'S^BC-01710^6-floz.^182
	;;^UTILITY(U,$J,112,8437,1)
	;;=.879^0^4.396^21.429^^^^10.989^1.209^^^206.593^323.626^^^^^630.769^13.736^.033
	;;^UTILITY(U,$J,112,8437,2)
	;;=.027^.604
	;;^UTILITY(U,$J,112,8437,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8438,0)
	;;=JUICE,VEG COCKTAIL,CAMPBELL'S^BC-01711^6-floz.^182
	;;^UTILITY(U,$J,112,8438,1)
	;;=.714^.11^4.78^23.077^^^^12.088^.549^^^208.791^257.143^^^^^647.802^50.549^.011
	;;^UTILITY(U,$J,112,8438,2)
	;;=.016^.769^^^^^^^0^0^^0^^^^^0
	;;^UTILITY(U,$J,112,8438,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8439,0)
	;;=JUICE,V-8 VEG COCKTAIL,CAMPBELL'S^BC-01712^6-floz.^182
	;;^UTILITY(U,$J,112,8439,1)
	;;=.714^.055^4.231^20.33^^^^13.187^.604^^^210.989^303.846^^^^^1268.132^20.33^.022
	;;^UTILITY(U,$J,112,8439,2)
	;;=.022^.659^^^^^^^0^^^^^^^^.714
	;;^UTILITY(U,$J,112,8439,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,8440,0)
	;;=JUICE,V-8 VEG COCKTAIL,CAMPBELL'S,NO SALT ADDED^BC-01713^6-floz.^182
	;;^UTILITY(U,$J,112,8440,1)
	;;=.879^0^4.56^21.978^^^^17.033^.714^^^234.615^23.077^^^^^1624.176^21.429^.022
	;;^UTILITY(U,$J,112,8440,2)
	;;=.027^.659^^^^^^^0^^^^^^^^.714