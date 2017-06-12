 ;BEDDAPPL.EDSystemModel.1
 ;(C)InterSystems, generated for class BEDDAPPL.EDSystemModel.  Do NOT edit. 04/14/2017 08:47:49AM
 ;;75776A6B;BEDDAPPL.EDSystemModel
 ;
%CopyDataFromModel(pData,pTypes,pSeries="") public {
 // Generated by %ZEN.DataModel.ObjectDataModel
 Set tSC = 1
 For sno = $S(pSeries="":1,1:pSeries):1:..%seriesCount {
 Set pData(sno,"Verify") = ..VerifyLogicalToDisplay(..Verify)
 Set pData(sno,"WhiteboardShowProvider") = ..WhiteboardShowProviderLogicalToDisplay(..WhiteboardShowProvider)
 Set pData(sno,"WhiteboardShowNurse") = ..WhiteboardShowNurseLogicalToDisplay(..WhiteboardShowNurse)
 Set pData(sno,"WhiteboardShowOrders") = ..WhiteboardShowOrdersLogicalToDisplay(..WhiteboardShowOrders)
 Set pData(sno,"WhiteboardShowNotes") = ..WhiteboardShowNotesLogicalToDisplay(..WhiteboardShowNotes)
 Set pData(sno,"WhiteboardShowAge") = ..WhiteboardShowAgeLogicalToDisplay(..WhiteboardShowAge)
 Set pData(sno,"WhiteboardShowComplaint") = ..WhiteboardShowComplaintLogicalToDisplay(..WhiteboardShowComplaint)
 Set pData(sno,"WhiteboardShowChartNumber") = ..WhiteboardShowChartNumberLogicalToDisplay(..WhiteboardShowChartNumber)
 Set pData(sno,"WhiteboardShowRoom") = ..WhiteboardShowRoomLogicalToDisplay(..WhiteboardShowRoom)
 Set pData(sno,"WhiteboardShowName") = ..WhiteboardShowNameLogicalToDisplay(..WhiteboardShowName)
 Set pData(sno,"WhiteboardShowAcuity") = ..WhiteboardShowAcuityLogicalToDisplay(..WhiteboardShowAcuity)
 Set pData(sno,"SMTPSERVER") = ..SMTPSERVERLogicalToDisplay(..SMTPSERVER)
 Set pData(sno,"TimeOut") = ..TimeOutLogicalToDisplay(..TimeOut)
 Set pData(sno,"ChiefofStaff") = ..ChiefofStaffLogicalToDisplay(..ChiefofStaff)
 Set pData(sno,"NrseMgr") = ..NrseMgrLogicalToDisplay(..NrseMgr)
 Set pData(sno,"Site") = ..SiteLogicalToDisplay(..Site)
 Set pData(sno,"SiteName") = ..SiteNameLogicalToDisplay(..SiteName)
 Set pData(sno,"ChargeNrseA") = ..ChargeNrseALogicalToDisplay(..ChargeNrseA)
 Set pData(sno,"ChargeNrseP") = ..ChargeNrsePLogicalToDisplay(..ChargeNrseP)
 Set pData(sno,"Phone") = ..PhoneLogicalToDisplay(..Phone)
 Set pData(sno,"Pager") = ..PagerLogicalToDisplay(..Pager)
 Set pData(sno,"MedRec") = ..MedRecLogicalToDisplay(..MedRec)
 Set pData(sno,"RtSheet") = ..RtSheetLogicalToDisplay(..RtSheet)
 Set pData(sno,"PtRtSheet") = ..PtRtSheetLogicalToDisplay(..PtRtSheet)
 Set pData(sno,"PtLabels") = ..PtLabelsLogicalToDisplay(..PtLabels)
 Set pData(sno,"PtArmBand") = ..PtArmBandLogicalToDisplay(..PtArmBand)
 Set pData(sno,"StandAlone") = ..StandAloneLogicalToDisplay(..StandAlone)
 Set pData(sno,"TwoClinics") = ..TwoClinicsLogicalToDisplay(..TwoClinics)
 Set pData(sno,"TriageRpt") = ..TriageRptLogicalToDisplay(..TriageRpt)
 Set pData(sno,"ShoUsedRm") = ..ShoUsedRmLogicalToDisplay(..ShoUsedRm)
 Set pData(sno,"ShoNrse") = ..ShoNrseLogicalToDisplay(..ShoNrse)
 Set pData(sno,"SwitchEHRPat") = ..SwitchEHRPatLogicalToDisplay(..SwitchEHRPat)
 Set pData(sno,"ShoPrv") = ..ShoPrvLogicalToDisplay(..ShoPrv)
 Set pData(sno,"ShoCons") = ..ShoConsLogicalToDisplay(..ShoCons)
 Set pData(sno,"ShoDlySum") = ..ShoDlySumLogicalToDisplay(..ShoDlySum)
 Set pData(sno,"PCPFlag") = ..PCPFlagLogicalToDisplay(..PCPFlag)
 Set pData(sno,"CommBoard") = ..CommBoardLogicalToDisplay(..CommBoard)
 Set pData(sno,"AutoNote") = ..AutoNoteLogicalToDisplay(..AutoNote)
 Set pData(sno,"PendingStsLookBack") = ..PendingStsLookBackLogicalToDisplay(..PendingStsLookBack)
 Set pData(sno,"PatientNameFormat") = ..PatientNameFormatLogicalToDisplay(..PatientNameFormat)
 Set pData(sno,"UserPrefDOB") = ..UserPrefDOBLogicalToDisplay(..UserPrefDOB)
 Set pData(sno,"UserPrefComp") = ..UserPrefCompLogicalToDisplay(..UserPrefComp)
 Set pData(sno,"UserPrefSex") = ..UserPrefSexLogicalToDisplay(..UserPrefSex)
 Set pData(sno,"UserName") = ..UserNameLogicalToDisplay(..UserName)
 Set pData(sno,"User") = ..UserLogicalToDisplay(..User)
 Set pData(sno,"UserDUZ") = ..UserDUZLogicalToDisplay(..UserDUZ)
 Quit:pSeries'=""
 }
 If ('tSC) Quit tSC
 Merge pData = ..%data
 Quit tSC }
%CopyDataToModel(pData,pSeries="") public {
 // Generated by %ZEN.DataModel.ObjectDataModel
 Set tSC = 1
 For sno = $S(pSeries="":1,1:pSeries):1:..%seriesCount {
 Set ..Verify = ..VerifyDisplayToLogical($G(pData(sno,"Verify")))
 Kill pData(sno,"Verify")
 Set tBool = $G(pData(sno,"WhiteboardShowProvider"))
 Set tBool = $Case(tBool,"true":1,"false":0,:tBool)
 Set ..WhiteboardShowProvider = tBool
 Kill pData(sno,"WhiteboardShowProvider")
 Set tBool = $G(pData(sno,"WhiteboardShowNurse"))
 Set tBool = $Case(tBool,"true":1,"false":0,:tBool)
 Set ..WhiteboardShowNurse = tBool
 Kill pData(sno,"WhiteboardShowNurse")
 Set tBool = $G(pData(sno,"WhiteboardShowOrders"))
 Set tBool = $Case(tBool,"true":1,"false":0,:tBool)
 Set ..WhiteboardShowOrders = tBool
 Kill pData(sno,"WhiteboardShowOrders")
 Set tBool = $G(pData(sno,"WhiteboardShowNotes"))
 Set tBool = $Case(tBool,"true":1,"false":0,:tBool)
 Set ..WhiteboardShowNotes = tBool
 Kill pData(sno,"WhiteboardShowNotes")
 Set tBool = $G(pData(sno,"WhiteboardShowAge"))
 Set tBool = $Case(tBool,"true":1,"false":0,:tBool)
 Set ..WhiteboardShowAge = tBool
 Kill pData(sno,"WhiteboardShowAge")
 Set tBool = $G(pData(sno,"WhiteboardShowComplaint"))
 Set tBool = $Case(tBool,"true":1,"false":0,:tBool)
 Set ..WhiteboardShowComplaint = tBool
 Kill pData(sno,"WhiteboardShowComplaint")
 Set tBool = $G(pData(sno,"WhiteboardShowChartNumber"))
 Set tBool = $Case(tBool,"true":1,"false":0,:tBool)
 Set ..WhiteboardShowChartNumber = tBool
 Kill pData(sno,"WhiteboardShowChartNumber")
 Set tBool = $G(pData(sno,"WhiteboardShowRoom"))
 Set tBool = $Case(tBool,"true":1,"false":0,:tBool)
 Set ..WhiteboardShowRoom = tBool
 Kill pData(sno,"WhiteboardShowRoom")
 Set tBool = $G(pData(sno,"WhiteboardShowName"))
 Set tBool = $Case(tBool,"true":1,"false":0,:tBool)
 Set ..WhiteboardShowName = tBool
 Kill pData(sno,"WhiteboardShowName")
 Set tBool = $G(pData(sno,"WhiteboardShowAcuity"))
 Set tBool = $Case(tBool,"true":1,"false":0,:tBool)
 Set ..WhiteboardShowAcuity = tBool
 Kill pData(sno,"WhiteboardShowAcuity")
 Set ..SMTPSERVER = ..SMTPSERVERDisplayToLogical($G(pData(sno,"SMTPSERVER")))
 Kill pData(sno,"SMTPSERVER")
 Set ..TimeOut = ..TimeOutDisplayToLogical($G(pData(sno,"TimeOut")))
 Kill pData(sno,"TimeOut")
 Set ..ChiefofStaff = ..ChiefofStaffDisplayToLogical($G(pData(sno,"ChiefofStaff")))
 Kill pData(sno,"ChiefofStaff")
 Set ..NrseMgr = ..NrseMgrDisplayToLogical($G(pData(sno,"NrseMgr")))
 Kill pData(sno,"NrseMgr")
 Set ..Site = ..SiteDisplayToLogical($G(pData(sno,"Site")))
 Kill pData(sno,"Site")
 Set ..SiteName = ..SiteNameDisplayToLogical($G(pData(sno,"SiteName")))
 Kill pData(sno,"SiteName")
 Set ..ChargeNrseA = ..ChargeNrseADisplayToLogical($G(pData(sno,"ChargeNrseA")))
 Kill pData(sno,"ChargeNrseA")
 Set ..ChargeNrseP = ..ChargeNrsePDisplayToLogical($G(pData(sno,"ChargeNrseP")))
 Kill pData(sno,"ChargeNrseP")
 Set ..Phone = ..PhoneDisplayToLogical($G(pData(sno,"Phone")))
 Kill pData(sno,"Phone")
 Set ..Pager = ..PagerDisplayToLogical($G(pData(sno,"Pager")))
 Kill pData(sno,"Pager")
 Set tBool = $G(pData(sno,"MedRec"))
 Set tBool = $Case(tBool,"true":1,"false":0,:tBool)
 Set ..MedRec = tBool
 Kill pData(sno,"MedRec")
 Set tBool = $G(pData(sno,"RtSheet"))
 Set tBool = $Case(tBool,"true":1,"false":0,:tBool)
 Set ..RtSheet = tBool
 Kill pData(sno,"RtSheet")
 Set tBool = $G(pData(sno,"PtRtSheet"))
 Set tBool = $Case(tBool,"true":1,"false":0,:tBool)
 Set ..PtRtSheet = tBool
 Kill pData(sno,"PtRtSheet")
 Set tBool = $G(pData(sno,"PtLabels"))
 Set tBool = $Case(tBool,"true":1,"false":0,:tBool)
 Set ..PtLabels = tBool
 Kill pData(sno,"PtLabels")
 Set tBool = $G(pData(sno,"PtArmBand"))
 Set tBool = $Case(tBool,"true":1,"false":0,:tBool)
 Set ..PtArmBand = tBool
 Kill pData(sno,"PtArmBand")
 Set tBool = $G(pData(sno,"StandAlone"))
 Set tBool = $Case(tBool,"true":1,"false":0,:tBool)
 Set ..StandAlone = tBool
 Kill pData(sno,"StandAlone")
 Set tBool = $G(pData(sno,"TwoClinics"))
 Set tBool = $Case(tBool,"true":1,"false":0,:tBool)
 Set ..TwoClinics = tBool
 Kill pData(sno,"TwoClinics")
 Set tBool = $G(pData(sno,"TriageRpt"))
 Set tBool = $Case(tBool,"true":1,"false":0,:tBool)
 Set ..TriageRpt = tBool
 Kill pData(sno,"TriageRpt")
 Set tBool = $G(pData(sno,"ShoUsedRm"))
 Set tBool = $Case(tBool,"true":1,"false":0,:tBool)
 Set ..ShoUsedRm = tBool
 Kill pData(sno,"ShoUsedRm")
 Set tBool = $G(pData(sno,"ShoNrse"))
 Set tBool = $Case(tBool,"true":1,"false":0,:tBool)
 Set ..ShoNrse = tBool
 Kill pData(sno,"ShoNrse")
 Set tBool = $G(pData(sno,"SwitchEHRPat"))
 Set tBool = $Case(tBool,"true":1,"false":0,:tBool)
 Set ..SwitchEHRPat = tBool
 Kill pData(sno,"SwitchEHRPat")
 Set tBool = $G(pData(sno,"ShoPrv"))
 Set tBool = $Case(tBool,"true":1,"false":0,:tBool)
 Set ..ShoPrv = tBool
 Kill pData(sno,"ShoPrv")
 Set tBool = $G(pData(sno,"ShoCons"))
 Set tBool = $Case(tBool,"true":1,"false":0,:tBool)
 Set ..ShoCons = tBool
 Kill pData(sno,"ShoCons")
 Set tBool = $G(pData(sno,"ShoDlySum"))
 Set tBool = $Case(tBool,"true":1,"false":0,:tBool)
 Set ..ShoDlySum = tBool
 Kill pData(sno,"ShoDlySum")
 Set tBool = $G(pData(sno,"PCPFlag"))
 Set tBool = $Case(tBool,"true":1,"false":0,:tBool)
 Set ..PCPFlag = tBool
 Kill pData(sno,"PCPFlag")
 Set tBool = $G(pData(sno,"CommBoard"))
 Set tBool = $Case(tBool,"true":1,"false":0,:tBool)
 Set ..CommBoard = tBool
 Kill pData(sno,"CommBoard")
 Set tBool = $G(pData(sno,"AutoNote"))
 Set tBool = $Case(tBool,"true":1,"false":0,:tBool)
 Set ..AutoNote = tBool
 Kill pData(sno,"AutoNote")
 Set ..PendingStsLookBack = ..PendingStsLookBackDisplayToLogical($G(pData(sno,"PendingStsLookBack")))
 Kill pData(sno,"PendingStsLookBack")
 Set ..PatientNameFormat = ..PatientNameFormatDisplayToLogical($G(pData(sno,"PatientNameFormat")))
 Kill pData(sno,"PatientNameFormat")
 Set tBool = $G(pData(sno,"UserPrefDOB"))
 Set tBool = $Case(tBool,"true":1,"false":0,:tBool)
 Set ..UserPrefDOB = tBool
 Kill pData(sno,"UserPrefDOB")
 Set tBool = $G(pData(sno,"UserPrefComp"))
 Set tBool = $Case(tBool,"true":1,"false":0,:tBool)
 Set ..UserPrefComp = tBool
 Kill pData(sno,"UserPrefComp")
 Set tBool = $G(pData(sno,"UserPrefSex"))
 Set tBool = $Case(tBool,"true":1,"false":0,:tBool)
 Set ..UserPrefSex = tBool
 Kill pData(sno,"UserPrefSex")
 Set ..UserName = ..UserNameDisplayToLogical($G(pData(sno,"UserName")))
 Kill pData(sno,"UserName")
 Set ..User = ..UserDisplayToLogical($G(pData(sno,"User")))
 Kill pData(sno,"User")
 Set ..UserDUZ = ..UserDUZDisplayToLogical($G(pData(sno,"UserDUZ")))
 Kill pData(sno,"UserDUZ")
 Quit:pSeries'=""
 }
 If ('tSC) Quit tSC
 Kill ..%data
 Merge ..%data = pData
 Quit tSC }
%GetPropertyInfo(pInfo,pExtended=0,pModelId="",pContainer="") public {
 // Generated by %ZEN.DataModel.ObjectDataModel
 Set tSC = 1
 Set pInfo("Verify") = $I(pInfo)
 Set pInfo("WhiteboardShowProvider") = $I(pInfo)
 Set pInfo("WhiteboardShowProvider","%ptype") = "14"
 Set pInfo("WhiteboardShowNurse") = $I(pInfo)
 Set pInfo("WhiteboardShowNurse","%ptype") = "14"
 Set pInfo("WhiteboardShowOrders") = $I(pInfo)
 Set pInfo("WhiteboardShowOrders","%ptype") = "14"
 Set pInfo("WhiteboardShowNotes") = $I(pInfo)
 Set pInfo("WhiteboardShowNotes","%ptype") = "14"
 Set pInfo("WhiteboardShowAge") = $I(pInfo)
 Set pInfo("WhiteboardShowAge","%ptype") = "14"
 Set pInfo("WhiteboardShowComplaint") = $I(pInfo)
 Set pInfo("WhiteboardShowComplaint","%ptype") = "14"
 Set pInfo("WhiteboardShowChartNumber") = $I(pInfo)
 Set pInfo("WhiteboardShowChartNumber","%ptype") = "14"
 Set pInfo("WhiteboardShowRoom") = $I(pInfo)
 Set pInfo("WhiteboardShowRoom","%ptype") = "14"
 Set pInfo("WhiteboardShowName") = $I(pInfo)
 Set pInfo("WhiteboardShowName","%ptype") = "14"
 Set pInfo("WhiteboardShowAcuity") = $I(pInfo)
 Set pInfo("WhiteboardShowAcuity","%ptype") = "14"
 Set pInfo("SMTPSERVER") = $I(pInfo)
 Set pInfo("TimeOut") = $I(pInfo)
 Set pInfo("ChiefofStaff") = $I(pInfo)
 Set pInfo("NrseMgr") = $I(pInfo)
 Set pInfo("Site") = $I(pInfo)
 Set pInfo("SiteName") = $I(pInfo)
 Set pInfo("ChargeNrseA") = $I(pInfo)
 Set pInfo("ChargeNrseP") = $I(pInfo)
 Set pInfo("Phone") = $I(pInfo)
 Set pInfo("Pager") = $I(pInfo)
 Set pInfo("MedRec") = $I(pInfo)
 Set pInfo("MedRec","%ptype") = "14"
 Set pInfo("RtSheet") = $I(pInfo)
 Set pInfo("RtSheet","%ptype") = "14"
 Set pInfo("PtRtSheet") = $I(pInfo)
 Set pInfo("PtRtSheet","%ptype") = "14"
 Set pInfo("PtLabels") = $I(pInfo)
 Set pInfo("PtLabels","%ptype") = "14"
 Set pInfo("PtArmBand") = $I(pInfo)
 Set pInfo("PtArmBand","%ptype") = "14"
 Set pInfo("StandAlone") = $I(pInfo)
 Set pInfo("StandAlone","%ptype") = "14"
 Set pInfo("TwoClinics") = $I(pInfo)
 Set pInfo("TwoClinics","%ptype") = "14"
 Set pInfo("TriageRpt") = $I(pInfo)
 Set pInfo("TriageRpt","%ptype") = "14"
 Set pInfo("ShoUsedRm") = $I(pInfo)
 Set pInfo("ShoUsedRm","%ptype") = "14"
 Set pInfo("ShoNrse") = $I(pInfo)
 Set pInfo("ShoNrse","%ptype") = "14"
 Set pInfo("SwitchEHRPat") = $I(pInfo)
 Set pInfo("SwitchEHRPat","%ptype") = "14"
 Set pInfo("ShoPrv") = $I(pInfo)
 Set pInfo("ShoPrv","%ptype") = "14"
 Set pInfo("ShoCons") = $I(pInfo)
 Set pInfo("ShoCons","%ptype") = "14"
 Set pInfo("ShoDlySum") = $I(pInfo)
 Set pInfo("ShoDlySum","%ptype") = "14"
 Set pInfo("PCPFlag") = $I(pInfo)
 Set pInfo("PCPFlag","%ptype") = "14"
 Set pInfo("CommBoard") = $I(pInfo)
 Set pInfo("CommBoard","%ptype") = "14"
 Set pInfo("AutoNote") = $I(pInfo)
 Set pInfo("AutoNote","%ptype") = "14"
 Set pInfo("PendingStsLookBack") = $I(pInfo)
 Set pInfo("PatientNameFormat") = $I(pInfo)
 Set pInfo("UserPrefDOB") = $I(pInfo)
 Set pInfo("UserPrefDOB","%ptype") = "14"
 Set pInfo("UserPrefComp") = $I(pInfo)
 Set pInfo("UserPrefComp","%ptype") = "14"
 Set pInfo("UserPrefSex") = $I(pInfo)
 Set pInfo("UserPrefSex","%ptype") = "14"
 Set pInfo("UserName") = $I(pInfo)
 Set pInfo("User") = $I(pInfo)
 Set pInfo("UserDUZ") = $I(pInfo)
 If (pExtended) {
  Set tProp = "Verify"
  Set pInfo(tProp,"%type") = "text"
  Set pInfo(tProp,"size") = 30
  Set pInfo(tProp,"title") = "BEDD*2.0*1;Added Whiteboard fields"
  Set pInfo(tProp,"maxlength") = 50
  Set tProp = "WhiteboardShowProvider"
  Set pInfo(tProp,"%type") = "checkbox"
  Set pInfo(tProp,"caption") = "WhiteboardShowProvider"
  Set pInfo(tProp,"label") = ""
  Set tProp = "WhiteboardShowNurse"
  Set pInfo(tProp,"%type") = "checkbox"
  Set pInfo(tProp,"caption") = "WhiteboardShowNurse"
  Set pInfo(tProp,"label") = ""
  Set tProp = "WhiteboardShowOrders"
  Set pInfo(tProp,"%type") = "checkbox"
  Set pInfo(tProp,"caption") = "WhiteboardShowOrders"
  Set pInfo(tProp,"label") = ""
  Set tProp = "WhiteboardShowNotes"
  Set pInfo(tProp,"%type") = "checkbox"
  Set pInfo(tProp,"caption") = "WhiteboardShowNotes"
  Set pInfo(tProp,"label") = ""
  Set tProp = "WhiteboardShowAge"
  Set pInfo(tProp,"%type") = "checkbox"
  Set pInfo(tProp,"caption") = "WhiteboardShowAge"
  Set pInfo(tProp,"label") = ""
  Set tProp = "WhiteboardShowComplaint"
  Set pInfo(tProp,"%type") = "checkbox"
  Set pInfo(tProp,"caption") = "WhiteboardShowComplaint"
  Set pInfo(tProp,"label") = ""
  Set tProp = "WhiteboardShowChartNumber"
  Set pInfo(tProp,"%type") = "checkbox"
  Set pInfo(tProp,"caption") = "WhiteboardShowChartNumber"
  Set pInfo(tProp,"label") = ""
  Set tProp = "WhiteboardShowRoom"
  Set pInfo(tProp,"%type") = "checkbox"
  Set pInfo(tProp,"caption") = "WhiteboardShowRoom"
  Set pInfo(tProp,"label") = ""
  Set tProp = "WhiteboardShowName"
  Set pInfo(tProp,"%type") = "checkbox"
  Set pInfo(tProp,"caption") = "WhiteboardShowName"
  Set pInfo(tProp,"label") = ""
  Set tProp = "WhiteboardShowAcuity"
  Set pInfo(tProp,"%type") = "checkbox"
  Set pInfo(tProp,"caption") = "WhiteboardShowAcuity"
  Set pInfo(tProp,"label") = ""
  Set tProp = "SMTPSERVER"
  Set pInfo(tProp,"%type") = "text"
  Set pInfo(tProp,"size") = 30
  Set pInfo(tProp,"title") = "enter your facility email server name"
  Set pInfo(tProp,"maxlength") = 50
  Set tProp = "TimeOut"
  Set pInfo(tProp,"%type") = "text"
  Set pInfo(tProp,"size") = 30
  Set pInfo(tProp,"maxlength") = 50
  Set tProp = "ChiefofStaff"
  Set pInfo(tProp,"%type") = "text"
  Set pInfo(tProp,"size") = 30
  Set pInfo(tProp,"maxlength") = 50
  Set tProp = "NrseMgr"
  Set pInfo(tProp,"%type") = "text"
  Set pInfo(tProp,"size") = 30
  Set pInfo(tProp,"maxlength") = 50
  Set tProp = "Site"
  Set pInfo(tProp,"%type") = "text"
  Set pInfo(tProp,"size") = 30
  Set pInfo(tProp,"maxlength") = 50
  Set tProp = "SiteName"
  Set pInfo(tProp,"%type") = "text"
  Set pInfo(tProp,"size") = 30
  Set pInfo(tProp,"maxlength") = 50
  Set tProp = "ChargeNrseA"
  Set pInfo(tProp,"%type") = "text"
  Set pInfo(tProp,"size") = 30
  Set pInfo(tProp,"maxlength") = 50
  Set tProp = "ChargeNrseP"
  Set pInfo(tProp,"%type") = "text"
  Set pInfo(tProp,"size") = 30
  Set pInfo(tProp,"maxlength") = 50
  Set tProp = "Phone"
  Set pInfo(tProp,"%type") = "text"
  Set pInfo(tProp,"size") = 30
  Set pInfo(tProp,"maxlength") = 50
  Set tProp = "Pager"
  Set pInfo(tProp,"%type") = "text"
  Set pInfo(tProp,"size") = 30
  Set pInfo(tProp,"maxlength") = 50
  Set tProp = "MedRec"
  Set pInfo(tProp,"%type") = "checkbox"
  Set pInfo(tProp,"caption") = "MedRec"
  Set pInfo(tProp,"label") = ""
  Set tProp = "RtSheet"
  Set pInfo(tProp,"%type") = "checkbox"
  Set pInfo(tProp,"caption") = "RtSheet"
  Set pInfo(tProp,"label") = ""
  Set tProp = "PtRtSheet"
  Set pInfo(tProp,"%type") = "checkbox"
  Set pInfo(tProp,"title") = "Patient routing slip"
  Set pInfo(tProp,"caption") = "PtRtSheet"
  Set pInfo(tProp,"label") = ""
  Set tProp = "PtLabels"
  Set pInfo(tProp,"%type") = "checkbox"
  Set pInfo(tProp,"title") = "Patient Labels at CI"
  Set pInfo(tProp,"caption") = "PtLabels"
  Set pInfo(tProp,"label") = ""
  Set tProp = "PtArmBand"
  Set pInfo(tProp,"%type") = "checkbox"
  Set pInfo(tProp,"title") = "Patient ArmBand at CI"
  Set pInfo(tProp,"caption") = "PtArmBand"
  Set pInfo(tProp,"label") = ""
  Set tProp = "StandAlone"
  Set pInfo(tProp,"%type") = "checkbox"
  Set pInfo(tProp,"caption") = "StandAlone"
  Set pInfo(tProp,"label") = ""
  Set tProp = "TwoClinics"
  Set pInfo(tProp,"%type") = "checkbox"
  Set pInfo(tProp,"caption") = "TwoClinics"
  Set pInfo(tProp,"label") = ""
  Set tProp = "TriageRpt"
  Set pInfo(tProp,"%type") = "checkbox"
  Set pInfo(tProp,"caption") = "TriageRpt"
  Set pInfo(tProp,"label") = ""
  Set tProp = "ShoUsedRm"
  Set pInfo(tProp,"%type") = "checkbox"
  Set pInfo(tProp,"caption") = "ShoUsedRm"
  Set pInfo(tProp,"label") = ""
  Set tProp = "ShoNrse"
  Set pInfo(tProp,"%type") = "checkbox"
  Set pInfo(tProp,"caption") = "ShoNrse"
  Set pInfo(tProp,"label") = ""
  Set tProp = "SwitchEHRPat"
  Set pInfo(tProp,"%type") = "checkbox"
  Set pInfo(tProp,"caption") = "SwitchEHRPat"
  Set pInfo(tProp,"label") = ""
  Set tProp = "ShoPrv"
  Set pInfo(tProp,"%type") = "checkbox"
  Set pInfo(tProp,"caption") = "ShoPrv"
  Set pInfo(tProp,"label") = ""
  Set tProp = "ShoCons"
  Set pInfo(tProp,"%type") = "checkbox"
  Set pInfo(tProp,"caption") = "ShoCons"
  Set pInfo(tProp,"label") = ""
  Set tProp = "ShoDlySum"
  Set pInfo(tProp,"%type") = "checkbox"
  Set pInfo(tProp,"caption") = "ShoDlySum"
  Set pInfo(tProp,"label") = ""
  Set tProp = "PCPFlag"
  Set pInfo(tProp,"%type") = "checkbox"
  Set pInfo(tProp,"caption") = "PCPFlag"
  Set pInfo(tProp,"label") = ""
  Set tProp = "CommBoard"
  Set pInfo(tProp,"%type") = "checkbox"
  Set pInfo(tProp,"caption") = "CommBoard"
  Set pInfo(tProp,"label") = ""
  Set tProp = "AutoNote"
  Set pInfo(tProp,"%type") = "checkbox"
  Set pInfo(tProp,"caption") = "AutoNote"
  Set pInfo(tProp,"label") = ""
  Set tProp = "PendingStsLookBack"
  Set pInfo(tProp,"%type") = "text"
  Set pInfo(tProp,"size") = 30
  Set pInfo(tProp,"maxlength") = 50
  Set tProp = "PatientNameFormat"
  Set pInfo(tProp,"%type") = "radioSet"
  Set pInfo(tProp,"valueList") = ",FLFF,FLIF,ILIF"
  Set tProp = "UserPrefDOB"
  Set pInfo(tProp,"%type") = "checkbox"
  Set pInfo(tProp,"caption") = "UserPrefDOB"
  Set pInfo(tProp,"label") = ""
  Set tProp = "UserPrefComp"
  Set pInfo(tProp,"%type") = "checkbox"
  Set pInfo(tProp,"caption") = "UserPrefComp"
  Set pInfo(tProp,"label") = ""
  Set tProp = "UserPrefSex"
  Set pInfo(tProp,"%type") = "checkbox"
  Set pInfo(tProp,"caption") = "UserPrefSex"
  Set pInfo(tProp,"label") = ""
  Set tProp = "UserName"
  Set pInfo(tProp,"%type") = "text"
  Set pInfo(tProp,"size") = 30
  Set pInfo(tProp,"maxlength") = 50
  Set tProp = "User"
  Set pInfo(tProp,"%type") = "text"
  Set pInfo(tProp,"size") = 30
  Set pInfo(tProp,"maxlength") = 50
  Set tProp = "UserDUZ"
  Set pInfo(tProp,"%type") = "text"
  Set pInfo(tProp,"size") = 30
  Set pInfo(tProp,"maxlength") = 50
 }
 Quit tSC }
%GetPropertyList(pModelId="",pContainer="") public {
	Quit "Verify,WhiteboardShowProvider:14,WhiteboardShowNurse:14,WhiteboardShowOrders:14,WhiteboardShowNotes:14,WhiteboardShowAge:14,WhiteboardShowComplaint:14,WhiteboardShowChartNumber:14,WhiteboardShowRoom:14,WhiteboardShowName:14,WhiteboardShowAcuity:14,SMTPSERVER,TimeOut,ChiefofStaff,NrseMgr,Site,SiteName,ChargeNrseA,ChargeNrseP,Phone,Pager,MedRec:14,RtSheet:14,PtRtSheet:14,PtLabels:14,PtArmBand:14,StandAlone:14,TwoClinics:14,TriageRpt:14,ShoUsedRm:14,ShoNrse:14,SwitchEHRPat:14,ShoPrv:14,ShoCons:14,ShoDlySum:14,PCPFlag:14,CommBoard:14,AutoNote:14,PendingStsLookBack,PatientNameFormat,UserPrefDOB:14,UserPrefComp:14,UserPrefSex:14,UserName,User,UserDUZ" }
%NormalizeObject() public {
	If '$system.CLS.GetModified() Quit 1
	If m%%id Set:i%%id'="" i%%id=(..%idNormalize(i%%id))
	If m%%seriesCount Set:i%%seriesCount'="" i%%seriesCount=(..%seriesCountNormalize(i%%seriesCount))
	If m%AutoNote Set:i%AutoNote'="" i%AutoNote=(..AutoNoteNormalize(i%AutoNote))
	If m%ChargeNrseA Set:i%ChargeNrseA'="" i%ChargeNrseA=(..ChargeNrseANormalize(i%ChargeNrseA))
	If m%ChargeNrseP Set:i%ChargeNrseP'="" i%ChargeNrseP=(..ChargeNrsePNormalize(i%ChargeNrseP))
	If m%ChiefofStaff Set:i%ChiefofStaff'="" i%ChiefofStaff=(..ChiefofStaffNormalize(i%ChiefofStaff))
	If m%CommBoard Set:i%CommBoard'="" i%CommBoard=(..CommBoardNormalize(i%CommBoard))
	If m%MedRec Set:i%MedRec'="" i%MedRec=(..MedRecNormalize(i%MedRec))
	If m%NrseMgr Set:i%NrseMgr'="" i%NrseMgr=(..NrseMgrNormalize(i%NrseMgr))
	If m%PCPFlag Set:i%PCPFlag'="" i%PCPFlag=(..PCPFlagNormalize(i%PCPFlag))
	If m%Pager Set:i%Pager'="" i%Pager=(..PagerNormalize(i%Pager))
	If m%PatientNameFormat Set:i%PatientNameFormat'="" i%PatientNameFormat=(..PatientNameFormatNormalize(i%PatientNameFormat))
	If m%PendingStsLookBack Set:i%PendingStsLookBack'="" i%PendingStsLookBack=(..PendingStsLookBackNormalize(i%PendingStsLookBack))
	If m%Phone Set:i%Phone'="" i%Phone=(..PhoneNormalize(i%Phone))
	If m%PtArmBand Set:i%PtArmBand'="" i%PtArmBand=(..PtArmBandNormalize(i%PtArmBand))
	If m%PtLabels Set:i%PtLabels'="" i%PtLabels=(..PtLabelsNormalize(i%PtLabels))
	If m%PtRtSheet Set:i%PtRtSheet'="" i%PtRtSheet=(..PtRtSheetNormalize(i%PtRtSheet))
	If m%RtSheet Set:i%RtSheet'="" i%RtSheet=(..RtSheetNormalize(i%RtSheet))
	If m%SMTPSERVER Set:i%SMTPSERVER'="" i%SMTPSERVER=(..SMTPSERVERNormalize(i%SMTPSERVER))
	If m%ShoCons Set:i%ShoCons'="" i%ShoCons=(..ShoConsNormalize(i%ShoCons))
	If m%ShoDlySum Set:i%ShoDlySum'="" i%ShoDlySum=(..ShoDlySumNormalize(i%ShoDlySum))
	If m%ShoNrse Set:i%ShoNrse'="" i%ShoNrse=(..ShoNrseNormalize(i%ShoNrse))
	If m%ShoPrv Set:i%ShoPrv'="" i%ShoPrv=(..ShoPrvNormalize(i%ShoPrv))
	If m%ShoUsedRm Set:i%ShoUsedRm'="" i%ShoUsedRm=(..ShoUsedRmNormalize(i%ShoUsedRm))
	If m%Site Set:i%Site'="" i%Site=(..SiteNormalize(i%Site))
	If m%SiteName Set:i%SiteName'="" i%SiteName=(..SiteNameNormalize(i%SiteName))
	If m%StandAlone Set:i%StandAlone'="" i%StandAlone=(..StandAloneNormalize(i%StandAlone))
	If m%SwitchEHRPat Set:i%SwitchEHRPat'="" i%SwitchEHRPat=(..SwitchEHRPatNormalize(i%SwitchEHRPat))
	If m%TimeOut Set:i%TimeOut'="" i%TimeOut=(..TimeOutNormalize(i%TimeOut))
	If m%TriageRpt Set:i%TriageRpt'="" i%TriageRpt=(..TriageRptNormalize(i%TriageRpt))
	If m%TwoClinics Set:i%TwoClinics'="" i%TwoClinics=(..TwoClinicsNormalize(i%TwoClinics))
	If m%User Set:i%User'="" i%User=(..UserNormalize(i%User))
	If m%UserDUZ Set:i%UserDUZ'="" i%UserDUZ=(..UserDUZNormalize(i%UserDUZ))
	If m%UserName Set:i%UserName'="" i%UserName=(..UserNameNormalize(i%UserName))
	If m%UserPrefComp Set:i%UserPrefComp'="" i%UserPrefComp=(..UserPrefCompNormalize(i%UserPrefComp))
	If m%UserPrefDOB Set:i%UserPrefDOB'="" i%UserPrefDOB=(..UserPrefDOBNormalize(i%UserPrefDOB))
	If m%UserPrefSex Set:i%UserPrefSex'="" i%UserPrefSex=(..UserPrefSexNormalize(i%UserPrefSex))
	If m%Verify Set:i%Verify'="" i%Verify=(..VerifyNormalize(i%Verify))
	If m%WhiteboardShowAcuity Set:i%WhiteboardShowAcuity'="" i%WhiteboardShowAcuity=(..WhiteboardShowAcuityNormalize(i%WhiteboardShowAcuity))
	If m%WhiteboardShowAge Set:i%WhiteboardShowAge'="" i%WhiteboardShowAge=(..WhiteboardShowAgeNormalize(i%WhiteboardShowAge))
	If m%WhiteboardShowChartNumber Set:i%WhiteboardShowChartNumber'="" i%WhiteboardShowChartNumber=(..WhiteboardShowChartNumberNormalize(i%WhiteboardShowChartNumber))
	If m%WhiteboardShowComplaint Set:i%WhiteboardShowComplaint'="" i%WhiteboardShowComplaint=(..WhiteboardShowComplaintNormalize(i%WhiteboardShowComplaint))
	If m%WhiteboardShowName Set:i%WhiteboardShowName'="" i%WhiteboardShowName=(..WhiteboardShowNameNormalize(i%WhiteboardShowName))
	If m%WhiteboardShowNotes Set:i%WhiteboardShowNotes'="" i%WhiteboardShowNotes=(..WhiteboardShowNotesNormalize(i%WhiteboardShowNotes))
	If m%WhiteboardShowNurse Set:i%WhiteboardShowNurse'="" i%WhiteboardShowNurse=(..WhiteboardShowNurseNormalize(i%WhiteboardShowNurse))
	If m%WhiteboardShowOrders Set:i%WhiteboardShowOrders'="" i%WhiteboardShowOrders=(..WhiteboardShowOrdersNormalize(i%WhiteboardShowOrders))
	If m%WhiteboardShowProvider Set:i%WhiteboardShowProvider'="" i%WhiteboardShowProvider=(..WhiteboardShowProviderNormalize(i%WhiteboardShowProvider))
	If m%WhiteboardShowRoom Set:i%WhiteboardShowRoom'="" i%WhiteboardShowRoom=(..WhiteboardShowRoomNormalize(i%WhiteboardShowRoom))
	Quit 1 }
%OnDeleteSource(pID) public {
  Quit ##class(BEDD.EDSYSTEM).%DeleteId(pID)
}
%OnLoadModel(pSource) public {
    Set ..SMTPSERVER = pSource.SMTPSERVER
    Set ..TimeOut = pSource.TimeOut
    Set ..Site = pSource.Site
    Set ..Phone = pSource.Phone
    Set ..MedRec = pSource.MedRec
    Set ..RtSheet = pSource.RtSheet
    Set ..PtRtSheet=pSource.PtRtSheet
    Set ..PtArmBand=pSource.PtArmBand
    Set ..PtLabels=pSource.PtLabels
    Set ..StandAlone = pSource.StandAlone
    Set ..TwoClinics = pSource.TwoClinics
    Set ..TriageRpt = pSource.TriageRpt
    Set ..ShoUsedRm = pSource.ShoUsedRm
    Set ..ShoNrse = pSource.ShoNrse
    Set ..ShoPrv = pSource.ShoPrv
    Set ..ShoCons = pSource.ShoCons
    Set ..ShoDlySum = pSource.ShoDlySum
    Set ..CommBoard = pSource.CommBoard
    Set ..AutoNote = pSource.AutoNote
    Set ..PCPFlag = pSource.PCPFlag
    Set ..SwitchEHRPat = pSource.SwitchEHRPat
    Set ..PendingStsLookBack = pSource.PendingStsLookBack
    Set ..Verify = pSource.Verify
	Set ..WhiteboardShowProvider = pSource.WhiteboardShowProvider
	Set ..WhiteboardShowNurse = pSource.WhiteboardShowNurse
	Set ..WhiteboardShowOrders = pSource.WhiteboardShowOrders
	Set ..WhiteboardShowNotes = pSource.WhiteboardShowNotes
	Set ..WhiteboardShowAge = pSource.WhiteboardShowAge
	Set ..WhiteboardShowComplaint = pSource.WhiteboardShowComplaint
	Set ..WhiteboardShowChartNumber = pSource.WhiteboardShowChartNumber
	Set ..WhiteboardShowRoom = pSource.WhiteboardShowRoom
	Set ..WhiteboardShowName = pSource.WhiteboardShowName
	Set ..WhiteboardShowAcuity = pSource.WhiteboardShowAcuity
    Quit 1 }
%OnNewSource(pSC) public { Set:'($data(pSC)#2) pSC=1
  Quit ##class(BEDD.EDSYSTEM).%New()
}
%OnOpenSource(pID,pConcurrency=-1,pSC) public { Set:'($data(pSC)#2) pSC=1
  Quit ##class(BEDD.EDSYSTEM).%OpenId(pID)
}
%OnSaveSource(pSource) public {
   Set tSC = pSource.%Save()
   Set ..%id = pSource.%Id()
   Quit tSC }
%OnStoreModel(pSource) public {
    Set pSource.SMTPSERVER = ..SMTPSERVER
    Set pSource.TimeOut = ..TimeOut
    Set pSource.Site = ..Site
    Set pSource.Phone = ..Phone
    Set pSource.MedRec = ..MedRec
    Set pSource.RtSheet = ..RtSheet
    Set pSource.PtArmBand = ..PtArmBand
    Set pSource.PtLabels = ..PtLabels
    Set pSource.PtRtSheet = ..PtRtSheet
    Set pSource.StandAlone = ..StandAlone
    Set pSource.TwoClinics = ..TwoClinics
    Set pSource.TriageRpt = ..TriageRpt
    Set pSource.ShoUsedRm = ..ShoUsedRm
    Set pSource.ShoNrse = ..ShoNrse
    Set pSource.ShoPrv = ..ShoPrv
    Set pSource.ShoCons = ..ShoCons
    Set pSource.ShoDlySum = ..ShoDlySum
    Set pSource.CommBoard = ..CommBoard
    Set pSource.AutoNote = ..AutoNote
    Set pSource.PCPFlag = ..PCPFlag
    Set pSource.SwitchEHRPat = ..SwitchEHRPat
    Set pSource.PendingStsLookBack = ..PendingStsLookBack
    Set pSource.WhiteboardShowProvider = ..WhiteboardShowProvider
    Set pSource.WhiteboardShowNurse = ..WhiteboardShowNurse
    Set pSource.WhiteboardShowOrders = ..WhiteboardShowOrders
    Set pSource.WhiteboardShowNotes = ..WhiteboardShowNotes
    Set pSource.WhiteboardShowAge = ..WhiteboardShowAge
    Set pSource.WhiteboardShowComplaint = ..WhiteboardShowComplaint
    Set pSource.WhiteboardShowChartNumber = ..WhiteboardShowChartNumber
    Set pSource.WhiteboardShowRoom = ..WhiteboardShowRoom
    Set pSource.WhiteboardShowName = ..WhiteboardShowName
    Set pSource.WhiteboardShowAcuity = ..WhiteboardShowAcuity
    Quit pSource.%Save() }
%ValidateObject(force=0) public {
	Set sc=1
	If '$system.CLS.GetModified() Quit sc
	If m%%id Set iv=..%id If iv'="" Set rc=(..%idIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"%id",iv)
	If m%%seriesCount Set iv=..%seriesCount If iv'="" Set rc=(..%seriesCountIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"%seriesCount",iv)
	If m%AutoNote Set iv=..AutoNote If iv'="" Set rc=(..AutoNoteIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"AutoNote",iv)
	If m%ChargeNrseA Set iv=..ChargeNrseA If iv'="" Set rc=(..ChargeNrseAIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"ChargeNrseA",iv)
	If m%ChargeNrseP Set iv=..ChargeNrseP If iv'="" Set rc=(..ChargeNrsePIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"ChargeNrseP",iv)
	If m%ChiefofStaff Set iv=..ChiefofStaff If iv'="" Set rc=(..ChiefofStaffIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"ChiefofStaff",iv)
	If m%CommBoard Set iv=..CommBoard If iv'="" Set rc=(..CommBoardIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"CommBoard",iv)
	If m%MedRec Set iv=..MedRec If iv'="" Set rc=(..MedRecIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"MedRec",iv)
	If m%NrseMgr Set iv=..NrseMgr If iv'="" Set rc=(..NrseMgrIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"NrseMgr",iv)
	If m%PCPFlag Set iv=..PCPFlag If iv'="" Set rc=(..PCPFlagIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"PCPFlag",iv)
	If m%Pager Set iv=..Pager If iv'="" Set rc=(..PagerIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"Pager",iv)
	If m%PatientNameFormat Set iv=..PatientNameFormat If iv'="" Set rc=(..PatientNameFormatIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"PatientNameFormat",iv)
	If m%PendingStsLookBack Set iv=..PendingStsLookBack If iv'="" Set rc=(..PendingStsLookBackIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"PendingStsLookBack",iv)
	If m%Phone Set iv=..Phone If iv'="" Set rc=(..PhoneIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"Phone",iv)
	If m%PtArmBand Set iv=..PtArmBand If iv'="" Set rc=(..PtArmBandIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"PtArmBand",iv)
	If m%PtLabels Set iv=..PtLabels If iv'="" Set rc=(..PtLabelsIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"PtLabels",iv)
	If m%PtRtSheet Set iv=..PtRtSheet If iv'="" Set rc=(..PtRtSheetIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"PtRtSheet",iv)
	If m%RtSheet Set iv=..RtSheet If iv'="" Set rc=(..RtSheetIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"RtSheet",iv)
	If m%SMTPSERVER Set iv=..SMTPSERVER If iv'="" Set rc=(..SMTPSERVERIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"SMTPSERVER",iv)
	If m%ShoCons Set iv=..ShoCons If iv'="" Set rc=(..ShoConsIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"ShoCons",iv)
	If m%ShoDlySum Set iv=..ShoDlySum If iv'="" Set rc=(..ShoDlySumIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"ShoDlySum",iv)
	If m%ShoNrse Set iv=..ShoNrse If iv'="" Set rc=(..ShoNrseIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"ShoNrse",iv)
	If m%ShoPrv Set iv=..ShoPrv If iv'="" Set rc=(..ShoPrvIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"ShoPrv",iv)
	If m%ShoUsedRm Set iv=..ShoUsedRm If iv'="" Set rc=(..ShoUsedRmIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"ShoUsedRm",iv)
	If m%Site Set iv=..Site If iv'="" Set rc=(..SiteIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"Site",iv)
	If m%SiteName Set iv=..SiteName If iv'="" Set rc=(..SiteNameIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"SiteName",iv)
	If m%StandAlone Set iv=..StandAlone If iv'="" Set rc=(..StandAloneIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"StandAlone",iv)
	If m%SwitchEHRPat Set iv=..SwitchEHRPat If iv'="" Set rc=(..SwitchEHRPatIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"SwitchEHRPat",iv)
	If m%TimeOut Set iv=..TimeOut If iv'="" Set rc=(..TimeOutIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"TimeOut",iv)
	If m%TriageRpt Set iv=..TriageRpt If iv'="" Set rc=(..TriageRptIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"TriageRpt",iv)
	If m%TwoClinics Set iv=..TwoClinics If iv'="" Set rc=(..TwoClinicsIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"TwoClinics",iv)
	If m%User Set iv=..User If iv'="" Set rc=(..UserIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"User",iv)
	If m%UserDUZ Set iv=..UserDUZ If iv'="" Set rc=(..UserDUZIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"UserDUZ",iv)
	If m%UserName Set iv=..UserName If iv'="" Set rc=(..UserNameIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"UserName",iv)
	If m%UserPrefComp Set iv=..UserPrefComp If iv'="" Set rc=(..UserPrefCompIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"UserPrefComp",iv)
	If m%UserPrefDOB Set iv=..UserPrefDOB If iv'="" Set rc=(..UserPrefDOBIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"UserPrefDOB",iv)
	If m%UserPrefSex Set iv=..UserPrefSex If iv'="" Set rc=(..UserPrefSexIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"UserPrefSex",iv)
	If m%Verify Set iv=..Verify If iv'="" Set rc=(..VerifyIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"Verify",iv)
	If m%WhiteboardShowAcuity Set iv=..WhiteboardShowAcuity If iv'="" Set rc=(..WhiteboardShowAcuityIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"WhiteboardShowAcuity",iv)
	If m%WhiteboardShowAge Set iv=..WhiteboardShowAge If iv'="" Set rc=(..WhiteboardShowAgeIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"WhiteboardShowAge",iv)
	If m%WhiteboardShowChartNumber Set iv=..WhiteboardShowChartNumber If iv'="" Set rc=(..WhiteboardShowChartNumberIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"WhiteboardShowChartNumber",iv)
	If m%WhiteboardShowComplaint Set iv=..WhiteboardShowComplaint If iv'="" Set rc=(..WhiteboardShowComplaintIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"WhiteboardShowComplaint",iv)
	If m%WhiteboardShowName Set iv=..WhiteboardShowName If iv'="" Set rc=(..WhiteboardShowNameIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"WhiteboardShowName",iv)
	If m%WhiteboardShowNotes Set iv=..WhiteboardShowNotes If iv'="" Set rc=(..WhiteboardShowNotesIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"WhiteboardShowNotes",iv)
	If m%WhiteboardShowNurse Set iv=..WhiteboardShowNurse If iv'="" Set rc=(..WhiteboardShowNurseIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"WhiteboardShowNurse",iv)
	If m%WhiteboardShowOrders Set iv=..WhiteboardShowOrders If iv'="" Set rc=(..WhiteboardShowOrdersIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"WhiteboardShowOrders",iv)
	If m%WhiteboardShowProvider Set iv=..WhiteboardShowProvider If iv'="" Set rc=(..WhiteboardShowProviderIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"WhiteboardShowProvider",iv)
	If m%WhiteboardShowRoom Set iv=..WhiteboardShowRoom If iv'="" Set rc=(..WhiteboardShowRoomIsValid(iv)) If ('rc) Set sc=$$EmbedErr^%occSystem(sc,rc,5802,"WhiteboardShowRoom",iv)
	Quit sc }
zAutoNoteDisplayToLogical(%val) public {
	Quit ''%val }
zAutoNoteIsValid(%val="") public {
	Q $s($isvalidnum(%val,0,0,2)&&(+%val'=2):1,1:$$Error^%apiOBJ(7206,%val)) }
zAutoNoteNormalize(%val) public {
	Quit %val\1 }
zPatientNameFormatIsValid(%val) public {
	Q $s(%val'[","&&(",FLFF,FLIF,ILIF,"[(","_$select(%val=$c(0):"",1:%val)_",")):1,1:$$Error^%apiOBJ(7205,%val,",FLFF,FLIF,ILIF")) }