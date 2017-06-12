BLRRLMU4 ; IHS/MSC/MKK - Reference Lab Meaningful use Utilities, Part 4  ; 22-Oct-2013 09:22 ; MKK
 ;;5.2;IHS LABORATORY;**1033**;NOV 1, 1997
 ;
EEP ; Ersatz EP
 D EEP^BLRGMENU
 Q
 ;
PEP ; EP
UNIVMENU ; EP - UNIVERSAL INTERFACE Menu
 NEW (DILOCKTM,DISYS,DT,DTIME,DUZ,IO,IOBS,IOF,IOM,ION,IOS,IOSL,IOST,IOT,IOXY,U,XPARSYS,XQXFLG)
 ;
 S BLRVERN=$TR($P($T(+1),";")," ")
 ;
 D ADDTMENU^BLRGMENU("UNIVERSE^BLRRLMU4","UIDs Report")	
 D ADDTMENU^BLRGMENU("UNIVERUD^BLRRLMU4","Enter UID & Display HL7 Segs")
 ;
 ; Main Menu driver
 D MENUDRVR^BLRGMENU("RPMS Lab MU Stage 2","Miscellaneous Debug Utilities",$$CJ^XLFSTR("Universal Interface (#4001) File Reports",IOM))
 Q
 ;
UNIVERSE ; EP - Universal Interface UIDs Report
 NEW (DILOCKTM,DISYS,DT,DTIME,DUZ,IO,IOBS,IOF,IOM,ION,IOS,IOSL,IOST,IOT,IOXY,U,XPARSYS,XQXFLG)
 ;
 D UNIVERSI
 ;
 F  S MSGNUM=$O(^INTHU("AD",WOTREF,MSGNUM),-1)  Q:MSGNUM<1!(QFLG="Q")  D
 . S DATETIME=$$UP^XLFSTR($$FMTE^XLFDT($$GET1^DIQ(4001,MSGNUM,.01,"I"),"5MPZ"))
 . S DATETIME=$P(DATETIME," ")_$J($P(DATETIME," ",2,3),9)
 . S (MSGSEG,NOTMSG)=0
 . F  S MSGSEG=$O(^INTHU(MSGNUM,3,MSGSEG))  Q:MSGSEG<1!(QFLG="Q")  D
 .. I $P($G(^INTHU(MSGNUM,3,MSGSEG,0)),"|")="OBR" D
 ... S UID=$P($G(^INTHU(MSGNUM,3,MSGSEG,0)),"|",3)
 ... Q:$L(UID)<1
 ... I LINES>MAXLINES D HEADERPG^BLRGMENU(.PG,.QFLG,"NO")  Q:QFLG="Q"
 ... ;
 ... W ?4,MSGNUM,?19,DATETIME,?40,MSGSEG,?50,$P(UID,"^"),?65,$P(UID,"^",2),!
 ... S LINES=LINES+1
 ;
 D PRESSKEY^BLRGMENU(9)
 Q
 ;
UNIVERSI ; EP - Initialization
 S BLRVERN=$TR($P($T(+1),";")," ")
 S BLVERN2="UNIVERSE"
 ;
 S WOTREF=+$$FIND1^DIC(4005,,,"HL IHS LAB R01 MU IN")
 Q:WOTREF<1 0                                      ; Quit with zero if IEN<1
 ;
 S HEADER(1)="UNIVERSAL INTERFACE"
 S HEADER(2)="Incoming Interface: HL IHS LAB R01 MU IN"
 S HEADER(3)=" "
 S $E(HEADER(4),5)="Message #"
 S $E(HEADER(4),22)="Date"
 S $E(HEADER(4),32)="Time"
 S $E(HEADER(4),41)="Seg #"
 S $E(HEADER(4),51)="UID"
 S $E(HEADER(4),66)="'$P(UID,""^"",2)'"
 ;
 S FOUNDIT=0
 S (CNT,PG)=0
 S QFLG="NO"
 S MAXLINES=20,LINES=MAXLINES+10
 S MSGNUM="AAA"
 Q
 ;
