IBONI033	; ; 21-MAR-1994
	;;Version 2.0 ; INTEGRATED BILLING ;; 21-MAR-94
	F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,"PRO",1007,99)
	;;=55760,74727
	;;^UTILITY(U,$J,"PRO",1008,0)
	;;=IBTRCD COMMENT INFO^Add Comments^^A^^^^^^^^INTEGRATED BILLING
	;;^UTILITY(U,$J,"PRO",1008,15)
	;;=S VALMBG=23
	;;^UTILITY(U,$J,"PRO",1008,20)
	;;=D EDIT^IBTRCD1("[IBT COMMENT INFO]")
	;;^UTILITY(U,$J,"PRO",1008,99)
	;;=55760,74726
	;;^UTILITY(U,$J,"PRO",1009,0)
	;;=IBTRCD EDIT PT. INS.^View Pat. Ins.^^A^^^^^^^^INTEGRATED BILLING
	;;^UTILITY(U,$J,"PRO",1009,20)
	;;=D NX^IBTRCD1("IBCNS VIEW PAT INS")
	;;^UTILITY(U,$J,"PRO",1009,99)
	;;=55760,74727
	;;^UTILITY(U,$J,"PRO",1010,0)
	;;=IBTRPR  MENU^Pending Work Menu^^M^^^^^^^^INTEGRATED BILLING
	;;^UTILITY(U,$J,"PRO",1010,4)
	;;=26^4
	;;^UTILITY(U,$J,"PRO",1010,10,0)
	;;=^101.01PA^13^11
	;;^UTILITY(U,$J,"PRO",1010,10,1,0)
	;;=1011^CD^33
	;;^UTILITY(U,$J,"PRO",1010,10,1,"^")
	;;=IBTRPR CHANGE DATE
	;;^UTILITY(U,$J,"PRO",1010,10,2,0)
	;;=1012^QE^11
	;;^UTILITY(U,$J,"PRO",1010,10,2,"^")
	;;=IBTRPR QUICK EDIT
	;;^UTILITY(U,$J,"PRO",1010,10,3,0)
	;;=1013^VE^12
	;;^UTILITY(U,$J,"PRO",1010,10,3,"^")
	;;=IBTRPR VIEW EDIT
	;;^UTILITY(U,$J,"PRO",1010,10,4,0)
	;;=1016^IR^21
	;;^UTILITY(U,$J,"PRO",1010,10,4,"^")
	;;=IBTRPR INSURANCE ACTIONS
	;;^UTILITY(U,$J,"PRO",1010,10,5,0)
	;;=1015^HR^22
	;;^UTILITY(U,$J,"PRO",1010,10,5,"^")
	;;=IBTRPR UR REVIEW
	;;^UTILITY(U,$J,"PRO",1010,10,6,0)
	;;=1014^CS^31
	;;^UTILITY(U,$J,"PRO",1010,10,6,"^")
	;;=IBTRPR STATUS CHANGE
	;;^UTILITY(U,$J,"PRO",1010,10,7,0)
	;;=1017^CT^13
	;;^UTILITY(U,$J,"PRO",1010,10,7,"^")
	;;=IBTRPR CLAIMS TRACKING
	;;^UTILITY(U,$J,"PRO",1010,10,8,0)
	;;=1018^RL^34
	;;^UTILITY(U,$J,"PRO",1010,10,8,"^")
	;;=IBTRPR REMOVE FROM LIST
	;;^UTILITY(U,$J,"PRO",1010,10,9,0)
	;;=1038^SC^25
	;;^UTILITY(U,$J,"PRO",1010,10,9,"^")
	;;=IBTRPR SHOW SC CONDITIONS
	;;^UTILITY(U,$J,"PRO",1010,10,10,0)
	;;=1039^PW^14
	;;^UTILITY(U,$J,"PRO",1010,10,10,"^")
	;;=IBTRPR PRINT WORKSHEET
	;;^UTILITY(U,$J,"PRO",1010,10,12,0)
	;;=1056^DU^35
	;;^UTILITY(U,$J,"PRO",1010,10,12,"^")
	;;=IBTRPR DIAGNOSIS UPDATE
	;;^UTILITY(U,$J,"PRO",1010,10,13,0)
	;;=1057^PU^36
	;;^UTILITY(U,$J,"PRO",1010,10,13,"^")
	;;=IBTRPR PROCEDURE UPDATE
	;;^UTILITY(U,$J,"PRO",1010,10,14,0)
	;;=1058^PV^37
	;;^UTILITY(U,$J,"PRO",1010,10,14,"^")
	;;=IBTRPR PROVIDER UPDATE
	;;^UTILITY(U,$J,"PRO",1010,15)
	;;=I $G(IBFASTXT)=1 S VALMBCK="Q"
	;;^UTILITY(U,$J,"PRO",1010,26)
	;;=D SHOW^VALM
	;;^UTILITY(U,$J,"PRO",1010,28)
	;;=Select Action: 
	;;^UTILITY(U,$J,"PRO",1010,99)
	;;=55893,33829
	;;^UTILITY(U,$J,"PRO",1011,0)
	;;=IBTRPR CHANGE DATE^Change Date Range^^A^^^^^^^^INTEGRATED BILLING
	;;^UTILITY(U,$J,"PRO",1011,20)
	;;=D CD^IBTRPR1
	;;^UTILITY(U,$J,"PRO",1011,99)
	;;=55760,74741
	;;^UTILITY(U,$J,"PRO",1012,0)
	;;=IBTRPR QUICK EDIT^Quick Edit^^A^^^^^^^^INTEGRATED BILLING
	;;^UTILITY(U,$J,"PRO",1012,20)
	;;=D QE^IBTRPR1
	;;^UTILITY(U,$J,"PRO",1012,99)
	;;=55760,74741
	;;^UTILITY(U,$J,"PRO",1013,0)
	;;=IBTRPR VIEW EDIT^View/Edit Entry^^A^^^^^^^^INTEGRATED BILLING
	;;^UTILITY(U,$J,"PRO",1013,20)
	;;=D VE^IBTRPR1
	;;^UTILITY(U,$J,"PRO",1013,99)
	;;=55760,74741
	;;^UTILITY(U,$J,"PRO",1014,0)
	;;=IBTRPR STATUS CHANGE^Change Status^^A^^^^^^^^INTEGRATED BILLING
	;;^UTILITY(U,$J,"PRO",1014,20)
	;;=D SC^IBTRPR1
	;;^UTILITY(U,$J,"PRO",1014,99)
	;;=55760,74741
	;;^UTILITY(U,$J,"PRO",1015,0)
	;;=IBTRPR UR REVIEW^Hospital Reviews^^A^^^^^^^^INTEGRATED BILLING
	;;^UTILITY(U,$J,"PRO",1015,20)
	;;=D NX^IBTRPR1("IBT REVIEW EDITOR")
	;;^UTILITY(U,$J,"PRO",1015,99)
	;;=55760,74741
	;;^UTILITY(U,$J,"PRO",1016,0)
	;;=IBTRPR INSURANCE ACTIONS^Ins. Reviews^^A^^^^^^^^INTEGRATED BILLING
	;;^UTILITY(U,$J,"PRO",1016,20)
	;;=D NX^IBTRPR1("IBT COMMUNICATIONS EDITOR")