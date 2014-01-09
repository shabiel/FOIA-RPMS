BGP3D23 ; IHS/CMI/LAB - measure I2 23 Jun 2010 10:08 AM ;
 ;;13.0;IHS CLINICAL REPORTING;;NOV 20, 2012;Build 81
 ;
IMS ;EP
 S (BGPN1,BGPN2,BGPN3,BGPN4,BGPN5,BGPN6,BGPN7,BGPN8,BGPN9,BGPN10,BGPN11,BGPN12,BGPN13,BGPD1,BGPD2)=0
 S BGPVALUE=""
 I $$LASTDX^BGP3UTL1(DFN,"SURVEILLANCE DIABETES",$P(^DPT(DFN,0),U,3),BGPEDATE) S BGPSTOP=1 Q  ;had diabetes dx
 S BGPD=$$MS(DFN,BGPBDATE,BGPEDATE)
 I BGPD="" S BGPSTOP=1 Q  ;not in denominator
 Q:BGPAGEB<18
 I BGPACTCL S BGPD1=1
 I BGPACTUP S BGPD2=1
 I 'BGPD2 Q  ;not at least up
 S BGPVALUE="UP"
 I BGPD1 S BGPVALUE=BGPVALUE_",AC"
 S BGPVALUE=BGPVALUE_","_$P(BGPD,U,2)_"|||"
 ;now set up numerators
IMS1 ;EP
 S C=0
 S BGPBP=$$BPSD(DFN,BGPBDATE,BGPEDATE)
 I BGPBP S BGPN1=1
 I BGPBP="" S BGPBP=$$BPCPT^BGP3D22(DFN,BGP365,BGPEDATE),C=1 I $P(BGPBP,U,2)]"" S BGPN1=1
 I BGPN1 S BGPVALUE=BGPVALUE_" 2 BPs" I C S BGPVALUE=BGPVALUE ;_$S($P(BGPBP,U,2)["V":" - POV ",1:" - CPT ")_$P(BGPBP,U,2)
IMS2 ;LDL done
 S BGPLDL=$$LDL^BGP3D2(DFN,BGPBDATE,BGPEDATE,1)
 S BGPN2=$P(BGPLDL,U)
 I BGPN2 D
 .I $P(BGPVALUE,"|||",2)]"" S BGPVALUE=BGPVALUE_"; "
 .S BGPVALUE=BGPVALUE_"LDL: "_$$DATE^BGP3UTL($P(BGPLDL,U,2))_" "_$P(BGPLDL,U,3)
 K X,Y,Z,%,A,B,C,D,E,H,BDATE,EDATE,P,V,S,F,BGPLDL,BGPHDL,BGPTRI,BGPLP,BGPA1C
