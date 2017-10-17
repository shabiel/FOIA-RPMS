BUDDRP7C ; IHS/CMI/LAB - UDS REPORT PROCESSOR 02 Feb 2016 10:27 AM ; 
 ;;11.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 18, 2017;Build 66
 ;
DM ;EP - list of DM
 S BUDDOB=$P(^DPT(DFN,0),U,3)
 S BUDDDB=($E(BUDBD,1,3)-75)_"0101"
 S BUDDDE=($E(BUDBD,1,3)-18)_"1231"
 Q:BUDDOB>BUDDDE
 Q:BUDDOB<BUDDDB
 Q:BUDMEDV<1
 ;
 S BUDP=$$DMDX(DFN,$$DOB^AUPNPAT(DFN),BUDED)
 I '$P(BUDP,U) Q  ;not dx'ed before end of report period
 S BUDOVAR=$$OVAR(DFN,BUDBD,BUDED)
 ;START HERE LORI AND FIX DM2/GESTDX/OVAR
 S BUDX2DM=$$DM2(DFN,($E(BUDBD,1,3)-1)_$E(BUDBD,4,7),BUDED)
 I $P(BUDOVAR,U),'$P(BUDX2DM,U) Q  ;DID NOT HAVE had 2 dx of dm during report period and an ovary dx
 I $$GESTDX(DFN,BUDBD,BUDED) Q  ;had gestational dx during report period
 S BUDRACEX=$$RACE^BUDDRPTC(DFN),BUDRACE=$P(BUDRACEX,U,2),BUDRACEP=$P(BUDRACEX,U,5)
 S BUDRACEE=$$RACE^BUDDRP7I(BUDRACE)
 ;S BUDRACE=$$RACE^BUDDRP7I(BUDRACE)
 S BUDETHN=$P($$HISP^BUDDRPTC(DFN),U,1)
 I +BUDETHN=1 S BUDETHNN="Hispanic or Latino"
 I +BUDETHN=2 S BUDETHNN="Non-Hispanic/Latino"
 I +BUDETHN=3 S BUDETHNN="Unreported/Refused to Report"
 I BUDRACEP=8,+BUDETHN=3 S BUDR=1 G SETSECTC
 I +BUDETHN=1 S BUDR=BUDRACEP G SETSECTC
 I +BUDETHN=2 S BUDR=BUDRACEP G SETSECTC
SETSECTC ;
 S $P(BUDSECTC(+BUDETHN,BUDR),U,1)=$P($G(BUDSECTC(+BUDETHN,BUDR)),U,1)+1  ;COL 1
 S $P(BUDSECTC(+BUDETHN,BUDR),U,2)=$P($G(BUDSECTC(+BUDETHN,BUDR)),U,2)+1  ;COL 2
 ;TOTAL LINE
 S $P(BUDSECTC(4),U,1)=$P($G(BUDSECTC(4)),U,1)+1
 S $P(BUDSECTC(4),U,2)=$P($G(BUDSECTC(4)),U,2)+1
 ;SUBTOTAL LINE
 S $P(BUDSECTC(+BUDETHN),U,1)=$P($G(BUDSECTC(+BUDETHN)),U,1)+1
 S $P(BUDSECTC(+BUDETHN),U,2)=$P($G(BUDSECTC(+BUDETHN)),U,2)+1
 I $G(BUDDMRL) S ^XTMP("BUDDRP7",BUDJ,BUDH,"DMR",BUDRACEP,+BUDETHN,BUDCCOM,BUDAGE,$P(^DPT(DFN,0),U),DFN)=$P(BUDP,"^",2)
 ;get last hgba1c value and set counters/lists
 S BUDHGB=$$HGBA1C(DFN,BUDBD,BUDED)
