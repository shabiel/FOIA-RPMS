DGJOPRT2 ;ALB/MAF - REPORTS CONTINUED ; AUG 30 1991@1000
 ;;5.3;Registration;**163**;Aug 13, 1993
 ;
 D HEAD F DGJ=0:0 S DGJTDV=$O(^UTILITY("VAS",$J,DGJTDV)) Q:DGJTDV']""!(DGU)  D:DGJTF&(DGJTL="PAT"!(DGJTL="DAT")) RET Q:DGU  D:DGJTF&(DGJTL="PAT"!(DGJTL="DAT")) HEAD D:DGJTL="PAT"!(DGJTL="DAT") HDR S DGJTF=1 D @(DGJTL) Q:DGU 
 G:DGU QUIT I $D(^UTILITY("VAS",$J)) D RET G:DGU QUIT D ^DGJOPRT3
QUIT G QUIT^DGJOPRT3
SET S DGJTDV1=DGJTDV Q
DIV S X=$O(^DG(40.8,"B",DGJTDV1,0)) I $D(^DG(40.8,+X,"DT")) S DGJTDEL=^("DT") W $P(DGJTDEL,"^",9),! Q
 Q
DATE S DGJTX=$$FMTE^XLFDT(DGJTDT,"5DF"),DGJTX=$TR(DGJTX," ","0") W DGJTX K DGJTX Q
PAT F DGJY=0:0 S DGJTPT=$O(^UTILITY("VAS",$J,DGJTDV,DGJTPT)) Q:DGJTPT']""!(DGU)  D PAT1
 Q
PAT1 F DFN=0:0 S DFN=$O(^UTILITY("VAS",$J,DGJTDV,DGJTPT,DFN)) Q:'DFN!(DGU)  F IFN=0:0 S IFN=$O(^UTILITY("VAS",$J,DGJTDV,DGJTPT,DFN,IFN)) Q:'IFN!(DGU)  S DGJTDL=^(IFN) D SET I $D(^VAS(393,IFN,0)) D PRT2
 Q
PHY D:'DGJTFF HDR
 F DGJY=0:0 S DGJTPHY=$O(^UTILITY("VAS",$J,DGJTDV,DGJTPHY)) Q:DGJTPHY']""!(DGU)  D:DGJTFF RET Q:DGU  D:DGJTFF HEAD,HDR D HDR1 S DGJTFF=1 F DGJJ=0:0 S DGJTPT=$O(^UTILITY("VAS",$J,DGJTDV,DGJTPHY,DGJTPT)) Q:DGJTPT']""!(DGU)  D PHY1 Q:DGU
 Q
PHY1 F DFN=0:0 S DFN=$O(^UTILITY("VAS",$J,DGJTDV,DGJTPHY,DGJTPT,DFN)) Q:'DFN!(DGU)  F IFN=0:0 S IFN=$O(^UTILITY("VAS",$J,DGJTDV,DGJTPHY,DGJTPT,DFN,IFN)) Q:'IFN!(DGU)  S DGJTDL=^(IFN) D SET I $D(^VAS(393,IFN,0)) D PRT2 Q:DGU  D PH
 Q
DAT F DGJTDT=0:0 S DGJTDT=$O(^UTILITY("VAS",$J,DGJTDV,DGJTDT)) Q:'DGJTDT  F DGJY=0:0 S DGJTPT=$O(^UTILITY("VAS",$J,DGJTDV,DGJTDT,DGJTPT)) Q:DGJTPT']""!(DGU)  D DAT1
 Q
DAT1 F DFN=0:0 S DFN=$O(^UTILITY("VAS",$J,DGJTDV,DGJTDT,DGJTPT,DFN)) Q:'DFN!(DGU)  F IFN=0:0 S IFN=$O(^UTILITY("VAS",$J,DGJTDV,DGJTDT,DGJTPT,DFN,IFN)) Q:'IFN!(DGU)  S DGJTDL=^(IFN) D SET I $D(^VAS(393,IFN,0)) D PRT2
 Q
SER D:'DGJTFF HDR
 F DGJY=0:0 S DGJTSV=$O(^UTILITY("VAS",$J,DGJTDV,DGJTSV)) Q:DGJTSV']""!(DGU)  D:DGJTFF RET Q:DGU  D:DGJTFF HEAD,HDR D HDR2 S DGJTFF=1 F DGJJ=0:0 S DGJTSP=$O(^UTILITY("VAS",$J,DGJTDV,DGJTSV,DGJTSP)) Q:DGJTSP']""!(DGU)  D HDR3,SER1 Q:DGU
 Q
