BQIPTFHR ;VNGT/HS/BEE-Family History Display ; 12 Sep 2008  12:30 PM
 ;;2.1;ICARE MANAGEMENT SYSTEM;;Feb 07, 2011
 ;
 Q
 ;
EN(DATA,DFN) ; EP -- BQI GET FAM HIST DISPLAY
 ;
 ;Description - all the family history that a patient has
 ;
 ;Input Parameters
 ;  DFN - Patient internal entry number
 ;
 NEW ARRAY,UID,II,FAM,FHCIEN,FHRIEN,FHRREL,FHRDES,FHRSTS,FHRDTU,FHRMB,FHRMBT,FHRMBD,FHRAAD,FHRCOD,RORD,RELNM
 ;
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQIPTFHR",UID))
 K @DATA
 ;
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQIPTFHR D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 I $$VERSION^XPDUTL("BJPC")<2.0 S BMXSEC="RPC Call Failed: IHS PCC SUITE 2.0 must be installed in RPMS" Q
 ;
 ;Verify Patient DFN is populated
 I $G(DFN)="" S BMXSEC="Patient DFN is required" Q
 ;
 S @DATA@(II)="I00010FHCIEN^I00010FHRIEN^T00060FHRREL^T00030FHRDES^T00060FHCDX^T00080FHCNAR^"
 S @DATA@(II)=@DATA@(II)_"T00020FHCAAO^T00020FHRSTS^D00030FHCDTN^T00100APCDTNQ^T00050FHCPRV^"
 S @DATA@(II)=@DATA@(II)_"T00015FHRAAD^T00060FHRCOD^T00010FHRMB^T00020FHRMBT^T00030FHRMBD^D00015FHCDTM^D00030FHRDTU"_$C(30)
 ;
 S FHCIEN="" F  S FHCIEN=$O(^AUPNFH("AC",DFN,FHCIEN)) Q:FHCIEN=""  D
 . ;
 . N APCDTNQ,BQICND,DIEN,FHCAAO,FHCDX,FHCDTM,FHCDTN,FHCNAR,FHCPRV,REIN
 . D GETS^DIQ(9000014,FHCIEN,"**","IE","BQICND")
 . ;
 . ;Date Noted
 . S FHCDTN=$G(BQICND(9000014,FHCIEN_",",".03","I"))
 . ;
 . ;DX Code (Condition)
 . S DIEN=$$GET1^DIQ(9000014,FHCIEN_",",.01,"I") ;Using $$GET1^DIQ as GETS^DIQ sometimes omits .01 entry
 . I DIEN="" Q
 . I $T(ICDDX^ICDCODE)'="" S FHCDX=$$ICD9^BQIUL3(DIEN,FHCDTN,2)_"-"_$$ICD9^BQIUL3(DIEN,FHCDTN,4) ; csv
 . I $T(ICDDX^ICDCODE)="" S FHCDX=$$GET1^DIQ(80,DIEN_",",.01,"E")_"-"_$$GET1^DIQ(80,DIEN_",",3,"E")
 . S FHCDX=DIEN_$C(28)_FHCDX S:$P(FHCDX,$C(28))="-" FHCDX=""
 . ;
 . ;Diagnosis Narrative (Provider Narrative)
 . S FHCNAR=$G(BQICND(9000014,FHCIEN_",",".04","E"))
 . ;
 . ;Narrative
 . S APCDTNQ=$G(BQICND(9000014,FHCIEN_",",".04","I"))_$C(28)_FHCNAR
    . S:$P(APCDTNQ,$C(28))="" APCDTNQ=""
    . ;
    . ;Age at Onset
    . S FHCAAO=$G(BQICND(9000014,FHCIEN_",",".11","I"))_$C(28)_$G(BQICND(9000014,FHCIEN_",",".11","E"))
    . S:$P(FHCAAO,$C(28))="" FHCAAO=""
    . ;
    . ;Provider
    . S FHCPRV=$G(BQICND(9000014,FHCIEN_",",".08","I"))_$C(28)_$G(BQICND(9000014,FHCIEN_",",".08","E"))
    . S:$P(FHCPRV,$C(28))="" FHCPRV=""
    . ;
 . ;Relation IEN
 . S FHRIEN=$G(BQICND(9000014,FHCIEN_",",".09","I"))
 . I FHRIEN'="" S FAM(FHRIEN)=""
 . ;
 . ;Pull Relation Information - FHRREL, FHRDES, FHRSTS, FHRDTU, FHRMB, FHRMBT, FHRMBD, FHRAAD, FHRCOD
 . D GFAM(FHRIEN)
 . ;
 . ;Date Last Modified
 . S FHCDTM=$G(BQICND(9000014,FHCIEN_",",".12","I"))
 . ;
 . ;Set up sorting array
 . S ARRAY(RORD,RELNM,FHCIEN)=FHCIEN_U_FHRIEN_U_FHRREL_U_FHRDES_U_FHCDX_U_FHCNAR_U_FHCAAO_U_FHRSTS_U_$$FMTE^BQIUL1(FHCDTN)_U_APCDTNQ_U_FHCPRV_U_FHRAAD_U_FHRCOD_U_FHRMB_U_FHRMBT_U_FHRMBD_U_$$FMTE^BQIUL1(FHCDTM)_U_$$FMTE^BQIUL1(FHRDTU)_$C(30)
 ;
 S RIEN="" F  S RIEN=$O(^AUPNFHR("AA",DFN,RIEN)) Q:'RIEN  D
 . S FHRIEN="" F  S FHRIEN=$O(^AUPNFHR("AA",DFN,RIEN,FHRIEN)) Q:FHRIEN=""  D
 .. I $D(FAM(FHRIEN)) Q
 .. ;
 .. ; For family without diagnoses search FAMILY HISTORY FAMILY MEMBERS file
 .. D GFAM(FHRIEN)
 .. S ARRAY(RORD,RELNM,"R"_FHRIEN)=U_FHRIEN_U_FHRREL_U_FHRDES_U_U_U_U_FHRSTS_U_U_U_U_FHRAAD_U_FHRCOD_U_FHRMB_U_FHRMBT_U_FHRMBD_U_U_$$FMTE^BQIUL1(FHRDTU)_$C(30)
 ;
 ;Create record entries
 S RORD="" F  S RORD=$O(ARRAY(RORD)) Q:RORD=""  D
 . S RELNM="" F  S RELNM=$O(ARRAY(RORD,RELNM)) Q:RELNM=""  D
 .. S FHCIEN="" F  S FHCIEN=$O(ARRAY(RORD,RELNM,FHCIEN)) Q:FHCIEN=""  D
 ... S II=II+1,@DATA@(II)=ARRAY(RORD,RELNM,FHCIEN)
 S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
