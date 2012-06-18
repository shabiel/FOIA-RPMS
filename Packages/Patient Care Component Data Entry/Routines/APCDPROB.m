APCDPROB ; IHS/CMI/LAB - Display Problems and Notes ;
 ;;2.0;IHS PCC SUITE;**5**;MAY 14, 2009
 ;Called from data entry templates to display problems, APCDPAT must equal the patient DFN
 NEW APCDQUIT,APCDSX
 S APCDQUIT=0
 W:$D(IOF) @IOF
 S APCDTCVD="S:Y]"""" Y=+Y,Y=$E(Y,4,5)_""/""_$E(Y,6,7)_""/""_(1700+$E(Y,1,3))"
 ;get date last reviewed and display
 S APCDSX=$$LASTPLR^APCLAPI6(APCDPAT,,DT,"A")
 W !,"Problem List Reviewed On: ",?24,$$FMTE^XLFDT($P(APCDSX,U,1)) W ?51,"By: ",?54,$E($S($P(APCDSX,U,3):$P($G(^VA(200,$P(APCDSX,U,3),0)),U),1:""),1,25),!
 S APCDSX=$$LASTPLU^APCLAPI6(APCDPAT,,DT,"A")
 W "Problem List Updated On: ",?36,$$FMTE^XLFDT($P(APCDSX,U,1)) W ?51,"By: ",?54,$E($S($P(APCDSX,U,3):$P($G(^VA(200,$P(APCDSX,U,3),0)),U),1:""),1,25),!
 S APCDSX=$$LASTNAP^APCLAPI6(APCDPAT,,DT,"A")
 W "No Active Problems Documented On: ",?36,$$FMTE^XLFDT($P(APCDSX,U,1)) W ?51,"By: ",$E($S($P(APCDSX,U,3):$P($G(^VA(200,$P(APCDSX,U,3),0)),U),1:""),1,25),!
 S APCDTTAT="A" D COMMON I 'APCDQUIT S APCDTTAT="IR" D COMMON
 K APCDTCVD,APCDTQ,Y
 D PROBX
 I $Y>(IOSL-5)&('APCDQUIT) W !!,"Press return to continue " R X:DTIME K X
 K X
 Q
COMMON ;
 ;I '$D(^AUPNPROB("AC",APCDPAT)) W !!,"********** No ",$S(APCDTTAT="A":"ACTIVE",1:"INACTIVE/RESOLVED")," Problems on file for this Patient",! Q
 I '$D(^AUPNPROB("AC",APCDPAT)) W !!,"********** No ",$S(APCDTTAT="A":"ACTIVE",1:"INACTIVE")," Problems on file for this Patient",! Q
 K APCDTDFT S APCDTNDF=0
 S APCDTFAC="" F APCDTQ=0:0 S APCDTFAC=$O(^AUPNPROB("AA",APCDPAT,APCDTFAC)) Q:'APCDTFAC!(APCDQUIT)  D PROBSCH
 ;I APCDTNDF=0 W !,"********** No ",$S(APCDTTAT="A":"ACTIVE",1:"INACTIVE/RESOLVED")," Problems on file for this Patient",! Q
 ;W !!,"******************",$S(APCDTTAT="A":"  ACTIVE ",1:"  INACTIVE/RESOLVED "),"PROBLEMS AND NOTES  ********************",!!
 I APCDTNDF=0 W !,"********** No ",$S(APCDTTAT="A":"ACTIVE",1:"INACTIVE")," Problems on file for this Patient",! Q
 W !!,"******************",$S(APCDTTAT="A":"  ACTIVE ",1:"  INACTIVE "),"PROBLEMS AND NOTES  ********************",!!
 S APCDTFPP="" F APCDTQ=0:0 S APCDTFPP=$O(APCDTDFT(APCDTFPP)) Q:APCDTFPP=""!(APCDQUIT)  S APCDTDFN=APCDTDFT(APCDTFPP) D PROBDSP
PROBX K APCDTDFT,APCDTNDF,APCDTFPP,APCDTFAC,APCDTPLN,APCDTPBN,APCDTDTM,APCDTDTN,APCDTPRB,APCDTTAT,APCDTNFP,APCDTNRQ,APCDTPNM,APCDTDFN,APCDTFCN,APCDTICD,APCDTICL,APCDTILN,APCDTN
 K APCDTNFL,APCDTNSH,APCDTNAB,APCDTVSC,APCDTITE,APCDTDOO,APCDTDOI
 Q
PROBSCH ;
 S APCDTPRB="" F APCDTQ=0:0 S APCDTPRB=$O(^AUPNPROB("AA",APCDPAT,APCDTFAC,APCDTPRB)) Q:APCDTPRB=""!(APCDQUIT)  S APCDTDFN=$O(^(APCDTPRB,"")) S:APCDTTAT[$P(^AUPNPROB(APCDTDFN,0),U,12) APCDTNDF=APCDTNDF+1,APCDTDFT(APCDTFAC_APCDTPRB)=APCDTDFN
 Q
PROBDSP ;
 S APCDTN=^AUPNPROB(APCDTDFN,0)
 S APCDTNRQ=$P(APCDTN,U,5)
 D GETNARR I 1
 E  S APCDTNRQ=""
 S APCDTDOO=$P(APCDTN,U,13) I APCDTDOO]"" S Y=APCDTDOO X APCDTCVD S APCDTDOO=Y
 S APCDTITE=$P(APCDTN,U,6)
 D GETSITE
 S APCDTPNM=$P(APCDTN,U,7)
 S APCDTPNM=APCDTNAB_APCDTPNM
 S Y=$P(APCDTN,U,3) X APCDTCVD S APCDTDTM=Y
 S Y=$P(APCDTN,U,8) X APCDTCVD S APCDTDTN=Y
 I $Y>(IOSL-2) D EOP Q:APCDQUIT
 S APCDTPLN=APCDTPNM_$E("         ",1,12-$L(APCDTPNM))_APCDTDTM
 W APCDTPLN S APCDTICL=24,APCDTILN=56 D PRTICD
 I APCDTTAT'="A" W ?24,"Status: ",$$VAL^XBDIQ1(9000011,APCDTDFN,.12),!
 D NOTEDSP
 Q
NOTEDSP ; DISPLAY NOTES UNDER PROBLEM
 S APCDTNFP=0 F APCDTQ=0:0 S APCDTNFP=$O(^AUPNPROB(APCDTDFN,11,APCDTNFP)) Q:'APCDTNFP!(APCDQUIT)  D DSPFACN
 Q
DSPFACN ; DISPLAY NOTES FOR SELECTED FACILITY
 Q:$D(^AUPNPROB(APCDTDFN,11,APCDTNFP,11,0))'=1
 Q:$O(^AUPNPROB(APCDTDFN,11,APCDTNFP,11,0))=""
 S APCDTITE=^AUPNPROB(APCDTDFN,11,APCDTNFP,0) D GETSITE S APCDTFCN=APCDTNAB
 S APCDTNDF=0 F APCDTQ=0:0 S APCDTNDF=$O(^AUPNPROB(APCDTDFN,11,APCDTNFP,11,APCDTNDF)) Q:'APCDTNDF!(APCDQUIT)  D DSPN ; ACC
 Q
DSPN ; DISPLAY SINGLE NOTE
 S APCDTN=^AUPNPROB(APCDTDFN,11,APCDTNFP,11,APCDTNDF,0)
 Q:$P(APCDTN,U,4)="I"
 F APCDTQ=0:0 Q:$E(APCDTFCN)'=" "  S APCDTFCN=$E(APCDTFCN,2,99)
 S APCDTDOI=$P(APCDTN,U,5) I APCDTDOI]"" S Y=APCDTDOI X APCDTCVD S APCDTDOI=Y
 I $Y>(IOSL-2) D EOP Q:APCDQUIT
 W APCDTPNM,APCDTFCN,$P(APCDTN,U),?12,APCDTDOI,?24,$P(APCDTN,U,3),!
 K APCDTDOI
 Q
 ;
PRTICD ;
 S:APCDTNRQ="" APCDTNRQ="<no narrative provided>" S APCDTICD=""
 S APCDTTXT=APCDTICD D PRTTXT
 Q
 ;
PRTTXT ; GENERALIZED TEXT PRINTER
 S APCDTDLT=1,APCDTILN=80-APCDTICL-1
 I APCDTDOO]"" S APCDTNRQ=APCDTNRQ_"  (ONSET: "_APCDTDOO_")"
 F APCDTQ=0:0 S:APCDTNRQ]""&(($L(APCDTNRQ)+$L(APCDTTXT)+2)<255) APCDTTXT=$S(APCDTTXT]"":APCDTTXT_"; ",1:"")_APCDTNRQ,APCDTNRQ="" Q:APCDTTXT=""  D PRTTXT2
 K APCDTILN,APCDTDLT,APCDTF,APCDTC,APCDTTXT,APCDTDOO
 Q
PRTTXT2 D GETFRAG
 I $Y>(IOSL-2) D EOP
 Q:APCDQUIT
 W ?APCDTICL W APCDTF,! S APCDTICL=APCDTICL+APCDTDLT,APCDTILN=APCDTILN-APCDTDLT,APCDTDLT=0
 Q
GETFRAG I $L(APCDTTXT)<APCDTILN S APCDTF=APCDTTXT,APCDTTXT="" Q
 F APCDTC=APCDTILN:-1:1 Q:$E(APCDTTXT,APCDTC)=" "
 S APCDTF=$E(APCDTTXT,1,APCDTC-1),APCDTTXT=$E(APCDTTXT,APCDTC+1,255)
 Q
 ;
GETNARR ;
 I APCDTNRQ]"" S APCDTNRQ=$S($D(^AUTNPOV(APCDTNRQ)):$P(^AUTNPOV(APCDTNRQ,0),U),1:"***** "_APCDTNRQ_" *****")
 E  S APCDTNRQ=""
 Q
 ;
GETSITE ;
 S:APCDTITE="" APCDTITE="null"
 S %=$G(^AUTTLOC(APCDTITE,0))
 S APCDTNFL=$P(%,U),APCDTNFL=$S($D(^DIC(4,APCDTITE,0)):$P(^(0),U),1:"<"_APCDTITE_">")
 S APCDTNSH=$P(%,U,2) I APCDTNSH="" S APCDTNSH="<"_APCDTITE_">"
 S APCDTNAB=$J($P(%,U,7),4) I APCDTNAB="" S APCDTNAB="<"_APCDTITE_">"
 Q
EOP ;end of page
 W !,"Enter return to continue, '^' to exit" R X:DTIME
 I X="^" S APCDQUIT=1 Q
 I X'="" W "??" G EOP
 W:$D(IOF) @IOF
 Q