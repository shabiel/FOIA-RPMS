ABMUCASH ; IHS/SD/SDR - 3PB/UFMS Cashiering Options   
 ;;2.6;IHS 3P BILLING SYSTEM;;NOV 12, 2009
 ;
 ; New routine - v2.5 p12 SDD item 4.9.1
 ; Cashiering Sign In/Sign Out option
EP ;EP
 S ABMFD=$$FINDOPEN^ABMUCUTL(DUZ)
 S ABMTRIBL=$P($G(^ABMDPARM(ABMLOC,1,4)),U,14)  ;export flag
 S $P(ABMLINE,"-",80)=""
 ;NO open session found
 I ABMFD=0 D
 .D SIG^XUSESIG  ;ask electronic signature
 .Q:X1=""  ;elec signature test
 .S ABMSNUM=$$CR8SESS^ABMUCUTL()  ;create session
 .I ABMSNUM=0 W !,"NEW SESSION COULD NOT BE CREATED" Q
 .W !!,"YOU ARE SIGNING *IN* FOR BILLING",!
 .W !?10,$$EN^ABMVDF("ULN"),"Billing Activity",$$EN^ABMVDF("ULF")
 .W ?40,$$EN^ABMVDF("ULN"),"COUNT",$$EN^ABMVDF("ULF")
 .W ?60,$$EN^ABMVDF("ULN"),"TOTAL",$$EN^ABMVDF("ULF"),!
 .W !?15,"- Cancelled Claims",?44,"0"
 .W !?15,"- Approved Bills",?44,"0",?58,"$",?64,"0"
 .W !?15,"- Cancelled Bills",?44,"0",?58,"$",?64,"0"
 .W !!,"Assigned Session number: ",$P(ABMSNUM,U),!
 ;
 ;open session found
 I ABMFD'=0 D
 .W !!,"YOU ARE SIGNING *OUT* FOR BILLING",!
 .D UFMSCK^ABMUMISS
 .W !?10,$$EN^ABMVDF("ULN"),"Billing Activity",$$EN^ABMVDF("ULF")
 .W ?32,$$EN^ABMVDF("ULN"),"COUNT",$$EN^ABMVDF("ULF")
 .W ?45,$$EN^ABMVDF("ULN"),"TOTAL",$$EN^ABMVDF("ULF"),!
 .K ABMSBTOT,ABMSATOT
 .S ABMDUZ=DUZ
 .D CASHTOT(DUZ)
 .S ABMBA=""
 .I '$D(ABMBAL) W !?5,"AT THIS TIME THERE IS NO BILLING ACTIVITY FOR THIS SESSION.",!
 .F  S ABMBA=$O(ABMBAL(ABMBA)) Q:ABMBA=""  D
 ..W !?5,$P($T(@ABMBA),";;",2)
 ..W !?10,"- Cancelled Claims",?33,+$G(ABMBAL(ABMBA,"CCLMS"))
 ..W !?10,"- Approved Bills",?33,+$G(ABMBAL(ABMBA,"ABILLS")),?40,"$",$J($FN(+$G(ABMBAL(ABMBA,"ABAMT")),",",2),10)
 ..I ABMTRIBL=1,(+$G(ABMBAL(ABMBA,"EBILLS"))>0) D
 ...W " "
 ...W $$EN^ABMVDF("RVN")_"(EXCL. ",ABMBAL(ABMBA,"EBILLS")
 ...W $$EN^ABMVDF("RVN")_" @ "_$FN(+$G(ABMBAL(ABMBA,"EBAMT")),",",2)_")"
 ...W $$EN^ABMVDF("RVF")
 ..W !?10,"- Cancelled Bills",?33,+$G(ABMBAL(ABMBA,"CBILLS")),?40,"$",$J($FN(+$G(ABMBAL(ABMBA,"CBAMT")),",",2),10)
 .W !
 .I +$G(ABMBLCNT)'=0 W !?5,"REQUEUED BILLS: ",ABMBLCNT
 .I +$G(ABMBTCNT)'=0 W !?5,"REQUEUED EXPORTS: ",ABMBTCNT
 .W !!,ABMLINE
 .W !?2,"TOTAL CANCELLED CLAIMS:",?33,+$G(ABMCCLMS)
 .W !?2,"TOTAL CANCELLED BILLS:",?33,+$G(ABMCBILL),?40,"$",$J($FN(+$G(ABMCBAMT),",",2),10)
 .W !?2,"TOTAL APPROVED:",?33,+$G(ABMSBTOT),?40,"$",$J($FN(+$G(ABMSATOT),",",2),10)
 .W:(ABMTRIBL=1) !?2,$$EN^ABMVDF("RVN"),"TOTAL EXCLUDED:",?33,+$G(ABMEBILL),?40,"$",$J($FN(+$G(ABMEBAMT),",",2),10),$$EN^ABMVDF("RVF")
 .W !
 .I +$P($G(^ABMUCASH(ABMLOC,10,DUZ,20,ABMFD,0)),U,11)'=0 D
 ..S ABMBCNT=$P($G(^ABMUCASH(ABMLOC,10,DUZ,20,ABMFD,0)),U,11)
 ..W !?3,"There "_$S(ABMBCNT=1:"is ",1:"are "),$S(+ABMBCNT=0:"no",1:ABMBCNT)," "_$S(ABMBCNT=1:"claim/bill",1:"claims/bills")_" for beneficiary patients in this session that will ",!?3,"not be included in the export.",!
 .K DIR,X,Y
 .S DIR(0)="Y"
 .S DIR("A")=" Do you wish to sign out now"
 .S DIR("B")="No"
 .D ^DIR K DIR
 .S ABMSGNIO=+Y
 .I ABMSGNIO=1 D  ;if yes, to signout
 ..K DIR,X,Y
 ..W !
 ..S DIR("A",1)="  By signing out you are confirming the system balances."
 ..S DIR("A")="  Are you sure you wish to sign out"
 ..S DIR(0)="Y"
 ..D ^DIR K DIR
 ..I Y=1 D  ;if yes, confirmed signout
 ...W !!?5,"Done..."
 ...W !?8,"the session ",ABMFD," will be sent to your manager for processing.",!
 ...W !?5,"Signing out of session ",ABMFD,!
 ...D CLOSESES^ABMUCUTL(ABMLOC,DUZ,ABMFD)
 .;view detail of session?
 .W !
 .K DIR,X,Y
 .S DIR("A")="View detail"
 .S DIR(0)="Y"
 .D ^DIR K DIR
 .I Y=1 D SEL
 .;
 .I ABMSGNIO=0 D  ;if no, don't sign out
 ..W !
 ..K DIR,X,Y
 ..S DIR("A")="Do you wish to print the productivity report"
 ..S DIR(0)="Y"
 ..D ^DIR K DIR
 ..I Y=1 D ^ABMDRPR  ;do productivity report (PRRP)
 ;
 S DIR(0)="E",DIR("A")="Enter RETURN to Continue" D ^DIR K DIR
 Q
