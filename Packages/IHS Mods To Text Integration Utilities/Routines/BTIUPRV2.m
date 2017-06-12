BTIUPRV2 ; IHS/MSC/JS - Problem/Visit Objects ;25-Mar-2014 17:10;DU
 ;;1.0;TEXT INTEGRATION UTILITIES;**1012**;MAR 20, 2013;Build 45
 ;Obects for visit-related problem entries from V Visit instructions
 ;V treatment/regimen and V referral files
 Q
 ;
VIDT(DFN,TARGET) ; Visit Instructions for current visit
 N ARRAY,PRIEN,IEN,VCNT,CNT,EDATE,SIGN,STAT,NARR,VST,X,SPRIEN,EIE
 I $T(GETVAR^CIAVMEVT)="" S @TARGET@(1,0)="Invalid context variables" Q "~@"_$NA(@TARGET)
 S CNT=0
 S VST=$$GETVAR^CIAVMEVT("ENCOUNTER.ID.ALTERNATEVISITID",,"CONTEXT.ENCOUNTER")
 I VST="" S @TARGET@(1,0)="Invalid visit" Q "~@"_$NA(@TARGET)
 S X="BEHOENCX" X ^%ZOSF("TEST") I $T S VST=+$$VSTR2VIS^BEHOENCX(DFN,VST) I VST<1  S @TARGET@(1,0)="Invalid context variables" Q "~@"_$NA(@TARGET)
 K @TARGET
 S VCNT=0
 S SPRIEN=0
 S IEN="" F  S IEN=$O(^AUPNVVI("AD",VST,IEN)) Q:IEN=""  D
 .S EIE=$$GET1^DIQ(9000010.58,IEN,.06,"I")
 .Q:EIE=1
 .S PRIEN=$$GET1^DIQ(9000010.58,IEN,.01,"I")
 .S EDATE=$$GET1^DIQ(9000010.58,IEN,1201,"I")
 .S EDATE=$$FMTE^XLFDT(EDATE,5)
 .S SIGN=$$GET1^DIQ(9000010.58,IEN,.04,"E")
 .S NARR=$$GET1^DIQ(9000011,PRIEN,.05)
 .I SPRIEN'=PRIEN S SPRIEN=PRIEN D PDATA(IEN)
 .D TEXT
 I VCNT=0 S @TARGET@(1,0)="No visit instructions for this visit"
 Q "~@"_$NA(@TARGET)
 ;
PDATA(PRIEN) ;Do problem data
 S VCNT=VCNT+1
 S @TARGET@(VCNT,0)="Problem: "_NARR
 Q
TEXT ;do the text
 N TXTIEN
 S VCNT=VCNT+1
 S @TARGET@(VCNT,0)="  INSTRUCTIONS:"
 S TXTIEN=0 F  S TXTIEN=$O(^AUPNVVI(IEN,11,TXTIEN)) Q:'+TXTIEN  D
 .S VCNT=VCNT+1
 .S @TARGET@(VCNT,0)="   "_$G(^AUPNVVI(IEN,11,TXTIEN,0))
 S VCNT=VCNT+1
 S @TARGET@(VCNT,0)="  Signed by: "_SIGN
 S VCNT=VCNT+1
 S @TARGET@(VCNT,0)=""
 Q
