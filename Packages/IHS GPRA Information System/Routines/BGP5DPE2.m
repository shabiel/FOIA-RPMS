BGP5DPE2 ; IHS/CMI/LAB - calc measures 29 Apr 2010 7:38 PM 14 Nov 2006 5:02 PM 09 Jun 2015 5:18 PM ; 06 May 2015  1:25 PM
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
5 ;EP
 Q:'$D(^AUPNVPED("AC",DFN))  ;no education so don't bother
 K BGPALLED,BGPEDPRV S BGPVALUE=""
 K BGPPROVS
 S BGPFYCT=$O(^BGPCTRL("B",2015,0))
 S Y="BGPALLED("
 S X=DFN_"^ALL EDUC;DURING "_$$FMTE^XLFDT(BGPBDATE)_"-"_$$FMTE^XLFDT(BGPEDATE) S E=$$START1^APCLDF(X,Y)
 I '$D(BGPALLED(1)) Q
 S (X,D,G)=0,%="",T="" F  S X=$O(BGPALLED(X)) Q:X'=+X  D
 .S Y=+$P(BGPALLED(X),U,4)
 .S T=$P(^AUPNVPED(+$P(BGPALLED(X),U,4),0),U)
 .Q:'T
 .Q:'$D(^AUTTEDT(T,0))
 .S T=$P(^AUTTEDT(T,0),U,2)
 .I T="" Q
 .Q:'$$EDUALLOW^BGP5DPE1(BGPFYCT,T)
 .;Q:'$D(^BGPCTRL(BGPFYCT,62,"B",T))  ;not an official topic per Chris Lamer's spreadsheet
 .Q:$P(^AUPNVPED(Y,0),U,5)=""  ;SKIP IF NO PROVIDER DOCUMENTED
 .S P=$P(^AUPNVPED(Y,0),U,5)
 .S D=$P($G(^VA(200,P,"PS")),U,5)
 .I 'D Q  ;no discipline to tally
 .S BGPT=$P($G(^DIC(7,D,9999999)),U,1)
 .Q:BGPT=""  ;not standard
 .S BGPT1=$P(^DIC(7,D,0),U,1)
 .D S(BGPRPT,BGPGBL,11,10,1)  ;add to total # of topics
 .I BGPTIME=1 D SET51
 .I BGPTIME=2 D SET52
 .I BGPTIME=3 D SET53
 .;set PROVS For this patient
 .S BGPPROVS(BGPT1)=$G(BGPPROVS(BGPT1))+1
 .S %=$P(^AUPNVPED(+$P(BGPALLED(X),U,4),0),U,5)
 .;I %="" S %=$P($G(^AUPNVPED(+$P(BGPALLED(X),U,4),12)),U,4)
 .;I %="" S %="UNKNOWN"
 .I % S BGPEDPRV(%)=""
 Q:'$D(BGPPROVS)
 S BGPVALUE=""
 S X="" F  S X=$O(BGPPROVS(X)) Q:X=""  S BGPVALUE=BGPVALUE_$S(BGPVALUE]"":";",1:"")_X_"-"_BGPPROVS(X)
 D SETLIST
 Q
SET51 ;
 I '$D(^BGPPEDCK(BGPRPT,15,0)) S ^BGPPEDCK(BGPRPT,15,0)="^90554.1215A^0^0"
 S Z=$O(^BGPPEDCK(BGPRPT,15,"B",BGPT,0)) I Z D  Q
 .S $P(^BGPPEDCK(BGPRPT,15,Z,0),U,3)=$P(^BGPPEDCK(BGPRPT,15,Z,0),U,3)+1
 S Z=$P(^BGPPEDCK(BGPRPT,15,0),U,3)+1,$P(^BGPPEDCK(BGPRPT,15,0),U,3)=Z,$P(^BGPPEDCK(BGPRPT,15,0),U,4)=Z
 S ^BGPPEDCK(BGPRPT,15,Z,0)=BGPT_U_BGPT1_U_1
 S ^BGPPEDCK(BGPRPT,15,"B",BGPT,Z)=""
 Q
