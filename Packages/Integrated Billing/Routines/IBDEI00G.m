IBDEI00G	; ; 18-MAR-1994
	;;Version 2.0 ; INTEGRATED BILLING ;; 21-MAR-94
	Q:'DIFQR(358.2)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,358.2)
	;;=^IBE(358.2,
	;;^UTILITY(U,$J,358.2,0)
	;;=IMP/EXP SELECTION LIST^358.2I^25^22
	;;^UTILITY(U,$J,358.2,1,0)
	;;=BUFFALO'S CPT CODES^10^^^^^1^1^^^1^0
	;;^UTILITY(U,$J,358.2,1,2,0)
	;;=^357.22I^3^3
	;;^UTILITY(U,$J,358.2,1,2,1,0)
	;;=1^^^2^^2
	;;^UTILITY(U,$J,358.2,1,2,2,0)
	;;=2^^5^1^1^^0
	;;^UTILITY(U,$J,358.2,1,2,3,0)
	;;=3^^33^1^2^^1
	;;^UTILITY(U,$J,358.2,2,0)
	;;=DIAGNOSIS CODES^17^^^^^3^^UC^^21^1
	;;^UTILITY(U,$J,358.2,2,2,0)
	;;=^357.22I^3^3
	;;^UTILITY(U,$J,358.2,2,2,1,0)
	;;=1^CODE^7^1^1^^0
	;;^UTILITY(U,$J,358.2,2,2,2,0)
	;;=2^DIAGNOSIS^27^1^2^^1
	;;^UTILITY(U,$J,358.2,2,2,3,0)
	;;=3^x^^2^^1
	;;^UTILITY(U,$J,358.2,3,0)
	;;=CPT CODES^18^^^^^3^^CU^^1^1
	;;^UTILITY(U,$J,358.2,3,2,0)
	;;=^357.22I^3^3
	;;^UTILITY(U,$J,358.2,3,2,1,0)
	;;=1^CODE^5^1^1^^0
	;;^UTILITY(U,$J,358.2,3,2,2,0)
	;;=2^PROCEDURE^32^1^2^^1
	;;^UTILITY(U,$J,358.2,3,2,3,0)
	;;=3^x^^2^^1
	;;^UTILITY(U,$J,358.2,4,0)
	;;=TYPE OF VISIT^21^^^^^3^^CU^^1^1
	;;^UTILITY(U,$J,358.2,4,2,0)
	;;=^357.22I^3^3
	;;^UTILITY(U,$J,358.2,4,2,1,0)
	;;=1^VISIT (mark one only)^32^1^2^^1
	;;^UTILITY(U,$J,358.2,4,2,2,0)
	;;=2^CODE^5^1^1^^0
	;;^UTILITY(U,$J,358.2,4,2,3,0)
	;;=3^x^^2^^1
	;;^UTILITY(U,$J,358.2,7,0)
	;;=DIAGNOSIS CODES^33^^^^^3^0^UC^^21^1
	;;^UTILITY(U,$J,358.2,7,2,0)
	;;=^357.22I^3^3
	;;^UTILITY(U,$J,358.2,7,2,1,0)
	;;=1^CODE^7^1^1^^0
	;;^UTILITY(U,$J,358.2,7,2,2,0)
	;;=2^DIAGNOSIS^31^1^2^^1
	;;^UTILITY(U,$J,358.2,7,2,3,0)
	;;=3^x^^2^^1
	;;^UTILITY(U,$J,358.2,8,0)
	;;=CPT CODES^37^^^^^3^0^CU^^1^1
	;;^UTILITY(U,$J,358.2,8,2,0)
	;;=^357.22I^3^3
	;;^UTILITY(U,$J,358.2,8,2,1,0)
	;;=1^CODE^5^1^1^^0
	;;^UTILITY(U,$J,358.2,8,2,2,0)
	;;=2^PROCEDURE^33^1^2^^1
	;;^UTILITY(U,$J,358.2,8,2,3,0)
	;;=3^x^^2^^1
	;;^UTILITY(U,$J,358.2,9,0)
	;;=TYPE OF VISIT^40^^^^^3^^CU^^1^1
	;;^UTILITY(U,$J,358.2,9,2,0)
	;;=^357.22I^3^3
	;;^UTILITY(U,$J,358.2,9,2,1,0)
	;;=1^VISIT (mark one only)^32^1^2^^1
	;;^UTILITY(U,$J,358.2,9,2,2,0)
	;;=2^CODE^5^1^1^^0
	;;^UTILITY(U,$J,358.2,9,2,3,0)
	;;=3^x^^2^^1
	;;^UTILITY(U,$J,358.2,10,0)
	;;=CPT CODES^44^^^^^3^0^CU^^1^1
	;;^UTILITY(U,$J,358.2,10,2,0)
	;;=^357.22I^3^3
	;;^UTILITY(U,$J,358.2,10,2,1,0)
	;;=1^CODE^5^1^1^^0
	;;^UTILITY(U,$J,358.2,10,2,2,0)
	;;=2^PROCEDURE^33^1^2^^1
	;;^UTILITY(U,$J,358.2,10,2,3,0)
	;;=3^x^^2^^1
	;;^UTILITY(U,$J,358.2,11,0)
	;;=ACTIVE PROBLEMS^46^^^^^3^0^CU^^27^1^1
	;;^UTILITY(U,$J,358.2,11,1,0)
	;;=^357.21I^1^1
	;;^UTILITY(U,$J,358.2,11,1,1,0)
	;;=1^3^0^5
	;;^UTILITY(U,$J,358.2,11,2,0)
	;;=^357.22I^5^5
	;;^UTILITY(U,$J,358.2,11,2,1,0)
	;;=1^ P   S^^2^^3
	;;^UTILITY(U,$J,358.2,11,2,2,0)
	;;=2^RESOLVED^11^1^1^^0
	;;^UTILITY(U,$J,358.2,11,2,3,0)
	;;=3^PROBLEM NARRATIVE/NOTES^48^1^1^^0
	;;^UTILITY(U,$J,358.2,11,2,4,0)
	;;=4^CODE^7^1^1^^0
	;;^UTILITY(U,$J,358.2,11,2,5,0)
	;;=5^S/C^3^1^1^^0
	;;^UTILITY(U,$J,358.2,12,0)
	;;=OTHER NEW PROBLEMS^47^^^^^3^1^CU^^27^1
	;;^UTILITY(U,$J,358.2,12,2,0)
	;;=^357.22I^5^5
	;;^UTILITY(U,$J,358.2,12,2,1,0)
	;;=1^ P   S^^2^^3
	;;^UTILITY(U,$J,358.2,12,2,2,0)
	;;=2^ A   I^^2^^4
	;;^UTILITY(U,$J,358.2,12,2,3,0)
	;;=3^PROBLEM NARRATIVE/NOTES^96^1^1^^0
	;;^UTILITY(U,$J,358.2,12,2,4,0)
	;;=4^ONS/RES^13^1^1^^0
	;;^UTILITY(U,$J,358.2,12,2,5,0)
	;;=5^S/C^^2^^5
	;;^UTILITY(U,$J,358.2,13,0)
	;;=CLINC COMMON PROBLEM LIST^48^^^^^3^0^CU^^29^1
	;;^UTILITY(U,$J,358.2,13,2,0)
	;;=^357.22I^5^5
	;;^UTILITY(U,$J,358.2,13,2,1,0)
	;;=1^ P   S^^2^^3
	;;^UTILITY(U,$J,358.2,13,2,2,0)
	;;=2^ A   I^^2^^4
	;;^UTILITY(U,$J,358.2,13,2,3,0)
	;;=3^PROBLEM NARRATIVE/NOTES^57^1^2^^1
	;;^UTILITY(U,$J,358.2,13,2,4,0)
	;;=4^CODE^7^1^3^^0
	;;^UTILITY(U,$J,358.2,13,2,5,0)
	;;=5^S/C^^2^^5