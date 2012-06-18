ORWDXC ; SLC/KCM - Utilities for Order Checking;29-Feb-2008 13:03;DKM
 ;;3.0;ORDER ENTRY/RESULTS REPORTING;**10,141,1005**;Dec 17, 1997
 ;
ON(VAL) ; returns E if order checking enabled, otherwise D
 S VAL=$$GET^XPAR("DIV^SYS^PKG","ORK SYSTEM ENABLE/DISABLE")
 Q
FILLID(VAL,DLG) ; Return the FillerID (namespace) for a dialog
 N DGRP
 S VAL="",DGRP=$P($G(^ORD(101.41,DLG,0)),U,5) Q:'DGRP
 S DLG=$$DEFDLG^ORWDXQ(DGRP)
 S VAL=$P($G(^ORD(101.41,DLG,0)),U,7),VAL=$$NMSP^ORCD(VAL)
 I VAL="PS" D
 . N X
 . S X=$P($P($G(^ORD(100.98,DGRP,0)),U,3)," ")
 . I $L(X) S VAL="PS"_$S(X="UD":"I",1:X)
 Q
DISPLAY(LST,DFN,FID) ; Return list of Order Checks for a FillerID (namespace)
 N I,ORX,ORY
 S ORX=1,ORX(1)="|"_FID
 D EN^ORKCHK(.ORY,DFN,.ORX,"DISPLAY")
 S I=0 F  S I=$O(ORY(I)) Q:I'>0  S LST(I)=$P(ORY(I),U,4)
 Q
 ; IHS/MSC/DKM - Added RENEW entry point
RENEW(LST,DFN,ORLST) ;
 N X,Y,ORL,ORD,PID,INST,ITM,PKG,LP,CNT
 S:$D(ORLST)=1 ORLST(1)=ORLST
 S (CNT,ORLST)=0
 F  S ORLST=$O(ORLST(ORLST)) Q:'ORLST  D
 .S ORD=+ORLST(ORLST)
 .S X=$G(^OR(100,ORD,0))
 .Q:+$P(X,U,2)'=DFN
 .S ORL=+$P(X,U,10),PKG=$$GET1^DIQ(9.4,+$P(X,U,14),1),LP=0
 .F  S LP=$O(^OR(100,ORD,4.5,LP)) Q:'LP  S Y=$G(^(LP,0)) D
 ..N TMP,OIL
 ..S PID=$P(Y,U,4),INST=$P(Y,U,3)
 ..I PID'="ORDERABLE",PID'="ADDITIVE" Q
 ..S ITM=+$G(^OR(100,ORD,4.5,LP,1))
 ..I PKG="LR" S ITM=ITM_U_PKG_U_$$VALUE^ORCSAVE2(ORD,"SPECIMEN",INST)
 ..E  I PKG="PSIV" S ITM=ITM_U_PKG_U_$S(PID="ADDITIVE":"A",1:"B;"_$$VALUE^ORCSAVE2(ORD,"VOLUME",INST))
 ..E  I $E(PKG,1,2)="PS" S ITM=ITM_U_PKG_U_$$VALUE^ORCSAVE2(ORD,"DRUG",INST)
 ..S OIL(1)=ITM
 ..D ACCEPT(.TMP,DFN,PKG,"",ORL,.OIL,ORD)
 ..I $D(TMP)>1 S CNT=CNT+1 M LST(CNT)=TMP
 Q
ACCEPT(LST,DFN,FID,STRT,ORL,OIL,ORIFN) ; Return list of Order Checks on Accept Order
 ; OIL(n)=OIptr^PS|PSIV|LR^PkgInfo
 N X,Y,USID,ORCHECK,ORI,ORX,ORY
 ; convert relative start date to real start date
 S ORL=ORL_";SC(",X=STRT,STRT=""
 D:X="AM" AM^ORCSAVE2 D:X="NEXT" NEXT^ORCSAVE2
 I $L(X) S %DT="FTX" D ^%DT S:Y'>0 Y="" S STRT=Y
 ; do the SELECT order checks
 S ORI=0 F  S ORI=$O(OIL(ORI)) Q:'ORI  D
 . S USID=$$USID(OIL(ORI))
 . S OIL(ORI,"USID")=USID
 . S ORX=1,ORX(1)=+OIL(ORI)_"|"_FID_"|"_USID
 . D EN^ORKCHK(.ORY,DFN,.ORX,"SELECT")
 . I $D(ORY) D RETURN^ORCHECK ; expects ORY, ORCHECK
 . K ORX,ORY
 ; do the ACCEPT order checks
 S (ORI,ORX)=0 F  S ORI=$O(OIL(ORI)) Q:'ORI  D
 . S ORX=ORX+1
 . S ORX(ORX)=+OIL(ORI)_"|"_FID_"|"_OIL(ORI,"USID")_"|"_STRT
 . I $P(OIL(ORI),U,2)="LR" S $P(ORX(ORX),"|",6)=$P(OIL(ORI),U,3)
 D EN^ORKCHK(.ORY,DFN,.ORX,"ACCEPT")
 I $D(ORY) D RETURN^ORCHECK   ; expects ORY, ORCHECK
 ; return ORCHECK as 1 dimensional list
 D CHK2LST
 Q