CASHTOT(ABMDUZ) ;EP - count claims/bills and amounts for session
 ;cancelled claims
 K ABMCCLMS
 S ABMLOC=$$FINDLOC^ABMUCUTL
 S ABMTRIBL=$P($G(^ABMDPARM(ABMLOC,1,4)),U,14)
 S ABMBA=0
 F  S ABMBA=$O(^ABMUCASH(ABMLOC,10,ABMDUZ,20,ABMFD,11,ABMBA)) Q:+ABMBA=0  D
 .S ABMBDAC=$P($G(^ABMUCASH(ABMLOC,10,ABMDUZ,20,ABMFD,11,ABMBA,0)),U)
 .S ABMCDFN=0
 .F  S ABMCDFN=$O(^ABMUCASH(ABMLOC,10,ABMDUZ,20,ABMFD,11,ABMBA,1,ABMCDFN)) Q:+ABMCDFN=0  D
 ..S ABMBAL(ABMBDAC,"CCLMS")=+$G(ABMBAL(ABMBDAC,"CCLMS"))+1
 ..S ABMCCLMS=+$G(ABMCCLMS)+1  ;session counter
 ..S ABMTCCLM=+$G(ABMTCCLM)+1  ;total cancelled claims (multiple sessions)
 ;
 ;approved bills
 K ABMABILL,ABMABAMT
 K ABMEBILL,ABMEBAMT
 S ABMBA=0
 F  S ABMBA=$O(^ABMUCASH(ABMLOC,10,ABMDUZ,20,ABMFD,11,ABMBA)) Q:+ABMBA=0  D
 .S ABMBDAC=$P($G(^ABMUCASH(ABMLOC,10,ABMDUZ,20,ABMFD,11,ABMBA,0)),U)
 .S ABMCDFN=0
 .F  S ABMCDFN=$O(^ABMUCASH(ABMLOC,10,ABMDUZ,20,ABMFD,11,ABMBA,2,ABMCDFN)) Q:+ABMCDFN=0  D
 ..S ABMBAL(ABMBDAC,"ABILLS")=+$G(ABMBAL(ABMBDAC,"ABILLS"))+1  ;total approved bills by budget activity
 ..S ABMABILL=+$G(ABMABILL)+1  ;total approved bills
 ..S ABMSBTOT=+$G(ABMSBTOT)+1
 ..S ABMDUZ2=$P($G(^ABMUCASH(ABMLOC,10,ABMDUZ,20,ABMFD,11,ABMBA,2,ABMCDFN,0)),U,2)
 ..S ABMBDFN=$P($G(^ABMUCASH(ABMLOC,10,ABMDUZ,20,ABMFD,11,ABMBA,2,ABMCDFN,0)),U,3)
 ..S ABMBAL(ABMBDAC,"ABAMT")=+$G(ABMBAL(ABMBDAC,"ABAMT"))+($P($G(^ABMDBILL(ABMDUZ2,ABMBDFN,2)),U))
 ..S ABMSATOT=(+$G(ABMSATOT))+($P($G(^ABMDBILL(ABMDUZ2,ABMBDFN,2)),U))
 ..S ABMABAMT=$G(ABMABAMT)+($P($G(^ABMDBILL(ABMDUZ2,ABMBDFN,2)),U))  ;total approved bill amount
 ..;now check if bill is part of 3P UFMS Exclusion Table
 ..Q:$$BILL^ABMUEAPI(ABMDUZ2,$P($G(^ABMUCASH(ABMLOC,10,ABMDUZ,20,ABMFD,11,ABMBA,2,ABMCDFN,0)),U,3))=1
 ..S ABMBAL(ABMBDAC,"EBILLS")=+$G(ABMBAL(ABMBDAC,"EBILLS"))+1
 ..S ABMEBILL=+$G(ABMEBILL)+1  ;session total
 ..S ABMTEBIL=+$G(ABMTEBIL)+1  ;total bills (multiple sessions)
 ..S ABMBAL(ABMBDAC,"EBAMT")=+$G(ABMBAL(ABMBDAC,"EBAMT"))+($P($G(^ABMDBILL(ABMDUZ2,ABMBDFN,2)),U))
 ..S ABMEBAMT=+$G(ABMEBAMT)+($P($G(^ABMDBILL(ABMDUZ2,ABMBDFN,2)),U))  ;session total
 ..S ABMTEBAM=+$G(ABMTEBAM)+($P($G(^ABMDBILL(ABMDUZ2,ABMBDFN,2)),U))  ;total amount (multiple sessions)
 ;
 ;cancelled bills
 K ABMCBILL,ABMCBAMT
 S ABMBA=0
 F  S ABMBA=$O(^ABMUCASH(ABMLOC,10,ABMDUZ,20,ABMFD,11,ABMBA)) Q:+ABMBA=0  D
 .S ABMBDAC=$P($G(^ABMUCASH(ABMLOC,10,ABMDUZ,20,ABMFD,11,ABMBA,0)),U)
 .S ABMCDFN=0
 .F  S ABMCDFN=$O(^ABMUCASH(ABMLOC,10,ABMDUZ,20,ABMFD,11,ABMBA,3,ABMCDFN)) Q:+ABMCDFN=0  D
 ..S ABMBAL(ABMBDAC,"CBILLS")=+$G(ABMBAL(ABMBDAC,"CBILLS"))+1
 ..S ABMCBILL=$G(ABMCBILL)+1  ;session total
 ..S ABMTCBIL=+$G(ABMTCBIL)+1  ;total bills (multiple sessions)
 ..S ABMDUZ2=$P($G(^ABMUCASH(ABMLOC,10,ABMDUZ,20,ABMFD,11,ABMBA,3,ABMCDFN,0)),U,2)
 ..S ABMBDFN=$P($G(^ABMUCASH(ABMLOC,10,ABMDUZ,20,ABMFD,11,ABMBA,3,ABMCDFN,0)),U,3)
 ..S ABMBAL(ABMBDAC,"CBAMT")=+$G(ABMBAL(ABMBDAC,"CBAMT"))+($P($G(^ABMDBILL(ABMDUZ2,ABMBDFN,2)),U))
 ..S ABMCBAMT=+$G(ABMCBAMT)+($P($G(^ABMDBILL(ABMDUZ2,ABMBDFN,2)),U))  ;session total
 ..S ABMTCBAM=+$G(ABMTCBAM)+($P($G(^ABMDBILL(ABMDUZ2,ABMBDFN,2)),U))  ;total amount (multiple sessions)
 ;
 ;count any requeued bills or batches (no detail)
 K ABMBLCNT,ABMBTCNT
 F ABMI=12,13 D
 .S ABMIEN=0
 .F  S ABMIEN=$O(^ABMUCASH(ABMLOC,10,ABMDUZ,20,ABMFD,ABMI,ABMIEN)) Q:+ABMIEN=0  D
 ..I ABMI=12 S ABMBLCNT=+$G(ABMBLCNT)+1
 ..I ABMI=13 S ABMBTCNT=+$G(ABMBTCNT)+1
 Q
