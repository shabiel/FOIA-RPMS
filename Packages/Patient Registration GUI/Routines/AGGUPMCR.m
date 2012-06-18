AGGUPMCR ;VNGT/HS/ALA-Update Medicare ; 20 May 2010  5:20 PM
 ;;1.0;PATIENT REGISTRATION GUI;**1**;Nov 15, 2010
 ;
 ; if needed Reference Routines
 ; AGED42 - EDIT - PAGE 4 NEW MEDICARE SCREEN
 ;
UPD(DATA,DFN,PROC,DEF,MIEN,PARMS) ; EP - AGG UPDATE MEDICARE
 ; Input
 ;   DFN   - Patient IEN
 ;   MIEN  - Multiple IEN
 ;   PROC  - 'A' to add, 'E' to edit, 'D' to delete
 ;   DEF   - Definition
 ;   PARMS - Parameters
 NEW UID,II,AGIEN,IENS,DA,AGIEN,FILE,IN3PB,FIELD,EXEC,NAME,PFIEN,PDATA,BQ,RIEN
 NEW AGGMCESD,AGGMCINS,ERROR,AGGDATA,AGGUPD,AGI,AGJ,AGWP,CHIEN,PTYP,RESULT
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("AGGUPMCR",UID))
 K @DATA
 ;
 S II=0
 S PROC=$G(PROC,""),RIEN=DFN,MIEN=$G(MIEN,""),PARMS=$G(PARMS,"")
 S:MIEN=0 MIEN=""
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^AGGPTUPD D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 S @DATA@(II)="I00010RESULT^T01024ERROR^I00010RIEN^I00010MIEN"_$C(30)
 ;
 S AGIEN=$O(^AGG(9009068.3,"B",DEF,""))
 I AGIEN="" D  Q
 . S II=II+1,@DATA@(II)="-1^"_"RPC Call Failed: "_DEF_" Definition does not exist."_$C(30)
 . S II=II+1,@DATA@(II)=$C(31)
 S FILE=$P(^AGG(9009068.3,AGIEN,0),U,2)
 ;
 I $G(^AUPNMCR(DFN,0))="" D
 . NEW DLAYGO,DIC,X,Y,DINUM
 . S DLAYGO=FILE,DIC(0)="L",DIC="^AUPNMCR(",(X,DINUM)=DFN
 . K DO,DD D FILE^DICN
 ;if deleting a Medicare
 I PROC="D" D  G DONE
 . I MIEN="" S DA=RIEN,IENS=$$IENS^DILF(.DA)
 . I MIEN'="" S DA(1)=RIEN,DA=MIEN,IENS=$$IENS^DILF(.DA)
 . S AGGUPD(FILE,IENS,.01)="@"
 . D FILE^DIE("","AGGUPD","ERROR")
 . I $D(ERROR) Q
 ;if adding a new Medicare
 D PARS
 ;
 I PROC="A" D
 . I MIEN="",RIEN'="" D
 .. I '$D(^AUPNMCR(RIEN,11,0)) S ^AUPNMCR(RIEN,11,0)="^9000003.11D^^"
 .. I $G(AGGMCESD)="" Q
 .. S DA(1)=RIEN,DLAYGO=FILE,DIC(0)="L",DIC="^AUPNMCR("_DA(1)_",11,"
 .. S X=AGGMCESD
 .. ;D ^DIC I Y=-1 K DO,DD D FILE^DICN
 .. K DO,DD D FILE^DICN  ;Always create a new entry on adds
 .. S MIEN=+Y
 ;if editing a Medicare
 I MIEN="" S DA=RIEN,IENS=$$IENS^DILF(.DA)
 I MIEN'="" S DA(1)=RIEN,DA=MIEN,IENS=$$IENS^DILF(.DA)
 F BQ=1:1:$L(PARMS,$C(28)) D  Q:$G(BMXSEC)'=""
 . S PDATA=$P(PARMS,$C(28),BQ) Q:PDATA=""
 . S NAME=$P(PDATA,"=",1)
 . S PFIEN=$O(^AGG(9009068.3,AGIEN,10,"AC",NAME,""))
 . I PFIEN="" S BMXSEC=NAME_" not a valid parameter for this update" Q
 . S FIELD=$P($G(^AGG(9009068.3,AGIEN,10,PFIEN,3)),U,1)
 . S EXEC=$G(^AGG(9009068.3,AGIEN,10,PFIEN,7))
 . I EXEC'="" X EXEC Q
 . I FIELD="" Q
 . S AGGDATA(FILE,IENS,FIELD)=$G(@NAME)
 ;
 I $G(AGGMCINS)="" S AGGDATA(9000003,DFN_",",.02)=$O(^AUTNINS("B","MEDICARE",""))
 D FILE^DIE("","AGGDATA","ERROR")
 ;
