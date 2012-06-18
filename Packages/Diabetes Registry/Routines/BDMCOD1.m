BDMCOD1 ; IHS/CMI/LAB - CODE RANGES IN TABLE ;
 ;;2.0;DIABETES MANAGEMENT SYSTEM;**2**;JUN 14, 2007
 ;
 I 'BDMSUB D ADD I 1
 E  D DEL
 D EOJ
 Q
 ;
ADD ; SECTION FOR ADDING CODES TO TABLE
 I '$D(BDMTBLE) S BDMTBLE(BDM("LOW"))=BDM("HI") G X1
 S BDMDONE=0
 S BDMVAL="" F  S BDMVAL=$O(BDMTBLE(BDMVAL)) Q:BDMVAL=""   D GETCASE,ADDPROC Q:BDMDONE
 D:'BDMDONE SETRANGE
 K BDMDONE,BDMVAL,BDMCASE
X1 Q
 ;
ADDPROC ; CASE SPECIFIC ADD PROCESSING
 G @("ADD"_BDMCASE)
ADD2 ;;
ADD3 ;;
ADD4 ;;
 S BDMTBLE(BDM("LOW"))=BDMTBLE(BDMVAL)
 K BDMTBLE(BDMVAL)
ADD6 ;;
ADD7 ;;
ADD9 ;;
ADD10 ;;
 S BDMDONE=1
 Q
ADD11 ;;
ADD12 ;;
 S BDM("LOW")=BDMVAL
ADD5 ;;
ADD8 ;;
 K BDMTBLE(BDMVAL)
 Q
ADD1 ;;
 I $O(^ICD9("BA",BDM("HI")))=BDMVAL,$E(BDMVAL)=$E(BDM("HI"))!(BDMVAL&BDM("HI")) S BDMTBLE(BDM("LOW"))=BDMTBLE(BDMVAL) K BDMTBLE(BDMVAL) S BDMDONE=1
 Q
ADD13 ;;
 I $O(^ICD9("BA",BDMTBLE(BDMVAL)))=BDM("LOW"),$E(BDMVAL)=$E(BDM("LOW"))!(BDMVAL&BDM("LOW")) S BDM("LOW")=BDMVAL K BDMTBLE(BDMVAL)
 ; continue
 Q
 ;
SETRANGE ;
 ;;
SET1 ;;
SET5 ;;
SET8 ;;
SET11 ;;
SET12 ;;
SET13 ;;
 S BDMTBLE(BDM("LOW"))=BDM("HI")
 Q
 ;
DEL ; SECTION FOR DELETING CODES FROM TABLE
 I '$D(BDMTBLE) G X2
 S BDMDONE=0
 S BDMVAL="" F  S BDMVAL=$O(BDMTBLE(BDMVAL)) Q:BDMVAL=""  D GETCASE,DELPROC Q:BDMDONE
X2 Q
 ;
DELPROC ;CASE SPECIFIC DEL PROCESSING
 G @("DEL"_BDMCASE)
DEL2 ;;
 I BDM("HI")=BDMTBLE(BDMVAL) K BDMTBLE(BDMVAL)
 E  S BDMTBLE($O(^ICD9("BA",BDM("HI"))))=BDMTBLE(BDMVAL) K BDMTBLE(BDMVAL)
 S BDMDONE=1
 Q
 ;
DEL3 ;;
DEL6 ;;
 S BDMTBLE($O(^ICD9("BA",BDM("HI"))))=BDMTBLE(BDMVAL) K BDMTBLE(BDMVAL)
 S BDMDONE=1
 Q
 ;
DEL4 ;;
DEL5 ;;
DEL7 ;;
DEL8 ;;
 K BDMTBLE(BDMVAL)
 I BDMCASE'=8,BDMCASE'=5 S BDMDONE=1
 Q
 ;
DEL10 ;;
DEL11 ;;
DEL12 ;;
 D @$S($E(BDMTBLE(BDMVAL))?1N:"NUMBER",1:"LETTER")
 S BDMTBLE(BDMVAL)=BDM("NEWHI")
 I BDMCASE=10 S BDMDONE=1
 Q
 ;
DEL9 ;;
 D @$S($E(BDMTBLE(BDMVAL))?1N:"NUMBER",1:"LETTER")
 S BDMTBLE($O(^ICD9("BA",BDM("HI"))))=BDMTBLE(BDMVAL)
 S BDMTBLE(BDMVAL)=BDM("NEWHI")
 S BDMDONE=1
 Q
 ;
DEL1 ;;
DEL13 ;;
 Q
 ;
GETCASE ; SUBROUTINE TO DETERMINE BDMCASE # FROM INPUT CODE RANGE
 S BDM("TLOW")=BDMVAL,BDM("THI")=BDMTBLE(BDMVAL)
 D CASEA:BDM("TLOW")]BDM("LOW"),CASEB:BDM("LOW")=BDM("TLOW"),CASEC:BDM("LOW")]BDM("TLOW")
 K BDM("TLOW"),BDM("THI")
 Q
 ;
CASEA ;
 I BDM("HI")]BDM("TLOW") S BDMCASE=$S(BDM("THI")]BDM("HI"):3,BDM("HI")=BDM("THI"):4,1:5)
 E  S BDMCASE=$S(BDM("TLOW")]BDM("HI"):1,1:2)
 Q
 ;
CASEB ;
 S BDMCASE=$S(BDM("THI")]BDM("HI"):6,BDM("HI")=BDM("THI"):7,1:8)
 Q
 ;
CASEC ;
 I BDM("THI")]BDM("LOW") S BDMCASE=$S(BDM("THI")]BDM("HI"):9,BDM("HI")=BDM("THI"):10,1:11)
 E  S BDMCASE=$S(BDM("LOW")=BDM("THI"):12,1:13)
 Q
 ;
NUMBER ;
 S BDM("CODE")=BDM("LOW")-5 F  Q:BDM("LOW")]$O(^ICD9("BA",BDM("CODE")_" "))  S BDM("CODE")=BDM("CODE")-5
 S BDM("CODE")=$O(^ICD9("BA",BDM("CODE")_" ")) F  S BDM("NEWHI")=BDM("CODE"),BDM("CODE")=$O(^ICD9("BA",BDM("CODE"))) Q:BDM("CODE")=BDM("LOW")
 Q
 ;
LETTER ;
 S BDM("LET")=$E(BDM("LOW"))_" " F  S BDM("NEWHI")=$S($L(BDM("LET"))>2:BDM("LET"),1:BDM("LOW")),BDM("LET")=$O(^ICD9("BA",BDM("LET"))) Q:BDM("LET")=BDM("LOW")
 Q
EOJ ;
 K BDMCASE,BDMDONE,BDMNEXT,BDMONE,BDMVAL
 Q
 ;