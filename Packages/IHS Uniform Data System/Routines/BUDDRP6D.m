BUDDRP6D ; IHS/CMI/LAB - UDS REPORT PROCESSOR ;
 ;;11.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 18, 2017;Build 66
 ;
 ;
PAPD ;EP - called from xbdbque
 ;must have DOB between 1/1/06 and 12/31/06
 NEW BUDPAP,BUDHASP
 S (BUDPAP,BUDHASP)=""
 Q:$P(^DPT(DFN,0),U,2)'="F"
 S BUDDOB=$P(^DPT(DFN,0),U,3)
 S BUD64RB=($E(BUDBD,1,3)-64)_"0101"
 S BUDX23RB=($E(BUDED,1,3)-23)_"1231"
 S BUDDOB=$P(^DPT(DFN,0),U,3)
 Q:BUDDOB<BUD64RB
 Q:BUDDOB>BUDX23RB
 Q:BUDMEDV<1
 S BUD65TH=$E(BUDDOB,1,3)+65_$E(BUDDOB,4,7)
 I '$$VBBD(DFN,BUDDOB,$$FMADD^XLFDT(BUD65TH,-1)) Q  ;quit if no visiT before 65TH birthday
 K BUDPAP
 I $$HYSTER(DFN,BUDED) Q  ;IF HYSTERECTOMY DON'T PUT IN DENOMINATOR
 ;THESE HAD A PAP IN PAST 3 YEARS
 S BUDSECTD("PTS")=$G(BUDSECTD("PTS"))+1  ;denominator
 S BUDD=$E(BUDED,1,3)-2_$E(BUDBD,4,7)
 S BUDPAP=$$PAP(DFN,$$DOB^AUPNPAT(DFN),BUDED)  ;GET LAST PAP DATE
 S D=$P(BUDPAP,U,2)
 S BUDPD=$E(BUDED,1,3)-2_$E(BUDBD,4,7)
 I D'<BUDPD S BUDSECTD("PAP")=$G(BUDSECTD("PAP"))+1,BUDHASP=1
 I $G(BUDPAP1L),BUDHASP D
 .S Y=$$FMTE^XLFDT($P(BUDPAP,U,2))_U_$P(BUDPAP,U,3)_U I $P(BUDPAP,U,4) S Y=Y_$$PRIMPROV^APCLV($P(BUDPAP,U,4),"D")_U_$P(^AUPNVSIT($P(BUDPAP,U,4),0),U,7)_U_$$CLINIC^APCLV($P(BUDPAP,U,4),"E")_U_$$LOCENC^APCLV($P(BUDPAP,U,4),"E")
 .S ^XTMP("BUDDRP6B",BUDJ,BUDH,"PAP1",BUDAGE,$P(^DPT(DFN,0),U),BUDCCOM,DFN)=Y
 I $G(BUDPAP2L),'BUDHASP D
 .S Y="" I BUDPAP="" S Y="Never"
 .I Y="" S Y=$$FMTE^XLFDT($P(BUDPAP,U,2))_U_$P(BUDPAP,U,3)_U I $P(BUDPAP,U,4) S Y=Y_$$PRIMPROV^APCLV($P(BUDPAP,U,4),"D")_U_$P(^AUPNVSIT($P(BUDPAP,U,4),0),U,7)_U_$$CLINIC^APCLV($P(BUDPAP,U,4),"E")_U_$$LOCENC^APCLV($P(BUDPAP,U,4),"E")
 .S ^XTMP("BUDDRP6B",BUDJ,BUDH,"PAP2",BUDAGE,$P(^DPT(DFN,0),U),BUDCCOM,DFN)=Y
 Q
 ;
 ;
