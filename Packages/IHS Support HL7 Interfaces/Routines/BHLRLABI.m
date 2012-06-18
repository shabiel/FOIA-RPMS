BHLRLABI ; cmi/anchorage/maw - BHL ORU/R01 Ref Lab inbound Lab Message ; 
 ;;3.01;BHL IHS Interfaces with GIS;**13,14,16**;AUG 01, 2004
 ;
 ;this is the master routine all ref lab inbound are built off of this
 ;
 ;this routine will file the inbound dynacare lab message.
 ;
MAIN ;EP -- this is the main routine driver
 S BHLRL=+$G(^BLRSITE(DUZ(2),"RL"))
 Q:'$G(BHLRL)
 S BHLNOST=1 D ^BHLSETI
 ;I '$P($G(^BLRRL(BHLRL,0)),U,10) D ORU^BLRHL7(BHLUIF),EOJ Q  2/25/2008 cmi/maw orig
 I '$P($G(^BLRSITE(DUZ(2),"RL")),U,18) D ORU^BLRHL7(BHLUIF),EOJ Q  ;NEW cmi/maw 2/25/2008
 D ^BHLFO
 D CHKPAT
 Q:$D(BHLERR("FATAL"))
 D PRS
 D RFL
 D EOJ
 D JOB^BLRPARAM  ;jump start the link
 Q
 ;
CHKPAT ;-- lookup the patient by chart
 N BHLR
 S BHLR="PID"
 S BHLDA=0,BHLDA=$O(@BHLTMP@(BHLDA)) ;should be one PID
 S PAT=+$G(@BHLTMP@(BHLDA,3))
 S BHLDOB=$$HDATE^INHUT($E($G(@BHLTMP@(BHLDA,7)),1,8))
 S BHLSEX=$G(@BHLTMP@(BHLDA,8))
 S BHLPAT=$$CHKPAT^BHLU(PAT,$G(DUZ(2)))
 I '$G(BHLPAT) S BHLERCD="NOPAT" X BHLERR
 Q:$D(BHLERR("FATAL"))
 S BHLPAT=$$CHKDOB^BHLU(BHLPAT)
 I '$G(BHLPAT) S BHLERCD="NOPAT" X BHLERR
 Q:$D(BHLERR("FATAL"))
 S BHLLOE=$G(DUZ(2))
 Q
 ;
PRS ;-- parse the HL7 message array     
 D OBR
 Q
 ;
OBR ;-- parse the OBR segment
 N BHLR
 S BHLR="OBR"
 S BHLODA=0 F  S BHLODA=$O(@BHLTMP@(BHLODA)) Q:BHLODA=""  D
 . K BHLPAR,BHLTST,BHLPSEQ,BHLCLTE
 . S BHLACC=$G(@BHLTMP@(BHLODA,2))
 . S BHLTST=$P($G(@BHLTMP@(BHLODA,4)),CS,4)
 . S BHLCLTE=$P($G(@BHLTMP@(BHLODA,4)),CS,5)
 . S BHLOBSDT=$$HDATE^INHUT($G(@BHLTMP@(BHLODA,7)),"T")
 . S BHLSPDT=$$HDATE^INHUT($G(@BHLTMP@(BHLODA,14)),"T")
 . S BHLORDP=$G(@BHLTMP@(BHLODA,16))
 . S BHLRESDT=$$HDATE^INHUT($G(@BHLTMP@(BHLODA,22)),"T")
 . S BHLPAR=BHLODA
 . D MAP
 . I $D(BHL("OBX",BHLODA,2)) D CPT,FILE K BHLCPTS S BHLPSEQ=BHLSEQ
 . I $D(BHLERR("WARNING")) D BUL
 . K BHLERR("WARNING")
 . D OBX
 Q
 ;
