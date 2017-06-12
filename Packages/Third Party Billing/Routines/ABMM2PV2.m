ABMM2PV2 ;IHS/SD/SDR - MU Patient Volume EP Report ;
 ;;2.6;IHS 3P BILLING SYSTEM;**11,12,15**;NOV 12, 2009;Build 251
 ;IHS/SD/SDR - 2.6*12 - Made changes for uncompensated care; uncompensated should be a separate detail line
 ;  and should be included in the patient volume total, not as a separate line.
 ;IHS/SD/SDR - 2.6*15 - HEAT183289 -Include Tribal self-insured in calculation if populated
 ;
CALC ;EP
 S ABMCFLG=0
 I ABMY("RTYP")="GRP" D CALC2 Q
 S ABMSDT=0
 F  S ABMSDT=$O(^XTMP("ABM-PVP2",$J,"PRV-DENOM",ABMSDT)) Q:'ABMSDT  D
 .;I ABMY("90")'="A"&(ABMY("SDT")'=ABMSDT) Q  ;only calculate whole year for automated ;abm*2.6*12 uncomp care
 .I "^A^D^"'[("^"_ABMY("90")_"^")&(ABMY("SDT")'=ABMSDT) Q  ;only whole year for automated ;abm*2.6*12 uncomp care
 .;I (ABMY("90")="A")&($E(ABMSDT,4,7)>1003) Q  ;after 10/3 it won't be 90 days anymore  ;abm*2.6*12 HEAT134048
 .S X1=ABMY("SDT")
 .S X2=275
 .D C^%DTC
 .I "^A^D^"[("^"_ABMY("90")_"^")&(ABMSDT>X) Q  ;275 days after start won't contain 90 days anymore  ;abm*2.6*12 HEAT134048
 .S ABMPRV=0
 .F  S ABMPRV=$O(^XTMP("ABM-PVP2",$J,"PRV-DENOM",ABMSDT,ABMPRV)) Q:'ABMPRV  D
 ..Q:+$G(ABMT(ABMPRV))=1
 ..S ABMPD=+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM PD",ABMSDT,ABMPRV,"MCD"))+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM PD",ABMSDT,ABMPRV,"CHIP"))
 ..S ABMZPD=+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM ZEROPD",ABMSDT,ABMPRV,"MCD"))+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM ZEROPD",ABMSDT,ABMPRV,"CHIP"))
 ..S ABMENR=+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM ENR",ABMSDT,ABMPRV,"MCD"))+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM ENR",ABMSDT,ABMPRV,"CHIP"))
 ..S ^XTMP("ABM-PVP2",$J,"PRV-NUM",ABMSDT,ABMPRV)=+ABMPD+ABMZPD+ABMENR
 ..S ABMTPRCT=$J((+ABMPD+ABMZPD+ABMENR)/(+$G(^XTMP("ABM-PVP2",$J,"PRV-DENOM",ABMSDT,ABMPRV)))*100,0,1)
 ..;start new code abm*2.6*12 uncomp care
 ..I ABMFQHC=1 D
 ...S ABMDENOM=+$G(^XTMP("ABM-PVP2",$J,"PRV-DENOM",ABMSDT,ABMPRV))
 ...;S ABMOTH=+$G(^XTMP("ABM-PVP2",$J,"PRV ENC CNT",ABMSDT,ABMPRV,"OTHR"))
 ...S ABMOTH=+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM PD",ABMSDT,ABMPRV,"OTHR"))+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM ZEROPD",ABMSDT,ABMPRV,"OTHR"))
 ...;S ABMTSI=+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM TRIBSI",ABMSDT,ABMPRV,"TRIBSI"))  ;abm*2.6*15 HEAT183289
 ...;S (ABMUNCOM,^XTMP("ABM-PVP2",$J,"PRV-NUM UNCOMP",ABMSDT,ABMPRV,"UNCOMP"))=ABMDENOM-ABMPD-ABMZPD-ABMENR-ABMOTH-(+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM OELIG",ABMSDT,ABMPRV,"OTHR")))  ;abm*2.6*15
 ...S ABMUNCOM=(+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM UNCOMP",ABMSDT,ABMPRV,"UNCOMP")))  ;abm*2.6*15
 ...S ^XTMP("ABM-PVP2",$J,"PRV-NUM",ABMSDT,ABMPRV)=+ABMPD+ABMZPD+ABMENR+ABMUNCOM
 ...S ABMTPRCT=$J((+ABMPD+ABMZPD+ABMENR+ABMUNCOM)/(+$G(^XTMP("ABM-PVP2",$J,"PRV-DENOM",ABMSDT,ABMPRV)))*100,0,1)
 ..;end new code uncomp care
 ..S ^XTMP("ABM-PVP2",$J,"PRV PERCENT",ABMSDT,ABMPRV)=ABMTPRCT
 ..I '$D(^XTMP("ABM-PVP2",$J,"PRV TOP",ABMPRV)) S ^XTMP("ABM-PVP2",$J,"PRV TOP",ABMPRV)=ABMTPRCT_"^"_ABMSDT
 ..I +$P($G(^XTMP("ABM-PVP2",$J,"PRV TOP",ABMPRV)),U)<ABMTPRCT S ^XTMP("ABM-PVP2",$J,"PRV TOP",ABMPRV)=ABMTPRCT_"^"_ABMSDT
 ..;
 ..S ABMVLOC=0
 ..F  S ABMVLOC=$O(^XTMP("ABM-PVP2",$J,"PRV-DENOM",ABMSDT,ABMPRV,ABMVLOC)) Q:'ABMVLOC  D
 ...S ABMPD=+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM PD",ABMSDT,ABMPRV,ABMVLOC,"MCD"))+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM PD",ABMSDT,ABMPRV,ABMVLOC,"CHIP"))
 ...S ABMZPD=+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM ZEROPD",ABMSDT,ABMPRV,ABMVLOC,"MCD"))+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM ZEROPD",ABMSDT,ABMPRV,ABMVLOC,"CHIP"))
 ...S ABMENR=+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM ENR",ABMSDT,ABMPRV,ABMVLOC,"MCD"))+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM ENR",ABMSDT,ABMPRV,ABMVLOC,"CHIP"))
 ...S ^XTMP("ABM-PVP2",$J,"PRV-NUM",ABMSDT,ABMPRV,ABMVLOC)=+ABMPD+ABMZPD+ABMENR
 ...;I (ABMPD+ABMZPD+ABMENR)=0 S ^XTMP("ABM-PVP2",$J,"PRV PERCENT",ABMSDT,ABMPRV,ABMVLOC)=0 Q ;abm*2.6*12 uncomp care
 ...S ABMPERCT=$J((+ABMPD+ABMZPD+ABMENR)/(+$G(^XTMP("ABM-PVP2",$J,"PRV-DENOM",ABMSDT,ABMPRV,ABMVLOC)))*100,0,1)
 ...;start new code abm*2.6*12 uncomp care
 ...I ABMFQHC=1 D
 ....S ABMDENOM=+$G(^XTMP("ABM-PVP2",$J,"PRV-DENOM",ABMSDT,ABMPRV,ABMVLOC))
 ....;S ABMOTH=+$G(^XTMP("ABM-PVP2",$J,"PRV ENC CNT",ABMSDT,ABMPRV,ABMVLOC,"OTHR"))
 ....S ABMOTH=+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM PD",ABMSDT,ABMPRV,ABMVLOC,"OTHR"))+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM ZEROPD",ABMSDT,ABMPRV,ABMVLOC,"OTHR"))
 ....;S ABMTSI=+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM TRIBSI",ABMSDT,ABMPRV,ABMVLOC,"TRIBSI"))  ;abm*2.6*15 HEAT183289
 ....;S (ABMUNCOM,^XTMP("ABM-PVP2",$J,"PRV-NUM UNCOMP",ABMSDT,ABMPRV,ABMVLOC,"UNCOMP"))=ABMDENOM-ABMPD-ABMZPD-ABMENR-ABMOTH-(+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM OELIG",ABMSDT,ABMPRV,ABMVLOC,"OTHR")))  ;abm*2.6*15
 ....S ABMUNCOM=(+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM UNCOMP",ABMSDT,ABMPRV,ABMVLOC,"UNCOMP")))  ;abm*2.6*15
 ....S ^XTMP("ABM-PVP2",$J,"PRV-NUM",ABMSDT,ABMPRV,ABMVLOC)=+ABMPD+ABMZPD+ABMENR+ABMUNCOM
 ....S ABMPERCT=$J((+ABMPD+ABMZPD+ABMENR+ABMUNCOM)/(+$G(^XTMP("ABM-PVP2",$J,"PRV-DENOM",ABMSDT,ABMPRV,ABMVLOC)))*100,0,1)
 ...;end new code uncomp care
 ...S ^XTMP("ABM-PVP2",$J,"PRV PERCENT",ABMSDT,ABMPRV,ABMVLOC)=ABMPERCT
 ..;if looking for first that meets 30%, set flag to quit
 ..I ABMTPRCT>29.99,$G(ABMY("A90"))="F" S ABMT(ABMPRV)=1
 ..I ABMTPRCT>19.99&($$DOCLASS^ABMDVST2(ABMPRV)["PEDIAT")&($G(ABMY("A90"))="F") S ABMT(ABMPRV)=1
 Q
CALC2 ;EP
 S ABMSDT=0
 F  S ABMSDT=$O(^XTMP("ABM-PVP2",$J,"PRV-DENOM",ABMSDT)) Q:'ABMSDT  D  Q:ABMCFLG
 .;start old code abm*2.6*12 HEAT134048
 .;I ABMY("90")'="A"&(ABMY("SDT")'=ABMSDT) Q  ;only calculate whole year for automated
 .;I (ABMY("90")="A")&($E(ABMSDT,4,7)>1003) Q  ;after 10/3 it won't be 90 days anymore
 .;end old start new HEAT134048
 .I "^A^D^"'[("^"_ABMY("90")_"^")&(ABMY("SDT")'=ABMSDT) Q  ;only whole year for automated
 .S X1=ABMY("SDT")
 .S X2=275
 .D C^%DTC
 .I "^A^D^"[("^"_ABMY("90")_"^")&(ABMSDT>X) Q  ;275 days after start won't contain 90 days anymore
 .;end new HEAT134048
 .S ABMPD=+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM PD",ABMSDT,"MCD"))+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM PD",ABMSDT,"CHIP"))
 .S ABMZPD=+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM ZEROPD",ABMSDT,"MCD"))+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM ZEROPD",ABMSDT,"CHIP"))
 .S ABMENR=+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM ENR",ABMSDT,"MCD"))+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM ENR",ABMSDT,"CHIP"))
 .S ^XTMP("ABM-PVP2",$J,"PRV-NUM",ABMSDT)=+ABMPD+ABMZPD+ABMENR
 .S ABMTPRCT=$J((+ABMPD+ABMZPD+ABMENR)/(+$G(^XTMP("ABM-PVP2",$J,"PRV-DENOM",ABMSDT)))*100,0,1)
 .;start new code abm*2.6*12 uncomp care
 .I ABMFQHC=1 D
 ..S ABMDENOM=+$G(^XTMP("ABM-PVP2",$J,"PRV-DENOM",ABMSDT))
 ..;S ABMOTH=+$G(^XTMP("ABM-PVP2",$J,"PRV ENC CNT",ABMSDT,"OTHR"))
 ..S ABMOTH=+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM PD",ABMSDT,"OTHR"))+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM ZEROPD",ABMSDT,"OTHR"))
 ..;S ABMTSI=+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM TRIBSI",ABMSDT,"TRIBSI"))  ;abm*2.6*15 HEAT183289
 ..;S (ABMUNCOM,^XTMP("ABM-PVP2",$J,"PRV-NUM UNCOMP",ABMSDT,"UNCOMP"))=ABMDENOM-ABMPD-ABMZPD-ABMENR-ABMOTH-(+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM OELIG",ABMSDT,"OTHR")))  ;abm*2.6*15
 ..S ABMUNCOM=+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM UNCOMP",ABMSDT,"UNCOMP"))  ;abm*2.6*15
 ..S ^XTMP("ABM-PVP2",$J,"PRV-NUM",ABMSDT)=+ABMPD+ABMZPD+ABMENR+ABMUNCOM  ;abm*2.6*15 HEAT183289
 ..;S ^XTMP("ABM-PVP2",$J,"PRV-NUM",ABMSDT)=+ABMPD+ABMZPD+ABMENR+ABMUNCOM+ABMTSI  ;abm*2.6*15 HEAT183289
 ..S ABMTPRCT=$J((+ABMPD+ABMZPD+ABMENR+ABMUNCOM)/(+$G(^XTMP("ABM-PVP2",$J,"PRV-DENOM",ABMSDT)))*100,0,1)  ;abm*2.6*15 HEAT183289
 ..;S ABMTPRCT=$J((+ABMPD+ABMZPD+ABMENR+ABMUNCOM+ABMTSI)/(+$G(^XTMP("ABM-PVP2",$J,"PRV-DENOM",ABMSDT)))*100,0,1)  ;abm*2.6*15 HEAT183289
 .;end new code uncomp care
 .S ^XTMP("ABM-PVP2",$J,"PRV PERCENT",ABMSDT)=ABMTPRCT
 .I '$D(^XTMP("ABM-PVP2",$J,"PRV TOP")) S ^XTMP("ABM-PVP2",$J,"PRV TOP")=ABMTPRCT_"^"_ABMSDT
 .I +$P($G(^XTMP("ABM-PVP2",$J,"PRV TOP")),U)<ABMTPRCT S ^XTMP("ABM-PVP2",$J,"PRV TOP")=ABMTPRCT_"^"_ABMSDT
 .;
 .S ABMVLOC=0
 .F  S ABMVLOC=$O(^XTMP("ABM-PVP2",$J,"PRV-DENOM",ABMSDT,ABMVLOC)) Q:'ABMVLOC  D  Q:ABMCFLG
 ..S ABMPD=+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM PD",ABMSDT,ABMVLOC,"MCD"))+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM PD",ABMSDT,ABMVLOC,"CHIP"))
 ..S ABMZPD=+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM ZEROPD",ABMSDT,ABMVLOC,"MCD"))+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM ZEROPD",ABMSDT,ABMVLOC,"CHIP"))
 ..S ABMENR=+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM ENR",ABMSDT,ABMVLOC,"MCD"))+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM ENR",ABMSDT,ABMVLOC,"CHIP"))
 ..S ^XTMP("ABM-PVP2",$J,"PRV-NUM",ABMSDT,ABMVLOC)=+ABMPD+ABMZPD+ABMENR
 ..;I (ABMPD+ABMZPD+ABMENR)=0 S ^XTMP("ABM-PVP2",$J,"PRV PERCENT",ABMSDT,ABMVLOC)=0 Q  ;abm*2.6*12
 ..S ABMPERCT=$J((+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM",ABMSDT,ABMVLOC))/(+$G(^XTMP("ABM-PVP2",$J,"PRV-DENOM",ABMSDT,ABMVLOC))))*100,0,1)
 ..;start new code abm*2.6*12 uncomp care
 ..I ABMFQHC=1 D
 ...S ABMDENOM=+$G(^XTMP("ABM-PVP2",$J,"PRV-DENOM",ABMSDT,ABMVLOC))
 ...;S ABMOTH=+$G(^XTMP("ABM-PVP2",$J,"PRV ENC CNT",ABMSDT,ABMVLOC,"OTHR"))
 ...S ABMOTH=+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM PD",ABMSDT,ABMVLOC,"OTHR"))+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM ZEROPD",ABMSDT,ABMVLOC,"OTHR"))
 ...;S ABMTSI=+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM TRIBSI",ABMSDT,"TRIBSI"))  ;abm*2.6*15 HEAT183289
 ...;S (ABMUNCOM,^XTMP("ABM-PVP2",$J,"PRV-NUM UNCOMP",ABMSDT,ABMVLOC,"UNCOMP"))=ABMDENOM-ABMPD-ABMZPD-ABMENR-ABMOTH-(+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM OELIG",ABMSDT,ABMVLOC,"OTHR")))  ;abm*2.6*15
 ...S ABMUNCOM=+$G(^XTMP("ABM-PVP2",$J,"PRV-NUM UNCOMP",ABMSDT,ABMVLOC,"UNCOMP"))  ;abm*2.6*15
 ...S ^XTMP("ABM-PVP2",$J,"PRV-NUM",ABMSDT,ABMVLOC)=+ABMPD+ABMZPD+ABMENR+ABMUNCOM
 ...S ABMPERCT=$J((+ABMPD+ABMZPD+ABMENR+ABMUNCOM)/(+$G(^XTMP("ABM-PVP2",$J,"PRV-DENOM",ABMSDT,ABMVLOC)))*100,0,1)
 ..;end new code uncomp care
 ..S ^XTMP("ABM-PVP2",$J,"PRV PERCENT",ABMSDT,ABMVLOC)=ABMPERCT
 .;if looking for first that meets 30%, set flag to quit
 .I ABMTPRCT>29.99,$G(ABMY("A90"))="F" S ABMCFLG=1
 Q