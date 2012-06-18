AFSHBPRT ; IHS/OIRM/DSD/JDM -DHR BATCH PRINT PROGRAM ;  [ 10/27/2004   4:20 PM ]
 ;;3.0T1;AO FINANCIAL DATA MGMT SYSTEM;**1,13**;FEB 02, 1999
 ;;MODIFIED FOR CACHE' COMPLIANCE ; ACR*2.1*9
 D CRTSETUP^AFSHCRTS
A0 D ^XBCLS
 F I=1:1:70 W "*"
 W !,?10,"Document History Record (DHR) Batch Print Program",!
 F I=1:1:70 W "*"
 W !!
D5 S DY=22,DX=1 X XY X AFSLE W ?10,"Enter Batch COLOR to USE: (B/R) ('^' to EXIT) "
 S DX=60,%L=1,%F="I",%T="A" X XY X AFSAD D ^AFSHDAT1
 I AFSX1="^" G EXIT
 I "BR"'[AFSX1!(AFSX1="") S DX=55 X XY X AFSLE W *7,"  INVALID ENTRY" H 2 G D5
 S AFSLKEN="AFSEND"_$E(AFSHDTYP,1,1)_AFSX1_"("_$J_")",AFSLKENT=AFSLKEN_":1"
 S AFSLKPGT="AFSEND"_$E(AFSHDTYP,1,1)_AFSX1_":1"
 S AFSLKEXT="AFSEXDHR("_""""_$E(AFSHDTYP,1,1)_AFSX1_"""):1"
 I AFSHDTYP="PCC" S AFSHBCLR=$S(AFSX1="B":1,AFSX1="R":2)
 I AFSHDTYP="BCS" S AFSHBCLR=$S(AFSX1="B":3,AFSX1="R":4)
 I AFSHDTYP="ARM" S AFSHBCLR=$S(AFSX1="B":5,AFSX1="R":6) ; TEMP ARMS TEST
D6 I '$D(AFSHBCNT(AFSHBCLR)) G E0
 I $P(AFSHBCNT(AFSHBCLR,"STATUS"),"^",1)'="T" G E0
 S DY=23,DX=1 X XY X AFSLE W ?10,*7,"Batch COLOR NOT AVAILABLE for  Data Entry -- Select AGAIN" H 2 S DX=1 X XY X AFSLE G D5
E0 I '$D(AFSHNTRL(AFSHBCLR)) G E0C
 ;
E0C K AFSHBCNT,AFSHDSPL,AFSI,AFSR,AFSRR,AFSRRR,AFSBCNT
 L @AFSLKEXT I '$T S DY=23,DX=1 X XY X AFSLE W ?10,*7,"Export Job Running -- Batch Printing NOT Available" H 2 S DX=1 X XY X AFSLE G D5
 L @AFSLKPGT I '$T U IO(0) W !!,*7,?10,"*****   OTHER USERS ARE ACTIVE -- PLEASE CONTINUE  *****" H 2
BSELECT S AFSCNT=0 K AFSBINFO
 S %DT="AEX",%DT("A")="ENTER BATCH DATE TO PRINT: " D ^%DT  ;ACR*2.1*13.02 IM13574
 I $D(DQOUT) G BSELA
 I $D(DTOUT)!($D(DUOUT)) G EXIT
 I Y="?" G BSELA
 S AFSHBID="" W !! G BSELA1
BSELA S AFSHBDAT=0,AFSHBID="" W !!
BSELA1 S AFSHBDAT=$O(^AFSHRCDS(AFSHBCLR,"D","B",AFSHBDAT)) G BSELEND:AFSHBDAT=""
BSELA2 S AFSHBID=$O(^AFSHRCDS(AFSHBCLR,"D",AFSHBDAT,"I","B",AFSHBID)) G BSELA1:AFSHBID=""
 S AFSHBDFN=0,AFSHBDFN=$O(^AFSHRCDS(AFSHBCLR,"D",AFSHBDAT,"I","B",AFSHBID,AFSHBDFN))
 G BSELA2:AFSHBDFN<1
 S AFSCNT=AFSCNT+1,AFSBINFO(AFSCNT)=AFSHBDAT_"^"_AFSHBDFN
 ;Beginning Y2K fix
 ;W $J(("["_$J(AFSCNT,2)_"] "_$E(AFSHBDAT,4,5)_"/"_$E(AFSHBDAT,6,7)_"/"_$E(AFSHBDAT,2,3)_"-"_AFSHBID_"("_$P(^AFSHRCDS(AFSHBCLR,"D",AFSHBDAT,"I",AFSHBDFN,"S",0),"^",4)_")"),20)
 W $J(("["_$J(AFSCNT,2)_"] "_$E(AFSHBDAT,4,5)_"/"_$E(AFSHBDAT,6,7)_"/"_$E(AFSHBDAT,1,3)+1700_"-"_AFSHBID_"("_$P(^AFSHRCDS(AFSHBCLR,"D",AFSHBDAT,"I",AFSHBDFN,"S",0),"^",4)_")"),20) ;Y2000;HJT;AFSH*3.0T1*1
 ;End Y2K fix block
 G BSELA2