VTRDT(DFN,TARGET) ; Visit Treatment/Regimens for this visit
 N ARRAY,IEN,VCNT,EDATE,SIGN,STAT,NARR,VST,X,SNO,PRIEN,TXT,X
 I $T(GETVAR^CIAVMEVT)="" S @TARGET@(1,0)="Invalid context variables" Q "~@"_$NA(@TARGET)
 S CNT=0
 S VST=$$GETVAR^CIAVMEVT("ENCOUNTER.ID.ALTERNATEVISITID",,"CONTEXT.ENCOUNTER")
 I VST="" S @TARGET@(1,0)="Invalid visit" Q "~@"_$NA(@TARGET)
 S X="BEHOENCX" X ^%ZOSF("TEST") I $T S VST=+$$VSTR2VIS^BEHOENCX(DFN,VST) I VST<1  S @TARGET@(1,0)="Invalid context variables" Q "~@"_$NA(@TARGET)
 K @TARGET
 S VCNT=0
 S IEN="" F  S IEN=$O(^AUPNVTXR("AD",VST,IEN)) Q:IEN=""  D
 .S PRIEN=$$GET1^DIQ(9000010.61,IEN,.04,"I")
 .S EDATE=$$GET1^DIQ(9000010.61,IEN,1201,"I")
 .S EDATE=$$FMTE^XLFDT(EDATE,5)
 .;S VCNT=VCNT+1
 .;S @TARGET@(VCNT,0)=EDATE
 .S NARR=$$GET1^DIQ(9000011,PRIEN,.05)
 .S VCNT=VCNT+1
 .S @TARGET@(VCNT,0)="Problem: "_NARR
 .N IN,OUT,ARR,X
 .S SNO=$P($G(^AUPNVTXR(IEN,0)),U,1)
 .S IN=SNO_"^^^1",OUT="ARR"
 .S X=$$CNCLKP^BSTSAPI(.OUT,.IN)
 .I X>0 D
 ..S TXT=ARR(1,"PRE","TRM")
 ..S VCNT=VCNT+1
 ..S @TARGET@(VCNT,0)="  "_TXT
 I VCNT=0 S @TARGET@(1,0)="No Treatment/regimen for this visit"
 Q "~@"_$NA(@TARGET)
REFPR(DFN,TARGET) ; V referrals for this visit
 N ARRAY,IEN,VCNT,EDATE,SIGN,STAT,NARR,VST,X,SNO,PRIEN,TXT,X
 I $T(GETVAR^CIAVMEVT)="" S @TARGET@(1,0)="Invalid context variables" Q "~@"_$NA(@TARGET)
 S CNT=0
 S VST=$$GETVAR^CIAVMEVT("ENCOUNTER.ID.ALTERNATEVISITID",,"CONTEXT.ENCOUNTER")
 I VST="" S @TARGET@(1,0)="Invalid visit" Q "~@"_$NA(@TARGET)
 S X="BEHOENCX" X ^%ZOSF("TEST") I $T S VST=+$$VSTR2VIS^BEHOENCX(DFN,VST) I VST<1  S @TARGET@(1,0)="Invalid context variables" Q "~@"_$NA(@TARGET)
 K @TARGET
 S VCNT=0
 S IEN="" F  S IEN=$O(^AUPNVREF("AD",VST,IEN)) Q:IEN=""  D
 .S PRIEN=$$GET1^DIQ(9000010.59,IEN,.01,"I")
 .S EDATE=$$GET1^DIQ(9000010.59,IEN,1201,"I")
 .S EDATE=$$FMTE^XLFDT(EDATE,5)
 .S NARR=$$GET1^DIQ(9000011,PRIEN,.05)
 .S VCNT=VCNT+1
 .S @TARGET@(VCNT,0)="  "_NARR
 .S SNO=$P($G(^AUPNVREF(IEN,0)),U,1)
 .S X=$$CONC^BSTSAPI(SNO_"^^^1")
 .I +X D
 ..S TXT=$P(X,U,4)
 ..S VCNT=VCNT+1
 ..S @TARGET@(VCNT,0)=EDATE_" "_TXT_"("_SNO_")"
 ..S PRV=$$GET1^DIQ(9000010.59,IEN,1202)
 ..I PRV="" S PRV=$$GET1^DIQ(9000010.59,IEN,1204)
 ..S VCNT=VCNT+1
 ..S @TARGET@(VCNT,0)="Provider: "_PRV
 I VCNT=0 S @TARGET@(1,0)="No Referrals for this visit"
 Q "~@"_$NA(@TARGET)
