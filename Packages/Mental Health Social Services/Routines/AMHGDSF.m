AMHGDSF ; IHS/CMI/MAW - AMHG Suicide Form Data Entry 1/7/2009 2:59:37 PM ;
 ;;4.0;IHS BEHAVIORAL HEALTH;**1**;JUN 18, 2010;Build 8
 ;
 ;
 ;this routine will handle data on the Suicide Form Data Entry Form (frmSuicideFormDataEntry)
 ;
DEBUG(RETVAL,AMHSTR) ;-- debug entry point
 D DEBUG^%Serenji("EP^AMHGD(RETVAL,.AMHSTR)")
 Q
 ;
SF(RETVAL,AMHSTR) ;-- get suicide form info
 S X="MERR^AMHGU",@^%ZOSF("TRAP") ; m error trap
 N AMHI,P,R,AMHIEN
 S P="|",R="~"
 S RETVAL="^AMHTMP("_$J_")"
 S AMHI=0
 K ^AMHTMP($J)
 S AMHIEN=$P(AMHSTR,P)
 S @RETVAL@(AMHI)="T00010BMXIEN^T00030LocalCaseNumber^T00050Provider^T00030DateofAct^T00050CommunityWhereOccurred^T00010RelationshipStatus^T00010EmploymentStatus^T00010Education^T00010HighestGrade^T00010SuicidalBehavior^T00010PreviousAttempts"
 S @RETVAL@(AMHI)=@RETVAL@(AMHI)_"^T00010Lethality^T00010LocationofAct^T00080LocationOther^T00050Disposition^T00080DispositionText"_$C(30)
 N AMHLC,AMHPRVI,AMHPRV,AMHPRVS,AMHDOA,AMHCWI,AMHCW,AMHCSW,AMHRS,AMHES,AMHEDU,AMHHGC,AMHSB,AMHPA,AMHLET,AMHLOA,AMHLOAO,AMHDSPI,AMHDSP,AMHDSPS,AMHDSPT,AMHCWS
 S AMHLC=$$GET1^DIQ(9002011.65,AMHIEN,.02)
 S AMHPRVI=$$GET1^DIQ(9002011.65,AMHIEN,.03,"I")
 S AMHPRV=$$GET1^DIQ(9002011.65,AMHIEN,.03)
 S AMHPRVS=$S(AMHPRVI:AMHPRVI_R_AMHPRV,1:"")
 S AMHDOA=$$GET1^DIQ(9002011.65,AMHIEN,.06,"I")
 S AMHCWI=$$GET1^DIQ(9002011.65,AMHIEN,.07,"I")
 S AMHCW=$$GET1^DIQ(9002011.65,AMHIEN,.07)
 S AMHCWS=$S(AMHCWI:AMHCWI_R_AMHCW,1:"")
 S AMHRS=$$GET1^DIQ(9002011.65,AMHIEN,.08)
 S AMHES=$$GET1^DIQ(9002011.65,AMHIEN,.05)
 S AMHEDU=$$GET1^DIQ(9002011.65,AMHIEN,.11)
 S AMHHGC=$$GET1^DIQ(9002011.65,AMHIEN,.12)
 S AMHSB=$$GET1^DIQ(9002011.65,AMHIEN,.13)
 S AMHPA=$$GET1^DIQ(9002011.65,AMHIEN,.14)
 S AMHLET=$$GET1^DIQ(9002011.65,AMHIEN,.24)
 S AMHLOA=$$GET1^DIQ(9002011.65,AMHIEN,.15)
 S AMHLOAO=$$GET1^DIQ(9002011.65,AMHIEN,1401)
 S AMHDSPI=$$GET1^DIQ(9002011.65,AMHIEN,.25,"I")
 S AMHDSP=$$GET1^DIQ(9002011.65,AMHIEN,.25)
 S AMHDSPS=$S(AMHDSPI:AMHDSPI_R_AMHDSP,1:"")
 S AMHDSPT=$$GET1^DIQ(9002011.65,AMHIEN,1402)
 S AMHI=AMHI+1
 S @RETVAL@(AMHI)=AMHIEN_U_AMHLC_U_AMHPRVS_U_AMHDOA_U_AMHCWS_U_AMHRS_U_AMHES_U_AMHEDU_U_AMHHGC_U_AMHSB_U_AMHPA_U_AMHLET_U_AMHLOA_U_AMHLOAO_U_AMHDSPS_U_AMHDSPT_$C(30)
 S @RETVAL@(AMHI+1)=$C(31)
 Q
 ;