SET ;
 S BUDLINE=$P(BUDHGB,U)
 S BUDPIEC=$S(BUDLINE=13:5,BUDLINE=11:4,1:"")
 ;W !,DFN,"  ",BUDLINE
 S $P(BUDSECTC(+BUDETHN,BUDR),U,BUDPIEC)=$P($G(BUDSECTC(+BUDETHN,BUDR)),U,BUDPIEC)+1  ;COL 1
 ;TOTAL LINE
 S $P(BUDSECTC(4),U,BUDPIEC)=$P($G(BUDSECTC(4)),U,BUDPIEC)+1
 S $P(BUDSECTC(+BUDETHN),U,BUDPIEC)=$P($G(BUDSECTC(+BUDETHN)),U,BUDPIEC)+1
 I $G(BUDDMR1L),BUDLINE=11 S ^XTMP("BUDDRP7",BUDJ,BUDH,"DMR1",BUDRACEP,+BUDETHN,BUDCCOM,BUDAGE,$P(^DPT(DFN,0),U),DFN)=$P(BUDP,"^",2)_"^"_$P(BUDHGB,U,2)
 I $G(BUDDMR2L),BUDLINE=13 S ^XTMP("BUDDRP7",BUDJ,BUDH,"DMR2",BUDRACEP,+BUDETHN,BUDCCOM,BUDAGE,$P(^DPT(DFN,0),U),DFN)=$P(BUDP,"^",2)_"^"_$P(BUDHGB,U,2)
 ;I $G(BUDDMR3L),BUDLINE=12.2 S ^XTMP("BUDDRP7",BUDJ,BUDH,"DMR3",BUDRACEP,+BUDETHN,BUDCCOM,BUDAGE,$P(^DPT(DFN,0),U),DFN)=$P(BUDP,"^",2)_"^"_$P(BUDHGB,U,2)
 ;I $G(BUDDMR3L),BUDLINE=13 S ^XTMP("BUDDRP7",BUDJ,BUDH,"DMR3",BUDRACEP,+BUDETHN,BUDCCOM,BUDAGE,$P(^DPT(DFN,0),U),DFN)=$P(BUDP,"^",2)_"^"_$P(BUDHGB,U,2)
 Q
 ;
