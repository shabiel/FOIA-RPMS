BDMD416 ; IHS/CMI/LAB - 2012 DIABETES AUDIT ; 02 Feb 2012  2:41 PM
 ;;2.0;DIABETES MANAGEMENT SYSTEM;**5**;JUN 14, 2007
 ;
 ;
TBCODE(P,EDATE,R) ;EP
 NEW BDMJ,BDMI,X,BDMR
 S BDMJ=""
 ;return computed TB Status Code
 S X=$$TBTX^BDMD412(P)
 I $E(X)=1 Q 1
 I $E(X) Q 2
 S BDMR=$$PPD^BDMD418(P,EDATE)
 I $E($P(BDMR,"||",2))=1 D  Q BDMJ
 .I $$TBTX^BDMD412(P)["TX COMPLETE" S BDMJ=1 Q
 .S BDMJ=2
 .Q
 I $E($P(BDMR,"||",2))=2 S BDMJ=4 D  Q BDMJ
 .I $$DODX(P,R,"I")="" S BDMJ=6 Q
 .S D=$$DODX(P,R,"I"),E=$$PPD^BDMD418(P,EDATE,"I") S BDMJ=$S(D>E:4,1:3)
 .Q
 I $E(BDMR)=4 S BDMJ=5
 I $E(BDMR)=3 S BDMJ=7
 I $E($P(BDMR,"||",2))=3 S BDMJ=7
 I $E($P(BDMR,"||",2))=4 S BDMJ=5
 Q BDMJ
 ;;
1 ;;PPD +, treatment complete
2 ;;PPD +, not treated/treatment incomplete or unknown treatment
3 ;;PPD -, placed on or after date of DM dx
4 ;;PPD -, placed before date of DM dx
5 ;;PPD Status unknown
6 ;;PPD -, date of DX or PPD date unknown
7 ;;PPD Refused
BI() ;
 Q $S($O(^AUTTIMM(0))>100:1,1:0)
SYSMEAN(P,BDATE,EDATE) ;EP
 NEW X S X=$$BPS^BDMD413(P,BDATE,EDATE,"I")
 I X="" Q ""
 NEW Y,C,Z S C=0 F Y=1:1:3 I $P(X,";",Y)]"" S C=C+1
 I C<2 Q ""
 S Z=C
 S C=0 F Y=1:1:3 S C=$P($P(X,";",Y),"/")+C
 Q C\Z
DIAMEAN(P,BDATE,EDATE) ;EP
 NEW X S X=$$BPS^BDMD413(P,BDATE,EDATE,"I")
 I X="" Q ""
 NEW Y,C,Z S C=0 F Y=1:1:3 I $P(X,";",Y)]"" S C=C+1
 I C<2 Q ""
 S Z=C
 S C=0 F Y=1:1:3 S C=$P($P(X,";",Y),"/",2)+C
 Q C\Z
PPDDATE(P,EDATE) ;EP
 NEW X S X=$$LASTNP^BDMD418(P,EDATE)
 Q X
