BWGRVLP2 ; IHS/CMI/LAB - PRINT WH PROCEDURE REPORT ;15-Feb-2003 21:53;PLS
 ;;2.0;WOMEN'S HEALTH;**6,8**;MAY 16, 1996
 ;
DONE ;EP
 I $D(ZTQUEUED),BWGRCTYP="F" G DONE1
 D DONE^BWGRVLU
DONE1 ;
 K ^XTMP("BWGRVL",BWGRJOB,BWGRBT),^XTMP("BWGRFLAT",$J)
 D DEL^BWGRVL
 K BWGRBD,BWGRSD,BWGRED,BWGREDD,BWGRBDD,BWGRRPT,BWGRHEAD,BWGRLINE,BWGRL,BWGRRCNT,BWGRI,BWGRCRIT,BWGRVIEN,BWGRVREC,BWGRJOB,BWGRBT,BWGRBTH,BWGRQUIT,BWGRHDR,BWGRDASH,BWGRLENG,BWGRPCNT,BWGRTCW,BWGRODAT,BWGRPG,AUPNDAYS,AUPNPAT,AUPNDOD,AUPNDOB,AUPNSEX
 K BWGRSORT,BWGRSRT,BWGRSORX,BWGRFILE,BWGRFIEL,BWGRPRNT,BWGRX,BWGRTYPE,BWGRFOUN,D0,J,K,L,BWGRPRNM,BWGRTEST,BWGRSEAT,BWGRLHDR,BWGRFRST
 Q
HEAD ;ENTRY POINT
 I 'BWGRPG G HEAD1
 I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BWGRQUIT="" Q
HEAD1 ;EP
 I BWGRCTYP="F",$D(ZTQUEUED) Q
 W:$D(IOF) @IOF S BWGRPG=BWGRPG+1
 I $G(BWGRTITL)="" S BWGRTEXT="WOMEN'S HEALTH "_$S(BWGRPTVS="R":"PROCEDURE",1:"PATIENT")_" LISTING",BWGRLENG=$L(BWGRTEXT) W !?((BWGRTCW-BWGRLENG)/2),BWGRTEXT,?(BWGRTCW-8),"Page ",BWGRPG
 I $G(BWGRTITL)]"" S BWGRLENG=$L(BWGRTITL) W !?((BWGRTCW-BWGRLENG)/2),BWGRTITL,?(BWGRTCW-8),"Page ",BWGRPG
 I BWGRTYPE="D" S BWGRLENG=46 S:BWGRTCW<BWGRLENG BWGRLENG=BWGRTCW W !?((BWGRTCW-BWGRLENG)/2),"Procedure Dates:  ",BWGRBDD," and ",BWGREDD,!
 I BWGRTYPE="S" S BWGRLENG=16+$L($P(^DIBT(BWGRSEAT,0),U)) S:BWGRTCW<BWGRLENG BWGRLENG=BWGRTCW  W !?((BWGRTCW-BWGRLENG)/2),"Search Template: ",$P(^DIBT(BWGRSEAT,0),U),!
 I BWGRCTYP="S" S BWGRLENG=$L(BWGRSORV)+23 W !?((BWGRTCW-BWGRLENG)/2),$S(BWGRPTVS="R":"WH PROCEDURE",1:"PATIENT")," SUB-TOTALS BY:  ",BWGRSORV,!
 I $G(BWGRSPAG) S BWGRLENG=$L(BWGRSORV)+$L(BWGRSRTR)+2 S:BWGRTCW<BWGRLENG BWGRLENG=BWGRTCW W !?((BWGRTCW-BWGRLENG)/2),BWGRSORV,":  ",BWGRSRTR,!
 I BWGRHEAD]"" W !,BWGRHEAD,!
 W BWGRDASH,!
 I BWGRCTYP="S" W !,BWGRSORV,":"
 I BWGRCTYP="F",$E(IOST)="C" W !!,"Flat file being created, hold on...",!
 Q
WRITEF ;EP - write out flat file
 S XBGL="XTMP("_$J_",""BWGRFLAT"","
 S XBMED="F",XBFN=BWGRFILE,XBTLE="SAVE OF GEN RET/PGEN RECORDS GENERATED BY -"_$P(^VA(200,DUZ,0),U)
 S XBF=0,XBQ="N",XBFLT=1,XBE=$J
 D ^XBGSAVE
 ;check for error
 K ^XTMP($J,"BWGRFLAT")
 K XBGL,XBMED,XBTLE,XBFN,XBF,XBQ,XBFLT
 Q