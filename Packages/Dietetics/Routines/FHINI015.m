FHINI015	; ; 11-OCT-1995
	;;5.0;Dietetics;;Oct 11, 1995
	Q:'DIFQR(112)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,112,226,2)
	;;=.204^3.88^.28^.35^1^.92^1.81^.3^51^5.73^8.2^2.11^0^4.04^^^0
	;;^UTILITY(U,$J,112,226,3)
	;;=.208^.761^.772^1.374^1.531^.452^.257^.69^.531^.799^1.202^.695^.997^1.659^2.593^.827^.695^.674
	;;^UTILITY(U,$J,112,226,4)
	;;=.03^.02^.23^3.64^.67^1.81^7.53^0
	;;^UTILITY(U,$J,112,226,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,227,0)
	;;=HAM, MINCED^10-145^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,227,1)
	;;=16.28^20.68^1.85^263^57.35^^^10^.79^16^157^311^1245^1.9^.078^.031^^0^29.5^.712
	;;^UTILITY(U,$J,112,227,2)
	;;=.19^4.162^.18^.26^1^.95^2.16^.31^70^7.18^9.57^2.47^0^3.85^^^0
	;;^UTILITY(U,$J,112,227,3)
	;;=.156^.734^.7^1.258^1.364^.456^.19^.641^.536^.747^1.023^.604^.948^1.5^2.338^.883^.713^.677
	;;^UTILITY(U,$J,112,227,4)
	;;=.04^.03^.28^4.42^.73^2.41^8.85^0
	;;^UTILITY(U,$J,112,227,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,228,0)
	;;=HAM PATTIES, GRILLED^10-147^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,228,1)
	;;=13.3^30.85^1.7^342^51.35^^^9^1.61^10^101^244^1063^1.9^.1^.022^^0^0^.35
	;;^UTILITY(U,$J,112,228,2)
	;;=.185^3.245^.262^.16^3^.7^2.86^.32^72^11.09^14.67^3.33^0^2.8^^^0
	;;^UTILITY(U,$J,112,228,3)
	;;=.155^.592^.581^1.051^1.13^.351^.179^.564^.436^.579^.858^.485^.781^1.253^2.134^.685^.568^.541
	;;^UTILITY(U,$J,112,228,4)
	;;=.03^.06^.41^6.92^.97^3.62^13.54^.14
	;;^UTILITY(U,$J,112,228,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,229,0)
	;;=HAM SALAD SPREAD^10-148^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,229,1)
	;;=8.68^15.53^10.65^216^62.6^^^8^.59^10^120^150^912^1.1^.073^.013^^0^6^.435
	;;^UTILITY(U,$J,112,229,2)
	;;=.12^2.095^.31^.15^1^.76^2.37^.33^37^5.06^7.2^2.7^0^2.55^^^0
	;;^UTILITY(U,$J,112,229,3)
	;;=.089^.409^.403^.725^.772^.228^.051^.354^.278^.448^.593^.35^.536^.856^1.349^.486^.401^.376
	;;^UTILITY(U,$J,112,229,4)
	;;=.02^.01^.16^3.2^.47^1.68^6.73^0
	;;^UTILITY(U,$J,112,229,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,230,0)
	;;=HAM, WHOLE, TOT ED, ROASTED^10-151^oz.^28.3^76^N
	;;^UTILITY(U,$J,112,230,1)
	;;=21.57^16.77^0^243^58.4^^^7^.87^19^214^286^1187^2.32^.083^.014^^0^^.601
	;;^UTILITY(U,$J,112,230,2)
	;;=.221^4.461^.457^.38^3^.64^1.55^.17^62^5.98^7.88^1.81^0^3.33^^^0
	;;^UTILITY(U,$J,112,230,3)
	;;=.245^.941^.918^1.697^1.825^.551^.315^.922^.682^.941^1.459^.735^1.183^1.897^3.267^1.041^.856^.82
	;;^UTILITY(U,$J,112,230,4)
	;;=.02^.03^.22^3.75^.53^1.96^7.35^.08
	;;^UTILITY(U,$J,112,230,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,231,0)
	;;=HAM, WHOLE, TRIMMED, ROASTED^10-153^oz.^28.3^61^N
	;;^UTILITY(U,$J,112,231,1)
	;;=25.05^5.5^0^157^65.78^^^7^.94^22^227^316^1327^2.57^.087^.016^^0^^.68
	;;^UTILITY(U,$J,112,231,2)
	;;=.254^5.02^.498^.47^4^.7^.5^.06^55^1.84^2.53^.63^0^3.74^^^0
	;;^UTILITY(U,$J,112,231,3)
	;;=.3^1.114^1.098^1.988^2.124^.661^.377^1.082^.822^1.086^1.627^.898^1.479^2.372^4.084^1.302^1.07^1.026
	;;^UTILITY(U,$J,112,231,4)
	;;=.02^.02^.07^1.17^.21^.56^2.32^.07^^25.4
	;;^UTILITY(U,$J,112,231,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,232,0)
	;;=HAM AND CHEESE LOAF^10-154^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,232,1)
	;;=16.62^20.21^1.43^259^57.91^^^58^.91^16^253^294^1343^2^.075^.027^^75^25.1^.601
	;;^UTILITY(U,$J,112,232,2)
	;;=.187^3.452^.524^.26^3^.81^1.91^.27^57^7.51^9.26^2.19^23^3.83^^^0
	;;^UTILITY(U,$J,112,232,3)
	;;=.207^.719^.754^1.353^1.508^.439^.235^.691^.56^.802^1.119^.677^.911^1.552^2.626^.748^.787^.672
	;;^UTILITY(U,$J,112,232,4)
	;;=.08^.08^.42^4.57^.72^2.36^8.54^0
	;;^UTILITY(U,$J,112,232,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,233,0)
	;;=HAM AND CHEESE SPREAD^10-155^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,233,1)
	;;=16.18^18.53^2.27^245^59.13^^^217^.76^18^495^162^1196^2.25^.09^.036^^304^7^.318
	;;^UTILITY(U,$J,112,233,2)
	;;=.22^2.153^.59^.13^3^.73^1.23^.15^61^8.62^7.08^1.38^91^3.9^^^0
	;;^UTILITY(U,$J,112,233,3)
	;;=.372^.683^.775^1.504^1.476^.475^.255^.771^.666^1.014^.892^.597^.802^1.378^2.887^.587^1.356^.806
	;;^UTILITY(U,$J,112,233,4)
	;;=.28^.36^1.11^4.49^.77^2.11^6.31^0
	;;^UTILITY(U,$J,112,233,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,234,0)
	;;=HEADCHEESE PORK^10-156^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,234,1)
	;;=16^15.78^.35^212^64.75^^^16^1.17^9^59^31^1257^1.3^.122^.019^^0^21.8^.037
	;;^UTILITY(U,$J,112,234,2)
	;;=.182^1.127^.22^.19^2^1.05^1.45^.19^81^4.94^8.1^1.65^0^3.13^^^0
	;;^UTILITY(U,$J,112,234,3)
	;;=.084^.445^.543^1.008^.967^.266^.223^.606^.466^.658^1.146^.297^1.024^1.423^1.689^1.922^1.295^.627
	;;^UTILITY(U,$J,112,234,4)
	;;=.03^.02^.27^3.08^.83^1.52^7.27^0