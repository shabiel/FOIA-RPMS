DGPT60PR ;ALB/MTC - Edit procedure codes.  In ICD0 Procedures, current, gender ok ; 17 NOV 92
 ;;5.3;Registration;;Aug 13, 1993
 ;
EN ;
LOOP ;
 S DGPTPRFL=0
 F DGPTL3=1:1:5 S DGPTERC=0 D CHKPRC I DGPTERC D ERR
EXIT ;
 K DGPTOP,DGPTOP1,DGPTL3,DGPTL4,DGPTPP,DGPTPRFL,X,X1,X2
 Q
CHKPRC ;
 S DGPTERC=0,DGPTOP=(@("DGPTPC"_DGPTL3)),DGPTOP=$P(DGPTOP," ",1) Q:DGPTOP=""
 S DGPTERC=604+DGPTL3
 F DGPTL4=1:1:$L(DGPTOP) S DGPTOP1=$E(DGPTOP,1,DGPTL4)_"."_$E(DGPTOP,DGPTL4+1,$L(DGPTOP)) I $D(^ICD0("AB",DGPTOP1)) S DGPTERC=0 D GEN Q
 Q
GEN ;
 S DGPTPP=$O(^ICD0("AB",DGPTOP1,0)) I DGPTPP="" S DGPTERC=604+DGPTL3 Q
 I '$D(^ICD0(DGPTPP)) S DGPTERC=604+DGPTL3 Q
 I '$D(^ICD0(DGPTPP,0)) S DGPTERC=604+DGPTL3 Q
 I $P(^ICD0(DGPTPP,0),U,10)]""&(DGPTGEN'=$P(^(0),U,10)) S DGPTERC=651 Q
CURR ;
 I ($P(^ICD0(DGPTPP,0),U,9)=1)&($E(DGPTPDTS,1,7)>$P(^(0),U,11)) S DGPTERC=604+DGPTL3 Q
SAVE ;
 S @("DGPTPC"_DGPTL3)=DGPTOP1
ARRAY ;
 S DGPTPRAR(DGPTPDTS)=$S($D(DGPTPRAR(DGPTPDTS)):DGPTPRAR(DGPTPDTS)_U_DGPTPP,1:DGPTPP_U)
 Q
ERR ;
 D WRTERR^DGPTAE(DGPTERC,NODE,SEQ)
 Q
 ;