AGED4A01 ; IHS/ASDS/EFG - PAGE 4 - INSURANCE SUMMARY OVERFLOW ; 07 Sep 2005  7:26 AM
 ;;7.1;PATIENT REGISTRATION;**1,2**;JAN 31, 2007
 ;
EDITINS ;EP - CALLED BY AGED4A
 I '$D(AGINS) W !,"THIS PATIENT HAS NO INSURERS YET" H 2 Q
 D HEADING^AGED4A1
 ;D DISPLAYN
 D DISPLAYN^AGED4A1  ;AG*7.1*1 SAC REQ TOO LRG
 I $G(AGANS)="" Q
 Q:$D(DTOUT)
 I $G(AGANS)'=""&($G(AGANS)'="^")&($G(AGANS)'="^^")&($G(AGANS)'="/.,") D
 .K AGTOUT
 .I $D(AGINSNN($G(AGANS)))=10 S AGINSREC=$G(AGINSNN(AGANS,1))
 .E  S AGINSREC=$G(AGINSNN(AGANS))
 .S AGTYPE=$P(AGINSREC,U,10)
 .S AGELPTR=$P($P(AGINSREC,U,11),",",1)
 .S AGEL("IN")=$P($P(AGINSREC,U,11),",",3)
 .S AGELP("INS")=$P(AGINSREC,U,2)
 .;I AGTYPE="R"&($P(AGINSREC,U,2)'=1) D  Q
 .;I ((AGTYPE="R"!(AGTYPE="MD"))&($P(AGINSREC,U,2)'=1))!($P(AGINSREC,U,3)="D") D  Q  ;AG/SD/TPF 12/20/2005 AG*7.1*1 ITEM 2
 .I (($E($P(AGINSREC,U,7))="M")) D  ;AG*7.1*2 IM????? FIX PART D RR AND MCR NOT GOING TO THE RIGHT EDIT PAGE
 ..S NEWENTRY=0 D EN^AGED4(AGINSREC)
 ..Q:$G(Y)=AGOPT("ESCAPE")
 ..Q:'$O(^AUPNMCR(DFN,11,0))
 ..D EN^AGED42(DFN,,0,AGINSREC)
 .;I AGTYPE="R"&($P(AGINSREC,U,2)=1) D  Q
 .I (($E($P(AGINSREC,U,7))="R")) D  ;AG*7.1*2
 ..S NEWENTRY=0 D EN^AGED6(AGINSREC)
 ..Q:$G(Y)=AGOPT("ESCAPE")
 ..Q:'$O(^AUPNRRE(DFN,11,0))
 ..D EN^AGED62(DFN,,0,AGINSREC)
 .I AGTYPE="D"!(AGTYPE="K") D
 ..S PARDFN=$P($P(AGINSREC,U,11),",")
 ..S PARDT=$P($P(AGINSREC,U,11),",",3)
 ..S NEWENTRY=0
 ..D EN^AGEDMCD(PARDFN,PARDT,NEWENTRY,AGINSREC)
 ..K PARDFN,PARDT,NEWENTRY
 .;I AGTYPE="P" D PRVTINS(AGINSREC) Q
 .I AGTYPE="P" D PRVTINS^AGED4A3(AGINSREC) Q  ;AG*7.1*2 MOVED CODE
 .I AGTYPE="T" D
 ..S PARDFN=$P($P(AGINSREC,U,11),",")
 ..S PARDT=$P($P(AGINSREC,U,11),",",3)
 ..S NEWENTRY=0
 ..D EN^AGEDTPL(PARDFN,PARDT,NEWENTRY,AGINSREC)
 ..K PARDFN,PARDT,NEWENTRY
 .I AGTYPE="W" D
 ..S PARDFN=$P($P(AGINSREC,U,11),",")
 ..S PARDT=$P($P(AGINSREC,U,11),",",2)
 ..S NEWENTRY=0
 ..D EN^AGEDWC(PARDFN,PARDT,NEWENTRY,AGINSREC)
 ..K PARDFN,PARDT,NEWENTRY
 .I AGTYPE="G" D
 ..S PARDFN=$P($P(AGINSREC,U,11),",")
 ..;S PARDT=$P($P(AGINSREC,U,11),",",3)
 ..;S PARFIL=$P($P(AGINSREC,U,11),",",2)
 ..S PARDT=$P($P(AGINSREC,U,11),",",2)
 ..S PARFIL=$P($P(AGINSREC,U,11),",",3)
 ..S NEWENTRY=0
 ..D EN^AGEDGUAR(PARDFN,PARFIL,PARDT,NEWENTRY,AGINSREC)
 ..K PARDFN,PARFIL,PARDT,NEWENTRY
 Q:$D(AGTOUT)!$D(DTOUT)
 K AGINSNN,AGSELECT
 D ^AGINS
 I $D(^AUPNICP("C",DFN)) K AGCAT D LOADCAT^AGCAT
 Q