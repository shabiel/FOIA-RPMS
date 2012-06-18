ACRFPRC4 ;IHS/OIRM/DSD/THL,AEF - PROCESS PENDING DOCUMENTS;  [ 11/01/2001   9:44 AM ]
 ;;2.1;ADMIN RESOURCE MGT SYSTEM;;NOV 05, 2001
 ;;CONTINUATION OF ACRFPRCS
PONUM ;EP;
 N ACRFY
 S ACRNUM=$P(ACRDOC0,U,2)
 I ACRNUM]"",ACRNUM'["PENDING" Q
 Q:$E(ACRNUM,7,10)?4N
 S ACRPODA=$P(ACRDOC0,U,8)
 S ACRFY=$P(^ACRLOCB($P(ACRDOC0,U,6),"DT"),U)
 N S
 S X=^ACRPO(ACRPODA,0)
 S ACRAPT=$P(X,U,4)
 S ACRLC=$P(X,U,5)
 S ACRAREA=$P(X,U,10)
 S ACRFYX=$S(+$E(DT,4,5)<10:DT\10000,1:DT\10000+1)+1700
 S ACRFYX=$S(ACRFYX>ACRFY:ACRFYX,1:ACRFY)
 I ACRAPVT'=1 S ACRNUM="PENDING"
 S ACRNUM=$E(ACRFYX,4)_$E($P(^AUTTLCOD(ACRLC,0),U),1,3)_ACRNUM
 Q