IMS3 ;fasting glucose
 S BGPFG=$$FGT(DFN,BGPBDATE,BGPEDATE)
 S BGPN3=$P(BGPFG,U)
 I BGPN3 D
 .I $P(BGPVALUE,"|||",2)]"" S BGPVALUE=BGPVALUE_"; "
 .S BGPVALUE=BGPVALUE_"FG: "_$$DATE^BGP3UTL($P(BGPFG,U,2))
 S BGPA1C=$$HGBA1C^BGP3D2(DFN,BGPBDATE,BGPEDATE)
 I '$P(BGPA1C,U,1) S BGPN13=1  ;NO HGBA1C
 I $P(BGPA1C,U,1) S BGPN3=1 D
 .I $P(BGPVALUE,"|||",2)]"" S BGPVALUE=BGPVALUE_"; "
 .S BGPVALUE=BGPVALUE_"A1C: "_$P(BGPA1C,U,4) D
 .S V=$P(BGPA1C,U,4)
 .Q:V=""
 .;I V="" S BGPN13=""
 .;I V["3044F" S BGPN13=""
 .I $E(V)="<",+$E(V,2,9)<5.7 S BGPN10=1 Q
 .I V[">" S BGPN12=1 Q
 .I +V=0 Q
 .I V<5.7 S BGPN10=1 Q
 .I V<6.5 S BGPN11=1 Q
 .S BGPN12=1 Q
 S BGPGFR="" ;$$GFR^BGP3D211(DFN,BGP365,BGPEDATE)
 S BGPESRD="" ;$$ESRD^BGP3D211(DFN,$P(^DPT(DFN,0),U,3),BGPEDATE)
 S BGPQUP="" ;$$QUANTUP^BGP3D211(DFN,BGPBDATE,BGPEDATE)
 I BGPESRD S BGPN4=1
 I $P(BGPGFR,U),$P(BGPQUP,U,1) S BGPN4=1
 I BGPN4 D
 .I BGPESRD S BGPVALUE=BGPVALUE_$S(BGPESRD]"":";ESRD: "_$P(BGPESRD,U,2)_"-"_$$DATE^BGP3UTL($P(BGPESRD,U,3)),1:"") Q
 .S BGPVALUE=BGPVALUE_";GFR: "_$$DATE^BGP3UTL($P(BGPGFR,U,2))
 .S BGPVALUE=BGPVALUE_" & QUANT UP: "_$P(BGPQUP,U,2)_"-"_$$DATE^BGP3UTL($P(BGPQUP,U,3))
 K BGPFG
IMS5 ;
 K BGPX,BGPC1,X,Y,Z,%,A,B,C,D,E,H,BDATE,EDATE,P,V,S,F
 S BGPTOBV=""
 S BGPTOB=$$TOBACCO^BGP3D7(DFN,BGPBDATE,BGPEDATE)
 S BGPN5=$S(BGPTOB]"":1,1:0) I BGPN5 S BGPTOBV=$P(BGPTOB,U,2)_" "_$P(BGPTOB,U,1)
 S BGPSDX=$$DX^BGP3D7(DFN,BGPBDATE,BGPEDATE)
 S BGPXPHD=$$PED^BGP3D7(DFN,BGPBDATE,BGPEDATE)
 S BGP1320=$$DENT^BGP3D7(DFN,BGPBDATE,BGPEDATE)
 S BGPSCPT=$$CPTSM^BGP3D7(DFN,BGPBDATE,BGPEDATE)
 I BGPSDX]"" S BGPN5=1 I BGPTOBV="" S BGPTOBV=$$DATE^BGP3UTL($P(BGPSDX,U,2))_" "_$P(BGPSDX,U,1)
 I BGPXPHD]"" S BGPN5=1 I BGPTOBV="" S BGPTOBV=$$DATE^BGP3UTL($P(BGPXPHD,U,2))_" "_$P(BGPXPHD,U,1)
 I BGP1320]"" S BGPN5=1 I BGPTOBV="" S BGPTOBV=$$DATE^BGP3UTL($P(BGP1320,U,2))_" 1320"
 I BGPSCPT]"" S BGPN5=1 I BGPTOBV="" S BGPTOBV=$$DATE^BGP3UTL($P(BGPSCPT,U,2))_" "_$P(BGPSCPT,U,1)
 I BGPN5 D
 .I $P(BGPVALUE,"|||",2)]"" S BGPVALUE=BGPVALUE_"; "
 .S BGPVALUE=BGPVALUE_"TOB: "_BGPTOBV
IMS6 ;
 S BGPBMI=$$BMI^BGP3D6(DFN,BGPEDATE,BGPAGEE)
 ;I $P(BGPBMI,U)="" S BGPBMI=$$REF^BGP3D6(DFN,BGPBDATE,BGPEDATE,BGPAGEB)
 I $P(BGPBMI,U)]"" S BGPN6=1
 I BGPN6 D
 .I $P(BGPVALUE,"|||",2)]"" S BGPVALUE=BGPVALUE_"; "
 .S BGPVALUE=BGPVALUE_"BMI: "_$S(BGPBMI["HT":"Ref "_$P(BGPBMI,U,2)_" "_$$DATE^BGP3UTL($P(BGPBMI,U,3))_" "_$P(BGPBMI,U,5)_" "_$$DATE^BGP3UTL($P(BGPBMI,U,6)),BGPBMI]"":$$SB^BGP3PDL1($J($P(BGPBMI,U),6,2)),1:"")