CARE(DFN,TARGET) ;Care plans entered on this visit
 N CNT,VST,X,RET,LOOP,PRIEN,VCNT
 S RET="",VCNT=0
 ;I $T(GETVAR^CIAVMEVT)="" S @TARGET@(1,0)="Invalid context variables" Q "~@"_$NA(@TARGET)
 S CNT=0,LOOP=0
 ;S VST=$$GETVAR^CIAVMEVT("ENCOUNTER.ID.ALTERNATEVISITID",,"CONTEXT.ENCOUNTER")
 ;I VST="" S @TARGET@(1,0)="Invalid visit" Q "~@"_$NA(@TARGET)
 ;S X="BEHOENCX" X ^%ZOSF("TEST") I $T S VST=+$$VSTR2VIS^BEHOENCX(DFN,VST) I VST<1  S @TARGET@(1,0)="Invalid context variables" Q "~@"_$NA(@TARGET)
 K @TARGET
 D GET^BGOPROB(.RET,DFN)
 F  S LOOP=$O(^TMP("BGO",$J,LOOP)) Q:'+LOOP  D
 .I $P($G(^TMP("BGO",$J,LOOP)),U,1)="P" D
 ..S PRIEN=$P($G(^TMP("BGO",$J,LOOP)),U,2)
 ..D FINDCP(PRIEN)
 I VCNT=0 S @TARGET@(1,0)="No Care Plans/Goals found"
 K ^TMP("BGO",$J)
 Q "~@"_$NA(@TARGET)
FINDCP(PRIEN) ;Find a care plan
 N TYPE,VSTDT,INVDT,STAT,CPIEN,SIEN,EDATE,IEN,NODE,PRV,PRVNM,SIGN,NARR,NODE,Z
 S TYPE=""
 S VSTDT=$P($$NOW^XLFDT,".",1)
 F  S TYPE=$O(^AUPNCPL("APT",PRIEN,TYPE)) Q:TYPE=""  D
 .S CPIEN="" F  S CPIEN=$O(^AUPNCPL("APT",PRIEN,TYPE,CPIEN)) Q:CPIEN=""  D
 ..S SIEN=$C(0) S SIEN=$O(^AUPNCPL(CPIEN,11,SIEN),-1)
 ..S STAT=$P($G(^AUPNCPL(CPIEN,11,SIEN,0)),U,1)
 ..Q:STAT'="A"
 ..S EDATE=$P($P($G(^AUPNCPL(CPIEN,11,SIEN,0)),U,3),".",1)
 ..Q:EDATE'=VSTDT
 ..S NODE=$G(^AUPNCPL(CPIEN,0))
 ..S PRV=$$GET1^DIQ(9000092,CPIEN,.03,"I")
 ..S PRVNM=$$GET1^DIQ(9000092,CPIEN,.03)
 ..S SIGN=$$GET1^DIQ(9000092,CPIEN,.08)
 ..Q:SIGN=""&(PRV'=DUZ)
 ..S NARR=$$GET1^DIQ(9000011,PRIEN,.05)
 ..S VCNT=VCNT+1
 ..S @TARGET@(VCNT,0)="Problem: "_NARR
 ..S VCNT=VCNT+1
 ..S Z=$S(TYPE="G":"Goal",1:"Care Plan")
 ..S @TARGET@(VCNT,0)=Z_" Provider: "_PRVNM
 ..S VCNT=VCNT+1
 ..S @TARGET@(VCNT,0)="Signed on: "_SIGN
 ..D TEXT2(TYPE)
 Q
TEXT2(TYPE) ;do the text
 N TXTIEN
 S VCNT=VCNT+1
 S @TARGET@(VCNT,0)=$S(TYPE="G":"  GOAL",1:"   CARE PLAN")
 S TXTIEN=0 F  S TXTIEN=$O(^AUPNCPL(CPIEN,12,TXTIEN)) Q:'+TXTIEN  D
 .S VCNT=VCNT+1
 .S @TARGET@(VCNT,0)="   "_$G(^AUPNCPL(CPIEN,12,TXTIEN,0))
 S VCNT=VCNT+1
 S @TARGET@(VCNT,0)=""
 Q