XLIPID(P,BDATE,EDATE) ;EP
 NEW X,BDM,E,G,S,O
 S (S,O,G)="",X=P_"^MEDS [DM AUDIT LIPID LOWERING DRUGS"_";DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(X,"BDM(")
 I $D(BDM(1)) S O=1
 K BDM
 S X=P_"^MEDS [DM AUDIT STATIN DRUGS"_";DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(X,"BDM(")
 I $D(BDM(1)) S S=1
 I S,O Q "3  Both"
 I S Q "1  Statin"
 I O Q "2  Other"
 ;refusal
 S G=0
 NEW T S T=$O(^ATXAX("B","DM AUDIT LIPID LOWERING DRUGS",0))
 I 'T G LIPIDN
 S X=0 F  S X=$O(^ATXAX(T,21,X)) Q:X'=+X!(G)  S G=$$REFUSAL^BDMD417(P,50,$P(^ATXAX(T,21,X,0),U),BDATE,EDATE)
 I G Q "5  Refused or Adverse Rxn"
LIPIDN ;
 NEW T S T=$O(^ATXAX("B","DM AUDIT STATIN DRUGS",0))
 I 'T G LIPIDA
 S (X,G)=0 F  S X=$O(^ATXAX(T,21,X)) Q:X'=+X!(G)  S G=$$REFUSAL^BDMD417(P,50,$P(^ATXAX(T,21,X,0),U),BDATE,EDATE)
 I G Q "5  Refused or Adverse Rxn"
LIPIDA ;
 ;check patient allergies file for any with va drug class CV350
 S X=EDATE,%DT="P" D ^%DT S B=Y
 S X=0,G="" F  S X=$O(^GMR(120.8,"B",P,X)) Q:X'=+X  D
 .Q:$P($P($G(^GMR(120.8,X,0)),U,4),".")>B  ;entered after discharge date
 .S C=$O(^PS(50.605,"B","CV350",0))
 .S N=$P($G(^GMR(120.8,X,0)),U,2),N=$$UP^XLFSTR(N)
 .I C,$D(^GMR(120.8,X,3,"B",C)) S G="5  Refused/Adverse Rxn  (Allergy Tracking)"
 I G]"" Q G
 Q "4  None"
 ;
REFMEDL(P,BDATE,EDATE) ;EP
 NEW T,T1,T2,T3,T4,T5,T6,T7,T8,A,G,B,Y,X,I,Z,E
 S T=$O(^ATXAX("B","DM AUDIT STATIN DRUGS",0))
 S T1=$O(^ATXAX("B","DM AUDIT FIBRATE DRUGS",0))
 S T2=$O(^ATXAX("B","DM AUDIT NIACIN DRUGS",0))
 S T3=$O(^ATXAX("B","DM AUDIT BILE ACID DRUGS",0))
 S T4=$O(^ATXAX("B","DM AUDIT GLITAZONE DRUGS",0))
 S T5=$O(^ATXAX("B","DM AUDIT EZETIMIBE DRUGS",0))
 S T6=$O(^ATXAX("B","DM AUDIT FISH OIL DRUGS",0))
 S T7=$O(^ATXAX("B","DM AUDIT LOVAZA DRUGS",0))
 S G=0
 NEW %DT S X=BDATE,%DT="P" D ^%DT S B=Y
 S X=EDATE,%DT="P" D ^%DT S E=Y
 S G="",A=""
 S I=0 F  S I=$O(^AUPNPREF("AA",BDMPD,50,I)) Q:I'=+I!(A)  D
 .S A=0
 .I T,$D(^ATXAX(T,21,"B",I)) S A=1
 .I T1,$D(^ATXAX(T1,21,"B",I)) S A=1
 .I T2,$D(^ATXAX(T2,21,"B",I)) S A=1
 .I T3,$D(^ATXAX(T3,21,"B",I)) S A=1
 .I T4,$D(^ATXAX(T4,21,"B",I)) S A=1
 .I T5,$D(^ATXAX(T5,21,"B",I)) S A=1
 .I T6,$D(^ATXAX(T6,21,"B",I)) S A=1
 .I T7,$D(^ATXAX(T7,21,"B",I)) S A=1
 .;Q:'A
 .;S X=0 F  S X=$O(^AUPNPREF("AA",BDMPD,50,I,X)) Q:X'=+X!(G)  D
 .;.S Y=0 F  S Y=$O(^AUPNPREF("AA",BDMPD,50,I,X,Y)) Q:Y'=+Y  S D=$P(^AUPNPREF(Y,0),U,3) I D'<B&(D'>E) I $P(^AUPNPREF(Y,0),U,7)="R" S G=1
 Q $S(A:2,1:1)
STATIN(P,BDATE,EDATE) ;EP
 NEW X,BDM,E
 S X=P_"^LAST MEDS [DM AUDIT STATIN DRUGS"_";DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(X,"BDM(")
 I $D(BDM(1)) Q "X"
 Q ""
 ;
FIBRATE(P,BDATE,EDATE) ;EP
 NEW X,BDM,E
 S X=P_"^LAST MEDS [DM AUDIT FIBRATE DRUGS"_";DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(X,"BDM(")
 I $D(BDM(1)) Q "X"
 Q ""
 ;
NIACIN(P,BDATE,EDATE) ;EP
 NEW X,BDM,E
 S X=P_"^LAST MEDS [DM AUDIT NIACIN DRUGS"_";DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(X,"BDM(")
 I $D(BDM(1)) Q "X"
 Q ""
 ;
BILE(P,BDATE,EDATE) ;EP
 NEW X,BDM,E
 S X=P_"^LAST MEDS [DM AUDIT BILE ACID DRUGS"_";DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(X,"BDM(")
 I $D(BDM(1)) Q "X"
 Q ""
 ;
EZET(P,BDATE,EDATE) ;EP
 NEW X,BDM,E
 S X=P_"^LAST MEDS [DM AUDIT EZETIMIBE DRUGS"_";DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(X,"BDM(")
 I $D(BDM(1)) Q "X"
 Q ""
 ;
FISHOIL(P,BDATE,EDATE) ;EP
 NEW X,BDM,E
 S X=P_"^LAST MEDS [DM AUDIT FISH OIL DRUGS"_";DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(X,"BDM(")
 I $D(BDM(1)) Q "X"
 Q ""
 ;
LOVAZA(P,BDATE,EDATE) ;EP
 NEW X,BDM,E
 S X=P_"^LAST MEDS [DM AUDIT LOVAZA DRUGS"_";DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(X,"BDM(")
 I $D(BDM(1)) Q "X"
 Q ""
 ;
ACE(P,BDATE,EDATE) ;EP
 NEW X,BDM,E,X,Y,%DT,BD,G
 S X=P_"^MEDS [DM AUDIT ACE INHIBITORS"_";DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(X,"BDM(")
 I $D(BDM(1)) Q "1  Yes   "_$P(BDM(1),U,3)_"  "_$$FMTE^XLFDT($P(BDM(1),U))
 ;go through all v meds until 9999999-D and find all drugs with class CV800 or CV805
 NEW D,%DT K %DT S X=BDATE,%DT="P" D ^%DT S D=Y
 NEW V,I,%
 K %DT S X=EDATE,%DT="P" D ^%DT S E=Y
 S %=""
 S I=9999999-E,I=I-1 F  S I=$O(^AUPNVMED("AA",P,I)) Q:I'=+I!(%)!(I>(9999999-D))  D
 .S V=0 F  S V=$O(^AUPNVMED("AA",P,I,V)) Q:V'=+V  S G=$P(^AUPNVMED(V,0),U) I $P($G(^PSDRUG(G,0)),U,2)="CV800"!($P($G(^PSDRUG(G,0)),U,2)="CV805") S %=$P($P(^AUPNVSIT($P(^AUPNVMED(V,0),U,3),0),U),".")_U_G
 I %]"" Q "1  Yes   "_$P(^PSDRUG($P(%,U,2),0),U)_"  "_$$FMTE^XLFDT($P(%,U,1))
 ;refusals
 NEW T S T=$O(^ATXAX("B","DM AUDIT ACE INHIBITORS",0))
 I 'T Q "2  No"
 S (G,X)=0 F  S X=$O(^ATXAX(T,21,X)) Q:X'=+X!(G)  S G=$$REFUSAL^BDMD417(P,50,$P(^ATXAX(T,21,X,0),U),BDATE,EDATE)
 I G,$P(G,U,2)'="N" Q "3  Refused or adverse reaction"
 Q "2  No"_$S(G:" - Not Medically Indicated",1:"")
 ;
SELF(P,BDATE,EDATE) ;EP
 NEW T,BDM,E,X,%DT,Y,ED,BD
 S X=EDATE,%DT="P" D ^%DT S ED=Y
 S X=BDATE,%DT="P" D ^%DT S BD=Y
 S E=$$LASTHF^BDMD419(P,"DIABETES SELF MONITORING",BD,ED,"F")
 I E]"" Q $S(E["YES":"Yes",E["NO":"No",E["REFUSED":"Refused",1:"")
 S X=P_"^MEDS [DM AUDIT SELF MONITOR DRUGS"_";DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(X,"BDM(")
 I $D(BDM(1)) Q "Yes"
 Q "No"
SDM(P,BDATE,EDATE) ;EP
 NEW T,BDM,E,X,%DT,Y,ED,BD
 S X=EDATE,%DT="P" D ^%DT S ED=Y
 S X=BDATE,%DT="P" D ^%DT S BD=Y
 S E=$$LASTHF^BDMD419(P,"STAGED DIABETES MANAGEMENT",BD,ED)
 I E Q "Yes"
 S T=$O(^ATXAX("B","DM AUDIT SDM PROVIDERS",0))
 I 'T Q ""
 S %=P_"^ALL DX [SURVEILLANCE DIABETES;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BDM(")
 ;check to see if one of the providers was the primary prov
 NEW X,V,G,P,P1 S (G,X)=0 F  S X=$O(BDM(X)) Q:X'=+X!(G)  S V=$P(BDM(X),U,5) D
 .S P=0 F  S P=$O(^AUPNVPRV("AD",V,P)) Q:P'=+P!(G)  S P1=$P(^AUPNVPRV(P,0),U) I $D(^ATXAX(T,21,"B",P1)) S G=1
 .Q
 Q $S(G:"Yes",1:"No")
 ;
ASPIRIN(P,BDATE,EDATE) ;EP
 G ASPIRIN^BDMD418
 ;
THERAPY(P,BD,EDATE) ;EP - therapy code for epi
 I '$G(P) Q ""
 NEW STR,TNAME,X,Y,%DT,HO
 S STR="",TNAME="",HO=""
 S X=$$INSULIN^BDMD412(P,BD,EDATE)
 I X]"" S STR=STR_2_U,HO=1
 S X=$$SULF^BDMD412(P,BD,EDATE)
 I X]"" S STR=STR_3_U,HO=1
 S X=$$SULFLIKE^BDMD412(P,BD,EDATE)
 I X]"" S STR=STR_4_U,HO=1
 S X=$$MET^BDMD412(P,BD,EDATE)
 I X]"" S STR=STR_5_U,HO=1
 S X=$$ACAR^BDMD412(P,BD,EDATE)
 I X]"" S STR=STR_6_U,HO=1
 S X=$$TROG^BDMD412(P,BD,EDATE)
 I X]"" S STR=STR_7_U,HO=1
 S X=$$INCR^BDMD412(P,BD,EDATE)
 I X]"" S STR=STR_8_U,HO=1
 S X=$$DPP4^BDMD412(P,BD,EDATE)
 I X]"" S STR=STR_9_U,HO=1
 S X=$$AMYLIN^BDMD412(P,BD,EDATE)
 I X]"" S STR=STR_10_U,HO=1
 S X=$$GLP1^BDMD412(P,BD,EDATE)
 I X]"" S STR=STR_11_U,HO=1
 S X=$$BROM^BDMD412(P,BD,EDATE)
 I X]"" S STR=STR_12_U,HO=1
 S X=$$COLE^BDMD412(P,BD,EDATE)
 I X]"" S STR=STR_13_U,HO=1
 I HO Q STR
 S X=$$REFMED^BDMD412(P,BD,EDATE)
 I X Q "R"
 Q 1
 ;