IMS7 ;
 S BGPLIFE=$$LIFED^BGP3D41(DFN,BGPBDATE,BGPEDATE)
 I $P(BGPLIFE,U) S BGPN7=1
 I BGPN7 D
 .I $P(BGPVALUE,"|||",2)]"" S BGPVALUE=BGPVALUE_"; "
 .S BGPVALUE=BGPVALUE_"LIFE: "_$$DATE^BGP3UTL($P(BGPLIFE,U,2))_" "_$P(BGPLIFE,U,3)
IMS8 ;
 S BGPDEP=$$DEP^BGP3D25(DFN,BGP365,BGPEDATE) I $P(BGPDEP,U)=1 S BGPN8=1
 S BGPDEPS=$$DEPSCR^BGP3D25(DFN,BGP365,BGPEDATE) I $P(BGPDEPS,U)=1 S BGPN8=1
 S BGPREF="" I 'BGPN8 S BGPREF=$$DEPREF^BGP3D25(DFN,BGP365,BGPEDATE) I $P(BGPREF,U)=1 S BGPN8=1
 I BGPDEP]"" D  I 1
 .I $P(BGPVALUE,"|||",2)]"" S BGPVALUE=BGPVALUE_"; "
 .S BGPVALUE=BGPVALUE_"DEPR: "_$P(BGPDEP,U,2)_" "_$P(BGPDEP,U,3)
 E  I BGPDEPS]"" D  I 1
 .I $P(BGPVALUE,"|||",2)]"" S BGPVALUE=BGPVALUE_"; "
 .S BGPVALUE=BGPVALUE_"DEPR: "_$P(BGPDEPS,U,2)_" "_$P(BGPDEPS,U,3)
 E  D
 .I $P(BGPVALUE,"|||",2)]"" S BGPVALUE=BGPVALUE_"; "
 .I BGPREF]"" S BGPVALUE=BGPVALUE_"DEPR: "_$P(BGPREF,U,2)_" "_$P(BGPREF,U,3)
IMS9 ;
 I BGPN1,BGPN2,BGPN3,BGPN7,BGPN5,BGPN6,BGPN8 S BGPN9=1,BGPVALUE=$P(BGPVALUE,"|||",1)_"||| (ALL:) "_$P(BGPVALUE,"|||",2)
 K BGPDEP,BGPDEPS,BGPREF,BGPLIFE,BGPBMI,BGPSDX,BGP1320,BGPTOB,BGPUP,BGPFG,BGPHDL
 K ^TMP($J,"A")
 Q
