FHINI01V	; ; 11-OCT-1995
	;;5.0;Dietetics;;Oct 11, 1995
	Q:'DIFQR(112)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,112,474,4)
	;;=0^.05^.18^4.12^1.2^1.1^7.14^0
	;;^UTILITY(U,$J,112,474,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,475,0)
	;;=CHICKEN ROLL, LIGHT MEAT^5-280^slices^28.4^100^N
	;;^UTILITY(U,$J,112,475,1)
	;;=19.53^7.38^2.45^159^68.6^^^43^.97^19^157^228^584^.72^.041^.013^^82^0^.065
	;;^UTILITY(U,$J,112,475,2)
	;;=.13^5.291^.39^.21^2^.15^1.36^.06^50^2.02^2.96^1.6^24^2.05^^^0
	;;^UTILITY(U,$J,112,475,3)
	;;=.222^.815^.999^1.44^1.62^.528^.256^.766^.642^.957^1.204^.588^1.107^1.74^2.885^1.131^.884^.682
	;;^UTILITY(U,$J,112,475,4)
	;;=0^.01^.06^1.51^.41^.39^2.43^.08
	;;^UTILITY(U,$J,112,475,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,476,0)
	;;=CHICKEN SPREAD, CND^5-281^tbsp.^13^100^N
	;;^UTILITY(U,$J,112,476,1)
	;;=15.41^11.72^5.39^192^66.22^^^125^2.33^12^89^106^386^1.15^.037^.012^^87^0^.009
	;;^UTILITY(U,$J,112,476,2)
	;;=.114^2.748^.433^.15^3^.13^2.23^.12^52^3.38^4.86^2.51^25^1.26^^^0
	;;^UTILITY(U,$J,112,476,3)
	;;=.179^.65^.807^1.152^1.301^.424^.199^.61^.516^.762^.939^.474^.854^1.377^2.302^.807^.658^.534
	;;^UTILITY(U,$J,112,476,4)
	;;=0^0^.1^2.41^.63^.72^4.06^0
	;;^UTILITY(U,$J,112,476,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,477,0)
	;;=POULTRY SALAD SANDWICH SPREAD^5-283^tbsp.^13^100^N
	;;^UTILITY(U,$J,112,477,1)
	;;=11.64^13.52^7.41^200^66.17^^^10^.61^10^33^183^377^1.04^.033^.009^^139^1.2^.024
	;;^UTILITY(U,$J,112,477,2)
	;;=.071^1.669^.27^.11^5^.38^5.97^.05^30^3.45^3.25^6.22^42^1.26^^^0
	;;^UTILITY(U,$J,112,477,3)
	;;=.13^.497^.584^.88^1.01^.32^.141^.455^.412^.589^.779^.347^.713^1.085^1.789^.722^.551^.466
	;;^UTILITY(U,$J,112,477,4)
	;;=0^0^0^2.96^.25^.44^2.71^0
	;;^UTILITY(U,$J,112,477,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,478,0)
	;;=TURKEY, CND, MEAT ONLY, W/BROTH^5-284^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,478,1)
	;;=23.68^6.86^0^163^66.07^^^12^1.86^20^162^224^467^2.37^.074^.017^^0^2^.014
	;;^UTILITY(U,$J,112,478,2)
	;;=.171^6.622^.686^.33^6^.28^1.46^.08^66^2^2.26^1.75^0^1.92^^^0
	;;^UTILITY(U,$J,112,478,3)
	;;=.261^1.029^1.183^1.833^2.143^.661^.266^.922^.895^1.228^1.663^.708^1.503^2.27^3.765^1.422^1.096^1.04
	;;^UTILITY(U,$J,112,478,4)
	;;=0^.01^.05^1.22^.37^.49^1.83^.14
	;;^UTILITY(U,$J,112,478,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,479,0)
	;;=TURKEY, DICED, LIGHT & DARK MEAT, SEASONED^5-285^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,479,1)
	;;=18.7^6^1^138^71.7^^^1^1.8^17^240^310^850^2.02^.063^.013^^0^0^.04
	;;^UTILITY(U,$J,112,479,2)
	;;=.11^4.8^.589^.28^5^.24^1.27^.07^55^1.75^1.98^1.53^0^2.6^^^0
	;;^UTILITY(U,$J,112,479,3)
	;;=.206^.813^.934^1.447^1.693^.522^.21^.729^.707^.97^1.313^.559^1.187^1.793^2.974^1.123^.866^.821
	;;^UTILITY(U,$J,112,479,4)
	;;=0^.01^.04^1.07^.32^.43^1.6^.12
	;;^UTILITY(U,$J,112,479,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,480,0)
	;;=TURKEY & GRAVY, FRZ^5-286^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,480,1)
	;;=5.88^2.63^4.61^67^85.07^^^14^.93^8^81^61^554^.7^.022^.005^^42^0^.024
	;;^UTILITY(U,$J,112,480,2)
	;;=.127^1.799^.213^.1^4^.24^.44^.03^18^.85^.97^.47^13^1.81^^^0
	;;^UTILITY(U,$J,112,480,3)
	;;=.067^.262^.306^.469^.554^.17^.061^.233^.232^.312^.41^.183^.364^.571^.96^.292^.245^.262
	;;^UTILITY(U,$J,112,480,4)
	;;=0^0^.03^.54^.11^.27^.86^0
	;;^UTILITY(U,$J,112,480,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,481,0)
	;;=TURKEY LUNCHEON MEAT, HAM, CURED TURKEY THIGH MEAT^5-287^slices^28.35^100^N
	;;^UTILITY(U,$J,112,481,1)
	;;=18.93^5.08^.37^128^71.38^^^10^2.76^16^191^325^996^2.94^.106^.015^^0^0^.052
	;;^UTILITY(U,$J,112,481,2)
	;;=.247^3.527^.849^.24^6^.24^1.23^.05^56^1.7^1.15^1.52^0^4.23^^^0
	;;^UTILITY(U,$J,112,481,3)
	;;=.215^.842^.984^1.508^1.784^.548^.197^.751^.748^1.006^1.321^.591^1.172^1.839^3.09^.939^.788^.842
	;;^UTILITY(U,$J,112,481,4)
	;;=0^.01^.03^.9^.17^.51^.95^.18
	;;^UTILITY(U,$J,112,481,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,482,0)
	;;=TURKEY LUNCHEON MEAT, LOAF, BREAST MEAT^5-288^slices^21.3^100^N
	;;^UTILITY(U,$J,112,482,1)
	;;=22.5^1.58^0^110^71.85^^^7^.4^20^229^278^1431^1.13^.053^.015^^0^0^.04
	;;^UTILITY(U,$J,112,482,2)
	;;=.107^8.322^.59^.36^4^2.02^.26^.02^41^.48^.45^.28^0^4.18^^^0
	;;^UTILITY(U,$J,112,482,3)
	;;=.256^1.001^1.17^1.793^2.12^.652^.234^.893^.889^1.195^1.57^.702^1.393^2.185^3.672^1.116^.936^1.001
	;;^UTILITY(U,$J,112,482,4)
	;;=0^0^.02^.3^.07^.15^.38^0
	;;^UTILITY(U,$J,112,482,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,483,0)
	;;=TURKEY PASTRAMI^5-289^slices^28.35^100^N
	;;^UTILITY(U,$J,112,483,1)
	;;=18.36^6.21^1.66^141^70.64^^^9^1.66^14^200^260^1045^2.16^.053^.013^^0^0^.055