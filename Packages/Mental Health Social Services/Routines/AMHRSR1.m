AMHRSR1 ; IHS/CMI/LAB - list SUICIDE RISK ASSESSMENT 24 Aug 2009 6:21 PM ;
 ;;4.0;IHS BEHAVIORAL HEALTH;**8**;JUN 02, 2010;Build 7
 ;
 ;
INFORM ;
 W !,$$CTR($$USR)
 W !,$$LOC()
 W !!,$$CTR("TALLY AND LISTING OF PATIENTS RECEIVING SUICIDE RISK ",80),!,$$CTR("ASSESSMENT, INCLUDING REFUSALS",80)
 W !!,"This report will tally and optionally list all patients who have had "
 W !,"a Suicide Risk Assessment or a refusal documented in the time frame"
 W !,"specified by the user.  Suicide Risk Assessment is defined as any of the"
 W !,"following documented: "
 W !?10,"- Suicide Risk Assessment (Exam code 43)"
 W !?10,"- refusal of exam code 43"
 W !,"This report will tally the patients by age, gender, screening exam result, "
 W !,"provider (either exam provider, if available, or primary provider on the visit),"
 W !,"clinic, date of screening, designated PCP, MH Provider, SS Provider and A/SA"
 W !,"Provider."
 W !,"  Notes:  "
 W !?10,"- the last screening/refusal for each patient is used.  If a patient"
 W !?10,"  was screened more than once in the time period, only the latest"
 W !?10,"  is used in this report."
 W !?10,"- this report will optionally, look at both PCC and the Behavioral"
 W !?10,"   Health databases for evidence of screening/refusal"
 W !?10,"- this is a tally of Patients, not visits or screenings"
 W !
 D PAUSE^AMHLEA
 D DBHUSR^AMHUTIL
 D XIT
 S AMHREXC=$O(^AUTTEXAM("C",43,0))
 I 'AMHREXC W !!,"Exam code 43 is missing from the EXAM table.  Cannot run report.",! H 3 D XIT Q
 ;
DATES K AMHRED,AMHRBD
 W !,"Please enter the date range during which the screening was done.",!,"To get all screenings ever put in a long date range like 01/01/1980 ",!,"to the present date.",!
 K DIR W ! S DIR(0)="DO^::EXP",DIR("A")="Enter Beginning Date for Screening"
 D ^DIR Q:Y<1  S AMHRBD=Y
 K DIR S DIR(0)="DO^:DT:EXP",DIR("A")="Enter Ending Date for Screening"
 D ^DIR Q:Y<1  S AMHRED=Y
 ;
 I AMHRED<AMHRBD D  G DATES
 . W !!,$C(7),"Sorry, Ending Date MUST not be earlier than Beginning Date."
 ;
TALLY ;which items to tally
 K AMHRTALL
 W !!,"Please select which items you wish to tally on this report:",!
 W !?3,"0)  Do not include any Tallies",?40,"6)  Date of Screening"
 W !?3,"1)  Result of Assessment",?40,"7)  Primary Provider on Visit"
 W !?3,"2)  Gender",?40,"8)  Designated MH Provider"
 W !?3,"3)  Age of Patient",?40,"9)  Designated SS Provider"
 W !?3,"4)  Provider who Screened",?40,"10) Designated ASA/CD Provider"
 W !?3,"5)  Clinic",?40,"11) Designated Primary Care Provider"
 K DIR S DIR(0)="L^0:11",DIR("A")="Which items should be tallied",DIR("B")="" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G DATES
 I Y="" G DATES
 S AMHRTALL=Y
 S A=Y,C="" F I=1:1 S C=$P(A,",",I) Q:C=""  S AMHRTALL(C)=""
EXCL ;
 S AMHREXPC=""
 W !!,"Would you like to include Suicide Risk Assessments documented in the PCC"
 S DIR(0)="Y",DIR("A")="clinical database",DIR("B")="N" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G DATES
 S AMHREXPC=Y
LIST ;
 S AMHRLIST=""
 W !
 S DIR(0)="Y",DIR("A")="Would you like to include a list of patients screened",DIR("B")="Y" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G DATES
 S AMHRLIST=Y
 I 'AMHRLIST G DEMO
LIST1 ;
 S AMHRSORT=""
 W !
 S DIR(0)="S^H:Health Record Number;N:Patient Name;P:Provider who screened;C:Clinic;R:Result of Assessment;D:Date Screened;A:Age of Patient at Screening;G:Gender of Patient;T:Terminal Digit HRN"
 S DIR("A")="How would you like the list to be sorted",DIR("B")="H"
 KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G LIST
 S AMHRSORT=Y
