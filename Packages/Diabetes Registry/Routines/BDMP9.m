BDMP9 ; IHS/CMI/LAB - post init to patch 8 ;
 ;;2.0;DIABETES MANAGEMENT SYSTEM;**2**;JUN 14, 2007
 ;
 D ^BDMBUL
 S ATXX=$O(^ATXAX("B","BDM DIABETES REG NEW CASE",0)) I ATXX D ZTM^ATXAX
 S ATXX=$O(^ATXAX("B","BDM DIABETES REG COMPLICATION",0)) I ATXX D ZTM^ATXAX
 ;add new report to menu
 NEW X
 S X=$$ADD^XPDMENU("BDM M DX/PROC COUNT REPORTS","BDM P RX RELEASE","RXDA")
 I 'X W "Attempt to add RX Data Analysis Report option failed." H 3
 S X=$$ADD^XPDMENU("BDM M MAN QUALITY ASSURANCE","BDMBP IN/OUT CONTROL BPS","BPC")
 I 'X W "Attempt to add RX Data Analysis Report option failed." H 3
 S X=$$ADD^XPDMENU("BDM M MAIN DM MENU","BDM DM PTS NO DX PL","PLDX")
 I 'X W "Attempt to add Patients w/o DM option failed.." H 3
 S X=$$ADD^XPDMENU("BDM M MAIN DM MENU","BDM DM2000 AUDIT MENU","DM20")
 I 'X W "Attempt to add DM 2000 Audit Menu option failed.." H 3
 S X=$$ADD^XPDMENU("BDM M MAIN DM MENU","BDM TAXONOMY SETUP","TS")
 I 'X W "Attempt to add Taxonomy Setup menu option failed.." H 3
 S X=$$ADD^XPDMENU("BDM M MAIN DM MENU","BDM FLOW SHEET SETUP","FS")
 I 'X W "Attempt to add Flow Sheet Setup Menu option failed.." H 3
 S X=$$ADD^XPDMENU("BDM M MAN PATIENT LISTINGS","BDM P ELDER CARE 1","ELFA")
 I 'X W "Attempt to add Elder Care Report 1 option failed." H 3
 S X=$$ADD^XPDMENU("BDM M MAN PATIENT LISTINGS","BDM P ELDER CARE 2","ELFC")
 I 'X W "Attempt to add Elder Care Report 2 option failed." H 3
 S X=$$ADD^XPDMENU("BDM M MAN PATIENT LISTINGS","BDM P ELDER CARE 3","ELFT")
 I 'X W "Attempt to add Elder Care Report 3 option failed." H 3
 ;set up HDL taxonomy
TAXS ;
 S ATXFLG=1
 D LAB
 D DRUGS
 D DMEDUC
 K ATXFLG,ATXX,BDMX,BDMDA,BDMTX
 Q
LAB ;
 S BDMX="DM AUDIT HDL TAX" D LAB1
 Q
LAB1 ;
 W !,"Creating ",BDMX," Taxonomy..."
 S BDMDA=$O(^ATXLAB("B",BDMX,0))
 Q:BDMDA  ;taxonomy already exisits
 S X=BDMX,DIC="^ATXLAB(",DIC(0)="L",DIADD=1,DLAYGO=9002228 D ^DIC K DIC,DA,DIADD,DLAYGO,I
 I Y=-1 W !!,"ERROR IN CREATING ",BDMX," TAX" Q
 S BDMTX=+Y,$P(^ATXLAB(BDMTX,0),U,2)=BDMX,$P(^(0),U,5)=DUZ,$P(^(0),U,6)=DT,$P(^(0),U,8)="B",$P(^(0),U,9)=60,^ATXLAB(BDMTX,21,0)="^9002228.02101PA^0^0"
 S DA=BDMTX,DIK="^ATXAX(" D IX1^DIK
 Q
DRUGS ;set up drug taxonomies
 S BDMX="DM AUDIT LIPID LOWERING DRUGS" D DRUG1
 Q
DRUG1 ;
 W !,"Creating ",BDMX," Taxonomy..."
 S BDMDA=$O(^ATXAX("B",BDMX,0))
 Q:BDMDA  ;taxonomy already exisits
 S X=BDMX,DIC="^ATXAX(",DIC(0)="L",DIADD=1,DLAYGO=9002226 D ^DIC K DIC,DA,DIADD,DLAYGO,I
 I Y=-1 W !!,"ERROR IN CREATING ",BDMX," TAX" Q
 S BDMTX=+Y,$P(^ATXAX(BDMTX,0),U,2)=BDMX,$P(^(0),U,5)=DUZ,$P(^(0),U,8)=0,$P(^(0),U,9)=DT,$P(^(0),U,12)=173,$P(^(0),U,13)=0,$P(^(0),U,15)=50,^ATXAX(BDMTX,21,0)="^9002226.02101A^0^0"
 S DA=BDMTX,DIK="^ATXAX(" D IX1^DIK
 Q
DMEDUC ;
 W !,"Creating Education topics taxonomy..."
 S BDMDA=0 S BDMDA=$O(^ATXAX("B","DM AUDIT SMOKING CESS EDUC",BDMDA)) I 'BDMDA D
 .S X="DM AUDIT SMOKING CESS EDUC",DIC="^ATXAX(",DIC(0)="L",DIADD=1,DLAYGO=9002226 D ^DIC K DIC,DA,DIADD,DLAYGO,I
 .I Y=-1 W !!,"ERROR IN CREATING DM AUDIT SMOKING CESS EDUC TAX" Q
 .S BDMTX=+Y,$P(^ATXAX(BDMTX,0),U,2)="DM AUDIT SMOKING CESS EDUC",$P(^(0),U,5)=DUZ,$P(^(0),U,8)=0,$P(^(0),U,9)=DT,$P(^(0),U,12)=280,$P(^(0),U,13)=0,$P(^(0),U,15)=9999999.09,^ATXAX(BDMTX,21,0)="^9002226.02101A^0^0"
 .S ^ATXAX(BDMTX,21,BDMX,0)=+Y,$P(^ATXAX(BDMTX,21,0),U,3)=BDMX,$P(^(0),U,4)=BDMX,^ATXAX(BDMTX,21,"AA",+Y,+Y)=""
 .S DA=BDMTX,DIK="^ATXAX(" D IX1^DIK
 Q