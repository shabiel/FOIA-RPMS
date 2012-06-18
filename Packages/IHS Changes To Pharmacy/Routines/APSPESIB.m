APSPESIB ;IHS/MSC/PLS - SureScripts HL7 interface - con't;15-Sep-2010 10:50;SM
 ;;7.0;IHS PHARMACY MODIFICATIONS;**1009**;Sep 23, 2004
 Q
TSK ;EP - Entry point for APSPES INBOUND PROCESSOR
 N MSGDT,MSGTYP,MSGEVT,MSGIEN,QNM,QIEN
 S QNM="APSP RPMS"
 Q:'$$GETIEN^HLOAPP(QNM)  ;The APSP RPMS entry in HLO APPLICATION REGISTRY is missing.
 S MSGDT=""
 F  S MSGDT=$O(^HLB("QUEUE","IN",MSGDT)) Q:MSGDT=""  D
 .S MSGTYP=""
 .F  S MSGTYP=$O(^HLB("QUEUE","IN",MSGDT,QNM,MSGTYP)) Q:MSGTYP=""  D
 ..S MSGEVT=""
 ..F  S MSGEVT=$O(^HLB("QUEUE","IN",MSGDT,QNM,MSGTYP,MSGEVT)) Q:MSGEVT=""  D
 ...S MSGIEN=""
 ...F  S MSGIEN=$O(^HLB("QUEUE","IN",MSGDT,QNM,MSGTYP,MSGEVT,MSGIEN)) Q:MSGIEN=""  D
 ....D PROC(MSGIEN)
 Q
 ; Process a single message
PROC(MSGIEN) ;EP
 N PDAYS
 S PDAYS=+$$GET^XPAR("ALL","APSP SS HLO RETENTION DAYS")
 S:'PDAYS PDAYS=7  ;Set default of 7 days
 D PROCNOW^HLOAPI3(MSGIEN,$$FMADD^XLFDT($$NOW^XLFDT,PDAYS))
 K ^HLB("QUEUE","IN",MSGDT,QNM,MSGTYP,MSGEVT,MSGIEN)  ;Remove from "IN" queue
 Q
 ;
PURG ;EP - Entry point for APSPES HLO PURGE
 N PURDT,MSGIEN,PURNOW,QNM
 S QNM="APSP RPMS"
 S PURNOW=$$NOW^XLFDT
 S PURDT=""
 F  S PURDT=$O(^HLB("AD","IN",PURDT)) Q:'PURDT!(PURDT>PURNOW)  D
 .S MSGIEN=""
 .F  S MSGIEN=$O(^HLB("AD","IN",PURDT,MSGIEN)) Q:'MSGIEN  D
 ..Q:'$$VALIDMSG(MSGIEN)
 ..D DELETE^HLOPURGE(MSGIEN)
 Q
 ; Verifies that message is for APSP RPMS
VALIDMSG(MSGIEN) ;EP-
 N MSG,RES
 S RES=$$STARTMSG^HLOPRS(.MSG,MSGIEN)
 S RES=RES&(MSG("HDR","RECEIVING APPLICATION")=QNM)
 Q RES