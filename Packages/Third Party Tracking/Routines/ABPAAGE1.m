ABPAAGE1 ;COMPILE DETAILED OPEN ITEMS; [ 05/21/91  11:22 AM ]
 ;;1.4;AO PVT-INS TRACKING;*0*;IHS-OKC/KJR;JULY 25, 1991
 W !!?5,"<<< NOT AN ENTRY POINT - ACCESS DENIED >>>",!! G ZTLEND
 ;--------------------------------------------------------------------
EXTRACT ;PROCEDURE TO LOOP THROUGH ALL OPEN CLAIMS
 S R=0 F I=0:0 D  Q:+R=0
 .S R=$O(^ABPVAO("CS","O",R)) Q:+R=0
 .S RR=0 F J=0:0 D  Q:+RR=0
 ..S RR=$O(^ABPVAO("CS","O",R,RR)) Q:+RR=0
 ..Q:$D(^ABPVAO(R,1,RR,0))'=1
 ..S DATA=^ABPVAO(R,1,RR,0)
 ..I ABPAOPT(9)=1 S X2=$P(DATA,"^",12)
 ..E  S X2=$P(DATA,"^",11)
 ..Q:X2<BDT!(X2>EDT)
 ..S INSURER="*** UNKNOWN ***",INSPTR=$P(DATA,"^",6)
 ..I ABPA("INS")'="ALL" D  Q:'FOUND
 ...S FOUND=0
 ...F K=1:1 Q:($D(ABPA("INS",K))'=1)!(FOUND)  D
 ....I ABPA("INS",K)=INSPTR S FOUND=1
 ..I $D(^AUTNINS(+INSPTR,0))=1 S INSURER=$P(^AUTNINS(+INSPTR,0),"^")
 ..S FACILITY="*** UNKNOWN ***",FACPTR=$P(^ABPVAO(R,0),"^",2)
 ..I $D(^AUTTLOC(+FACPTR,0))=1 D
 ...S FACILITY=$P(^AUTTLOC(+FACPTR,0),"^",2)
 ..S PAT=$P(^ABPVAO(+R,0),"^"),HRN=+$P(^ABPVAO(+R,0),"^",3),DOS=+DATA
 ..S SSN=$P(^ABPVAO(+R,0),"^",4) I $L(SSN)=9 D
 ...S SSN=$E(SSN,1,3)_"-"_$E(SSN,4,5)_"-"_$E(SSN,6,99)
 ..S AMT=+$P(DATA,"^",7)
 ..S DATA=SSN_"^^"_DOS_"^"_$P(^DIC(4,+FACPTR,0),"^")_"^"_AMT
 ..S ^%ZTSK(ZTSK,"AGING",+INSPTR,FACILITY_PAT_HRN,PAT,RR)=DATA
 ..S ^%ZTSK(ZTSK,"INSURER",INSURER,+INSPTR)=""
 Q
 ;--------------------------------------------------------------------
ZTLOAD ;PROCEDURE TO LOAD BACKGROUND TASK MANAGER WITH JOB REQUEST
 S ZTRTN="MAIN^ABPAAGE2",ZTDTH=$H,ZTIO=ABPA("IO")_";132",ZTN=ZTSK
 S ZTDESC="PRINT DETAILED OPEN ITEMS"
 S ZTSAVE("BDT")="",ZTSAVE("EDT")="",ZTSAVE("ZTN")=""
 S ZTSAVE("ABPATLE")="",ZTSAVE("ABPA(")="" D ^%ZTLOAD
 Q
 ;--------------------------------------------------------------------
ZTLEND ;PROCEDURE TO KILL ALL LOCALLY USED TEMPORARY VARIABLES
 K %DT,%ZIS,%IS,ZTSK,X,Y,BDT,EDT,ZTRTN,ZTSAVE,ZTIO,ZTDESC,ABPA
 K DIC,%,IOP,I,K,FOUND
 Q
 ;--------------------------------------------------------------------
MAIN ;ENTRY POINT - CALLED BY TASK MANAGER
 D EXTRACT,ZTLOAD,ZTLEND
 Q