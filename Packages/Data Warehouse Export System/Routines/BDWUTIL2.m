BDWUTIL2 ; IHS/CMI/LAB - Data Warehouse Utilities ;
 ;;1.0;IHS DATA WAREHOUSE;**4**;JAN 23, 2006;Build 24
 ;
 ;
 ;
PRB(RETVAL,BDWP) ;EP
 N PRB,DX,DXS,DXI,DXD,DXT,DTA,DLM,PN,FAC,POVN,SC,ST,DTDL,DTO,CNT
 K RETVAL
 I '$D(^AUPNPROB("AC",BDWP)) Q
 S CNT=0
 N PDA,DATA
 S PDA=0 F  S PDA=$O(^AUPNPROB("AC",BDWP,PDA)) Q:'PDA  D
 . S CNT=CNT+1
 . S DATA=$G(^AUPNPROB(PDA,0))
 . S DXI=$P(DATA,U)
 . I $D(^ICDS(0)) S DXS=$$ICDDX^ICDEX(DXI)
 . I '$D(^ICDS(0)) S DXS=$$ICDDX^ICDCODE(DXI)
 . S DX=$TR($P(DXS,U,2),"|","")
 . S DXD=$TR($P(DXS,U,4),"|","")
 . S DXT=$P(DXS,U,20)
 . S DXT=$S(DXT=30:"I10",1:"I9")
 . S DTA=$$FMTHL7^XLFDT($E($P(DATA,U,8),1,7))
 . S DLM=$$FMTHL7^XLFDT($E($P(DATA,U,3),1,7))
 . S PN=$P(DATA,U,7)
 . S FAC=$$GET1^DIQ(9999999.06,$P(DATA,U,6),.12)
 . S POVN=$$GET1^DIQ(9000011,PDA,.05)
 . S POVN=$TR(POVN,"|","")
 . S SC=$P(DATA,U,12)
 . S ST=$$GET1^DIQ(9000011,PDA,.12)
 . S DTDL=$$FMTHL7^XLFDT($E($P($G(^AUPNPROB(PDA,2)),U,2),1,7))
 . S DTO=$$FMTHL7^XLFDT($E($P(DATA,U,13),1,7))
 . S RETVAL(CNT)=DX_U_DXD_U_DXT_U_DTA_U_DLM_U_PN_U_FAC_U_POVN_U_SC_U_ST_U_DTDL_U_DTO
 Q
 ;
REF(RETVAL,BDWP) ;EP
 N REF,RFT,RFI,DTR,RFRC,RFRT,DLM,FL
 K RETVAL
 I '$D(^AUPNPREF("AC",BDWP)) Q
 S CNT=0
 N PDA,DATA
 S PDA=0 F  S PDA=$O(^AUPNPREF("AC",BDWP,PDA)) Q:'PDA  D
 . S CNT=CNT+1
 . S DATA=$G(^AUPNPREF(PDA,0))
 . S RFT=$$GET1^DIQ(9000022,PDA,.01)
 . S FL=$P(DATA,U,5)
 . S RFI=$P(DATA,U,6)
 . S RFI=$$GET1^DIQ(FL,RFI,.01)
 . S DTR=$$FMTHL7^XLFDT($P(DATA,U,3))
 . S RFRC=$P(DATA,U,7)
 . S RFRT=$$GET1^DIQ(9000022,PDA,.07)
 . S DLM=$$FMTHL7^XLFDT($E($P(DATA,U,8),1,7))
 . S RETVAL(CNT)=RFT_U_RFI_U_DTR_U_RFRC_U_RFRT_U_DLM
 Q
 ;
IMC(RETVAL,BDWP) ;EP
 N VAC,RC,DTN,VACI
 K RETVAL
 I '$D(^BIPC("B",BDWP)) Q
 S CNT=0
 N PDA,DATA
 S PDA=0 F  S PDA=$O(^BIPC("B",BDWP,PDA)) Q:'PDA  D
 . S CNT=CNT+1
 . S VACI=$$GET1^DIQ(9002084.11,PDA,.02,"I")
 . S VAC=$$GET1^DIQ(9999999.14,VACI,.03)
 . S RC=$$GET1^DIQ(9002084.11,PDA,.03)
 . S DTN=$$FMTHL7^XLFDT($$GET1^DIQ(9002084.11,PDA,.04,"I"))
 . S RETVAL(CNT)=VAC_U_RC_U_DTN
 Q
 ;
WH(RETVAL,BDWP) ;EP
 N WHP,RS,PDT
 K RETVAL
 I '$D(^BWPCD("C",BDWP)) Q
 S CNT=0
 N PDA,DATA
 S PDA=0 F  S PDA=$O(^BWPCD("C",BDWP,PDA)) Q:'PDA  D
 . S CNT=CNT+1
 . S WHP=$$GET1^DIQ(9002086.1,PDA,.04)
 . S RS=$$GET1^DIQ(9002086.1,PDA,.05)
 . S PDT=$$FMTHL7^XLFDT($$GET1^DIQ(9002086.1,PDA,.12,"I"))
 . S RETVAL(CNT)=WHP_U_RS_U_PDT
 Q
 ;