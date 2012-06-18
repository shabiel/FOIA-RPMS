BGP7DPE2 ; IHS/CMI/LAB - calc measures 29 Apr 2007 7:38 PM 14 Nov 2006 5:02 PM ; 
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;
5 ;EP
 Q:'$D(^AUPNVPED("AC",DFN))  ;no education so don't bother
 K BGPALLED S BGPVALUE=""
 K BGPPROVS
 S BGPFYCT=$O(^BGPCTRL("B",2007,0))
 S Y="BGPALLED("
 S X=DFN_"^ALL EDUC;DURING "_$$FMTE^XLFDT(BGPBDATE)_"-"_$$FMTE^XLFDT(BGPEDATE) S E=$$START1^APCLDF(X,Y)
 I '$D(BGPALLED(1)) Q
 S (X,D,G)=0,%="",T="" F  S X=$O(BGPALLED(X)) Q:X'=+X!(G)  D
 .S Y=+$P(BGPALLED(X),U,4)
 .S T=$P(^AUPNVPED(+$P(BGPALLED(X),U,4),0),U)
 .Q:'T
 .Q:'$D(^AUTTEDT(T,0))
 .S T=$P(^AUTTEDT(T,0),U,2)
 .I T="" Q
 .Q:'$D(^BGPCTRL(BGPFYCT,62,"B",T))  ;not an official topic per Chris Lamer's spreadsheet
 .Q:$P(^AUPNVPED(Y,0),U,5)=""  ;SKIP IF NO PROVIDER DOCUMENTED
 .S P=$P(^AUPNVPED(Y,0),U,5)
 .S D=$P($G(^VA(200,P,"PS")),U,5)
 .I 'D Q  ;no discipline to tally
 .S BGPT=$P($G(^DIC(7,D,9999999)),U,1)
 .S BGPT1=$P(^DIC(7,D,0),U,1)
 .D S(BGPRPT,BGPGBL,11,10,1)  ;add to total # of topics
 .I BGPTIME=1 D SET51
 .I BGPTIME=2 D SET52
 .I BGPTIME=3 D SET53
 .;set PROVS For this patient
 .S BGPPROVS(BGPT1)=$G(BGPPROVS(BGPT1))+1
 Q:'$D(BGPPROVS)
 S BGPVALUE=""
 S X="" F  S X=$O(BGPPROVS(X)) Q:X=""  S BGPVALUE=BGPVALUE_$S(BGPVALUE]"":";",1:"")_X_"-"_BGPPROVS(X)
 D SETLIST
 Q
SET51 ;
 I '$D(^BGPPEDCA(BGPRPT,15,0)) S ^BGPPEDCA(BGPRPT,15,0)="^90530.1215A^0^0"
 S Z=$O(^BGPPEDCA(BGPRPT,15,"B",BGPT,0)) I Z D  Q
 .S $P(^BGPPEDCA(BGPRPT,15,Z,0),U,3)=$P(^BGPPEDCA(BGPRPT,15,Z,0),U,3)+1
 S Z=$P(^BGPPEDCA(BGPRPT,15,0),U,3)+1,$P(^BGPPEDCA(BGPRPT,15,0),U,3)=Z,$P(^BGPPEDCA(BGPRPT,15,0),U,4)=Z
 S ^BGPPEDCA(BGPRPT,15,Z,0)=BGPT_U_BGPT1_U_1
 S ^BGPPEDCA(BGPRPT,15,"B",BGPT,Z)=""
 Q
SET52 ;
 I '$D(^BGPPEDPA(BGPRPT,15,0)) S ^BGPPEDPA(BGPRPT,15,0)="^90530.1315A^0^0"
 S Z=$O(^BGPPEDPA(BGPRPT,15,"B",BGPT,0)) I Z D  Q
 .S $P(^BGPPEDPA(BGPRPT,15,Z,0),U,3)=$P(^BGPPEDPA(BGPRPT,15,Z,0),U,3)+1
 S Z=$P(^BGPPEDPA(BGPRPT,15,0),U,3)+1,$P(^BGPPEDPA(BGPRPT,15,0),U,3)=Z,$P(^BGPPEDPA(BGPRPT,15,0),U,4)=Z
 S ^BGPPEDPA(BGPRPT,15,Z,0)=BGPT_U_BGPT1_U_1
 S ^BGPPEDPA(BGPRPT,15,"B",BGPT,Z)=""
 Q
SET53 ;
 I '$D(^BGPPEDBA(BGPRPT,15,0)) S ^BGPPEDBA(BGPRPT,15,0)="^90530.1515A^0^0"
 S Z=$O(^BGPPEDBA(BGPRPT,15,"B",BGPT,0)) I Z D  Q
 .S $P(^BGPPEDBA(BGPRPT,15,Z,0),U,3)=$P(^BGPPEDBA(BGPRPT,15,Z,0),U,3)+1
 S Z=$P(^BGPPEDBA(BGPRPT,15,0),U,3)+1,$P(^BGPPEDBA(BGPRPT,15,0),U,3)=Z,$P(^BGPPEDBA(BGPRPT,15,0),U,4)=Z
 S ^BGPPEDBA(BGPRPT,15,Z,0)=BGPT_U_BGPT1_U_1
 S ^BGPPEDBA(BGPRPT,15,"B",BGPT,Z)=""
 Q
6 ;EP
 Q:'$D(^AUPNVPED("AC",DFN))  ;no education so don't bother
 K BGPALLED S BGPVALUE=""
 K BGPPROVS
 S BGPFYCT=$O(^BGPCTRL("B",2007,0))
 S Y="BGPALLED("
 S X=DFN_"^ALL EDUC;DURING "_$$FMTE^XLFDT(BGPBDATE)_"-"_$$FMTE^XLFDT(BGPEDATE) S E=$$START1^APCLDF(X,Y)
 I '$D(BGPALLED(1)) Q
 S (X,D,G)=0,%="",T="" F  S X=$O(BGPALLED(X)) Q:X'=+X!(G)  D
 .S Y=+$P(BGPALLED(X),U,4)
 .S T=$P(^AUPNVPED(+$P(BGPALLED(X),U,4),0),U)
 .Q:'T
 .Q:'$D(^AUTTEDT(T,0))
 .S T=$P(^AUTTEDT(T,0),U,2)
 .I T="" Q
 .Q:'$D(^BGPCTRL(BGPFYCT,62,"B",T))  ;not an official topic per Chris Lamer's spreadsheet
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
 Q:'$D(BGPPROVS)
 S BGPVALUE=""
 S X="" F  S X=$O(BGPPROVS(X)) Q:X=""  S BGPVALUE=BGPVALUE_$S(BGPVALUE]"":";",1:"")_$S(X:$$EXTSET^XBFUNC(9000010.16,.06,X),1:"BLANK-NOT RECORDED")_"-"_BGPPROVS(X)
 D SETLIST
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
 S BGPLIST(BGPIC)=$G(BGPLIST(BGPIC))+1
 S ^XTMP("BGP7PE",BGPJ,BGPH,"LIST",BGPIC,$S($P($G(^AUPNPAT(DFN,11)),U,18)]"":$P(^AUPNPAT(DFN,11),U,18),1:"UNKNOWN"),$P(^DPT(DFN,0),U,2),BGPAGEB,DFN)=$G(BGPVALUE)
 Q