DP ;
 S AMHRDP=""
 W !
 S DIR(0)="Y",DIR("A")="Display the Patient's Designated Providers on the list",DIR("B")="N" KILL DA D ^DIR KILL DIR
 I $D(DIRUT) G LIST
 S AMHRDP=Y
DEMO ;
 D DEMOCHK^AMHUTIL1(.AMHDEMO)
 I AMHDEMO=-1 G LIST
ZIS ;CALL TO XBDBQUE
 S DIR(0)="S^P:PRINT Output;B:BROWSE Output on Screen",DIR("A")="Do you wish to ",DIR("B")="P" K DA D ^DIR K DIR
 I $D(DIRUT) G XIT
 I $G(Y)="B" D BROWSE,XIT Q
 S XBRP="PRINT^AMHRSR1P",XBRC="PROC^AMHRSR1",XBRX="XIT^AMHRSR1",XBNS="AMH"
 D ^XBDBQUE
 D XIT
 Q
BROWSE ;
 S XBRP="VIEWR^XBLM(""^AMHRSR1P"")"
 S XBNS="AMH",XBRC="PROC^AMHRSR1",XBRX="XIT^AMHRSR1",XBIOP=0 D ^XBDBQUE
 Q
XIT ;
 D EN^XBVK("AMHR")
 D ^XBFMK
 Q