OTH ;
 I $G(AGGMCIMP)'="" D
 . I $G(^AUPNMCR(DFN,12,0))="" S ^AUPNMCR(DFN,12,0)="^9000003.01201D^^"
 . NEW DIC,DLAYGO,DA,Y,X
 . S DIC(0)="L",DA(1)=DFN,DIC="^AUPNMCR("_DA(1)_",12,",X=AGGMCIMP
 . D ^DIC
 I $G(AGGMCABN)'="" D
 . I $G(^AUPNMCR(DFN,13,0))="" S ^AUPNMCR(DFN,13,0)="^9000003.13D^^"
 . NEW DIC,DLAYGO,DA,X,Y
 . S DIC(0)="L",DA(1)=DFN,DIC="^AUPNMCR("_DA(1)_",13,",X=AGGMCABN
 . D ^DIC
 K AGGMCIMP,AGGMCABN
 ;
DONE ;
 S RESULT=1_U_U_RIEN_U_MIEN
 I $D(ERROR) S RESULT="-1"_U_$G(ERROR("DIERR",1,"TEXT",1))_U_U
 S II=II+1,@DATA@(II)=RESULT_$C(30)
 S II=II+1,@DATA@(II)=$C(31)
 ;
 ; Set last date updated and updated by
 I $P(RESULT,U,1)=1 D
 . S AGGDATAI(9000001,DFN_",",.03)=DT,AGGDATAI(9000001,DFN_",",.12)=DUZ
 . D FILE^DIE("I","AGGDATAI","ERROR")
 . S ^AGPATCH($$NOW^XLFDT(),DUZ(2),RIEN)=""
 . D EDIT^AGGEXPRT(DFN)
 ; Cleanup variables
 S NAME=""
 F  S NAME=$O(^AGG(9009068.3,AGIEN,10,"AC",NAME)) Q:NAME=""  K @NAME
 K ERROR
 Q
 ;
PATCH ;
 NEW AGDTS,COV
 S AGDTS=$$NOW^XLFDT(),COV=$P($G(^AUPNMCR(RIEN,11,MIEN,0)),U,3)
 S ^AGPATCH(AGDTS,DUZ(2),RIEN,COV)="MCARE^"_$P($G(^AUPNMCR(RIEN,0)),U,3,4)_U_$G(^AUPNMCR(RIEN,11,MIEN,0))
 S:$P($G(^AUPNMCR(RIEN,11,MIEN,0)),U,2)="" $P(^AGPATCH(AGDTS,DUZ(2),RIEN,COV),U,5)=DT
 Q
 ;
MCD() ;EP
 NEW IEN
 S IEN=$O(^AUTNINS("B","MEDICARE",""))
 Q IEN_$C(29)_"MEDICARE"
 ;
MCNM(DFN) ;EP - NAME
 N IEN,NAME
 S IEN=$O(^AUPNMCR("B",DFN,"")) I IEN]"" S NAME=$$GET1^DIQ(9000003,IEN_",",2101,"I") Q:NAME]"" NAME
 Q $P(^DPT(DFN,0),U,1)
 ;
MCDB(DFN) ;EP - DOB
 N IEN,DOB
 S IEN=$O(^AUPNMCR("B",DFN,"")) I IEN]"" S DOB=$$FMTE^AGGUL1($$GET1^DIQ(9000003,IEN_",",2102,"I")) Q:DOB]"" DOB
 Q $$FMTE^AGGUL1($$GET1^DIQ(2,DFN_",",.03,"I"))
 ;
MCLSTDT(DFN) ;EP - Medicare Last update
 ;
 N IEN
 S IEN=$O(^AUPNMCR("B",DFN,"")) Q:IEN="" ""
 Q $$FMTE^AGGUL1($$GET1^DIQ(9000003,IEN_",",.07,"I"))
 ;
MCRQMB(DFN) ;EP - Medicare Beneficiary Status
 N IEN
 S IEN=$O(^AUPNMCR("B",DFN,"")) Q:IEN="" ""
 Q $$GET1^DIQ(9000003,IEN_",",.08,"I")_$C(28)_$$GET1^DIQ(9000003,IEN_",",.08,"E")
 ;
MCRNMB(DFN) ;EP - Medicare Number
 N IEN
 S IEN=$O(^AUPNMCR("B",DFN,"")) Q:IEN="" ""
 Q $$GET1^DIQ(9000003,IEN_",",.03,"E")
 ;
