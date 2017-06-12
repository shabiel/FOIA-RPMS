BGP4D211 ; IHS/CMI/LAB - measure 6 ; 19 Sep 2013  8:12 AM
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
DNKA(V) ;EP
 NEW D,N
 S D=$$PRIMPOV^APCLV(V,"C")
 I D=".0860" Q 1
 S N=$$PRIMPOV^APCLV(V,"N")
 I $E(D)="V",N["DNKA" Q 1
 I $E(D)="V",N["DID NOT KEEP APPOINTMENT" Q 1
 I $E(D)="V",N["DID NOT KEEP APPT" Q 1
 Q 0
GFR(P,BDATE,EDATE) ;EP
 S BGPC=""
 S T=$O(^LAB(60,"B","ESTIMATED GFR",0))
 S T1=$O(^ATXLAB("B","BGP GPRA ESTIMATED GFR TAX",0))
 S T2=$O(^ATXAX("B","BGP ESTIMATED GFR LOINC",0))
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)!(BGPC]"")  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L!(BGPC]"")  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X!(BGPC]"")  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...Q:$P(^AUPNVLAB(X,0),U,4)=""
 ...I T,$P(^AUPNVLAB(X,0),U)=T S BGPC=1_U_(9999999-D) Q
 ...I T1,$D(^ATXLAB(T1,21,"B",$P(^AUPNVLAB(X,0),U))) S BGPC=1_U_(9999999-D) Q
 ...Q:'T2
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,T2)
 ...S BGPC=1_U_(9999999-D)
 ...Q
 Q BGPC
QUANTUP(P,BDATE,EDATE) ;EP
 K BGPC,BGPX
 S BGPC="",BGPLC=""
 K BGPG S %=P_"^LAST LAB [BGP QUANT UACR TESTS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(%,"BGPG(")
 I $D(BGPG(1)) S BGPLC=1_"^"_$P(BGPG(1),U,3)_"^"_$P(BGPG(1),U)
 S T=$O(^ATXAX("B","BGP QUANT UACR LOINC",0))
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)!(BGPC]"")  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L!(BGPC]"")  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X!(BGPC]"")  D
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,T)
 ...S %=$$VAL^XBDIQ1(9000010.09,X,.01)  ;$P(^AUPNVLAB(X,0),U,4)
 ...I $P(BGPLC,U,3)<(9999999-D) S BGPLC=1_U_%_U_(9999999-D)
 S %="",E=+$$CODEN^ICPTCOD(82043),%=$$CPTI^BGP4DU(P,BDATE,EDATE,E)
 I %]"",$P(BGPLC,U,3)<$P(%,U,2),$$OCPT($P(%,U,3))  S BGPLC="1^CPT 82043/82570^"_$P(%,U,2)
 S %="",E=+$$CODEN^ICPTCOD(82043),%=$$TRANI^BGP4DU(P,BDATE,EDATE,E)
 I %]"",$P(BGPLC,U,3)<$P(%,U,2),$$OCPT($P(%,U,3))  S BGPLC="1^CPT 84023/82570^"_$P(%,U,2)
 Q BGPLC
OCPT(V) ;is there a 82570 on this visit?
 NEW X,Y
 S X=0,Y=0 F  S X=$O(^AUPNVCPT("AD",V,X)) Q:X'=+X  D
 .I $$VAL^XBDIQ1(9000010.18,X,.01)=82570 S Y=1 Q
 I Y Q Y
 ;check tran codes
 S X=0,Y=0 F  S X=$O(^AUPNVTC("AD",V,X)) Q:X'=+X  D
 .I $$VAL^XBDIQ1(9000010.33,X,.07)=82570 S Y=1 Q
 Q Y
LOINC(A,B) ;EP 
 NEW %
 S %=$P($G(^LAB(95.3,A,9999999)),U,2)
 I %]"",$D(^ATXAX(B,21,"B",%)) Q 1
 S %=$P($G(^LAB(95.3,A,0)),U)_"-"_$P($G(^LAB(95.3,A,0)),U,15)
 I $D(^ATXAX(B,21,"B",%)) Q 1
 Q ""
