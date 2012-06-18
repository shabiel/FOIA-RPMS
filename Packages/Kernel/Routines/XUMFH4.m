XUMFH4 ;CIOFO-SF/RAM - FORUM IMF handler ;06/28/00 [ 07/29/2004   9:01 AM ]
 ;;8.0;KERNEL;**217,218**;Jul 10, 1995
 ;
 ; This routine handles Master File HL7 messages.
 ;
MAIN ; -- entry point
 ;
 N CNT,ERR,I,X,HLFS,HLCS,ERROR,HLRESLTA,IFN,IEN,MTPE,TYPE
 N HDT,KEY,MID,VALUE,XREF,PARAM,ROOT,SEG
 N HLSCS,SFAC
 ;
 D INIT,PROCESS,BG,REPLY,EXIT
 ;
 Q
 ;
INIT ; -- initialize
 ;
 K ^TMP("DILIST",$J),^TMP("DIERR",$J)
 K ^TMP("HLS",$J),^TMP("HLA",$J)
 ;
 S (ERROR,CNT,TYPE)=0
 S HLFS=HL("FS"),HLCS=$E(HL("ECH")),HLSCS=$E(HL("ECH"),4)
 ;
 Q
 ;
PROCESS ; -- pull message text
 ;
 F  X HLNEXT Q:HLQUIT'>0  D
 .Q:$P(HLNODE,HLFS)=""
 .D @($P(HLNODE,HLFS))
 ;
 Q
 ;
MSH ; -- MSH segment
 ;
 S SFAC=$P(HLNODE,HLFS,4)
 ;
 Q
 ;
MSA ; -- MSA segment
 ;
 N CODE
 ;
 S CODE=$P(HLNODE,HLFS,2)
 ;
 I CODE="AE"!(CODE="AR") D
 .S ERROR=ERROR_U_$P(HLNODE,HLFS,4)_U_$G(ERR)
 .D EM("MSA segement error/reject message")
 ;
 Q
 ;
MFI ; -- MFI segment
 ;
 Q:ERROR
 Q:$G(IFN)
 ;
 I $P(HLNODE,HLFS,2)="" D  Q
 .S ERROR="1^MFI segment missing Master File Identifier"
 .D EM(ERROR,.ERR)
 .S ERROR=ERROR_U_$G(ERR)
 S IFN=$$MFI^XUMFP($P(HLNODE,HLFS,2))
 I 'IFN D  Q
 .S ERROR="1^IFN in MFI could not be resolved"
 .D EM(ERROR,.ERR)
 .S ERROR=ERROR_U_$G(ERR)
 ;
 Q
 ;
