AUPNMAP ; IHS/OIT/FBD - MAPPER API ;
 ;;2.0;IHS PCC SUITE;**10**;MAY 14, 2009;Build 88
 ;
WHSEEN ;PEP - get where seen called from  mod^aupnvsit
 NEW AUPNDA,AUPNFILE,AUPNTF
 S AUPNDA=AUPNVSIT
 S AUPNFILE=9000010
 S AUPNTF=9999999.26
 D EN^XBNEW("WHSEEN1^AUPNMAP","AUPNDA;AUPNFILE;AUPNTF")
 Q
WHSEEN1 ;
 S AUPNX=0 F  S AUPNX=$O(^AUPNVSIT(AUPNDA,26,AUPNX)) Q:AUPNX'=+AUPNX  D
 .S DA(1)=AUPNDA,DA=AUPNX,DIK="^AUPNVSIT("_AUPNDA_",26," D ^DIK
 S (V1,V2,V3,V4,V5,V6)=""
 S LK=$$GET1^DIQ(9000010,AUPNDA,.07)
 S V1=$$CLINIC^APCLV(AUPNDA,"C")
 S V2=$$ADMTYPE^APCLV(AUPNDA,"C")
 S V3=$$ADMUB^APCLV(AUPNDA,"C")
 S V4=$$ADMSOURC^APCLV(AUPNDA)
 S V5=""
 S V6=AUPNDA
 ;CALL CQM MAP API TO GET CODES
 I $T(MM^BCQMAPI)="" Q  ; no mapper so don't bother
 S X=$$MM^BCQMAPI(AUPNTF,LK,"E",V1,V2,V3,V4,V5,V6,$$VD^APCLV(AUPNDA),"CODES")
 I 'X Q  ;NO CODES to stuff
 ;now set snomed and loinc multiples in entry DA
 S AUPNX=0 F  S AUPNX=$O(CODES(AUPNX)) Q:AUPNX=""  D
 .S AUPNT=$O(CODES(AUPNX,""))  ;this will be the type of code
 .I AUPNT="SNOMED" D FILEV(9000010,AUPNDA,26,CODES(AUPNX,AUPNT))
 Q
FTF ;PEP - get face to face snomeds and store into 28 multiple of VISIT file
 ;called from record xref of VISIT and V PROVIDER
 ;currently uses service category, clinic, primary provider discipline
 NEW AUPNDA,AUPNFILE,AUPNTF
 S AUPNDA=AUPNVSIT
 S AUPNFILE=9000010
 S AUPNTF=9999999.26
 D EN^XBNEW("FTF1^AUPNMAP","AUPNDA;AUPNFILE;AUPNTF")
 Q
FTF1 ;
 S AUPNX=0 F  S AUPNX=$O(^AUPNVSIT(AUPNDA,28,AUPNX)) Q:AUPNX'=+AUPNX  D
 .S DA(1)=AUPNDA,DA=AUPNX,DIK="^AUPNVSIT("_AUPNDA_",28," D ^DIK
 S (V1,V2,V3,V4,V5,V6)=""
 S LK=$$GET1^DIQ(9000010,AUPNDA,.07)
 S V1=$$CLINIC^APCLV(AUPNDA,"C")
 S V2=$$PRIMPROV^APCLV(AUPNDA,"D")
 S V3=$S($D(^AUPNVNOT("AD",AUPNDA)):1,1:0)
 S V5="FACETOFACE"
 ;CALL CQM MAP API TO GET CODES
 I $T(MM^BCQMAPI)="" Q  ; no mapper so don't bother
 S X=$$MM^BCQMAPI(AUPNTF,LK,"E",V1,V2,V3,V4,V5,V6,$$VD^APCLV(AUPNDA),"CODES")
 I 'X Q  ;NO CODES to stuff
 ;now set snomed and loinc multiples in entry DA
 S AUPNX=0 F  S AUPNX=$O(CODES(AUPNX)) Q:AUPNX=""  D
 .S AUPNT=$O(CODES(AUPNX,""))  ;this will be the type of code
 .I AUPNT="SNOMED" D FILEV(9000010,AUPNDA,28,CODES(AUPNX,AUPNT))
 Q