MCRSUF(DFN) ;EP - Medicare Suffix
 N IEN
 S IEN=$O(^AUPNMCR("B",DFN,"")) Q:IEN="" ""
 Q $$GET1^DIQ(9000003,IEN_",",.04,"I")_$C(28)_$$GET1^DIQ(9000003,IEN_",",.04,"E")
 ;
MCRPRV(DFN) ;EP - Medicare Provider
 N IEN
 S IEN=$O(^AUPNMCR("B",DFN,"")) Q:IEN="" ""
 Q $$GET1^DIQ(9000003,IEN_",",.14,"E")
 ;
MCRDTO(DFN) ;EP - Medicare Date Obtained
 N IEN
 S IEN=$O(^AUPNMCR("B",DFN,"")) Q:IEN="" ""
 Q $$FMTE^AGGUL1($$GET1^DIQ(9000003,IEN_",",.16,"I"))
 ;
MCRCCF(DFN) ;EP - Medicare Card Copy on File
 N IEN
 S IEN=$O(^AUPNMCR("B",DFN,"")) Q:IEN="" ""
 Q $$GET1^DIQ(9000003,IEN_",",.15,"I")_$C(28)_$$GET1^DIQ(9000003,IEN_",",.15,"E")
 ;
MCRABN(DFN) ;EP - Advance Beneficiary Notice
 NEW ABN
 S ABN=$O(^AUPNMCR(DFN,13,"B",""),-1)
 I ABN=0 S ABN=""
 Q $$FMTE^AGGUL1(ABN)
 ;
MCRINFM(DFN) ;EP - IMP MSG FORM MCR SIG OBTAINED
 NEW SIGD
 S SIGD=$O(^AUPNMCR(DFN,12,"B",""),-1)
 I SIGD=0 S SIGD=""
 Q $$FMTE^AGGUL1(SIGD)
 ;
TRIG(DATA,DFN) ;EP - AGG MEDICARE TRIGGER
 ; Input
 ;   DFN - Patient record
 ;   PROC - Process; 'A' is add
 ;
 NEW UID,II,VISIBLE
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("AGGUPMCR",UID))
 K @DATA
 ;
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^AGGUPMCR D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 D HDR^AGGWTRIG
 S @DATA@(II)=HDR_$C(30)
 ;
 ;Always disable Date of Last Update field
 S SOURCE="AGGLSTDT",HELP="",TYPE="D",VALUE=$$MCLSTDT(DFN),ABLE="N" S:VALUE="" VISIBLE="N" D UP^AGGWTRIG
 ;
 ;Fill in Release of Information Date
 S SOURCE="AGGMCROI",HELP="",TYPE="D",VALUE=$$FMTE^AGGUL1($$GET1^DIQ(9000001,DFN_",",.04,"I")),ABLE="Y",VISIBLE="Y" D UP^AGGWTRIG
 ;
 ;If Release of Information Date is Blank, disable other fields
 I $$GET1^DIQ(9000001,DFN_",",.04,"I")="" D  G XTRIG
 . ;
 . S SOURCE="AGGMCNME",TYPE="X",VALUE="",ABLE="N",VISIBLE="Y",HELP="" D UP^AGGWTRIG
 . S SOURCE="AGGMCNUM",TYPE="X",VALUE="",ABLE="N",VISIBLE="Y",HELP="" D UP^AGGWTRIG
 . S SOURCE="AGGMCSUF",TYPE="T",VALUE="",ABLE="N",VISIBLE="Y",HELP="" D UP^AGGWTRIG
 . S SOURCE="AGGMCINS",TYPE="T",VALUE="",ABLE="N",VISIBLE="Y",HELP="" D UP^AGGWTRIG
 . S SOURCE="AGGMCPCP",TYPE="X",VALUE="",ABLE="N",VISIBLE="Y",HELP="" D UP^AGGWTRIG
 . S SOURCE="AGGMCDOB",TYPE="D",VALUE="",ABLE="N",VISIBLE="Y",HELP="" D UP^AGGWTRIG
 . S SOURCE="AGGMCCCF",TYPE="K",VALUE="",ABLE="N",VISIBLE="Y",HELP="" D UP^AGGWTRIG
 . S SOURCE="AGGMCCRD",TYPE="D",VALUE="",ABLE="N",VISIBLE="Y",HELP="" D UP^AGGWTRIG
 . S SOURCE="AGGMCQMB",TYPE="C",VALUE="",ABLE="N",VISIBLE="Y",HELP="" D UP^AGGWTRIG
 . S SOURCE="MCELIG",TYPE="M",VALUE="",ABLE="N",VISIBLE="Y",HELP="" D UP^AGGWTRIG
 . S SOURCE="SEQNBR",TYPE="X",VALUE="",ABLE="N",VISIBLE="Y",HELP="" D UP^AGGWTRIG
 . S SOURCE="AGGMCABN",TYPE="D",VALUE="",ABLE="N",VISIBLE="Y",HELP="" D UP^AGGWTRIG
 . S SOURCE="AGGMCIMP",TYPE="D",VALUE="",ABLE="N",VISIBLE="Y",HELP="" D UP^AGGWTRIG
 ;
 S SOURCE="AGGMCINS",ABLE="Y",HELP="",VISIBLE="Y",TYPE="T",VALUE=$$MCD() D UP^AGGWTRIG
 S SOURCE="AGGMCNME",ABLE="Y",HELP="",VISIBLE="Y",TYPE="X",VALUE=$$MCNM(DFN) D UP^AGGWTRIG
 S SOURCE="AGGMCDOB",ABLE="Y",HELP="",VISIBLE="Y",TYPE="D",VALUE=$$MCDB(DFN) D UP^AGGWTRIG
 S SOURCE="AGGMCQMB",ABLE="Y",HELP="",VISIBLE="Y",TYPE="C",VALUE=$$MCRQMB(DFN) D UP^AGGWTRIG
 S SOURCE="AGGMCNUM",ABLE="Y",HELP="",VISIBLE="Y",TYPE="X",VALUE=$$MCRNMB(DFN) D UP^AGGWTRIG
 S SOURCE="AGGMCSUF",ABLE="Y",HELP="",VISIBLE="Y",TYPE="T",VALUE=$$MCRSUF(DFN) D UP^AGGWTRIG
 S SOURCE="AGGMCPCP",ABLE="Y",HELP="",VISIBLE="Y",TYPE="X",VALUE=$$MCRPRV(DFN) D UP^AGGWTRIG
 S SOURCE="AGGMCCRD",ABLE="Y",HELP="",VISIBLE="Y",TYPE="D",VALUE=$$MCRDTO(DFN) D UP^AGGWTRIG
 S SOURCE="AGGMCCCF",ABLE="Y",HELP="",VISIBLE="Y",TYPE="C",VALUE=$$MCRCCF(DFN) D UP^AGGWTRIG
 S SOURCE="AGGMCABN",ABLE="Y",HELP="",VISIBLE="Y",TYPE="D",VALUE=$$MCRABN(DFN) D UP^AGGWTRIG
 S SOURCE="AGGMCIMP",ABLE="Y",HELP="",VISIBLE="Y",TYPE="D",VALUE=$$MCRINFM(DFN) D UP^AGGWTRIG
 ;
