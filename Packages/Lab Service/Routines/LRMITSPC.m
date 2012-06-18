LRMITSPC ; IHS/DIR/FJE - MICRO TREND PROCESS COUNT 23:16 ; 
 ;;5.2;LR;**1013**;JUL 15, 2002
 ;
 ;;5.2;LAB SERVICE;;Sep 27, 1994
 ; from LRMITSPE
 ; returns counts of isolates and susceptibilities in ^TMP($J,n1,"C"
 ;
 S LRTYPE="" F   S LRTYPE=$O(^TMP($J,"PAT",LRTYPE)) Q:LRTYPE=""  D
 .S (LRCNT,LRPATN)=0 F  S LRPATN=$O(^TMP($J,"PAT",LRTYPE,LRPATN)) Q:LRPATN<1  S LRCNT=LRCNT+1
 .S ^TMP($J,LRTYPE)=LRCNT
 S LRN1=0 F  S LRN1=$O(^TMP($J,"M",LRN1)) Q:LRN1<1  D  Q:LREND
 .I LRN1#10=0,$$S^%ZTLOAD S (LREND,ZTSTOP)=1 Q
 .S (LROCNTC,LROCNTM,LROCNTN)=0
 .S LRMCAT="" F  S LRMCAT=$O(^TMP($J,"M",LRN1,LRMCAT)) Q:LRMCAT=""  D
 ..K ^TMP($J,"MP")
 ..S LRCNT=0,LRNN3="" F  S LRNN3=$O(^TMP($J,"M",LRN1,LRMCAT,LRNN3)) Q:LRNN3=""  S LRX=^(LRNN3),LRN3=-LRNN3 D
 ...S LRN2=+LRX,LRCDATE=$P(LRX,U,2),LRSUBN=$P(LRX,U,3),LRCNT=LRCNT+1
 ...; setup non tested data
 ...I '$D(^TMP($J,LRN3)) S $P(^TMP($J,LRN2,LRCDATE,LRSUBN),U,5)="N",LROCNTN=LROCNTN+1 Q
 ...I '$D(^TMP($J,"MP")) D SETUP Q
 ...I LRMERGE="N" D SETUP Q
 ...D CHECK
 .S ^TMP($J,LRN1,"C")=LROCNTC_U_LROCNTM_U_LROCNTN
 K ^TMP($J,"MP"),^("PAT"),LRANTIN,LRANTINM,LRANTIV,LRCDATE,LRCNT,LRMARRAY,LRMCAT,LRMCNT,LRMDONE,LRN1,LRN2,LRN3,LRNN3,LROCNTC,LROCNTM,LROCNTN,LROK,LRPATN,LRSUBN,LRTYPE,LRX
 Q
CHECK ; check data for merges
 S (LRMDONE,LRMCNT)=0 F  S LRMCNT=$O(^TMP($J,"MP",LRMCNT)) Q:LRMCNT<1  D  Q:LRMDONE
 .K LRMARRAY S LROK=1,LRANTINM="" F  S LRANTINM=$O(^TMP($J,LRN3,"A",LRANTINM)) Q:LRANTINM=""  S LRANTIV=$P(^(LRANTINM),U) D  Q:'LROK
 ..I '$D(^TMP($J,"MP",LRMCNT,LRANTINM)) S LRMARRAY(LRANTINM)=LRANTIV Q
 ..I LRANTIV'=^TMP($J,"MP",LRMCNT,LRANTINM) S LROK=0 Q
 .I LROK S LRMDONE=1 D  Q
 ..S LRANTINM=0 F  S LRANTINM=$O(LRMARRAY(LRANTINM)) Q:LRANTINM<1  D ABCOUNT(LRN1,LRMCNT,LRANTINM,LRMARRAY(LRANTINM))
 ; setup merged data
 I LRMDONE S $P(^TMP($J,LRN2,LRCDATE,LRSUBN),U,5)="M",LROCNTM=LROCNTM+1 Q
 I 'LRMDONE D SETUP
 Q
SETUP ; setup tested data
 S $P(^TMP($J,LRN2,LRCDATE,LRSUBN),U,5)="T",LROCNTC=LROCNTC+1
 S LRANTINM="" F  S LRANTINM=$O(^TMP($J,LRN3,"A",LRANTINM)) Q:LRANTINM=""  S LRANTIV=$P(^(LRANTINM),U) D
 .D ABCOUNT(LRN1,LRCNT,LRANTINM,LRANTIV)
 Q
ABCOUNT(N1,CNT,ABREV,AVALUE) ; count data, setup merge pattern
 N LRX
 S LRX=$G(^TMP($J,N1,"C",ABREV)),^(ABREV)=($P(LRX,U)+1)_U_($P(LRX,U,2)+$S(AVALUE["S":1,1:0))
 S ^TMP($J,"MP",CNT,ABREV)=AVALUE
 Q