SET52 ;
 I '$D(^BGPPEDPK(BGPRPT,15,0)) S ^BGPPEDPK(BGPRPT,15,0)="^90554.1315A^0^0"
 S Z=$O(^BGPPEDPK(BGPRPT,15,"B",BGPT,0)) I Z D  Q
 .S $P(^BGPPEDPK(BGPRPT,15,Z,0),U,3)=$P(^BGPPEDPK(BGPRPT,15,Z,0),U,3)+1
 S Z=$P(^BGPPEDPK(BGPRPT,15,0),U,3)+1,$P(^BGPPEDPK(BGPRPT,15,0),U,3)=Z,$P(^BGPPEDPK(BGPRPT,15,0),U,4)=Z
 S ^BGPPEDPK(BGPRPT,15,Z,0)=BGPT_U_BGPT1_U_1
 S ^BGPPEDPK(BGPRPT,15,"B",BGPT,Z)=""
 Q
SET53 ;
 I '$D(^BGPPEDBK(BGPRPT,15,0)) S ^BGPPEDBK(BGPRPT,15,0)="^90554.1515A^0^0"
 S Z=$O(^BGPPEDBK(BGPRPT,15,"B",BGPT,0)) I Z D  Q
 .S $P(^BGPPEDBK(BGPRPT,15,Z,0),U,3)=$P(^BGPPEDBK(BGPRPT,15,Z,0),U,3)+1
 S Z=$P(^BGPPEDBK(BGPRPT,15,0),U,3)+1,$P(^BGPPEDBK(BGPRPT,15,0),U,3)=Z,$P(^BGPPEDBK(BGPRPT,15,0),U,4)=Z
 S ^BGPPEDBK(BGPRPT,15,Z,0)=BGPT_U_BGPT1_U_1
 S ^BGPPEDBK(BGPRPT,15,"B",BGPT,Z)=""
 Q
6 ;EP
 Q:'$D(^AUPNVPED("AC",DFN))  ;no education so don't bother
 K BGPALLED,BGPEDPRV S BGPVALUE=""
 K BGPPROVS
 S BGPFYCT=$O(^BGPCTRL("B",2015,0))
 S Y="BGPALLED("
 S X=DFN_"^ALL EDUC;DURING "_$$FMTE^XLFDT(BGPBDATE)_"-"_$$FMTE^XLFDT(BGPEDATE) S E=$$START1^APCLDF(X,Y)
 I '$D(BGPALLED(1)) Q
 S (X,D,G)=0,%="",T="" F  S X=$O(BGPALLED(X)) Q:X'=+X  D
 .S Y=+$P(BGPALLED(X),U,4)
 .S T=$P(^AUPNVPED(+$P(BGPALLED(X),U,4),0),U)
 .Q:'T
 .Q:'$D(^AUTTEDT(T,0))
 .S T=$P(^AUTTEDT(T,0),U,2)
 .I T="" Q
 .Q:'$$EDUALLOW^BGP5DPE1(BGPFYCT,T)
 .;Q:'$D(^BGPCTRL(BGPFYCT,62,"B",T))  ;not an official topic per Chris Lamer's spreadsheet
 .D S(BGPRPT,BGPGBL,11,12,1)  ;add to total # of topics
 .S BGPLEVEL=$P(^AUPNVPED(Y,0),U,6)
 .I BGPLEVEL=1 D S(BGPRPT,BGPGBL,11,13,1)
 .I BGPLEVEL=2 D S(BGPRPT,BGPGBL,11,14,1)
 .I BGPLEVEL=3 D S(BGPRPT,BGPGBL,11,15,1)
 .I BGPLEVEL=5 D S(BGPRPT,BGPGBL,11,16,1)
 .I BGPLEVEL=4 D S(BGPRPT,BGPGBL,11,17,1)
 .I BGPLEVEL="" D S(BGPRPT,BGPGBL,11,18,1)
 .;set PROVS For this patient
 .I BGPLEVEL="" S BGPLEVEL="BLANK"
 .S BGPPROVS(BGPLEVEL)=$G(BGPPROVS(BGPLEVEL))+1
 .S %=$P(^AUPNVPED(+$P(BGPALLED(X),U,4),0),U,5)
 .;I %="" S %=$P($G(^AUPNVPED(+$P(BGPALLED(X),U,4),12)),U,4)
 .;I %="" S %="UNKNOWN"
 .I % S BGPEDPRV(%)=""
 Q:'$D(BGPPROVS)
 S BGPVALUE=""
 S X="" F  S X=$O(BGPPROVS(X)) Q:X=""  S BGPVALUE=BGPVALUE_$S(BGPVALUE]"":";",1:"")_$S(X:$$EXTSET^XBFUNC(9000010.16,.06,X),1:"BLANK-NOT RECORDED")_"-"_BGPPROVS(X)
 D SETLIST
 Q
 ;