SETPRIM ;EP - SET PRIM SNOMED CODE
 ;set primary snomed POV for this visit
 I '$O(^AUPNVPOV("AD",AUPNVSIT,0)) Q  ;no povs yet so don't bother
 ;START CLEAN, WIPE OUT ALL 1103 field values in V POV for this visit
 NEW AUPNX,AUPNDA,DIE,DA,DR,AUPNS
 S AUPNS=""
 I $T(PRIMPOV^BCQMAPI)]"" S AUPNS=$$PRIMPOV^BCQMAPI()  ;
 I AUPNS="" S AUPNS=63161005
 S AUPNDA=0 F  S AUPNDA=$O(^AUPNVPOV("AD",AUPNVSIT,AUPNDA)) Q:AUPNDA'=+AUPNDA  D
 .S DA=AUPNDA,DIE="^AUPNVPOV(",DR="1103///@" D ^DIE K DIE,DA,DR
 ;find primary one based on any marked as "P", if none are marked with a "P" set 1st one
 S AUPNX=0  ;no P's
 S AUPNDA=0 F  S AUPNDA=$O(^AUPNVPOV("AD",AUPNVSIT,AUPNDA)) Q:AUPNDA'=+AUPNDA  D
 .I $P($G(^AUPNVPOV(AUPNDA,0)),U,12)="P" S AUPNX=1,DA=AUPNDA,DIE="^AUPNVPOV(",DR="1103///"_AUPNS D ^DIE K DIE,DA,DR
 I AUPNX Q  ;found one marked with a "P"
 ;none marked P so take first one in line
 S AUPNDA=$O(^AUPNVPOV("AD",AUPNVSIT,0))
 I 'AUPNDA Q  ;huh?
 S DA=AUPNDA,DIE="^AUPNVPOV(",DR="1103///"_AUPNS D ^DIE K DIE,DA,DR
 Q
REFMAP ;EP - CALLED FROM DD
 NEW AUPNDA,AUPNFILE,AUPNTF
 ;CHECK TO SEE IF IN EHR, IF SO QUIT
 I $T(GETVAR^CIAVMEVT)="" G REFMAPN     ;EHR IS NOT EVEN INSTALLED
 NEW X
 S X=$$GETVAR^CIAVMEVT("PATIENT.CO.PATIENTNAME",,"CONTEXT.PATIENT")
 I X]"" Q  ;in ehr so don't do this
REFMAPN ;
 S AUPNDA=DA
 S AUPNFILE=9000022
 D EN^XBNEW("REFMAP1^AUPNMAP","AUPNDA;AUPNFILE;AUPNTF")
 Q
REFMAP1 ;
 S V=$P(^AUPNPREF(AUPNDA,0),U,7)
 Q:V=""
 S V=$O(^AUTTREFR("AM",V,0))
 Q:V=""
 S DIE="^AUPNPREF(",DR="1.01///"_$P($G(^AUTTREFR(V,0)),U,1),DA=AUPNDA D ^DIE
 Q
EXWIPE ;EP - CALLED FROM XREF
 NEW AUPNDA,AUPNFILE,AUPNTF
 S AUPNDA=DA
 S AUPNFILE=9000010.13
 S AUPNTF=9999999.15
 D EN^XBNEW("EXWIPE1^AUPNMAP","AUPNDA;AUPNFILE;AUPNTF")
 Q
EXWIPE1 ;EP CALLED FROM XBNEW
 D DELGEN
 ;IF THIS IS A NEWBORN HEARING DO ALL V FILES ON THIS VISIT THAT ARE 38 OR 39
 NEW AUPNX,AUPNV,AUPNZ,AUPND
 S AUPNV=$P(^AUPNVXAM(AUPNDA,0),U,3)
 I 'AUPNV Q
 S AUPNX=0
 S AUPND(AUPNDA)=""
 F  S AUPNX=$O(^AUPNVXAM("AD",AUPNV,AUPNX)) Q:AUPNX'=+AUPNX  D
 .Q:$D(AUPND(AUPNX))  ;already did this one
 .S AUPND(AUPNX)=""
 .S AUPNZ=$$GET1^DIQ(9000010.13,AUPNX,.01,"I")
 .Q:'AUPNZ
 .S AUPNZ=$$GET1^DIQ(9999999.15,AUPNZ,.02)
 .I AUPNZ'=38,AUPNZ'=39 Q
 .S AUPNDA=AUPNX
 .D EN^XBNEW("EXAM1^AUPNMAP","AUPNDA;AUPNFILE;AUPNTF")
 Q
