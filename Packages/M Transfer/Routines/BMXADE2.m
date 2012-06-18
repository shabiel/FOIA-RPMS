BMXADE2 ; IHS/OIT/HMW - BMXNet ADO.NET PROVIDER ;
 ;;4.0;BMX;;JUN 28, 2010
 ;
 ;
 ;Dental Excel report demo
 ;
BMXADE(BMXGBL,BMXBEG,BMXEND)    ;EP
 ;Returns recordset containing services and minutes by reporting facility, Provider, and ADA Code
 ;
 N BMXBEGDT,BMXENDDT,BMXTMP,BMXDT,BMXRD,BMXIEN,BMXNOD,BMXCOM,BMXFAC,BMXSU,BMXCOMP,BMXSUP,BMXFACP,BMXSVC,BMXMIN,BMXLVL,BMXFEE
 S U="^",BMXRD=$C(30)
 K ^BMXTEMP($J),^BMXTMP($J)
 S BMXGBL="^BMXTEMP("_$J_")"
 S ^BMXTEMP($J,0)="T00030FACILITY^T00030PROVIDER^T00030ADA_CODE^T00030LEVEL^I00030SERVICES^I00030MINUTES^I00030FEE"_BMXRD
 S X=BMXBEG,%DT="P" D ^%DT S BMXBEGDT=Y
 S X=BMXEND,%DT="P" D ^%DT S BMXENDDT=Y
 I BMXENDDT<BMXBEGDT S BMXTMP=BMXENDDT,BMXENDDT=BMXBEGDT,BMXBEGDT=BMXTMP
 S BMXBEGDT=$P(BMXBEGDT,".")
 S BMXENDDT=$P(BMXENDDT,"."),$P(BMXENDDT,".",2)=99999
 ;
 ;$O Thru ADEPCD("AC" DATE X-REF
 ;Temp global is (FAC,PROV,CODE)=SVCS^MINS
 ;
 S BMXDT=BMXBEGDT F  S BMXDT=$O(^ADEPCD("AC",BMXDT)) Q:'+BMXDT  Q:BMXDT>BMXENDDT  D
 . S BMXIEN=0 F  S BMXIEN=$O(^ADEPCD("AC",BMXDT,BMXIEN)) Q:'+BMXIEN  D
 . . Q:'$D(^ADEPCD(BMXIEN,0))
 . . S BMXNOD=^ADEPCD(BMXIEN,0)
 . . S BMXFACP=+$P(BMXNOD,U,3)
 . . S BMXPRVP=+$P(BMXNOD,U,4)
 . . S BMXCODP=0 F  S BMXCODP=$O(^ADEPCD(BMXIEN,"ADA","B",BMXCODP)) Q:'+BMXCODP  D
 . . . D CALCMIN(BMXCODP,.BMXMIN)
 . . . D CALCFEE(BMXCODP,.BMXFEE)
 . . . S BMXCODPS=0,BMXSVC=0 F  S BMXCODPS=$O(^ADEPCD(BMXIEN,"ADA","B",BMXCODP,BMXCODPS)) Q:'+BMXCODPS  D
 . . . . S BMXSVC=BMXSVC+1
 . . . S:'$D(^BMXTMP($J,BMXFACP,BMXPRVP,BMXCODP)) ^BMXTMP($J,BMXFACP,BMXPRVP,BMXCODP)="0^0"
 . . . S $P(^BMXTMP($J,BMXFACP,BMXPRVP,BMXCODP),U)=$P(^(BMXCODP),U)+BMXSVC
 . . . S $P(^BMXTMP($J,BMXFACP,BMXPRVP,BMXCODP),U,2)=$P(^(BMXCODP),U,2)+(BMXSVC*BMXMIN)
 . . . S $P(^BMXTMP($J,BMXFACP,BMXPRVP,BMXCODP),U,3)=$P(^(BMXCODP),U,3)+(BMXSVC*BMXFEE)
 . . . Q
 . . Q
 . Q
 ;
 ;Traverse ^BMXTMP and fill in ^BMXTEMP
 S BMXI=0
 S BMXFACP=-1 F  S BMXFACP=$O(^BMXTMP($J,BMXFACP)) Q:BMXFACP=""  D
 . I BMXFACP=0 S BMXFAC="UNKNOWN"
 . E  S BMXFAC=$P($G(^DIC(4,BMXFACP,0)),U) S:BMXFAC="" BMXFAC="UNKNOWN"
 . S BMXPRVP=-1 F  S BMXPRVP=$O(^BMXTMP($J,BMXFACP,BMXPRVP)) Q:BMXPRVP=""  D
 . . S BMXPRV=$P($G(^DIC(16,BMXPRVP,0)),U) S:BMXPRV="" BMXPRV="UNKNOWN"
 . . S BMXCODP=-1 F  S BMXCODP=$O(^BMXTMP($J,BMXFACP,BMXPRVP,BMXCODP)) Q:'+BMXCODP  D
 . . . D CODLVL(BMXCODP,.BMXCOD,.BMXLVL)
 . . . S BMXI=BMXI+1
 . . . S BMXSVC=$P(^BMXTMP($J,BMXFACP,BMXPRVP,BMXCODP),U)
 . . . S BMXMIN=$P(^BMXTMP($J,BMXFACP,BMXPRVP,BMXCODP),U,2)
 . . . S BMXFEE=$P(^BMXTMP($J,BMXFACP,BMXPRVP,BMXCODP),U,3)
 . . . S ^BMXTEMP($J,BMXI)=BMXFAC_U_BMXPRV_U_BMXCOD_U_BMXLVL_U_BMXSVC_U_BMXMIN_U_BMXFEE_BMXRD
 . . . Q
 . . Q
 . Q
 S BMXI=BMXI+1
 S ^BMXTEMP($J,BMXI)=$C(31)
 Q
 ;
CALCMIN(BMXCODP,BMXMIN)          ;
 ;Returns Minutes for code BMXCOD
 N BMXANOD
 S BMXMIN=0
 Q:'$D(^AUTTADA(BMXCODP,0))
 S BMXANOD=^AUTTADA(BMXCODP,0)
 ;S BMXLVL=$P(BMXANOD,U,5)
 S BMXMIN=$P(BMXANOD,U,4)
 Q
 ;
CALCFEE(BMXCODP,BMXFEE)          ;
 ;Returns FEE for code BMXCOD. Only works for ANMC local fee field
 N BMXANOD
 S BMXFEE=0
 Q:'$D(^AUTTADA(BMXCODP,0))
 S BMXANOD=^AUTTADA(BMXCODP,0)
 S BMXFEE=+$P(BMXANOD,U,12)
 Q
 ;
CODLVL(BMXCODP,BMXCOD,BMXLVL)          ;
 ;Returns Name and Level of code at ADACODP
 N BMXANOD
 S BMXCOD="",BMXLVL=""
 Q:'$D(^AUTTADA(BMXCODP,0))
 S BMXANOD=^AUTTADA(BMXCODP,0)
 S BMXCOD=$P(BMXANOD,U)
 S BMXLVL=$P(BMXANOD,U,5)