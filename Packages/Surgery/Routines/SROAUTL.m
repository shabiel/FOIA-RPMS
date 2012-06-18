SROAUTL ;BIR/ADM - Risk Assessment Utility ; [ 08/04/00  10:37 AM ]
 ;;3.0; Surgery ;**38,46,47,63,81,88,95,112**;24 Jun 93
 N SRCMOD,SRCOMMA,X K SRHDR S DFN=$P(^SRF(SRTN,0),"^") D DEM^VADPT S SRHDR=VADM(1)_" ("_VA("PID")_")        Case #"_SRTN,Y=$E($P(^SRF(SRTN,0),"^",9),1,7) X ^DD("DD") S SRSDATE=Y
 S X=^SRF(SRTN,"OP"),SROPER=$P(X,"^"),Y=$P(X,"^",2),SRCPT=$S(Y:$P($$CPT^ICPTCOD(Y),"^",2),1:"CPT MISSING") I SRCPT,$O(^SRF(SRTN,"OPMOD",0)) D
 .S (SRCOMMA,SRI)=0,SRCMOD="",SRCPT=SRCPT_"-" F  S SRI=$O(^SRF(SRTN,"OPMOD",SRI)) Q:'SRI  D
 ..S SRM=$P(^SRF(SRTN,"OPMOD",SRI,0),"^"),SRCMOD=$P($$MOD^ICPTMOD(SRM,"I"),"^",2)
 ..S SRCPT=SRCPT_$S(SRCOMMA:",",1:"")_SRCMOD,SRCOMMA=1
 S SRCPT="("_SRCPT_")",SROPER=SROPER_" "_SRCPT D LOOP S SRHDR(1)=SRSDATE_"   "_SRHDR(1)
 Q
LOOP I $L(SROPER)<68 S SRHDR(1)=SROPER Q
 I $L(SROPER)>67 S X=SROPER,K=1 F  D  I $L(X)<68 S SRHDR(K)=X Q
 .F I=0:1:66 S J=67-I,Y=$E(X,J) I Y=" " S SRHDR(K)=$E(X,1,J-1),X=$E(X,J+1,$L(X)) S K=K+1 Q
 Q
HDR ; print screen header
 W @IOF,!,SRHDR W:$D(SRPAGE) ?(79-$L(SRPAGE)),SRPAGE
 S I=0 F  S I=$O(SRHDR(I)) Q:'I  W ! W:I<2 SRHDR(I) W:I>1 ?14,SRHDR(I)
 K SRHDR(.5),SRPAGE W ! F I=1:1:80 W "-"
 W !
 Q
