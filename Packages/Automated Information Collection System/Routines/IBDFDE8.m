IBDFDE8 ;ALB/AAS - AICS Manual Data Entry, Entry for no form no appt ; 31-MAY-96
 ;;3.0;AUTOMATED INFO COLLECTION SYS;;APR 24, 1997
 ;
% N %,%H,C,I,J,X,Y,ADD,DEL,ASKOTHER,DIR,DIC,DA,CNT,DFN,DIRUT,DUOUT,DTOUT,POP,RTN,FRMDATA,IBY,IBQUIT,IBDF,IBDOBJ,IBDPTSTI,IBDPTSTE,IBDPTNM,IBDPTDTI,SEL,IBD,IBDCKOUT
 N IBDPTDTE,IBDFMNME,IBDFMIEN,IBDFMSTI,IBDFMSTE,IBDFMIDI,IBDCLNME,IBFORM,IBDCLNPH,IBDPID,IBDPTPRI,IBDSEL,IBDPI,IBDCO,PXCA,SDCLST,PXCASTAT,PXKNODA,PXKNODB,IBDREDIT,IBDASK,IBDPRE,IBDAPPT,IBDSAEOK,IBDAPPT
 ;
 I '$D(DT) D DT^DICRW
 D HOME^%ZIS
 W !!,"Data Entry Pre-Printed form, No appointment",!
 ;
STRT ; -- ask for form id
 D END
 S IBQUIT=0
 W !
 S DIR("?")="Select the patient you wish to enter data on for an encounter."
 S DIR(0)="PO^2:AEQM",DIR("A")="Select Patient" D ^DIR K DIR,DA,DR,DIC
 I $D(DIRUT) G END
 S (IBDF("DFN"),DFN)=+Y
 ;
CLINIC ; -- select clinic
 W !
 S IBDSAEOK=0
 S IBDF("CLINIC")=$$SELCL^IBDFDE6 G:IBQUIT STRTQ
 I IBDF("CLINIC")=-1 G STRTQ
 I IBDF("CLINIC")<1 G STRT
 S CLNAME=$P($G(^SC(+IBDF("CLINIC"),0)),"^")
 S CLSETUP=$G(^SD(409.95,+$O(^SD(409.95,"B",+IBDF("CLINIC"),0)),0))
 ;
 ; -- select appointment date time
 W !
 S IBDF("APPT")=$$ASKDT^IBDFDE0("Appointment Date/Time: ","","AEQRXT","",DT+.24,"D LSTAP^IBDFDE8") G:IBQUIT STRTQ
 I IBDF("APPT")<1 G CLINIC
 ;
 W ! D LISTONE W !
 ;
 ;
 I IBDAPPT S IBDSAEOK=$$ASKYN^IBDFDE0("Okay to use "_$$FMTE^XLFDT(IBDF("APPT"))_" for Data Entry","No")
 I 'IBDAPPT S IBDSAEOK=$$ASKYN^IBDFDE0("Okay to Create Stand Alone Encounter","No")
 W !
 G:'IBDSAEOK CLINIC G:IBQUIT STRTQ
 ;
 ; -- if no form create entry
 S FORMLST=$$FINDID^IBDF18C(DFN,IBDF("APPT"),"",1)
 I FORMLST="" D ANYWAY^IBDFDE6
 ;
 G:IBQUIT STRTQ
 ;
 I FORMLST,IBDSAEOK F IBDX=1:1 S IBDF("FORM")=$P(FORMLST,"^",IBDX) Q:IBDF("FORM")=""  I IBDF("FORM")'="" D EN^IBDFDE K IBDSEL,IBDPI Q:IBQUIT
 ;
STRTQ K IBDSAEOK
 G STRT:'IBQUIT
 ;
END K I,J,X,Y,DA,DR,DIC,DIE,DIR,DTOUT,DUOUT,DIRUT,IBDSEL,CHOICE,TEXT,TEXTU,RESULT,IBDPI,IBDCO,IBDF
 K ^TMP("IBD-ASK",$J),^TMP("IBD-LCODE",$J),^TMP("IBD-LST",$J),^TMP("IBD-LTEXT",$J),^TMP("IBD-OBJ",$J)
 Q
 ;
LSTAP ; -- list appointments for date range
 N IBDI,BEGIN,HELP,CNT,DOW,NODAYS
 S HELP=1,CNT=0
 W !
 S DOW=$$DOW^XLFDT(DT,1)
 S NODAYS=$S(DOW=1:5,DOW=2:5,DOW=3:5,DOW>3:3,DOW=0:4)
 S BEGIN=$$FMADD^XLFDT(DT,-NODAYS)
 F IBDI=1:1:NODAYS S IBDF("APPT")=$$FMADD^XLFDT(BEGIN,IBDI) D LISTONE
 W:CNT !
 Q
 ;
LISTONE ; -- List appointments for one date
 N NEXT,NODE
 S NEXT=$E(IBDF("APPT"),1,7),IBDAPPT=0
 S:'$G(HELP) CNT=0
 F  S NEXT=$O(^DPT(DFN,"S",NEXT)) Q:'NEXT!(NEXT>(IBDF("APPT")+.24))  D
 .S CNT=CNT+1
 .S NODE=$G(^DPT(DFN,"S",NEXT,0))
 .I NEXT=IBDF("APPT"),+NODE=IBDF("CLINIC") S IBDAPPT=1
 .I CNT=1 W !,"Patient has the following appointments: "
 .W !?3,$$FMTE^XLFDT(NEXT),?25,$E($P($G(^SC(+NODE,0)),"^"),1,23)
 .D FRMSTAT
 I CNT=0,'$G(HELP) W !,"No appointments for Patient found on ",$$FMTE^XLFDT($E(IBDF("APPT"),1,7))
 Q
 ;
FRMSTAT ; -- count forms and form status for appointments
 N FORM,CNT,STATUS,IBJ,X,Y,C
 S FORM=$$FINDID^IBDF18C(DFN,NEXT,"",1),STATUS="NO FORM PRINTED"
 S CNT=0 F IBJ=1:1 S X=$P(FORM,"^",IBJ) Q:X=""  S CNT=CNT+1
 I +FORM S Y=$P($G(^IBD(357.96,+FORM,0)),"^",11),C=$P(^DD(357.96,.11,0),"^",2) D Y^DIQ S STATUS=Y
 W ?50,$E($G(STATUS),1,25),?76,"("_CNT_")"
 Q