VBBD(P,BDATE,EDATE) ;EP
 NEW BUDVL,G
 K BUDVL
 S G=""
 S A="BUDVL(",B=DFN_"^ALL VISITS;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(B,A)
 I '$D(BUDVL) Q ""
 S X=0 F  S X=$O(BUDVL(X)) Q:X'=+X  S V=$P(BUDVL(X),U,5) D
 .Q:'$D(^AUPNVSIT(V,0))
 .Q:'$P(^AUPNVSIT(V,0),U,9)
 .Q:$P(^AUPNVSIT(V,0),U,11)
 .Q:'$D(^AUPNVPRV("AD",V))
 .Q:'$D(^AUPNVPOV("AD",V))
 .S L=$P(^AUPNVSIT(V,0),U,6)
 .Q:L=""
 .Q:'$D(^BUDDSITE(BUDSITE,11,L))  ;not valid location
 .Q:$P(^AUPNVSIT(V,0),U,7)="C"
 .Q:$P(^AUPNVSIT(V,0),U,7)="T"
 .Q:$P(^AUPNVSIT(V,0),U,7)="N"
 .Q:$P(^AUPNVSIT(V,0),U,7)="D"
 .Q:$P(^AUPNVSIT(V,0),U,7)="X"
 .Q:$P(^AUPNVSIT(V,0),U,7)="E"
 .S G=V
 .Q
 Q G
 ;
PAP(P,BDATE,EDATE) ;EP
 NEW BUDD,BUDLPAP,T,BUDLT,B,E,D,L,X,Z,J,T,BUD
 K BUDD
 S BUDD=""
 S BUDLPAP=""
 S T=$O(^ATXAX("B","BGP PAP LOINC CODES",0))
 S BUDLT=$O(^ATXLAB("B","BGP PAP SMEAR TAX",0))
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)!(BUDD]"")  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L!(BUDD]"")  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X!(BUDD]"")  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...S Z=$P(^AUPNVLAB(X,0),U),Z=$P($G(^LAB(60,Z,0)),U) I Z="PAP SMEAR" S BUDD="1^"_(9999999-D)_"^Lab "_Z_U_$P(^AUPNVLAB(X,0),U,3) Q
 ...I BUDLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BUDLT,21,"B",$P(^AUPNVLAB(X,0),U))) S BUDD="1^"_(9999999-D)_"^Lab "_$$VAL^XBDIQ1(9000010.09,X,.01)_$P(^AUPNVLAB(X,0),U,3) Q
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,T)
 ...S BUDD="1^"_(9999999-D)_"^Lab-loinc"_U_$P(^AUPNVLAB(X,0),U,3) Q
 ...Q
 S BUDLPAP=BUDD
 K BUD
 K BUD S %=P_"^LAST PROCEDURE 91.46;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(%,"BUD(")
 I $D(BUD(1)),$P(BUDLPAP,U,2)<$P(BUD(1),U,1) S BUDLPAP="1^"_$P(BUD(1),U)_"^PROC 91.46^"_$P(BUD(1),U,5)
 K BUD S %=P_"^LAST DX V72.32;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(%,"BUD(")
 I $D(BUD(1)),$P(BUDLPAP,U,2)<$P(BUD(1),U,1) S BUDLPAP="1^"_$P(BUD(1),U)_"^DX: V72.32^"_$P(BUD(1),U,5)
 K BUD S %=P_"^LAST DX Z01.42;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE),E=$$START1^APCLDF(%,"BUD(")
 I $D(BUD(1)),$P(BUDLPAP,U,2)<$P(BUD(1),U,1) S BUDLPAP="1^"_$P(BUD(1),U)_"^DX: Z01.42^"_$P(BUD(1),U,5)
 S T=$O(^ATXAX("B","BUD PAP CPTS UDS 16",0))
 I T D  I X]"",$P(BUDLPAP,U,2)<$P(X,U,2) S BUDLPAP="1^"_$P(X,U,2)_"^CPT "_$P(X,U,3)_"^"_$P(X,U,5)
 .S X=$$CPT^BUDDDU(P,BDATE,EDATE,T,6) I X]"" Q
 .S X=$$TRAN^BUDDDU(P,BDATE,EDATE,T,6)
 S T="PAP SMEAR",T=$O(^BWPN("B",T,0))
 I T D  I X]"",$P(BUDLPAP,U,2)<X S BUDLPAP="1^"_X_"^WH PAP SMEAR"
 .S X=$$WH^BUDDDU(P,BDATE,EDATE,T,3)
 Q BUDLPAP
 ;