DELAY(LST,DFN,FID,STRT,ORL,OIL) ; Return list of Order Checks on Accept Delayed
 ; OIL(n)=OIptr^PS|PSIV|LR^PkgInfo
 N X,Y,ORCHECK,ORI,ORX,ORY
 ; convert relative start date to real start date
 S ORL=ORL_";SC(",X=STRT,STRT=""
 D:X="AM" AM^ORCSAVE2 D:X="NEXT" NEXT^ORCSAVE2
 I $L(X) S %DT="FTX" D ^%DT S:Y'>0 Y="" S STRT=Y
 ; do the ACCEPT order checks
 S (ORI,ORX)=0 F  S ORI=$O(OIL(ORI)) Q:'ORI  D
 . S ORX=ORX+1
 . S ORX(ORX)=+OIL(ORI)_"|"_FID_"|"_$$USID(OIL(ORI))_"|"_STRT
 . I $P(OIL(ORI),U,2)="LR" S $P(ORX(ORX),"|",6)=$P(OIL(ORI),U,3)
 D EN^ORKCHK(.ORY,DFN,.ORX,"ALL")
 I $D(ORY) D RETURN^ORCHECK   ; expects ORY, ORCHECK
 ; return ORCHECK as 1 dimensional list
 D CHK2LST
 Q
SESSION(LST,ORVP,ORLST) ; Return list of Order Checks on Release Order
 N ORES,ORCHECK
 S ORVP=+ORVP_";DPT("
 S I=0 F  S I=$O(ORLST(I)) Q:'I  D
 . I +$P(ORLST(I),";",2)'=1 Q  ; order not new
 . I $P(ORLST(I),U,3)="0" Q    ; order not being released
 . S ORES($P(ORLST(I),U))=""
 D SESSION^ORCHECK
 D CHK2LST
 Q
 ; IHS/MSC/DKM - Added following entry point
MANUAL(LST,ORVP,ORLST) ; Return list of Order Checks on Manual Request
 N ORCHECK,ORES,I
 S ORVP=+ORVP_";DPT("
 S I=0 F  S I=$O(ORLST(I)) Q:'I  D
 . S ORES(ORLST(I))=""
 D MANUAL^ORCHECK
 D CHK2LST
 Q
SAVECHK(OK,ORVP,RSN,LST) ; Save order checks for session
 N ORCHECK,ORIFN S OK=1
 D LST2CHK
 I $L(RSN)>0 S ORCHECK("OK")=RSN
 S ORIFN=0 F  S ORIFN=$O(ORCHECK(ORIFN)) Q:'ORIFN  D OC^ORCSAVE2
 Q
DELORD(OK,ORIFN) ; Delete order
 N STS,DIK,DA
 S STS=$P(^OR(100,+ORIFN,8,1,0),U,15),OK=0
 I (STS=10)!(STS=11) D  Q  ; makes sure it's an unreleased order
 . S DA=+ORIFN,DIK="^OR(100," Q:'DA
 . D ^DIK
 . S OK=1
 Q
USID(ORITMX) ; Return universal svc ID for an orderable item
 ; ORITMX = OI^NMSP^PKGINFO
 N RSLT,ORDRUG S RSLT=""
 I $E($P(ORITMX,U,2),1,2)="PS" D
 . I $P(ORITMX,U,2)="PSIV" D
 . . N PSOI,TYPE,VOL S VOL=""
 . . S PSOI=+$P($G(^ORD(101.43,+ORITMX,0)),U,2)
 . . S TYPE=$P($P(ORITMX,U,3),";")
 . . I TYPE="B" S VOL=$P($P(ORITMX,U,3),";",2)
 . . D ENDDIV^PSJORUTL(PSOI,TYPE,VOL,.ORDRUG)
 . . S ORDRUG=+ORDRUG
 . E  S ORDRUG=+$P(ORITMX,U,3)
 . S RSLT=$$ENDCM^PSJORUTL(ORDRUG)
 . S RSLT=$P(RSLT,U,3)_"^^99NDF^"_ORDRUG_U_$P($G(^PSDRUG(ORDRUG,0)),U)_"^99PSD"
 E  S RSLT=$$USID^ORMBLD(+ORITMX)
 I +$P(RSLT,U)=0,+($P(RSLT,U,4)=0) S RSLT="" ; has to be null (why?)
 Q RSLT
 ;
CHK2LST ; creates list that can be passed to broker from ORCHECK array
 ; expects ORCHECK to be present and populates LST
 N ORIFN,ORID,CDL,I,ILST S ILST=0
 S ORIFN="" F  S ORIFN=$O(ORCHECK(ORIFN)) Q:ORIFN=""  D
 . S CDL=0 F  S CDL=$O(ORCHECK(ORIFN,CDL)) Q:'CDL  D
 . . S I=0 F  S I=$O(ORCHECK(ORIFN,CDL,I)) Q:'I  D
 . . . S ORID=ORIFN I +ORID,(+ORID=ORID) S ORID=ORID_";1"
 . . . I '$P(ORCHECK(ORIFN,CDL,I),U,2) Q  ; CDL="" means don't show
 . . . S ILST=ILST+1,LST(ILST)=ORID_U_ORCHECK(ORIFN,CDL,I)
 Q
LST2CHK ; create ORCHECK array from list passed by broker
 N ORIFN,CDL,I,ILST S I=0
 S ILST=0 F  S ILST=$O(LST(ILST)) Q:'ILST  D
 . S X=LST(ILST)
 . S ORIFN=$P(X,U),CDL=$P(X,U,3),I=I+1
 . S ORCHECK(+ORIFN,CDL,I)=$P(X,U,2,4)
 Q