DIETONLY(P,BD,EDATE) ;EP - diet and exercise for audit export
 NEW STR,TNAME,X,Y,%DT
 S STR="",TNAME=""
 S X=$$INSULIN^BDMD412(P,BD,EDATE)
 I X]"" Q 2
 S X=$$SULF^BDMD412(P,BD,EDATE)
 I X]"" Q 2
 S X=$$SULFLIKE^BDMD412(P,BD,EDATE)
 I X]"" Q 2
 S X=$$MET^BDMD412(P,BD,EDATE)
 I X]"" Q 2
 S X=$$ACAR^BDMD412(P,BD,EDATE)
 I X]"" Q 2
 S X=$$TROG^BDMD412(P,BD,EDATE)
 I X]"" Q 2
 S X=$$INCR^BDMD412(P,BD,EDATE)
 I X]"" Q 2
 S X=$$DPP4^BDMD412(P,BD,EDATE)
 I X]"" Q 2
 S X=$$AMYLIN^BDMD412(P,BD,EDATE)
 I X]"" Q 2
 S X=$$GLP1^BDMD412(P,BD,EDATE)
 I X]"" Q 2
 S X=$$BROM^BDMD412(P,BD,EDATE)
 I X]"" Q 2
 S X=$$COLE^BDMD412(P,BD,EDATE)
 I X]"" Q 2
 S X=$$REFMED^BDMD412(P,BD,EDATE)
 I X Q 2
 Q 1
 ;
