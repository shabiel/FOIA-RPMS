APCHS3 ; IHS/CMI/LAB - PART 3 OF APCHS -- SUMMARY PRODUCTION COMPONENTS ;
 ;;2.0;IHS PCC SUITE;;MAY 14, 2009
 ;
LAB ; ******************** LAB DATA * 9000010.09 *******
 I '$D(^AUPNVLAB("AE",APCHSPAT)) D EKGLAB^APCHS3A G LABX
 X APCHSCKP Q:$D(APCHSQIT)
 X:'APCHSNPG APCHSBRK
 ; <SETUP>
 K ^TMP($J,"APCHSLRT"),^("APCHSLDT"),^("APCHSLD2")
 ; <PROCESS>
 D LBLD,LPRT
 W ! D EKGLAB^APCHS3A
 ; <CLEANUP>
LABX K APCHSLT,APCHSLR,APCHSLTX,APCHSDFN,APCHSNDT,APCHSLRT,APCHSLDT,APCHSLD2,APCHSNA,APCHSIVD,APCHSDTL,APCHSI,APCHSJ,APCHSL,APCHSLL,APCHSDSN,APCHSIDN,APCHSNMX,APCHSLW,APCHSMXL,APCHSLTO,APCHSLTN,APCHSELX,Y
 K ^TMP($J,"APCHSLRT"),^("APCHSLDT"),^("APCHSLD2")
 Q
 ; <BUILD>
LBLD K APCHSLRT,APCHSLDT,APCHSLD2
 S (APCHSNDT,APCHSMXL,APCHSLTN)=0,APCHSELX=$D(^APCHSCTL(APCHSTYP,4,"C"))
 S APCHSIVD="" F APCHSQ=0:0 S APCHSIVD=$O(^AUPNVLAB("AE",APCHSPAT,APCHSIVD)) Q:'APCHSIVD!(APCHSIVD>APCHSDLM)  D LDATE S:$D(^TMP($J,"APCHSLDT",APCHSIVD)) APCHSNDM=APCHSNDM-1 Q:'APCHSNDM
 S APCHSIVD="" F APCHSI=1:1 S APCHSIVD=$O(^TMP($J,"APCHSLDT",APCHSIVD)) Q:APCHSIVD=""  S ^TMP($J,"APCHSLD2",APCHSI)=APCHSIVD
 Q
LDATE S APCHSLT="" F APCHSQ=0:0 S APCHSLT=$O(^AUPNVLAB("AE",APCHSPAT,APCHSIVD,APCHSLT)) Q:'APCHSLT  D
 .S APCHSDFN=0 F  S APCHSDFN=$O(^AUPNVLAB("AE",APCHSPAT,APCHSIVD,APCHSLT,APCHSDFN)) Q:'APCHSDFN  D LSET
 Q
LSET ;
 I APCHSELX Q:'$D(^APCHSCTL(APCHSTYP,4,"C",APCHSLT))
 S APCHSLR=$P(^AUPNVLAB(APCHSDFN,0),U,4) Q:APCHSLR=""  Q:APCHSLR=" "
 I APCHSELX S APCHSLTO=$O(^APCHSCTL(APCHSTYP,4,"C",APCHSLT,"")),APCHSLTO=+^APCHSCTL(APCHSTYP,4,APCHSLTO,0)
 E  S (APCHSLTO,APCHSLTN)=APCHSLT
 S APCHSLTO=10000+APCHSLTO_"-"_APCHSLT
 S Y=$$RDT(APCHSDFN)
 S ^TMP($J,"APCHSLRT",APCHSLTO,APCHSIVD)=APCHSLR_$S(Y]"":" (",1:"")_$$RDT(APCHSDFN)_$S(Y]"":")",1:"") S APCHSLTX=$P(^LAB(60,APCHSLT,0),U,1) S:$L(APCHSLTX)>APCHSMXL APCHSMXL=$L(APCHSLTX)
 S:'$D(^TMP($J,"APCHSLDT",APCHSIVD)) APCHSNDT=APCHSNDT+1 S ^TMP($J,"APCHSLDT",APCHSIVD)=""
 Q
 ; <PRINT>
LPRT S APCHSLW=APCHSMXL+1,APCHSLL=25,APCHSNMX=(80-1-APCHSLW)\APCHSLL
 F APCHSDSN=1:APCHSNMX:APCHSNDT D LPRT2
 Q
LPRT2 ;
 S APCHSDTL="" F APCHSI=1:1:APCHSNMX S APCHSJ=APCHSDSN+APCHSI-1 Q:APCHSJ>APCHSNDT  S Y=-^TMP($J,"APCHSLD2",APCHSJ)\1+9999999 X APCHSCVD S APCHSDTL=APCHSDTL_$J(Y,APCHSLL)
 X APCHSCKP Q:$D(APCHSQIT)  W ! X APCHSCKP Q:$D(APCHSQIT)  W ?APCHSLW,APCHSDTL
 X APCHSCKP Q:$D(APCHSQIT)  W !
 S APCHSLT="" F APCHSQ=0:0 S APCHSLT=$O(^TMP($J,"APCHSLRT",APCHSLT)) Q:APCHSLT=""  S APCHSLTX=$P(^LAB(60,$P(APCHSLT,"-",2),0),U,1) D LPRT3 I APCHSNA X APCHSCKP Q:$D(APCHSQIT)  W:APCHSNPG ?APCHSLW,APCHSDTL,! W APCHSLTX,?APCHSLW,APCHSL,!
 Q
LPRT3 S APCHSNA=0 S APCHSL="" F APCHSIDN=1:1:APCHSNMX S APCHSJ=APCHSDSN+APCHSIDN-1 Q:APCHSJ>APCHSNDT  S APCHSIVD=^TMP($J,"APCHSLD2",APCHSJ) D LADD
 Q
LADD I $D(^TMP($J,"APCHSLRT",APCHSLT,APCHSIVD)) S APCHSNA=APCHSNA+1 S APCHSL=APCHSL_$J(^TMP($J,"APCHSLRT",APCHSLT,APCHSIVD),APCHSLL)
 E  S APCHSL=APCHSL_$J(" ",APCHSLL)
 Q
RDT(R) ;
 I $G(R)="" Q ""
 NEW X
 S X=$P($G(^AUPNVLAB(R,12)),U,12)
 I X="" Q ""
 Q $$DATE^APCHSMU($P(X,"."))_"@"_$P($P($$FMTE^XLFDT(X),"@",2),":",1,2)