EXAM ;EP - CALLED FROM XREF
 NEW AUPNDA,AUPNFILE,AUPNTF
 S AUPNDA=DA
 S AUPNFILE=9000010.13
 S AUPNTF=9999999.15
 D EN^XBNEW("EXAM1^AUPNMAP","AUPNDA;AUPNFILE;AUPNTF")
 ;IF THIS IS A NEWBORN HEARING DO ALL V FILES ON THIS VISIT THAT ARE 38 OR 39
 NEW AUPNX,AUPNV,AUPNZ,AUPND
 S AUPNV=$P(^AUPNVXAM(AUPNDA,0),U,3)
 I 'AUPNV Q
 S AUPNX=0
 S AUPND(AUPNDA)=""
 F  S AUPNX=$O(^AUPNVXAM("AD",AUPNV,AUPNX)) Q:AUPNX'=+AUPNX  D
 .Q:$D(AUPND(AUPNX))  ;already did this one
 .S AUPND(AUPNX)=""
 .S AUPNZ=$$GET1^DIQ(9000010.13,AUPNX,.01,"I")
 .Q:'AUPNZ
 .S AUPNZ=$$GET1^DIQ(9999999.15,AUPNZ,.02)
 .I AUPNZ'=38,AUPNZ'=39 Q
 .S AUPNDA=AUPNX
 .D EN^XBNEW("EXAM1^AUPNMAP","AUPNDA;AUPNFILE;AUPNTF")
 Q
EXAM1 ;
 D DELGEN
 S (V1,V2,V3,V4,V5,V6)=""
 S LK=$$GET1^DIQ(AUPNFILE,AUPNDA,.01)
 S V1=$$GET1^DIQ(AUPNFILE,AUPNDA,.04,"I")
 S V2=$$GET1^DIQ(AUPNFILE,AUPNDA,.03,"I")
 D MAP
 Q
RAD ;EP - CALLED FROM XREF
 NEW AUPNDA,AUPNFILE,AUPNTF
 S AUPNDA=DA
 S AUPNFILE=9000010.22
 S AUPNTF=81
 D EN^XBNEW("RAD1^AUPNMAP","AUPNDA;AUPNFILE;AUPNTF")
 Q
RAD1 ;
 D DELGEN
 S (V1,V2,V3,V4,V5,V6)=""
 S LK=$$GET1^DIQ(AUPNFILE,AUPNDA,.019)
 D MAP
 Q
UPDREV ;EP - CALLED FROM XREF
 NEW AUPNDA,AUPNFILE,AUPNTF
 S AUPNDA=DA
 S AUPNFILE=9000010.54
 S AUPNTF=9999999.101
 D EN^XBNEW("UPDREV1^AUPNMAP","AUPNDA;AUPNFILE;AUPNTF")
 Q
UPDREV1 ;
 D DELGEN
 S (V1,V2,V3,V4,V5,V6)=""
 S LK=$$GET1^DIQ(AUPNFILE,AUPNDA,.01)
 D MAP
 Q
IMM ;EP - CALLED FROM XREF
 NEW AUPNDA,AUPNFILE,AUPNTF
 S AUPNDA=DA
 S AUPNFILE=9000010.11
 S AUPNTF=9999999.14
 D EN^XBNEW("IMM1^AUPNMAP","AUPNDA;AUPNFILE;AUPNTF")
 Q
IMM1 ;
 D DELGEN
 S (V1,V2,V3,V4,V5,V6)=""
 S LK=$$GET1^DIQ(AUPNFILE,AUPNDA,.01)
 S V=$$GET1^DIQ(AUPNFILE,AUPNDA,.03,"I")
 S V1=$$GET1^DIQ(9000010,V,.07,"I")
 D MAP
 Q
HF ;EP - CALLED FROM XREF
 NEW AUPNDA,AUPNFILE,AUPNTF
 S AUPNDA=DA
 S AUPNFILE=9000010.23
 S AUPNTF=9999999.64
 D EN^XBNEW("HF1^AUPNMAP","AUPNDA;AUPNFILE;AUPNTF")
 Q
HF1 ;
 D DELGEN
 S (V1,V2,V3,V4,V5,V6)=""
 S LK=$$GET1^DIQ(AUPNFILE,AUPNDA,.01)
 ;S V1=$$GET1^DIQ(AUPNFILE,AUPNDA,.04,"I")
 D MAP
 Q
EDUC ;EP - CALLED FROM XREF
 NEW AUPNDA,AUPNFILE,AUPNTF
 S AUPNDA=DA
 S AUPNFILE=9000010.16
 S AUPNTF=9999999.09
 D EN^XBNEW("EDUC1^AUPNMAP","AUPNDA;AUPNFILE;AUPNTF")
 Q
EDUC1 ;
 D DELGEN
 S (V1,V2,V3,V4,V5,V6)=""
 S LK=$$GET1^DIQ(AUPNFILE,AUPNDA,.01,"I")
 S LK=$$GET1^DIQ(9999999.09,LK,.01)
 ;S V1=$$GET1^DIQ(AUPNFILE,AUPNDA,.04,"I")
 D MAP
 Q
