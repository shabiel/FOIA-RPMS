 ;BEDDAPPL.EDWarningModel.1
 ;(C)InterSystems, generated for class BEDDAPPL.EDWarningModel.  Do NOT edit. 10/29/2015 07:58:20AM
 ;;664E4830;BEDDAPPL.EDWarningModel
 ;
%CopyDataFromModel(pData,pTypes,pSeries="") public {
 // Generated by %ZEN.DataModel.ObjectDataModel
 Set tSC = 1
 For sno = $S(pSeries="":1,1:pSeries):1:..%seriesCount {
 Set pData(sno,"EDStatus") = ..EDStatusLogicalToDisplay(..EDStatus)
 Set pData(sno,"WaitTime") = ..WaitTimeLogicalToDisplay(..WaitTime)
 Set pData(sno,"Color") = ..ColorLogicalToDisplay(..Color)
 Set pData(sno,"NotifyMgr") = ..NotifyMgrLogicalToDisplay(..NotifyMgr)
 Set pData(sno,"NotifyByEmail") = ..NotifyByEmailLogicalToDisplay(..NotifyByEmail)
 Set pData(sno,"NotifyByPager") = ..NotifyByPagerLogicalToDisplay(..NotifyByPager)
 Set pData(sno,"StartTm") = ..StartTmLogicalToDisplay(..StartTm)
 Set pData(sno,"EndTm") = ..EndTmLogicalToDisplay(..EndTm)
 Quit:pSeries'=""
 }
 If ('tSC) Quit tSC
 Merge pData = ..%data
 Quit tSC }
%CopyDataToModel(pData,pSeries="") public {
 // Generated by %ZEN.DataModel.ObjectDataModel
 Set tSC = 1
 For sno = $S(pSeries="":1,1:pSeries):1:..%seriesCount {
 Set ..EDStatus = ..EDStatusDisplayToLogical($G(pData(sno,"EDStatus")))
 Kill pData(sno,"EDStatus")
 Set ..WaitTime = ..WaitTimeDisplayToLogical($G(pData(sno,"WaitTime")))
 Kill pData(sno,"WaitTime")
 Set ..Color = ..ColorDisplayToLogical($G(pData(sno,"Color")))
 Kill pData(sno,"Color")
 Set ..NotifyMgr = ..NotifyMgrDisplayToLogical($G(pData(sno,"NotifyMgr")))
 Kill pData(sno,"NotifyMgr")
 Set ..NotifyByEmail = ..NotifyByEmailDisplayToLogical($G(pData(sno,"NotifyByEmail")))
 Kill pData(sno,"NotifyByEmail")
 Set ..NotifyByPager = ..NotifyByPagerDisplayToLogical($G(pData(sno,"NotifyByPager")))
 Kill pData(sno,"NotifyByPager")
 Set ..StartTm = ..StartTmDisplayToLogical($G(pData(sno,"StartTm")))
 Kill pData(sno,"StartTm")
 Set ..EndTm = ..EndTmDisplayToLogical($G(pData(sno,"EndTm")))
 Kill pData(sno,"EndTm")
 Quit:pSeries'=""
 }
 If ('tSC) Quit tSC
 Kill ..%data
 Merge ..%data = pData
 Quit tSC }
%GetPropertyInfo(pInfo,pExtended=0,pModelId="",pContainer="") public {
 // Generated by %ZEN.DataModel.ObjectDataModel
 Set tSC = 1
 Set pInfo("EDStatus") = $I(pInfo)
 Set pInfo("WaitTime") = $I(pInfo)
 Set pInfo("Color") = $I(pInfo)
 Set pInfo("NotifyMgr") = $I(pInfo)
 Set pInfo("NotifyByEmail") = $I(pInfo)
 Set pInfo("NotifyByPager") = $I(pInfo)
 Set pInfo("StartTm") = $I(pInfo)
 Set pInfo("StartTm","%ptype") = "11"
 Set pInfo("EndTm") = $I(pInfo)
 Set pInfo("EndTm","%ptype") = "11"
 If (pExtended) {
  Set tProp = "EDStatus"
  Set pInfo(tProp,"%type") = "text"
  Set pInfo(tProp,"size") = 30
  Set pInfo(tProp,"maxlength") = 50
  Set tProp = "WaitTime"
  Set pInfo(tProp,"%type") = "text"
  Set pInfo(tProp,"size") = 30
  Set pInfo(tProp,"maxlength") = 50
  Set tProp = "Color"
  Set pInfo(tProp,"%type") = "text"
  Set pInfo(tProp,"size") = 30
  Set pInfo(tProp,"maxlength") = 50
  Set tProp = "NotifyMgr"
  Set pInfo(tProp,"%type") = "text"
  Set pInfo(tProp,"size") = 30
  Set pInfo(tProp,"maxlength") = 50
  Set tProp = "NotifyByEmail"
  Set pInfo(tProp,"%type") = "text"
  Set pInfo(tProp,"size") = 30
  Set pInfo(tProp,"maxlength") = 50
  Set tProp = "NotifyByPager"
  Set pInfo(tProp,"%type") = "text"
  Set pInfo(tProp,"size") = 30
  Set pInfo(tProp,"maxlength") = 50
  Set tProp = "StartTm"
  Set pInfo(tProp,"%type") = "text"
  Set pInfo(tProp,"size") = 8
  Set tProp = "EndTm"
  Set pInfo(tProp,"%type") = "text"
  Set pInfo(tProp,"size") = 8
 }
 Quit tSC }
%GetPropertyList(pModelId="",pContainer="") public {
	Quit "EDStatus,WaitTime,Color,NotifyMgr,NotifyByEmail,NotifyByPager,StartTm:11,EndTm:11" }
%NormalizeObject() public {
	If '$system.CLS.GetModified() Quit 1
	If m%%id Set:i%%id'="" i%%id=(..%idNormalize(i%%id))
	If m%%seriesCount Set:i%%seriesCount'="" i%%seriesCount=(..%seriesCountNormalize(i%%seriesCount))
	If m%Color Set:i%Color'="" i%Color=(..ColorNormalize(i%Color))
	If m%EDStatus Set:i%EDStatus'="" i%EDStatus=(..EDStatusNormalize(i%EDStatus))
	If m%EndTm Set:i%EndTm'="" i%EndTm=(..EndTmNormalize(i%EndTm))
	If m%NotifyByEmail Set:i%NotifyByEmail'="" i%NotifyByEmail=(..NotifyByEmailNormalize(i%NotifyByEmail))
	If m%NotifyByPager Set:i%NotifyByPager'="" i%NotifyByPager=(..NotifyByPagerNormalize(i%NotifyByPager))
	If m%NotifyMgr Set:i%NotifyMgr'="" i%NotifyMgr=(..NotifyMgrNormalize(i%NotifyMgr))
	If m%StartTm Set:i%StartTm'="" i%StartTm=(..StartTmNormalize(i%StartTm))
	If m%WaitTime Set:i%WaitTime'="" i%WaitTime=(..WaitTimeNormalize(i%WaitTime))
	Quit 1 }
%OnDeleteSource(pID) public {
  Quit ##class(BEDD.EDWarning).%DeleteId(pID)
}
%OnLoadModel(pSource) public {
    Set ..EDStatus = pSource.EDStatus
    Set ..WaitTime = pSource.WaitTime
    Set ..Color = pSource.Color
    Set ..NotifyMgr = pSource.NotifyMgr
    Set ..NotifyByEmail = pSource.NotifyByEmail
    Set ..NotifyByPager = pSource.NotifyByPager
    Set ..StartTm = pSource.StartTm
    Set ..EndTm = pSource.EndTm
    Quit 1 }
%OnNewSource(pSC) public { Set:'($data(pSC)#2) pSC=1
  Quit ##class(BEDD.EDWarning).%New()
}
%OnOpenSource(pID,pConcurrency=-1,pSC) public { Set:'($data(pSC)#2) pSC=1
  Quit ##class(BEDD.EDWarning).%OpenId(pID)
}
%OnSaveSource(pSource) public {
   Set tSC = pSource.%Save()
   Set ..%id = pSource.%Id()
   Quit tSC }
%OnStoreModel(pSource) public {
    Set pSource.EDStatus = ..EDStatus
    Set pSource.WaitTime = ..WaitTime
    Set pSource.Color = ..Color
    Set pSource.NotifyMgr = ..NotifyMgr
    Set pSource.NotifyByEmail = ..NotifyByEmail
    Set pSource.NotifyByPager = ..NotifyByPager
    Set pSource.StartTm = ..StartTm
    Set pSource.EndTm = ..EndTm
    Quit pSource.%Save() }
%ValidateObject(force=0) public {
	Set sc=1
	If '$system.CLS.GetModified() Quit sc
	If m%%id Set iv=..%id If iv'="" Set rc=(..%idIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"%id",iv)
	If m%%seriesCount Set iv=..%seriesCount If iv'="" Set rc=(..%seriesCountIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"%seriesCount",iv)
	If m%Color Set iv=..Color If iv'="" Set rc=(..ColorIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"Color",iv)
	If m%EDStatus Set iv=..EDStatus If iv'="" Set rc=(..EDStatusIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"EDStatus",iv)
	If m%EndTm Set iv=..EndTm If iv'="" Set rc=(..EndTmIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"EndTm",iv)
	If m%NotifyByEmail Set iv=..NotifyByEmail If iv'="" Set rc=(..NotifyByEmailIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"NotifyByEmail",iv)
	If m%NotifyByPager Set iv=..NotifyByPager If iv'="" Set rc=(..NotifyByPagerIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"NotifyByPager",iv)
	If m%NotifyMgr Set iv=..NotifyMgr If iv'="" Set rc=(..NotifyMgrIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"NotifyMgr",iv)
	If m%StartTm Set iv=..StartTm If iv'="" Set rc=(..StartTmIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"StartTm",iv)
	If m%WaitTime Set iv=..WaitTime If iv'="" Set rc=(..WaitTimeIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"WaitTime",iv)
	Quit sc }
zEndTmDisplayToLogical(%val)
 quit:%val="" "" s %val=$ztimeh(%val,,"Error: '"_%val_"' is an invalid DISPLAY Time value") q:%val||(%val=0) %val s %msg=%val ZTRAP "OTIM"
	Quit
zEndTmIsValid(%val)
	Quit $select($zu(115,13)&&(%val=$c(0)):1,$isvalidnum(%val,,0,86400)&&(%val'=86400):1,'$isvalidnum(%val):$$Error^%apiOBJ(7207,%val),%val<0:$$Error^%apiOBJ(7204,%val,0),1:$$Error^%apiOBJ(7203,%val,86400))
zEndTmLogicalToDisplay(%val)
	Quit $select(%val="":"",1:$ztime(%val))
zEndTmLogicalToOdbc(%val="")
	Quit $select(%val="":"",1:$ztime(%val))
zEndTmNormalize(%val)
	Quit $select($zu(115,13)&&(%val=$c(0)):"",1:%val)
zEndTmOdbcToLogical(%val="")
 quit:%val=""||($zu(115,13)&&(%val=$c(0))) "" s %val=$ztimeh(%val,,"Error: '"_%val_"' is an invalid ODBC/JDBC Time value") q:%val||(%val=0) %val s %msg=%val ZTRAP "OTIM"
	Quit