PONUM1 ;EP;
 S ACRNUM=$P(ACRDOC0,U,2)
 I ACRNUM]"",ACRNUM'["PENDING" Q
 Q:$E(ACRNUM,7,10)?4N
 I $P(ACRDOC0,U,15),$P($G(^ACRDOC(+$P(ACRDOC0,U,15),0)),U,2)]"" S ACRNUM=$P(^(0),U,2) Q
 S ACRFY=$P(^ACRLOCB($P(ACRDOC0,U,6),"DT"),U)
 S ACRFYX=$S(+$E(DT,4,5)<10:DT\10000,1:DT\10000+1)+1700
 S ACRFYX=$S(ACRFYX>ACRFY:ACRFYX,1:ACRFY)
 I '$D(^ACRPO(ACRPODA,1,0)) S ^ACRPO(ACRPODA,1,0)="^9002199.41"
 I '$D(^ACRPO(ACRPODA,1,"B",ACRFYX)) D
 .S DA(1)=ACRPODA
 .S (X,DINUM)=ACRFYX
 .S DIC="^ACRPO("_DA(1)_",1,"
 .S DIC(0)="L"
 .D FILE^ACRFDIC
 L +^ACRPO(ACRPODA):2
 I $T=1 D  I 1
 .S ACRNUM=$P(^ACRPO(ACRPODA,1,ACRFYX,0),U,2)
 .S ACRNUM=ACRNUM+1
 .S $P(^ACRPO(ACRPODA,1,ACRFYX,0),U,2)=ACRNUM
 .L -^ACRPO(ACRPODA):0
 E  G PONUM1
 F ACRJI=1:1:(4-$L(ACRNUM)) S ACRNUM="0"_ACRNUM
 S ACRLC=$P(^ACRPO(ACRPODA,0),U,5)
 S ACRNUM=$E(ACRFYX,4)_$E($P(^AUTTLCOD(ACRLC,0),U),1,3)_ACRNUM_$S('$P(^ACRDOC(ACRDOCDA,0),U,18):"00",1:"BP")
 I "^103^210^"[(U_ACRREF_U),$D(^ACRDOC("B",ACRNUM))!$D(^ACRDOC("C",ACRNUM)) G PONUM1
 K ACRTXDAX
 D NOW^%DTC
 S DA=ACRDOCDA
 S DIE="^ACRDOC("
 S DR=".02////"_ACRNUM_";.5////"_%
 D DIE^ACRFDIC
 N ACRX
 S ACRX=0
 F  S ACRX=$O(^ACRDOC("MOD",ACRDOCDA,ACRX)) Q:'ACRX  D
 .S DA=ACRDOCDA
 .S DIE="^ACRDOC("
 .S DR=".02////"_ACRNUM
 .D DIE^ACRFDIC
 S DA=$P(^ACRDOC(ACRDOCDA,0),U,16)
 S DIE="^ACGS("
 S DR="2////"_ACRNUM
 D:DA DIE^ACRFDIC
 Q
PAUSE ;EP;
 S ACRI=ACRI+10
 I '$D(^TMP("ACRDATA",$J,ACRDUZ,ACRI+1)) S ACRQUIT="" Q
 K ACRQUIT
 S DIR(0)="YO"
 S DIR("A")="Display more documents"
 S DIR("B")="YES"
 W !
 D DIR^ACRFDIC
 I Y=1 W ! Q
 S ACRQUIT=""
 Q
RELIST ;EP;RELISTS DOCUMENTS FOR CURRENT USER TO SIGN
 I $D(^TMP("ACRDATE",$J)) D R1 Q
 S ACR=0
 F ACRI=1:1 S ACR=$O(^TMP("ACRDATA",$J,ACRDUZ,ACR)) Q:'ACR!($L(ACR)>8)  I ACRI<ACR D
 .S ^TMP("ACRDATA",$J,ACRDUZ,ACRI)=^TMP("ACRDATA",$J,ACRDUZ,ACR)
 .N ACRDOC
 .S ACRDOC=$P(^TMP("ACRDATA",$J,ACRDUZ,ACR),U,5)
 .S ^TMP("ACRDATA",$J,ACRDUZ,ACRDOC)=^TMP("ACRDATA",$J,ACRDUZ,ACR)
 .S $P(^TMP("ACRDATA",$J,ACRDUZ,ACRDOC),U,10)=ACRI
 .K ^TMP("ACRDATA",$J,ACRDUZ,ACR)
 Q
R1 ;CHANGE DATE ORDER ARRAY TO NUMERIC ORDERED ARRAY
 S (ACR,ACRI)=0
 F  S ACR=$O(^TMP("ACRDATE",$J,ACRDUZ,ACR)) Q:'ACR  D
 .S ACR1=0
 .F  S ACR1=$O(^TMP("ACRDATE",$J,ACRDUZ,ACR,ACR1)) Q:'ACR1!($L(ACR1)>8)  D
 ..S ACRI=ACRI+1
 ..S ^TMP("ACRDATA",$J,ACRDUZ,ACRI)=^TMP("ACRDATE",$J,ACRDUZ,ACR,ACR1)
 ..N ACRDOC
 ..S ACRDOC=$P(^TMP("ACRDATE",$J,ACRDUZ,ACR,ACR1),U,5)
 ..S ^TMP("ACRDATA",$J,ACRDUZ,ACRDOC)=^TMP("ACRDATE",$J,ACRDUZ,ACR,ACR1)
 ..S $P(^TMP("ACRDATA",$J,ACRDUZ,ACRDOC),U,10)=ACRI
 ..K ^TMP("ACRDATE",$J,ACRDUZ,ACR,ACR1)
 K ^TMP("ACRDATE",$J)
 Q
RECERT ;EP;PROCESS RECERT OF FUNDS
 S ACRFINAL="N"
 S ACRORDER=99
 S ACRLBDA=$P(ACRDOC0,U,6)
 S ACRUSER=+^ACRDOC(ACRDOCDA,"FA")
 S ACRDATE=$E(DT,1,3)_"1001"
 S ACRRDATE=ACRDATE
 K ACRQUIT
 N X,Y,Z
 S X=0
 F  S X=$O(^ACRAPVS("AB",ACRDOCDA,X)) Q:'X!$D(ACRQUIT)  D
 .S Y=$G(^ACRAPVS(X,0))
 .S Z=$G(^ACRAPVS(X,"DT"))
 .I $P(Z,U,8)=ACRDATE S ACRQUIT=""
 I $D(ACRQUIT) K ACRQUIT Q
 D SETAPP^ACRFAPVS
 S ^ACRAPVS("ANXT",ACRAPVT,ACRUSER,+Y)=ACRDOCDA
 Q
38 ;EP;ENTER TREASURY SCHEDULE NUMBER FOR THE TRAVEL VOUCHER PAYMENT
 S DA=ACRDOCDA
 S DIE="^ACRDOC("
 S DR="28T;29.5T;29T"
 S:$P($G(^ACRSYS(1,"DT1")),U,9)>1 DR="29.5T;29T"
 W !
 D DIE^ACRFDIC
 I $P(^ACRSYS(ACRADA,"DT"),U,34)<1,$P(^("DT"),U,33) D
 .W !,"The systems indicates the AIRFARE will be paid separately."
 .S DA=ACRDOCDA
 .S DIE="^ACROBL("
 .S DR="912T//PARTIAL"
 .D DIE^ACRFDIC
 I $P($G(^ACRDOC(ACRDOCDA,18)),U,3)="" D
 .W *7,*7
 .W !!,"The PAYMENT/COLLECTION DOCUMENT # (Treasury Schedule #) is required."
 .W !,"This TRAVEL VOUCHER can be signed and completed when the required"
 .W !,"information is available."
 .D PAUSE^ACRFWARN
 .S ACRQUIT=""
 Q
LIST ;EP;CREATE LIST OF DOCUMENTS FOR USER TO APPROVE
 N ACRDOCDA,ACRDOC0
 S ACRDOCDA=+ACRAP0
 Q:'$D(^ACRDOC(ACRDOCDA,0))
 S ACRDOC0=^ACRDOC(ACRDOCDA,0)
 S ACRDOCDT=$G(^ACRDOC(ACRDOCDA,"DT"))
 S ACRDOC=$P(ACRDOC0,U)
 S ACRTXTYP=$P(ACRDOC0,U,4)
 I +ACRDOCDT,'$P(ACRDOCDT,U,2) Q
 I $D(ACRCSI),$D(ACRTXDA),ACRTXDA'=ACRTXTYP S ACRI=ACRI-1 Q
 S ACRI=ACRI+1
 S ACRLBDA=","_$P(ACRDOC0,U,6)_","
 S ACRREF=$P(ACRDOC0,U,13)
 S ACRREF1=$P(^AUTTDOCR(ACRREF,0),U)
 S ACRID=$E($P(ACRDOC0,U,14),1,15)
 I DUZ'=ACRINDV S ^TMP("ACRALTDT",$J,ACRINDV,ACRDATE,ACRI)=ACRDOCDA_U_ACRREF1_U_ACRTXTYP_U_ACRAPDA_U_ACRDOC_U_ACRID
 E  S:$S>10000 ^TMP("ACRDATE",$J,DUZ,ACRDATE,ACRI)=ACRDOCDA_U_ACRREF1_U_ACRTXTYP_U_ACRAPDA_U_ACRDOC_U_ACRID
 Q
TREPORT ;EP;REVIEW TRAVEL REPORT
 S DIR(0)="YO"
 S DIR("A")="Review Trip Report"
 S DIR("B")="NO"
 W !
 D DIR^ACRFDIC
 Q:$G(Y)'=1
 S ACRPTR=""
 D PTR^ACRFTO
 Q
CERT ;EP;CHECKS WHETHER THERE ARE APPLICABLE CERTIFICATIONS FOR TYPE
 ;OF APPROVAL AND TYPE OF TRANSACTION AND ALLOWS FOR SELECTION
 ;AND PROCESSING OF CERTIFICATIONS.
 I $D(^ACRAPVC("AC",ACRAPVT,ACRTXTYP)) D DOCCERT^ACRFCERT
 Q
ESIG ;EP;RECORD ELECTRONIC SIGNATURE PRIOR TO SIGNING DOCUMENTS
 W @IOF
 W !,"You have documents which are pending for your signature."
 W !!,"Enter your electronic signature to review documents now."
 W !!,"Enter '^' to bypass document review."
 W !
 D ^ACRFESIG
 Q
CONFIRM ;EP;CONFIRM THAT YOU WANT TO APPROVE A DOCUMENT
 W !
 S DIR(0)="YO"
 S DIR("A",1)="Apply my AUTHORIZED signature to "_$S(ACRAPDAS="A":"APPROVE",1:"DISAPPROVE")
 S DIR("A")="document NO.: "_ACRDOC
 S DIR("B")="YES"
 D DIR^ACRFDIC
 S:$G(Y)'=1 ACRQUIT=""
 Q
SECURITY ;EP;PRINT SIGNATURE SECURITY MESSGE
 W @IOF
 D WARNING^ACRFWARN
 W !!,"To PREVENT UNAUTHORIZED ACCESS to documents pending your approval,"
 W !,"NEVER LEAVE your computer UNATTENDED during the DOUMENT REVIEW process."
 D PAUSE^ACRFWARN
 Q