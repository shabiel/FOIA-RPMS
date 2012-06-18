ACHS278 ;IHS/SET/GTH - X12 278 SETUP ; [ 12/06/2002  10:36 AM ]
 ;;3.1;CONTRACT HEALTH MGMT SYSTEM;**5**;JUN 11, 2001
 ;
 ; IHS/SET/GTH ACHS*3.1*5 12/06/2002 - New routine.
 ;
 ; E.g. (msm) : 
 ;       KILL A S A="" D GEN278^ACHS278(D,T,.A) ZW A
 ;       where:  D = IEN of the Document
 ;               T = IEN of the Transaction:
 ;               ^ACHSF(DUZ(2),"D",D,0)
 ;               ^ACHSF(DUZ(2),"D",D,"T",0)
 ;
GEN278(ACHSDIEN,ACHSTIEN,ACHS) ;PEP - Generate an array for the 278Outbound.
 ; DUZ(2) must exist.
 ; ACHSDIEN = IEN of the Document.
 ; ACHSTIEN = IEN of the Transaction.
 ; ACHSTOS  = Type Of Service:
 ;                   43 = Inpatient
 ;                   57 = Dental
 ;                   64 = Outpatient
 ;
 S ACHSTOS=$E($$GET1^DIQ(9002080.01,ACHSDIEN_","_DUZ(2),3),1,2)
 S DFN=$$GET1^DIQ(9002080.01,ACHSDIEN_","_DUZ(2)_",",13.64,"I")
 ;
 ;TRANSACTION SET HEADER
 ; ST01
 S ACHS("278HFST1")=278
 ; ST02
 S ACHS("278HFST2")="0001"
 ;
 ;BEGINNING OF HIERARCHICAL TRANSACTION
 ; BHT01
 S ACHS("278HFBHT1")="0078"
 ; BHT02
 S ACHS("278HFBHT2")="13"
 ; BHT03
 S ACHS("278HFBHT3")=$TR($$TS_ACHSDIEN,"-")
 ; BHT04
 S ACHS("278HFBHT4")=$E($$TS,1,8)
 ; BHT05
 S ACHS("278HFBHT5")=$E($$TS,9,12)
 ;
 ;2000A UMO LEVEL
 ; HL01
 S ACHS("2782000AHL1")=1
 ; HL02
 ; HL03
 S ACHS("2782000AHL3")=20
 ; HL04
 S ACHS("2782000AHL4")=1
 ;
 ;2010A UMO NAME
 ; NM101
 S ACHS("2782010ANM11")="X3"
 ; NM102
 S ACHS("2782010ANM12")=2
 ; NM103
 ; NM104
 ; NM105
 ; NM106
 ; NM107
 ; NM108
 S ACHS("2782010ANM18")=24
 ; NM109
 S ACHS("2782010ANM19")=$$VNDR(ACHSDIEN)
 ;
 ;2000B REQUESTER LEVEL
 ; HL01
 S ACHS("2782000BHL1")=2
 ; HL02
 S ACHS("2782000BHL2")=1
 ; HL03
 S ACHS("2782000BHL3")=21
 ; HL04
 S ACHS("2782000BHL4")=1
 ;
 ;2010B REQUESTER NAME
 ; NM101
 S ACHS("2782010BNM11")="FA"
 ; NM102
 S ACHS("2782010BNM12")="2"
 ; NM103
 S ACHS("2782010BNM13")=$$LOC^XBFUNC
 ; NM104
 ; NM105
 ; NM106
 ; NM107
 ; NM108
 S ACHS("2782010BNM18")="24"
 ; NM109
 S ACHS("2782010BNM19")=$$GET1^DIQ(9999999.06,DUZ(2),.21)
 ;2010B REQUESTER SUPPLEMENTAL ID
 ; REF01
 S ACHS("2782010BREF1")="1J"
 ; REF02
 S ACHS("2782010BREF2")=$$GET1^DIQ(9999999.06,DUZ(2),.0799)
 ;2010B REQUESTER ADDRESS
 ; N301
 S ACHS("2782010BN31")=$$GET1^DIQ(9002080,DUZ(2)_",0",1)
 ; N302 n/a
 ;2010B REQUESTER CITY/STATE/ZIP
 ; N401
 S ACHS("2782010BN41")=$$GET1^DIQ(9002080,DUZ(2)_",0",2)
 ; N402
 S %=$$GET1^DIQ(9002080,DUZ(2)_",0",3,"I")
 I % S ACHS("2782010BN42")=$$GET1^DIQ(5,%,1)
 ; N403
 S ACHS("2782010BN43")=$$GET1^DIQ(9002080,DUZ(2)_",0",4)
 ; N404 n/a
 ;2010B REQUESTER CONTACT INFO
 ; PER01
 S ACHS("2782010BPER1")="IC"
 ; PER02
 S ACHS("2782010BPER2")=""
 S %=$S(ACHSTOS=43:50,ACHSTOS=57:51,ACHSTOS=64:52,1:0)
 I % S ACHS("2782010BPER2")=$$GET1^DIQ(9002080,DUZ(2)_",P",%)
 ; PER03
 S ACHS("2782010BPER3")="TE"
 ; PER04
 S ACHS("2782010BPER4")=$$GET1^DIQ(9999999.06,DUZ(2),.13)
 ; PER05n/a
 ; PER06n/a
 ; PER07n/a
 ; PER08n/a
 ;2010B REQUESTER PROVIDER INFO
 ; PRV01
 S ACHS("2782010BPRV1")="OR"
 ; PRV02
 S ACHS("2782010BPRV2")="ZZ" ;maw take this out
 ; PRV03
 S ACHS("2782010BPRV3")="282N00000X"  ;maw take this out placeholder
 S %=$$GET1^DIQ(9002080.01,ACHSDIEN_","_DUZ(2)_",",83.13)
 I % D
 . S ACHS("2782010BPRV2")="ZZ"
 . S ACHS("2782010BPRV3")=$$GET1^DIQ(8932.1,%,6)
 ;2000C SUBSCRIBER LEVEL
 ; HL01
 S ACHS("2782000CHL1")=3
 ; HL02
 S ACHS("2782000CHL2")=2
 ; HL03
 S ACHS("2782000CHL3")=22
 ; HL04
 S ACHS("2782000CHL4")=1
 ;
 ;2000C ACCIDENT DATE
 ; DTP01n/a
 ; DTP02n/a
 ; DTP03n/a
 ;2000C LAST MENSTRUAL PERIOD DATE
 ; DTP01n/a
 ; DTP02n/a
 ; DTP03n/a
 ;2000C ESTIMATED DOB
 ; DTP01n/a
 ; DTP02n/a
 ; DTP03n/a
 ;2000C ONSET OF CURRENT SYMPTOMS OR ILLNESS DATE
 ; DTP01n/a
 ; DTP02n/a
 ; DTP03n/a
 ;2000C SUBSCRIBER DIAGNOSIS
 ; HI01n/a
 ; HI02n/a
 ; HI03n/a
 ; HI04n/a
 ; HI05n/a
 ; HI06n/a
 ; HI07n/a
 ; HI08n/a
 ; HI09n/a
 ; HI10n/a
 ; HI11n/a
 ; HI12n/a
 ;2010C SUBSCRIBER NAME
 ; NM101
 S ACHS("2782010CNM11")="IL"
 ; NM102
 S ACHS("2782010CNM12")="1"
 ; NM103
 S ACHS("2782010CNM13")=$P($$GET1^DIQ(9002080.01,ACHSDIEN_","_DUZ(2)_",",13.64),",",1)
 ; NM104
 S ACHS("2782010CNM14")=$P($$GET1^DIQ(9002080.01,ACHSDIEN_","_DUZ(2)_",",13.64),",",2)
 ; NM105n/a
 ; NM106n/a
 ; NM107n/a
 ; NM108
 S ACHS("2782010CNM18")="MI"
 ; NM109
 S ACHS("2782010CNM19")=$$GET1^DIQ(9002080.01,ACHSDIEN_","_DUZ(2)_",",13.63)
 ;2010C SUBSCRIBER SUPPLEMENTAL INFO
 ; REF01
 S ACHS("2782010CREF1")="SY"
 ; REF02
 S ACHS("2782010CREF2")=$$SSN^AUPNPAT(DFN)
 ;2010C SUBSCRIBER DEMOGRAPHIC INFO
 ; (DMG01?)REF03
 S ACHS("2782010CDMG1")="D8"
 ; (DMG02?)REF04
 S ACHS("2782010CDMG2")=17000000+$$DOB^AUPNPAT(DFN)
 ; (DMG03?)REF05
 S ACHS("2782010CDMG3")=$$SEX^AUPNPAT(DFN)
 ;2000D DEPENDENT LEVEL
 ; HL01
 S ACHS("2782000DHL1")=4
 ; HL02
 S ACHS("2782000DHL2")=3
 ; HL03
 S ACHS("2782000DHL3")=23
 ; HL04
 S ACHS("2782000DHL4")=1
 ;
 ;2000D ACCIDENT DATE
 ; DTP01n/a
 ; DTP02n/a
 ; DTP03n/a
 ;2000D LAST MENSTRUAL PERIOD DATE
 ; DTP01n/a
 ; DTP02n/a
 ; DTP03n/a
 ;2000D ESTIMATED DATE OF BIRTH
 ; DTP01n/a
 ; DTP02n/a
 ; DTP03n/a
 ;2000D ONSET OF CURRENT SYMPTOMS OR ILLNESS DATE
 ; DTP01n/a
 ; DTP02n/a
 ; DTP03n/a
 ;2000D DEPENDENT DIAGNOSIS
 ; HI01n/a
 ; HI02n/a
 ; HI03n/a
 ; HI04n/a
 ; HI05n/a
 ; HI06n/a
 ; HI07n/a
 ; HI08n/a
 ; HI09n/a
 ; HI10n/a
 ; HI11n/a
 ; HI12n/a
 ;2010D DEPENDENT NAME
 ;cmi/maw need dependant name
 ; NM101
 S ACHS("2782010DNM11")="QC"
 ; NM102
 S ACHS("2782010DNM12")="1"
 ; NM103
 S ACHS("2782010DNM13")=$P($$GET1^DIQ(9002080.01,ACHSDIEN_","_DUZ(2)_",",13.64),",",1)
 ; NM104
 S ACHS("2782010DNM14")=$P($$GET1^DIQ(9002080.01,ACHSDIEN_","_DUZ(2)_",",13.64),",",2)
 ; NM105n/a
 ; NM106n/a
 ; NM107n/a
 ; NM108n/a
 ; NM109n/a
 ;2010D DEPENDENT SUPPLEMENTAL INFORMATION
 ; REF01n/a
 ; REF02n/a
 ;2010D DEPENDENT DEMPGRAPHIC INFO
 ; DMG01n/a
 ; DMG02n/a
 ; DMG03n/a
 ;2010D DEPENDENT RELATIONSHIP
 ; INS01n/a
 ; INS02n/a
 ; INS03n/a
 ; INS04n/a
 ; INS05n/a
 ; INS06n/a
 ; INS07n/a
 ; INS08n/a
 ; INS09n/a
 ; INS10n/a
 ; INS11n/a
 ; INS12n/a
 ; INS13n/a
 ; INS14n/a
 ; INS15n/a
 ; INS16n/a
 ; INS17n/a
 ;2000E SERVICE PROVIDER LEVEL
 ; HL01
 S ACHS("2782000EHL1")=5
 ; HL02
 S ACHS("2782000EHL2")=4
 ; HL03
 S ACHS("2782000EHL3")=19
 ; HL04
 S ACHS("2782000EHL4")=1
 ;
 ;2000E MESSAGE TEXT
 ; MSG01
 ; ---------- CHS Purchase Order Number.
 ; NOTE: as of 10/09/2002, CHS WG does not want to transmit PO #.
 ;S ACHS("2782000EMSG1")=$$GET1^DIQ(9002080.01,ACHSDIEN_","_DUZ(2)_",",.01)
 ; ---------- If COMMENTS exist, append it.
 S %=$$GET1^DIQ(9002080.01,ACHSDIEN_","_DUZ(2)_",",12)
 I $L(%) S ACHS("2782000EMSG1")=$S($G(ACHS("2782000EMSG1")):ACHS("2782000EMSG1")_" : ",1:"")_%
 ;2010E SERVICE PROVIDER NAME
 ; NM101
 S ACHS("2782010ENM11")="SJ"
 ; NM102
 S ACHS("2782010ENM12")="2"
 ; NM103
 S ACHS("2782010ENM13")=$$GET1^DIQ(9002080.01,ACHSDIEN_","_DUZ(2)_",",7)
 ; NM104n/a
 ; NM105n/a
 ; NM106n/a
 ; NM107n/a
 ; NM108
 S ACHS("2782010ENM18")="24"
 ; NM109
 S ACHS("2782010ENM19")=$$GET1^DIQ(9999999.11,$$GET1^DIQ(9002080.01,ACHSDIEN_","_DUZ(2)_",",7,"I"),1101)
 S %=$$GET1^DIQ(9999999.11,$$GET1^DIQ(9002080.01,ACHSDIEN_","_DUZ(2)_",",7,"I"),1102)
 I $L(%) S ACHS("2782010ENM19")=ACHS("2782010ENM19")_"-"_%
 ;2010E SERVICE PROVIDER SUPPLEMENTAL INFO
 ; REF01n/a
 ; REF02n/a
 ;2010E SERVICE PROVIDER ADDRESS
 ; N301
 S ACHS("2782010EN31")=$$GET1^DIQ(9999999.11,$$GET1^DIQ(9002080.01,ACHSDIEN_","_DUZ(2)_",",7,"I"),1301)
 ; N302n/a
 ;2010E SERVICE PROVIDER CITY/STATE/ZIP
 ; N401
 S ACHS("2782010EN41")=$$GET1^DIQ(9999999.11,$$GET1^DIQ(9002080.01,ACHSDIEN_","_DUZ(2)_",",7,"I"),1302)
 ; N402
 S ACHS("2782010EN42")=$$GET1^DIQ(5,$$GET1^DIQ(9999999.11,$$GET1^DIQ(9002080.01,ACHSDIEN_","_DUZ(2)_",",7,"I"),1303,"I"),1)
 ; N403
 S ACHS("2782010EN43")=$$GET1^DIQ(9999999.11,$$GET1^DIQ(9002080.01,ACHSDIEN_","_DUZ(2)_",",7,"I"),1304)
 ; N404n/a
 ;2010E SERVICE PROVIDER CONTACT INFO
 ; PER01
 S ACHS("2782010EPER1")="IC"
 ; PER02
 S ACHS("2782010EPER2")=$$GET1^DIQ(9999999.11,$$GET1^DIQ(9002080.01,ACHSDIEN_","_DUZ(2)_",",7,"I"),1305)
 ; PER03
 S ACHS("2782010EPER3")="TE"
 ; PER04
 S ACHS("2782010EPER4")=$$GET1^DIQ(9999999.11,$$GET1^DIQ(9002080.01,ACHSDIEN_","_DUZ(2)_",",7,"I"),1109)
 ; PER05n/a
 ; PER06n/a
 ; PER07n/a
 ; PER08n/a
 ;2010E SERVICE PROVIDER INFO
 ; PRV01n/a
 ; PRV02n/a
 ; PRV03n/a
 ;2000F SERVICE LEVEL
 ; HL01
 S ACHS("2782000FHL1")=6
 ; HL02
 S ACHS("2782000FHL2")=5
 ; HL03
 S ACHS("2782000FHL3")="SS"
 ; HL04
 S ACHS("2782000FHL4")=0
 ;
 ;2000F SERVICE TRACE NUMBER
 ; TRN01n/a
 ; TRN02n/a
 ; TRN03n/a
 ; TRN04n/a
 ;2000F HEALTH CARE SERVICES REVIEW INFO
 ; UM01
 S ACHS("2782000FUM1")=$S(ACHSTOS=43:"AR",ACHSTOS=57:"SC",ACHSTOS=64:"HS",1:"")
 ; UM02
 S %=$$GET1^DIQ(9002080.02,ACHSDIEN_","_ACHSTIEN_","_DUZ(2)_",",1,"I")
 S ACHS("2782000FUM2")=$S(%="I":"I",%="S":"S",%="Z":"S",%="C":3,1:"I")
 ; UM03n/a
 ; UM04n/a
 ; UM05n/a
 ; UM06
 S ACHS("2782000FUM6")=$S($$GET1^DIQ(9002080.01,ACHSDIEN_","_DUZ(2)_",",81,"I")="I":"03",1:"")
 ; UM07n/a
 ; UM08n/a
 ; UM09
 S ACHS("2782000FUM9")=$S($P(^AUPNPAT(DFN,0),"^",3)&'$P(^AUPNPAT(DFN,0),"^",4):"Y",1:"M")
 ; UM10n/a
 ;2000F PREVIOUS CERTIFICATION ID
 ; REF01
 ; REF02
 ;2000F SERVICE DATE
 ; DTP01
 S ACHS("2782000FDTPA1")="472"
 ; DTP02
 S ACHS("2782000FDTPA2")="D8"
 ; DTP03
 S ACHS("2782000FDTPA3")=17000000+$$GET1^DIQ(9002080.01,ACHSDIEN_","_DUZ(2)_",",83.11,"I")
 ;2000F ADMISSION DATE
 ; DTP03
 S ACHS("2782000FDTPB3")=$$GET1^DIQ(9002080.01,ACHSDIEN_","_DUZ(2)_",",91,"I")
 I ACHS("2782000FDTPB3") S ACHS("2782000FDTPB3")=17000000+ACHS("DTP032000F","435")
 ; DTP01
 I ACHS("2782000FDTPB3") S ACHS("2782000FDTPB1")="435"
 ; DTP02
 I ACHS("2782000FDTPB3") S ACHS("2782000FDTPB2")="D8"
 ;
 ;2000F DISCHARGE DATE
 ; DTP03
 S ACHS("2782000FDTPC3")=$$GET1^DIQ(9002080.01,ACHSDIEN_","_DUZ(2)_",",92,"I")
 I ACHS("2782000FDTPC3") S ACHS("2782000FDTPC3")=17000000+ACHS("DTP032000F","096")
 ; DTP01
 I ACHS("2782000FDTPC3") S ACHS("2782000FDTPC1")="096"
 ; DTP02
 I ACHS("2782000FDTPC3") S ACHS("2782000FDTPC2")="D8"
 ;
 ;2000F PROCEDURES
 ; HI01n/a
 ; HI02n/a
 ; HI03n/a
 ; HI04n/a
 ; HI05n/a
 ; HI06n/a
 ; HI07n/a
 ; HI08n/a
 ; HI09n/a
 ; HI10n/a
 ; HI11n/a
 ; HI12n/a
 ;2000F HEALTH CARE SERVICES DELIVERY
 ; HSD01
 S ACHS("2782000FHSD1")="DY"
 ; HSD02
 S ACHS("2782000FHSD2")=$$GET1^DIQ(9002080.01,ACHSDIEN_","_DUZ(2)_",",25)
 I $G(ACHS("2782000FHSD2"))="" S ACHS("2782000FHSD2")=1
 ; HSD03n/a
 ; HSD04n/a
 ; HSD05n/a
 ; HSD06n/a
 ; HSD07n/a
 ; HSD08n/a
 ;2000F PATIENT CONDITION INFO
 ; CRC01n/a
 ; CRC02n/a
 ; CRC03n/a
 ; CRC04n/a
 ; CRC05n/a
 ; CRC06n/a
 ; CRC07n/a
 ;2000F INSTITUTIONAL CLAIM CODE
 ; CL101n/a
 ; CL102n/a
 ; CL103n/a
 ; CL104n/a
 ;2000F AMBULANCE TRANSPORT INFO
 ; CR101n/a
 ; CR102n/a
 ; CR103n/a
 ; CR104n/a
 ; CR105n/a
 ; CR106n/a
 ; CR107n/a
 ; CR108n/a
 ; CR109n/a
 ; CR110n/a
 ; CR111n/a
 ; CR112n/a
 ;2000F SPINAL MANIPULATION SERVICE INFO
 ; CR201n/a
 ; CR202n/a
 ; CR203n/a
 ; CR204n/a
 ; CR205n/a
 ; CR206n/a
 ; CR207n/a
 ; CR208n/a
 ; CR209n/a
 ; CR210n/a
 ; CR211n/a
 ; CR212n/a
 ;2000F HOME OXYGEN THERAPY INFO
 ; CR501n/a
 ; CR502n/a
 ; CR503n/a
 ; CR504n/a
 ; CR505n/a
 ; CR506n/a
 ; CR507n/a
 ; CR508n/a
 ; CR509n/a
 ; CR510n/a
 ; CR511n/a
 ; CR512n/a
 ; CR513n/a
 ; CR514n/a
 ; CR515n/a
 ; CR516n/a
 ; CR517n/a
 ; CR518n/a
 ;2000F HOME HEALTH CARE INFO
 ; CR601n/a
 ; CR602n/a
 ; CR603n/a
 ; CR604n/a
 ; CR605n/a
 ; CR606n/a
 ; CR607n/a
 ; CR608n/a
 ; CR609n/a
 ; CR610n/a
 ; CR611n/a
 ; CR612n/a
 ; CR613n/a
 ; CR614n/a
 ; CR615n/a
 ; CR616n/a
 ; CR617n/a
 ;2000F MESSAGE TEXT
 ; MSG01
 S ACHS("2782000FMSG1")=$$GET1^DIQ(9002080.01,ACHSDIEN_","_DUZ(2)_",",26)
 ; TRANSACTION SET TRAILER
 ;   SE02
 S ACHS("278HFSE2")="0001"
 ;   SE01
 S ACHS("278HFSE1")=$$SEGCNT
 Q
 ;
TS() ;-- make a time stamp
 D NOW^%DTC
 Q $$TS^INHUT1(%)
 ;
VNDR(I) ;-- get the vendors ein
 NEW V
 S V=$P($G(^ACHSF(DUZ(2),"D",I,0)),U,7)
 I V="" Q ""
 Q $P($G(^AUTTVNDR(V,11)),U)
 ;
SEGCNT() ;-- count number of segments
 NEW C,D
 S (C,D)=0
 F  S D=$O(ACHS(D)) Q:D=""  S C=C+1
 Q $G(C)
 ;