FHINI0MK	; ; 11-OCT-1995
	;;5.0;Dietetics;;Oct 11, 1995
	Q:'DIFQR(119.5)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,119.5)
	;;=^FH(119.5,
	;;^UTILITY(U,$J,119.5,0)
	;;=DIETETIC CONSULTS^119.5sI^8^8
	;;^UTILITY(U,$J,119.5,1,0)
	;;=FOOD PREFERENCES OR EATING PROBLEMS^FOOD PREF^Y
	;;^UTILITY(U,$J,119.5,2,0)
	;;=DIET INSTRUCTION: PATIENT OR FAMILY^TEACH^Y
	;;^UTILITY(U,$J,119.5,3,0)
	;;=RECOMMEND DIET, SUPPLEMENT OR TUBEFEEDING^RECOMMEND^N
	;;^UTILITY(U,$J,119.5,4,0)
	;;=NUTRITIONAL ASSESSMENT OR CONSULT^CONSULT^Y
	;;^UTILITY(U,$J,119.5,5,0)
	;;=NUTRIENT INTAKE STUDY (CAL COUNT)^CAL CNT^N
	;;^UTILITY(U,$J,119.5,6,0)
	;;=DISCHARGE PLANNING^DISCH PLAN^N
	;;^UTILITY(U,$J,119.5,7,0)
	;;=NUTRITIONAL SUPPORT TEAM^NST CON^Y
	;;^UTILITY(U,$J,119.5,8,0)
	;;=OTHER^OTHER