MS(P,BDATE,EDATE) ;EP
 ;2 visits with 277.7?
 NEW A,B,E,X,G,V,Y,D
 K ^TMP($J,"A")
 S A="^TMP($J,""A"",",B=P_"^ALL VISITS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(B,A)
 I '$D(^TMP($J,"A",1)) Q ""
 S (X,G)=0 F  S X=$O(^TMP($J,"A",X)) Q:X'=+X!($P(G,U)>2)  S V=$P(^TMP($J,"A",X),U,5) D
 .Q:'$D(^AUPNVSIT(V,0))
 .Q:'$P(^AUPNVSIT(V,0),U,9)
 .Q:$P(^AUPNVSIT(V,0),U,11)
 .Q:"SAHO"'[$P(^AUPNVSIT(V,0),U,7)
 .Q:"V"[$P(^AUPNVSIT(V,0),U,3)
 .S (D,Y)=0,E="" F  S Y=$O(^AUPNVPOV("AD",V,Y)) Q:Y'=+Y!(D)  D
 ..Q:'$D(^AUPNVPOV(Y,0))
 ..S %=$P(^AUPNVPOV(Y,0),U)
 ..Q:'%
 ..;I $P($$ICDDX^ICDCODE(%),U,2)=277.7 S D=1
 ..I $$ICD^ATXCHK(%,$O(^ATXAX("B","BGP PRE DM MET SYN DX",0)),9) S D=1,E=Y
 .Q:'D
 .S $P(G,U)=$P(G,U)+1,$P(G,U,($P(G,U)+1))=$$DATE^BGP3UTL($P($P(^AUPNVSIT(V,0),U),"."))_" POV "_$$VAL^XBDIQ1(9000010.07,E,.01)
 .Q
 K ^TMP($J,"A")
 I $P(G,U)>1 Q 1_U_" on "_$P(G,U,2)_"; "_$P(G,U,3)
 ;now check for 3 or more of the following
 S BGPC=0,BGPK=""
 S X=$$BMI^BGP3D6(P,EDATE,$$AGE^AUPNPAT(P,EDATE))
 I $E(X,1,2)>29 S BGPC=BGPC+1,BGPK="BMI="_$$STRIP^XLFSTR($J(X,6,2)," ")
 S X=$$TRIG^BGP3D231(P,BDATE,EDATE) I X]"" S BGPC=BGPC+1 S:BGPK]"" BGPK=BGPK_"; " S BGPK=BGPK_X
 S X=$$HDL(P,BDATE,EDATE) I X]"" S BGPC=BGPC+1 S:BGPK]"" BGPK=BGPK_"; " S BGPK=BGPK_X
 S BGPHTN=$$LASTDX^BGP3UTL1(P,"SURVEILLANCE HYPERTENSION",BGP365,EDATE)
 S BGPMBP=$$MEANBP(P,BGPBDATE,BGPEDATE)
 I $P(BGPHTN,U)!(BGPMBP]"") S BGPC=BGPC+1 S:BGPK]"" BGPK=BGPK_"; " S:$P(BGPHTN,U)=1 BGPK=BGPK_"HTN DX: "_$$DATE^BGP3UTL($P(BGPHTN,U,3)) I BGPMBP]"" S:BGPK]""&($P(BGPHTN,U)=1) BGPK=BGPK_"; " S BGPK=BGPK_BGPMBP
 S X=$$FG(P,BGPBDATE,BGPEDATE) I X]"" S BGPC=BGPC+1 S:BGPK]"" BGPK=BGPK_"; " S BGPK=BGPK_X
 S X=$$WC^BGP3D231(P,BGPBDATE,BGPEDATE) I X]"" S BGPC=BGPC+1 S:BGPK]"" BGPK=BGPK_"; " S BGPK=BGPK_X
 I BGPC>2 Q BGPC_"^"_BGPK
 Q ""
BMI(P,BDATE,EDATE,AGE) ;EP
 KILL %,W,H,B,D,%DT
 S BGPBMIH=""
 I AGE>18,AGE<51 D  Q BGPBMIH
 .S HDATE=$$FMADD^XLFDT(BDATE,-(5*365)),HDATE=$$FMTE^XLFDT(HDATE)
 .S BDATE=$$FMADD^XLFDT(BDATE,-(5*365))
 .S BDATE=$$FMTE^XLFDT(BDATE),EDATE=$$FMTE^XLFDT(EDATE)
 .S W=$$WT(P,BDATE,EDATE) I W=""!(W="?") Q
 .;S HDATE=$$FMTE^XLFDT($$FMADD^XLFDT($P(^DPT(P,0),U,3),(19*365)))
 .;S HDATE=BDATE
 .S H=$$HT(P,HDATE,EDATE) I H="" Q
 .S W=W*.45359,H=(H*.0254),H=(H*H),BGPBMIH=(W/H)
 I AGE>50 D  Q BGPBMIH
 .S HDATE=$$FMADD^XLFDT(BDATE,-(2*365)),HDATE=$$FMTE^XLFDT(HDATE)
 .S BDATE=$$FMTE^XLFDT(BDATE),EDATE=$$FMTE^XLFDT(EDATE)
 .S W=$$WT(P,BDATE,EDATE) I W=""!(W="?") Q
 .;S HDATE=$$FMTE^XLFDT($$FMADD^XLFDT($P(^DPT(P,0),U,3),(19*365)))
 .S HDATE=BDATE
 .S H=$$HT(P,HDATE,EDATE) I H="" Q
 .S W=W*.45359,H=(H*.0254),H=(H*H),BGPBMIH=(W/H)
 I AGE<19 D  Q BGPBMIH
 .S BDATE=$$FMADD^XLFDT(EDATE,-365),BDATE=$$FMTE^XLFDT(BDATE),EDATE=$$FMTE^XLFDT(EDATE)
 .S X=$$HTWTSD(P,BDATE,EDATE)
 .I '$P(X,"^") Q
 .I '$P(X,"^",2) Q
 .S W=$P(X,"^"),H=$P(X,"^",2)
 .S W=W*.45359,H=(H*.0254),H=(H*H),BGPBMIH=(W/H)
 .Q
 Q
