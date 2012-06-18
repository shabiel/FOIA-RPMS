ACGSPSUM ;IHS/OIRM/DSD/THL,AEF - SUMMARY OF MODS FOR ACGPSUM; [ 03/27/2000   2:22 PM ]
 ;;2.0t1;CONTRACT INFORMATION SYSTEM;;FEB 16, 2000
 ;;ROUTINE WHICH CREATES SUMMARY OF MODS FOR THE CONTRACT SUMMARY REPORT
EN D EN1
EXIT ;
 Q
EN1 S:'$D(ACGTD)!'$D(ACGTI) (ACGTD,ACGTI)=0
 S:'$D(ACGTOTD) (ACGTOTD,ACGTOTI)=0
 S:'$D(ACGTOTDT) (ACGTOTDT,ACGTOTIT)=0
 N ACGI,ACG
 S ACG=0
 F ACGI=1:1:3 S ACG=$O(^ACGS("C",D0,ACG)) Q:'ACG
 S ACG=0
 F ACGJ=0:1 S ACG=$O(^ACGS("C",D0,ACG)) Q:'ACG  I $D(^ACGS(ACG,"DT")),$D(^("DT1")),$D(^("DT2")) S ACGDT=^("DT"),ACGDT1=^("DT1"),ACGDT2=^("DT2") D
 .S ACG($P(^ACGS(ACG,0),U))=$P(ACGDT1,U,5)_U_$P(ACGDT1,U,3)_U_$P(ACGDT2,U)_U_$P(ACGDT,U),ACGTD=ACGTD+$P(ACGDT1,U,5)-$P(ACGDT2,U),ACGTI=ACGTI+$P(ACGDT2,U)
 S ACGTOTD=ACGTOTD+ACGTD,ACGTOTI=ACGTOTI+ACGTI,ACGTOTDT=ACGTOTDT+ACGTD,ACGTOTIT=ACGTOTIT+ACGTI
 I $Y>(IOSL-5-ACGJ) S DC=$G(DC)+1 W @IOF,!?60,"PAGE: ",DC,!,$P(^ACGS(D0,"DT"),U,2),"  (CON'T)"
 W:ACGI=3 !!?25,"MOD #",?32,"TYPE",?39,"AMOUNT",?54,"DATE",?68,"INDIRECT",!?25,"-----",?32,"----",?39,"-----------",?54,"--------",?68,"-----------"
 I ACGI=3 S (ACGI,ACG)=0 F  S ACG=$O(ACG(ACG)) Q:'ACG  D
 .W !?26,ACG,?33,$P(^ACGTPA($P(ACG(ACG),U,4),0),U),?39,$J($FN($P(ACG(ACG),U),"P,",0),12) W:$P(ACG(ACG),U,2)?7N ?54,$E($P(ACG(ACG),U,2),4,5),"/",$E($P(ACG(ACG),U,2),6,7),"/",$E($P(ACG(ACG),U,2),2,3) W ?68,$J($FN($P(ACG(ACG),U,3),"P,",0),12)
 W !!?30,"TOTAL AMOUNT",?45,"TOTAL DIRECT",?60,"TOTAL INDIR",!?30,"------------",?45,"------------",?60,"------------",!?30,$J($FN((ACGTD+ACGTI),"P,",0),12),?45,$J($FN(ACGTD,"P,",0),12),?60,$J($FN(ACGTI,"P,",0),12)
 S (ACGTD,ACGTI)=0
 Q
TAIL ;EP;
 W !!?18,"TOTALS FOR: ",ACGRPT
 S:'$D(ACGTOTD) (ACGTOTD,ACGTOTI)=0
 W !?30,"TOTAL AMOUNT",?45,"TOTAL DIRECT",?60,"TOTAL INDIRECT",!?30,"------------",?45,"------------",?60,"------------",!?30,$J($FN((ACGTOTD+ACGTOTI),"P,",0),12),?45,$J($FN(ACGTOTD,"P,",0),12),?60,$J($FN(ACGTOTI,"P,",0),12)
 S (ACGTOTD,ACGTOTI)=0
 I $D(IOST),$E(IOST,1,2)["C-" D HOLD^ACGSMENU
 Q
TOTAL W !!?18,"TOTALS FOR PROCUREMENT OFFICE: ",$S($D(ACG4N):ACG4N,1:ACG4)
 S:'$D(ACGTOTDT) (ACGTOTDT,ACGTOTIT)=0
 W !?30,"TOTAL AMOUNT",?45,"TOTAL DIRECT",?60,"TOTAL INDIRECT",!?30,"------------",?45,"------------",?60,"------------",!?30,$J($FN((ACGTOTDT+ACGTOTIT),"P,",0),12),?45,$J($FN(ACGTOTDT,"P,",0),12),?60,$J($FN(ACGTOTIT,"P,",0),12)
 S (ACGTOTDT,ACGTOTIT)=0
 I $D(IOST),$E(IOST,1,2)["C-" D HOLD^ACGSMENU
 Q
ADHOC ;EP
 D:$E(IOST,1,2)="C-" HOLD^ACGSMENU
 I $D(ACGQUIT) K ACGQUIT Q
 S (ACGX,ACGRDAM)=D0
 F  S ACGRDAM=$O(^ACGS("C",ACGX,ACGRDAM)) Q:'ACGRDAM  K DXS,DIP S D0=ACGRDAM,ACGDC(1)=$G(ACGDC(1))+1 D ^ACGPTCS K DXS,DIP D:$E(IOST,1,2)="C-" HOLD^ACGSMENU I $D(ACGQUIT) K ACGQUIT Q
 K ACGRDAM
 S D0=ACGX
 Q
 ;