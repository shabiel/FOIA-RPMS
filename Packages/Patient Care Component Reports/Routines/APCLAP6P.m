APCLAP6P ; IHS/CMI/LAB - PRINT CLINIC VISITS ;
 ;;2.0;IHS PCC SUITE;;MAY 14, 2009
 ;
INIT ;
 S APCLDT=$$FMTE^XLFDT(DT)
 S Y=APCLBD D DD^%DT S APCLBDD=Y S Y=APCLED D DD^%DT S APCLEDD=Y
 S APCLPG=0
 I '$D(^XTMP("APCLAP6",APCLJOB,APCLBTH)) D HEAD W !,"No visits to report."  G END
 ;
SET ;
 D HEAD
 S APCLAP=0
 F  S APCLAP=$O(^XTMP("APCLAP6",APCLJOB,APCLBTH,APCLAP)) Q:APCLAP=""!($D(APCLQUIT))  D SET2
END ;
 D DONE^APCLOSUT
 K ^XTMP("APCLAP6",APCLJOB,APCLBTH)
 Q
SET2 ;
 I $Y>(IOSL-5) D HEAD Q:$D(APCLQUIT)
 W !,$E($S($P(^DD(9000010.06,.01,0),U,2)[200:$P(^VA(200,APCLAP,0),U),1:$P(^DIC(16,APCLAP,0),U)),1,15)
 S J=18,APCLX=0
 I $D(APCLCLNT) F  S APCLX=$O(APCLCLNT(APCLX)) Q:APCLX'=+APCLX  D PRINT
 I $D(APCLLOCT) F  S APCLX=$O(APCLLOCT(APCLX)) Q:APCLX'=+APCLX  D PRINT
 Q
 ;
PRINT ;
 S Y=$S($D(^XTMP("APCLAP6",APCLJOB,APCLBTH,APCLAP,APCLX)):^(APCLX),1:0)
 W ?J,$J(Y,7) S J=J+10
 Q
HEAD I 'APCLPG G HEAD1
 I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S APCLQUIT="" Q
HEAD1 ;
 W:$D(IOF) @IOF S APCLPG=APCLPG+1
 W !
 S X=$P(^DIC(4,DUZ(2),0),U)
 W !!,$P(^VA(200,DUZ,0),"^",2),?(80-$L(X)/2),X,?70,"Page ",APCLPG
 W !?19,"PRIMARY CARE PROVIDER VISITS - ",$S(APCLDY="Y":"YEARLY",1:"DAILY")," REPORT"
 W !?18,"VISITS DATES:  ",APCLBDD,"  TO  ",APCLEDD
 I $D(APCLCLNT) D
 .S APCLL=$S(APCLLOC=0:"ALL",1:"SELECTED")
 .S APCLLENG=21+$L(APCLL)
 .W !?((80-APCLLENG)/2),"LOCATION OF VISITS:  ",APCLL
 W !!?2,"PROVIDER"
 I $D(APCLCLNT) S X=0,J=18 F  S X=$O(APCLCLNT(X)) Q:X'=+X  W ?J,$E($P(^DIC(40.7,X,0),U),1,8) S J=J+10
 I $D(APCLLOCT) S X=0,J=18 F  S X=$O(APCLLOCT(X)) Q:X'=+X  W ?J,$E($P(^DIC(4,X,0),U),1,8) S J=J+10
 W ! S X=$S(J>80:132,1:80) W $TR($J("",X)," ","-")
 W !
 Q
 ;