HT(P,BDATE,EDATE) ;EP
 I 'P Q ""
 KILL %,BGPARRY,H,E
 S %=P_"^LAST MEAS HT;DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(%,"BGPARRY(") S H=$P($G(BGPARRY(1)),U,2)
 I H="" Q H
 I H["?" Q ""
 S H=$J(H,2,0)
 Q H
WT(P,BDATE,EDATE) ;EP
 I 'P Q ""
 KILL %,E,BGPLW,X,BGPLN,BGPL,BGPLD,BGPLZ,BGPLX,ICD
 K BGPL S BGPLW="" S BGPLX=P_"^LAST 24 MEAS WT;DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(BGPLX,"BGPL(")
 S BGPLN=0 F  S BGPLN=$O(BGPL(BGPLN)) Q:BGPLN'=+BGPLN!(BGPLW]"")  D
 .S BGPLZ=$P(BGPL(BGPLN),U,5)
 .I '$D(^AUPNVPOV("AD",BGPLZ)) S BGPLW=$P(BGPL(BGPLN),U,2) Q
 . S BGPLD=0 F  S BGPLD=$O(^AUPNVPOV("AD",BGPLZ,BGPLD)) Q:'BGPLD!(BGPLW]"")  D
 .. S D=$P(BGPL(BGPLN),U)
 .. S ICD=$P($$ICDDX^ICDCODE($P(^AUPNVPOV(BGPLD,0),U),D),U,2) D
 ...I $E(ICD,1,3)="V22" Q
 ...I $E(ICD,1,3)="V23" Q
 ...I $E(ICD,1,3)="V27" Q
 ...I $E(ICD,1,3)="V28" Q
 ...I ICD>629.9999&(ICD<676.95) Q
 ...I ICD>61.49&(ICD<61.71) Q
 ...S BGPLW=$P(BGPL(BGPLN),U,2)
 ..Q
 Q BGPLW
HTWTSD(P,BDATE,EDATE) ;get last ht / wt on same day
 I '$G(P) Q ""
 KILL BGPLWTS,BGPLHTS,%,X,BGPLWTS1,BGPLHTS1,Y
 ;get all hts during time frame
 S %=P_"^ALL MEAS HT;DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(%,"BGPLHTS(")
 S Y=0 F  S Y=$O(BGPLHTS(Y)) Q:Y'=+Y  I $P(BGPLHTS(Y),U,2)="?"!($P(BGPLHTS(Y),U,2)="") K BGPLHTS(Y)
 ;set the array up by date
 K BGPLHTS1 S X=0 F  S X=$O(BGPLHTS(X)) Q:X'=+X  S BGPLHTS1($P(BGPLHTS(X),U))=X
 ;get all wts during time frame
 S %=P_"^ALL MEAS WT;DURING "_BDATE_"-"_EDATE S E=$$START1^APCLDF(%,"BGPLWTS(")
 S Y=0 F  S Y=$O(BGPLWTS(Y)) Q:Y'=+Y  I $P(BGPLWTS(Y),U,2)="?"!($P(BGPLWTS(Y),U,2)="") K BGPLWTS(Y)
 ;set the array up by date
 K BGPLWTS1 S X=0 F  S X=$O(BGPLWTS(X)) Q:X'=+X  S BGPLWTS1($P(BGPLWTS(X),U))=X
 S BGPLCHT="",X=9999999 F  S X=$O(BGPLWTS1(X),-1) Q:X=""!(BGPLCHT]"")  I $D(BGPLHTS1(X)) S BGPLCHT=$P(BGPLWTS(BGPLWTS1(X)),U,2)_U_$P(BGPLHTS(BGPLHTS1(X)),U,2)
 Q BGPLCHT
 ;
HDL(P,BDATE,EDATE) ;EP
 K BGPC1
 S BGPC1=0,R=""
 ;S %="",E=+$$CODEN^ICPTCOD(83718),%=$$CPTI^BGP3DU(P,BDATE,EDATE,E)
 ;I %]"" Q 1_U_$P(%,U,2)
 ;S %="",E=+$$CODEN^ICPTCOD(83718),%=$$TRANI^BGP3DU(P,BDATE,EDATE,E)
 ;I %]"" Q 1_U_$P(%,U,2)
 ;now get all loinc/taxonomy tests
 S S=$P(^DPT(DFN,0),U,2)
 S T=$O(^ATXAX("B","BGP HDL LOINC CODES",0))
 S BGPLT=$O(^ATXLAB("B","DM AUDIT HDL TAX",0))
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)!(BGPC1)  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L!(R]"")  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X!(R]"")  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...I BGPLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BGPLT,21,"B",$P(^AUPNVLAB(X,0),U))) D  Q:R]""
 ....S V=$P(^AUPNVLAB(X,0),U,4) D
 .....I V="" Q
 .....I 'V Q
 .....I S="M",+V<40 S R="HDL="_V
 .....I S="F",+V<50 S R="HDL="_V
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,T)
 ...S V=$P(^AUPNVLAB(X,0),U,4)
 ...I V="" Q
 ...I V'=+V Q
 ...I S="M",+V<40 S R="HDL="_V Q
 ...I S="F",+V<50 S R="HDL="_V Q
 ...Q
 Q R
 ;