CASHTOTP ;EP - count POS claims
 D CASHTOTP^ABMUUTL
 Q
SEL ;EP
 ; Select device
 S %ZIS="NQ"
 S %ZIS("A")="Enter DEVICE: "
 D ^%ZIS Q:POP
 I IO'=IO(0) D QUE,HOME^%ZIS S DIR(0)="E" D ^DIR K DIR Q
 I $D(IO("S")) S IOP=ION D ^%ZIS
 ;
PRINT ;EP
 ; Callable point for queuing
 S ABME("PG")=0
 D HD
 D DETAIL
 W !!,$$EN^ABMVDF("HIN"),"E N D   O F   R E P O R T",$$EN^ABMVDF("HIF"),!
 I $E(IOST)="C" S DIR(0)="E" D ^DIR K DIR
 I $E(IOST)="P" W $$EN^ABMVDF("IOF")
 I $D(IO("S")) D ^%ZISC
 K ABME
 Q
DETAIL ;EP - view detail of session
 ;
 I $G(ABMDUZ)="" S ABMDUZ=DUZ
 K ABMCCLMS,ABMBAOUT
 S ABMLOC=$$FINDLOC^ABMUCUTL
 ;"regular" claims
 I +$G(ABMDUZ)'=0 D
 .S ABMBA=0
 .F  S ABMBA=$O(^ABMUCASH(ABMLOC,10,ABMDUZ,20,ABMFD,11,ABMBA)) Q:+ABMBA=0  D
 ..S ABMBAOUT=$P($G(^ABMUCASH(ABMLOC,10,ABMDUZ,20,ABMFD,11,ABMBA,0)),U)
 ..F ABMLOOP=1:1:3 D
 ...S ABMCDFN=0
 ...F  S ABMCDFN=$O(^ABMUCASH(ABMLOC,10,ABMDUZ,20,ABMFD,11,ABMBA,ABMLOOP,ABMCDFN)) Q:+ABMCDFN=0  D
 ....S ABMCREC=$G(^ABMUCASH(ABMLOC,10,ABMDUZ,20,ABMFD,11,ABMBA,ABMLOOP,ABMCDFN,0))
 ....S ABMB(ABMBAOUT,ABMLOOP,ABMCDFN)=$P(ABMCREC,U)_"^"_$P(ABMCREC,U,2)_"^"_$P(ABMCREC,U,3)
 .;
 .;count any requeued bills or batches (no detail)
 .K ABMBLCNT,ABMBTCNT
 .F ABMI=12,13 D
 ..S ABMIEN=0
 ..F  S ABMIEN=$O(^ABMUCASH(ABMLOC,10,ABMDUZ,20,ABMFD,ABMI,ABMIEN)) Q:+ABMIEN=0  D
 ...S ABMCREC=$G(^ABMUCASH(ABMLOC,10,ABMDUZ,20,ABMFD,ABMI,ABMIEN,0))
 ...S:ABMI=12 ABMB(ABMI,ABMIEN)=$P(ABMCREC,U)_"^"_$P(ABMCREC,U,2)_"^"_$P(ABMCREC,U,3)
 ...S:ABMI=13 ABMB(ABMI,ABMIEN)=$P(ABMCREC,U)
 ;pos claims
 I $G(ABMDUZ)="POS" S ABMDUZ=1 D
 .S ABMBA=0
 .F  S ABMBA=$O(^ABMUCASH(ABMLOC,20,ABMDUZ,20,ABMFD,11,ABMBA)) Q:+ABMBA=0  D
 ..S ABMBAOUT=$P($G(^ABMUCASH(ABMLOC,20,ABMDUZ,20,ABMFD,11,ABMBA,0)),U)
 ..F ABMLOOP=1:1:3 D
 ...S ABMCDFN=0
 ...F  S ABMCDFN=$O(^ABMUCASH(ABMLOC,20,ABMDUZ,20,ABMFD,11,ABMBA,ABMLOOP,ABMCDFN)) Q:+ABMCDFN=0  D
 ....S ABMCREC=$G(^ABMUCASH(ABMLOC,20,ABMDUZ,20,ABMFD,11,ABMBA,ABMLOOP,ABMCDFN,0))
 ....S ABMB(ABMBAOUT,ABMLOOP,ABMCDFN)=$P(ABMCREC,U)_"^"_$P(ABMCREC,U,2)_"^"_$P(ABMCREC,U,3)
 D DTAILPRT
 Q
