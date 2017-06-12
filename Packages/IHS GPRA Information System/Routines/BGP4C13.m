BGP4C13 ; IHS/CMI/LAB - calc CMS measures 26 Sep 2004 11:28 AM ;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
ARBALG1 ;EP does patient have an ARB allergy
 ;get all povs with 995.0-995.3 with ecode of e935.3 up to discharge date
 NEW ED,BD,BGPG,X,Y,Z,N
 ;BGPD is discharge date
 S:$G(BGPC)="" BGPC=0  ;cmi/maw 3/19/2010 this was commented out for some reason so it was undef in the next sub routine
 S ED=$$FMADD^XLFDT(BGPD,-365)
ARBPOV ;
 K BGPG S Y="BGPG(",X=P_"^ALL DX [BGP ASA ALLERGY 995.0-995.3;DURING "_$$FMTE^XLFDT($$DOB^AUPNPAT(P))_"-"_$$FMTE^XLFDT(BGPD) S E=$$START1^APCLDF(X,Y)
 S X=0 F  S X=$O(BGPG(X)) Q:X'=+X  S Y=+$P(BGPG(X),U,4) D
 .S N=$$VAL^XBDIQ1(9000010.07,Y,.04) S N=$$UP^XLFSTR(N)
 .I N["ARB"!(N["ANGIOTENSIN RECEPTOR BLOCKER") S BGPC=BGPC+1,BGPY(BGPC)=$$DATE^BGP4UTL($P(BGPG(X),U))_" ADR POV "_$P(BGPG(X),U,2) Q
 .S T=$O(^ATXAX("B","BGP ADV EFF ANTIHYPERTEN ARB",0))
 .S Z=$P(^AUPNVPOV(Y,0),U,9) I Z]"",$$ICD^BGP4UTL2(Z,T,9) S G=1_U_"POV:  "_$$DATE^BGP4UTL($P(BGPG(X),U))_"  ["_$P(BGPG(X),U,2)_" + "_$P($$ICDDX^BGP4UTL2(Z),U,2)_"]  "_N Q
 .S Z=$P(^AUPNVPOV(Y,0),U,18) I Z]"",$$ICD^BGP4UTL2(Z,T,9) S G=1_U_"POV:  "_$$DATE^BGP4UTL($P(BGPG(X),U))_"  ["_$P(BGPG(X),U,2)_" + "_$P($$ICDDX^BGP4UTL2(Z),U,2)_"]  "_N Q
 .S Z=$P(^AUPNVPOV(Y,0),U,19) I Z]"",$$ICD^BGP4UTL2(Z,T,9) S G=1_U_"POV:  "_$$DATE^BGP4UTL($P(BGPG(X),U))_"  ["_$P(BGPG(X),U,2)_" + "_$P($$ICDDX^BGP4UTL2(Z),U,2)_"]  "_N Q
 .Q
 K BGPG S Y="BGPG(",X=P_"^ALL DX [BGP HX DRUG ALLERGY NEC;DURING "_$$FMTE^XLFDT($$DOB^AUPNPAT(DFN))_"-"_$$FMTE^XLFDT(BGPD) S E=$$START1^APCLDF(X,Y)
 S X=0 F  S X=$O(BGPG(X)) Q:X'=+X  S Y=+$P(BGPG(X),U,4) D
 .S N=$$VAL^XBDIQ1(9000010.07,Y,.04),N=$$UP^XLFSTR(N)
 .I N["ARB"!(N["ANGIOTENSIN RECEPTOR BLOCKER") S BGPC=BGPC+1,BGPY(BGPC)=$$DATE^BGP4UTL($P(BGPG(X),U))_" ADR POV "_$P(BGPG(X),U,2)
 ;now check problem list for these codes
 S T="",T=$O(^ATXAX("B","BGP ASA ALLERGY 995.0-995.3",0))
 S X=0 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X  D
 .S I=$P($G(^AUPNPROB(X,0)),U),Y=$P($$ICDDX^BGP4UTL2(I),U,2)
 .S N=$$VAL^XBDIQ1(9000011,X,.05),N=$$UP^XLFSTR(N)
 .Q:$P(^AUPNPROB(X,0),U,8)>BGPD  ;added after discharge date
 .Q:$P(^AUPNPROB(X,0),U,12)="D"
 .Q:$P(^AUPNPROB(X,0),U,12)="I"
 .I $$ICD^BGP4UTL2(I,$O(^ATXAX("B","BGP HX DRUG ALLERGY NEC",0)),9)!($$ICD^BGP4UTL2(I,T,9)),N["ARB"!(N["ANGIOTENSIN RECEPTOR BLOCKER") S BGPC=BGPC+1,BGPY(BGPC)=$$DATE^BGP4UTL($P(^AUPNPROB(X,0),U,8))_" ADR PROBLEM LIST "_Y_" "_N
 .Q
 ;now check allergy tracking
 S X=0 F  S X=$O(^GMR(120.8,"B",P,X)) Q:X'=+X  D
 .Q:$P($P($G(^GMR(120.8,X,0)),U,4),".")>BGPD  ;entered after discharge date
 .S N=$P($G(^GMR(120.8,X,0)),U,2),N=$$UP^XLFSTR(N)
 .I N["ARB"!(N["ANGIOTENSIN RECEPTOR BLOCKER") S BGPC=BGPC+1,BGPY(BGPC)=$$DATE^BGP4UTL($P(^GMR(120.8,X,0),U,4))_" ADR ALLERGY TRACKING"
 Q
ARBCON1 ;EP does patient have an ARB allergy
 ;nmi in refusal file for ARB
 S T=$O(^ATXAX("B","BGP CMS ARB MEDS",0))
 S Z=$$FMADD^XLFDT(BGPDDT,-365)
 S X=0 F  S X=$O(^AUPNPREF("AA",P,50,X)) Q:X'=+X  D
 .Q:'$D(^ATXAX(T,21,"B",X))  ;not an ARB
 .S D=0 F  S D=$O(^AUPNPREF("AA",P,50,X,D)) Q:D'=+D  D
 ..S Y=9999999-D I Y<Z Q  ;documented more than 1 year before discharge
 ..I Y>BGPDDT Q  ;documented after discharge
 ..S N=0 F  S N=$O(^AUPNPREF("AA",P,50,X,D,N)) Q:N'=+N  D
 ...Q:$P($G(^AUPNPREF(N,0)),U,7)'="N"
 ...S BGPC=BGPC+1,BGPY(BGPC)="NMI ARB: "_$$VAL^XBDIQ1(9000022,N,.04)_"   "_$$DATE^BGP4UTL($P(^AUPNPREF(N,0),U,3))_"  "_$$VAL^XBDIQ1(9000022,X,1101)
 ..Q
 .Q
 Q:BGPIND'=2
 S X=$$CPTI^BGP4DU(P,BGPD,BGPDDT,+$$CODEN^ICPTCOD("G8029"))
 I X S BGPC=BGPC+1,BGPY(BGPC)="CPT code G8029: "_$$DATE^BGP4UTL($P(X,U,2))
 S X=$$TRANI^BGP4DU(P,BGPD,BGPDDT,+$$CODEN^ICPTCOD("G8029"))
 I X S BGPC=BGPC+1,BGPY(BGPC)="Tran Code G8029: "_$$DATE^BGP4UTL($P(X,U,2))
 Q
ARBRX1 ;EP
 ;get last aspirin rx before date of adm
 NEW BGPG,BGPC,X,Y,Z,E,BD,ED
 S BGPC=0
 S ED=$$FMADD^XLFDT(BGPA,-1)
 S BD=$$FMADD^XLFDT(BGPA,-365)
 D GETMEDS^BGP4CU(P,BD,ED,"BGP CMS ARB MEDS","BGP CMS ARB MEDS NDC","BGP CMS ARB MEDS CLASS")
 I BGPIND=2 D
 .S X=$$CPTI^BGP4DU(P,BD,ED,+$$CODEN^ICPTCOD("G8027"))
 .I X S BGPC=BGPC+1,BGPY(BGPC)="CPT code G8027: "_$$DATE^BGP4UTL($P(X,U,2))
 .S X=$$TRANI^BGP4DU(P,BD,ED,+$$CODEN^ICPTCOD("G8027"))
 .I X S BGPC=BGPC+1,BGPY(BGPC)="Tran Code G8027: "_$$DATE^BGP4UTL($P(X,U,2))
 S BD=BGPA
 S ED=$$FMADD^XLFDT(BGPD,30)
 D GETMEDS^BGP4CU(P,BD,ED,"BGP CMS ARB MEDS","BGP CMS ARB MEDS NDC","BGP CMS ARB MEDS CLASS")
 I BGPIND=2 D
 .S X=$$CPTI^BGP4DU(P,BD,ED,+$$CODEN^ICPTCOD("G8027"))
 .I X S BGPC=BGPC+1,BGPY(BGPC)="CPT code G8027: "_$$DATE^BGP4UTL($P(X,U,2))
 .S X=$$TRANI^BGP4DU(P,BD,ED,+$$CODEN^ICPTCOD("G8027"))
 .I X S BGPC=BGPC+1,BGPY(BGPC)="Tran Code G8027: "_$$DATE^BGP4UTL($P(X,U,2))
 K BGPG
 Q
DSCH(H) ;
 Q $P($P(^AUPNVINP(H,0),U),".")
ACEICON1(P,BGPD,BGPDDT,BGPV,BGPY) ;EP have an ACEI allergy
 NEW ED,BD,BGPG,BGPC,X,Y,Z,N,E
 S BGPC=0 K BGPY
 S BD=$$FMADD^XLFDT(BGPD,-365)
 K BGPG S Y="BGPG(",X=P_"^LAST DX [BGP CMS AORTIC STENOSIS DXS;DURING "_$$FMTE^XLFDT($$DOB^AUPNPAT(P))_"-"_$$FMTE^XLFDT(BGPDDT) S E=$$START1^APCLDF(X,Y)
 I $D(BGPG(1)) S BGPC=BGPC+1,BGPY(BGPC)="POV:  "_$$DATE^BGP4UTL($P(BGPG(1),U))_" ["_$P(BGPG(1),U,2)_"]    "_$$VAL^XBDIQ1(9000010.07,+$P(BGPG(1),U,4),.04)
 ;
 ;nmi in refusal file for ACEI
 S T=$O(^ATXAX("B","BGP CMS ACEI MEDS",0))
 S Z=$$FMADD^XLFDT(BGPDDT,-365)
 S X=0 F  S X=$O(^AUPNPREF("AA",P,50,X)) Q:X'=+X  D
 .Q:'$D(^ATXAX(T,21,"B",X))  ;not an ACEI
 .S D=0 F  S D=$O(^AUPNPREF("AA",P,50,X,D)) Q:D'=+D  D
 ..S Y=9999999-D I Y<Z Q  ;documented more than 1 year before disc
 ..I Y>BGPDDT Q  ;documented after discharge
 ..S N=0 F  S N=$O(^AUPNPREF("AA",P,50,X,D,N)) Q:N'=+N  D
 ...Q:$P($G(^AUPNPREF(N,0)),U,7)'="N"
 ...S BGPC=BGPC+1,BGPY(BGPC)="NMI ACEI: "_$$VAL^XBDIQ1(9000022,N,.04)_"   "_$$DATE^BGP4UTL($P(^AUPNPREF(N,0),U,3))_"  "_$$VAL^XBDIQ1(9000022,X,1101)
 ..Q
 .Q
 D ARBCON1
 Q