LOINC(A,B) ;
 NEW %
 S %=$P($G(^LAB(95.3,A,9999999)),U,2)
 I %]"",$D(^ATXAX(B,21,"B",%)) Q 1
 S %=$P($G(^LAB(95.3,A,0)),U)_"-"_$P($G(^LAB(95.3,A,0)),U,15)
 I $D(^ATXAX(B,21,"B",%)) Q 1
 Q ""
MEANBP(P,BDATE,EDATE) ;EP
 S X=$$BPS(P,BDATE,EDATE,"I")
 S S=$$SYSMEAN(X) I S="" Q ""
 S DS=$$DIAMEAN(X) I DS="" Q ""
 I S>129 Q "BP="_S_"/"_DS
 I DS>84 Q "BP="_S_"/"_DS
 Q ""
 ;
SYSMEAN(X) ;EP
 I X="" Q ""
 S C=0 F Y=1:1:3 I $P(X,";",Y)]"" S C=C+1
 I C<2 Q ""
 S T=0 F Y=1:1:3 S T=$P($P(X,";",Y),"/")+T
 ;Q $$STRIP^XLFSTR($J((T/C),5,1)," ")
 Q T\C
 ;
DIAMEAN(X) ;EP
 I X="" Q ""
 S C=0 F Y=1:1:3 I $P(X,";",Y)]"" S C=C+1
 I C<2 Q ""
 S T=0 F Y=1:1:3 S T=$P($P(X,";",Y),"/",2)+T
 ;Q $$STRIP^XLFSTR($J((T/C),5,1)," ")
 Q T\C
 ;
BPSD(P,BDATE,EDATE) ;EP
 NEW C,X,Y
 S X=$$BPS(P,BDATE,EDATE,"I")
 S C=0 F Y=1:1:2 I $P(X,";",Y)]"" S C=C+1
 I C<2 Q ""
 Q 1
