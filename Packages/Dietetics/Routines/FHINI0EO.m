FHINI0EO	; ; 11-OCT-1995
	;;5.0;Dietetics;;Oct 11, 1995
	Q:'DIFQR(112)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,112,9116,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9117,0)
	;;=FRANKFURTER,CHICKEN,WEAVER^BC-02390^frank^45
	;;^UTILITY(U,$J,112,9117,1)
	;;=13.333^22.222^2.222^255.556^^^^^^^^^1555.556
	;;^UTILITY(U,$J,112,9117,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9118,0)
	;;=FRANKFURTER,NACHO STYLE W/CHEESE,OSCAR MAYER^BC-02391^frank^45
	;;^UTILITY(U,$J,112,9118,1)
	;;=12^27.778^2.444^306.667^54.222^^^51.111^.756^11.111^171.111^166.667^1222.222^1.467^.156
	;;^UTILITY(U,$J,112,9118,2)
	;;=^^^^^^^^66.667
	;;^UTILITY(U,$J,112,9118,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9119,0)
	;;=FRANKFURTER,PORK & BEEF,BUN-LENGTH,OSCAR MAYER^BC-02392^frank^57
	;;^UTILITY(U,$J,112,9119,1)
	;;=11.053^29.649^2.807^322.807^53.684^^^12.281^1.228^15.789^105.263^185.965^1007.018^1.842
	;;^UTILITY(U,$J,112,9119,2)
	;;=^^^^^^^^57.895^10.877^14.737^2.982
	;;^UTILITY(U,$J,112,9119,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9120,0)
	;;=FRANKFURTER,PORK & BEEF,LITTLE,OSCAR MAYER^BC-02393^frank^9
	;;^UTILITY(U,$J,112,9120,1)
	;;=12.222^28.889^2.222^311.111^54.444^^^11.111^1.111^11.111^88.889^166.667^1022.222^1.889
	;;^UTILITY(U,$J,112,9120,2)
	;;=^^^^^^^^55.556^11.111^14.444^2.222
	;;^UTILITY(U,$J,112,9120,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9121,0)
	;;=FRANKFURTER,PORK & BEEF,OSCAR MAYER^BC-02394^frank^45
	;;^UTILITY(U,$J,112,9121,1)
	;;=11.111^29.556^2.444^320^53.778^^^11.111^1.067^11.111^93.333^164.444^1035.556^1.756
	;;^UTILITY(U,$J,112,9121,2)
	;;=^^^^^^^^62.222^11.111^14.667^3.111
	;;^UTILITY(U,$J,112,9121,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9122,0)
	;;=FRANKFURTER,PORK & BEEF W/BACON & CHEDDAR,OSCAR MAYER^BC-02395^frank^45
	;;^UTILITY(U,$J,112,9122,1)
	;;=13.778^27.333^2.222^308.889^52.222^^^40^.956^13.333^195.556^191.111^1115.556^1.8^.222
	;;^UTILITY(U,$J,112,9122,2)
	;;=^^^^^^^^66.667^11.111^13.778^2.889
	;;^UTILITY(U,$J,112,9122,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9123,0)
	;;=FRANKFURTER,PORK & BEEF W/CHEESE,OSCAR MAYER^BC-02396^frank^45
	;;^UTILITY(U,$J,112,9123,1)
	;;=12^29.111^2.222^320^53.333^^^60^.889^13.333^191.111^164.444^1073.333^1.556
	;;^UTILITY(U,$J,112,9123,2)
	;;=^^^^^^^^66.667^11.778^14.222^2.667
	;;^UTILITY(U,$J,112,9123,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9124,0)
	;;=FRANKFURTER,TURKEY,BUN-LENGTH,LOUIS RICH^BC-02397^frank^57
	;;^UTILITY(U,$J,112,9124,1)
	;;=12.632^18.421^2.807^228.07^62.632^^^133.333^1.772^15.789^133.333^194.737^885.965^2.105
	;;^UTILITY(U,$J,112,9124,2)
	;;=^^^^^^^^92.982^5.789^7.719^5.088
	;;^UTILITY(U,$J,112,9124,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9125,0)
	;;=FRANKFURTER,TURKEY,LOUIS RICH^BC-02398^frank^45
	;;^UTILITY(U,$J,112,9125,1)
	;;=12.667^18.444^2.667^226.667^62.889^^^133.333^1.778^15.556^191.111^193.333^1122.222^2.111
	;;^UTILITY(U,$J,112,9125,2)
	;;=^^^^^^^^93.333^6^7.778^5.111
	;;^UTILITY(U,$J,112,9125,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9126,0)
	;;=FRANKFURTER,TURKEY,OSCAR MAYER^BC-02399^frank^45
	;;^UTILITY(U,$J,112,9126,1)
	;;=12.444^18.889^2.444^228.889^62.889^^^135.556^1.667^15.556^184.444^195.556^1075.556^2.178^.067^.038^^^^.067
	;;^UTILITY(U,$J,112,9126,2)
	;;=.178^3.778^^.2^^1.289^^^88.889
	;;^UTILITY(U,$J,112,9126,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9127,0)
	;;=FRANKFURTER,TURKEY W/CHEESE,LOUIS RICH^BC-02400^frank^45
	;;^UTILITY(U,$J,112,9127,1)
	;;=13.556^19.778^2.889^244.444^60.222^^^122.222^1.578^15.556^215.556^184.444^1111.111^1.933
	;;^UTILITY(U,$J,112,9127,2)
	;;=^^^^^^^^95.556^6.444^7.111^4.667
	;;^UTILITY(U,$J,112,9127,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9128,0)
	;;=FRANKFURTER,TURKEY W/CHEESE,OSCAR MAYER^BC-02401^frank^43
	;;^UTILITY(U,$J,112,9128,1)
	;;=13.488^19.302^3.488^239.535^60.233^^^127.907^1.558^16.279^213.953^176.744^1132.558^1.977^.07
	;;^UTILITY(U,$J,112,9128,2)
	;;=^^^^^^^^86.047
	;;^UTILITY(U,$J,112,9128,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9129,0)
	;;=HAM,CURED,BAKED,OSCAR MAYER^BC-02402^slice^21
	;;^UTILITY(U,$J,112,9129,1)
	;;=18.571^1.905^1.905^100^73.81^^^4.762^1.095^19.048^290.476^319.048^1133.333^1.952
	;;^UTILITY(U,$J,112,9129,2)
	;;=^^^^^^^^52.381^.476^.952^0
	;;^UTILITY(U,$J,112,9129,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.