ESRD(P,BDATE,EDATE) ;EP
 S X=$$LASTDX^BGP4UTL1(P,"BGP ESRD PMS DXS",BDATE,EDATE)
 I X Q 1_U_"POV "_$P(X,U,2)_U_$P(X,U,3)
 S T=$O(^ATXAX("B","BGP ESRD CPTS",0))
 I T D  I X]"" Q 1_U_"CPT "_$P(X,U,2)_U_$P(X,U,1)
 .S X=$$CPT^BGP4DU(P,$$DOB^AUPNPAT(P),EDATE,T,5) I X]"" Q
 .S X=$$TRAN^BGP4DU(P,$$DOB^AUPNPAT(P),EDATE,T,5)
 S X=$$LASTPRC^BGP4UTL1(P,"BGP ESRD PROCS",BDATE,EDATE)
 I X Q 1_U_"PRC "_$P(X,U,2)_U_$P(X,U,3)
 Q 0
IGOAL ;EP
 I 'BGPACTUP S BGPSTOP=1 Q  ;not user pop
 S (BGPD1,BGPN1,BGPN2)=0
 S BGPD1=1
 ;did patient have a goal set with a start date in report period
 S BGPSET=$$SET(DFN,BGPBDATE,BGPEDATE)
 I BGPSET S BGPN1=1
 S BGPMET=$$MET(DFN,BGPBDATE,BGPEDATE)
 I BGPMET S BGPN2=1
 S BGPVALUE="UP|||"_$S(BGPSET:"GS: "_$$DATE^BGP4UTL(BGPSET),1:"")
 I BGPMET D
 .S BGPVALUE=BGPVALUE_$S(BGPSET:"; ",1:"")
 .S BGPVALUE=BGPVALUE_"GM: "_$$DATE^BGP4UTL(BGPMET)
 Q
 ;
MET(P,BDATE,EDATE) ;
 NEW D,%,X,Y
 S X=0,%=""
 F  S X=$O(^AUPNGOAL("AC",P,X)) Q:X'=+X!(%]"")  D
 .Q:'$D(^AUPNGOAL(X,0))  ;BAD XREF
 .Q:$P(^AUPNGOAL(X,0),U,1)'="S"  ;SET ONLY
 .Q:$P(^AUPNGOAL(X,0),U,11)'="ME"
 .;DURING REPORT PERIOD MODIFIED DATE)
 .S G=0
 .S D=$P($P(^AUPNGOAL(X,0),U,5),".")
 .I D'<BDATE,D'>EDATE S G=1
 .Q:'G
 .S %=D
 Q %
SET(P,BDATE,EDATE) ;
 NEW X,Y,Z,%,D
 S X=0,%=""
 F  S X=$O(^AUPNGOAL("AC",P,X)) Q:X'=+X!(%]"")  D
 .Q:'$D(^AUPNGOAL(X,0))  ;BAD XREF
 .Q:$P(^AUPNGOAL(X,0),U,1)'="S"  ;SET ONLY
 .S D=$P($P(^AUPNGOAL(X,0),U,9),".")
 .Q:D=""
 .Q:D<BDATE
 .Q:D>EDATE
 .S %=D
 Q %
AWV ;EP
 S (BGPD1,BGPD2,BGPD3,BGPD4,BGPD5,BGPD6,BGPN1)=0
 S BGPVALUE=""
 I 'BGPACTCL S BGPSTOP=1 Q  ;not active clinical
 I BGPAGEB<65 S BGPSTOP=1 Q  ;not over 65
 S BGPD1=1
 I $P(^DPT(DFN,0),U,2)="M" S BGPD2=1
 I $P(^DPT(DFN,0),U,2)="F" S BGPD3=1
 I BGPAGEB>64,BGPAGEB<75 S BGPD4=1
 I BGPAGEB>74,BGPAGEB<85 S BGPD5=1
 I BGPAGEB>84 S BGPD6=1
 S BGPVAL=$$AWV1(DFN,$$FMADD^XLFDT(BGPEDATE,-456),BGPEDATE)
 S BGPN1=$P(BGPVAL,U)
 S BGPVALUE="AC|||" I BGPN1 S BGPVALUE=BGPVALUE_$$DATE^BGP4UTL($P(BGPVAL,U,2))_" CPT "_$P(BGPVAL,U,3)
 K BGPVAL
 Q
 ;
AWV1(P,BDATE,EDATE) ;EP
 NEW T,X
 S T=$O(^ATXAX("B","BGP ANNUAL WELLNESS CPTS",0))
 I 'T Q ""
 S X=$$CPT^BGP4DU(P,BDATE,EDATE,T,6)
 I 'X S X=$$TRAN^BGP4DU(P,BDATE,EDATE,T,6)
 Q X