METH(RETVAL,AMHSTR) ;-- return the method
 S X="MERR^AMHGU",@^%ZOSF("TRAP") ; m error trap
 N AMHI,P,R,AMHIEN
 S P="|",R="~"
 S RETVAL="^AMHTMP("_$J_")"
 S AMHI=0
 K ^AMHTMP($J)
 S AMHIEN=$P(AMHSTR,P)
 S @RETVAL@(AMHI)="T00010BMXIEN^T00010Method^T00050MethodIfOther^T00050DrugIfOverdose^T00050DrugIfOther"_$C(30)
 N AMHDA,AMHOEN
 S AMHDA=0 F  S AMHDA=$O(^AMHPSUIC(AMHIEN,11,AMHDA)) Q:'AMHDA  D
 . N AMHDATA,AMHMET,AMHOTH
 . S AMHDATA=$G(^AMHPSUIC(AMHIEN,11,AMHDA,0))
 . S AMHMET=$P(AMHDATA,U)
 . S AMHOTH=$P(AMHDATA,U,2)
 .I AMHMET=7 D
 .. I '$D(^AMHPSUIC(AMHIEN,11,AMHDA,11)) D  Q
 ... S AMHI=AMHI+1
 ... S @RETVAL@(AMHI)=AMHIEN_U_AMHMET_U_AMHOTH_U_$G(AMHOD)_U_$G(AMHODO)_$C(30)
 .. S AMHOEN=0 F  S AMHOEN=$O(^AMHPSUIC(AMHIEN,11,AMHDA,11,AMHOEN)) Q:'AMHOEN  D
 ... N AMHOD,AMHODI,AMHODS,AMHODO
 ... S AMHODI=$P($G(^AMHPSUIC(AMHIEN,11,AMHDA,11,AMHOEN,0)),U)
 ... S AMHOD=$$GET1^DIQ(9002014.7,AMHODI,.01)
 ... S AMHODS=$S(AMHODI:AMHODI_R_AMHOD,1:"")
 ... S AMHODO=$P($G(^AMHPSUIC(AMHIEN,11,AMHDA,11,AMHOEN,0)),U,2)
 ... S AMHI=AMHI+1
 ... S @RETVAL@(AMHI)=AMHIEN_U_AMHMET_U_AMHOTH_U_AMHODS_U_AMHODO_$C(30)
 . I AMHMET'=7 D
 .. K AMHOD,AMHODO
 .. S AMHI=AMHI+1
 .. S @RETVAL@(AMHI)=AMHIEN_U_AMHMET_U_AMHOTH_U_$G(AMHOD)_U_$G(AMHODO)_$C(30)
 S @RETVAL@(AMHI+1)=$C(31)
 Q
 ;
