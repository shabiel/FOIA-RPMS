AGGALTRG ;VNGT/HS/ALA-Alternate Resources Trigger ; 01 Oct 2010  11:00 AM
 ;;1.0;PATIENT REGISTRATION GUI;;Nov 15, 2010
 ;
 ;
RAB(DATA,DFN) ; EP -- AGG ROI AOB INIT TRIG
 ; Input
 ;   DFN      - Patient IEN
 ;
 NEW UID,II,VALUE,SOURCE,HELP,TYPE,ABLE,REQ,CLEAR,HDR,PHREC,REC,RECPTR,X,END
 NEW ACTIVE,AGSEL,AOPCOINS,DATEINEF,FAC,INSGEND,INSPTR,ISACTIVE,RELPOLHO
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("AGGALTRG",UID))
 K @DATA
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^AGGWTRIG D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 D HDR
 S @DATA@(II)=HDR_$C(30),REQ="O"
 ;
 I $$ROIMISS^AGEDERR4(DFN) D
 . S SOURCE="AGGPTROI",REQ="R",VALUE="",ABLE="Y",TYPE="D",CLEAR="",HELP="Release of Information is missing" D UP
 I $$AOBMISS^AGEDERR4(DFN) D
 . S SOURCE="AGGPTAOB",REQ="R",VALUE="",ABLE="Y",TYPE="D",CLEAR="",HELP="Assignment of Benefits Missing" D UP
 ;
 I $$ROIEXP^AGEDERR4(DFN) D
 . S SOURCE="AGGPTROI",REQ="R",VALUE="",ABLE="Y",TYPE="D",CLEAR="AGGPTROI",HELP="Release of Information Expired past 1 year" D UP
 I $$ROIEXP^AGEDERR1(DFN) D
 . S SOURCE="AGGPTROI",REQ="O",VALUE="",ABLE="Y",TYPE="D",CLEAR="",HELP="Release of Information Expired past 1 year" D UP
 ;
 I $$AOBDUE^AGEDERR4(DFN) D
 . S SOURCE="AGGPTAOB",REQ="R",VALUE="",ABLE="Y",TYPE="D",CLEAR="AGGPTAOB",HELP="AOB expired (past one year) or AOB comes before eligibility start date" D UP
 I $$AOBDUE^AGEDERR1(DFN) D
 . S SOURCE="AGGPTAOB",REQ="O",VALUE="",ABLE="Y",TYPE="D",CLEAR="",HELP="AOB expired (past one year) or AOB comes before eligibility start date" D UP
 ;
DONE ;
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
UP ;
 S II=II+1,@DATA@(II)=SOURCE_U_TYPE_U_VALUE_U_ABLE_U_$G(REQ)_U_$G(CLEAR)_U_HELP_$C(30)
 Q
 ;
HDR ;
 S HDR="T00008SOURCE^T00001CODE_TYPE^T01024PARMS^T00001ABLE_FLAG^T00001REQ_OPT^T00100CLEAR_FIELDS^T00200HELP_TEXT"
 Q
 ;
ROI(ROI) ;EP - Return error (RESULT=-1, MSG=ERROR MESSAGE) for ROI issues
 I $$RQROI^AGEDERR4(DUZ(2)),ROI="" Q "-1^Release of Information is Required"
 I ROI="" Q ""
 S ROI=$$DATE^AGGUL1(ROI)
 I ROI>DT Q "-1^The Release of Information date cannot be in the future."
 Q ""