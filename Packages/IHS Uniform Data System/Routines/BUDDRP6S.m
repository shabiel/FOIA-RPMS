BUDDRP6S ; IHS/CMI/LAB - UDS REPORT DRIVER TABLE 6B ;
 ;;11.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 18, 2017;Build 66
 ;
 ;
S(V) ;
 S BUDDECNT=BUDDECNT+1
 S ^TMP($J,"BUDDEL",BUDDECNT)=$G(V)
 Q
 ;----------
APTLIST1 ;EP
 D EOJ
 S BUDAPT1L=1
 D APT1
 G EN1^BUDDRP6B
APTLIST2 ;EP
 D EOJ
 S BUDAPT2L=1
 D APT2
 G EN1^BUDDRP6B
PAUSE ;
 K DIR S DIR(0)="E",DIR("A")="PRESS ENTER" KILL DA D ^DIR KILL DIR
 Q
GENI ;EP - general introductions
 W !,"NOTE: Patient lists may be hundreds of pages long, depending on the size of your"
 W !,"patient population.  It is recommended that you run these reports at night and"
 W !,"print to an electronic file, not directly to a printer.",!
 K DIR S DIR(0)="E",DIR("A")="Press Enter to Continue" D ^DIR K DIR
 W !!,"This Patient List option documents the individual patients and visits"
 W !,"that are counted and summarized on each Table report (main menu"
 W !,"option REP).  The summary Table report is included at the beginning of each"
 W !,"List report."
 W !,"UDS searches your database to find all visits and related patients"
 W !,"during the time period selected. Based on the UDS definition, to be counted"
 W !,"as a patient, the patient must have had at least one visit meeting the "
 W !,"following criteria:"
 W !?4,"- must be to a location specified in your visit location setup"
 W !?4,"- must be to Service Category Ambulatory (A), Hospitalization (H), Day"
 W !?6,"Surgery (S), Observation (O), Telemedicine (M), Nursing home visit (R), "
 W !?6,"or In-Hospital (I) visit"
 W !?4,"- must NOT have an excluded clinic code (see User Manual for a list)"
 W !?4,"- must have a primary provider and a coded purpose of visit"
 W !?4,"- the patient must NOT have a gender of 'Unknown'"
 W !
 Q
 ;