MFE ; -- MFE segment
 ;
 Q:ERROR
 Q:$G(IEN)
 ;
 S KEY=$P(HLNODE,HLFS,5)
 ;
 I $E(KEY,1,3)'=$E(SFAC,1,3) D  Q
 .S ERROR="1^sending facility not authorized to edit this entry"
 .D EM(ERROR)
 ;
 S XREF=$P(KEY,HLCS,3)
 S:KEY'="" IEN=$$FIND1^DIC(IFN,,"BX",$P(KEY,HLCS),XREF,,"ERR")
 S IEN=$S(IEN:IEN,$G(ERR)'="":"ERROR",1:"NEW")
 I IEN="ERROR" D  Q
 .S ERROR="1^MFE segment couldn't resolve IEN"
 .D EM(ERROR,.ERR)
 .K ERR
 D MAIN^XUMFP(IFN,IEN,TYPE,.PARAM,.ERROR)
 ;
 Q
 ;
ZIN ; -- VHA Institution segment
ZFT ; -- VHA Facility Type
ZZZ ; -- get [Z...] segment(s)
 ;
 Q:ERROR
 ;
 N FDA,IENS,FIELD,ERR,PRE,POST,XUMF,MULT,FDA1,SEQ,SEQ1,SEQ2,SEQ3
 ;
 S PRE=$G(^TMP("XUMF MFS",$J,"PARAM","PRE"))
 D:PRE'="" @(PRE)
 ;
 S XUMF=1
 ;
 S SEG=$P(HLNODE,HLFS)
 S IENS=$S(IEN:IEN,1:"+1")_","
 S SEQ=0
 F  S SEQ=$O(^TMP("XUMF MFS",$J,"PARAM","SEG",SEG,"SEQ",SEQ)) Q:'SEQ  D
 .S SEQ1=$P(SEQ,"."),SEQ2=$P(SEQ,".",2)
 .S SEQ3=$O(^TMP("XUMF MFS",$J,"PARAM","SEG",SEG,"SEQ",SEQ,"HLSCS",0))
 .I SEQ3 D SUBCOMP Q
 .S FIELD=$O(^TMP("XUMF MFS",$J,"PARAM","SEG",SEG,"SEQ",SEQ,0))
 .I FIELD=".01" D
 ..N FDA,IEN1
 ..S TYP=$G(^TMP("XUMF MFS",$J,"PARAM","SEG",SEG,"SEQ",SEQ,FIELD))
 ..S VALUE=$$VALUE^XUMFH(.HLNODE,SEQ)
 ..S:SEQ2 VALUE=$P(VALUE,HLCS,SEQ2)
 ..S VALUE=$$DTYP^XUMFP(VALUE,TYP,$S(SEQ2:HLSCS,1:HLCS),0)
 ..S FDA(IFN,IENS,FIELD)=VALUE
 ..D UPDATE^DIE("E","FDA","IEN1","ERR")
 ..I $D(ERR) D
 ...D EM("update DIE call error message in ZZZ",.ERR)
 ...K ERR
 ..I $D(IEN1) S IENS=IEN1(1)_","
 .I 'FIELD D SUBFILE Q
 .S TYP=$G(^TMP("XUMF MFS",$J,"PARAM","SEG",SEG,"SEQ",SEQ,FIELD))
 .S VALUE=$$VALUE^XUMFH(.HLNODE,SEQ)
 .S:SEQ2 VALUE=$P(VALUE,HLCS,SEQ2)
 .S VALUE=$$DTYP^XUMFP(VALUE,TYP,$S(SEQ2:HLSCS,1:HLCS),0)
 .S FDA(IFN,IENS,FIELD)=VALUE
 ;
 M FDA=FDA1
 K FDA1
 ;
 D FILE^DIE("E","FDA","ERR")
 I $D(ERR) D
 .D EM("file DIE call error message in ZZZ",.ERR)
 .K ERR
 ;
 S POST=$G(^TMP("XUMF MFS",$J,"PARAM","POST"))
 D:POST'="" @(POST)
 ;
 Q
 ;
SUBFILE ; -- process subfile record
 ;
 N IFN,IENS1,KEY1,FIELD,TYP,MKEY,ERR
 ;
 S IFN=^TMP("XUMF MFS",$J,"PARAM","SEG",SEG,"SEQ",SEQ,"FILE")
 S FIELD=^TMP("XUMF MFS",$J,"PARAM","SEG",SEG,"SEQ",SEQ,"FIELD")
 S TYP=^TMP("XUMF MFS",$J,"PARAM","SEG",SEG,"SEQ",SEQ,"DTYP")
 S VALUE=$$VALUE^XUMFH(.HLNODE,SEQ)
 S:SEQ2 VALUE=$P(VALUE,HLCS,SEQ2)
 S VALUE=$$DTYP^XUMFP(VALUE,TYP,$S(SEQ2:HLSCS,1:HLCS),0)
 ;
 S MULT=$G(^TMP("XUMF MFS",$J,"PARAM","MULT","ZIN",SEQ))
 S MKEY=$G(^TMP("XUMF MFS",$J,"PARAM","MKEY","ZIN",SEQ))
 I MULT=SEQ Q:VALUE=""  D
 .N FDA,IEN
 .S FDA(IFN,"?+1,"_IENS,.01)=VALUE
 .D UPDATE^DIE("E","FDA","IEN","ERR")
 .I $D(ERR) D
 ..D EM("update DIE call error message in SUBFILE",.ERR)
 ..K ERR
 .S IENS1=IEN(1)_","_IENS,MULT(SEQ)=IENS1
 I 'MULT D
 .N FDA,IEN
 .S FDA(IFN,"?+1,"_IENS,.01)=MKEY
 .D UPDATE^DIE("E","FDA","IEN","ERR")
 .I $D(ERR) D
 ..D EM("update DIE call error message in SUBFILE",.ERR)
 ..K ERR
 .S IENS1=IEN(1)_","_IENS,MULT(SEQ)=IENS1
 .S FDA1(IFN,IENS1,.01)=MKEY
 I MULT,MULT'=SEQ S IENS1=$G(MULT(+MULT)) Q:IENS1=""
 S FDA1(IFN,IENS1,FIELD)=VALUE
 ;
 Q
 ;
SUBCOMP ; -- subcomponents
 ;
 S SEQ3=0
 F  S SEQ3=$O(^TMP("XUMF MFS",$J,"PARAM","SEG",SEG,"SEQ",SEQ,"HLSCS",SEQ3)) Q:'SEQ3  D
 .S FIELD=$O(^TMP("XUMF MFS",$J,"PARAM","SEG",SEG,"SEQ",SEQ,"HLSCS",SEQ3,0))
 .S TYP=$G(^TMP("XUMF MFS",$J,"PARAM","SEG",SEG,"SEQ",SEQ,"HLSCS",SEQ3,FIELD))
 .S VALUE=$$VALUE^XUMFH(.HLNODE,SEQ)
 .S VALUE=$P(VALUE,HLCS,SEQ2)
 .S VALUE=$P(VALUE,HLSCS,SEQ3)
 .S VALUE=$$DTYP^XUMFP(VALUE,TYP,HLSCS,0)
 .S FDA(IFN,IENS,FIELD)=VALUE
 ;
 Q
 ;
BG ; -- background job
 ;
 Q:ERROR
 Q:HL("MTN")'="MFN"
 ;
 N ZTRTN,ZTDESC,ZTDTH,ZTIO,ZTSAVE
 ;
 S ZTRTN="BRDCST^XUMFH4"
 S ZTDESC="XUMF Broadcast IMF address changes"
 S ZTDTH=$$NOW^XLFDT
 S ZTSAVE("IEN")=""
 S ZTIO=""
 ;
 D ^%ZTLOAD
 ;
 Q
 ;
BRDCST ; -- broadcast update
 ;
 N PARAM
 ;
 K ^TMP("HLS",$J),^TMP("HLA",$J),^TMP("XUMF MFS",$J),PARAM
 ;
 S PARAM("PROTOCOL")=$O(^ORD(101,"B","XUMF MFN",0))
 S PARAM("BROADCAST")=1
 D MAIN^XUMFP(4,IEN,0,.PARAM,.ERROR) Q:ERROR
 D MAIN^XUMFI(4,IEN,0,.PARAM,.ERROR)
 ;
 S ZTREQ="@"
 ;
 Q
 ;
REPLY ; -- master file response
 ;
 Q:HL("MTN")="MFK"
 ;
 S:(TYPE<10) TYPE=(TYPE+10)
 ;
 S IFN=$G(IFN),IEN=$G(IEN)
 ;
 D MAIN^XUMFP(IFN,IEN,TYPE,.PARAM,.ERROR)
 D MAIN^XUMFI(IFN,IEN,TYPE,.PARAM,.ERROR)
 ;
 Q
 ;
EXIT ; -- cleanup, and quit
 ;
 K ^TMP("DILIST",$J),^TMP("DIERR",$J),^TMP("HLS",$J),^TMP("HLA",$J)
 ;
 Q
 ;
EM(ERROR,ERR) ; -- error message
 ;
 N X,XMSUB,XMY,XMTEXT,FLG
 ;
 S FLG=0
 ;
 D MSG^DIALOG("AM",.X,80,,"ERR")
 ;
 S X(.1)="HL7 message ID: "_$G(HL("MID"))
 S X(.2)="",X(.3)=$G(ERROR),X(.4)=""
 S XMSUB="IMF HANDLER ERROR MESSAGE"
 S XMY="G.XUMF INSTITUTION"
 S XMTEXT="X("
 ;
 S X=.9 F  S X=$O(X(X)) Q:'X  D
 .I X(X)="" K X(X) Q
 .I X(X)["DINUMed field cannot" S FLG=1 K X(X) Q
 ;
 I FLG Q:'$O(X(.9))
 ;
 D ^XMD
 ;
 Q
 ;