BQICASPL ;PRXM/HC/ALA-Community Alerts Splash ; 11 Oct 2007  4:21 PM
 ;;2.2;ICARE MANAGEMENT SYSTEM;;Jul 28, 2011;Build 37
 ;
EN(DATA,FAKE) ;EP -- BQI GET COMM ALERTS SPLASH
 NEW UID,II,DATE,IEN,COMM,CMN,DCAT,DIAG,DXC,DXN,NUM,OCDT,TYP,TYPE,TEMP,TCAT
 NEW ADATE,DCN,LINK,PAT
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQICASPL",UID)),TEMP=$NA(^TMP("BQITMP",UID))
 K @DATA,@TEMP
 ;
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQICASPL D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 D GRID(.DATA)
 Q
 S @DATA@(II)="T00030COMMUNITY^T00045ALERT_TYPE^T00100TYPE_LINK^T00045DX_CAT^I00005NUM_CASES^I00005TWEN_CASES^D00015VISITDATE"_$C(30)
 ;
 S ADATE=$$DATE^BQIUL1("T-30")
 ;S ADATE=$$DATE^BQIUL1("T-36M")
 ;
 S CMN=0
 F  S CMN=$O(^BQI(90507.6,CMN)) Q:'CMN  D FND
 D SOR
 ;
DONE ;
 S II=II+1,@DATA@(II)=$C(31)
 K @TEMP
 Q
 ;
SOR ; Sort out the alerts
 NEW COMM,TYPE,LINK,DCAT,NUM,OCDT,TWEN
 S COMM=""
 F  S COMM=$O(@TEMP@(COMM)) Q:COMM=""  D
 . S CMN=""
 . F  S CMN=$O(@TEMP@(COMM,CMN)) Q:CMN=""  D
 .. S TYPE=""
 .. F  S TYPE=$O(@TEMP@(COMM,CMN,TYPE)) Q:TYPE=""  D
 ... NEW DA,IENS,BQIH,BQI
 ... S BQIH=$$SPM^BQIGPUTL()
 ... S BQI=$O(^BQI(90508,BQIH,15,"B",TYPE,""))
 ... S DA(1)=BQIH,DA=BQI,IENS=$$IENS^DILF(.DA)
 ... S LINK=$$GET1^DIQ(90508.015,IENS,.02,"E")
 ... S DCAT=""
 ... F  S DCAT=$O(@TEMP@(COMM,CMN,TYPE,DCAT)) Q:DCAT=""  D
 .... S NUM=$P(@TEMP@(COMM,CMN,TYPE,DCAT),U,1)
 .... S TWEN=$P(@TEMP@(COMM,CMN,TYPE,DCAT),U,2)
 .... S OCDT=$O(@TEMP@(COMM,CMN,TYPE,DCAT,""),-1)
 .... S TCAT=$S(DCAT="Ideation":"Ideation with Plan and Intent",DCAT="Completion":"Completed Suicide",1:DCAT)
 .... ;S CMN=@TEMP@(COMM,CMN,TYPE,DCAT,OCDT)
 .... S II=II+1,@DATA@(II)=COMM_U_TYPE_U_LINK_U_TCAT_U_NUM_U_TWEN_U_$$FMTE^BQIUL1(OCDT)_U_CMN_$C(30)
 ;
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
FND ;EP - Find the alerts for a date and a community
 NEW COMM,TYP,TYPE,DXC,DCAT,DCN,LOOK,ADATE,DXN,QFL,TWDT,TCAT
 S COMM=$$GET1^DIQ(90507.6,CMN_",",.01,"E")
 S ADATE=$$DATE^BQIUL1("T-30"),TWDT=$$DATE^BQIUL1("T-1")
 ; Get the type of the alert, either CDC NND or Suicide
 S TYP=0
 F  S TYP=$O(^BQI(90507.6,CMN,1,TYP)) Q:'TYP  D
 . S TYPE=$P(^BQI(90507.6,CMN,1,TYP,0),U,1)
 . ; Get the Diagnosis Category
 . S DXC=0
 . F  S DXC=$O(^BQI(90507.6,CMN,1,TYP,1,DXC)) Q:'DXC  D
 .. S DCAT=$P(^BQI(90507.6,CMN,1,TYP,1,DXC,0),U,1)
 .. I TYPE'="Suicidal Behavior" S QFL=0 D  Q:QFL
 ... S DCN=$$FIND1^DIC(90507.8,"","BX",DCAT,"","","ERROR")
 ... I DCN=0 S QFL=1 Q
 ... S LOOK=$$VAL^BQICAVW(DUZ,DCN)
 ... I $P(LOOK,U,1)="OFF"!($P(LOOK,U,1)=0) S QFL=1 Q
 ... S ADATE=$P(LOOK,U,2)
 .. S DXN=0
 .. F  S DXN=$O(^BQI(90507.6,CMN,1,TYP,1,DXC,1,DXN)) Q:'DXN  D
 ... NEW DA,IENS
 ... S DA(3)=CMN,DA(2)=TYP,DA(1)=DXC,DA=DXN,IENS=$$IENS^DILF(.DA)
 ... S OCDT=$P(^BQI(90507.6,CMN,1,TYP,1,DXC,1,DXN,0),U,2)
 ... I (OCDT\1)'>ADATE Q
 ... ;S PAT=$P(^BQI(90507.6,CMN,1,TYP,1,DXC,1,DXN,0),U,4)
 ... S @TEMP@(COMM,CMN,TYPE,DCAT,OCDT)=CMN
 ... S $P(@TEMP@(COMM,CMN,TYPE,DCAT),U,1)=$P($G(@TEMP@(COMM,CMN,TYPE,DCAT)),U,1)+1
 ... I OCDT=TWDT S $P(@TEMP@(COMM,CMN,TYPE,DCAT),U,2)=$P($G(@TEMP@(COMM,CMN,TYPE,DCAT)),U,2)+1
 Q
 ;