LOINC(A,B) ;
 NEW %
 S %=$P($G(^LAB(95.3,A,9999999)),U,2)
 I %]"",$D(^ATXAX(B,21,"B",%)) Q 1
 S %=$P($G(^LAB(95.3,A,0)),U)_"-"_$P($G(^LAB(95.3,A,0)),U,15)
 I $D(^ATXAX(B,21,"B",%)) Q 1
 Q ""
 ;
HYSTER(P,EDATE) ;EP 
 I '$G(P) Q ""
 NEW BUDG,VIEN,VDATE,CTR,X,Y,Z,T,BUDVS,TIEN
 ;WH
 S T="HYSTERECTOMY",T=$O(^BWPN("B",T,0))
 I T D  I X]"" Q 1
 .S X=$$WH^BUDDDU(P,$$DOB^AUPNPAT(P),EDATE,T,2)
 D ALLV^APCLAPIU(P,$$DOB^AUPNPAT(P),EDATE,"BUDVS")  ;all visits in 42 days to end
 S TIEN=$O(^BUDDTSSC("B","T6B PAP HYSTERECTOMY CODES",0))
 S CTR=0,G="" F  S CTR=$O(BUDVS(CTR)) Q:CTR'=+CTR!(G)  D
 .S VIEN=$P(BUDVS(CTR),U,5)
 .S VDATE=$P(BUDVS(CTR),U,1)
 .;CPT
 .S X=0 F  S X=$O(^AUPNVCPT("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVCPT(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.18,X,.01)
 ..Q:Y=""
 ..I $D(^BUDDTSSC("AC",Y,TIEN)) S G=1 Q
 .;V TRANS
 .S X=0 F  S X=$O(^AUPNVTC("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVTC(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.33,X,.07)
 ..Q:Y=""
 ..I $D(^BUDDTSSC("AC",Y,TIEN)) S G=1 Q
 .;V PROC
 .S X=0 F  S X=$O(^AUPNVPRC("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVPRC(X,0))
 ..S Y=$$VALI^XBDIQ1(9000010.08,X,.01)
 ..I $D(^BUDDTSSC("AP",Y,TIEN)) S G=1 Q
 .;SNOMED/DX
 .S X=0 F  S X=$O(^AUPNVPOV("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVPOV(X,0))
 ..S Y=$$VALI^XBDIQ1(9000010.07,X,.01)
 ..I $D(^BUDDTSSC("AD",Y,TIEN)) S G=1 Q
 ..S Y=$$VAL^XBDIQ1(9000010.07,X,1101)
 ..Q:Y=""
 ..I $D(^BUDDTSSC("AS",Y,TIEN)) S G=1 Q
 I G Q 1
 S X=$$PLCL^BUDDDU(P,"T6B PAP HYSTERECTOMY CODES",EDATE,0) I X Q 1
 Q ""
MMR(P,BDATE,EDATE) ;EP
 ;first check for contraindications
MMRC ;
 NEW BUDG,%,E,T,X,G,Y,Z,S,N,BUDZ,BUDX,BUDMR,BUDMU,BUDMEA,BUDRUB,BUDVS,TIEN,TIENMR,TIENMU,TIENMEA,TIENRUB,CTR,VIEN,VDATE
 NEW BUDEVRUB,BUDEVMU,BUDEVMEA,BUDCORUB,BUDCOMU,BUDCOMEA
 ;V11.0 ICD10
 K BUDG S %=P_"^ALL DX;DURING "_$$DOB^AUPNPAT(P)_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 S T=$O(^BUDDTSSC("B","T6B IMM CONTRA VARICELLA/MMR",0))
 S X=0,G="" F  S X=$O(BUDG(X)) Q:X'=+X!(G]"")  D
 .S Y=+$P(BUDG(X),U,4)
 .S Z=$P($G(^AUPNVPOV(Y,0)),U,1)
 .I $D(^BUDDTSSC("AD",Z,T)) S G="1^MMR: CONTRA DX "_$P(BUDG(X),U,2)_" on "_$$DATE^BUDDUTL1($P(BUDG(X),U))
 .S S=$$VAL^XBDIQ1(9000010.07,Y,1101) I S]"",$D(^BUDDTSSC("AS",S,T)) S G="1^MMR: CONTRA DX "_S_" on "_$$DATE^BUDDUTL1($P(BUDG(X),U))
 I G]"" Q G
 S X=$$PLCL^BUDDDU(P,"T6B IMM CONTRA VARICELLA/MMR",EDATE,0) I X Q "1^MMR: CONTRA DX "_$P(X,U,2)_" on Problem List"
 S G=""
 S X=0 F  S X=$O(^GMR(120.8,"B",P,X)) Q:X'=+X!(G)  D
 .;Q:$P($P($G(^GMR(120.8,X,0)),U,4),".")>EDATE  ;entered after 2ND birthday
 .S N=$P($G(^GMR(120.8,X,0)),U,2),N=$$UP^XLFSTR(N)
 .Q:'$$ANAREACT^BUDDRP6C(X)  ;quit if anaphylactic is not a reaction/sign/symptom
 .I N["NEOMYCIN" S G="1^MMR: CONTRA "_$$DATE^BUDDUTL1($P($P($G(^GMR(120.8,X,0)),U,4),"."))_"  Allergy Tracking: "_N
 I G]"" Q G
 F BUDZ=3,94,5,7,6 S X=$$MMRCONT^BUDDRP6C(P,BUDZ,EDATE) Q:X]""
 I X]"" Q "1^MMR CONTRA: "_$P(X,U,2)_" on "_$$DATE^BUDDUTL1($P(X,U,1))_" Immunization Package"
MMR1 ;
 ;
 S (BUDX,BUDMR,BUDMU,BUDMEA,BUDRUB)=""
 D ALLV^APCLAPIU(P,BDATE,EDATE,"BUDVS")  ;all visits in 42 days to end
 S TIEN=$O(^BUDDTSSC("B","T6B IMM MMR CODES",0))
 S TIENMR=$O(^BUDDTSSC("B","T6B IMM MR CODES",0))
 S TIENMU=$O(^BUDDTSSC("B","T6B IMM MUMPS CODES",0))
 S TIENMEA=$O(^BUDDTSSC("B","T6B IMM MEASLES CODES",0))
 S TIENRUB=$O(^BUDDTSSC("B","T6B IMM RUBELLA CODES",0))
 S CTR=0 F  S CTR=$O(BUDVS(CTR)) Q:CTR'=+CTR  D
 .S VIEN=$P(BUDVS(CTR),U,5)
 .S VDATE=$P(BUDVS(CTR),U,1)
 .S X=0 F  S X=$O(^AUPNVIMM("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVIMM(X,0))
 ..S Y=$$VALI^XBDIQ1(9000010.11,X,.01)
 ..S Y=+$P($G(^AUTTIMM(Y,0)),U,3)
 ..Q:'Y
 ..I $D(^BUDDTSSC(TIEN,15,"B",Y)) S BUDX="CVX "_Y_" on "_$$DATE^BUDDUTL1(VDATE) Q
 ..I $D(^BUDDTSSC(TIENMR,15,"B",Y)) S BUDMR="CVX "_Y_" on "_$$DATE^BUDDUTL1,BUDADT="CVX "_Y_" on "_$$DATE^BUDDUTL1(VDATE) Q
 ..I $D(^BUDDTSSC(TIENMU,15,"B",Y)) S BUDMU="CVX "_Y_" on "_$$DATE^BUDDUTL1(VDATE) Q
 ..I $D(^BUDDTSSC(TIENMEA,15,"B",Y)) S BUDMEA="CVX "_Y_" on "_$$DATE^BUDDUTL1(VDATE) Q
 ..I $D(^BUDDTSSC(TIENRUB,15,"B",Y)) S BUDRUB="CVX "_Y_" on "_$$DATE^BUDDUTL1(VDATE) Q
 .;CPT
 .S X=0 F  S X=$O(^AUPNVCPT("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVCPT(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.18,X,.01)
 ..Q:Y=""
 ..I $D(^BUDDTSSC("AC",Y,TIEN)) S BUDX="CPT "_Y_" on "_$$DATE^BUDDUTL1(VDATE) Q
 ..I $D(^BUDDTSSC("AC",Y,TIENMR)) S BUDMR="CPT "_Y_" on "_$$DATE^BUDDUTL1
 ..I $D(^BUDDTSSC("AC",Y,TIENMU)) S BUDMU="CPT "_Y_" on "_$$DATE^BUDDUTL1(VDATE) Q
 ..I $D(^BUDDTSSC("AC",Y,TIENMEA)) S BUDMEA="CPT "_Y_" on "_$$DATE^BUDDUTL1(VDATE) Q
 ..I $D(^BUDDTSSC("AC",Y,TIENRUB)) S BUDRUB="CPT "_Y_" on "_$$DATE^BUDDUTL1(VDATE) Q
 .;V TRANS
 .S X=0 F  S X=$O(^AUPNVTC("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVTC(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.33,X,.07)
 ..Q:Y=""
 ..I $D(^BUDDTSSC("AC",Y,TIEN)) S BUDX="CPT/TRAN "_Y_" on "_$$DATE^BUDDUTL1(VDATE) Q
 ..I $D(^BUDDTSSC("AC",Y,TIENMR)) S BUDMR="CPT/TRAN "_Y_" on "_$$DATE^BUDDUTL1
 ..I $D(^BUDDTSSC("AC",Y,TIENMU)) S BUDMU="CPT/TRAN "_Y_" on "_$$DATE^BUDDUTL1(VDATE) Q
 ..I $D(^BUDDTSSC("AC",Y,TIENMEA)) S BUDMEA="CPT/TRAN "_Y_" on "_$$DATE^BUDDUTL1(VDATE) Q
 ..I $D(^BUDDTSSC("AC",Y,TIENRUB)) S BUDRUB="CPT/TRAN "_Y_" on "_$$DATE^BUDDUTL1(VDATE) Q
 .;V PROC
 .S X=0 F  S X=$O(^AUPNVPRC("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVPRC(X,0))
 ..S Y=$$VALI^XBDIQ1(9000010.08,X,.01)
 ..I $D(^BUDDTSSC("AP",Y,TIEN)) S BUDX="PROC "_Y_" on "_$$DATE^BUDDUTL1(VDATE) Q
 ..I $D(^BUDDTSSC("AP",Y,TIENMR)) S BUDMR="PROC "_Y_" on "_$$DATE^BUDDUTL1
 ..I $D(^BUDDTSSC("AP",Y,TIENMU)) S BUDMU="PROC "_Y_" on "_$$DATE^BUDDUTL1(VDATE) Q
 ..I $D(^BUDDTSSC("AP",Y,TIENMEA)) S BUDMEA="PROC "_Y_" on "_$$DATE^BUDDUTL1(VDATE) Q
 ..I $D(^BUDDTSSC("AP",Y,TIENRUB)) S BUDRUB="PROC "_Y_" on "_$$DATE^BUDDUTL1(VDATE) Q
 .S X=0 F  S X=$O(^AUPNVPOV("AD",VIEN,X)) Q:X'=+X  D
 ..Q:'$D(^AUPNVPOV(X,0))
 ..S Y=$$VAL^XBDIQ1(9000010.07,X,1101)
 ..Q:Y=""
 ..I $D(^BUDDTSSC("AS",Y,TIEN)) S BUDX="SNOMED "_Y_" on "_$$DATE^BUDDUTL1(VDATE) Q
 ..I $D(^BUDDTSSC("AS",Y,TIENMR)) S BUDMR="SNOMED "_Y_" on "_$$DATE^BUDDUTL1
 ..I $D(^BUDDTSSC("AS",Y,TIENMU)) S BUDMU="SNOMED "_Y_" on "_$$DATE^BUDDUTL1(VDATE) Q
 ..I $D(^BUDDTSSC("AS",Y,TIENMEA)) S BUDMEA="SNOMED "_Y_" on "_$$DATE^BUDDUTL1(VDATE) Q
 ..I $D(^BUDDTSSC("AS",Y,TIENRUB)) S BUDRUB="SNOMED "_Y_" on "_$$DATE^BUDDUTL1(VDATE) Q
 I BUDX]"" Q "1^MMR: "_BUDX
 S (BUDEVRUB,BUDEVMU,BUDEVMEA,BUDCORUB,BUDCOMU,BUDCOMEA)=""
 ;now check contra to DTap
 S X=$$CONTRA^BUDDRP6C(P,$$DOB^AUPNPAT(P),EDATE,$O(^BUDDTSSC("B","T6B IMM MMR CODES",0)),"MMR")
 I X Q X
MR1 ;
 S (X,Y)="",C=0 F  S X=$O(BUDMR(X)) Q:X'=+X  S BUDMU(X)="",BUDRUB(X)=""
 ;HAS ONE OF EACH
 I BUDMEA]"",BUDMU]"",BUDRUB]"" Q "1^MMR: "_BUDMEA_";"_BUDMU_";"_BUDRUB
 ;
MEAEVCO ;
 I BUDMEA]"" G MUEVCO
 ;V10.0 ICD10
 K BUDG S %=P_"^ALL DX;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 S T=$O(^BUDDTSSC("B","T6B IMM EVIDENCE MEASLES",0))
 S X=0,BUDEVMEA="" F  S X=$O(BUDG(X)) Q:X'=+X!(BUDEVMEA]"")  D
 .S Y=+$P(BUDG(X),U,4)
 .S Z=$P($G(^AUPNVPOV(Y,0)),U,1)
 .I $D(^BUDDTSSC("AD",Z,T)) S BUDEVMEA="1^Measles: Evidence "_$P(BUDG(X),U,2)_" on "_$$DATE^BUDDUTL1($P(BUDG(X),U)) Q
 .S S=$$VAL^XBDIQ1(9000010.07,Y,1101) I S]"",$D(^BUDDTSSC("AS",S,T)) S BUDEVMEA="1^Measles: Evidence "_S_" on "_$$DATE^BUDDUTL1($P(BUDG(X),U)) Q
 S X=$$PLCL^BUDDDU(P,"T6B IMM EVIDENCE MEASLES",EDATE,0) I X S BUDMEA="1^Measles Evidence: "_$P(X,U,2)_" on Problem List"
 I BUDEVMEA]"" S BUDMEA=BUDEVMEA
 I BUDMEA]"",BUDMU]"",BUDRUB]"" Q "1^MMR: "_BUDMEA_";"_BUDMU_";"_BUDRUB
 ;CONTRA
 S BUDCOMEA=$$CONTRA^BUDDRP6C(P,$$DOB^AUPNPAT(P),EDATE,$O(^BUDDTSSC("B","T6B IMM MEASLES CODES",0)),"MEASLES")
 I BUDCOMEA]"" S BUDMEA=BUDCOMEA
 I BUDMEA]"",BUDMU]"",BUDRUB]"" Q "1^MMR: "_BUDMEA_";"_BUDMU_";"_BUDRUB
 ;
