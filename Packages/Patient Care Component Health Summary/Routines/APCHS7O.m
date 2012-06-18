APCHS7O ; IHS/CMI/LAB - PART 7 OF APCHS -- SUMMARY PRODUCTION COMPONENTS ;
 ;;2.0;IHS PCC SUITE;**5**;MAY 14, 2009
 ;NOTE: VERSION OF APCHS7 TO BE USED WITH UNPATCHED 5.0.6 OR EARLIER
 ;
MEDS ; ************** CURRENT MEDICATIONS * 9000010.14 ********
 S APCHSALL=0 G CONT
MEDSALL ; **************** ALL MEDICATIONS * 9000010.14 **********
 S APCHSALL=1
 ;
CONT ; <SETUP>
 ;Q:'$D(^AUPNVMED("AC",APCHSPAT))
 X APCHSCKP Q:$D(APCHSQIT)  I 'APCHSNPG W ! X APCHSBRK
 ; <BUILD>
 K ^TMP($J,"APCHSMTB"),^TMP($J,"APCHSMTP")
 S APCHSIVD=0 F APCHSQ=0:0 S APCHSIVD=$O(^AUPNVMED("AA",APCHSPAT,APCHSIVD)) Q:APCHSIVD=""!(APCHSIVD>APCHSDLM)  S APCHSMX=0 F APCHSQ=0:0 S APCHSMX=$O(^AUPNVMED("AA",APCHSPAT,APCHSIVD,APCHSMX)) Q:APCHSMX=""  D MEDBLD
 ; <DISPLAY>
 S APCHSIVD=0 F APCHSQ=0:0 S APCHSIVD=$O(^TMP($J,"APCHSMTP",APCHSIVD)) Q:'APCHSIVD  D MEDDSP
 ; <CLEANUP>
MEDX K APCHSIVD,APCHSMX,APCHSMFX,APCHSQTY,APCHSIG,APCHSSGY,APCHSEXP,APCHSMTS,APCHSMED,APCHSDTM,APCHSDAT,APCHSDYS,APCHSN,APCHSDC,APCHSVDF,APCHSP
 K APCHSNFL,APCHSNSH,APCHSNAB,APCHSVSC,APCHSITE,APCHSRX,APCHSDRG,APCHSCRN,APCHSREF,APCHSRFL,APCHSALL,APCHSTXT
 K ^TMP($J,"APCHSMTB"),^TMP($J,"APCHSMTP")
 K X1,X2,X,Y
 Q
MEDBLD ;
 ;
 ;BUILD ARRAY OF MEDICATIONS 
 ;APCHSDC=DATE DISCONTINUED,DYS=DAYS PRESCRIBED,SIG=DIRECTIONS
 ;VDF=VISIT FILE DATE
 Q:'$D(^AUPNVMED(APCHSMX,0))
 S APCHSN=^AUPNVMED(APCHSMX,0)
 Q:'$D(^PSDRUG($P(APCHSN,U,1)))
 S APCHSDTM=-APCHSIVD\1+9999999
 S APCHSDC=$P(APCHSN,U,8),APCHSDYS=$P(APCHSN,U,7),APCHSMFX=+APCHSN
 I $D(^TMP($J,"APCHSMTB",APCHSMFX)),^TMP($J,"APCHSMTB",APCHSMFX)="" Q
 S:APCHSDYS="" APCHSDYS=30
 ;SCREENS OUT MEDS NOT CURRENT; APCHSALL FORCES INCLUSION OF ALL MEDS
 I 'APCHSALL S X1=DT,X2=APCHSDTM D ^%DTC Q:X>60&(X>(2*APCHSDYS))
 S ^TMP($J,"APCHSMTB",APCHSMFX)=APCHSDC,^TMP($J,"APCHSMTP",APCHSIVD_"-"_APCHSMFX)=APCHSMX
 Q