7 ;EP
 ;Q:'$D(^AUPNVPED("AC",DFN))  ;no education so don't bother
 K BGPALLED,BGPEDPRV S BGPVALUE="",BGPVAX=""
 K BGPPROVS
 S BGPFYCT=$O(^BGPCTRL("B",2015,0))
 S Y="BGPALLED("
 S X=DFN_"^ALL EDUC;DURING "_$$FMTE^XLFDT(BGPBDATE)_"-"_$$FMTE^XLFDT(BGPEDATE) S E=$$START1^APCLDF(X,Y)
 I '$D(BGPALLED(1)) G PTG
 S (X,D,G)=0,%="",T="" F  S X=$O(BGPALLED(X)) Q:X'=+X  D
 .S Y=+$P(BGPALLED(X),U,4)
 .S T=$P(^AUPNVPED(+$P(BGPALLED(X),U,4),0),U)
 .Q:'T
 .Q:'$D(^AUTTEDT(T,0))
 .S T=$P(^AUTTEDT(T,0),U,2)
 .I T="" Q
 .Q:'$$EDUALLOW^BGP5DPE1(BGPFYCT,T)
 .S G=1
 .S BGPLEVEL=$P(^AUPNVPED(Y,0),U,13)
 .Q:BGPLEVEL=""
 .S BGPPROVS(BGPLEVEL)=$G(BGPPROVS(BGPLEVEL))+1   ;count up 
 .;get provider
 .S R="",R=$P(^AUPNVPED(Y,0),U,5) D
 ..Q:R]""
 ..S R=$P($G(^AUPNVPED(Y,12)),U,4)
 ..Q:R]""
 ..S R=$P($G(^AUPNVPED(Y,12)),U,2)
 ..Q:R]""
 ..S R=$$PRIMPROV^APCLV($P(^AUPNVPED(Y,0),U,3),"I")
 .I R D
 ..S D=$$VALI^XBDIQ1(200,R,53.5)
 ..S D=$S(D:$$VAL^XBDIQ1(7,D,9999999.01),1:"")
 ..I D="" S D="??"
 ..S BGPPROVS(BGPLEVEL,"PROVS")=$G(BGPPROVS(BGPLEVEL,"PROVS"))_"; "_$$DATE^BGP5UTL($$VD^APCLV($P(^AUPNVPED(Y,0),U,3)))     ;"; "_$$VAL^XBDIQ1(200,R,.01)_"-"_D
 S BGPVALUE=""
 I 'G G PTG  ;no allowable topics
 S BGPVAX=1
 D S(BGPRPT,BGPGBL,11,19,1)  ;add to total # of patients with a topic
 I '$D(BGPPROVS) G PTG
 I $G(BGPPROVS("GS")) D S(BGPRPT,BGPGBL,11,20,1) S BGPVALUE="GS"_$G(BGPPROVS("GS","PROVS"))
 I $G(BGPPROVS("GNS")),'$G(BGPPROVS("GS")) D S(BGPRPT,BGPGBL,11,21,1) S BGPVALUE=BGPVALUE_$S(BGPVALUE]"":", ",1:"")_"GNS"_$G(BGPPROVS("GNS","PROVS"))
 I $G(BGPPROVS("GM")) D S(BGPRPT,BGPGBL,11,22,1) S BGPVALUE=BGPVALUE_$S(BGPVALUE]"":", ",1:"")_"GM"_$G(BGPPROVS("GM","PROVS"))
 I $G(BGPPROVS("GNM")),'$G(BGPPROVS("GM")) D S(BGPRPT,BGPGBL,11,23,1) S BGPVALUE=BGPVALUE_$S(BGPVALUE]"":", ",1:"")_"GNM"_$G(BGPPROVS("GNM","PROVS"))
 S BGPVALUE="UP PED: "_BGPVALUE