BPS(P,BDATE,EDATE,F) ;EP ;
 NEW BGPGLL,BGPGV,BGPG,A,B,E,Y,V,X,T,Z
 I $G(F)="" S F="E"
 S BGPGLL=0,BGPGV=""
 K BGPG
 K ^TMP($J,"BPV")
 S A="^TMP($J,""BPV"",",B=P_"^LAST 365 VISITS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(B,A)
 I '$D(^TMP($J,"BPV",1)) Q ""
 S Y=0 F  S Y=$O(^TMP($J,"BPV",Y)) Q:Y'=+Y!(BGPGLL=3)  D
 .S V=$P(^TMP($J,"BPV",Y),U,5)
 .Q:$$CLINIC^APCLV(V,"C")=30  ;NO ER CLINIC VISITS COUNTED
 .Q:$$GDEV^BGP3D2(V)
 .Q:'$D(^AUPNVMSR("AD",V))  ;no measurements to look at
 .;NOW GET ALL BPS ON THIS VISIT
 .S BGPBP=""
 .S X=0 F  S X=$O(^AUPNVMSR("AD",V,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVMSR(X,0))  ;BAD AD XREF
 ..S T=$P($G(^AUPNVMSR(X,0)),U)
 ..Q:T=""  ;BAD AD XREF
 ..Q:$P($G(^AUTTMSR(T,0)),U)'="BP"  ;not a BP measurement type
 ..Q:$P($G(^AUPNVMSR(X,2)),U,1)
 ..S Z=$P(^AUPNVMSR(X,0),U,4)  ;blood pressure value
 ..I BGPBP="" S BGPBP=Z Q
 ..I $P(Z,"/")'>$P(BGPBP,"/") S BGPBP=Z
 .Q:BGPBP=""
 .S BGPGLL=BGPGLL+1
 .I F="E" S $P(BGPGV,";",BGPGLL)=BGPBP_"  "_$$FMTE^XLFDT($P(^TMP($J,"BPV",V),U))
 .I F="I" S $P(BGPGV,";",BGPGLL)=$P(BGPBP," ")
 K ^TMP($J,"BPV")
 Q BGPGV
FG(P,BDATE,EDATE) ;EP
 K BGPC1
 S BGPC1=0,R=""
 ;now get all loinc/taxonomy tests
 S T=$O(^ATXAX("B","DM AUDIT FASTING GLUC LOINC",0))
 S BGPLT=$O(^ATXLAB("B","DM AUDIT FASTING GLUCOSE TESTS",0))
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)!(R]"")  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L!(R]"")  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X!(R]"")  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...I BGPLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BGPLT,21,"B",$P(^AUPNVLAB(X,0),U))) D  Q:R]""
 ....S V=$P(^AUPNVLAB(X,0),U,4) Q:+V<100  Q:+V>125.9999  S R="FAST GLUC="_V
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,T)
 ...S V=$P(^AUPNVLAB(X,0),U,4)
 ...Q:V=""
 ...Q:'V
 ...Q:+V<100
 ...Q:+V>125.9999
 ...S R="FASTING GLUC="_V
 ...Q
 Q R
FGT(P,BDATE,EDATE) ;EP
 K BGPG,BGPT,BGPC
 K BGPG
 S Y="BGPG("
 S X=P_"^LAST DX [BGP IMPAIRED FASTING GLUCOSE;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BGPG(1)) Q 1_U_$P(BGPG(1),U)_U_$P(BGPG(1),U,2)  ;has a dx
 S BGPC=0
 ;now get all loinc/taxonomy tests
 S T=$O(^ATXAX("B","DM AUDIT FASTING GLUC LOINC",0))
 S BGPLT=$O(^ATXLAB("B","DM AUDIT FASTING GLUCOSE TESTS",0))
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...I BGPLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BGPLT,21,"B",$P(^AUPNVLAB(X,0),U))) S BGPC=BGPC+1,BGPT(D,BGPC)=$P(^AUPNVLAB(X,0),U,4) Q
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,T)
 ...S R=$P(^AUPNVLAB(X,0),U,4)
 ...S BGPC=BGPC+1,BGPT(D,BGPC)=R
 ...Q
 ; now got though and set return value of done 1 or 0^VALUE^date
 I '$D(BGPT) Q ""  ;no tests
 Q 1_U_(9999999-$O(BGPT(0)))