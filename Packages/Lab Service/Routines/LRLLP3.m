LRLLP3 ; IHS/DIR/FJE - SEQUENCE LIST PRINT 2/5/91 14:38 ;
 ;;5.2;LR;;NOV 01, 1997
 ;
 ;;5.2;LAB SERVICE;**116**;Sep 27, 1994
LOOP S (LRFSTP,LRTRAY)=1,LRCUP=LRST,LRPROF=+$O(^LRO(68.2,LRINST,1,LRTRAY,1,0)) G:'LRPROF ERR G:'$D(^LRO(68.2,LRINST,1,LRTRAY,1,LRPROF,0))#2 ERR S LRPROF=+$P(^(0),U,4)
 D HED^LRLLP2:LRFRMT="C",HED^LRLLP5:LRFRMT="E" Q:$G(LREXIT)
LP2 S LRCUP=$O(^LRO(68.2,LRINST,1,LRTRAY,1,LRCUP)) G END:(LRCUP>LRLLT)!(LRCUP<1) S LRLL=$S($D(^(LRCUP,0)):^(0),1:""),LRTEST="" S:LRPROF'=+$P(LRLL,U,4) LRPROF=+$P(LRLL,U,4),LRDC=1
 I $Y+8>IOSL!LRDC D HED^LRLLP2:LRFRMT="C",HED^LRLLP5:LRFRMT="E" Q:$G(LREXIT)
 W ! W:'LRALTH "SEQ: ",$J(LRCUP,4) D LRLINE^LRLLP2:LRFRMT="C",LRLINE^LRLLP5:LRFRMT="E" G LP2
 Q
 S LRDC=0 Q
ERR ;
 W !?10,"There is not a profile defined for this LOAD/WORK LIST ",!!
END I $E(IOST,1,2)="C-",'$G(LREXIT) D TERM^LRLLP2
 W ! W:$E(IOST,1,2)="P-" @IOF
 D ^%ZISC Q