PAT(DATA,DFN) ;EP -- BQI GET COMM ALERTS BY PATIENT
 ; Gets a list of alerts that go along with the patient's community
 ;
 NEW UID,II,DATE,IEN,COMM,ADATE,CMN
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQICAPAT",UID)),TEMP=$NA(^TMP("BQITMP",UID))
 K @DATA,@TEMP
 ;
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQICASPL D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 S @DATA@(II)="T00030COMMUNITY^T00045ALERT_TYPE^T00100TYPE_LINK^T00045DX_CAT^I00005NUM_CASES^I00005TWEN_CASES^D00015VISITDATE^I00010COMM_IEN"_$C(30)
 S ADATE=$$DATE^BQIUL1("T-30")
 ;S ADATE=$$DATE^BQIUL1("T-36M") ;**Temporary for testing**
 ;
 S COMM=$$GET1^DIQ(9000001,DFN_",",1117,"I"),CMN=COMM
 ; If no alerts for the patient's community, quit
 I $D(^BQI(90507.6,COMM))<1 G DONE
 ;
 D FND
 D SOR
 G DONE
 ;
GRID(DATA,FAKE) ; EP - BQI GET COMM ALERTS GRID
 ; Gets a list of alerts that go along with the patient's community
 ;
 NEW UID,II,DATE,IEN,COMM
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQICAGRD",UID)),TEMP=$NA(^TMP("BQITMP",UID))
 K @DATA,@TEMP
 ;
 S II=0
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQICASPL D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 S ADATE=$$DATE^BQIUL1("T-30"),TWDT=$$DATE^BQIUL1("T-1")
 ;S ADATE=$$DATE^BQIUL1("T-36M") ;temporary initialization of date ***
 ;
 S @DATA@(II)="T00030COMMUNITY^T00045ALERT_TYPE^T00100TYPE_LINK^T00045DX_CAT^I00005NUM_CASES^I00005TWEN_CASES^D00015VISITDATE^I00010COMM_IEN"_$C(30)
 ;
 S CMN=0
 F  S CMN=$O(^BQI(90507.6,CMN)) Q:'CMN  D
 . S COMM=$$GET1^DIQ(90507.6,CMN_",",.01,"E")
 . ; Get the type of the alert, either CDC NND or Suicide
 . S TYP=0
 . F  S TYP=$O(^BQI(90507.6,CMN,1,TYP)) Q:'TYP  D
 .. S TYPE=$P(^BQI(90507.6,CMN,1,TYP,0),U,1)
 .. NEW DA,IENS,BQIH,BQI,SDATE
 .. S BQIH=$$SPM^BQIGPUTL()
 .. S BQI=$O(^BQI(90508,BQIH,15,"B",TYPE,""))
 .. S DA(1)=BQIH,DA=BQI,IENS=$$IENS^DILF(.DA)
 .. S SDATE=$$GET1^DIQ(90508.015,IENS,.03,"E")
 .. I SDATE'="" S ADATE=$$DATE^BQIUL1("T-"_SDATE)
 .. ; Get the Diagnosis Category
 .. S DXC=0
 .. F  S DXC=$O(^BQI(90507.6,CMN,1,TYP,1,DXC)) Q:'DXC  D
 ... S DCAT=$P(^BQI(90507.6,CMN,1,TYP,1,DXC,0),U,1)
 ... I TYPE'="Suicidal Behavior" S QFL=0 D  Q:QFL
 .... S DCN=$$FIND1^DIC(90507.8,"","BX",DCAT,"","","ERROR")
 .... I DCN=0 S QFL=1 Q
 .... S LOOK=$$VAL^BQICAVW(DUZ,DCN)
 .... I $P(LOOK,U,1)="OFF"!($P(LOOK,U,1)=0) S QFL=1 Q
 .... S ADATE=$P(LOOK,U,2)
 ... S DXN=0
 ... F  S DXN=$O(^BQI(90507.6,CMN,1,TYP,1,DXC,1,DXN)) Q:'DXN  D
 .... NEW DA,IENS
 .... S DA(3)=CMN,DA(2)=TYP,DA(1)=DXC,DA=DXN,IENS=$$IENS^DILF(.DA)
 .... S OCDT=$P(^BQI(90507.6,CMN,1,TYP,1,DXC,1,DXN,0),U,2)
 .... I (OCDT\1)'>ADATE Q
 .... ;S PAT=$P(^BQI(90507.6,CMN,1,TYP,1,DXC,1,DXN,0),U,4)
 .... S @TEMP@(COMM,CMN,TYPE,DCAT,OCDT)=CMN
 .... S $P(@TEMP@(COMM,CMN,TYPE,DCAT),U,1)=$P($G(@TEMP@(COMM,CMN,TYPE,DCAT)),U,1)+1
 .... I OCDT=TWDT S $P(@TEMP@(COMM,CMN,TYPE,DCAT),U,2)=$P($G(@TEMP@(COMM,CMN,TYPE,DCAT)),U,2)+1
 D SOR
 G DONE