MEDDSP ;
 ;
 ;DISPLAY MEDICATION
 ;APCHSRX=RX# in FILE 52,CHRN=CHRONIC FLAG,REF=#REFILLS
 S APCHSMX=^TMP($J,"APCHSMTP",APCHSIVD)
 S APCHSN=^AUPNVMED(APCHSMX,0)
 S APCHSRX=$S($D(^PSRX("APCC",APCHSMX)):$O(^(APCHSMX,0)),1:0)
 S APCHSCRN=$S(+APCHSRX:$D(^PS(55,APCHSPAT,"P","CP",APCHSRX)),1:0)
 S (Y,APCHSDTM)=-APCHSIVD\1+9999999 X APCHSCVD S APCHSDAT=Y
 S APCHSDC=$P(APCHSN,U,8),APCHSDYS=$P(APCHSN,U,7),APCHSQTY=$P(APCHSN,U,6),APCHSIG=$P(APCHSN,U,5),APCHSVDF=$P(APCHSN,U,3),APCHSMFX=+APCHSN
 S:APCHSDYS="" APCHSDYS=30
 S X1=DT,X2=APCHSDTM D ^%DTC ;Q:X>60&(X>(2*APCHSDYS))
 S APCHSEXP=""
 I X>APCHSDYS S X1=APCHSDTM,X2=APCHSDYS D C^%DTC S Y=X X APCHSCVD S APCHSEXP="-- Ran out "_Y
 S APCHSMED=$P(^PSDRUG(APCHSMFX,0),U,1)
 I APCHSDC S Y=APCHSDC X APCHSCVD S APCHSEXP="-- D/C "_Y
 D SIG S APCHSIG=APCHSSGY
 D REF I APCHSREF S APCHSIG=APCHSIG_" "_APCHSREF_$S(APCHSREF=1:" refill",1:" refills")_" left."
 D SITE ;I APCHSITE]"" S APCHSIG=APCHSIG_"  ["_APCHSITE_"]"
 X APCHSCKP Q:$D(APCHSQIT)
 W APCHSDAT,?10,$S(APCHSCRN:"(C)",1:""),?14,APCHSMED," #",APCHSQTY," (",APCHSDYS," days) ",APCHSEXP,!
 I APCHSITE]"" W ?14,"Dispensed at: ",APCHSITE,!
 X APCHSCKP Q:$D(APCHSQIT)
 S APCHSICL=14,APCHSNRQ="",APCHSTXT=APCHSIG D PRTTXT^APCHSUTL K APCHSICL,APCHSNRQ,APCHSP
 Q
 ;
SIG ;
 ;CONSTRUCT THE FULL TEXT FROM THE ENCODED SIG
 S APCHSSGY="" F APCHSP=1:1:$L(APCHSIG," ") S X=$P(APCHSIG," ",APCHSP) I X]"" D
 . S Y=$O(^DIC(51,"B",X,0)) I Y>0 S X=$P(^DIC(51,Y,0),"^",2) I $D(^(9)) S Y=$P(APCHSIG," ",APCHSP-1),Y=$E(Y,$L(Y)) S:Y>1 X=$P(^(9),"^",1)
 . S APCHSSGY=APCHSSGY_X_" "
 Q
 ;
REF ;EP
 ;DETERMINE THE NUMBER OF REFILLS REMAINING
 I 'APCHSRX S APCHSREF=0 Q
 S APCHSRFL=$P(^PSRX(APCHSRX,0),U,9) S APCHSREF=0 F  S APCHSREF=$O(^PSRX(APCHSRX,1,APCHSREF)) Q:'APCHSREF  S APCHSRFL=APCHSRFL-1
 S APCHSREF=APCHSRFL
 Q
 ;
SITE ;
 S APCHSITE=""
 I $D(^AUPNVSIT(APCHSVDF,21))#2 S APCHSITE=$P(^(21),U) Q
 Q:$P(^AUPNVSIT(APCHSVDF,0),U,6)=""
 I $P(^AUPNVSIT(APCHSVDF,0),U,6)'=DUZ(2) S APCHSITE=$E($P(^DIC(4,$P(^AUPNVSIT(APCHSVDF,0),U,6),0),U),1,30)
 Q