EOJ ;
 D EN^XBVK("BUD")
 Q
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
USR() ;EP - Return name of current user from ^VA(200.
 Q $S($G(DUZ):$S($D(^VA(200,DUZ,0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ UNDEFINED OR 0")
 ;----------
LOC() ;EP - Return location name from file 4 based on DUZ(2).
 Q $S($G(DUZ(2)):$S($D(^DIC(4,DUZ(2),0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ(2) UNDEFINED OR 0")
 ;----------
APT1 ;EP
 D IN6B^BUDDDU("APT1")
 Q
APT1L ;EP
 S BUDP=0,BUDQUIT=0,BUDTOT=0
 S BUDLST2I=$O(^BUDDLST2("C","APT1",0))
 D APT1H Q:BUDQUIT
 I '$D(^XTMP("BUDDRP6B",BUDJ,BUDH,"APT1")) W:BUDROT="P" !!,"No patients to report." D:BUDROT="D" S() D:BUDROT="D" S("No patients to report.") Q
 D APT1L1
 I BUDROT="P",$Y>(IOSL-3) D APT1H Q:BUDQUIT
 I BUDROT="P" W !!,"TOTAL ASTHMA PATIENTS WITH PREFERRED LONG-TERM CONTROL MEDICATION"
 I BUDROT="P" W !,"OR ACCEPTABLE ALTERNATIVE PHARMACOLOGIC THERAPY: ",BUDTOT,!
 I BUDROT="D" D S(),S("TOTAL ASTHMA PATIENTS WITH PREFERRED LONG-TERM CONTROL MEDICATION OR ACCEPTABLE ALTERNATIVE PHARMACOLOGIC THERAPY: "_BUDTOT)
 Q
APT1L1 ;
 I BUDROT="P",$Y>(IOSL-7) D APT1H Q:BUDQUIT
 S BUDAGE="" F  S BUDAGE=$O(^XTMP("BUDDRP6B",BUDJ,BUDH,"APT1",BUDAGE)) Q:BUDAGE=""!(BUDQUIT)  D
 .S BUDNAME="" F  S BUDNAME=$O(^XTMP("BUDDRP6B",BUDJ,BUDH,"APT1",BUDAGE,BUDNAME)) Q:BUDNAME=""!(BUDQUIT)  D
 ..S BUDCCOM="" F  S BUDCCOM=$O(^XTMP("BUDDRP6B",BUDJ,BUDH,"APT1",BUDAGE,BUDNAME,BUDCCOM)) Q:BUDCCOM=""!(BUDQUIT)  D
 ...S DFN=0 F  S DFN=$O(^XTMP("BUDDRP6B",BUDJ,BUDH,"APT1",BUDAGE,BUDNAME,BUDCCOM,DFN)) Q:DFN'=+DFN!(BUDQUIT)  D
 ....I BUDROT="P",$Y>(IOSL-3) D APT1H Q:BUDQUIT
 ....I BUDROT="P" W !,$E($P(^DPT(DFN,0),U,1),1,25),?29,$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2)),?41,$E(BUDCCOM,1,25),?70,$P(^DPT(DFN,0),U,2),?75,BUDAGE,!
 ....S BUDTOT=BUDTOT+1
 ....S BUDALL=^XTMP("BUDDRP6B",BUDJ,BUDH,"APT1",BUDAGE,BUDNAME,BUDCCOM,DFN)
 ....I BUDROT="P" W ?5,$P(BUDALL,U,1),?30,$P(BUDALL,U,2)
 ....I BUDROT="D" S X=$P(^DPT(DFN,0),U,1)_U_$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2))_U_BUDCCOM_U_$P(^DPT(DFN,0),U,2)_U_$$AGE^AUPNPAT(DFN,BUDCCAD) D
 .....S X=X_U_$P(BUDALL,U,1)_U_$P(BUDALL,U,2) D S(X)
 Q
APT1HD ;
 D S(),S(),S()
 D S("***** CONFIDENTIAL PATIENT INFORMATION, COVERED BY THE PRIVACY ACT *****")
 D S($P(^VA(200,DUZ,0),U,2)_"    "_$$FMTE^XLFDT(DT))
 D S("***  RPMS Uniform Data System (UDS)  ***")
 D S("Patient List for Table 6B, Section H, With Appropriate Medications for Asthma")
 D S($P(^DIC(4,BUDSITE,0),U))
 S X="Reporting Period: "_$$FMTE^XLFDT(BUDBD)_" to "_$$FMTE^XLFDT(BUDED) D S(X)
 S X="Population:  "_$S($G(BUDBEN)=1:"Indian/Alaskan Native (Classification 01)",$G(BUDBEN)=2:"Not Indian Alaskan/Native (Not Classification 01)",$G(BUDBEN)=3:"All (both Indian/Alaskan Natives and Non 01)",1:"") D S(X)
 D HT6B^BUDDDU("APT1")
 D S("PATIENT NAME^HRN^COMMUNITY^SEX^AGE^ASTHMA DX^PRESCRIPTION TYPE")
 Q
APT1H ;
 I BUDROT="D" D APT1HD Q
 G:'BUDGPG APT1H1
 K DIR I $E(IOST)="C",IO=IO(0),'$D(ZTQUEUED) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BUDQUIT=1 Q
APT1H1 ;
 W:$D(IOF) @IOF S BUDGPG=BUDGPG+1
 W !,"***** CONFIDENTIAL PATIENT INFORMATION, COVERED BY THE PRIVACY ACT *****"
 W !?3,$P(^VA(200,DUZ,0),U,2),?35,$$FMTE^XLFDT(DT),?70,"Page ",BUDGPG,!
 W !,$$CTR("***  RPMS Uniform Data System (UDS)  ***",80)
 W !,$$CTR("Patient List for Table 6B, Section H,",80),!,$$CTR("With Appropriate Medications for Asthma",80),!
 W $$CTR($P(^DIC(4,BUDSITE,0),U),80),!
 S X="Reporting Period: "_$$FMTE^XLFDT(BUDBD)_" to "_$$FMTE^XLFDT(BUDED) W $$CTR(X,80),!
 S X="Population:  "_$S($G(BUDBEN)=1:"Indian/Alaskan Native (Classification 01)",$G(BUDBEN)=2:"Not Indian Alaskan/Native (Not Classification 01)",$G(BUDBEN)=3:"All (both Indian/Alaskan Natives and Non 01)",1:"") W $$CTR(X,80),!
 W $TR($J("",80)," ","-")
 I BUDP=0 D
 .D HT6B^BUDDDU("APT1")
 W !!,"PATIENT NAME",?34,"HRN",?41,"COMMUNITY",?70,"SEX",?75,"AGE"
 W !?5,"ASTHMA DX",?30,"PRESCRIPTION TYPE"
 W !,$TR($J("",80)," ","-"),!
 S BUDP=1
 Q
 ;
 ;----------
APT2 ;EP
 D IN6B^BUDDDU("APT2")
 Q
APT2L ;EP
 S BUDLST2I=$O(^BUDDLST2("C","APT2",0))
 S BUDP=0,BUDQUIT=0,BUDTOT=0
 D APT2H Q:BUDQUIT
 I '$D(^XTMP("BUDDRP6B",BUDJ,BUDH,"APT2")) W:BUDROT="P" !!,"No patients to report." D:BUDROT="D" S() D:BUDROT="D" S("No patients to report.") Q
 D APT2L1
 I BUDROT="P",$Y>(IOSL-3) D APT2H Q:BUDQUIT
 I BUDROT="P" W !!,"TOTAL ASTHMA PATIENTS WITHOUT PREFERRED LONG-TERM CONTROL MEDICATION"
 I BUDROT="P" W !,"OR ACCEPTABLE ALTERNATIVE PHARMACOLOGIC THERAPY: ",BUDTOT,!
 I BUDROT="D" D S(),S("TOTAL ASTHMA PATIENTS WITHOUT PREFERRED LONG-TERM CONTROL MEDICATION OR ACCEPTABLE ALTERNATIVE PHARMACOLOGIC THERAPY: "_BUDTOT)
 Q
APT2L1 ;
 I BUDROT="P",$Y>(IOSL-7) D APT2H Q:BUDQUIT
 S BUDAGE="" F  S BUDAGE=$O(^XTMP("BUDDRP6B",BUDJ,BUDH,"APT2",BUDAGE)) Q:BUDAGE=""!(BUDQUIT)  D
 .S BUDNAME="" F  S BUDNAME=$O(^XTMP("BUDDRP6B",BUDJ,BUDH,"APT2",BUDAGE,BUDNAME)) Q:BUDNAME=""!(BUDQUIT)  D
 ..S BUDCCOM="" F  S BUDCCOM=$O(^XTMP("BUDDRP6B",BUDJ,BUDH,"APT2",BUDAGE,BUDNAME,BUDCCOM)) Q:BUDCCOM=""!(BUDQUIT)  D
 ...S DFN=0 F  S DFN=$O(^XTMP("BUDDRP6B",BUDJ,BUDH,"APT2",BUDAGE,BUDNAME,BUDCCOM,DFN)) Q:DFN'=+DFN!(BUDQUIT)  D
 ....I BUDROT="P",$Y>(IOSL-3) D APT2H Q:BUDQUIT
 ....I BUDROT="P" W !,$E($P(^DPT(DFN,0),U,1),1,25),?29,$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2)),?41,$E(BUDCCOM,1,25),?70,$P(^DPT(DFN,0),U,2),?75,BUDAGE,!
 ....S BUDTOT=BUDTOT+1
 ....S BUDALL=^XTMP("BUDDRP6B",BUDJ,BUDH,"APT2",BUDAGE,BUDNAME,BUDCCOM,DFN)
 ....I BUDROT="P" W ?5,$P(BUDALL,U,1),?30,$P(BUDALL,U,2)
 ....I BUDROT="D" S X=$P(^DPT(DFN,0),U,1)_U_$S($$HRN^AUPNPAT(DFN,BUDSITE)]"":$$HRN^AUPNPAT(DFN,BUDSITE,2),1:$$HRN^AUPNPAT(DFN,DUZ(2),2))_U_BUDCCOM_U_$P(^DPT(DFN,0),U,2)_U_$$AGE^AUPNPAT(DFN,BUDCCAD) D
 .....S X=X_U_$P(BUDALL,U,1)_U_$P(BUDALL,U,2) D S(X)
 Q
APT2HD ;
 D S(),S(),S()
 D S("***** CONFIDENTIAL PATIENT INFORMATION, COVERED BY THE PRIVACY ACT *****")
 D S($P(^VA(200,DUZ,0),U,2)_"    "_$$FMTE^XLFDT(DT))
 D S("***  RPMS Uniform Data System (UDS)  ***")
 D S("Patient List for Table 6B, Section H, Without Appropriate Medications for Asthma")
 D S($P(^DIC(4,BUDSITE,0),U))
 S X="Reporting Period: "_$$FMTE^XLFDT(BUDBD)_" to "_$$FMTE^XLFDT(BUDED) D S(X)
 S X="Population:  "_$S($G(BUDBEN)=1:"Indian/Alaskan Native (Classification 01)",$G(BUDBEN)=2:"Not Indian Alaskan/Native (Not Classification 01)",$G(BUDBEN)=3:"All (both Indian/Alaskan Natives and Non 01)",1:"") D S(X)
 D HT6B^BUDDDU("APT2")
 D S("PATIENT NAME^HRN^COMMUNITY^SEX^AGE^ASTHMA DX^PRESCRIPTION TYPE")
 Q
APT2H ;
 I BUDROT="D" D APT2HD Q
 G:'BUDGPG APT2H1
 K DIR I $E(IOST)="C",IO=IO(0),'$D(ZTQUEUED) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S BUDQUIT=1 Q
APT2H1 ;
 W:$D(IOF) @IOF S BUDGPG=BUDGPG+1
 W !,"***** CONFIDENTIAL PATIENT INFORMATION, COVERED BY THE PRIVACY ACT *****"
 W !?3,$P(^VA(200,DUZ,0),U,2),?35,$$FMTE^XLFDT(DT),?70,"Page ",BUDGPG,!
 W !,$$CTR("***  RPMS Uniform Data System (UDS)  ***",80)
 W !,$$CTR("Patient List for Table 6B, Section H,",80),!,$$CTR("Without Appropriate Medications for Asthma",80),!
 W $$CTR($P(^DIC(4,BUDSITE,0),U),80),!
 S X="Reporting Period: "_$$FMTE^XLFDT(BUDBD)_" to "_$$FMTE^XLFDT(BUDED) W $$CTR(X,80),!
 S X="Population:  "_$S($G(BUDBEN)=1:"Indian/Alaskan Native (Classification 01)",$G(BUDBEN)=2:"Not Indian Alaskan/Native (Not Classification 01)",$G(BUDBEN)=3:"All (both Indian/Alaskan Natives and Non 01)",1:"") W $$CTR(X,80),!
 W $TR($J("",80)," ","-")
 I BUDP=0 D
 .D HT6B^BUDDDU("APT2")
 W !!,"PATIENT NAME",?34,"HRN",?41,"COMMUNITY",?70,"SEX",?75,"AGE"
 W !?5,"ASTHMA DX",?30,"PRESCRIPTION TYPE"
 W !,$TR($J("",80)," ","-"),!
 S BUDP=1
 Q
 ;