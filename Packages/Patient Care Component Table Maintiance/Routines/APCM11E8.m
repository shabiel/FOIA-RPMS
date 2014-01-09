APCM11E8 ;IHS/CMI/LAB - IHS MU; 
 ;;1.0;IHS MU PERFORMANCE REPORTS;**1**;MAR 26, 2012
 ;;;;;;Build 3
TOTLAB ;EP - ep LAB
 ;SET ARRAY APCMLABS to APCMLABS(prov ien)=denom^numer
 ;IF DENOM =0 THEN PROVIDER EXCLUSION
 NEW ID,C,Y,X,D,S,N,A,B,R,PAT,ED,APCMLAB,APCMX,APCML,PAR
 S ED=9999999-APCMBDAT,ED=ED_".9999"
 S SD=9999999-APCMEDAT
 S C=0,N=0,PAT=""
 S LABSNO=""
 S T=$O(^ATXLAB("B","BGP PAP SMEAR TAX",0))
 S PAT="" F  S PAT=$O(^AUPNVSIT("AA",PAT)) Q:PAT'=+PAT  D TOTLAB1
 Q
TOTLAB1 ;
 NEW APCMLAB,APCMLAB1
 S APCMLAB="APCMLAB"
 D ALLLAB^APCLAPIU(PAT,APCMBDAT,APCMEDAT,,,,.APCMLAB)
 ;reorder by IEN of v lab
 K APCMLAB1
 S APCMX=0 F  S APCMX=$O(APCMLAB(APCMX)) Q:APCMX'=+APCMX  D
 .S V=$P(APCMLAB(APCMX),U,5)
 .Q:'$D(^AUPNVSIT(V,0))
 .Q:"AOSM"'[$P(^AUPNVSIT(V,0),U,7)
 .S C=$$CLINIC^APCLV(V,"C")
 .Q:C=30
 .;Q:C=77  ;CASE MANAGEMENT
 .;I C=76 Q  ;no lab
 .;I C=63 Q  ;no radiology
 .;I C=39 Q  ;no pharmacy
 .S Y=$P(APCMLAB(APCMX),U,4),APCMLAB1(Y)=APCMLAB(APCMX)
 S Y=0 F  S Y=$O(APCMLAB1(Y)) Q:Y'=+Y  D
 .Q:$P(APCMLAB1(Y),U,10)]""  ;already processed this one
 .S R=$P($G(^AUPNVLAB(Y,12)),U,2)
 .I 'R S $P(APCMLAB1(Y),U,10)="NO PROV EXCL" Q  ;no ordering provider so skip it
 .I '$D(APCMPRV(R)) S $P(APCMLAB1(Y),U,10)="NOT A PROV EXCL" Q  ;not a provider of interest
 .I $P($P($G(^AUPNVLAB(Y,12)),U,1),".")>APCMEDAT S $P(APCMLAB1(Y),U,10)="AFTER DT RANGE" Q
 .I $P($G(^AUPNVLAB(Y,12)),U,1)]"",$P($P($G(^AUPNVLAB(Y,12)),U,1),".")<APCMBDAT S $P(APCMLAB1(Y),U,10)="BEFORE DT RANGE" Q  ;COLLECTED BEFORE TIME PERIOD
 .S A=$P(^AUPNVLAB(Y,0),U,1)
 .I T,$D(^ATXLAB(T,21,"B",A)) S $P(APCMLAB1(Y),U,10)="PAP EXCL" Q   ;it's a pap smear
 .I $$UP^XLFSTR($P(^AUPNVLAB(Y,0),U,4))="CANC" S $P(APCMLAB1(Y),U,10)="CANC EXCL" Q
 .;is this a panel and if so do panel check
 .S PAR=$P($G(^AUPNVLAB(Y,12)),U,8)
 .I PAR S $P(APCMLAB1(Y),U,10)="HAS PARENT SKIP/EXCL" Q  ;has a parent, will deal with parent
 .D SETDENL
 .;now check numerator
 .;if panel do panel check for 1 test that is resulted
 .I $O(^LAB(60,A,2,0)) D PANEL Q
 .Q:$P($G(^AUPNVLAB(Y,11)),U,9)'="R"  ;if status not resulted it doesn't make the numerator
 .I $$UP^XLFSTR($P(^AUPNVLAB(Y,0),U,4))="COMMENT",'$$HASCOM(Y) Q
 .S $P(APCMLABS(R),U,2)=$P(APCMLABS(R),U,2)+1,$P(^TMP($J,"PATSRX",R,PAT),U,2)=$P($G(^TMP($J,"PATSRX",R,PAT)),U,2)+1 S ^TMP($J,"PATSRX",R,PAT,"ELEC",$$VAL^XBDIQ1(9000010.09,Y,1201)_" "_$$VAL^XBDIQ1(9000010.09,Y,.01))=""  ;S N=N+G Q  ;S N=N+G
 .;S $P(APCMLABS(R),U,3)=$P(APCMLABS(R),U,3)_$$VAL^XBDIQ1(9000010.09,Y,.01)_":"_$$VAL^XBDIQ1(9000010.09,Y,.04)_";"
 Q
PANEL ;
 ;find all children and find at least one with a result, if one found set numerator
 NEW X,Z,G,P
 S G=0
 S X=0 F  S X=$O(APCMLAB1(X)) Q:X'=+X!(G)  D
 .S P=$P($G(^AUPNVLAB(X,12)),U,8)
 .I P'=Y Q  ;not a member of this panel
 .I $P($G(^AUPNVLAB(Y,11)),U,9)'="R" S $P(APCMLAB1(X),U,10)="NOT RESULTED" Q
 .I $$UP^XLFSTR($P(^AUPNVLAB(X,0),U,4))="COMMENT",'$$HASCOM(X) S $P(APCMLAB1(X),U,10)="comment/no comments" Q
 .S G=1
 Q:'G
 S $P(APCMLABS(R),U,2)=$P(APCMLABS(R),U,2)+1,$P(^TMP($J,"PATSRX",R,PAT),U,2)=$P($G(^TMP($J,"PATSRX",R,PAT)),U,2)+1 S ^TMP($J,"PATSRX",R,PAT,"ELEC",$$VAL^XBDIQ1(9000010.09,Y,1201)_" "_$$VAL^XBDIQ1(9000010.09,Y,.01))=""  ;S N=N+G Q  ;S N=N+G
 Q
SETDENL ;
 S $P(APCMLAB1(Y),U,10)=1  ;processed this test
 I '$D(APCMLABS(R)) S APCMLABS(R)=""
 S $P(APCMLABS(R),U,1)=$P(APCMLABS(R),U,1)+1,$P(^TMP($J,"PATSRX",R,PAT),U,1)=$P($G(^TMP($J,"PATSRX",R,PAT)),U,1)+1,^TMP($J,"PATSRX",R,PAT,"SCRIPTS",$$VAL^XBDIQ1(9000010.09,Y,1201)_" "_$$VAL^XBDIQ1(9000010.09,Y,.01))=""
 Q
 ;
HASCOM(L) ;ARE THERE ANY COMMENTS
 I '$D(^AUPNVLAB(L,21)) Q 0
 NEW B,G
 S G=0
 S B=0 F  S B=$O(^AUPNVLAB(L,21,B)) Q:B'=+B  I ^AUPNVLAB(L,21,B,0)]"" S G=1  ;has comment
 Q G