PTG ;now do patient goals stuff
 D S(BGPRPT,BGPGBL,11,29,1)  ;user pop
 ;did patient have a goal set with a start date in report period
 S BGPVALU=""
 K BGPSET
 D SET
 I $D(BGPSET) D
 .D S(BGPRPT,BGPGBL,11,24,1)
 .S BGPVALU=BGPVALU_$S(BGPVALU]"":"; GS:",1:"GS:")
 .S BGPT="" F  S BGPT=$O(BGPSET(BGPT)) Q:BGPT=""  S BGPC=BGPSET(BGPT) D SET71 S BGPVALU=BGPVALU_$S($P(BGPVALU,"GS:",2)="":"",1:", ")_$P(BGPSET(BGPT),U,2)
 K BGPNSET
 D NOTSET
 I $D(BGPNSET) D
 .D S(BGPRPT,BGPGBL,11,25,1)
 .S BGPVALU=BGPVALU_$S(BGPVALU]"":"; GNS:",1:"GNS:")
 .S BGPT="" F  S BGPT=$O(BGPNSET(BGPT)) Q:BGPT=""  S BGPC=BGPNSET(BGPT) D SET72 S BGPVALU=BGPVALU_$S($P(BGPVALU,"GNS:",2)="":"",1:", ")_$P(BGPNSET(BGPT),U,2)
 ;MET
 K BGPMET
 D MET
 I $D(BGPMET) D
 .D S(BGPRPT,BGPGBL,11,26,1)
 .S BGPVALU=BGPVALU_$S(BGPVALU]"":"; GM:",1:"GM:")
 .S BGPT="" F  S BGPT=$O(BGPMET(BGPT)) Q:BGPT=""  S BGPC=BGPMET(BGPT) D SET73^BGP5DPE3 S BGPVALU=BGPVALU_$S($P(BGPVALU,"GM:",2)="":"",1:", ")_$P(BGPMET(BGPT),U,2)
 K BGPMAIN
 D MAINTAIN
 I $D(BGPMAIN) D
 .D S(BGPRPT,BGPGBL,11,27,1)
 .S BGPVALU=BGPVALU_$S(BGPVALU]"":"; GMaint:",1:"GMaint:")
 .S BGPT="" F  S BGPT=$O(BGPMAIN(BGPT)) Q:BGPT=""  S BGPC=BGPMAIN(BGPT) D SET74^BGP5DPE3 S BGPVALU=BGPVALU_$S($P(BGPVALU,"GMaint:",2)="":"",1:", ")_$P(BGPMAIN(BGPT),U,2)
 K BGPNMET
 D NOTMET
 I $D(BGPNMET) D
 .D S(BGPRPT,BGPGBL,11,28,1)
 .S BGPVALU=BGPVALU_$S(BGPVALU]"":"; GNM:",1:"GNM:")
 .S BGPT="" F  S BGPT=$O(BGPNMET(BGPT)) Q:BGPT=""  S BGPC=BGPNMET(BGPT) D SET75^BGP5DPE3 S BGPVALU=BGPVALU_$S($P(BGPVALU,"GNM:",2)="":"",1:", ")_$P(BGPNMET(BGPT),U,2)
 I BGPVALU]"" S BGPVALU=" UP: "_BGPVALU
 S BGPVALUE=BGPVALU_" "_BGPVALUE_U_BGPVAX
 ;
 D SETLIST
 K BGPSET,BGPNSET,BGPMET,BGPMAIN,BGPNMET
 Q