BSELEND W !! S DIR(0)="N^1:"_AFSCNT,DIR("A")="ENTER BATCH SEQUENCE # ([ ]) TO PRINT" D ^DIR
 S AFSHBDAT=$P(AFSBINFO(Y),"^",1),AFSHBDFN=$P(AFSBINFO(Y),"^",2)
 G B0
EXIT G DENTRY^AFSHVKIL
 ;L  Q                                   ; ACR*2.1*13.02 IM13574
 Q                                       ; ACR*2.1*13.02 IM13574
 ;
 ;SBRS     K DFOUT,DTOUT,DUOUT,DQOUT,DLOUT R Y:DTIME I '$T W *7 R Y:5 G SBRS:Y="." I '$T S (DTOUT,Y)="" Q   ; ACR*2.1*13.02 IM13574
 ;S:Y="/.," (DFOUT,Y)="" S:Y="" DLOUT="" S:Y="^" (DUOUT,Y)="" S:Y?1"?".E!(Y["^") S (DQOUT,Y)=""   ; ACR*2.1*13.02 IM13574
 ;Q
SBRS K DFOUT,DTOUT,DUOUT,DQOUT,DLOUT         ; ACR*2.1*13.02 IM13574
 N DIR                                   ; ACR*2.1*13.02 IM13574
 S DIR(0)="F"                            ; ACR*2.1*13.02 IM13574
 D DIR^ACRFDIC                           ; ACR*2.1*13.02 IM13574
 I $D(DTOUT)!($D(DIROUT))!($D(DIRUT))!($D(DUOUT)) S Y="" Q   ; ACR*2.1*13.02 IM13574
 G SBRS:Y="."                            ; ACR*2.1*13.02 IM13574
 S:Y="/.," (DFOUT,Y)="" S:Y="" DLOUT="" S:Y?1"?".E (DQOUT,Y)=""   ; ACR*2.1*13.02 IM13574
 Q
B0 S AFSR=AFSHBCLR,(AFSRR,AFSRRR,AFSRRRR)=0
B1 S AFSRR=$O(^AFSHRCDS(AFSR,"D","B",AFSRR)) G ZEND:+AFSRR=0
B2 S AFSRRR=$O(^AFSHRCDS(AFSR,"D",AFSRR,"I","B",AFSRRR)) G B1:AFSRRR=""
 S AFSRRRP=0,AFSRRRP=$O(^AFSHRCDS(AFSR,"D",AFSRR,"I","B",AFSRRR,AFSRRRP))
 S AFSRRA=$P(^AFSHRCDS(AFSR,"D",AFSRR,"I",AFSRRRP,0),"^",1),AFSHBCNT=$P(^(0),"^",5),AFSHBTOT=$P(^(0),"^",6),AFSHBAP=$P(^(0),"^",2)
 S AFSHBDAT=AFSRR D PCCHDR^AFSHBPR1
 S AFSRRRR=0
B3 S AFSRRRR=$O(^AFSHRCDS(AFSR,"D",AFSRR,"I",AFSRRRP,"S",AFSRRRR)) G BTRL:+AFSRRRR=0
 S AFSHYY=^AFSHRCDS(AFSR,"D",AFSRR,"I",AFSRRRP,"S",AFSRRRR,0)
 I AFSRRRR#100=0 U IO(0) W $J(AFSRRRR,8)
 D ^AFSHEX2
 S AFSHTRCT=AFSHTRCT+1,AFSHPLCT=AFSHPLCT+1
 G B3
BTRL D PCCTRL^AFSHBPR1
 G B2
ZEND D PCCJTRL^AFSQEX1
 I AFSHPLCT>55 D PTRHDR^AFSHEX2
 U AFSHPTRD W !!,?10,"NUMBER OF OUTPUT DHR RECORDS = ",?45,$J(AFSHTRCT,8),!!,?10,"NUMBER OF JCL RECORDS = ",?45,$J(8,8),!!
 S X="",$P(X,"-",44)="" W ?10,X,!,?15,"TOTAL RECORDS TO TRANSMIT = ",?45,$J(AFSHTRCT+8,8),!!
 Q