HGBA1C(P,BDATE,EDATE) ;EP
 NEW BUDG,BUDT,BUDD,E,%,L,T,BUDLT,D,X,J,C,G
 S BUDD=0
 S G=$$CPT^BUDDDU(P,BDATE,EDATE,$O(^ATXAX("B","BUD HGBA1C CPTS",0)),5)
 I G]"" S BUDD=BUDD+1,BUDT((9999999-$P(G,U,1)),BUDD)=U_"CPT "_$P(G,U,2)
 ;now get all loinc/taxonomy tests
 S T=$O(^ATXAX("B","BGP HGBA1C LOINC CODES",0))
 S BUDLT=$O(^ATXLAB("B","DM AUDIT HGB A1C TAX",0))
 S B=9999999-BDATE,E=9999999-EDATE S D=E-1 F  S D=$O(^AUPNVLAB("AE",P,D)) Q:D'=+D!(D>B)  D
 .S L=0 F  S L=$O(^AUPNVLAB("AE",P,D,L)) Q:L'=+L  D
 ..S X=0 F  S X=$O(^AUPNVLAB("AE",P,D,L,X)) Q:X'=+X  D
 ...Q:'$D(^AUPNVLAB(X,0))
 ...I BUDLT,$P(^AUPNVLAB(X,0),U),$D(^ATXLAB(BUDLT,21,"B",$P(^AUPNVLAB(X,0),U))) S BUDD=BUDD+1,BUDT(D,BUDD)=$P(^AUPNVLAB(X,0),U,4)_U_"LAB: "_$$VAL^XBDIQ1(9000010.09,X,.01) Q
 ...Q:'T
 ...S J=$P($G(^AUPNVLAB(X,11)),U,13) Q:J=""
 ...Q:'$$LOINC(J,T)
 ...S BUDD=BUDD+1,BUDT(D,BUDD)=$P(^AUPNVLAB(X,0),U,4)_U_"LAB LOINC: "_$$VAL^XBDIQ1(9000010.09,X,.01)_" "_$P(^AUPNVLAB(X,11),U,13)
 ...Q
 ; now got though and set return value of done 1 or 0^numerator 2-7^date^value
 I '$D(BUDT) Q 13_U_"NO A1C TEST DURING THE REPORT PERIOD"  ;no tests so is hit in numerator
 ; now get rid of all on same day where 1 has a result and the other doesn't
 S D=0,BUDD=0 K BUDX  F  S D=$O(BUDT(D)) Q:D'=+D  S C=0,G=0 F  S C=$O(BUDT(D,C)) Q:C'=+C  D
 .;I $P(BUDT(D,C),U,1)]"" S BUDD=BUDD+1
 .;I BUDD>0,$P(BUDT(D,C),U,1)="" K BUDT(D,C)
 .I $P(BUDT(D,C),U,1)="" Q
 .S BUDX(D,C)=BUDT(D,C)
 I '$D(BUDX) D
 .S D=$O(BUDT(0))
 .I D S C=$O(BUDT(D,0))
 .I C S BUDX(D,C)=BUDT(D,C)
 S D=0,G=""
 S D=$O(BUDX(D))
 S C=0,C=$O(BUDX(D,C))
 S X=$P(BUDX(D,C),U,1)
 I $$UP^XLFSTR(X)="COMMENT" Q 13_U_$P(BUDX(D,C),U,2)_" "_$$DATE^BUDDUTL1(9999999-D)_" (no result) "_X
 I X="" D  Q G
 .S G=""
 .I $P(BUDX(D,C),U,2)="CPT 3046F" S G=13_U_$P(BUDX(D,C),U,2)_" "_$$DATE^BUDDUTL1(9999999-D) Q
 .I $P(BUDX(D,C),U,2)="CPT 3045F" S G=12.2_U_$P(BUDX(D,C),U,2)_" "_$$DATE^BUDDUTL1(9999999-D) Q
 .I $P(BUDX(D,C),U,2)="CPT 3044F" S G=11_U_$P(BUDX(D,C),U,2)_" "_$$DATE^BUDDUTL1(9999999-D) Q
 .I $P(BUDX(D,C),U,2)="CPT 83036" S G=13_U_$P(BUDX(D,C),U,2)_" "_$$DATE^BUDDUTL1(9999999-D) Q
 .I $P(BUDX(D,C),U,2)="CPT 83037" S G=13_U_$P(BUDX(D,C),U,2)_" "_$$DATE^BUDDUTL1(9999999-D) Q
 .S G=13_U_$P(BUDX(D,C),U,2)_" DID NOT HAVE A RESULT "_$$DATE^BUDDUTL1(9999999-D) Q
 S X=$$STRIP^XLFSTR(X," ")  ;strip spaces
 I X[">9" Q 13_U_$P(BUDX(D,C),U,2)_" "_X_" "_X_$$DATE^BUDDUTL1(9999999-D)
 S X=$$STV(X)
 I X="" Q 13_U_$P(BUDX(D,C),U,2)_" DID NOT HAVE A RESULT "_$$DATE^BUDDUTL1(9999999-D)
 I +X>9 Q 13_U_$P(BUDX(D,C),U,2)_" "_X_" "_$$DATE^BUDDUTL1(9999999-D)
 I +X<8 Q 11_U_$P(BUDX(D,C),U,2)_" "_X_" "_$$DATE^BUDDUTL1(9999999-D)
 Q ""  ;12.2_U_$P(BUDX(D,C),U,2)_" "_X_" "_$$DATE^BUDDUTL1(9999999-D)
 ;Q 0_U_$P(BUDX(D,C),U,2)_" "_$$DATE^BUDDUTL1(9999999-D)_" result: "_X
 ;
RACE(R) ;EP
 I R="Unreported" Q 8
 I R="Asian" Q 1
 I R="Native Hawaiian" Q 2
 I R="Other Pacific Islander" Q 3
 I R="Black/African American" Q 4
 I R="American Indian/Alaska Native" Q 5
 I R="White" Q 6
 Q ""
DMDX(P,BDATE,EDATE,STOP) ;EP
 NEW BUDDX,B,CNT,BUDD,BUDG,BUDALL,Z,Y,T,X
 S STOP=$G(STOP)
 S B=0,CNT=0,BUDD="",BUDALL=""  ;if there is one before time frame set this to 1
 ;
 ;V10.0 ICD10
 K BUDG S %=P_"^ALL DX;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 S T=$O(^BUDDTSSC("B","T7 DIABETES DIAGNOSES",0))
 S X=0,G="" F  S X=$O(BUDG(X)) Q:X'=+X!(G)  D
 .S Y=+$P(BUDG(X),U,4)
 .S Z=$P($G(^AUPNVPOV(Y,0)),U,1)
 .S V=$P(BUDG(X),U,5)
 .S C=$$PRIMPROV^APCLV(V,"D")
 .Q:C=53
 .Q:$P(^AUPNVSIT(V,0),U,7)="C"
 .I $D(^BUDDTSSC("AD",Z,T)) S G=1_"^"_$P(BUDG(X),U,5)_"|"_$P(BUDG(X),U,2) Q
 .S S=$$VAL^XBDIQ1(9000010.07,Y,1101) I S]"",$D(^BUDDTSSC("AS",S,T)) S G=1_"^"_$P(BUDG(X),U,5)_"|"_S Q
 I G]"" Q G
PROBDX ;
 S G=$$PLCL^BUDDDU(P,"T7 DIABETES DIAGNOSES",EDATE,0)
 I G Q 1_U_"Problem List: "_$P(G,U,2)_" on "_$$DATE^BUDDUTL1($P(G,U,3))
PROBDMM ;now check for med
 K BUDMEDS1 D GETMEDS^BUDDUTL2(P,BDATE,EDATE,"BUD DIABETES MEDS TAX","BUD DIABETES MEDS NDC",,,.BUDMEDS1)
 I $D(BUDMEDS1(1)) Q 1_"^"_$P(BUDMEDS1(1),U,5)_"|"_$E($P(BUDMEDS1(1),U,2),1,15)
 Q ""
 ;