UNIVERUD ; EP - For UNIVERSAL INTERFACE, Enter UID & Display ALL HL7 Segs
 NEW (DILOCKTM,DISYS,DT,DTIME,DUZ,IO,IOBS,IOF,IOM,ION,IOS,IOSL,IOST,IOT,IOXY,U,XPARSYS,XQXFLG)
 ;
 S BLRVERN=$TR($P($T(+1),";")," ")
 ;
 S WOTREF=+$$FIND1^DIC(4005,,,"HL IHS LAB R01 MU IN")
 ;
 I WOTREF<1 D  Q
 . W !,?4,"Could not determine IEN of 'HL IHS LAB R01 MU IN' Interface.  Routine Ends."
 . D PRESSKEY^BLRGMENU(9)
 ;
 D ^XBFMK
 S DIR(0)="NO"
 S DIR("A")="Enter UID"
 D ^DIR
 I +$G(DIRUT) D  Q
 . W !!,?4,"No/Invalid Entry.  Routine Ends."
 . D PRESSKEY^BLRGMENU(9)
 ;
 S LRUID=X
 W !!,"LRUID:",LRUID,!,?4,"Searching"
 ;
 S MSGNUM="AAA",FOUNDIT=0
 F  S MSGNUM=$O(^INTHU("AD",WOTREF,MSGNUM),-1)  Q:MSGNUM<1!(FOUNDIT)  D
 . S DATETIME=$$UP^XLFSTR($$FMTE^XLFDT($$GET1^DIQ(4001,MSGNUM,.01,"I"),"5MPZ"))
 . S (MSGSEG,NOTMSG)=0
 . W "."  W:$X>74 !,?4
 . F  S MSGSEG=$O(^INTHU(MSGNUM,3,MSGSEG))  Q:MSGSEG<1!(FOUNDIT)  D
 .. I $P($G(^INTHU(MSGNUM,3,MSGSEG,0)),"|")="OBR" D
 ... S UID=$P($P($G(^INTHU(MSGNUM,3,MSGSEG,0)),"|",3),"^")
 ... S:UID=LRUID FOUNDIT=MSGNUM
 ;
 ;
 W !!
 I FOUNDIT<1 D  Q
 . W ?4,"Could not find UID ",LRUID," in File 4001.  Routine Ends."
 . D PRESSKEY^BLRGMENU(9)
 ;
 I FOUNDIT W ?4,"Found UID ",LRUID," in File 4001 at MSGNUM:",FOUNDIT
 D PRESSKEY^BLRGMENU(9)
 ;
 W !!
 ;
 S MAXLINES=IOSL-4
 S LINES=MAXLINES+10
 S (CNT,PG,UID6249)=0
 S (HDRONE,QFLG)="NO"
 S BLRVERN="BLRRLMU4",BLRVERN2="UNIVERUD"
 S HEADER(1)="UNIVERSAL INTERFACE"
 S HEADER(2)="UID "_LRUID_" HL7 Segments"
 ; S HEADER(3)=" "
 ;
 ; Display the various HL7 segments' data
 D HEADERDT^BLRGMENU
 S SEGIEN=.9999999
 F  S SEGIEN=$O(^INTHU(FOUNDIT,3,SEGIEN))  Q:SEGIEN<1!(QFLG="Q")  D
 . S SEG=$P($G(^INTHU(FOUNDIT,3,SEGIEN,0)),"|")
 . Q:$L(SEG)>3
 . S DOTELL="DISP"_SEG
 . D @DOTELL
 ;
 D PRESSKEY^BLRGMENU(9)
 Q
 ;
DISPMSH ; EP - Don't process anything in the MSH Segment
 NEW STR
 D SHOWSEG
 Q
 ;
DISPPID ; EP - Don't process anything in the PID Segment
 NEW STR
 D SHOWSEG
 Q
 ;
