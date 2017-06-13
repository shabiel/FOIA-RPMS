CIANBACT ;MSC/IND/DKM/PLS - MSC RPC Broker Actions;16-Apr-2013 18:42;PLS
 ;;1.1;CIA NETWORK COMPONENTS;**001007,001010,1000**;Sep 18, 2007
 ;;Copyright 2000-2008, Medsphere Systems Corporation
 ;=================================================================
 ;
 ; *1000 changes by Sam Habiel to support GT.M (Feb 2011)
 ; Change Log:
 ; - Added entry point $$JOB4 to support GT.M as GT.M is CIAOS 4.
 ;
 ; Connect action
 ; CIADATA is returned to client as:
 ;   callback flag^authentication method^server version^case sensitive^context cached
ACTC N X,Y,VOL,UCI,PORT,IP,AUTH
 S Y=$$GETUCI,UCI(0)=Y,UCI=$$UP^XLFSTR($G(CIA("UCI"),Y)),VOL=$P(UCI,",",2)
 S:'$L(UCI) UCI=Y
 S:'$L(VOL) VOL=$P(Y,",",2),$P(UCI,",",2)=VOL
 I UCI'=UCI(0),$$ERRCHK(0[$$UCICHECK^%ZOSV(UCI),14,UCI) Q
 Q:$$ERRCHK('$L(VOL),11)
 S AUTH=$$AUTHMETH(UCI),CIADATA="0^"_AUTH_"^1.1^"_$$GET^XPAR("SYS","XU VC CASE SENSITIVE")_"^1"
 Q:$$ERRCHK('$L(AUTH),24,UCI)
 I $D(^%ZOSF("ACTJ")) D  Q:$$ERRCHK(X'>Y&X,10,Y,X)
 .; Y=# active jobs, X=max active jobs
 .X ^%ZOSF("ACTJ")
 .S X=+$O(^XTV(8989.3,1,4,"B",VOL,0)),X=$S(X:+$P($G(^XTV(8989.3,1,4,X,0)),U,3),1:0)
 S PORT=CIA("LP"),X=$$CLIENTIP^CIAUOS,IP=$S(CIAMODE=2:CIAIP,$L(X):X,1:CIA("IP"))
 S @("X=$$JOB"_CIAOS)
 D ERRCHK('X,12)
 Q
 ; Disconnect action
ACTD D RESET^CIANBRPC()
 S CIADATA=1,CIAQUIT=1
 Q
 ; Query action
ACTQ Q:$$ASYCHK^CIANBASY
 Q:$$EVTCHK^CIANBEVT
 ; Ping action
ACTP S DT=$$NOW^XLFDT,CIADATA=$$PARAM^CIANBUTL("CIANB POLLING INTERVAL",1,60)_U_DT,DT=DT\1
 Q
 ; Subscribe action
ACTS S CIADATA=1
 Q:$$ERRCHK('$$SUBSCR^CIANBEVT(CIA("EVT"),1),13,CIA("EVT"))
 Q
 ; Unsubscribe action
ACTU S CIADATA=$$SUBSCR^CIANBEVT(CIA("EVT"),0)
 Q
 ; RPC action
ACTR N RPC,RTN,CIAD,XWBWRAP,XWBPTYPE,I
 I '$D(CIA("CTX")) S CIA("CTX")=$$GETVAR^CIANBUTL("CTX")
 E  D SETVAR^CIANBUTL("CTX",CIA("CTX"))
 S:CIA("CTX")="" CIA("CTX")=$$GETVAR^CIANBUTL("AID")
 S RPC=$$FIND1^DIC(8994,,"QX",$G(CIA("RPC")))
 Q:$$ERRCHK('RPC,3)
 S I=$G(^XWB(8994,RPC,0)),RTN=$P(I,U,2,3),XWBWRAP=+$P(I,U,8),XWBPTYPE=$P(I,U,4)
 Q:$$ERRCHK($S($E($P(RTN,U,2),1,5)="CIANB":0,1:'$$CANRUN(RPC,CIA("CTX"))),4)
 Q:$$ERRCHK("03"'[$P(I,U,6),5)
 Q:$$ERRCHK(RTN'?.8AN1"^"1.8AN,6)
 Q:$$ERRCHK("^1^2^3^4^5^H^"'[(U_XWBPTYPE_U),6)
 Q:$$ERRCHK(ARG>40,7,,ARG,40)
 I $G(CIA("ASY")) D
 .N RD
 .S RD="CIANB THREAD RESOURCE #"_$$GETVAR^CIANBUTL("RDEV")
 .S CIAD=$$QUEUE^CIAUTSK("TASK^CIANBASY","ASYNC RPC: "_CIA("RPC"),,"RTN^XWBWRAP^XWBPTYPE^ARG^ARG(^CIA(^XWBOS^P*",RD)
 .Q:$$ERRCHK(CIAD<1,8)
 .S ^XTMP("CIA",CIA("UID"),"T",CIAD)=""
 .D REPLY^CIANBLIS(CIAD)
 E  D
 .S:XWBPTYPE=4 CIAD=$$TMPGBL^CIANBRPC("X")
 .D STREST^CIANBLIS(1),DORPC,DATAOUT
 Q
 ; Builds the RPC entry code and executes it
DORPC N I,P,XWBAPVER,XQY,CIAQUIT,ALOG,$ET
 S RTN=RTN_"(.CIAD",XWBAPVER=$G(CIA("VER")),XQY=$$GETVAR^CIANBUTL("AID0")
 S ALOG=$$ISACTIVE^CIANBLOG,ALOG(0)=$S(ALOG:$$LOG^CIANBLOG(ALOG,1,CIA("RPC")),1:0)
 F I=1:1:ARG D
 .S RTN=RTN_","
 .Q:'$D(ARG(I))
 .S P="P"_I,RTN=RTN_"."_P
 .S:$D(@P)=10 @P=""
 .D:ALOG(0) ADD^CIANBLOG(ALOG,ALOG(0),P,1)
 S RTN=RTN_")"
 D
 .N ALOG
 .D @RTN
 I $$TEST^CIAUOS("BUSARPC") D
 .D CIA^BUSARPC(XWBPTYPE,RTN,$G(CIA("RPC")))
 I ALOG(0) D
 .N VAL,ARY
 .S VAL=$C(13)_"Return Data:"_$C(13)
 .D ADD^CIANBLOG(ALOG,ALOG(0),"VAL")
 .I XWBPTYPE=1 S VAL=$G(CIAD),ARY="VAL"
 .E  I XWBPTYPE=2 S ARY="CIAD"
 .E  I XWBPTYPE=3 S ARY="CIAD"
 .E  I XWBPTYPE=4 S ARY=CIAD
 .E  I XWBPTYPE=5 S VAL=$G(@CIAD),ARY="VAL"
 .E  I XWBPTYPE="H" S VAL=CIAD,ARY="VAL"
 .E  Q
 .D ADD^CIANBLOG(ALOG,ALOG(0),ARY)
 Q
 ; Test for error condition
 ; TEST = If true, setup the error
 ; ERR  = Error code
 ; Pn   = Optional parameters (up to 3)
ERRCHK(TEST,ERR,P1,P2,P3) ;
 I TEST,'$G(CIAERR(0)) D
 .D GETDLG^CIANBUTL(ERR,.CIAERR,.P1,.P2,.P3)
 .S CIAERR(0)=ERR
 Q:$Q +$G(CIAERR(0))
 Q
 ; Writes return data to TCP stream
DATAOUT D TCPUSE^CIANBLIS
 W $C(0)
 I XWBPTYPE=1 W $G(CIAD),! Q
 I XWBPTYPE=2 D OUT("CIAD",1) Q
 I XWBPTYPE=3 D OUT("CIAD",XWBWRAP) Q
 I XWBPTYPE=4 D OUT(CIAD,XWBWRAP) Q
 I XWBPTYPE=5 W $G(@CIAD),! Q
 I XWBPTYPE="H" D HFSOUT(CIAD,XWBWRAP) Q
 Q
 ; Write array (local or global) to TCP stream
OUT(ARY,EOL) ;
 N X,L,K
 S K=$E(ARY)'="~"
 S:'K ARY=$E(ARY,2,999)
 Q:'$L(ARY)
 S ARY=$NA(@ARY)
 S X=ARY,L=$QL(ARY),EOL=$S($G(EOL):$C(13),1:"")
 F  S X=$Q(@X) Q:'$L(X)  Q:$NA(@X,L)'=ARY  W @X,EOL,!
 K:K @ARY
 Q
 ; Write contents of HFS to TCP stream
HFSOUT(HFS,EOL) ;
 N X
 S EOL=$S($G(EOL):$C(13),1:"")
 D OPEN^CIAUOS(.HFS,"R")
 F  Q:$$READ^CIAUOS(.X,HFS)  D
 .D TCPUSE^CIANBLIS
 .W X,EOL,!
 D CLOSE^CIAUOS(.HFS),DELETE^CIAUOS(HFS)
 Q
 ; Returns true if RPC can run in current context
CANRUN(RPC,CTX) ;
 Q:'$G(DUZ)!'RPC 0
 S CTX(0)=$$OPTLKP^CIANBUTL(CTX)
 Q:$$ERRCHK('$L(CTX(0)),2,CTX) 0
 D:'$G(^XTMP("CIA",CIA("UID"),"C",CTX(0))) BLDCTX(CTX(0))
 Q:$$KCHK^XUSRB("XUPROGMODE") 1
 Q $D(^XTMP("CIA",CIA("UID"),"C",CTX(0),RPC))
 ; Build RPC context table
BLDCTX(OPT,CTX) ;
 N X
 I '$D(CTX) K ^XTMP("CIA",CIA("UID"),"C",OPT) S ^(OPT)=1,CTX=OPT
 Q:$D(^XTMP("CIA",CIA("UID"),"C",CTX,0,OPT))  S ^(OPT)=""
 Q:$$OPTCHK^CIANBUTL(OPT,"B")
 M ^XTMP("CIA",CIA("UID"),"C",CTX)=^DIC(19,OPT,"RPC","B")
 F X=0:0 S X=$O(^DIC(19,OPT,10,"B",X)) Q:'X  D BLDCTX(X,CTX)
 K:CTX=OPT ^XTMP("CIA",CIA("UID"),"C",CTX,0)
 Q
 ; OS-specific job commands
JOB1() I CIAMODE=2 D MODE2 Q 1
 J EN^CIANBLIS(PORT,IP,1)[UCI]::15
 Q $T
JOB2() I CIAMODE=2 D MODE2 Q 1
 J EN^CIANBLIS(PORT,IP,1)[UCI]:100000:15
 Q $T
JOB3() I $G(CIA("DBG"))!($G(CIA("VER"))<1.5) J EN^CIANBLIS(PORT,IP,1)[$P(UCI,",")]::15 Q $T
 S $P(CIADATA,U)=1
 D REPLY^CIANBLIS(CIADATA)
 K CIADATA
 J EN^CIANBLIS(CIAPORT,CIAIP,2)[$P(UCI,",")]:(:4:CIATDEV:CIATDEV):15
 Q $T
JOB4() I CIAMODE=2 D MODE2 Q 1 ; SAM NEW LINE
 ; Mode 2 support for MSM, DSM & GT.M
MODE2 D:UCI'=UCI(0) SETUCI(UCI)
 S UCI(0)=UCI
 I '$G(CIA("DBG")),$G(CIA("VER"))'<1.5 S $P(CIADATA,U)=1,CIAMODE=1
 E  S CIAQUIT=1 D REPLY^CIANBLIS(),TCPCLOSE^CIANBLIS,EN^CIANBLIS(PORT,IP,1)
 Q
 ; Return current UCI
GETUCI() N Y
 D UCI^%ZOSV
 Q Y
 ; Change UCI
SETUCI(X) D SWAP^%XUCI
 Q
 ; Get authentication method for target UCI
AUTHMETH(UCI) ;
 N X,PC
 F PC=2,1 D  Q:$L(X)
 .S X=$$GET^XPAR("ALL","CIANB AUTHENTICATION",$P(UCI,",",1,PC))
 Q X
