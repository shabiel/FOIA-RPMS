VAFCMGB1 ;ALB/JRP-DEMOGRAPHIC MERGE SCREENS ;10/18/96
 ;;5.3;Registration;**149,295,384,477**;Aug 13, 1993
 ;
 ;NOTE: This routine contains line tags used to build the display
 ;      screen for a List Manager interface.  Refer to routine
 ;      VAFCMGB for a description of input/output variables.
 ;
GROUP2 ;Line tag to build logical group number two
 ;
 ;Group two contains the following fields:
 ;  .111, .1112, .112, .113, .114, .115, .117, .131, .132
 ;
 ;Column width is limited to 30 characters
 ;
 ;Declare variables
 N IENS,TARGET,MESSAGE,LINE,DATA,LOCAL,REMOTE,DIFF
 S TARGET="^TMP(""VAFC-MERGE-TO"","_$J_",""DATA"")"
 S MESSAGE="^TMP(""VAFC-MERGE-TO"","_$J_",""MESSAGE"")"
 ;Initialize global locations
 K @TARGET,@MESSAGE
 ;Set group index
 S @VALMAR@("GRP",2)=VALMCNT
 ;Get local data for patient
 D GETDATA^VAFCMGU0(VAFCDFN,2,TARGET,MESSAGE)
 ;Build display
 S IENS=VAFCDFN_","
 ;Address lines 1 to 3
 S LOCAL=$$LOCAL^VAFCMGB0(2,.111,IENS,TARGET)
 S LOCAL=$E(LOCAL,1,30)
 S REMOTE=$$REMOTE^VAFCMGB0(2,.111)
 S REMOTE=$E(REMOTE,1,30)
 S DIFF=$$DIFFCHK^VAFCMGB0(2,.111,IENS,TARGET)
 S LINE=$$INSERT^VAFCMGU0(LOCAL,"",8)
 S @VALMAR@(VALMCNT+1,0)=$$INSERT^VAFCMGU0(REMOTE,LINE,48)
 S LOCAL=$$LOCAL^VAFCMGB0(2,.112,IENS,TARGET)
 S LOCAL=$E(LOCAL,1,30)
 S REMOTE=$$REMOTE^VAFCMGB0(2,.112)
 S REMOTE=$E(REMOTE,1,30)
 S:('DIFF) DIFF=$$DIFFCHK^VAFCMGB0(2,.112,IENS,TARGET)
 S LINE=$$INSERT^VAFCMGU0(LOCAL,"",8)
 S @VALMAR@(VALMCNT+2,0)=$$INSERT^VAFCMGU0(REMOTE,LINE,48)
 S LOCAL=$$LOCAL^VAFCMGB0(2,.113,IENS,TARGET)
 S LOCAL=$E(LOCAL,1,30)
 S REMOTE=$$REMOTE^VAFCMGB0(2,.113)
 S REMOTE=$E(REMOTE,1,30)
 S:('DIFF) DIFF=$$DIFFCHK^VAFCMGB0(2,.113,IENS,TARGET)
 S LINE=$$INSERT^VAFCMGU0(LOCAL,"",8)
 S @VALMAR@(VALMCNT+3,0)=$$INSERT^VAFCMGU0(REMOTE,LINE,48)
 S @VALMAR@(VALMCNT,0)=$S(DIFF:"**",1:"  ")_" 5 Address:"
 I DIFF,($P($G(@VAFCARR@(2,.111)),U,2)!$P($G(@VAFCARR@(2,.112)),U,2)!$P($G(@VAFCARR@(2,.113)),U,2)) S @VALMAR@(VALMCNT,0)="-> 5 Address:" ;**295
 S @VALMAR@("IDX",VALMCNT,5)=""
 S @VALMAR@("IDX",VALMCNT+1,5)=""
 S @VALMAR@("IDX",VALMCNT+2,5)=""
 S @VALMAR@("IDX",VALMCNT+3,5)=""
 I (DIFF) D
 .S @VALMAR@("E2F",5,1)="2^.111"
 .S @VALMAR@("E2F",5,2)="2^.112"
 .S @VALMAR@("E2F",5,3)="2^.113"
 .S @VALMAR@("E2G",5)=2
 I ('DIFF) D
 .K @VALMAR@("E2F",5)
 .K @VALMAR@("E2G",5)
 W:(+$G(VAFCDOTS)) "."
 S VALMCNT=VALMCNT+4
 ;City
 S LOCAL=$$LOCAL^VAFCMGB0(2,.114,IENS,TARGET)
 S LOCAL=$E(LOCAL,1,30)
 S REMOTE=$$REMOTE^VAFCMGB0(2,.114)
 S REMOTE=$E(REMOTE,1,30)
 S DIFF=$$DIFFCHK^VAFCMGB0(2,.114,IENS,TARGET)
 S LINE=$S(DIFF:"**",1:"  ")_" 6"
 S:DIFF&($P($G(@VAFCARR@(2,.114)),U,2)) LINE="->"_" 6" ;**295
 S DATA="City: "_LOCAL
 S LINE=$$INSERT^VAFCMGU0(DATA,LINE,8)
 S @VALMAR@(VALMCNT,0)=$$INSERT^VAFCMGU0(REMOTE,LINE,48)
 S @VALMAR@("IDX",VALMCNT,6)=""
 I (DIFF) D
 .S @VALMAR@("E2F",6,1)="2^.114"
 .S @VALMAR@("E2G",6)=2
 I ('DIFF) D
 .K @VALMAR@("E2F",6)
 .K @VALMAR@("E2G",6)
 W:(+$G(VAFCDOTS)) "."
 S VALMCNT=VALMCNT+1
 ;State
 S LOCAL=$$LOCAL^VAFCMGB0(2,.115,IENS,TARGET)
 S LOCAL=$E(LOCAL,1,30)
 S REMOTE=$$REMOTE^VAFCMGB0(2,.115)
 S REMOTE=$E(REMOTE,1,30)
 S DIFF=$$DIFFCHK^VAFCMGB0(2,.115,IENS,TARGET)
 I $D(^XUSEC("EAS GMT COUNTY EDIT",+DUZ)) D  ;**477 for GMT
 . S LINE=$S(DIFF:"**",1:"  ")_" 7"
 . S:DIFF&($P($G(@VAFCARR@(2,.115)),U,2)) LINE="->"_" 7"
 I '$D(^XUSEC("EAS GMT COUNTY EDIT",+DUZ)) D  ;**477 for GMT
 . S LINE=$S(DIFF:"**",1:"  ")
 . S:DIFF&($P($G(@VAFCARR@(2,.115)),U,2)) LINE="->"
 S DATA="State: "_LOCAL
 S LINE=$$INSERT^VAFCMGU0(DATA,LINE,7)
 S @VALMAR@(VALMCNT,0)=$$INSERT^VAFCMGU0(REMOTE,LINE,48)
 S @VALMAR@("IDX",VALMCNT,7)=""
 I $D(^XUSEC("EAS GMT COUNTY EDIT",+DUZ)) D  ;**477 for GMT
 . I (DIFF) D
 . .S @VALMAR@("E2F",7,1)="2^.115"
 . .S @VALMAR@("E2G",7)=2
 . I ('DIFF) D
 . .K @VALMAR@("E2F",7)
 . .K @VALMAR@("E2G",7)
 W:(+$G(VAFCDOTS)) "."
 S VALMCNT=VALMCNT+1
 ;Zip+4
 S LOCAL=$$LOCAL^VAFCMGB0(2,.1112,IENS,TARGET)
 S REMOTE=$$REMOTE^VAFCMGB0(2,.1112)
 S DIFF=$$DIFFCHK^VAFCMGB0(2,.1112,IENS,TARGET)
 S LINE=$S(DIFF:"**",1:"  ")_" 8"
 S:DIFF&($P($G(@VAFCARR@(2,.1112)),U,2)) LINE="->"_" 8" ;**295
 S DATA="Zip+4: "_LOCAL
 S LINE=$$INSERT^VAFCMGU0(DATA,LINE,7)
 S @VALMAR@(VALMCNT,0)=$$INSERT^VAFCMGU0(REMOTE,LINE,48)
 S @VALMAR@("IDX",VALMCNT,8)=""
 I (DIFF) D
 .S @VALMAR@("E2F",8,1)="2^.1112"
 .S @VALMAR@("E2G",8)=2
 I ('DIFF) D
 .K @VALMAR@("E2F",8)
 .K @VALMAR@("E2G",8)
 W:(+$G(VAFCDOTS)) "."
 S VALMCNT=VALMCNT+1
 ;County
 S LOCAL=$$LOCAL^VAFCMGB0(2,.117,IENS,TARGET)
 S LOCAL=$E(LOCAL,1,30)
 S REMOTE=$$REMOTE^VAFCMGB0(2,.117)
 S REMOTE=$E(REMOTE,1,30)
 S DIFF=$$DIFFCHK^VAFCMGB0(2,.117,IENS,TARGET)
 I $D(^XUSEC("EAS GMT COUNTY EDIT",+DUZ)) D  ;**477 for GMT
 . S LINE=$S(DIFF:"**",1:"  ")_" 9"
 . S:DIFF&($P($G(@VAFCARR@(2,.117)),U,2)) LINE="->"_" 9"
 I '$D(^XUSEC("EAS GMT COUNTY EDIT",+DUZ)) D  ;**477 for GMT
 . S LINE=$S(DIFF:"**",1:"  ")
 . S:DIFF&($P($G(@VAFCARR@(2,.117)),U,2)) LINE="->"
 S DATA="County: "_LOCAL
 S LINE=$$INSERT^VAFCMGU0(DATA,LINE,6)
 S @VALMAR@(VALMCNT,0)=$$INSERT^VAFCMGU0(REMOTE,LINE,48)
 S @VALMAR@("IDX",VALMCNT,9)=""
 I $D(^XUSEC("EAS GMT COUNTY EDIT",+DUZ)) D  ;**477 for GMT
 . I (DIFF) D
 . .S @VALMAR@("E2F",9,1)="2^.117"
 . .S @VALMAR@("E2G",9)=2
 . I ('DIFF) D
 . .K @VALMAR@("E2F",9)
 . .K @VALMAR@("E2G",9)
 W:(+$G(VAFCDOTS)) "."
 S VALMCNT=VALMCNT+1
 ;Home phone number
 S LOCAL=$$LOCAL^VAFCMGB0(2,.131,IENS,TARGET)
 S LOCAL=$E(LOCAL,1,30)
 S REMOTE=$$REMOTE^VAFCMGB0(2,.131)
 S REMOTE=$E(REMOTE,1,30)
 S DIFF=$$DIFFCHK^VAFCMGB0(2,.131,IENS,TARGET)
 S LINE=$S(DIFF:"**",1:"  ")_"10"
 S:DIFF&($P($G(@VAFCARR@(2,.131)),U,2)) LINE="->"_"10" ;**384
 S DATA="Home #: "_LOCAL
 S LINE=$$INSERT^VAFCMGU0(DATA,LINE,6)
 S @VALMAR@(VALMCNT,0)=$$INSERT^VAFCMGU0(REMOTE,LINE,48)
 S @VALMAR@("IDX",VALMCNT,10)=""
 I (DIFF) D
 .S @VALMAR@("E2F",10,1)="2^.131"
 .S @VALMAR@("E2G",10)=2
 I ('DIFF) D
 .K @VALMAR@("E2F",10)
 .K @VALMAR@("E2G",10)
 W:(+$G(VAFCDOTS)) "."
 S VALMCNT=VALMCNT+1
 ;Work phone number
 S LOCAL=$$LOCAL^VAFCMGB0(2,.132,IENS,TARGET)
 S LOCAL=$E(LOCAL,1,30)
 S REMOTE=$$REMOTE^VAFCMGB0(2,.132)
 S REMOTE=$E(REMOTE,1,30)
 S DIFF=$$DIFFCHK^VAFCMGB0(2,.132,IENS,TARGET)
 S LINE=$S(DIFF:"**",1:"  ")_"11"
 S:DIFF&($P($G(@VAFCARR@(2,.132)),U,2)) LINE="->"_"11" ;**384
 S DATA="Work #: "_LOCAL
 S LINE=$$INSERT^VAFCMGU0(DATA,LINE,6)
 S @VALMAR@(VALMCNT,0)=$$INSERT^VAFCMGU0(REMOTE,LINE,48)
 S @VALMAR@("IDX",VALMCNT,11)=""
 I (DIFF) D
 .S @VALMAR@("E2F",11,1)="2^.132"
 .S @VALMAR@("E2G",11)=2
 I ('DIFF) D
 .K @VALMAR@("E2F",11)
 .K @VALMAR@("E2G",11)
 W:(+$G(VAFCDOTS)) "."
 S VALMCNT=VALMCNT+1
 ;Done - cleanup global locations used
 K @TARGET,@MESSAGE
 Q