SUB(RETVAL,AMHSTR) ;-- return the substance use
 S X="MERR^AMHGU",@^%ZOSF("TRAP") ; m error trap
 N AMHI,P,R,AMHIEN
 S P="|",R="~"
 S RETVAL="^AMHTMP("_$J_")"
 S AMHI=0
 K ^AMHTMP($J)
 S AMHIEN=$P(AMHSTR,P)
 S @RETVAL@(AMHI)="T00010BMXIEN^T00010Substance^T00050Drug^T00050DrugIfOther"_$C(30)
 N AMHDA,AMHOEN,AMHSUB
 S AMHSUB=$$GET1^DIQ(9002011.65,AMHIEN,.26,"I")
 I AMHSUB=2 D
 . I '$D(^AMHPSUIC(AMHIEN,15)) D  Q
 .. S AMHI=AMHI+1
 .. S @RETVAL@(AMHI)=AMHIEN_U_AMHSUB_U_U_$C(30)
 . S AMHDA=0 F  S AMHDA=$O(^AMHPSUIC(AMHIEN,15,AMHDA)) Q:'AMHDA  D
 .. N AMHDATA,AMHDRG,AMHDRGI,AMHDRGS,AMHOTH
 .. S AMHDATA=$G(^AMHPSUIC(AMHIEN,15,AMHDA,0))
 .. S AMHDRGI=$P(AMHDATA,U)
 .. S AMHOTH=$P(AMHDATA,U,2)
 .. S AMHDRG=$$GET1^DIQ(9002014.71,AMHDRGI,.01)
 .. S AMHDRGS=$S(AMHDRGI:AMHDRGI_R_AMHDRG,1:"")
 .. S AMHI=AMHI+1
 .. S @RETVAL@(AMHI)=AMHIEN_U_AMHSUB_U_AMHDRGS_U_AMHOTH_$C(30)
 I AMHSUB'=2 D
 . S AMHI=AMHI+1
 . S @RETVAL@(AMHI)=AMHIEN_U_AMHSUB_U_U_$C(30)
 S @RETVAL@(AMHI+1)=$C(31)
 Q
 ;
CF(RETVAL,AMHSTR) ;-- get contributing factors
 S X="MERR^AMHGU",@^%ZOSF("TRAP") ; m error trap
 N AMHI,P,R,AMHIEN
 S P="|",R="~"
 S RETVAL="^AMHTMP("_$J_")"
 S AMHI=0
 K ^AMHTMP($J)
 S AMHIEN=$P(AMHSTR,P)
 S @RETVAL@(AMHI)="T00010BMXIEN^T00010ContributingFactor^T00050ContributingFactorIfOther"_$C(30)
 N AMHDA,AMHOEN,AMHSUB
 S AMHDA=0 F  S AMHDA=$O(^AMHPSUIC(AMHIEN,13,AMHDA)) Q:'AMHDA  D
 . N AMHDATA,AMHCF,AMHOTH
 . S AMHDATA=$G(^AMHPSUIC(AMHIEN,13,AMHDA,0))
 . S AMHCF=$P(AMHDATA,U)
 . S AMHOTH=$P(AMHDATA,U,2)
 . S AMHI=AMHI+1
 . S @RETVAL@(AMHI)=AMHIEN_U_AMHCF_U_AMHOTH_$C(30)
 S @RETVAL@(AMHI+1)=$C(31)
 Q
 ;
ORI(RETVAL,AMHSTR) ;-- get other relevant information
 S X="MERR^AMHGU",@^%ZOSF("TRAP") ; m error trap
 N AMHI,P,R,AMHIEN
 S P="|",R="~"
 S RETVAL="^AMHTMP("_$J_")"
 S AMHI=0
 K ^AMHTMP($J)
 S AMHIEN=$P(AMHSTR,P)
 S @RETVAL@(AMHI)="T00010BMXIEN^T00250OtherRelevantInformation"_$C(30)
 N AMHDA,AMHOEN,AMHSUB
 S AMHDA=0 F  S AMHDA=$O(^AMHPSUIC(AMHIEN,41,AMHDA)) Q:'AMHDA  D
 . N AMHDATA
 . S AMHDATA=$G(^AMHPSUIC(AMHIEN,41,AMHDA,0))
 . ;I AMHDATA'[$C(10) S AMHDATA=AMHDATA_$C(10)  ;cmi/maw 06/16/2010 try removing this and see what happens 11/18/2010
 . S AMHI=AMHI+1
 . S @RETVAL@(AMHI)=AMHIEN_U_AMHDATA_$C(30)
 S @RETVAL@(AMHI+1)=$C(31)
 Q
 ;