OBX ;-- parse the OBX segment
 N BHLR
 S BHLR="OBX"
 S BHLXDA=0 F  S BHLXDA=$O(@BHLSTMP@(BHLXDA)) Q:BHLXDA=""!($D(BHLERR("WARNING")))  D
 . K BHLSPAR,BHLTST,BHLCLTE
 . S BHLTST=$P($G(@BHLSTMP@(BHLXDA,3)),CS,4)
 . S BHLCLTE=$P($G(@BHLSTMP@(BHLXDA,3)),CS,5)
 . S BHLRSLT=$G(@BHLSTMP@(BHLXDA,5))
 . S BHLUNIT=$G(@BHLSTMP@(BHLXDA,6))
 . S BHLREFR=$G(@BHLSTMP@(BHLXDA,7))
 . S BHLREFL=$P($G(BHLREFR),"-")
 . S BHLREFH=$P($G(BHLREFR),"-",2)
 . S BHLABN=$G(@BHLSTMP@(BHLXDA,8))
 . S BHLRESDT=$$HDATE^INHUT($G(@BHLSTMP@(BHLXDA,14)),"T")
 . S BHLSPAR=BHLXDA
 . D TESTMAP
 . I '$G(BHLPSEQ) D CPT
 . D FILE
 . K BHLCPTS
 . D NTE
 . K BHLCMT
 . I $D(BHLERR("WARNING")) D BUL
 . K BHLERR("WARNING")
 Q
 ;
NTE ;-- parse the NTE segment
 N BHLR
 S BHLR="NTE"
 S BHLNDA=0 F  S BHLNDA=$O(@BHLSSTMP@(BHLNDA)) Q:BHLNDA=""  D
 . S:'$D(BHLCMT(BHLNDA)) BHLCMT(BHLNDA)=0
 . S (BHLCMT(BHLNDA),X)=$G(@BHLSSTMP@(BHLNDA,3))
 . K DIC
 . S DIC="^BLRTXLOG("_BHLSEQ_",30,"
 . S DA(1)=BHLSEQ,DIC(0)="L",DIC("P")=$P(^DD(9009022,3001,0),"^",2)
 . D ^DIC
 Q
 ;
