APCLTAXJ ; IHS/CMI/LAB - CODE RANGES IN TABLE ;
 ;;2.0;IHS PCC SUITE;;MAY 14, 2009
 ;
 I 'APCLSUB D ADD I 1
 E  D DEL
 D EOJ
 Q
 ;
ADD ; SECTION FOR ADDING CODES TO TABLE
 I '$D(APCLTBLE) S APCLTBLE(APCL("LOW"))=APCL("HI") G X1
 S APCLDONE=0
 S APCLVAL="" F  S APCLVAL=$O(APCLTBLE(APCLVAL)) Q:APCLVAL=""   D GETCASE,ADDPROC Q:APCLDONE
 D:'APCLDONE SETRANGE
 K APCLDONE,APCLVAL,APCLCASE
X1 Q
 ;
ADDPROC ; CASE SPECIFIC ADD PROCESSING
 G @("ADD"_APCLCASE)
ADD2 ;;
ADD3 ;;
ADD4 ;;
 S APCLTBLE(APCL("LOW"))=APCLTBLE(APCLVAL)
 K APCLTBLE(APCLVAL)
ADD6 ;;
ADD7 ;;
ADD9 ;;
ADD10 ;;
 S APCLDONE=1
 Q
ADD11 ;;
ADD12 ;;
 S APCL("LOW")=APCLVAL
ADD5 ;;
ADD8 ;;
 K APCLTBLE(APCLVAL)
 Q
ADD1 ;;
 I $O(^ICD0("BA",APCL("HI")))=APCLVAL,$E(APCLVAL)=$E(APCL("HI"))!(APCLVAL&APCL("HI")) S APCLTBLE(APCL("LOW"))=APCLTBLE(APCLVAL) K APCLTBLE(APCLVAL) S APCLDONE=1
 Q
ADD13 ;;
 I $O(^ICD0("BA",APCLTBLE(APCLVAL)))=APCL("LOW"),$E(APCLVAL)=$E(APCL("LOW"))!(APCLVAL&APCL("LOW")) S APCL("LOW")=APCLVAL K APCLTBLE(APCLVAL)
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
 S APCLTBLE(APCL("LOW"))=APCL("HI")
 Q
 ;
DEL ; SECTION FOR DELETING CODES FROM TABLE
 I '$D(APCLTBLE) G X2
 S APCLDONE=0
 S APCLVAL="" F  S APCLVAL=$O(APCLTBLE(APCLVAL)) Q:APCLVAL=""  D GETCASE,DELPROC Q:APCLDONE
X2 Q
 ;
DELPROC ;CASE SPECIFIC DEL PROCESSING
 G @("DEL"_APCLCASE)
DEL2 ;;
 I APCL("HI")=APCLTBLE(APCLVAL) K APCLTBLE(APCLVAL)
 E  S APCLTBLE($O(^ICD0("BA",APCL("HI"))))=APCLTBLE(APCLVAL) K APCLTBLE(APCLVAL)
 S APCLDONE=1
 Q
 ;
DEL3 ;;
DEL6 ;;
 S APCLTBLE($O(^ICD0("BA",APCL("HI"))))=APCLTBLE(APCLVAL) K APCLTBLE(APCLVAL)
 S APCLDONE=1
 Q
 ;
DEL4 ;;
DEL5 ;;
DEL7 ;;
DEL8 ;;
 K APCLTBLE(APCLVAL)
 I APCLCASE'=8,APCLCASE'=5 S APCLDONE=1
 Q
 ;
DEL10 ;;
DEL11 ;;
DEL12 ;;
 D @$S($E(APCLTBLE(APCLVAL))?1N:"NUMBER",1:"LETTER")
 S APCLTBLE(APCLVAL)=APCL("NEWHI")
 I APCLCASE=10 S APCLDONE=1
 Q
 ;
DEL9 ;;
 D @$S($E(APCLTBLE(APCLVAL))?1N:"NUMBER",1:"LETTER")
 S APCLTBLE($O(^ICD0("BA",APCL("HI"))))=APCLTBLE(APCLVAL)
 S APCLTBLE(APCLVAL)=APCL("NEWHI")
 S APCLDONE=1
 Q
 ;
DEL1 ;;
DEL13 ;;
 Q
 ;
GETCASE ; SUBROUTINE TO DETERMINE APCLCASE # FROM INPUT CODE RANGE
 S APCL("TLOW")=APCLVAL,APCL("THI")=APCLTBLE(APCLVAL)
 D CASEA:APCL("TLOW")]APCL("LOW"),CASEB:APCL("LOW")=APCL("TLOW"),CASEC:APCL("LOW")]APCL("TLOW")
 K APCL("TLOW"),APCL("THI")
 Q
 ;
CASEA ;
 I APCL("HI")]APCL("TLOW") S APCLCASE=$S(APCL("THI")]APCL("HI"):3,APCL("HI")=APCL("THI"):4,1:5)
 E  S APCLCASE=$S(APCL("TLOW")]APCL("HI"):1,1:2)
 Q
 ;
CASEB ;
 S APCLCASE=$S(APCL("THI")]APCL("HI"):6,APCL("HI")=APCL("THI"):7,1:8)
 Q
 ;
CASEC ;
 I APCL("THI")]APCL("LOW") S APCLCASE=$S(APCL("THI")]APCL("HI"):9,APCL("HI")=APCL("THI"):10,1:11)
 E  S APCLCASE=$S(APCL("LOW")=APCL("THI"):12,1:13)
 Q
 ;
NUMBER ;
 S APCL("CODE")=APCL("LOW")-5 F  Q:APCL("LOW")]$O(^ICD0("BA",APCL("CODE")_" "))  S APCL("CODE")=APCL("CODE")-5
 S APCL("CODE")=$O(^ICD0("BA",APCL("CODE")_" ")) F  S APCL("NEWHI")=APCL("CODE"),APCL("CODE")=$O(^ICD0("BA",APCL("CODE"))) Q:APCL("CODE")=APCL("LOW")
 Q
 ;
LETTER ;
 S APCL("LET")=$E(APCL("LOW"))_" " F  S APCL("NEWHI")=$S($L(APCL("LET"))>2:APCL("LET"),1:APCL("LOW")),APCL("LET")=$O(^ICD0("BA",APCL("LET"))) Q:APCL("LET")=APCL("LOW")
 Q
EOJ ;
 K APCLCASE,APCLDONE,APCLNEXT,APCLONE,APCLVAL
 Q
 ;