SMOKE() ; called by screen on current smoker field (#202)
 N SRSCR,SRTYPE,SRX S SRSCR="I 0" D  Q SRSCR
 .S SRX=$S($D(SRTN):SRTN,$D(DA):DA,1:"") Q:'SRX
 .S SRTYPE=$P($G(^SRF(SRX,"RA")),"^",2)
 .I SRTYPE="C" S SRSCR="I Y" Q
 .S SRSCR="I 'Y"
 Q
INDX ; set airway index
 S SRY=$S(SRI>4:5,SRI>3:4,SRI>2:3,SRI>0:2,1:1),$P(^SRF(DA,.3),"^",9)=SRY
 K SRI,SRMS,SROP,SRY
 Q
OP ; set logic for AOP cross reference on Oral-Pharyngeal field (901.1)
 N SRI,SRMS,SRY S SRMS=$P(^SRF(DA,.3),"^",12) I SRMS'="" S SRMS=SRMS*.1,SRI=2.5*X-SRMS D INDX
 Q
MS ; set logic for AMS cross reference on Mandibular Space field (901.2)
 N SRI,SRY,SRMS,SROP S SROP=$P(^SRF(DA,.3),"^",11) I SROP'="" S SRMS=X*.1,SRI=2.5*SROP-SRMS D INDX
 Q
K901 ; kill logic for AOP and AMS cross references
 S $P(^SRF(DA,.3),"^",9)=""
 Q
DUP ; duplicate preop information from prior operation within 60 days
 S SR200=$G(^SRF(SRTN,200)) S NOGO="" F I=1,9,13,18,30,37,44 S X=$P(SR200,"^",I) I X'="" S NOGO=1 K SR200 Q
 I NOGO K NOGO Q
 K SRCASE S SR=^SRF(SRTN,0),DFN=$P(SR,"^"),(SRSDATE,X1)=$P(SR,"^",9),X2=-60 D C^%DTC S SRENDT=X,SRCASE=0 F  S SRCASE=$O(^SRF("B",DFN,SRCASE)) Q:'SRCASE  I SRCASE,SRCASE'=SRTN D
 .S SRX=$P(^SRF(SRCASE,0),"^",9) I SRX>SRSDATE!(SRX<SRENDT) Q
 .Q:$P($G(^SRF(SRCASE,"NON")),"^")="Y"!$P($G(^SRF(SRCASE,30)),"^")!$P($G(^SRF(SRCASE,31)),"^",8)!($P($G(^SRF(SRCASE,"CON")),"^")=SRTN)!'$P($G(^SRF(SRCASE,.2)),"^",12)
 .S SRX=9999999-SRX,SRCASE(SRX,SRCASE)=""
 K SRDT S (SRX,Y)=0 F  S SRX=$O(SRCASE(SRX)) Q:'SRX!$D(SRDT)  S SRCASE="" F  S SRCASE=$O(SRCASE(SRX,SRCASE)) Q:'SRCASE  S SR=$G(^SRF(SRCASE,"RA")) I $P(SR,"^",2)="N",$P(SR,"^",6)="Y" D  Q
 .S Y=$P(^SRF(SRCASE,0),"^",9) X ^DD("DD") S SRDT=Y K DIR
 .W !! S DIR("A",1)="This patient had a previous non-cardiac operation on "_SRDT_".",DIR("A",2)="",DIR("A",3)="Case #"_SRCASE_"  "_$P(^SRF(SRCASE,"OP"),"^")
 .S DIR("A",4)="",DIR("A",5)="Do you want to duplicate the preoperative information from the earlier",DIR("A")="assessment in this assessment? "
 .S DIR("B")="YES",DIR(0)="YA" D ^DIR K DIR I $D(DTOUT)!$D(DUOUT) S SRSOUT=1 Q
 .D:Y STUFF
 Q
STUFF ; stuff preop information from previous case
 K DA,DIC,DIQ,DR,SRY S DIC="^SRF(",DA=SRCASE,DIQ="SRY",DIQ(0)="I" D PREHD D EN^DIQ1 K DA,DIC,DIQ,DR
 S SRZ=0 F  S SRZ=$O(SRY(130,SRCASE,SRZ)) Q:'SRZ  S DIE=130,DA=SRTN,DR=SRZ_"////"_SRY(130,SRCASE,SRZ,"I") D ^DIE K DA,DIE,DR
 Q
CHK ; check for missing non-cardiac assessment data items
 K SRX F SRC="PREOP","DEM" K DA,DIC,DIQ,DR,SRY S DIC="^SRF(",DA=SRTN,DIQ="SRY",DIQ(0)="I" D @SRC D EN^DIQ1 D ^SROAUTL1
 F SRC="LAB","REM" K DA,DIC,DIQ,DR,SRY S DIC="^SRF(",DA=SRTN,DIQ="SRY",DIQ(0)="I" D @SRC D EN^DIQ1 D ^SROAUTL2
OTH K DA,DIC,DIQ,DR,SRY,SRZ D TECH^SROPRIN I SRTECH="NOT ENTERED" S SRX("ANESTHESIA TECHNIQUE")="Anesthesia Technique"
 I $O(^SRF(SRTN,13,0)) S SROTH=0 F  S SROTH=$O(^SRF(SRTN,13,SROTH)) Q:'SROTH  I '$P($G(^SRF(SRTN,13,SROTH,2)),"^") S SRX("OTHER PROCEDURE CPT CODE")="Other Procedure CPT Code" Q
 D RELATE^SROAUTL2
OCC D EN^SROCCAT S SRSDATE=$E($P(^SRF(SRTN,0),"^",9),1,7) K ^TMP("SROCC",$J),SRO
 S SRPO=0 F  S SRPO=$O(^SRF(SRTN,10,SRPO)) Q:'SRPO  S ^TMP("SROCC",$J,$P(^SRF(SRTN,10,SRPO,0),"^",2),SRSDATE)=""
 S SRPO=0 F  S SRPO=$O(^SRF(SRTN,16,SRPO)) Q:'SRPO  S SRDATE=$E($P(^SRF(SRTN,16,SRPO,0),"^",7),1,7) D
 .I '$G(SRDATE) S SRDATE="NO DATE"
 .S ^TMP("SROCC",$J,$P(^SRF(SRTN,16,SRPO,0),"^",2),SRDATE)=""
 I '$D(^TMP("SROCC",$J)) D OCCEND Q
 S SRPO=0 F  S SRPO=$O(^TMP("SROCC",$J,SRPO)) Q:'SRPO  S SRDATE="" F  S SRDATE=$O(^TMP("SROCC",$J,SRPO,SRDATE)) Q:SRDATE  S SRX("POSTOP OCCURRENCE DATE"_SRPO)="Date Noted on "_$P(^SRO(136.5,SRPO,0),"^")_" (Postop Occurrence)" Q
OCCEND K ^TMP("SROCC",$J)
 Q
PREOP S DR="346;202;202.1;246;325;238;240;204;203;326;212;396;328;211;332;333;400;334;335;336;401;338;218;339;215;216;217;338.1;338.2;218.1"
 Q
DEM S DR="413;.011;247;418;419;420;421;452;453;454"
 Q
LAB S DR="270;304;224;291;223;290;225;292;228;295;227;294;229;296;230;297;234;301;231;298;233;300;232;299;274;305;405;407;275;306;406;408;277;308;278;309;279;310;280;311;281;312;283;314;455;455.1;456;456.1"
 Q
REM S DR=".03;27;214;.035;1.09;1.13;.22;.23;340;66;"
 Q
PREHD D PREOP S DR=DR_";402;241;244;242;243;210;245"
 Q