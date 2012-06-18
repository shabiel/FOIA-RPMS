IBCOPV2	;ALB/LDB - ROUTINE TO LIST PATIENT VISITS ;30 APR 90
	;;Version 2.0 ; INTEGRATED BILLING ;; 21-MAR-94
	;
	;MAP TO DGCROPV2
	;
ELIG	Q:$D(DGNO)  S DGCOD=$S(DGFIL=2:$P(^SC(+DGNOD,0),"^",7),DGFIL=409.5:+DGNOD,DGFIL=2.101:"ADMITTING/SCREENING",1:"") I $D(^DIC(40.7,+DGCOD,0)) S:+DGCOD DGCOD=$P(^DIC(40.7,+DGCOD,0),"^")
	I +DGNOD,DGFIL=409.5,$P(^DIC(40.7,+DGNOD,0),"^",2)>899&($P(^DIC(40.7,+DGNOD,0),"^",2)<999) S DGCOD=$P(DGNOD,"^",3) S:$D(^SC(+DGCOD,0)) DGCOD=$P(^(0),"^",7) S:$D(^DIC(40.7,+DGCOD,0)) DGCOD=$P(^(0),"^")
	I (DGTYP="")!(DGTYP=9) S DGTYP=$S($D(^DPT(DFN,.36)):^(.36),1:"") S:DGTYP DGTYP=$E(^DIC(8,+DGTYP,0),1,3)
	I DGTYP'="NSC" S DGMT="" Q
MT	;S (DGMT,DGMT1)=0 I $D(^DG(41.3,DFN)) F DGMT1=9999999-(I+1):0 S DGMT1=$O(^DG(41.3,DFN,2,DGMT1)) Q:'DGMT1  I $P($P(^(DGMT1,0),"^",7),".")'>I S DGMT=$P(^(0),"^",2) Q
	;S:'DGMT1 DGMT="A"
	S DGMT=$P($$LST^DGMTU(DFN,$P(I,".",1)),"^",4)
	Q
CHG	S (DGREV,DGBR)=0,DGACTDT=-DGDT,DGBSI=$O(^DGCR(399.1,"B","OUTPATIENT VISIT",0)) Q:'DGBSI  K IBCHG
	S IBIDS(.11)=$P(^DGCR(399,IBIFN,0),"^",11) D CAT^IBCU61
	F DGJJ=0:0 S DGACTDT=$O(^DGCR(399.5,"AIVDT",DGBSI,DGACTDT)) Q:'DGACTDT!($D(IBCHG))  F DGLL=0:0 S DGREV=$O(^DGCR(399.5,"AIVDT",DGBSI,DGACTDT,DGREV)) Q:'DGREV!($D(IBCHG))  D 1
	Q
1	F DGKK=0:0 S DGBR=$O(^DGCR(399.5,"AIVDT",DGBSI,DGACTDT,DGREV,DGBR)) Q:'DGBR!($D(IBCHG))  D CHKREV
	Q
CHKREV	S DGBRN=^DGCR(399.5,DGBR,0)
	Q:'$P(DGBRN,"^",5)!('$P(DGBRN,"^",4))!($P(DGBRN,"^",7))!($P(DGBRN,"^",6)'[IBIDS(.11))
	S IBCHG="$"_$P($P(DGBRN,"^",4),".")_"."_$E($P($P(DGBRN,"^",4),".",2)_"00",1,2),$P(^UTILITY($J,"OPV","AP",DGCNT),"^",2)=IBCHG
	Q
PROD	F P=2:1 S DGCPT2=$P(^UTILITY($J,"CPT1",I7),"^",P) Q:DGCPT2=""  D PROD3,PROD1:$D(^DGCR(399,IBIFN,"CP","B",DGCPT2_";ICPT("))
	Q
PROD1	F DGCPT0=0:0 S DGCPT0=$O(^DGCR(399,IBIFN,"CP","B",DGCPT2_";ICPT(",DGCPT0)) Q:'DGCPT0  D PROD2
	Q
PROD2	S $P(^UTILITY($J,"CPT1",I7),"^",P)=$S(^UTILITY($J,"CPT1",I7)'[(DGCPT2_"~"_DGCPT0):(DGCPT2_"~"_DGCPT0),1:$P(^UTILITY($J,"CPT",I7),"^",P))
	Q
PROD3	I $P(^DGCR(399,IBIFN,0),"^",9)=4 F I8=1:1:3 I $D(^DGCR(399,IBIFN,"C")),$P(^("C"),"^",I8)=$P(^UTILITY($J,"CPT1",I7),"^",P) S $P(^UTILITY($J,"CPT1",I7),"^",P)=$P(^UTILITY($J,"CPT1",I7),"^",P)_"~0"
	Q