MEAS ;PEP - CALLED FROM XREF TO MAP MEAS TO SNOMED/LOINC
 NEW AUPNDA,AUPNFILE,AUPNTF
 S AUPNDA=DA
 S AUPNFILE=9000010.01
 S AUPNTF=9999999.07
 D EN^XBNEW("MEAS1^AUPNMAP","AUPNDA;AUPNFILE;AUPNTF")
 Q
MEASQ ;PEP - CALLED FROM XREF
 NEW AUPNDA,AUPNFILE,AUPNTF
 S AUPNDA=DA(1)
 S AUPNFILE=9000010.01
 S AUPNTF=9999999.07
 D EN^XBNEW("MEAS1^AUPNMAP","AUPNDA;AUPNFILE;AUPNTF")
 Q
DELGEN ;
 NEW G,N,AUPNX,AUPNG
 F N=26,27 D
 .S G=^DIC(AUPNFILE,0,"GL")
 .S DIK=G_AUPNDA_","_N_","
 .S AUPNG=DIK_"0)"
 .S AUPNX=0 F  S AUPNX=$O(@AUPNG) Q:AUPNX'=+AUPNX  D
 ..S DA(1)=AUPNDA,DA=AUPNX D ^DIK K DA
 Q
MEAS1 ;
 ;take entry and try to auto map
 ;measurements needs .01, .04 and qualifiers
 ;first wipe out existing snomeds and loincs so if this is an edit or delete they go away
 D DELGEN
 ;I $$GET1^DIQ(AUPNFILE,AUPNDA,2,"I") Q  ;ENTERED IN ERROR DON'T FILE SNOMED OR LOINC
 S (V1,V2,V3,V4,V5,V6)=""
 S LK=$$GET1^DIQ(AUPNFILE,AUPNDA,.01)
 I LK'="VU" S V1=$$GET1^DIQ(AUPNFILE,AUPNDA,.04)
 I LK="VU" S V1=$$GET1^DIQ(AUPNFILE,AUPNDA,.04,"I")
 S V3=$$GET1^DIQ(AUPNFILE,AUPNDA,.03,"I")
 NEW AUPNY
 S AUPNY=0 F  S AUPNY=$O(^AUPNVMSR(AUPNDA,5,AUPNY)) Q:AUPNY'=+AUPNY  D
 .S V2=$$GET1^DIQ(9000010.015,AUPNY_","_AUPNDA,.01)_";"
 D MAP
 Q
MAP ;
 ;CALL CQM MAP API TO GET CODES
 I $T(MM^BCQMAPI)="" Q  ; no mapper so don't bother
 S X=$$MM^BCQMAPI(AUPNTF,LK,"E",V1,V2,V3,V4,V5,V6,$$VD^APCLV($$VALI^XBDIQ1(AUPNFILE,AUPNDA,.03)),"CODES")
 I 'X Q  ;NO CODES to stuff
 ;now set snomed and loinc multiples in entry DA
 S AUPNX=0 F  S AUPNX=$O(CODES(AUPNX)) Q:AUPNX=""  D
 .S AUPNT=$O(CODES(AUPNX,""))  ;this will be the type of code
 .I AUPNT="SNOMED" D FILEV(AUPNFILE,AUPNDA,26,CODES(AUPNX,AUPNT))
 .I AUPNT="LOINC" D FILEV(AUPNFILE,AUPNDA,27,CODES(AUPNX,AUPNT))
 Q
FILEV(F,AUPNDA,N,X) ;stuff snomed codes into multiple field
 NEW G,DIC
 S G=^DIC(AUPNFILE,0,"GL")
 S DIC=G_AUPNDA_","_N_","
 S DIC(0)="L"
 S DA(1)=AUPNDA
 D FILE^DICN
 D ^XBFMK
 ;
 Q
DISCH ;EP
 NEW AUPNDA
 S AUPNDA=DA
 D EN^XBNEW("DISCH1^AUPNMAP","AUPNDA")
 Q