PROC ;
 S AMHRCNT=0
 S AMHRH=$H,AMHRJ=$J
 K ^XTMP("AMHRSR1",AMHRJ,AMHRH)
 D XTMP^AMHUTIL("AMHRSR1","SUICIDE RISK ASSESSMENT REPORT")
 ;now go through BH
 S AMHRSD=$$FMADD^XLFDT(AMHRBD,-1),AMHRSD=AMHRSD_".9999"
 F  S AMHRSD=$O(^AMHREC("B",AMHRSD)) Q:AMHRSD'=+AMHRSD!($P(AMHRSD,".")>AMHRED)  D
 .S AMHRBIEN=0 F  S AMHRBIEN=$O(^AMHREC("B",AMHRSD,AMHRBIEN)) Q:AMHRBIEN'=+AMHRBIEN  D
 ..S AMHRDATE=$P(AMHRSD,".")
 ..Q:'$D(^AMHREC(AMHRBIEN,0))
 ..Q:$P($G(^AMHREC(AMHRBIEN,14)),U,7)=""
 ..Q:'$$ALLOWVI^AMHUTIL(DUZ,AMHRBIEN)
 ..Q:AMHRDATE>AMHRED
 ..Q:AMHRDATE<AMHRBD
 ..S DFN=$P(^AMHREC(AMHRBIEN,0),U,8)
 ..Q:DFN=""
 ..Q:$$DEMO^AMHUTIL1(DFN,$G(AMHDEMO))
 ..;S X=$O(^XTMP("AMHRSR1",AMHRJ,AMHRH,"PTS",DFN,0))
 ..;I X]"",X<AMHRDATE K ^XTMP("AMHRSR1",AMHRJ,AMHRH,"PTS",DFN,X)
 ..S AMHRRES=$$VAL^XBDIQ1(9002011,AMHRBIEN,1407) S:AMHRRES["REFUSED" AMHRRES="REFUSED SCREENING"
 ..S ^XTMP("AMHRSR1",AMHRJ,AMHRH,"PTS",DFN,AMHRDATE)="BH"_U_$$BHPPNAME(AMHRBIEN)_U_AMHRRES_U_$$VAL^XBDIQ1(9002011,AMHRBIEN,1901)_U_$$AGE^AUPNPAT(DFN,AMHRDATE)_U_$$VAL^XBDIQ1(2,DFN,.02)_U_AMHRDATE_U_AMHRBIEN
 ..S $P(^XTMP("AMHRSR1",AMHRJ,AMHRH,"PTS",DFN,AMHRDATE),U,9)=$$VAL^XBDIQ1(9002011,AMHRBIEN,.25)
 ..S $P(^XTMP("AMHRSR1",AMHRJ,AMHRH,"PTS",DFN,AMHRDATE),U,15)=AMHRBIEN
 ..S $P(^XTMP("AMHRSR1",AMHRJ,AMHRH,"PTS",DFN,AMHRDATE),U,16)=$S($P($G(^AMHREC(AMHRBIEN,14)),U,8):$$VAL^XBDIQ1(9002011,AMHRBIEN,1408),1:"UNKNOWN")
 ..S $P(^XTMP("AMHRSR1",AMHRJ,AMHRH,"PTS",DFN,AMHRDATE),U,17)=$$VAL^XBDIQ1(9000001,DFN,.14)
 ..S $P(^XTMP("AMHRSR1",AMHRJ,AMHRH,"PTS",DFN,AMHRDATE),U,18)=$$VAL^XBDIQ1(9002011.55,DFN,.02)
 ..S $P(^XTMP("AMHRSR1",AMHRJ,AMHRH,"PTS",DFN,AMHRDATE),U,19)=$$VAL^XBDIQ1(9002011.55,DFN,.03)
 ..S $P(^XTMP("AMHRSR1",AMHRJ,AMHRH,"PTS",DFN,AMHRDATE),U,20)=$$VAL^XBDIQ1(9002011.55,DFN,.04)
 ;go through exam SRA, then through AUPNPREF for refusals
 Q:'AMHREXPC
 S AMHREIEN=0 F  S AMHREIEN=$O(^AUPNVXAM("B",AMHREXC,AMHREIEN)) Q:AMHREIEN'=+AMHREIEN  D
 .Q:'$D(^AUPNVXAM(AMHREIEN,0))
 .S DFN=$P(^AUPNVXAM(AMHREIEN,0),U,2)
 .Q:'$$ALLOWP^AMHUTIL(DUZ,DFN)
 .Q:$$DEMO^AMHUTIL1(DFN,$G(AMHDEMO))
 .S AMHRVIEN=$P(^AUPNVXAM(AMHREIEN,0),U,3)
 .Q:'AMHRVIEN
 .Q:'$$ALLOWPCC^AMHUTIL(DUZ,AMHRVIEN)  ;
 .S AMHRDATE=$P($P($G(^AUPNVSIT(AMHRVIEN,0)),U),".")
 .Q:AMHRDATE=""
 .Q:AMHRDATE>AMHRED
 .Q:AMHRDATE<AMHRBD
 .Q:$D(^XTMP("AMHRSR1",AMHRJ,AMHRH,"PTS",DFN,AMHRDATE))  ;already got one from BH on this date
 .;S X=$O(^XTMP("AMHRSR1",AMHRJ,AMHRH,"PTS",DFN,0))
 .;I X]"",X<AMHRDATE K ^XTMP("AMHRSR1",AMHRJ,AMHRH,"PTS",DFN,X)
 .S AMHRRES=$$VAL^XBDIQ1(9000010.13,AMHREIEN,.04) S:AMHRRES["REFUSED" AMHRRES="REFUSED SCREENING"
 .S ^XTMP("AMHRSR1",AMHRJ,AMHRH,"PTS",DFN,AMHRDATE)="EX"_U_$$PPV(AMHRVIEN)_U_AMHRRES_U_$$VAL^XBDIQ1(9000010.13,AMHREIEN,81101)_U_$$AGE^AUPNPAT(DFN,AMHRDATE)_U_$$VAL^XBDIQ1(2,DFN,.02)_U_AMHRDATE_U_AMHREIEN
 .S $P(^XTMP("AMHRSR1",AMHRJ,AMHRH,"PTS",DFN,AMHRDATE),U,9)=$$VAL^XBDIQ1(9000010,AMHRVIEN,.08)
 .S $P(^XTMP("AMHRSR1",AMHRJ,AMHRH,"PTS",DFN,AMHRDATE),U,15)=AMHRVIEN
 .S $P(^XTMP("AMHRSR1",AMHRJ,AMHRH,"PTS",DFN,AMHRDATE),U,16)=$$SPRV(AMHREIEN)
 .S $P(^XTMP("AMHRSR1",AMHRJ,AMHRH,"PTS",DFN,AMHRDATE),U,17)=$$VAL^XBDIQ1(9000001,DFN,.14)
 .S $P(^XTMP("AMHRSR1",AMHRJ,AMHRH,"PTS",DFN,AMHRDATE),U,18)=$$VAL^XBDIQ1(9002011.55,DFN,.02)
 .S $P(^XTMP("AMHRSR1",AMHRJ,AMHRH,"PTS",DFN,AMHRDATE),U,19)=$$VAL^XBDIQ1(9002011.55,DFN,.03)
 .S $P(^XTMP("AMHRSR1",AMHRJ,AMHRH,"PTS",DFN,AMHRDATE),U,20)=$$VAL^XBDIQ1(9002011.55,DFN,.04)
 ;now go through refusals in pcc
 S AMHRRIEN=0 F  S AMHRRIEN=$O(^AUPNPREF(AMHRRIEN)) Q:AMHRRIEN'=+AMHRRIEN  D
 .Q:'$D(^AUPNPREF(AMHRRIEN,0))
 .Q:$P(^AUPNPREF(AMHRRIEN,0),U,5)'=9999999.15
 .Q:$P(^AUPNPREF(AMHRRIEN,0),U,6)'=AMHREXC
 .S AMHRDATE=$P(^AUPNPREF(AMHRRIEN,0),U,3)
 .Q:AMHRDATE=""
 .Q:AMHRDATE>AMHRED
 .Q:AMHRDATE<AMHRBD
 .S DFN=$P(^AUPNPREF(AMHRRIEN,0),U,2)
 .Q:'$$ALLOWP^AMHUTIL(DUZ,DFN)
 .Q:$D(^XTMP("AMHRSR1",AMHRJ,AMHRH,"PTS",DFN,AMHRDATE))  ;already got one from BH on this date
 .;S X=$O(^XTMP("AMHRSR1",AMHRJ,AMHRH,"PTS",DFN,0))
 .;I X]"",X<AMHRDATE K ^XTMP("AMHRSR1",AMHRJ,AMHRH,"PTS",DFN,X)
 .S AMHRRES=$$VAL^XBDIQ1(9000022,AMHRRIEN,.07) S:AMHRRES["REFUSED" AMHRRES="REFUSED SCREENING"
 .S ^XTMP("AMHRSR1",AMHRJ,AMHRH,"PTS",DFN,AMHRDATE)="REF"_U_"UNKNOWN"_U_AMHRRES_U_$$VAL^XBDIQ1(9000022,AMHRRIEN,1101)_U_$$AGE^AUPNPAT(DFN,AMHRDATE)_U_$$VAL^XBDIQ1(2,DFN,.02)_U_AMHRDATE_U_AMHRRIEN_U
 .S $P(^XTMP("AMHRSR1",AMHRJ,AMHRH,"PTS",DFN,AMHRDATE),U,16)=$$PRVREF(AMHRRIEN)
 .S $P(^XTMP("AMHRSR1",AMHRJ,AMHRH,"PTS",DFN,AMHRDATE),U,17)=$$VAL^XBDIQ1(9000001,DFN,.14)
 .S $P(^XTMP("AMHRSR1",AMHRJ,AMHRH,"PTS",DFN,AMHRDATE),U,18)=$$VAL^XBDIQ1(9002011.55,DFN,.02)
 .S $P(^XTMP("AMHRSR1",AMHRJ,AMHRH,"PTS",DFN,AMHRDATE),U,19)=$$VAL^XBDIQ1(9002011.55,DFN,.03)
 .S $P(^XTMP("AMHRSR1",AMHRJ,AMHRH,"PTS",DFN,AMHRDATE),U,20)=$$VAL^XBDIQ1(9002011.55,DFN,.04)
 Q
 ;
BHPPNAME(R) ;EP primary provider internal # from 200
 NEW %,%1
 S %=0,%1="" F  S %=$O(^AMHRPROV("AD",R,%)) Q:%'=+%  I $P(^AMHRPROV(%,0),U,4)="P" S %1=$P(^AMHRPROV(%,0),U),%1=$P($G(^VA(200,%1,0)),U)
 I %1]"" Q %1
 Q "UNKNOWN"
