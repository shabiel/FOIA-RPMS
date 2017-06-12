ABMM2PH2 ;IHS/SD/SDR - MU Patient Volume Hospital Report ;
 ;;2.6;IHS 3P BILLING SYSTEM;**11,12**;NOV 12, 2009;Build 187
 ;IHS/SD/SDR - 2.6*12 - HEAT142398 - Made change for auto dt range, and end of fiscal year
 ;  to work correctly.
 ;
CALC ;EP
 S ABMCFLG=0
 S ABMSDT=0
 F  S ABMSDT=$O(^XTMP("ABM-PVH2",$J,"LOC-DENOM",ABMSDT)) Q:'ABMSDT  D  Q:ABMCFLG
 .;I ABMY("90")'="A"&(ABMY("SDT")'=ABMSDT) Q  ;only calculate whole year for automated  ;abm*2.6*12 HEAT142398
 .I "^A^D^"'[("^"_ABMY("90")_"^")&(ABMY("SDT")'=ABMSDT) Q  ;only whole year for automated ;abm*2.6*12 HEAT142398
 .;I (ABMY("90")="A")&($E(ABMSDT,4,7)>0703) Q  ;after 7/3 it won't be 90 days anymore  ;abm*2.6*12 HEAT142398
 .;start new abm*2.6*12 HEAT142398
 .S X1=ABMY("SDT")
 .S X2=275
 .D C^%DTC
 .I "^A^D^"[("^"_ABMY("90")_"^")&(ABMSDT>X) Q  ;275 days after start won't contain 90 days anymore  ;abm*2.6*12 HEAT134048
 .;end new HEAT142398
 .S ABMPD=+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM PD",ABMSDT,"MCD"))+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM PD",ABMSDT,"CHIP"))
 .S ABMZPD=+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM ZEROPD",ABMSDT,"MCD"))+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM ZEROPD",ABMSDT,"CHIP"))
 .S ABMENR=+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM ENR",ABMSDT,"MCD"))+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM ENR",ABMSDT,"CHIP"))
 .S ^XTMP("ABM-PVH2",$J,"LOC-NUM",ABMSDT)=+ABMPD+ABMZPD+ABMENR
 .S ABMTPRCT=$J((+ABMPD+ABMZPD+ABMENR)/(+$G(^XTMP("ABM-PVH2",$J,"LOC-DENOM",ABMSDT)))*100,0,1)
 .S ^XTMP("ABM-PVH2",$J,"LOC PERCENT",ABMSDT)=ABMTPRCT
 .I '$D(^XTMP("ABM-PVH2",$J,"LOC TOP")) S ^XTMP("ABM-PVH2",$J,"LOC TOP")=ABMTPRCT_"^"_ABMSDT
 .I +$P($G(^XTMP("ABM-PVH2",$J,"LOC TOP")),U)<ABMTPRCT S ^XTMP("ABM-PVH2",$J,"LOC TOP")=ABMTPRCT_"^"_ABMSDT
 .; 
 .S ABMLOC=0
 .F  S ABMLOC=$O(^XTMP("ABM-PVH2",$J,"LOC-DENOM",ABMSDT,ABMLOC)) Q:'ABMLOC  D  Q:ABMCFLG
 ..S ABMPD=+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM PD",ABMSDT,ABMLOC,"MCD"))+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM PD",ABMSDT,ABMLOC,"CHIP"))
 ..S ABMZPD=+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM ZEROPD",ABMSDT,ABMLOC,"MCD"))+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM ZEROPD",ABMSDT,ABMLOC,"CHIP"))
 ..S ABMENR=+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM ENR",ABMSDT,ABMLOC,"MCD"))+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM ENR",ABMSDT,ABMLOC,"CHIP"))
 ..S ^XTMP("ABM-PVH2",$J,"LOC-NUM",ABMSDT,ABMLOC)=+ABMPD+ABMZPD+ABMENR
 ..I (ABMPD+ABMZPD+ABMENR)=0 S ^XTMP("ABM-PVH2",$J,"LOC PERCENT",ABMSDT,ABMLOC)=0 Q
 ..S ABMPERCT=$J((+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM",ABMSDT,ABMLOC))/(+$G(^XTMP("ABM-PVH2",$J,"LOC-DENOM",ABMSDT,ABMLOC))))*100,0,1)
 ..S ^XTMP("ABM-PVH2",$J,"LOC PERCENT",ABMSDT,ABMLOC)=ABMPERCT
 ..I '$D(^XTMP("ABM-PVH2",$J,"LOC TOP",ABMLOC)) S ^XTMP("ABM-PVH2",$J,"LOC TOP",ABMLOC)=ABMPERCT_"^"_ABMSDT
 ..I +$P($G(^XTMP("ABM-PVH2",$J,"LOC TOP",ABMLOC)),U)<ABMPERCT S ^XTMP("ABM-PVH2",$J,"LOC TOP",ABMLOC)=ABMPERCT_"^"_ABMSDT
 ..I ABMPERCT>9.99,$G(ABMY("A90"))="F" S ABMCFLG=1
 Q
ENROLL ;EP
 K ABMBILLN,ABMTRAMT,ABMDX,ABMTRIEN
 S ABMEFLG=1
 S ABMVDFN=0
 F  S ABMVDFN=$O(^XTMP("ABM-PVH2",$J,"VISITS",ABMVDFN)) Q:'ABMVDFN  D
 .Q:(+$G(^XTMP("ABM-PVH2",$J,"VISITS",ABMVDFN))=1)  ;bill was found for visit
 .S ABMPT=$$GET1^DIQ(9000010,ABMVDFN,".05","I")
 .I $D(^AUPNVINP("AD",ABMVDFN)) D  ;this Visit is linked to V Hosp entry
 ..S ABMVIEN=$O(^AUPNVINP("AD",ABMVDFN,0))
 ..S (ABMP("VDT"),ABMVDT,ABMSDT)=$P($$GET1^DIQ(9000010.02,ABMVIEN,".01","I"),".")
 .I '$D(^AUPNVINP("AD",ABMVDFN)) D
 ..S (ABMP("VDT"),ABMVDT,ABMSDT)=$P($$GET1^DIQ(9000010,ABMVDFN,".01","I"),".")
 .S ABMVLOC=$$GET1^DIQ(9000010,ABMVDFN,".06","I")
 .S ABML=""
 .D ELIG^ABMM2PV8
 .K ABMINS,ABMOINS,ABMARACT,ABMARIEN
 .K ABMITYP
 .D CALCDTS^ABMM2PV1
 .S ABMDTFLG=0
 .S ABMP("BDT")=ABMP("BSDT")
 .F  D  Q:ABMDTFLG=1
 ..I ABMP("VDT")<ABMP("BSDT") S ABMDTFLG=1 Q  ;visit is before 90-day window
 ..I (+$G(ABML("MCD"))=1!(+$G(ABML("CHIP"))=1)) D
 ...F ABMGRP="MCD","CHIP" D
 ....I +$G(ABML(ABMGRP))'=1 Q
 ....I ABMGRP="MCD",((+$G(ABML("MCD"))=1)&(+$G(ABML("CHIP"))=1)) Q
 ....S ^XTMP("ABM-PVH2",$J,"LOC ENC CNT",ABMP("BDT"),ABMVLOC,ABMGRP)=+$G(^XTMP("ABM-PVH2",$J,"LOC ENC CNT",ABMP("BDT"),ABMVLOC,ABMGRP))+1
 ....S ^XTMP("ABM-PVH2",$J,"LOC ENC CNT",ABMP("BDT"),ABMGRP)=+$G(^XTMP("ABM-PVH2",$J,"LOC ENC CNT",ABMP("BDT"),ABMGRP))+1
 ....;
 ....S ^XTMP("ABM-PVH2",$J,"LOC-NUM ENR",ABMP("BDT"),ABMGRP)=+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM ENR",ABMP("BDT"),ABMGRP))+1
 ....S ^XTMP("ABM-PVH2",$J,"LOC-NUM ENR",ABMP("BDT"),ABMVLOC,ABMGRP)=+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM ENR",ABMP("BDT"),ABMVLOC,ABMGRP))+1
 ....S ^XTMP("ABM-PVH2",$J,"LOC-NUM ENR",ABMP("BDT"),ABMGRP,ABMVLOC)=+$G(^XTMP("ABM-PVH2",$J,"LOC-NUM ENR",ABMP("BDT"),ABMGRP,ABMVLOC))+1
 ....I +$G(^XTMP("ABM-PVH2",$J,"VISITS",ABMVDFN))'=2 D PTDATA^ABMM2PVH
 ....S ^XTMP("ABM-PVH2",$J,"VISITS",ABMVDFN)=1
 ..S X1=ABMP("BDT")
 ..S X2=1
 ..D C^%DTC
 ..I X>ABMP("BEDT") S ABMDTFLG=1 Q
 ..S ABMP("BDT")=X
 Q