OVAR(P,BDATE,EDATE,STOP) ;EP
 NEW BUDDX,B,CNT,BUDD,BUDG,BUDALL
 S STOP=$G(STOP)
 S B=0,CNT=0,BUDD="",BUDALL=""  ;if there is one before time frame set this to 1
 K BUDG
 S Y="BUDG("
 S X=P_"^LAST DX 256.4;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BUDG(1)) Q 1_"^"_$P(BUDG(1),U,5)_"|"_$P(BUDG(1),U,2)
 S X=P_"^LAST DX E28.2;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BUDG(1)) Q 1_"^"_$P(BUDG(1),U,5)_"|"_$P(BUDG(1),U,2)
 I STOP Q ""
PROBOV ;
 S (X,G)=0,Z="" F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(G)  D
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .Q:$P(^AUPNPROB(X,0),U,8)>EDATE
 .Q:$P(^AUPNPROB(X,0),U,8)<BDATE
 .S Y=$$VAL^XBDIQ1(9000011,X,.01)
 .I Y'="256.4",Y'="E28.2" Q
 .S G=$P(^AUPNPROB(X,0),U,8),Z=X
 .Q
 I G Q 1
 Q ""
DM2(P,BDATE,EDATE,STOP) ;EP
 NEW BUDDX,B,CNT,BUDD,BUDG,BUDALL
 S STOP=$G(STOP)
 S B=0,CNT=0,BUDD="",BUDALL=""  ;if there is one before time frame set this to 1
 ;
 ;V10.0 ICD10
 K BUDG S %=P_"^ALL DX;DURING "_BDATE_"-"_EDATE,E=$$START1^APCLDF(%,"BUDG(")
 S T=$O(^BUDDTSSC("B","T7 DIABETES DIAGNOSES",0))
 S X=0,G="" F  S X=$O(BUDG(X)) Q:X'=+X!(CNT>1)  D
 .S Y=+$P(BUDG(X),U,4)
 .S Z=$P($G(^AUPNVPOV(Y,0)),U,1)
 .S V=$P(BUDG(X),U,5)
 .S C=$$PRIMPROV^APCLV(V,"F")
 .Q:C=53
 .Q:$P(^AUPNVSIT(V,0),U,7)="C"
 .I $D(^BUDDTSSC("AD",Z,T)) S CNT=CNT+1 S G=1_"^"_$P(BUDG(X),U,5)_"|"_$P(BUDG(X),U,2) Q
 .S S=$$VAL^XBDIQ1(9000010.07,Y,1101) I S]"",$D(^BUDDTSSC("AS",S,T)) S CNT=CNT+1 S G=1_"^"_$P(BUDG(X),U,5)_"|"_S Q
 I CNT>1 Q G
 Q ""
GESTDX(P,BDATE,EDATE,STOP) ;EP
 NEW BUDDX,B,CNT,BUDD,BUDG,BUDALL
 S STOP=$G(STOP)
 S B=0,CNT=0,BUDD="",BUDALL=""  ;if there is one before time frame set this to 1
 K BUDG
 S Y="BUDG("
 S X=P_"^LAST DX [BUD GEST/STEROID DM DX;DURING "_$$FMTE^XLFDT(BDATE)_"-"_$$FMTE^XLFDT(EDATE) S E=$$START1^APCLDF(X,Y)
 I $D(BUDG(1)) Q 1_"^"_$P(BUDG(1),U,5)_"|"_$P(BUDG(1),U,2)
 I STOP Q ""
GESTPL S T=$O(^ATXAX("B","BUD GEST/STEROID DM DX",0))
 S (X,G)=0,Z="" F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(G)  D
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .Q:$P(^AUPNPROB(X,0),U,8)>EDATE
 .Q:$P(^AUPNPROB(X,0),U,8)<BDATE
 .S Y=$P(^AUPNPROB(X,0),U)
 .Q:'$$ICD^ATXCHK(Y,T,9)
 .S G=$P(^AUPNPROB(X,0),U,8),Z=X
 .Q
 I G Q 1
 Q ""
 ;
LOINC(A,B) ;EP
 NEW %
 S %=$P($G(^LAB(95.3,A,9999999)),U,2)
 I %]"",$D(^ATXAX(B,21,"B",%)) Q 1
 S %=$P($G(^LAB(95.3,A,0)),U)_"-"_$P($G(^LAB(95.3,A,0)),U,15)
 I $D(^ATXAX(B,21,"B",%)) Q 1
 Q ""
STV(X) ;EP - strip all characters besides numbers and a "."
 I X="" Q X
 NEW A,B,L
 S L=$L(X)
 F B=1:1:L S A=$E(X,B) Q:A=""  I A'?1N,A'?1"." S X=$$STRIP^XLFSTR(X,A) S B=B-1
 Q X
 ;