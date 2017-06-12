ABMM2PVH ;IHS/SD/SDR - MU Patient Volume Hospital Report ;
 ;;2.6;IHS 3P BILLING SYSTEM;**11,12,15**;NOV 12, 2009;Build 251
 ;IHS/SD/SDR - 2.6*15 - HEAT161159 - Changed PT LST to sort differently so there won't be duplicate vsts on pt lst.
 ;IHS/SD/SDR - 2.6*15 - HEAT156874 - Change for <SUBSCR>PTDATA+16^ABMM2PV7.  Occurs when patient is missing from visit.
 ;IHS/SD/SDR - 2.6*15 - Added tag XIT and call to it in double queuer so global would get killed; it was hanging around and causing more data to print than should.
 ;IHS/SD/SDR - 2.6*15 - Changed insurer type FPL to P
 ;
EN ;
 I $P($G(^ABMMUPRM(1,0)),U,2)="" D  Q
 .W !!,"Setup has not been done.  Please do MUP option prior to running any reports",!
 .S DIR(0)="E",DIR("A")="Enter RETURN to Continue" D ^DIR K DIR
 ;
 K ^XTMP("ABM-PVH2",$J)
 K ABMDX
 S ABMY("RTYP")="HOS"
 D FAC^ABMM2PVP Q:'$D(ABMF)&($D(DTOUT)!$D(DUOUT)!$D(DIRUT)!$D(DIROUT))
 M ABMFAC=ABMF
 ;
 W !!,"In order for an Eligible Hospital (EH) to participate in the Medicaid EHR"
 W !,"Incentive program EHs have to meet a minimum patient volume requirement of 10%."
 W !!,"For EHs the participation year is based on a federal fiscal year, this is the"
 W !,"same year that the EH would be demonstrating Meaningful use. (Federal Fiscal"
 W !,"Year is October 1 - September 30.)"
 ;
 D PARTYR^ABMM2PVP Q:$D(DTOUT)!$D(DUOUT)!$D(DIRUT)!$D(DIROUT)  ;part. year
 D SELINS^ABMM2PVP
 D 90DAY^ABMM2PVP Q:$D(DTOUT)!$D(DUOUT)!$D(DIRUT)!$D(DIROUT)  ;select 90-day
 I $G(ABMY("90"))="" K ABMY,ABMF G EN
 D RFORMAT^ABMM2PVP Q:$D(DTOUT)!$D(DUOUT)!$D(DIRUT)!$D(DIROUT)  ;summ or pt list
 D SUMMARY^ABMM2PVP Q:$D(DTOUT)!$D(DUOUT)!$D(DIRUT)!$D(DIROUT)  ;summ of selections
 D ^XBFMK
 S DIR(0)="S^P:Print Report;R:Return to Selection Criteria -Erases ALL previous selections"
 S DIR("A")="<P> to Print or <R> to Reselect"
 I ABMY("RFMT")="P" D
 .S DIR(0)="S^P:Print Report;H:Print Delimited Report to the HOST FILE;R:Return to Selection Criteria -Erases ALL previous selections"
 .S DIR("A")="<P> to Print, <H> to Host File, or <R> to Reselect"
 D ^DIR K DIR Q:$D(DTOUT)!$D(DUOUT)!$D(DIRUT)!$D(DIROUT)
 I $P(Y,U)="R" K ABMY,ABMF G EN
 I $P(Y,U)="H" D  Q  ;HFS -prompt path/filename
 .D ^XBFMK
 .S DIR(0)="F"
 .S DIR("A")="Enter Path"
 .S DIR("B")=$P($G(^ABMDPARM(DUZ(2),1,4)),"^",7)
 .D ^DIR K DIR
 .I $G(Y)["^" S POP=1 Q
 .S ABMPATH=$S($G(Y)="":ABMPATH,1:Y)
 .D ^XBFMK
 .S DIR(0)="F"
 .S DIR("A")="Enter filename"
 .D ^DIR K DIR
 .I $G(Y)["^" S POP=1 Q
 .S ABMFN=Y
 .D COMPUTE^ABMM2PVH
 ;S ABMQ("RX")="POUT^ABMDRUTL"  ;abm*2.6*15
 S ABMQ("RX")="XIT^ABMM2PVP"  ;made it so report has its own exit routine  ;abm*2.6*15
 S ABMQ("NS")="ABM"
 S ABMQ("RP")="COMPUTE^ABMM2PVH"
 D ^ABMDRDBQ
 Q
 ;start new abm*2.6*15
XIT ;EP - exit option for report
 D ^XBFMK
 K ^XTMP("ABM-PVH2",$J)
 Q
 ;end new abm*2.6*15
COMPUTE ;EP - gather data
 ;specified 90-day
 I ABMY("90")="B" D  Q
 .S X1=ABMY("SDT")
 .S X2=89
 .D C^%DTC
 .S ABMY("EDT")=X
 .D VISITS
 .D BILLS
 .D ENROLL
 .D CALC
 .D PRINT
 ;
 ;User specified
 I ABMY("90")="C" D  Q
 .D VISITS
 .D BILLS
 .D ENROLL
 .D CALC
 .D PRINT
 ;
 ;automated
 I ABMY("90")="A" D
 .S ABMY("SDT")=(ABMY("QYR")-1701)_"1001"
 .S ABMY("EDT")=(ABMY("QYR")-1700)_"0930"
 D VISITS
 D BILLS
 D ENROLL
 D CALC
 ;
 D PRINT
 Q
VISITS ;
 S ABMFILE="AUPNVINP"
 S ABMSDT=ABMY("SDT")
 S ABMEDT=ABMY("EDT")+.999999
 F  S ABMSDT=$O(^AUPNVINP("B",ABMSDT)) Q:'ABMSDT!(ABMSDT>ABMEDT)  D
 .S ABMVIEN=0
 .F  S ABMVIEN=$O(^AUPNVINP("B",ABMSDT,ABMVIEN)) Q:'ABMVIEN  D
 ..S ABMVDFN=$$GET1^DIQ(9000010.02,ABMVIEN,.03,"I")
 ..S ABMSCAT=$$GET1^DIQ(9000010,ABMVDFN,.07,"I")  ;service cat
 ..S ABMCLNC=$$GET1^DIQ(9000010,ABMVDFN,.08,"I")  ;clinic
 ..Q:$$GET1^DIQ(9000010,ABMVDFN,".05","E")["DEMO,PATIENT"  ;abm*2.6*15 HEAT161159 remove demo patients from list
 ..S ABMPT=$$GET1^DIQ(9000010,ABMVDFN,.05,"I")  ;pt
 ..S ABMP("VDT")=$P($$GET1^DIQ(9000010.02,ABMVIEN,.01,"I"),".")  ;disch dt
 ..D VISITCK
 S ABMSDT=ABMY("SDT")
 S ABMEDT=ABMY("EDT")+.999999
 S ABMFILE="AUPNVSIT"
 F  S ABMSDT=$O(^AUPNVSIT("B",ABMSDT)) Q:'ABMSDT!(ABMSDT>ABMEDT)  D
 .S ABMVDFN=0
 .F  S ABMVDFN=$O(^AUPNVSIT("B",ABMSDT,ABMVDFN)) Q:'ABMVDFN  D
 ..I ($D(^XTMP("ABM-PVH2",$J,"VISITS",ABMVDFN))) Q  ;already cnt'ed this vst on rpt
 ..S ABMSCAT=$$GET1^DIQ(9000010,ABMVDFN,.07,"I")  ;service cat
 ..S ABMCLNC=$$GET1^DIQ(9000010,ABMVDFN,.08,"I")  ;clinic
 ..Q:$$GET1^DIQ(9000010,ABMVDFN,".05","E")["DEMO,PATIENT"  ;abm*2.6*15 HEAT161159 remove demo patients from list
 ..S ABMPT=$$GET1^DIQ(9000010,ABMVDFN,.05,"I")  ;pt
 ..S ABMP("VDT")=$P($$GET1^DIQ(9000010,ABMVDFN,.01,"I"),".")  ;vst dt
 ..D VISITCK
  Q
VISITCK ;EP
 ;serv cat MUST be H, or (A w/clinic=30)
 K ABMFLG,ABMCKDT
 I ABMFILE="AUPNVINP",ABMSCAT="H" S ABMFLG=1
 I (ABMFILE="AUPNVSIT")&((ABMSCAT="A")&(ABMCLNC=30)) S ABMFLG=1
 Q:(+$G(ABMFLG)=0)
 S ABMVLOC=$$GET1^DIQ(9000010,ABMVDFN,.06,"I")
 ;I ($$GET1^DIQ(9000010,ABMVDFN,.12)'="")&(ABMSDT>$$GET1^DIQ(9000010,ABMVDFN,.12,"I")&($$GET1^DIQ(9000010,ABMVDFN,1111,"I")'="R")) Q
 I (ABMFILE="AUPNVSIT")&($$GET1^DIQ(9000010,ABMVDFN,.12)'="")&($$GET1^DIQ(9000010,$$GET1^DIQ(9000010,ABMVDFN,.12,"I"),1111,"I")'="R") Q
 I (ABMFILE="AUPNVSIT")&($$GET1^DIQ(9000010,ABMVDFN,.12)="")&($$GET1^DIQ(9000010,ABMVDFN,1111,"I")'="R") Q
 Q:'$D(ABMF(ABMVLOC))  ;not selected loc
 D CALCDTS^ABMM2PV1
 S ABMDTFLG=0
 S ABMP("BDT")=ABMP("BSDT")
 F  D  Q:ABMDTFLG=1
 .I ABMP("VDT")<ABMP("BSDT") Q  ;vst is before 90-day window
 .S ^XTMP("ABM-PVH2",$J,"LOC-DENOM",ABMP("BDT"))=+$G(^XTMP("ABM-PVH2",$J,"LOC-DENOM",ABMP("BDT")))+1
 .S ^XTMP("ABM-PVH2",$J,"LOC-DENOM",ABMP("BDT"),ABMVLOC)=+$G(^XTMP("ABM-PVH2",$J,"LOC-DENOM",ABMP("BDT"),ABMVLOC))+1
 .S ^XTMP("ABM-PVH2",$J,"PT VSTS",ABMPT,ABMSDT,ABMVDFN)=""  ;list of vsts by pt,DOS
 .S ^XTMP("ABM-PVH2",$J,"VISITS",ABMVDFN)=""  ;list of vsts to chk for pymt
 .S ^XTMP("ABM-PVH2",$J,"VISIT CNT",ABMP("BDT"))=+$G(^XTMP("ABM-PVH2",$J,"VISIT CNT",ABMP("BDT")))+1  ;cnt of vsts
 .S ^XTMP("ABM-PVH2",$J,"ALL VISITS",ABMP("BDT"),ABMVDFN)=""  ;list of all vsts looked at
 .S ^XTMP("ABM-PVH2",$J,"ALL VISIT CNT")=+$G(^XTMP("ABM-PVH2",$J,"ALL VISIT CNT"))+1  ;cnt all vsts
 .;I ^XTMP("ABM-PVH2",$J,"ALL VISIT CNT")#1000 U IO(0) W "."  ;abm*2.6*15
 .I (^XTMP("ABM-PVH2",$J,"ALL VISIT CNT")#1000&(IOST["C")) U IO(0) W "."  ;abm*2.6*15 only write dots if to screen; was writing dots to HFS file
 .K ABMITYP,ABMDX
 .D PTDATA
 .S X1=ABMP("BDT")
 .S X2=1
 .D C^%DTC
 .I X>ABMP("BEDT") S ABMDTFLG=1 Q
 .S ABMP("BDT")=X
 Q
BILLS ;EP
 S ABMCNT=0
 S ABMDUZ2=0
 S ABMFOUND=0
 F  S ABMDUZ2=$O(^ABMDBILL(ABMDUZ2)) Q:'ABMDUZ2  D
 .Q:'$D(^ABMDBILL(ABMDUZ2,0))
 .S ABMVDFN=0
 .F  S ABMVDFN=$O(^XTMP("ABM-PVH2",$J,"VISITS",ABMVDFN)) Q:'ABMVDFN  D
 ..I (+$G(^XTMP("ABM-PVH2",$J,"VISITS",ABMVDFN)))=1 Q  ;already cnt'd this vst on rpt
 ..Q:'$D(^ABMDBILL(ABMDUZ2,"AV",ABMVDFN))  ;vst not under this DUZ(2)
 ..K ABMBILLN,ABMSAV
 ..S ABMP("BDFN")=0
 ..F  S ABMP("BDFN")=$O(^ABMDBILL(ABMDUZ2,"AV",ABMVDFN,ABMP("BDFN"))) Q:'ABMP("BDFN")  D  Q:(+$G(^XTMP("ABM-PVH2",$J,"VISITS",ABMVDFN)))=1
 ...S (ABMBILLN,ABMSAV)=$P($G(^ABMDBILL(ABMDUZ2,ABMP("BDFN"),0)),U)
 ...I $P($G(^ABMDBILL(ABMDUZ2,ABMP("BDFN"),0)),U,4)="X" Q
 ...S ABMSDT=$P($$GET1^DIQ(9000010,ABMVDFN,".01","I"),".")
 ...I +$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),6)),U,3)'=0 S ABMSDT=$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),6)),U,3)
 ...S ABMVLOC=$P($G(^ABMDBILL(ABMDUZ2,ABMP("BDFN"),0)),U,3)
 ...S ABMP("VDT")=$P($G(^ABMDBILL(ABMDUZ2,ABMP("BDFN"),7)),U)
 ...S ABMINS=$P($G(^ABMDBILL(ABMDUZ2,ABMP("BDFN"),0)),U,8)
 ...S ABMPT=$P($G(^ABMDBILL(ABMDUZ2,ABMP("BDFN"),0)),U,5)
 ...K ABMDX
 ...D PRIMPOV^ABMM2PV7
 ...D ARBILLS
 ...I +$G(ABMFOUND)=1 D OTHERVST  ;chk for other vsts on DOS to mark as pd
 ..;
 ..;now look thru bills found & remove zero pays when pymt found
 ..S ABMP("BDT")=0
 ..F  S ABMP("BDT")=$O(^XTMP("ABM-PVH2",$J,"LOC-NUM PD BILLS",ABMP("BDT"))) Q:'ABMP("BDT")  D
 ...S ABMGRP=""
 ...F  S ABMGRP=$O(^XTMP("ABM-PVH2",$J,"LOC-NUM PD BILLS",ABMP("BDT"),ABMGRP)) Q:ABMGRP=""  D
 ....S ABMP("VDFN")=0
 ....F  S ABMP("VDFN")=$O(^XTMP("ABM-PVH2",$J,"LOC-NUM PD BILLS",ABMP("BDT"),ABMGRP,ABMP("VDFN"))) Q:'ABMP("VDFN")  D
 .....S ABMP("BDFN")=0
 .....F  S ABMP("BDFN")=$O(^XTMP("ABM-PVH2",$J,"LOC-NUM PD BILLS",ABMP("BDT"),ABMGRP,ABMP("VDFN"),ABMP("BDFN"))) Q:'ABMP("BDFN")  D
 ......I $D(^XTMP("ABM-PVH2",$J,"LOC-NUM ZEROPD BILLS",ABMP("BDT"),ABMGRP,ABMP("VDFN"),ABMP("BDFN"))) D
 .......K ^XTMP("ABM-PVH2",$J,"LOC-NUM ZEROPD BILLS",ABMP("BDT"),ABMGRP,ABMP("VDFN"),ABMP("BDFN"))
 ......S ^XTMP("ABM-PVH2",$J,"LOC-NUM PD",ABMP("BDT"),ABMGRP)=+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM PD",ABMP("BDT"),ABMGRP))+1
 ......S ^XTMP("ABM-PVH2",$J,"LOC-NUM PD",ABMP("BDT"),ABMVLOC,ABMGRP)=+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM PD",ABMP("BDT"),ABMVLOC,ABMGRP))+1
 ..K ^XTMP("ABM-PVH2",$J,"LOC-NUM PD BILLS")
 ..;
 ..S ABMP("BDT")=0
 ..F  S ABMP("BDT")=$O(^XTMP("ABM-PVH2",$J,"LOC-NUM ZEROPD BILLS",ABMP("BDT"))) Q:'ABMP("BDT")  D
 ...S ABMGRP=""
 ...F  S ABMGRP=$O(^XTMP("ABM-PVH2",$J,"LOC-NUM ZEROPD BILLS",ABMP("BDT"),ABMGRP)) Q:ABMGRP=""  D
 ....S ABMP("VDFN")=0
 ....F  S ABMP("VDFN")=$O(^XTMP("ABM-PVH2",$J,"LOC-NUM ZEROPD BILLS",ABMP("BDT"),ABMGRP,ABMP("VDFN"))) Q:'ABMP("VDFN")  D
 .....S ABMP("BDFN")=0
 .....F  S ABMP("BDFN")=$O(^XTMP("ABM-PVH2",$J,"LOC-NUM ZEROPD BILLS",ABMP("BDT"),ABMGRP,ABMP("VDFN"),ABMP("BDFN"))) Q:'ABMP("BDFN")  D
 ......S ^XTMP("ABM-PVH2",$J,"LOC-NUM ZEROPD",ABMP("BDT"),ABMVLOC,ABMGRP)=+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM ZEROPD",ABMP("BDT"),ABMVLOC,ABMGRP))+1
 ......S ^XTMP("ABM-PVH2",$J,"LOC-NUM ZEROPD",ABMP("BDT"),ABMGRP)=+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM ZEROPD",ABMP("BDT"),ABMGRP))+1
 ..K ^XTMP("ABM-PVH2",$J,"LOC-NUM ZEROPD BILLS")
 Q
ARBILLS ;EP
 S ABMBILLN=+ABMBILLN_" "
 S ABMSAV=+ABMSAV
 F  S ABMBILLN=$O(^BARBL(ABMPAR,"B",ABMBILLN)) Q:$G(ABMBILLN)=""!(ABMBILLN'[ABMSAV)  D  Q:(+$G(^XTMP("ABM-PVH2",$J,"VISITS",ABMVDFN)))=1
 .S ABMARIEN=0
 .S ABMHOLD=DUZ(2)
 .S DUZ(2)=ABMPAR
 .F  S ABMARIEN=$O(^BARBL(DUZ(2),"B",ABMBILLN,ABMARIEN)) Q:'ABMARIEN  D  Q:(+$G(^XTMP("ABM-PVH2",$J,"VISITS",ABMVDFN)))=1
 ..S ABMARACT=$$GET1^DIQ(90050.01,ABMARIEN_",",3,"I")  ;A/R BILL, A/R ACCOUNT
 ..K ABMTRAMT,ABMTRIEN
 ..S D0=ABMARACT
 ..S ABMITYP=$$VALI^BARVPM(8)   ;GET 'VIP INSURER TYPE' CODE
 ..I ABMITYP="FPL" S ABMITYP="P"  ;change FPL to P abm*2.6*15 HEAT161159
 ..S ABMGRP=$S(ABMITYP="D":"MCD",$D(ABMI("INS",ABMINS)):"CHIP",1:"OTHR")
 ..S ABMABILN=$P($G(^BARBL(DUZ(2),ABMARIEN,0)),U)
 ..;I "^MCD^CHIP^"'[("^"_ABMGRP_"^") Q
 ..;S ^XTMP("ABM-PVH2",$J,"VISITS",ABMVDFN)=1
 ..I "^MCD^CHIP^"[("^"_ABMGRP_"^") S ^XTMP("ABM-PVH2",$J,"VISITS",ABMVDFN)=1
 ..I "^MCD^CHIP^"'[("^"_ABMGRP_"^") S ^XTMP("ABM-PVH2",$J,"VISITS",ABMVDFN)=2
 ..;
 ..D CALCDTS^ABMM2PV1
 ..S ABMDTFLG=0
 ..S ABMP("BDT")=ABMP("BSDT")
 ..F  D  Q:ABMDTFLG=1
 ...I (ABMCNT#1000&(IOST["C")) W "."
 ...S ABMCNT=+$G(ABMCNT)+1
 ...D PTDATA
 ...S X1=ABMP("BDT")
 ...S X2=1
 ...D C^%DTC
 ...I X>ABMP("BEDT") S ABMDTFLG=1 Q
 ...S ABMP("BDT")=X
 ..;
 ..D TRANS
 ..S DUZ(2)=ABMHOLD
 Q
TRANS ;EP
 D TRANS^ABMM2PH3  ;abm*2.6*15 split routine due to size
 Q
ZEROPD ;EP
 D ZEROPD^ABMM2PH3  ;abm*2.6*15 split routine due to size
 Q
OTHERVST ;EP
 D OTHERVST^ABMM2PH3  ;abm*2.6*15 split routine due to size
 Q
PTDATA ;EP
 D PTDATA^ABMM2PH3  ;abm*2.6*15 split routine due to size
 Q
CALC ;EP
 D CALC^ABMM2PH2
 Q
PRINT ;EP
 I ABMY("RFMT")="P",$G(ABMFN)'="" D PTHSTFL^ABMM2PH1 Q
 S ABMVLOC=0
 F  S ABMVLOC=$O(ABMFAC(ABMVLOC)) Q:'ABMVLOC  D  D PAZ^ABMDRUTL Q:$D(DTOUT)!$D(DUOUT)!$D(DIROUT)
 .S ABM("PG")=1
 .S ABMSDT=$P($G(^XTMP("ABM-PVH2",$J,"LOC TOP",ABMVLOC)),U,2)
 .I +$G(^XTMP("ABM-PVH2",$J,"LOC TOP",ABMVLOC))>9.5 S ABMPMET=1
 .D HDR^ABMM2PV3
 .W !,"Hospital used in this report: ",$$GET1^DIQ(9999999.06,ABMVLOC,.01,"E"),$S($D(^ABMMUPRM(1,1,"B",ABMVLOC)):" (FQHC/RHC/Tribal/Urban)",1:""),!
 .S ABMPMET=0
 .I ABMY("RFMT")="P" D PATIENT^ABMM2PH1 Q
 .I +$G(^XTMP("ABM-PVH2",$J,"LOC TOP",ABMVLOC))>9.5 D MET^ABMM2PH1 Q
 .D NOTMET^ABMM2PH1
 K ^XTMP("ABM-PVH2",$J)
 Q
ENROLL ;EP
 D ENROLL^ABMM2PH2
 Q