XTRIG S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
ROI(DATA,DFN,AGGMCROI) ;EP - AGG MEDICARE ROI TRIGGER
 ; Input
 ;   DFN - Patient IEN
 ;   AGGMCROI - Release of Information Date
 ;
 NEW UID,II,SOURCE,TYPE,VALUE,ABLE,VISIBLE,HELP,HDR
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("AGGUPMCR",UID))
 K @DATA
 ;
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^AGGUPMCR D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 D HDR^AGGWTRIG
 S @DATA@(II)=HDR_$C(30)
 ;
 ;If Release of Information Date is Blank, disable other fields
 I $G(AGGMCROI)]"" D  G XROI
 . ;
 . S SOURCE="AGGMCNME",TYPE="X",VALUE=$$MCNM(DFN),ABLE="Y",VISIBLE="",HELP="" D UP^AGGWTRIG
 . S SOURCE="AGGMCNUM",TYPE="X",VALUE="",ABLE="Y",VISIBLE="",HELP="" D UP^AGGWTRIG
 . S SOURCE="AGGMCSUF",TYPE="T",VALUE="",ABLE="Y",VISIBLE="",HELP="" D UP^AGGWTRIG
 . S SOURCE="AGGMCINS",TYPE="T",VALUE="",ABLE="Y",VISIBLE="",HELP="" D UP^AGGWTRIG
 . S SOURCE="AGGMCPCP",TYPE="X",VALUE="",ABLE="Y",VISIBLE="",HELP="" D UP^AGGWTRIG
 . S SOURCE="AGGMCDOB",TYPE="D",VALUE=$$MCDB(DFN),ABLE="Y",VISIBLE="",HELP="" D UP^AGGWTRIG
 . S SOURCE="AGGMCCCF",TYPE="K",VALUE="",ABLE="Y",VISIBLE="",HELP="" D UP^AGGWTRIG
 . S SOURCE="AGGMCCRD",TYPE="D",VALUE="",ABLE="Y",VISIBLE="",HELP="" D UP^AGGWTRIG
 . S SOURCE="AGGMCQMB",TYPE="C",VALUE="",ABLE="Y",VISIBLE="",HELP="" D UP^AGGWTRIG
 . S SOURCE="MCELIG",TYPE="M",VALUE="",ABLE="Y",VISIBLE="",HELP="" D UP^AGGWTRIG
 . S SOURCE="SEQNBR",TYPE="X",VALUE="",ABLE="Y",VISIBLE="",HELP="" D UP^AGGWTRIG
 . S SOURCE="AGGMCABN",ABLE="Y",HELP="",VISIBLE="Y",TYPE="D",VALUE=$$MCRABN(DFN) D UP^AGGWTRIG
 . S SOURCE="AGGMCIMP",ABLE="Y",HELP="",VISIBLE="Y",TYPE="D",VALUE=$$MCRINFM(DFN) D UP^AGGWTRIG
 ;
 I $G(AGGMCROI)="" D  G XROI
 . ;
 . S SOURCE="AGGMCNME",TYPE="X",VALUE="",ABLE="N",VISIBLE="",HELP="" D UP^AGGWTRIG
 . S SOURCE="AGGMCNUM",TYPE="X",VALUE="",ABLE="N",VISIBLE="",HELP="" D UP^AGGWTRIG
 . S SOURCE="AGGMCSUF",TYPE="T",VALUE="",ABLE="N",VISIBLE="",HELP="" D UP^AGGWTRIG
 . S SOURCE="AGGMCINS",TYPE="T",VALUE="",ABLE="N",VISIBLE="",HELP="" D UP^AGGWTRIG
 . S SOURCE="AGGMCPCP",TYPE="X",VALUE="",ABLE="N",VISIBLE="",HELP="" D UP^AGGWTRIG
 . S SOURCE="AGGMCDOB",TYPE="D",VALUE="",ABLE="N",VISIBLE="",HELP="" D UP^AGGWTRIG
 . S SOURCE="AGGMCCCF",TYPE="K",VALUE="",ABLE="N",VISIBLE="",HELP="" D UP^AGGWTRIG
 . S SOURCE="AGGMCCRD",TYPE="D",VALUE="",ABLE="N",VISIBLE="",HELP="" D UP^AGGWTRIG
 . S SOURCE="AGGMCQMB",TYPE="C",VALUE="",ABLE="N",VISIBLE="",HELP="" D UP^AGGWTRIG
 . S SOURCE="MCELIG",TYPE="M",VALUE="",ABLE="N",VISIBLE="",HELP="" D UP^AGGWTRIG
 . S SOURCE="SEQNBR",TYPE="X",VALUE="",ABLE="N",VISIBLE="",HELP="" D UP^AGGWTRIG
 . S SOURCE="AGGMCABN",TYPE="D",VALUE="",ABLE="N",VISIBLE="Y",HELP="" D UP^AGGWTRIG
 . S SOURCE="AGGMCIMP",TYPE="D",VALUE="",ABLE="N",VISIBLE="Y",HELP="" D UP^AGGWTRIG
 ;
