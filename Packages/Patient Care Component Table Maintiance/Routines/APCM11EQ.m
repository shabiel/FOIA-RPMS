APCM11EQ ;IHS/CMI/LAB - IHS MU; 
 ;;2.0;IHS PCC SUITE;**6**;MAY 14, 2009;Build 11
 ;;;;;;Build 3
 ;
SAVEDEL ;EP
 I APCMPTYP="P" Q
 I APCMDELT="S" D SCREEN K ^TMP($J) Q
 ;call xbgsave to create output file
 K ^TMP($J,"SUMMARYDEL")
 S XBGL="APCMDATA"
 L +^APCMDATA:300 E  W:'$D(ZTQUEUED) "Unable to lock global" Q
 K ^APCMDATA ;NOTE: kill of unsubscripted export global
 S X=0 F  S X=$O(^TMP($J,"APCMDEL",X)) Q:X'=+X  S ^APCMDATA(X)=^TMP($J,"APCMDEL",X)
 I '$D(APCMGUI) D
 .S XBFLT=1,XBFN=APCMDELF_".txt",XBMED="F",XBTLE="CRS 2011 EXECUTIVE ORDER REPORT DELIMITED OUTPUT",XBQ="N",XBF=0
 .D ^XBGSAVE
 .K XBFLT,XBFN,XBMED,XBTLE,XBE,XBF
 I $D(APCMGUI) D
 .S (C,X)=0 F  S X=$O(^APCMDATA(X)) Q:X'=+X  S C=C+1,^APCMGUIB(APCMGIEN,12,C,0)=^APCMDATA(X)
 .S ^APCMGUIB(APCMGIEN,12,0)="^90546.0812^"_C_"^"_C_"^"_DT
 L -^APCMDATA
 K ^APCMDATA ;NOTE: kill of unsubscripted export global
 K ^TMP($J)
 Q
 ;
SCREEN ;
 S X=0 F  S X=$O(^TMP($J,"APCMDEL",X)) Q:X'=+X  W !,^TMP($J,"APCMDEL",X)
 Q