SER1 F DGJP=0:0 S DGJTPT=$O(^UTILITY("VAS",$J,DGJTDV,DGJTSV,DGJTSP,DGJTPT)) Q:DGJTPT']""!(DGU)  D SER2
 Q
SER2 F DFN=0:0 S DFN=$O(^UTILITY("VAS",$J,DGJTDV,DGJTSV,DGJTSP,DGJTPT,DFN)) Q:'DFN!(DGU)  F IFN=0:0 S IFN=$O(^UTILITY("VAS",$J,DGJTDV,DGJTSV,DGJTSP,DGJTPT,DFN,IFN)) Q:'IFN!(DGU)  S DGJTDL=^(IFN) D SET I $D(^VAS(393,IFN,0)) D PRT2 Q:DGU  D SV
 Q
PRT2 D RELP Q:DGU  S DGJTNODE=^VAS(393,IFN,0)
 I DGJTL'="PHY" S DGJTPC=14 S DGJTPHY=$S($P(DGJTNODE,"^",DGJTPC)]""&($D(^VA(200,+$P(DGJTNODE,"^",DGJTPC),0))):$P(^(0),"^",1),1:"NOT SPECIFIED")
 I DGJTL="DAT" W ! D DATE W ?13
 I DGJTL'="DAT" W !
 W $E(DGJTPT,1,15)
 D PID^VADPT6 W:DGJTL="DAT" ?30 W:DGJTL'="DAT" ?18 W VA("BID")
 I DGJTL'="DAT" S DGJTDT=$P(DGJTNODE,"^",3) W ?26 D DATE
 I $P(DGJTNODE,"^",4)]"" S DGJTAD=$P(DGJTNODE,"^",4) I $D(^DGPM(DGJTAD,0)) S DGJTDIS=$P(^(0),"^",17) I $D(^DGPM(+DGJTDIS,0)) S DGJTTYP=$P(^(0),"^",4) W ?39,$S($D(^DG(405.1,+DGJTTYP,0)):$E($P(^(0),"^",1),1,12),1:"")
 W ?53,$S($P(DGJTNODE,"^",5)]""&($D(^SC(+$P(DGJTNODE,"^",5),0))):$E($P(^SC($P(DGJTNODE,"^",5),0),"^",1),1,13),1:"")
 S DFN=$P(DGJTNODE,"^",1) S RTE=DFN_";DPT(",RTYPE=1 D LATEST^RTUTL3
 W ?69,$E($P(RTDATA,"^",2),1,12)
 I DGJTL="PHY" D HD1^DGJOPRT3 Q
 W ?87,$E(DGJTPHY,1,15)
 W ?106,$S($P(DGJTNODE,"^",2)]""&($D(^VAS(393.3,+$P(DGJTNODE,"^",2),0))):$E($P(^VAS(393.3,$P(DGJTNODE,"^",2),0),"^",1),1,3),1:"")
 I DGJTDIR=2 W ?111,$S($P(DGJTNODE,"^",11)&($D(^DG(393.2,+$P(DGJTNODE,"^",11),0))):$E($P(^DG(393.2,$P(DGJTNODE,"^",11),0),"^",1),1,10),1:"")
 W ?125,$J(DGJTDL,4)
 Q
HEAD D HEAD^DGJOPRT3 Q
RET I DGJTL="PAT"!(DGJTL="DAT")&(IOST'?1"C-".E) G RET1
 Q:IOST'?1"C-".E
RET1 F X=$Y:1:(IOSL-3) W !
 D DIV Q:IOST'?1"C-".E
 R ?22,"Enter <RET> to continue or ^ to QUIT ",X:DTIME S:X["^"!('$T) DGU=1 Q:DGU  S DGFLAG=1 Q
RELP I $Y+8>IOSL I DGJTL="PAT"!(DGJTL="DAT") D RET Q:DGU  D HEAD Q
 I $Y+8>IOSL D RET:(IOST?1"C-".E) Q:DGU  D HEAD
 Q
HDR W !?5,"DIVISION: ",DGJTDV Q
HDR1 W !?6,"PHYSICIAN: ",DGJTPHY Q
HDR2 W !?6,"SERVICE: ",DGJTSV Q
HDR3 W !?7,"SPECIALTY: ",DGJTSP Q
PH D PH^DGJOPRT3 Q
SV D SV^DGJOPRT3 Q