SPRV(E) ;
 I $P($G(^AUPNVXAM(E,12)),U,4) Q $$VAL^XBDIQ1(9000010.13,E,1204)
 Q "UNKNOWN"
PRVREF(R) ;
 I $P($G(^AUPNPREF(R,12)),U,4)]"" Q $$VAL^XBDIQ1(9000022,R,1204)
 Q "UNKNOWN"
PPV(V) ;
 NEW %
 S %=$$PRIMPROV^APCLV(V)
 I %]"" Q %
 Q "UNKNOWN"
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
EOP ;EP - End of page.
 Q:$E(IOST)'="C"
 Q:IO'=IO(0)
 Q:$D(ZTQUEUED)!'(IOT="TRM")!$D(IO("S"))
 NEW DIR
 K DIRUT,DFOUT,DLOUT,DTOUT,DUOUT
 W !
 S DIR("A")="End of Report.  Press Enter",DIR(0)="E" D ^DIR
 Q
 ;----------
USR() ;EP - Return name of current user from ^VA(200.
 Q $S($G(DUZ):$S($D(^VA(200,DUZ,0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ UNDEFINED OR 0")
 ;----------
LOC() ;EP - Return location name from file 4 based on DUZ(2).
 Q $S($G(DUZ(2)):$S($D(^DIC(4,DUZ(2),0)):$P(^(0),U),1:"UNKNOWN"),1:"DUZ(2) UNDEFINED OR 0")
 ;----------