S(R,G,N,P,V,J) ;
 I 'V Q  ;no value to add 
 I $G(J) S $P(@(G_R_","_N_")"),U,P)=$P($G(@(G_R_","_N_")")),U,P)=V Q
 S $P(@(G_R_","_N_")"),U,P)=$P($G(@(G_R_","_N_")")),U,P)+V
 Q
 ;
SETLIST ;
 Q:'$D(BGPLIST(BGPIC))
 Q:BGPTIME'=1
 I BGPLIST="P",$P(^AUPNPAT(DFN,0),U,14)'=BGPLPRV Q
 I BGPLIST="O",'$D(BGPEDPRV(BGPEPRV)) Q
 S BGPLIST(BGPIC)=$G(BGPLIST(BGPIC))+1
 S ^XTMP("BGP5PE",BGPJ,BGPH,"LIST",BGPIC,$S($P($G(^AUPNPAT(DFN,11)),U,18)]"":$P(^AUPNPAT(DFN,11),U,18),1:"UNKNOWN"),$P(^DPT(DFN,0),U,2),BGPAGEB,DFN)=$G(BGPVALUE)
 Q
NOTSET ;
 ;FIRST GATHER UP ALL SET GOALS AND GOAL TYPES
 K BGPNSET
 NEW X,Y,Z,%,D,G
 S G=""
 S X=0,%=""
 F  S X=$O(^AUPNGOAL("AC",DFN,X)) Q:X'=+X!(%]"")  D
 .Q:'$D(^AUPNGOAL(X,0))  ;BAD XREF
 .Q:$P(^AUPNGOAL(X,0),U,1)'="S"  ;NOT SET ONLY
 .S D=$P($P(^AUPNGOAL(X,0),U,9),".")
 .Q:D=""
 .Q:D<BGPBDATE
 .Q:D>BGPEDATE
 .S Y=0 F  S Y=$O(^AUPNGOAL(X,10,Y)) Q:Y'=+Y  D
 ..S Z=$P($G(^AUPNGOAL(X,10,Y,0)),U,1)
 ..I Z S G($$VAL^XBDIQ1(9001002.4,Z,.01))=""
 ;NOW CHECK GOALS NOT SET IN REPORT PERIOD AND CHECK TYPE
 S X=0,%=""
 F  S X=$O(^AUPNGOAL("AC",DFN,X)) Q:X'=+X!(%]"")  D
 .Q:'$D(^AUPNGOAL(X,0))  ;BAD XREF
 .Q:$P(^AUPNGOAL(X,0),U,1)'="N"  ;SET ONLY
 .S D=$P($P(^AUPNGOAL(X,0),U,5),".")
 .Q:D=""
 .Q:D<BGPBDATE
 .Q:D>BGPEDATE
 .S Y=0 F  S Y=$O(^AUPNGOAL(X,10,Y)) Q:Y'=+Y  D
 ..S Z=$P($G(^AUPNGOAL(X,10,Y,0)),U,1)
 ..I Z S Z=$$VAL^XBDIQ1(9001002.4,Z,.01)
 ..I Z]"",$D(G(Z)) Q  ;had a goal set for this type
 ..Q:Z=""
 ..S $P(BGPNSET(Z),U,1)=$P($G(BGPNSET(Z)),U,1)+1
 ..S $P(BGPNSET(Z),U,2)=$P(BGPNSET(Z),U,2)_$S($P(BGPNSET(Z),U,2)]"":",",1:"")_" "_$$DATE^BGP5UTL(D)_" - "_Z
 Q
