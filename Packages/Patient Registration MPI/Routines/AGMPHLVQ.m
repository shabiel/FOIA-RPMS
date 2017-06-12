AGMPHLVQ ; IHS/SD/TPF - MPI VQQ-Q02 ACK PROCESSOR FOR HLO ; 12/15/2007
 ;;7.2;IHS PATIENT REGISTRATION;**1,3**;MAY 20, 2010;Build 4
 Q
PROC(HLMSGIEN) ;EP - CALLED FROM AGMPIBGP
 N DATA,HLMSTATE,MSGID,MSGSEG,ICNEUID
 D PARSE(.DATA,HLMSGIEN,.HLMSTATE)
 S DFN=DATA(3,4,3,1,1)
 S ACKIEN=HLMSGIEN
 ;05/29/2013 - KJH - TFS8067 - Removed 'RESEND' checks which were looking at the ^HLA global using the IEN for the ^HLB global.
 S HLMSGIEN=$P($G(^HLB(HLMSGIEN,0)),U,2)
 ;WE NEED TO SEND AN A28 NO MATTER WHAT THE REPSONSE IS TO TRIGGER
 ;THE MFN BEING SENT OUT TO LINKED FACILTIES
 ;I $G(DATA(2,3,1,1,1))="NF" D  Q  ;EXACT MATCH NOT FOUND FOR PATIENT SO REQUEST ADD TO MPI
 D CREATMSG^AGMPIHLO(DFN,"A28",,.SUCCESS)
 I 'SUCCESS D NOTIF^AGMPIHLO(DFN,"Unable to create A28 to add patient to MPI from AGMPHLVQ") Q
 D MSGCMPLT^AGMPIBGP(ACKIEN)
 D MSGCMPLT^AGMPIBGP(HLMSGIEN)
 ;05/29/2013 - KJH - TFS8109 - This was causing an extra message to be sent to EDR.
 ;S X="AG UPDATE A PATIENT",DIC=101,INDA=DFN
 ;D EN^XQOR
 ;END IF
 S ICNEUID=$G(DATA(3,4,1,1,1))   ;ICN (VA MPI) OR EUID (SUN MPI)
 I ICNEUID="" D NOTIF^AGMPIHLO(DFN,"ICNEUID PULLED FROM DATA(3,4,1,1,1) WAS EMPTY. NOT CALLING ADDICN") Q
 D ADDICN(ICNEUID,DFN)
 Q
 ;
PARSE(DATA,MIEN,HLMSTATE) ;EP
 N SEG,CNT
 Q:'$$STARTMSG^HLOPRS(.HLMSTATE,MIEN)
 M DATA("HDR")=HLMSTATE("HDR")
 S CNT=0
 F  Q:'$$NEXTSEG^HLOPRS(.HLMSTATE,.SEG)  D
 .S CNT=CNT+1
 .M DATA(CNT)=SEG
 Q
 ;
PROCFAC(ASSOCFAC) ;EP - ADD MPI LINKED FACILTIES TO 'TREATING FACILITY LIST' FILE
 K DIC,DIE,DR,DIR,DA,PTDFN,FAC,SYSCODE,LOCID
 S LOCDFN=DFN
 S DIC(0)="L"
 S DIC="^DGCN(391.91,"
 S X=LOCDFN
 S DIC(0)="LQZ"
 F FAC=1:1 S SYSLOCID=$P(ASSOCFAC,"|",FAC) Q:'SYSLOCID  D
 .S SYSCODE=$P(SYSLOCID,"~")  ;SYSTEM CODE (SUN MPI) OR STATION NUMBER (RPMS & VA) (ORIGINAL DEVELOPMENT USED UNIQUE DB ID)
 .S LOCID=$P(SYSLOCID,"~",2)  ;LOCAL ID (SUN MPI) OR DFN (RPMS & VA)
 .S TFAC=$O(^DIC(4,"D",SYSCODE,""))  ;TREATING FAC PTR
 .S DIC("DR")=".02///`"_TFAC
 .S DIC("DR")=DIC("DR")_";9999999.01////^S X=LOCID"
 .K DD,DO
 .D FILE^DICN
 .Q:Y<0
 Q
 ;
ADDICN(AGICN,DFN) ;EP - ADD TO 'INTEGRATED CONTROL NUMBER' FIELD
 K DIE,DIC,DA,DR,DIR
 S DIE="^DPT("
 S DA=DFN
 S RGRSICN=1
 S DR="991.01///^S X=AGICN"
 D ^DIE
 ;ERROR LOG??
 Q
 ;
MSGERR(LOCALID,HLMTIEN,ERRIEN) ;EP - EROR OCURRED IN VQQ ACK
 D NOW^%DTC
 S AGERROR="LOCALID: "_LOCALID_" -1^SUN MPI ACK RETURN ERR"
 ;06/04/2013 - DMB - Routine does not exist.  Removing call.
 ;    MSGERR does not seem to be called so no functionality seems to be removed
 ;D MAIL^AGMPILD(AGERROR,%,"VQQ",HLMTIEN,ERRIEN)  ;SEND ERROR MAIL MESSAGE
 Q