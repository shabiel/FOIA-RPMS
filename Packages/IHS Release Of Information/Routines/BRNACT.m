BRNACT ; IHS/OIT/GAB - ROI PATIENT ACCOUNTING OF DISCLOSURE REPORT; 
 ;;2.0;IHS RELEASE OF INFORMATION;**4**;APR 10, 2003 ;Build 15
 ;;IHS/OIT/GAB 09/01/16 PATCH #4 ADDED THIS REPORT
SERVICE ;PICK PATIENT NAME ENTRY
 NEW BRNPTN,BRNBD,BRNED,BRNDT,BRNDAT,BRNFIND,BRNQUIT,X
 W !!
 S DIC=2 S DIC("A")="Enter a Patient Name: " S DIC(0)="AEMIQO" D ^DIC
 G END:Y<1 S BRNPTN=+Y
 I BRNPTN="" Q
 I '$D(^BRNREC("AA",BRNPTN)) W !,?20,"**--NO EXISTING DISCLOSURES--**",! Q
ASK ;Ask For Date Range
 ;
 ;
BD ;get beginning date
 W !! S DIR(0)="D^:"_DT_":EP",DIR("A")="Enter beginning ROI Initiated Date" D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 I $D(DIRUT) G END
 S BRNBD=Y
ED ;get ending date
 W ! S DIR(0)="D^"_BRNBD_":"_DT_":EP",DIR("A")="Enter ending ROI Initiation Date"  D ^DIR K DIR S:$D(DUOUT) DIRUT=1
 I $D(DIRUT) G BD
 S BRNED=Y
 S BRNED=BRNED_.2359
 S X1=BRNBD,X2=-1 D C^%DTC S BRNSD=X
 ; 
PRINT ;PRINT PATIENT RECORD OF ALL DISCLOSURES BY DATE
 N DIC,L,FLDS,BY,FR,TO
 S FLDS="[BRN ACCOUNTING OF DISCLOSURES]",BY="@INTERNAL(#.01),@INTERNAL(#.03)",DIC="^BRNREC(",L=0
 S FR=BRNBD_","_BRNPTN,TO=BRNED_","_BRNPTN
 K DHIT,DIOEND,DIOBEG
 D CKROI
 I BRNFIND=0 W !!,"       ***No disclosures to print in this date range***   ",! G END
 D EN1^DIP
 D PAUSE^XB
 D END
 Q
CKROI ; IHS/OIT/GAB CHECK FOR DISCLOSURES IN THE DATE RANGE TO PREVENT ERROR
 S BRNDT=BRNBD    ;start looking in the date range
 S BRNDAT=""
 S BRNFIND=0
 F  S BRNDT=$O(^BRNREC("AA",BRNPTN,BRNDT)) Q:BRNDT=""!BRNFIND=1  D
 . S BRNDAT=$P(BRNDT,".",1)
 . Q:BRNDAT>BRNED
 . I (BRNDAT>(BRNBD-1)&&((BRNDAT-1)<BRNED)) S BRNFIND=1 Q
 Q
END ;
 K BRNPTN,BRNED,BRNBD,BRNSD,X,DD0,B Q