MAINTAIN ;
 NEW D,%,X,Y,G
 S X=0,%="",G=0
 F  S X=$O(^AUPNGOAL("AC",DFN,X)) Q:X'=+X!(%]"")  D
 .S G=""
 .Q:'$D(^AUPNGOAL(X,0))  ;BAD XREF
 .Q:$P(^AUPNGOAL(X,0),U,1)'="S"  ;SET ONLY
 .I $P(^AUPNGOAL(X,0),U,11)="MA" S G=1
 .I $P(^AUPNGOAL(X,0),U,11)="A" S G=1
 .Q:'G
 .;DURING REPORT PERIOD MODIFIED DATE)
 .S G=0
 .S D=$P($P(^AUPNGOAL(X,0),U,5),".")
 .I D'<BGPBDATE,D'>BGPEDATE S G=1
 .Q:'G
 .S Y=0 F  S Y=$O(^AUPNGOAL(X,10,Y)) Q:Y'=+Y  D
 ..S Z=$P($G(^AUPNGOAL(X,10,Y,0)),U,1)
 ..I Z S Z=$$VAL^XBDIQ1(9001002.4,Z,.01)
 ..Q:Z=""
 ..S $P(BGPMAIN(Z),U,1)=$P($G(BGPMAIN(Z)),U,1)+1
 ..S $P(BGPMAIN(Z),U,2)=$P(BGPMAIN(Z),U,2)_$S($P(BGPMAIN(Z),U,2)]"":",",1:"")_" "_$$DATE^BGP5UTL(D)_" - "_Z
 ..Q
 Q
NOTMET ;
 NEW D,%,X,Y,G
 S X=0,%="",G=0
 F  S X=$O(^AUPNGOAL("AC",DFN,X)) Q:X'=+X!(%]"")  D
 .S G=0
 .Q:'$D(^AUPNGOAL(X,0))  ;BAD XREF
 .Q:$P(^AUPNGOAL(X,0),U,1)'="S"  ;SET ONLY
 .I $P(^AUPNGOAL(X,0),U,11)="S" S G=1
 .Q:'G
 .;DURING REPORT PERIOD MODIFIED DATE)
 .S G=0
 .S D=$P($P(^AUPNGOAL(X,0),U,5),".")
 .I D'<BGPBDATE,D'>BGPEDATE S G=1
 .Q:'G
 .S Y=0 F  S Y=$O(^AUPNGOAL(X,10,Y)) Q:Y'=+Y  D
 ..S Z=$P($G(^AUPNGOAL(X,10,Y,0)),U,1)
 ..I Z S Z=$$VAL^XBDIQ1(9001002.4,Z,.01)
 ..Q:Z=""
 ..S $P(BGPNMET(Z),U,1)=$P($G(BGPNMET(Z)),U,1)+1
 ..S $P(BGPNMET(Z),U,2)=$P(BGPNMET(Z),U,2)_$S($P(BGPNMET(Z),U,2)]"":",",1:"")_" "_$$DATE^BGP5UTL(D)_" - "_Z
 ..Q
 Q