REFMEDE(P,BD,EDATE) ;EP - diet and exercise for audit export
 NEW STR,TNAME,X,Y,%DT
 S STR="",TNAME=""
 S X=$$INSULIN^BDMD412(P,BD,EDATE)
 I X]"" Q 2
 S X=$$SULF^BDMD412(P,BD,EDATE)
 I X]"" Q 2
 S X=$$SULFLIKE^BDMD412(P,BD,EDATE)
 I X]"" Q 2
 S X=$$MET^BDMD412(P,BD,EDATE)
 I X]"" Q 2
 S X=$$ACAR^BDMD412(P,BD,EDATE)
 I X]"" Q 2
 S X=$$TROG^BDMD412(P,BD,EDATE)
 I X]"" Q 2
 S X=$$INCR^BDMD412(P,BD,EDATE)
 I X]"" Q 2
 S X=$$DPP4^BDMD412(P,BD,EDATE)
 I X]"" Q 2
 S X=$$AMYLIN^BDMD412(P,BD,EDATE)
 I X]"" Q 2
 S X=$$GLP1^BDMD412(P,BD,EDATE)
 I X]"" Q 2
 S X=$$BROM^BDMD412(P,BD,EDATE)
 I X]"" Q 2
 S X=$$COLE^BDMD412(P,BD,EDATE)
 I X]"" Q 2
 S X=$$REFMED^BDMD412(P,BD,EDATE)
 I X Q 1
 Q 2
 ;