ERR ;
 D ^%ZTER
 NEW Y,ERRDTM
 S Y=$$NOW^XLFDT() X ^DD("DD") S ERRDTM=Y
 S BMXSEC="Recording that an error occurred at "_ERRDTM
 I $D(II),$D(DATA) S II=II+1,@DATA@(II)=$C(31)
 Q
 ;
GFAM(FHRIEN) ; Get FAMILY HISTORY FAMILY MEMBERS Data
 ;
 N BQIREL,RIEN,RELT
 S (FHRREL,FHRDES,FHRSTS,FHRDTU,FHRMB,FHRMBT,FHRMBD,FHRAAD,FHRCOD)=""
 ;
 I FHRIEN="" S (RORD,RELNM)="~" Q
 ;
 D GETS^DIQ(9000014.1,FHRIEN,"**","IE","BQIREL")
 ;
 ;Relative (Relation) and Sort variables
 S REIN=$G(BQIREL(9000014.1,FHRIEN_",",".01","I"))
 S RELT=$G(BQIREL(9000014.1,FHRIEN_",",".01","E"))
 S RELNM=RELT S:RELNM="" RELNM="~"
 S FHRREL="" I REIN'="" S FHRREL=REIN_$C(28)_RELT
 S RORD=$$GET1^DIQ(9999999.36,REIN_",",2103,"E") S:RORD="" RORD="~"
 ;
 ;Relation Modifier (Description)
 S FHRDES=$G(BQIREL(9000014.1,FHRIEN_",",".03","E"))
 ;
 ;Status
 S FHRSTS=$G(BQIREL(9000014.1,FHRIEN_",",".04","I"))_$C(28)_$G(BQIREL(9000014.1,FHRIEN_",",".04","E"))
 S:$P(FHRSTS,$C(28))="" FHRSTS=""
 ;
 ;Date Updated
 S FHRDTU=$G(BQIREL(9000014.1,FHRIEN_",",".09","I"))
 ;
 ;Multiple Birth Status
 S FHRMB=$G(BQIREL(9000014.1,FHRIEN_",",".07","I"))_$C(28)_$G(BQIREL(9000014.1,FHRIEN_",",".07","E"))
 S FHRMBD=FHRMB
 S:$P(FHRMB,$C(28))="" FHRMB=""
 ;
 ;Multiple Birth Type
 S FHRMBT=$G(BQIREL(9000014.1,FHRIEN_",",".08","I"))_$C(28)_$G(BQIREL(9000014.1,FHRIEN_",",".08","E"))
 S FHRMBD=FHRMBD_$C(28)_FHRMBT
 S:$P(FHRMBT,$C(28))="" FHRMBT=""
 ;
 ;Multiple Birth Display
 I $TR(FHRMBD,$C(28))="" S FHRMBD=""
 ;
 ;Age at Death
 S FHRAAD=$G(BQIREL(9000014.1,FHRIEN_",",".05","I"))_$C(28)_$G(BQIREL(9000014.1,FHRIEN_",",".05","E"))
 S:$P(FHRAAD,$C(28))="" FHRAAD=""
 ;
 ;Cause of Death
 S FHRCOD=$G(BQIREL(9000014.1,FHRIEN_",",".06","E"))
 ;
 Q