XROI S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
PARS ;
 F BQ=1:1:$L(PARMS,$C(28)) D  Q:$G(BMXSEC)'=""
 . S PDATA=$P(PARMS,$C(28),BQ) Q:PDATA=""
 . S NAME=$P(PDATA,"=",1),VALUE=$P(PDATA,"=",2,99)
 . ;I VALUE="" S VALUE="@"
 . ;I VALUE="" Q
 . S PFIEN=$O(^AGG(9009068.3,AGIEN,10,"AC",NAME,""))
 . I PFIEN="" S BMXSEC=NAME_" not a valid parameter for this update" Q
 . S PTYP=$P($G(^AGG(9009068.3,AGIEN,10,PFIEN,1)),U,1)
 . I PTYP="D" S VALUE=$$DATE^AGGUL1(VALUE)
 . I PTYP="C" D
 .. I VALUE="" Q
 .. S CHIEN=$O(^AGG(9009068.3,AGIEN,10,PFIEN,5,"B",VALUE,"")) I CHIEN="" Q
 .. S VALUE=$P(^AGG(9009068.3,AGIEN,10,PFIEN,5,CHIEN,0),U,2)
 . I PTYP="W" D  Q
 .. F AGI=1:1  S AGJ=$P(VALUE,$C(10),AGI) Q:AGJ=""  D
 ... S AGWP(AGI,0)=$$CTRL^AGGUL1(AGJ)
 . S @NAME=VALUE
 Q