MET ;
 NEW D,%,X,Y
 S X=0,%=""
 F  S X=$O(^AUPNGOAL("AC",DFN,X)) Q:X'=+X!(%]"")  D
 .Q:'$D(^AUPNGOAL(X,0))  ;BAD XREF
 .Q:$P(^AUPNGOAL(X,0),U,1)'="S"  ;SET ONLY
 .Q:$P(^AUPNGOAL(X,0),U,11)'="ME"
 .;DURING REPORT PERIOD MODIFIED DATE)
 .S G=0
 .S D=$P($P(^AUPNGOAL(X,0),U,5),".")
 .I D'<BGPBDATE,D'>BGPEDATE S G=1
 .Q:'G
 .S Y=0 F  S Y=$O(^AUPNGOAL(X,10,Y)) Q:Y'=+Y  D
 ..S Z=$P($G(^AUPNGOAL(X,10,Y,0)),U,1)
 ..I Z S Z=$$VAL^XBDIQ1(9001002.4,Z,.01)
 ..Q:Z=""
 ..S $P(BGPMET(Z),U,1)=$P($G(BGPMET(Z)),U,1)+1
 ..S $P(BGPMET(Z),U,2)=$P(BGPMET(Z),U,2)_$S($P(BGPMET(Z),U,2)]"":",",1:"")_" "_$$DATE^BGP5UTL(D)_" - "_Z
 ..Q
 Q
SET ;
 NEW X,Y,Z,%,D
 K BGPSET
 S X=0,%=""
 F  S X=$O(^AUPNGOAL("AC",DFN,X)) Q:X'=+X  D
 .Q:'$D(^AUPNGOAL(X,0))  ;BAD XREF
 .Q:$P(^AUPNGOAL(X,0),U,1)'="S"  ;SET ONLY
 .S D=$P($P(^AUPNGOAL(X,0),U,9),".")
 .Q:D=""
 .Q:D<BGPBDATE
 .Q:D>BGPEDATE
 .S Y=0 F  S Y=$O(^AUPNGOAL(X,10,Y)) Q:Y'=+Y  D
 ..S Z=$P($G(^AUPNGOAL(X,10,Y,0)),U,1)
 ..I Z S Z=$$VAL^XBDIQ1(9001002.4,Z,.01)
 ..Q:Z=""
 ..S $P(BGPSET(Z),U,1)=$P($G(BGPSET(Z)),U,1)+1
 ..S $P(BGPSET(Z),U,2)=$P(BGPSET(Z),U,2)_$S($P(BGPSET(Z),U,2)]"":",",1:"")_" "_$$DATE^BGP5UTL(D)_" - "_Z
 Q
SET71 ;
 I BGPTIME=2 D SET71P Q
 I BGPTIME=3 D SET71B Q
 I '$D(^BGPPEDCK(BGPRPT,16,0)) S ^BGPPEDCK(BGPRPT,16,0)="^90554.1216A^0^0"
 S Z=$O(^BGPPEDCK(BGPRPT,16,"B",BGPT,0)) I Z D  Q
 .S $P(^BGPPEDCK(BGPRPT,16,Z,0),U,3)=$P(^BGPPEDCK(BGPRPT,16,Z,0),U,3)+BGPC
 S Z=$P(^BGPPEDCK(BGPRPT,16,0),U,3)+BGPC,$P(^BGPPEDCK(BGPRPT,16,0),U,3)=Z,$P(^BGPPEDCK(BGPRPT,16,0),U,4)=Z
 S ^BGPPEDCK(BGPRPT,16,Z,0)=BGPT_U_BGPT_U_BGPC
 S ^BGPPEDCK(BGPRPT,16,"B",BGPT,Z)=""
 Q
SET71P ;
 I '$D(^BGPPEDPK(BGPRPT,16,0)) S ^BGPPEDPK(BGPRPT,16,0)="^90554.1316A^0^0"
 S Z=$O(^BGPPEDPK(BGPRPT,16,"B",BGPT,0)) I Z D  Q
 .S $P(^BGPPEDPK(BGPRPT,16,Z,0),U,3)=$P(^BGPPEDPK(BGPRPT,16,Z,0),U,3)+1
 S Z=$P(^BGPPEDPK(BGPRPT,16,0),U,3)+1,$P(^BGPPEDPK(BGPRPT,16,0),U,3)=Z,$P(^BGPPEDPK(BGPRPT,16,0),U,4)=Z
 S ^BGPPEDPK(BGPRPT,16,Z,0)=BGPT_U_BGPT_U_1
 S ^BGPPEDPK(BGPRPT,16,"B",BGPT,Z)=""
 Q
