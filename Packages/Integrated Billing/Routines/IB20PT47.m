IB20PT47	;ALB/CPM - List Template Exporter ; 21-MAR-1994
	;;Version 2.0 ; INTEGRATED BILLING ;; 21-MAR-94
	W !,"'IBT CLAIMS TRACKING EDITOR' List Template..."
	S DA=$O(^SD(409.61,"B","IBT CLAIMS TRACKING EDITOR",0)),DIK="^SD(409.61," D ^DIK:DA
	K DO,DD S DIC(0)="L",DIC="^SD(409.61,",X="IBT CLAIMS TRACKING EDITOR" D FILE^DICN S VALM=+Y
	I VALM>0 D
	.S ^SD(409.61,VALM,0)="IBT CLAIMS TRACKING EDITOR^1^^138^5^16^1^1^Visit^IBTRE  MENU^Claims Tracking Editor^2^999^1"
	.S ^SD(409.61,VALM,1)="^VALM HIDDEN ACTIONS"
	.S ^SD(409.61,VALM,"ARRAY")=" ^TMP(""IBTRE"",$J)"
	.S ^SD(409.61,VALM,"COL",0)="^409.621^14^14"
	.S ^SD(409.61,VALM,"COL",1,0)="NUMBER^1^4"
	.S ^SD(409.61,VALM,"COL",2,0)="TYPE^5^8^Type"
	.S ^SD(409.61,VALM,"COL",3,0)="DATE^23^16^Date^^1"
	.S ^SD(409.61,VALM,"COL",4,0)="INSUR^40^5^Ins."
	.S ^SD(409.61,VALM,"COL",5,0)="UR^46^5^UR"
	.S ^SD(409.61,VALM,"COL",6,0)="BILLABLE^66^5^Bill"
	.S ^SD(409.61,VALM,"COL",7,0)="SPECIAL^125^11^Spec. Bill"
	.S ^SD(409.61,VALM,"COL",8,0)="DIAGNOSIS^81^8^Diag."
	.S ^SD(409.61,VALM,"COL",9,0)="PRECERT^90^12^Auth. No."
	.S ^SD(409.61,VALM,"COL",10,0)="DAYS^104^10^Days Apprv"
	.S ^SD(409.61,VALM,"COL",11,0)="INITIAL^116^7^Bill No."
	.S ^SD(409.61,VALM,"COL",12,0)="URGENT^15^7^Urgent"
	.S ^SD(409.61,VALM,"COL",13,0)="ROI^52^12^ROI"
	.S ^SD(409.61,VALM,"COL",14,0)="WARD^72^8^Ward"
	.S ^SD(409.61,VALM,"COL","AIDENT",1,3)=""
	.S ^SD(409.61,VALM,"FNL")="D EXIT^IBTRE"
	.S ^SD(409.61,VALM,"HDR")="D HDR^IBTRE"
	.S ^SD(409.61,VALM,"HLP")="D HELP^IBTRE"
	.S ^SD(409.61,VALM,"INIT")="D INIT^IBTRE"
	.S DA=VALM,DIK="^SD(409.61," D IX1^DIK K DA,DIK
	.W "Filed."
	;
	W !,"'IBT COMMUNICATIONS EDITOR' List Template..."
	S DA=$O(^SD(409.61,"B","IBT COMMUNICATIONS EDITOR",0)),DIK="^SD(409.61," D ^DIK:DA
	K DO,DD S DIC(0)="L",DIC="^SD(409.61,",X="IBT COMMUNICATIONS EDITOR" D FILE^DICN S VALM=+Y
	I VALM>0 D
	.S ^SD(409.61,VALM,0)="IBT COMMUNICATIONS EDITOR^1^^132^5^17^1^1^Review^IBTRC  MENU^Insurance Reviews/Contacts^1^^1"
	.S ^SD(409.61,VALM,1)="^VALM HIDDEN ACTIONS"
	.S ^SD(409.61,VALM,"ARRAY")=" ^TMP(""IBTRC"",$J)"
	.S ^SD(409.61,VALM,"COL",0)="^409.621^11^11"
	.S ^SD(409.61,VALM,"COL",1,0)="NUMBER^1^4"
	.S ^SD(409.61,VALM,"COL",2,0)="DATE^5^17^Date"
	.S ^SD(409.61,VALM,"COL",3,0)="INS CO^16^18^Ins. Co.^^1"
	.S ^SD(409.61,VALM,"COL",4,0)="GROUP^140^11^Group No."
	.S ^SD(409.61,VALM,"COL",5,0)="ACTION^55^9^Action"
	.S ^SD(409.61,VALM,"COL",6,0)="PRE-CERT^65^10^Auth. No."
	.S ^SD(409.61,VALM,"COL",7,0)="DAYS^76^5^Days"
	.S ^SD(409.61,VALM,"COL",8,0)="CONTACT^81^20^Person Contacted"
	.S ^SD(409.61,VALM,"COL",9,0)="PHONE^103^14^Phone"
	.S ^SD(409.61,VALM,"COL",10,0)="REF NO^119^12^Call Ref. No"
	.S ^SD(409.61,VALM,"COL",11,0)="TYPE^36^17^Type Contact"
	.S ^SD(409.61,VALM,"COL","AIDENT",1,3)=""
	.S ^SD(409.61,VALM,"FNL")="D EXIT^IBTRC"
	.S ^SD(409.61,VALM,"HDR")="D HDR^IBTRC"
	.S ^SD(409.61,VALM,"HLP")="D HELP^IBTRC"
	.S ^SD(409.61,VALM,"INIT")="D INIT^IBTRC"
	.S DA=VALM,DIK="^SD(409.61," D IX1^DIK K DA,DIK
	.W "Filed."
	;
	W !,"'IBT EDIT PENDING REVIEW' List Template..."
	S DA=$O(^SD(409.61,"B","IBT EDIT PENDING REVIEW",0)),DIK="^SD(409.61," D ^DIK:DA
	K DO,DD S DIC(0)="L",DIC="^SD(409.61,",X="IBT EDIT PENDING REVIEW" D FILE^DICN S VALM=+Y
	I VALM>0 D
	.S ^SD(409.61,VALM,0)="IBT EDIT PENDING REVIEW^1^^150^4^17^1^1^Review^IBTRPR  MENU^Pending Reviews^3^90^1"
	.S ^SD(409.61,VALM,1)="^VALM HIDDEN ACTIONS"
	.S ^SD(409.61,VALM,"ARRAY")=" ^TMP(""IBTRPR"",$J)"
	.S ^SD(409.61,VALM,"COL",0)="^409.621^13^12"
	.S ^SD(409.61,VALM,"COL",1,0)="NUMBER^1^4"
	.S ^SD(409.61,VALM,"COL",3,0)="TYPE^5^6^Type"
	.S ^SD(409.61,VALM,"COL",4,0)="DATE^73^8^Due Date"
	.S ^SD(409.61,VALM,"COL",5,0)="PATIENT^14^15^Patient"
	.S ^SD(409.61,VALM,"COL",6,0)="ID^31^5^Pt ID^^1"
	.S ^SD(409.61,VALM,"COL",7,0)="REVIEW^51^8^Review^^0"
	.S ^SD(409.61,VALM,"COL",8,0)="STATUS^81^10^Status"
	.S ^SD(409.61,VALM,"COL",9,0)="NEXT^60^11^Next Action"
	.S ^SD(409.61,VALM,"COL",10,0)="EVENT^90^10^Visit Type"
	.S ^SD(409.61,VALM,"COL",11,0)="EV DATE^106^17^Visit Date"
	.S ^SD(409.61,VALM,"COL",12,0)="WARD^39^10^Ward"
	.S ^SD(409.61,VALM,"COL",13,0)="ASSIGNED TO^125^25^Assigned To"
	.S ^SD(409.61,VALM,"COL","AIDENT",0,7)=""
	.S ^SD(409.61,VALM,"COL","AIDENT",1,6)=""
	.S ^SD(409.61,VALM,"FNL")="D EXIT^IBTRPR"
	.S ^SD(409.61,VALM,"HDR")="D HDR^IBTRPR"
	.S ^SD(409.61,VALM,"HLP")="D HELP^IBTRPR"
	.S ^SD(409.61,VALM,"INIT")="D INIT^IBTRPR"
	.S DA=VALM,DIK="^SD(409.61," D IX1^DIK K DA,DIK
	.W "Filed."
	;
	G ^IB20PT48