DISPOBR ; EP
 NEW CHNGDTT,DATANAME,DNDTT,F60IEN,OBRIEN,OBSDTT,RCTOSTR,STR,TESTNAME,TSTLOINC
 ;
 D SHOWSEG
 ;
 S TSTLOINC=$P($P(STR,"|",5),"^")
 S TESTNAME=$P($P(STR,"|",5),"^",2)
 S ORIGTEXT=$P($P(STR,"|",5),"^",9)
 ;
 W ?9,"TSTLOINC:",TSTLOINC,?39,"TESTNAME:"
 W:$L(TESTNAME)<31 TESTNAME,!
 I $L(TESTNAME)>30 D LINEWRAP^BLRGMENU(49,TESTNAME,30)  W !
 W ?9,"ORIGTEXT:",ORIGTEXT,!
 ;
 S F60IEN=$$FIND1^DIC(60,,,ORIGTEXT_",")
 W ?9,"F60IEN:",F60IEN,!
 ;
 S DATANAME=$$GET1^DIQ(60,+F60IEN,400,"I")
 W ?9,"DATANAME:",DATANAME,!
 ;
 S OBSDTT=$P($P(STR,"|",8),"^")               ; Observation Date/Time
 W ?9,"OBSDTT:",OBSDTT
 D:$L(OBSDTT) SHOWDATE(OBSDTT)
 W !
 ;
 S CHNGDTT=$P($P(STR,"|",23),"^")             ; Status/Result Change Date/Time
 W ?9,"CHNGDTT:",CHNGDTT
 D:$L(CHNGDTT) SHOWDATE(CHNGDTT)
 W !
 ;
 S DNDTT=$S($L(CHNGDTT):CHNGDTT,1:OBSDTT)     ; DataName Date/Time
 W ?9,"DNDTT:",DNDTT
 D:$L(DNDTT) SHOWDATE(DNDTT)
 W !
 ;
 S RCTOSTR=$P(STR,"|",29)                     ; Result Copies To
 I $L(RCTOSTR) D
 . S SUBSTR2=$TR($P(RCTOSTR,"^",2,6),"^"," ")
 . Q:$L($TR(SUBSTR2," "))<1                   ; If only spaces, skip
 . ;
 . W ?9,"RCTOSTR:",RCTOSTR,!,?14,"SUBSTR2:",SUBSTR2,!
 . ;
 . ; Assumption is that the NAME is in $P(SUBSTR," ",1,3)
 . S SUBSTR2=$P(SUBSTR2," ")_","_$P(SUBSTR2," ",2,$L(SUBSTR2," "))
 . W ?19,"SUBSTR2:",SUBSTR2,!
 ;
 Q
 ;
SHOWSEG ; EP - Show segment and setup STR variable
 W ?4,SEG,!,?9,"FOUNDIT:",FOUNDIT,?39,"SEGIEN:",SEGIEN,!
 S STR=$G(^INTHU(FOUNDIT,3,SEGIEN,0))
 Q
 ;
SHOWDATE(HL7DT) ; EP - Take HL7 Date and display FM & External Date
 NEW FMDT
 ;
 S TAB=$G(TAB,9)
 S FMDT=$$HL7TFM^XLFDT(HL7DT)
 W ?39,FMDT
 W ?59,$$FMTE^XLFDT(FMDT,"5MZ")
 Q
 ;
DISPOBX ; EP
 NEW ANSDTT,DATANAME,F60IEN,OBRIEN,STATUS,STR,TESTNAME,TSTLOINC
 ;
 D SHOWSEG
 ;
 S TSTLOINC=$P($P(STR,"|",4),"^")
 S TESTNAME=$P($P(STR,"|",4),"^",2)
 S ORIGTEXT=$P($P(STR,"|",4),"^",9)
 ;
 W ?9,"TSTLOINC:",TSTLOINC,?39,"TESTNAME:"
 W:$L(TESTNAME)<31 TESTNAME,!
 I $L(TESTNAME)>30 D LINEWRAP^BLRGMENU(49,TESTNAME,30)  W !
 W ?9,"ORIGTEXT:",ORIGTEXT,!
 ;
 S F60IEN=$$FIND1^DIC(60,,,ORIGTEXT_",")
 W ?9,"F60IEN:",F60IEN,!
 ;
 S DATANAME=$$GET1^DIQ(60,+F60IEN,400,"I")
 W ?9,"DATANAME:",DATANAME,!
 ;
 S ANSDTT=$P($P(STR,"|",15),"^")               ; Analysis Date/Time
 W ?9,"ANSDTT:",ANSDTT
 D:$L(ANSDTT) SHOWDATE(ANSDTT)
 W !
 ;
 S STATUS=$P(STR,"|",12)
 W ?9,"STATUS:",STATUS,!
 ;
 Q
 ;
DISPORC ; EP - Don't process anything in the PID Segment
 NEW STR
 D SHOWSEG
 Q
 ;
DISPSPM ; EP
 NEW CONDSPEC,SPMIEN,STR
 ;
 D SHOWSEG
 ;
 S CONDSPEC=$P($P(STR,"|",25),"^")            ; SPECIMEN CONDITION
 W ?9,"CONDSPEC:",CONDSPEC,!
 ;
 S REJREASN=$P($P(STR,"|",22),"^",2)          ; REJECTION REASON
 W ?9,"REJREASN:",REJREASN,!
 Q
 ;
DISPNTE ; EP - Don't process anything in the NTE Segment
 NEW STR
 D SHOWSEG
 Q
 ;
DISPTQ1 ; EP - Don't process anything in the TQ1 Segment
 NEW STR
 D SHOWSEG
 Q