SET71B ;
 I '$D(^BGPPEDBK(BGPRPT,16,0)) S ^BGPPEDBK(BGPRPT,16,0)="^90554.1416A^0^0"
 S Z=$O(^BGPPEDBK(BGPRPT,16,"B",BGPT,0)) I Z D  Q
 .S $P(^BGPPEDBK(BGPRPT,16,Z,0),U,3)=$P(^BGPPEDBK(BGPRPT,16,Z,0),U,3)+1
 S Z=$P(^BGPPEDBK(BGPRPT,16,0),U,3)+1,$P(^BGPPEDBK(BGPRPT,16,0),U,3)=Z,$P(^BGPPEDBK(BGPRPT,16,0),U,4)=Z
 S ^BGPPEDBK(BGPRPT,16,Z,0)=BGPT_U_BGPT_U_1
 S ^BGPPEDBK(BGPRPT,16,"B",BGPT,Z)=""
 Q
SET72 ;
 I BGPTIME=2 D SET72P Q
 I BGPTIME=3 D SET72B Q
 I '$D(^BGPPEDCK(BGPRPT,17,0)) S ^BGPPEDCK(BGPRPT,17,0)="^90554.1217A^0^0"
 S Z=$O(^BGPPEDCK(BGPRPT,17,"B",BGPT,0)) I Z D  Q
 .S $P(^BGPPEDCK(BGPRPT,17,Z,0),U,3)=$P(^BGPPEDCK(BGPRPT,17,Z,0),U,3)+BGPC
 S Z=$P(^BGPPEDCK(BGPRPT,17,0),U,3)+BGPC,$P(^BGPPEDCK(BGPRPT,17,0),U,3)=Z,$P(^BGPPEDCK(BGPRPT,17,0),U,4)=Z
 S ^BGPPEDCK(BGPRPT,17,Z,0)=BGPT_U_BGPT_U_BGPC
 S ^BGPPEDCK(BGPRPT,17,"B",BGPT,Z)=""
 Q
SET72P ;
 I '$D(^BGPPEDPK(BGPRPT,17,0)) S ^BGPPEDPK(BGPRPT,17,0)="^90554.1317A^0^0"
 S Z=$O(^BGPPEDPK(BGPRPT,17,"B",BGPT,0)) I Z D  Q
 .S $P(^BGPPEDPK(BGPRPT,17,Z,0),U,3)=$P(^BGPPEDPK(BGPRPT,17,Z,0),U,3)+1
 S Z=$P(^BGPPEDPK(BGPRPT,17,0),U,3)+1,$P(^BGPPEDPK(BGPRPT,17,0),U,3)=Z,$P(^BGPPEDPK(BGPRPT,17,0),U,4)=Z
 S ^BGPPEDPK(BGPRPT,17,Z,0)=BGPT_U_BGPT_U_1
 S ^BGPPEDPK(BGPRPT,17,"B",BGPT,Z)=""
 Q
SET72B ;
 I '$D(^BGPPEDBK(BGPRPT,17,0)) S ^BGPPEDBK(BGPRPT,17,0)="^90554.1417A^0^0"
 S Z=$O(^BGPPEDBK(BGPRPT,17,"B",BGPT,0)) I Z D  Q
 .S $P(^BGPPEDBK(BGPRPT,17,Z,0),U,3)=$P(^BGPPEDBK(BGPRPT,17,Z,0),U,3)+1
 S Z=$P(^BGPPEDBK(BGPRPT,17,0),U,3)+1,$P(^BGPPEDBK(BGPRPT,17,0),U,3)=Z,$P(^BGPPEDBK(BGPRPT,17,0),U,4)=Z
 S ^BGPPEDBK(BGPRPT,17,Z,0)=BGPT_U_BGPT_U_1
 S ^BGPPEDBK(BGPRPT,17,"B",BGPT,Z)=""
 Q