MUEVCO ;
 I BUDMU]"" G RUBEVCO
 K BUDG S %=P_"^ALL DX;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 S T=$O(^BUDDTSSC("B","T6B IMM EVIDENCE MUMPS",0))
 S X=0,BUDEVMU="" F  S X=$O(BUDG(X)) Q:X'=+X!(BUDEVMU]"")  D
 .S Y=+$P(BUDG(X),U,4)
 .S Z=$P($G(^AUPNVPOV(Y,0)),U,1)
 .I $D(^BUDDTSSC("AD",Z,T)) S BUDEVMU="1^Mumps: Evidence "_$P(BUDG(X),U,2)_" on "_$$DATE^BUDDUTL1($P(BUDG(X),U)) Q
 .S S=$$VAL^XBDIQ1(9000010.07,Y,1101) I S]"",$D(^BUDDTSSC("AS",S,T)) S BUDEVMU="1^Mumps: Evidence "_S_" on "_$$DATE^BUDDUTL1($P(BUDG(X),U)) Q
 S X=$$PLCL^BUDDDU(P,"T6B IMM EVIDENCE MUMPS",EDATE,0) I X S BUDEVMU="1^Mumps: Evidence "_$P(X,U,2)_" on Problem List"
 I BUDEVMU]"" S BUDMU=BUDEVMU
 I BUDMEA]"",BUDMU]"",BUDRUB]"" Q "1^MMR: "_BUDMEA_";"_BUDMU_";"_BUDRUB
 ;CONTRA
 S BUCDOMU=$$CONTRA^BUDDRP6C(P,$$DOB^AUPNPAT(P),EDATE,$O(^BUDDTSSC("B","T6B IMM MUMPS CODES",0)),"MUMPS")
 I BUCDOMU]"" S BUDMU=BUCDOMU
 I BUDMEA]"",BUDMU]"",BUDRUB]"" Q "1^MMR: "_BUDMEA_";"_BUDMU_";"_BUDRUB
