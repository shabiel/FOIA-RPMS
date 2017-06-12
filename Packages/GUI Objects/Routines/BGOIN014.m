BGOIN014 ; IHS/MSC/PLS - BGO*1.1*14 ;05-Feb-2015 09:49;PLS
 ;;1.1;BGO COMPONENTS;**14**;Mar 20, 2007
EC Q
 ; Preinit
PRE ;
 D DISABLED("BEHSTROKE.LAUNCHSTROKEBUTTON",0)
 D DISABLED("BEHSTROKE.STROKECONTROL",0)
 D DISABLED("BGOAMI.AMICONTROL",0)
 D DISABLED("BGOAMI.LAUNCHAMIBUTTON",0)
 Q
 ; Postinit
POST ;
 ; Clean up menu items
 ;D CLNMNU
 ; Register RPCs
 D REGNMSP^CIAURPC("BGO","CIAV VUECENTRIC")
 ; Update BGO component versions
 N VER,FDA,PID,IEN,X
 D BMES^XPDUTL("Updating version numbers...")
 F VER=0:1 S X=$P($T(VER+VER),";;",2) Q:'$L(X)  D
 .S PID=$$PRGID^CIAVMCFG($P(X,";"))
 .S:PID FDA(19930.2,PID_",",2)=$P(X,";",2),FDA(19930.2,PID_",",7)=$P(X,";",3)
 D:$D(FDA) FILE^DIE(,"FDA")
 D UPDCHM
 D DISABLED("IHSBGOITEMS.BGOITEMS",1)
 D PARS1
 Q
 ;
UPDCHM ;EP-
 N CHM,PID
 F CHM=0:1 S X=$P($T(CHM+CHM),";;",2) Q:'$L(X)  D
 .S PID=$$PRGID^CIAVMCFG($P(X,";"))
 .D AECHM(PID,$P(X,";",2,99))
 W !!
 Q
PARS ;Store system levels of new parameter
 D EN^XPAR("SYS","BGO PROBLEM EDUCATION",1,"DISEASE PROCESS")
 D EN^XPAR("SYS","BGO PROBLEM EDUCATION",2,"NUTRITION")
 D EN^XPAR("SYS","BGO PROBLEM EDUCATION",3,"EXERCISE")
 D EN^XPAR("SYS","BGO PROBLEM EDUCATION",4,"LIFESTYLE ADAPTATION")
 D EN^XPAR("SYS","BGO PROBLEM EDUCATION",5,"MEDICATIONS")
 D EN^XPAR("SYS","BGO PROBLEM EDUCATION",6,"PREVENTION")
 Q
PARS1 ;EP - Cleanup old parameter values for location
 N PAR,ENT,ERR
 S PAR="" S PAR=$O(^XTV(8989.51,"B","BGO PROBLEM EDUCATION",PAR))
 Q:'+PAR
 S ENT="" F  S ENT=$O(^XTV(8989.5,"AC",PAR,ENT)) Q:ENT=""  D
 .Q:$P(ENT,";",2)'="SC("
 .S ERR=0
 .D NDEL^XPAR(ENT,PAR,.ERR)
 N LIEN
 S LIEN="" S LIEN=$O(^XTV(8989.51,PAR,30,"B",100,LIEN))
 Q:LIEN=""
 S DA(1)=PAR,DA=LIEN
 S DIK="^XTV(8989.51,PAR,30,"
 D ^DIK
 Q
 ; Set DISABLED field of OBJ to VAL
DISABLED(OBJ,VAL) ;
 N PID,FDA
 S VAL=$G(VAL,0)
 S PID=$$PRGID^CIAVMCFG($G(OBJ))
 Q:'PID
 S FDA(19930.2,PID_",",13)=VAL
 D FILE^DIE(,"FDA")
 Q
PICK ;Install the national pick lists
 D UPDATE^BGOSNLK
 Q
 N LP,NAME,SNO,BSTS,RET
 F LP=0:1 S NAME=$P($T(LIST+LP),";;",2) Q:'$L(NAME)  D
 .S BSTS=$P(NAME,"^",1)
 .S SNO=$P(NAME,"^",2)
 .D IMPORT^BGOSNLK(.RET,BSTS,SNO)
 Q
 ;National pick lists
