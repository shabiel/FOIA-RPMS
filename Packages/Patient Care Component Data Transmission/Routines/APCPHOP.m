APCPHOP ; IHS/TUCSON/LAB - create operation and proc. portions of direct inpt rec AUGUST 14, 1992 ; [ 04/03/98  08:39 AM ]
 ;;2.0;IHS PCC DATA EXTRACTION SYSTEM;;APR 03, 1998
START ;
 S (APCPHOP1,APCPHOP2,APCPHOP3,APCPODX1,APCPODX2,APCPODX3,APCPOIN1,APCPOIN2,APCPOIN3)=""
 S (C,O)=0 F  S O=$O(^AUPNVPRC("AD",APCP("V DFN"),O)) Q:C>2!(O'=+O)!($D(APCPE("ERROR")))  S C=C+1 D GETPRC
EOJ ;
 K APCPT,I,M,N,C,O,X,Y
 Q
 ;
GETPRC ;
 S APCPT("O PTR")=$P(^AUPNVPRC(O,0),U)
 S (APCPT("OH"),N)="",APCPT("OH")=$P(^ICD0(APCPT("O PTR"),0),U)
 I $P(^ICD0(APCPT("O PTR"),0),U,9)]"" S APCPE("ERROR")="E041" Q
 I $P(^ICD0(APCPT("O PTR"),0),U,10)]"",$P(^DPT(AUPNPAT,0),U,2)'=$P(^ICD0(APCPT("O PTR"),0),U,10) S APCPE("ERROR")="E043" Q
 I APCPT("OH")=.9999 S APCPE("ERROR")="E032" Q
 S N=$L($P(APCPT("OH"),".",2)) I N>2 S APCPE("ERROR")="E003" Q
 S APCPT("OH")=$P(APCPT("OH"),".")_$P(APCPT("OH"),".",2),M=$L(APCPT("OH"))+1 F I=M:1:4 S APCPT("OH")=APCPT("OH")_" "
 ;
 S APCPT("ICD")="",APCPT("ICD PTR")=$P(^AUPNVPRC(O,0),U,5) I APCPT("ICD PTR")="" S APCPT("ICD")="" G INF
 I '$D(^ICD9(APCPT("ICD PTR"),0)) S APCPE("ERROR")="E004" Q
 S APCPT("ICD")=$P(^ICD9(APCPT("ICD PTR"),0),U)
 D ^APCPCICD
 Q:$D(APCPE("ERROR"))
 S X=0,APCPT("DX")="" F  S X=$O(APCPH("POV",X)) Q:X'=+X  I APCPH("POV",X)=APCPT("ICD") S APCPT("DX")=X
 I APCPT("DX")="" S APCPE("ERROR")="E334" Q
 ;
INF ; Infection Char Pos 103. .08 field.
 S APCPT("INF")="" S APCPT("INF")=$P(^AUPNVPRC(O,0),U,8) S APCPT("INF")=$S(APCPT("INF")="Y":1,APCPT("INF")="N":2,1:" ")
 ;
 S APCPT("VAR")="APCPHOP"_C,@APCPT("VAR")=APCPT("OH")
 S APCPT("VAR")="APCPODX"_C,@APCPT("VAR")=APCPT("DX")
 S APCPT("VAR")="APCPOIN"_C,@APCPT("VAR")=APCPT("INF")
 ;
 Q