RUBEVCO ;
 I BUDRUB]"" G MMRQ
 K BUDG S %=P_"^ALL DX;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 S T=$O(^BUDDTSSC("B","T6B IMM EVIDENCE RUBELLA",0))
 S X=0,BUDEVRUB="" F  S X=$O(BUDG(X)) Q:X'=+X!(BUDEVRUB]"")  D
 .S Y=+$P(BUDG(X),U,4)
 .S Z=$P($G(^AUPNVPOV(Y,0)),U,1)
 .I $D(^BUDDTSSC("AD",Z,T)) S BUDEVRUB="1^Rubella: Evidence "_$P(BUDG(X),U,2)_" on "_$$DATE^BUDDUTL1($P(BUDG(X),U)) Q
 .S S=$$VAL^XBDIQ1(9000010.07,Y,1101) I S]"",$D(^BUDDTSSC("AS",S,T)) S BUDEVRUB="1^Rubella: Evidence "_S_" on "_$$DATE^BUDDUTL1($P(BUDG(X),U)) Q
 S X=$$PLCL^BUDDDU(P,"T6B IMM EVIDENCE RUBELLA",EDATE,0) I X S BUDEVRUB="1^Rubella: Evidence: "_$P(X,U,2)_" on Problem List"
 I BUDEVRUB]"" S BUDRUB=BUDEVRUB
 I BUDMEA]"",BUDMU]"",BUDRUB]"" Q "1^MMR: "_BUDMEA_";"_BUDMU_";"_BUDRUB
 ;CONTRA
 S BUCDORUB=$$CONTRA^BUDDRP6C(P,$$DOB^AUPNPAT(P),EDATE,$O(^BUDDTSSC("B","T6B IMM RUBELLA CODES",0)),"RUBELLA")
 I BUCDORUB]"" S BUDRUB=BUCDORUB
 I BUDMEA]"",BUDMU]"",BUDRUB]"" Q "1^MMR: "_BUDMEA_";"_BUDMU_";"_BUDRUB
MMRQ ;
 I BUDMEA="",BUDMU="",BUDRUB="" Q "0^1 MEASLES MUMPS RUBBELLA"
 Q "0^"_$S(BUDMEA="":" 1 MEASLES",1:"")_$S(BUDMU="":" 1 MUMPS",1:"")_$S(BUDRUB="":" 1 RUBELLA",1:"")