APCHS2E ; IHS/CMI/LAB -- SUMMARY PRODUCTION COMPONENTS ;
 ;;2.0;IHS PCC SUITE;;MAY 14, 2009
 ;
SKIN ; ******************* SKIN TESTS - ALL * 9000010.12 *******
 ; <SETUP>
 Q:'$D(^AUPNVSK("AA",APCHSPAT))
 X APCHSBRK
 ; <DISPLAY>
 S APCHST="" F APCHSQ=0:0 S APCHST=$O(^AUPNVSK("AA",APCHSPAT,APCHST)) Q:APCHST=""  S APCHSTX=$P(^AUTTSK(APCHST,0),U,1),APCHSTL=$L(APCHSTX) X APCHSCKP Q:$D(APCHSQIT)  D SKDSP
 ; <CLEANUP>
 ;now display ST refusals
 S APCHST="SKIN TEST",APCHSFN=9999999.28 D DISPREF^APCHS3C
 K APCHST,APCHSFN
SKINX K APCHST,APCHSTX,APCHSTL,APCHSIVD,APCHSDFN,APCHSRDG,APCHSVDF,APCHSDAT,X,Y
 K APCHSNFL,APCHSNSH,APCHSNAB,APCHSVSC,APCHSITE
 Q
SKDSP W ! X APCHSCKP Q:$D(APCHSQIT)  W APCHSTX S APCHSIVD="" F APCHSQ=0:0 S APCHSIVD=$O(^AUPNVSK("AA",APCHSPAT,APCHST,APCHSIVD)) Q:APCHSIVD=""  D SKDSP1
 Q
SKDSP1 S Y=-APCHSIVD\1+9999999 X APCHSCVD S APCHSDAT=Y
 S APCHSDFN=0 F APCHSQ=0:0 S APCHSDFN=$O(^AUPNVSK("AA",APCHSPAT,APCHST,APCHSIVD,APCHSDFN)) Q:'APCHSDFN  D SKDSP2
 Q
SKDSP2 S Y=-APCHSIVD\1+9999999 X APCHSCVD S APCHSDAT=Y
 Q:'$D(^AUPNVSK(APCHSDFN,0))
 S APCHSVDF=$P(^AUPNVSK(APCHSDFN,0),U,3) D GETSITEV^APCHSUTL S APCHSITE=APCHSNSH
 S APCHSRDG=$P(^AUPNVSK(APCHSDFN,0),U,5)
 I APCHSRDG]"" S APCHSRDG=$J(APCHSRDG,2)_" mm"
 I APCHSRDG="" S APCHSRDG=$P(^AUPNVSK(APCHSDFN,0),U,4) I APCHSRDG]"" S APCHSRDG=" "_$$VAL^XBDIQ1(9000010.12,APCHSDFN,.04)
 I APCHSRDG="" S APCHSRDG="unrep"
 X APCHSCKP Q:$D(APCHSQIT)  W:APCHSNPG APCHSTX W ?15,APCHSDAT,?24,APCHSRDG,?40,APCHSITE,!
 Q
 ;
 ;
SKIN3 ; ******************* SKIN TESTS - LAST 3 OF EACH * 9000010.12 *******
 ; <SETUP>
 Q:'$D(^AUPNVSK("AA",APCHSPAT))
 X APCHSBRK
 ; <DISPLAY>
 S APCHST="" F APCHSQ=0:0 S APCHST=$O(^AUPNVSK("AA",APCHSPAT,APCHST)) Q:APCHST=""  S APCHSTX=$P(^AUTTSK(APCHST,0),U,1),APCHSTL=$L(APCHSTX) X APCHSCKP Q:$D(APCHSQIT)  D SKDSP3
 ; <CLEANUP>
 ;now display ST refusals
 S APCHST="SKIN TEST",APCHSFN=9999999.28 D DISPREF^APCHS3C
 K APCHST,APCHSFN
SKIN3X K APCHST,APCHSTX,APCHSTL,APCHSIVD,APCHSDFN,APCHSRDG,APCHSVDF,APCHSDAT,APCHSCNT,APCHS,X,Y
 K APCHSNFL,APCHSNSH,APCHSNAB,APCHSVSC,APCHSITE
 Q
SKDSP3 ;get skin type
 S APCHSCNT=0
 W ! X APCHSCKP Q:$D(APCHSQIT)  W APCHSTX S APCHSIVD="" F APCHSQ=0:0 S APCHSIVD=$O(^AUPNVSK("AA",APCHSPAT,APCHST,APCHSIVD)) S APCHSCNT=APCHSCNT+1 Q:APCHSIVD=""!(APCHSCNT>3)  D SKDSP13
 Q
SKDSP13 ;get skin test DFN
 S Y=-APCHSIVD\1+9999999 X APCHSCVD S APCHSDAT=Y
 S APCHSDFN=0 F APCHSQ=0:0 S APCHSDFN=$O(^AUPNVSK("AA",APCHSPAT,APCHST,APCHSIVD,APCHSDFN)) Q:'APCHSDFN!(APCHSCNT>3)  D SKDSP23
 Q
SKDSP23 ;compile data & display skin test
 S Y=-APCHSIVD\1+9999999 X APCHSCVD S APCHSDAT=Y
 Q:'$D(^AUPNVSK(APCHSDFN,0))
 S APCHSVDF=$P(^AUPNVSK(APCHSDFN,0),U,3) D GETSITEV^APCHSUTL S APCHSITE=APCHSNSH
 S APCHSRDG=$P(^AUPNVSK(APCHSDFN,0),U,5)
 I APCHSRDG]"" S APCHSRDG=$J(APCHSRDG,2)_" mm"
 I APCHSRDG="" S APCHSRDG=$P(^AUPNVSK(APCHSDFN,0),U,4) I APCHSRDG]"" S APCHSRDG=" "_$$VAL^XBDIQ1(9000010.12,APCHSDFN,.04)
 I APCHSRDG="" S APCHSRDG="unrep"
 X APCHSCKP Q:$D(APCHSQIT)  W:APCHSNPG APCHSTX W ?15,APCHSDAT,?24,APCHSRDG,?40,APCHSITE,!
 Q