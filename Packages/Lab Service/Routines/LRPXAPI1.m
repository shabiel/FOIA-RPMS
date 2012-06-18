LRPXAPI1 ;VA/SLC/STAFF - Lab Extract API code ;10/28/03  11:29
 ;;5.2;LAB SERVICE;**1030**;NOV 01, 1997
 ;;5.2;LAB SERVICE;**295**;Sep 27, 1994;Build 5
 ;
TESTS(TESTS,DFN,MAX,NEXT,COND,DATE1,DATE2) ; from LRPXAPI
 ; returns lab tests on a patient
 ; returned in array TESTS
 N CNT,CONDOK,DATA,DATE,ERR,NMSP K DATA
 S NMSP=$G(TESTS) K TESTS S TESTS=""
 ; return all tests in ^TMP(NMSP,$J
 I NMSP?1U1UN1.14UNP K ^TMP(NMSP,$J) S TESTS=NMSP
 D DATES^LRPXAPIU(.DATE1,.DATE2)
 S CONDOK=+$P($G(NEXT),U,2)
 S NEXT=+$G(NEXT)
 I $L(COND),'CONDOK,'$$CONDOK^LRPXAPIU(COND,"C") Q
 S CNT=0
 F  S NEXT=$O(^PXRMINDX(63,"PI",DFN,NEXT)) Q:NEXT<1  D  Q:CNT'<MAX
 . S DATE=+$O(^PXRMINDX(63,"PI",DFN,NEXT,DATE1))
 . I 'DATE Q
 . I DATE>DATE2 Q
 . I $L(COND) D VALUE^LRPXAPI2(.DATA,DFN,DATE,NEXT,COND,.ERR) I ERR Q
 . S CNT=CNT+1
 . I TESTS?1U1UN1.14UNP D  Q
 .. S ^TMP(TESTS,$J,NEXT)=NEXT_U_$$TESTNM^LRPXAPIU(NEXT)
 . S TESTS(NEXT)=NEXT_U_$$TESTNM^LRPXAPIU(NEXT)
 S NEXT=+NEXT_U_1
 Q
 ;
RESULTS(VALUES,DFN,MAX,NEXT,COND,DATE1,DATE2) ; from LRPXAPI
 ; returns all lab results on a patient
 ; returned in array VALUES
 ; format: date^test^comment^results
 ; date is collection date/time
 ; test is file 60 ien
 ; comment is 1 (exists) or 0 (no comment)
 ; results are result node (value^flag^...)
 N CNT,COMMENT,CONDOK,DATA,DATE,ERR,LRDFN,LRDN,LRIDT,LRIDT1,NMSP,OK,RESULT,TEST
 S NMSP=$G(VALUES) K VALUES S VALUES=""
 ; return all results in ^TMP(NMSP,$J
 I NMSP?1U1UN1.14UNP K ^TMP(NMSP,$J) S VALUES=NMSP
 S LRDFN=$$LRDFN^LRPXAPIU(DFN)
 D DATES^LRPXAPIU(.DATE1,.DATE2)
 S LRIDT=$$LRIDT^LRPXAPIU(DATE2)
 S LRIDT1=$$LRIDT^LRPXAPIU(DATE1)
 S CONDOK=+$P($G(NEXT),U,2)
 S NEXT=+$G(NEXT) I NEXT S LRIDT=NEXT
 I $L(COND),'CONDOK,'$$CONDOK^LRPXAPIU(COND,"C") Q
 I $E(COND)="|" S COND=$E(COND,2,245)
 I $E(COND)="~" S COND=$E(COND,2,245)
 I $L(COND) S COND=$$REPLACE^LRPXAPI2("I "_COND)
 S CNT=0
 S OK=0
 F  S LRIDT=$O(^LR(LRDFN,"CH",LRIDT)) Q:LRIDT<1  D  Q:OK
 . I '$$VERIFIED^LRPXAPI2(LRDFN,LRIDT) Q
 . I LRIDT<1 S OK=1,LRIDT=0 Q
 . I LRIDT1,LRIDT>LRIDT1 S OK=1,LRIDT=0 Q
 . S CNT=CNT+1
 . S DATE=$$LRIDT^LRPXAPIU(LRIDT)
 . S COMMENT=$$COMMENT^LRPXAPI2(LRDFN,LRIDT)
 . S LRDN=1
 . F  S LRDN=$O(^LR(LRDFN,"CH",LRIDT,LRDN)) Q:LRDN<1  S RESULT=^(LRDN) D
 .. S TEST=$$TEST^LRPXAPIU(LRDN)
 .. I 'TEST Q
 .. I $L(COND) D LRVAL^LRPXAPI2(.DATA,LRDFN,LRIDT,LRDN,COND,.ERR) I ERR Q
 .. E  S DATA=RESULT
 .. I VALUES?1U1UN1.14UNP D  Q
 ... S ^TMP(VALUES,$J,LRIDT_" "_TEST)=DATE_U_TEST_U_COMMENT_U_DATA
 .. S VALUES(-DATE_" "_TEST)=DATE_U_TEST_U_COMMENT_U_DATA
 . I CNT'<MAX S OK=1 Q
 S NEXT=+LRIDT_U_1
 Q
 ;
TRESULTS(VALUES,DFN,TEST,MAX,NEXT,COND,DATE1,DATE2) ; from LRPXAPI
 ; returns a lab test's results on a patient
 ; returned in array VALUES
 ; format: date^test^comment^results
 ; date is collection date/time
 ; test is file 60 ien
 ; comment is 1 (exists) or 0 (no comment)
 ; results are result node (value^flag^...)
 N CNT,COMMENT,CONDOK,DATA,DATE,ERR,LRDFN,LRDN,LRIDT,NMSP,NODE,OK
 S NMSP=$G(VALUES) K VALUES S VALUES=""
 ; return all test results in ^TMP(NMSP,$J
 I NMSP?1U1UN1.14UNP K ^TMP(NMSP,$J) S VALUES=NMSP
 S CONDOK=+$P($G(NEXT),U,2)
 I $L(COND),'CONDOK,'$$CONDOK^LRPXAPIU(COND,"C") Q
 I $L(COND) D
 . I $E(COND)="|" S COND=$E(COND,2,245)
 . I $E(COND)="~" S COND=$E(COND,2,245)
 . S COND=$$REPLACE^LRPXAPI2("I "_COND)
 D DATES^LRPXAPIU(.DATE1,.DATE2)
 S DATE=DATE2
 S NEXT=+$G(NEXT) I NEXT S DATE=NEXT
 S CNT=0
 S OK=0
 F  S DATE=$O(^PXRMINDX(63,"IP",TEST,DFN,DATE),-1) Q:DATE=""  D  Q:OK
 . I DATE<DATE1 S OK=1,DATE=0 Q
 . I DATE>DATE2 S OK=1,DATE=0 Q
 . S NODE=$O(^PXRMINDX(63,"IP",TEST,DFN,DATE,1))
 . S LRDFN=+$P(NODE,";")
 . S LRIDT=+$P(NODE,";",3)
 . S COMMENT=$$COMMENT^LRPXAPI2(LRDFN,LRIDT)
 . S NODE=""
 . F  S NODE=$O(^PXRMINDX(63,"IP",TEST,DFN,DATE,NODE)) Q:NODE=""  D  Q:OK
 .. S LRDN=+$P(NODE,";",4)
 .. D LRVAL^LRPXAPI2(.DATA,LRDFN,LRIDT,LRDN,COND,.ERR) I ERR Q
 .. S CNT=CNT+1
 .. I VALUES?1U1UN1.14UNP D  Q
 ... S ^TMP(VALUES,$J,-DATE)=DATE_U_TEST_U_COMMENT_U_DATA
 .. S VALUES(-DATE_" "_TEST)=DATE_U_TEST_U_COMMENT_U_DATA
 .. I CNT'<MAX S OK=1 Q
 S NEXT=+DATE_U_1
 Q
 ;
PATIENTS(PATS,TEST,SOURCE,MAX,NEXT,COND,DATE1,DATE2) ; from LRPXAPI
 ; uses PATS within this scope
 ; returns patients who have a test result
 ; returned in array PATS
 ; format: DFN^patient name
 N CNT,CONDOK,DATA,DATE,DFN,DONE,ERR,LRDFN,LRDN,LRIDT,NMSP,NODE,OK
 S NMSP=$G(PATS) K PATS S PATS=""
 ; return patients in ^TMP(NMSP,$J
 I NMSP?1U1UN1.14UNP K ^TMP(NMSP,$J) S PATS=NMSP
 D DATES^LRPXAPIU(.DATE1,.DATE2)
 S CONDOK=+$P($G(NEXT),U,2)
 S NEXT=+$G(NEXT)
 S DFN=NEXT
 I $L(COND),'CONDOK,'$$CONDOK^LRPXAPIU(COND,"C") Q
 I $E(COND)="|" S COND=$E(COND,2,245)
 I $E(COND)="~" S COND=$E(COND,2,245)
 I $L(COND) S COND=$$REPLACE^LRPXAPI2("I "_COND)
 S CNT=0
 I '$L(SOURCE) D
 . F  S DFN=$O(^PXRMINDX(63,"IP",TEST,DFN)) Q:DFN<1  D PATS Q:CNT'<MAX
 E  D
 . F  S DFN=$O(@SOURCE@(DFN)) Q:DFN<1  D PATS Q:CNT'<MAX
 S NEXT=+DFN_U_1
 Q
PATS ; within scope of PATIENTS
 S DONE=0
 S OK=0
 S DATE=DATE1
 F  S DATE=$O(^PXRMINDX(63,"IP",TEST,DFN,DATE)) Q:DATE<1  D  Q:DONE
 . I DATE>DATE2 S DONE=1 Q
 . I '$L(COND) S OK=1,DONE=1 Q
 . S OK=0
 . S NODE=""
 . F  S NODE=$O(^PXRMINDX(63,"IP",TEST,DFN,DATE,NODE)) Q:NODE=""  D  Q:OK
 .. S LRDFN=+$P(NODE,";")
 .. S LRIDT=+$P(NODE,";",3)
 .. S LRDN=+$P(NODE,";",4)
 .. D LRVAL^LRPXAPI2(.DATA,LRDFN,LRIDT,LRDN,COND,.ERR) I ERR Q
 .. S OK=1
 .. S DONE=1
 I OK D
 . S CNT=CNT+1
 . I PATS?1U1UN1.14UNP D  Q
 .. S ^TMP(PATS,$J,DFN)=DFN_U_$$DFNM^LRPXAPIU(DFN)
 . S PATS(DFN)=DFN_U_$$DFNM^LRPXAPIU(DFN)
 Q
 ;
PTS(PATS,SOURCE,MAX,NEXT,COND,DATE1,DATE2) ; from LRPXAPI
 ; uses APATS within this scope
 ; returns all patients that have lab data
 N CONDOK,CNT,DATE,DFN,ERR,ITEM,NMSP,OK,TYPE
 ; if item exists in condition, route to other procedure
 S CONDOK=+$P($G(NEXT),U,2)
 I $L(COND),'CONDOK,'$$CONDOK^LRPXAPIU(COND,"C") Q
 I $L(COND) D  Q
 . D ITEM^LRPXAPI6(.ITEM,TYPE,COND,.ERR) I ERR Q
 . D PATIENTS(.PATS,ITEM,SOURCE,MAX,.NEXT,COND,DATE1,DATE2) Q
 S NMSP=$G(PATS) K PATS S PATS=""
 ; return patients in ^TMP(NMSP,$J
 I NMSP?1U1UN1.14UNP K ^TMP(NMSP,$J) S PATS=NMSP
 D DATES^LRPXAPIU(.DATE1,.DATE2)
 S NEXT=+$G(NEXT)
 S DFN=NEXT
 S CNT=0
 I '$L(SOURCE) D
 . F  S DFN=$O(^PXRMINDX(63,"PI",DFN)) Q:DFN<1  D PT Q:CNT'<MAX
 E  D
 . F  S DFN=$O(@SOURCE@(DFN)) Q:DFN<1  D PT Q:CNT'<MAX
 S NEXT=+DFN_U_1
 Q
PT ; within scope of ALLPATS
 S OK=0
 S ITEM=0
 F  S ITEM=$O(^PXRMINDX(63,"PI",DFN,ITEM)) Q:ITEM<1  D  Q:OK
 . S DATE=DATE1
 . F  S DATE=+$O(^PXRMINDX(63,"PI",DFN,ITEM,DATE)) Q:DATE<1  D  Q:OK
 .. I DATE>DATE2 Q
 .. S OK=1 Q
 I OK D
 . S CNT=CNT+1
 . I PATS?1U1UN1.14UNP D  Q
 .. S ^TMP(PATS,$J,DFN)=DFN_U_$$DFNM^LRPXAPIU(DFN)
 . S PATS(DFN)=DFN_U_$$DFNM^LRPXAPIU(DFN)
 Q
 ;
DATES(DATES,DFN,TYPE,MAX,NEXT,DATE1,DATE2) ; from LRPXAPI
 ; returns dates of data occurrence
 ; returned in array DATES
 N CNT,DATE,ITEM,LRDFN,LRIDT,LRIDT1,NMSP,OK,STOP
 S NMSP=$G(DATES) K DATES S DATES=""
 ; return all patients in ^TMP(NMSP,$J
 I NMSP?1U1UN1.14UNP K ^TMP(NMSP,$J) S DATES=NMSP
 D DATES^LRPXAPIU(.DATE1,.DATE2)
 S CNT=0
 I TYPE="C" D  Q
 . S LRDFN=$$LRDFN^LRPXAPIU(DFN)
 . S LRIDT=$$LRIDT^LRPXAPIU(DATE2)
 . S LRIDT1=$$LRIDT^LRPXAPIU(DATE1)
 . S NEXT=+$G(NEXT) I NEXT S LRIDT=NEXT
 . S OK=0
 . F  S LRIDT=$O(^LR(LRDFN,"CH",LRIDT)) Q:LRIDT<1  D  Q:OK
 .. I '$$VERIFIED^LRPXAPI2(LRDFN,LRIDT) Q
 .. I LRIDT<1 S OK=1,LRIDT=0 Q
 .. I LRIDT1,LRIDT>LRIDT1 S OK=1,LRIDT=0 Q
 .. S DATE=$$LRIDT^LRPXAPIU(LRIDT)
 .. S CNT=CNT+1
 .. I CNT'<MAX S OK=1
 .. I DATES?1U1UN1.14UNP S ^TMP(DATES,$J,-DATE)=DATE Q
 .. S DATES(-DATE)=DATE
 . S NEXT=+LRIDT
 S DATE=DATE2
 S NEXT=+$G(NEXT) I NEXT S DATE=NEXT
 S OK=0
 F  S DATE=$O(^PXRMINDX(63,"PDI",DFN,DATE),-1) Q:DATE=""  D  Q:OK
 . I DATE<DATE1 S OK=1,DATE=0 Q
 . S ITEM=TYPE,STOP=TYPE_"ZZZZ"
 . F  S ITEM=$O(^PXRMINDX(63,"PDI",DFN,DATE,ITEM)) Q:ITEM=""  Q:ITEM]STOP  D  Q
 .. S CNT=CNT+1
 .. I DATES?1U1UN1.14UNP D  Q
 ... S ^TMP(DATES,$J,-DATE)=DATE
 .. S DATES(-DATE)=DATE
 . I CNT'<MAX S OK=1 Q
 S NEXT=+DATE
 Q
 ;