LIST ;;PICK ABNORMAL FINDINGS^ABNORMAL FINDINGS
 ;;PICK CQM Problems^CQM PROBLEMS
 ;;PICK Case Management^CASE MANAGEMENT
 ;;PICK Diabetic Retinopathy^DIABETIC RETINOPATHY
 ;;PICK Eye General^EYE GENERAL
 ;;PICK Immunizations^IMMUNIZATIONS
 ;;PICK NIST Problems^NIST PROBLEMS
 ;;PICK Nutrition^NUTRITION
 ;;PICK Prenatal - Care^PRENATAL CARE
 ;;PICK Prenatal - Problem Fetus^PRENATAL PROBLEM FETUS
 ;;PICK Prenatal - Problem Pregnancy^PRENATAL PROBLEM PREGNANCY
 ;;PICK Prenatal - Risk^PRENATAL RISK
 ;;PICK Public Health Nursing^PUBLIC HEALTH NURSING
 ;;PICK Womens Health^WOMENS HEALTH
 ;;
AECHM(PID,VAL) ;EP-
 N LN,FN,IDX,TXT,ARY,CNT,IENS
 S FN=$P(VAL,";"),CNT=0
 S LN=0 F  S LN=$O(^CIAVOBJ(19930.2,PID,6,LN)) Q:'LN  D  Q:$G(IDX)
 .S TXT=^CIAVOBJ(19930.2,PID,6,LN,0)
 .S ARY(LN,0)=TXT,CNT=CNT+1
 .I $$UP^XLFSTR(TXT)[$$UP^XLFSTR($P(VAL,";")) S IDX=LN
 I $G(IDX) D
 .S ^CIAVOBJ(19930.2,PID,6,IDX,0)=VAL
 E  D
 .S ARY($S('CNT:1,1:CNT+1),0)=VAL
 .S IENS=PID_","
 .S FDA(19930.2,IENS,10)="ARY"
 .D FILE^DIE(,"FDA")
 Q
 ;
CLNMNU ;
 ; Remove option from menu
 N OPTION,MENU,DA,DIK,PAR,ERR,X
 S (OPTION,MENU)=""
 S OPTION="BGO IMM STOP ADDING CPT CODES"
 S MENU="BGOIMM MAIN"
 S X=$$DELETE^XPDMENU(MENU,OPTION)
 Q:'+X
 ;Inactivate the option
 D OUT^XPDMENU(OPTION,"No longer used")
 ;Clean out the parameter
 S PAR=""
 S PAR=$O(^XTV(8989.51,"B","BGO IMM STOP ADDING CPT CODES",PAR))
 Q:'+PAR
 S ERR=0
 D NDEL^XPAR("USR",PAR,.ERR)
 Q:ERR>0
 D NDEL^XPAR("DIV",PAR,.ERR)
 Q:ERR>0
 D NDEL^XPAR("PKG",PAR,.ERR)
 Q:ERR>0
 ;Delete the parameter
 S DA=PAR,DIK="^XTV(8989.51," D ^DIK
 Q
VER ;;IHSBGOREPFACTORS.IHSBGOREPFACTORSCTRL;1.2.0.189;66F07F131F1E79278F6688B794DF8C12
 ;;BEHSTROKE.LAUNCHSTROKEBUTTON;1.1.5423.18571;C2DABB84F3A2BC6654CDEA2E1B51DC34
 ;;BEHSTROKE.STROKECONTROL;1.1.5423.18571;C2DABB84F3A2BC6654CDEA2E1B51DC34
 ;;IHSBGOFAMHX.BGOFAMHX;1.0.0.685;1D8437085059DD5D8906D803207BA1CF
 ;;IHSBGOEXAMS.BGOEXAMS;1.1.0.378;AEFAA36DFEB0441C04E6CBD866572FE6
 ;;IHSBGOICDPICKLIST.ICDPICKLIST;1.2.0.80;5325FA6D2D04CB49B51F8F268EAE6091
 ;;IHSBGOIMMUNIZATION.BGOIMM;1.2.0.202;6D85E2938E78FD9F5CEC44751C223136
 ;;IHSBGOITEMS.BGOITEMS;1.2.0.52;0C7170AD511FF6918F2F9AE71DDA5495
 ;;IHSBGOPATIENTED.BGOPATED;1.2.0.261;8B46BC127E3A27902622F5767EDB6012
 ;;IHSBGOPOVHISTORY.BGOPOVHISTORY;1.2.0.52;543D1F69A03FDEC031DF87424267533B
 ;;IHSBGOPROBLEM.BGOPROBLEM;1.2.0.104;A2253043611D247E6F9FA66CC3C0BD27
 ;;IHSBGOPROCEDURESVIEWER.BGOPROCVIEW;1.2.0.95;397EA5D371EE37165B9698B100C2A5FD
 ;;IHSBGOREPHISTORY.IHSBGOREPHISTCTRL;1.2.0.84;E1EE7F72D0668C9FECA27BABF3D0CAFF
 ;;IHSBGOSKINTEST.IHSBGOSK;1.2.0.157;EB79656A72A8E344422BD79DD0AB1514
 ;;IHSBGOVCPT.BGOVCPT;1.2.0.77;2A504049BC84E6E315CCD66812FD0166
 ;;BGOAMI.AMICONTROL;1.1.5514.16557;AE48C8A9F9B9D4313C4F1CC02F8F89D3
 ;;BGOAMI.LAUNCHAMIBUTTON;1.1.5514.16557;AE48C8A9F9B9D4313C4F1CC02F8F89D3
 ;;IHSBGOVPOV.BGOVPOV;1.2.0.54;07AE288DC5B36A930171836C432E484E
 ;;IHSBGOEYEEXAM.BGOEYEEXAM;1.1.0.16;05678FD748362E0DC6D746316070E192
 ;;IHSBGOEM.BGOEMCTRL;1.1.0.236;FEF42FAEEA4445C191849A04B1B28013
 ;;IHSBGOINFANTFEED.IHSBGOINFANTFEEDCTRL;1.2.0.218;0C13F7AFF3AA9DF355B7AAF53280CCA2
 ;;BEHANTICOAG.BEHANTICOAG;1.1.5506.27895;55EDD671BE54E67999652D4D71D4E0EE
 ;;
CHM ;;BEHANTICOAG.BEHANTICOAG;BEHAntiCoag.chm;2014.5.21.183436;70484B064F581E5554BABD372BCF6EEA
 ;;BEHSTROKE.LAUNCHSTROKEBUTTON;BEHStroke.chm;2014.5.22.152830;599ACF2FECEEF849F144D34A74ACD521
 ;;BEHSTROKE.STROKECONTROL;BEHStroke.chm;2014.5.22.152830;599ACF2FECEEF849F144D34A74ACD521
 ;;IHSBGOVCPT.BGOVCPT;IhsBgoVCPT.chm;2014.6.6.135616;C66D5A8C9EFE075A8F7A8FDE78075065
 ;;IHSBGOREPFACTORS.IHSBGOREPFACTORSCTRL;IhsBgoRepFactors.chm;2014.5.22.181014;3CF377330028B828FFF505029FAE7C1D
 ;;IHSBGOIMMUNIZATION.BGOIMM;IhsBgoImmunization.chm;2014.9.5.211106;43FBE56E45FD9FDEE26DEB82755C6F09
 ;;BGOAMI.AMICONTROL;BGOAMI.CHM;2014.5.22.105752;3DF8066FD4A72AAA97B4D72785708313
 ;;BGOAMI.LAUNCHAMIBUTTON;BGOAMI.CHM;2014.5.22.105752;3DF8066FD4A72AAA97B4D72785708313
 ;;IHSBGOITEMS.BGOITEMS;IhsBgoItems.chm;2014.11.20.165756;397D0D31C6F7072AE1B18953BEF76B2B
 ;;IHSBGOVPOV.BGOVPOV;IhsBgoVPOV.chm;2014.11.24.173016;3343707CA4D65E34F675C013E59724D1
 ;;IHSBGOPOVHISTORY.BGOPOVHISTORY;IhsBgoPovHistory.chm;2014.11.24.154400;D8AD1EA0FA144F8075CC3E05323D4717
 ;;