MAP ;-- map the necessary incoming items to rpms
 I '$G(BHLORDPI) D
 . S BHLORDPI=$O(^VA(200,"ANPI",BHLORDP,0))
 S BHLORDPE=$S(BHLORDP'="":$P($G(^DIC(6,BHLORDP,0)),U),1:"")
 S BHLPNM=$$VAL^XBDIQ1(2,BHLPAT,.01)
 S BHLLOE=$G(DUZ(2))
TESTMAP ;
 S BHLCLTI=$O(^BLRRL("BTST",BHLTST,BHLRL,0))
 I BHLCLTI="" S BHLERCD="NOLCODE" X BHLERR Q
 S BHLCLT=$P($G(^BLRRL(BHLRL,1,BHLCLTI,0)),U,2)
 I BHLCLT="" S BHLERCD="NOLAB" X BHLERR
 Q
 ;
CPT ;-- let's build the cpt string
 Q:$G(BHLPSEQ)
 Q:'$G(BHLCLT)
 S BHLCTST=$O(^BLRCPT("C",BHLCLT,0))
 Q:BHLCTST=""
 S BHLCCNT=0
 S BHLCPTS="|||||"
 S BHLCDA=0 F  S BHLCDA=$O(^BLRCPT(BHLCTST,11,BHLCDA)) Q:'BHLCDA  D
 . S BHLCPT=$P($G(^BLRCPT(BHLCTST,11,BHLDA,0)),U)
 . S BHLCCNT=BHLCCNT+1
 . S $P(BHLCPTS,"|",BHLCCNT)=$G(BHLCPT)
 Q
 ;
FILE ;-- file the data in BLRTXLOG
 ;FORMAT IS BLRVARS="FIELD NAME_VARIABLE~FIELD NAME_VARIABLE""
 K BLR,BLRF,BLRFDA  ;maw test
 S BHLQSIT=$P($G(^AUTTSITE(1,0)),U)
 Q:BHLQSIT=""
 S BLRPCC=$P($G(^BLRSITE(BHLQSIT,0)),U,3)
 S (BLRODTM,BLRSEQ,BLRTEST1)="",BLRLINK=1,BLRERR=0,BHLPHASE="R",BLRCMF="C"
 S BLRXPCC=1 ;after patch 10
 S BHLSEQ=$$GETIEN^BLRFLTL(BLRODTM,BLRSEQ,BLRTEST1)
 S BLRVARS="SEQUENCE NUMBER_BHLSEQ~STATUS FLAG_BHLPHASE~DUZ(2)_BHLLOE~"
 S BLRVARS=BLRVARS_"PATIENT NAME_$G(BHLPNM)~PATIENT POINTER VALUE_$G(BHLPAT)~ACCESSION NUMBER_BHLACC~"
 S BLRVARS=BLRVARS_"ORDERING PROVIDER NAME_$G(BLRH2(6))~ORDERING PROVIDER POINTER_$G(BLRH2(16))~"
 S BLRVARS=BLRVARS_"PANEL/TEST POINTER_BHLCLT~PANEL/TEST NAME_$G(BHLCLTE)~RESULT_$G(BHLRSLT)~UNITS_$G(BHLUNIT)~REFERENCE LOW_$G(BHLREFL)~REFERENCE HIGH_$G(BHLREFH)~"
 S BLRVARS=BLRVARS_"PARENT POINTER_$G(BHLPSEQ)~COLLECTION DATE/TIME_BHLOBSDT~ORDER DATE_$G(BHLODT)~ENTRY DATE/TIME_$G(BHLSPDT)~ORDERING LOCATION POINTER_$G(BHLLOC)~ORDERING LOCATION NAME_$G(BHLLOCE)~"
 S BHLLM="CH",BLRVARS=BLRVARS_"LAB MODULE_BHLLM~"
 S BHLIO="A",BLRVARS=BLRVARS_"I/O CATEGORY_BHLIO~"
 S BHLSTAT="R",BLRVARS=BLRVARS_"STATUS FLAG_BHLSTAT~"
 S BHLBILL=1,BLRVARS=BLRVARS_"BILLABLE ITEM_BHLBILL~"
 S BHLSRC=0,BLRVARS=BLRVARS_"SOURCE OF DATA INPUT_BHLSRC~"
 S BHLSPC=999,BLRVARS=BLRVARS_"SITE/SPECIMEN POINTER_BHLSPC~"
 S BHLSPCE="UNKNOWN",BLRVARS=BLRVARS_"SITE/SPECIMEN NAME_BHLSPCE~"
 S BHLLFLE=2,BLRVARS=BLRVARS_"LRFILE_BHLLFLE~"
 S BLRVARS=BLRVARS_"RESULT N/A FLAG_$G(BHLABN)~"
 S BLRVARS=BLRVARS_"BILLING CPT STRING_$G(BHLCPTS)"
 I '$D(BLRF(0)) D INIT^BLRPARAM ;after patch 10
 ;I '$D(BLRF(0)) D ^BLRPARAM
 D SETVALS^BLRFLTL ;after patch 10
 ;D ^BLRFLTL("C",BLRVARS) ;before patch 10
 D ^BLRNFLTL ;after patch 10
 Q
 ;
BUL ;-- file a bulletin if no test match
 S XMB="BHL NO TEST MATCH"
 S XMB(1)=$G(BHLTST),XMB(2)=$G(BHLCLTE),XMB(3)=$G(BHLSEQ)
 D ^XMB
 Q
 ;
EOJ ;-- kill variables and quit
 D EN^XBVK("BLR")
 D EOJ^BHLSETI
 Q
 ;
RFL ;-- set the refile node in BLRSITE
 S BHLDA=0 F  S BHLDA=$O(BHLSEQ(BHLDA)) Q:'BHLDA  D
 . S BHLIEN=$G(BHLSEQ(BHLDA))
 . D ^BLREVTQ("M","REFILE","REFILE",,BHLIEN)
 Q
 ;