ACDWCD3 ;IHS/ADC/EDE/KML - CLIENT DET OP FOR CS 10:12;
 ;;4.1;CHEMICAL DEPENDENCY MIS;;MAY 11, 1998
 ;
START ;
 S ACDP1="" F  S ACDP1=$O(^TMP("ACD",ACDJOB,ACDBT,ACDTGSUB,"VAL",ACDP1)) Q:ACDP1=""  D  Q:$D(DIRUT)
 . D F Q:$D(DIRUT)  W !!!,"CLIENT NAME: ",ACDP1,!
 . Q:$D(DIRUT)
 . F ACDP2=0:0 S ACDP2=$O(^TMP("ACD",ACDJOB,ACDBT,ACDTGSUB,"VAL",ACDP1,ACDP2)) Q:'ACDP2  D  Q:$D(DIRUT)
 .. S ACDDA=ACDP2
 .. D ^ACDWCS
 .. S ACDDA=^ACDCS(ACDP2,"BWP")
 .. D ^ACDWVIS
 .. D P1
 .. Q
 . Q
 D ^ACDWK
 Q
 ;
P1 ;Print out
 D F Q:$D(DIRUT)  W !,ACDDAY,?5,$E(ACDSVAC,1,25),?33,$E(ACDLOTY,1,16),?50,ACDHOUR,?60,$E($J(ACDPROV,19),1,20)
 Q
F ;Form feed
 Q:$D(DIRUT)
 I $Y+5>IOSL D F^ACDWUTL