HD ;
 I $G(ABME("PG")),$E(IOST)="C" S DIR(0)="E" D ^DIR K DIR Q:(IOST["C")&($G(Y)<0)!($D(DIRUT)!$D(DIROUT)!$D(DTOUT)!$D(DUOUT))
 S ABME("PG")=+$G(ABME("PG"))+1
 W $$EN^ABMVDF("IOF")
 W !,?23,$$EN^ABMVDF("HIN"),"UFMS VIEW CASHIERING SESSION DETAIL",?70,"Page: ",ABME("PG"),$$EN^ABMVDF("HIF")
 W !,"SESSION ID: ",ABMFD,!
 W:ABMDUZ'=1 "BILLER: ",$P($P($G(^VA(200,ABMDUZ,0)),U),",")_","_$E($P($P($G(^VA(200,ABMDUZ,0)),U),",",2),1),!
 W:ABMDUZ=1 "BILLER: POS CLAIMS"
 W:(ABMTRIBL=1) !,"(*) Indicates bills that will be excluded from export"
 W !
 W !,"LOC",?5,"BILL#",?16,"HRN",?24,"PATIENT",?47,"APPROVE DT",?61,"DOS",?71,"BILL AMT"
 W ! F ABMDASH=1:1:80 W "-"
 Q
DTAILPRT ;
 I '$D(ABMB) W !?5,"AT THIS TIME THERE IS NO BILLING ACTIVITY FOR THIS SESSION.",!
 S ABMBAOUT=""
 F  S ABMBAOUT=$O(ABMB(ABMBAOUT)) Q:ABMBAOUT=""  D  Q:+$G(Y)=0&(IOST["C")
 .Q:ABMBAOUT=12!(ABMBAOUT=13)  ;skip requeued bills/exports for now
 .W !!,$P($T(@ABMBAOUT^ABMUCASH),";;",2)
 .F ABMI=1:1:3 D  Q:+$G(Y)=0&(IOST["C")
 ..I ABMI=1,(+$G(ABMBAL(ABMBAOUT,"CCLMS"))'=0) W !?2,"-CANCELLED CLAIMS - ",+$G(ABMBAL(ABMBAOUT,"CCLMS"))
 ..I ABMI=2,(+$G(ABMBAL(ABMBAOUT,"ABILLS"))'=0) D
 ...W !?2,"-APPROVED BILLS - ",+$G(ABMBAL(ABMBAOUT,"ABILLS"))
 ...W ?25," $",$J($FN(+$G(ABMBAL(ABMBAOUT,"ABAMT")),",",2),10)
 ..I ABMI=3,(+$G(ABMBAL(ABMBAOUT,"CBILLS"))'=0) D
 ...W !?2,"-CANCELLED BILLS - ",+$G(ABMBAL(ABMBAOUT,"CBILLS"))
 ...W ?25,"$",$J($FN(+$G(ABMBAL(ABMBAOUT,"CBAMT")),",",2),10)
 ..I '$D(ABMB(ABMBAOUT,ABMI)) D
 ..S ABMBIEN=0
 ..F  S ABMBIEN=$O(ABMB(ABMBAOUT,ABMI,ABMBIEN))  Q:+ABMBIEN=0  D  Q:+$G(Y)=0&(IOST["C")
 ...S ABMDUZ2=$P(ABMB(ABMBAOUT,ABMI,ABMBIEN),U,2)
 ...S ABMBDFN=$P(ABMB(ABMBAOUT,ABMI,ABMBIEN),U,3)
 ...I ABMI'=1 D
 ....S ABME(21)=$P($G(^ABMDBILL(ABMDUZ2,ABMBDFN,2)),U)
 ....S ABME(ABMBAOUT,"AMT")=$G(ABME(ABMBAOUT,"AMT"))+(ABME(21))  ;count bill amt
 ....S ABME("CNT")=+$G(ABME("CNT"))+1  ;count total bills
 ....S ABME("TOT")=+$G(ABME("TOT"))+(ABME(21))  ;count total bill amt
 ....S ABME(71)=$$SDT^ABMDUTL($P($G(^ABMDBILL(ABMDUZ2,ABMBDFN,7)),U))
 ....S ABME(1)=$P($G(^ABMDBILL(ABMDUZ2,ABMBDFN,0)),U)
 ....S ABME(3)=$P($G(^ABMDBILL(ABMDUZ2,ABMBDFN,0)),U,3)
 ....S ABME(5)=$P($G(^ABMDBILL(ABMDUZ2,ABMBDFN,0)),U,5)
 ....S ABME(15)=$$SDT^ABMDUTL($P($G(^ABMDBILL(ABMDUZ2,ABMBDFN,1)),U,5))
 ....S ABME("HRN")=$P($G(^AUPNPAT(+ABME(5),41,+ABMDUZ2,0)),U,2)
 ....S ABME("SUFFIX")=$P($G(^ABMDPARM(ABMDUZ2,1,2)),U,4)
 ....W !,ABME("SUFFIX"),?5,ABME(1),?16,ABME("HRN"),?24,$E($P($G(^DPT(+ABME(5),0)),U),1,22),?47,ABME(15)
 ....W ?58,ABME(71),?69,$J($FN(ABME(21),",",2),10)
 ....I ABMTRIBL=1 D
 .....S ABMP("XMIT")=$O(^ABMDBILL(ABMDUZ2,ABMBDFN,69,"B",999999999),-1)
 .....I +ABMP("XMIT")'=0 D
 ......S ABMXMIT=$O(^ABMDBILL(ABMDUZ2,ABMBDFN,69,"B",ABMP("XMIT"),0))
 ......I $P($G(^ABMDBILL(ABMDUZ2,ABMBDFN,69,ABMXMIT,0)),U,3)=1 W "*"  ;excluded/tribal data
 .....I +ABMP("XMIT")=0 D  ;bill hasn't been transmitted yet
 ......I $$BILL^ABMUEAPI(ABMDUZ2,ABMBDFN)=0 W "*"  ;excluded/tribal data
 ...I ABMI=1 D
 ....;S ABME(ABMBAOUT,"AMT")=$G(ABME(ABMBAOUT,"AMT"))+(ABME(21))  ;count bill amt
 ....S ABME("CNT")=+$G(ABME("CNT"))+1  ;count total bills
 ....;S ABME("TOT")=+$G(ABME("TOT"))+(ABME(21))  ;count total bill amt
 ....S ABME(21)=$$SDT^ABMDUTL($P($G(^ABMCCLMS(ABMDUZ2,ABMBDFN,0)),U,2))
 ....S ABME(1)=ABMBDFN
 ....S ABME(3)=$P($G(^ABMCCLMS(ABMDUZ2,ABMBDFN,0)),U,3)
 ....S ABME(5)=$P($G(^ABMCCLMS(ABMDUZ2,ABMBDFN,0)),U)
 ....S ABME(15)=$$SDT^ABMDUTL($P($G(^ABMCCLMS(ABMDUZ2,ABMBDFN,1)),U,5))
 ....S ABME("HRN")=$P($G(^AUPNPAT(+ABME(5),41,+ABMDUZ2,0)),U,2)
 ....S ABME("SUFFIX")=$P($G(^ABMDPARM(ABMDUZ2,1,2)),U,4)
 ....W !,ABME("SUFFIX"),?4,ABME(1),?12,ABME("HRN"),?20,$P($G(^DPT(+ABME(5),0)),U),?47,ABME(15)
 ....W ?58,ABME(21)
 ...I $Y+5>IOSL D HD Q:(IOST["C")&($G(Y)<0)
 ;
 K ABMBLCNT,ABMBTCNT
 W !
 F ABMI=12,13 D
 .I ABMI=12,$D(ABMB(ABMI)) D
 ..W !,"REQUEUED BILLS - "
 ..S ABMJ=0
 ..F  S ABMJ=$O(ABMB(ABMI,ABMJ)) Q:+ABMJ=0  D
 ...S ABMDUZ2=$P(ABMB(ABMI,ABMJ),U,2)
 ...S ABMBDFN=$P(ABMB(ABMI,ABMJ),U,3)
 ...S ABME(21)=$P($G(^ABMDBILL(ABMDUZ2,ABMBDFN,2)),U)
 ...S ABME(71)=$$SDT^ABMDUTL($P($G(^ABMDBILL(ABMDUZ2,ABMBDFN,7)),U))
 ...S ABME(1)=$P($G(^ABMDBILL(ABMDUZ2,ABMBDFN,0)),U)
 ...S ABME(3)=$P($G(^ABMDBILL(ABMDUZ2,ABMBDFN,0)),U,3)
 ...S ABME(5)=$P($G(^ABMDBILL(ABMDUZ2,ABMBDFN,0)),U,5)
 ...S ABME(15)=$$SDT^ABMDUTL($P($G(^ABMDBILL(ABMDUZ2,ABMBDFN,1)),U,5))
 ...S ABME("HRN")=$P($G(^AUPNPAT(+ABME(5),41,+ABMDUZ2,0)),U,2)
 ...S ABME("SUFFIX")=$P($G(^ABMDPARM(ABMDUZ2,1,2)),U,4)
 ...W !,ABME("SUFFIX"),?5,ABME(1),?16,ABME("HRN"),?24,$E($P($G(^DPT(+ABME(5),0)),U),1,22),?47,ABME(15)
 ...W ?58,ABME(71),?69,$J($FN(ABME(21),",",2),10)
 ..I $Y+5>IOSL D HD Q:Y=0
 .I ABMI=13,$D(ABMB(ABMI)) D
 ..W !,"REQUEUED EXPORTS - "
 ..S ABMJ=0
 ..F  S ABMJ=$O(ABMB(ABMI,ABMJ)) Q:+ABMJ=0  D
 ...S ABMEIEN=$G(ABMB(ABMI,ABMJ))
 ...S ABMEDT=$$CDT^ABMDUTL($P($G(^ABMUTXMT(ABMEIEN,0)),U))
 ...S ABMFNM=$P($G(^ABMUTXMT(ABMEIEN,0)),U,2)
 ...W !,ABMEDT,?20,ABMFNM
 ..I $Y+5>IOSL D HD Q:Y=0
 Q
QUE ;QUE TO TASKMAN
 S ZTRTN="PRINT^ABMUCASH"
 S ZTDESC="3P UFMS VIEW CASHIERING SESSION DETAIL"
 S ZTSAVE("ABM*")=""
 K ZTSK
 D ^%ZTLOAD
 W:$G(ZTSK) !,"Task # ",ZTSK," queued.",!
 Q
 ;
 ;
H ;;HMO
M ;;MEDICARE SUPPL.
D ;;MEDICAID FI
R ;;MEDICARE FI
P ;;PRIVATE
W ;;WORKMEN'S COMP
C ;;CHAMPUS
F ;;FRATERNAL ORG
N ;;NON-BENEFICIARY
I ;;BENEFICIARY
K ;;KIDSCARE (CHIP)
T ;;THIRD PARTY LIABILITY
G ;;GUARANTOR
MD ;;MEDICARE PART D
MH ;;MEDICARE HMO
 Q