REFMEDLE(P,BD,EDATE) ;EP - ANY REFUSAL?
 NEW STR,TNAME,X,Y,%DT
 S STR="",TNAME=""
 S X=$$STATIN^BDMD416(P,BD,EDATE)
 I X]"" Q 2
 S X=$$FIBRATE^BDMD416(P,BD,EDATE)
 I X]"" Q 2
 S X=$$NIACIN^BDMD416(P,BD,EDATE)
 I X]"" Q 2
 S X=$$BILE^BDMD416(P,BD,EDATE)
 I X]"" Q 2
 S X=$$EZET^BDMD416(P,BD,EDATE)
 I X]"" Q 2
 S X=$$FISHOIL^BDMD416(P,BD,EDATE)
 I X]"" Q 2
 S X=$$LOVAZA^BDMD416(P,BD,EDATE)
 I X]"" Q 2
 S X=$$REFMEDL^BDMD416(P,BD,EDATE)
 I X Q 1
 Q 2
 ;
TYPE(P,R,EDATE) ;EP return type 1 or 2 for epi file
 I '$G(P) Q ""
 NEW TYPE S TYPE=""
 I $G(R) S TYPE=$$CMSFDX^BDMD413(P,R,"DX")
 I TYPE="NIDDM" Q 2
 I TYPE["TYPE II" Q 2
 I TYPE="IDDM" Q 1
 I TYPE["2" Q 2
 I TYPE["1" Q 1
 S TYPE="" NEW X,I,C S X=$$PLDMDXS^BDMD413(P)
 F I=1:1 S C=$P(X,";",I) Q:C=""!(TYPE]"")  I $E(C,6)=0!($E(C,6)=2) S TYPE=2
 I TYPE]"" Q TYPE
 F I=1:1 S C=$P(X,";",I) Q:C=""!(TYPE]"")  I $E(C,6)=1!($E(C,6)=3) S TYPE=1
 I TYPE]"" Q TYPE
 S X=$$LASTDMDX^BDMD413(P,EDATE)
 I X[2 Q 2
 I X[1 Q 1
 Q ""
 ;
DURDM(P,R,EDATE) ;EP
 I '$G(P) Q ""
 NEW Y S Y=$$DODX(P,R,"I")
 I Y="" Q ""
 I 'Y Q ""
 I Y>EDATE Q ""
 Q $P(($$FMDIFF^XLFDT(EDATE,Y,1)\365.25),".")
 ;
DODX(P,R,F) ;EP - date of dx for epi file
 I $G(F)="" S F="E"
 NEW DATE,EARLY
 S DATE="",EARLY=9999999
 I $G(R) S DATE=$$CMSFDX^BDMD413(P,R,"ID")
 I DATE S EARLY=DATE
 S DATE=$$PLDMDOO^BDMD413(P,"I")
 I DATE,DATE<EARLY S EARLY=DATE
 I EARLY=9999999 S EARLY=""
 Q $S(F="I":$$DI(EARLY),1:$$D(EARLY))
 ;
D(D) ;
 I D="" Q ""
 Q $S($E(D,4,5)="00":"07",1:$E(D,4,5))_"/"_$S($E(D,6,7)="00":"01",1:$E(D,6,7))_"/"_(1700+$E(D,1,3))
 ;
DI(D) ;EP
 I D="" Q ""
 Q $E(D,1,3)_$S($E(D,4,5)="00":"07",1:$E(D,4,5))_$S($E(D,6,7)="00":"01",1:$E(D,6,7))