DISCH1 ;
 ;take entry and try to auto map
 ;6107 VALUE
 ;first wipe out existing snomeds and loincs so if this is an edit or delete they go away
 S DA=AUPNDA
 S AUPNFILE=9000010.02
 S AUPNTF=99999.04
 S (V1,V2,V3,V4,V5,V6)=""
 S LK=$$GET1^DIQ(AUPNFILE,AUPNDA,6103)
 I LK="" Q  ;no code to map
 ;CALL CQM MAP API TO GET CODES
 I $T(MM^BCQMAPI)="" Q  ; no mapper so don't bother
 S X=$$MM^BCQMAPI(AUPNTF,LK,"E",V1,V2,V3,V4,V5,V6,$$VD^APCLV($P(^AUPNVINP(AUPNDA,0),U,3)),"CODES")
 I 'X Q  ;NO CODES to stuff
 ;now set snomed and loinc multiples in entry DA
 S AUPNX=0 F  S AUPNX=$O(CODES(AUPNX)) Q:AUPNX=""  D
 .S AUPNT=$O(CODES(AUPNX,""))  ;this will be the type of code
 .I AUPNT="SNOMED" D FILEDISC(AUPNFILE,AUPNDA,CODES(AUPNX,AUPNT))
 .;I AUPNT="LOINC" D FILEDISC(AUPNFILE,AUPNDA,27,CODES(AUPNX,AUPNT))
 Q
FILEDISC(F,AUPNDA,X) ;stuff snomed codes into multiple field
 NEW DIE,DR,DA
 S DIE=AUPNFILE
 S DA=AUPNDA
 S DR="6107///"_X
 D ^DIE
 Q
IF ;PEP - CALLED FROM XREF
 NEW AUPNDA,AUPNFILE,AUPNTF
 S AUPNDA=DA
 S AUPNFILE=9000010.44
 S AUPNTF=9001202
 D EN^XBNEW("IF1^AUPNMAP","AUPNDA;AUPNFILE;AUPNTF")
 Q
IFQ ;PEP - CALLED FROM XREF
 NEW AUPNDA,AUPNFILE,AUPNTF
 S AUPNDA=DA(1)
 S AUPNFILE=9000010.44
 S AUPNTF=9001202
 D EN^XBNEW("IF1^AUPNMAP","AUPNDA;AUPNFILE;AUPNTF")
 Q
IF1 ;
 ;take entry and try to auto map
 ;IFurements needs .01, .04 and qualifiers
 ;first wipe out existing snomeds and loincs so if this is an edit or delete they go away
 D DELGEN
 S (V1,V2,V3,V4,V5,V6)=""
 S LK=$$GET1^DIQ(AUPNFILE,AUPNDA,.01,"I")
 D MAP
 S AUPNTF=9001203
 S AUPNY=0 F  S AUPNY=$O(^AUPNVIF(AUPNDA,13,AUPNY)) Q:AUPNY'=+AUPNY  D
 .S LK=$$GET1^DIQ(9000010.4413,AUPNY_","_AUPNDA,.01,"I")
 .D MAP
 Q
SCEDIT ;
 NEW AUPNVIEN
 S AUPNVIEN=DA
 D EN^XBNEW("SCEDIT1^AUPNMAP","AUPNVIEN")
 Q
SCEDIT1 ;
 ;v immunizations may be affected by this
 S AUPNDA=0 F  S AUPNDA=$O(^AUPNVIMM("AD",AUPNVIEN,AUPNDA)) Q:AUPNDA'=+AUPNDA  S DA=AUPNDA D IMM
 Q
HANDSM ;EP - CALLED FROM XREF
 NEW AUPNDA,AUPNFILE,AUPNTF
 S AUPNDA=DA
 S AUPNFILE=9000010.63
 D EN^XBNEW("HANDSM1^AUPNMAP","AUPNDA;AUPNFILE;AUPNTF")
 Q
HANDSM1 ;
 S AUPNX=0 F  S AUPNX=$O(^AUPNVSTR(AUPNDA,2,AUPNX)) Q:AUPNX'=+AUPNX  D
 .S DA(1)=AUPNDA,DA=AUPNX,DIK="^AUPNVSTR("_AUPNDA_",2," D ^DIK
 ;CALL CQM MAP API TO GET CODES
 I $T(HANDED^BCQMAPI)="" Q  ; no mapper so don't bother
 S V=$$GET1^DIQ(9000010.63,AUPNDA,.04,"I")
 S X=$$HANDED^BCQMAPI(V,$$VD^APCLV(AUPNDA),"CODES")
 I 'X Q  ;NO CODES to stuff
 ;now set snomed and loinc multiples in entry DA
 S AUPNX=0 F  S AUPNX=$O(CODES(AUPNX)) Q:AUPNX=""  D
 .S AUPNT=$O(CODES(AUPNX,""))  ;this will be the type of code
 .I AUPNT="SNOMED" D FILEV(9000010.63,AUPNDA,2,CODES(AUPNX,AUPNT))
 Q