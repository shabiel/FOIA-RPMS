APCDFOAP ; IHS/CMI/LAB - PRINT DE QA ;
 ;;2.0;IHS PCC SUITE;**11**;MAY 14, 2009;Build 58
START ;
 S APCD80D="-------------------------------------------------------------------------------"
 S Y=APCDBD D DD^%DT S APCDBDD=Y S Y=APCDED D DD^%DT S APCDEDD=Y
 I APCDMAX="" S APCDMAX=APCDVCNT
 I APCDMAX>APCDVCNT S APCDMAX=APCDVCNT
 I APCDMAX=0 S APCDPG=0 D HEAD W !,"No Visits to report!",! G DONE
 S APCDGOT=APCDVCNT/APCDMAX S APCDGOT=$J(APCDGOT,$L($P(APCDGOT,".")),0)
 S APCDPG=0 D HEAD I '$D(^XTMP("APCDFOA",APCDJOB,APCDBT)) W !,"No visits to report",! G DONE
 K APCDQUIT
 S APCDVDFN="" F APCDX=1:APCDGOT:APCDVCNT S APCDVDFN=$O(^XTMP("APCDFOA",APCDJOB,APCDBT,"DEQAV",APCDX,"")) Q:APCDVDFN=""!($D(APCDQUIT))  I $D(^AUPNVSIT(APCDVDFN,0)) S APCDVREC=^(0) D POV
 G:$D(APCDQUIT) DONE
 I $Y>(IOSL-6) D HEAD G:$D(APCDQUIT) DONE
DONE ;
 I '$D(APCDQUIT),$E(IOST)="C",IO=IO(0) S DIR(0)="E" D ^DIR K DIR
 W:$D(IOF) @IOF
 Q
POV ;
 S APCDPOVC=0,APCDPOV="" K APCDPOVA F  S APCDPOV=$O(^AUPNVPRC("AD",APCDVDFN,APCDPOV)) Q:APCDPOV=""  I $D(^AUPNVPRC(APCDPOV,0)) D POV1
 D WRT
 Q
POV1 ;
 I $D(^XTMP("APCDFOA",APCDJOB,APCDBT,"DEPOV","ALL")) S APCDPOVC=APCDPOVC+1,APCDPOVA(APCDPOVC)=APCDPOV Q
 I $D(^XTMP("APCDFOA",APCDJOB,APCDBT,"DEPOV","ICDDFN",$P(^AUPNVPRC(APCDPOV,0),U))) S APCDPOVC=APCDPOVC+1,APCDPOVA(APCDPOVC)=APCDPOV
 Q
WRT ;
 I $Y>(IOSL-(APCDPOVC+5)) D HEAD Q:$D(APCDQUIT)
 S Y=+APCDVREC D DD^%DT S APCDDATE=Y
 S APCDPAT=$P(APCDVREC,U,5) Q:APCDPAT=""
 S APCDHRN=$S($D(^AUPNPAT(APCDPAT,41,DUZ(2),0)):$P(^AUPNPAT(APCDPAT,41,DUZ(2),0),U,2),1:"NONE")
 ;W !!,APCDHRN,?9,APCDDATE S APCDPOVD=APCDPOVA(1) W ?30,$P(^ICD0(+^AUPNVPRC(APCDPOVD,0),0),U)
 W !!,APCDHRN,?8,APCDDATE S APCDPOVD=APCDPOVA(1) W ?27,$P($$ICDOP^ICDEX(+^AUPNVPRC(APCDPOVD,0),,,"I"),U,2),?36,$$VAL^XBDIQ1(9000010.08,APCDPOVD,.22)
 ;S APCDNQ=$P(^AUPNVPRC(APCDPOVD,0),U,4) W:APCDNQ]"" ?40,$E($P(^AUTNPOV(APCDNQ,0),U),1,43),!?40,"[",$E($P(^ICD0(+^AUPNVPRC(APCDPOVD,0),0),U,4),1,38),"]"
 S APCDNQ=$P(^AUPNVPRC(APCDPOVD,0),U,4) W:APCDNQ]"" ?43,$E($P(^AUTNPOV(APCDNQ,0),U),1,33),!?43,"[",$E($P($$ICDOP^ICDEX(+^AUPNVPRC(APCDPOVD,0),$$VD^APCLV(APCDVDFN),,"I"),U,5),1,33),"]"
 D POVW
 Q
POVW ;
 S APCDPOVN=1 F  S APCDPOVN=$O(APCDPOVA(APCDPOVN)) Q:APCDPOVN=""  D
 .S APCDPOVD=APCDPOVA(APCDPOVN) W !?27,$P($$ICDOP^ICDEX(+^AUPNVPRC(APCDPOVD,0),,,"I"),U,2),?36,$$VAL^XBDIQ1(9000010.08,APCDPOVD,.22) S APCDNQ=$P(^AUPNVPRC(APCDPOVD,0),U,4) W:APCDNQ]"" ?43,$E($P(^AUTNPOV(APCDNQ,0),U),1,33)
 .W !?43,"[",$E($P($$ICDOP^ICDEX(+^AUPNVPRC(APCDPOVD,0),,,"I"),U,5),1,33),"]"
 Q
HEAD I 'APCDPG G HEAD1
 I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S APCDQUIT="" Q
HEAD1 ;
 W:$D(IOF) @IOF S APCDPG=APCDPG+1
 W ?25,APCDLHDR,?72,"Page ",APCDPG,!
 W ?(80-$L($P(^DIC(4,DUZ(2),0),U))/2),$P(^DIC(4,DUZ(2),0),U),!
 W !?15,"Visit POSTING Dates:  "_APCDBDD_" and "_APCDEDD,!
 S APCDLENG=$L($P(^VA(200,APCDPROV,0),U))+19
 W ?(80-APCDLENG)/2,"Data Entry Operator:  ",$P(^VA(200,APCDPROV,0),U),!
 S APCDLENG=$S(APCDCLN]"":$L($P(^DIC(40.7,APCDCLN,0),U)),1:3)+9
 W ?(80-APCDLENG)/2,"Clinic:  ",$S(APCDCLN]"":$P(^DIC(40.7,APCDCLN,0),U),1:"ALL")
 W !!,"Total Visits Found: ",APCDVCNT I $G(APCDRSM)=1 W "          Total Number of Random Visits Selected:  ",APCDMAX
 W !!?27,"ICD O/P",?36,"ICD-9",?43,"Provider Narrative"
 W !?2,"HR#",?9,"Visit Date",?27,"Code",?36,"Code",?43,"[ICD O/P NARRATIVE]"
 W !,APCD80D
 Q