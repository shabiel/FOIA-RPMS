ACHSPCC4 ; IHS/ITSC/PMF - CHS AREA SPLITOUT (4/5)(EOJ) ; [ 12/06/2002  10:36 AM ]
 ;;3.1;CONTRACT HEALTH MGMT SYSTEM;**5**;JUN 11,2001
 ;IHS/SET/GTH ACHS*3.1*5 12/06/2002 - Remove direct ref to non-package global.
END ;EP
 I $D(ACHSJFLG)!(ACHSFLG) G END1
 S:$D(^ACHSPCC("COUNT")) ^ACHSZOCT=$G(^ACHSPCC("COUNT"))
 K ^ACHSPCC("COUNT")
BKASK ;
 U IO(0)
 G END1:'$$DIR^XBDIR("Y","Do you want to backup CHS files for THIS Export to TAPE","N","","","",2)
 I $D(DTOUT)!$D(DUOUT) G END1
COPYZ ;
 K ACHSJFLG
 S ACHSRTCD=999,ACHSDTJL=$E(DT,2,3)_$$JDT^ACHS(DT,1),ACHSZDIR="/usr/spool/chsdata/",ACHSZFN="chs????."_ACHSDTJL,ACHSDTYP="C",ACHSEXFN="CHS TX FILES"
 D TARBKUP^ACHSARCH
 I ACHSRTCD=0 G END1
 U IO(0)
 I '$$DIR^XBDIR("Y","Do you want to try BACKUP files to "_ACHSDNAM_" AGAIN?","Y","","","",2) S ACHSJFLG=1 U IO(0) W *7,!!,"WARNING  ****** -- TX FILES HAVE NOT BEEN SAVED TO TAPE" G END
 U IO(0)
 W !!,*7,"Make sure an appropriate TAPE (Write Enabled) is in the ",ACHSDNAM," DRIVE",!
 S Y=$$DIR^XBDIR("E")
 G END1:Y=0,COPYZ:Y=1
END1 ;
 G END3:$D(ACHSJFLG)!$D(ACHSFLG),END3:'$D(ACHSDHRN)
END2 ;
 ;I $D(^AFSHPARM(DUZ(2),0)),$P(^(0),U,5)["Y",ACHSZFN["chsdh",$P($G(^ACHSAOP(DUZ(2),2)),U,12)="Y" D;IHS/SET/GTH ACHS*3.1*5 12/06/2002
 I $$GET1^DIQ(9002322.3,DUZ(2),1.03)["Y",ACHSZFN["chsdh",$P($G(^ACHSAOP(DUZ(2),2)),U,12)="Y" D  ;IHS/SET/GTH ACHS*3.1*5 12/06/2002
 . S %="TX"
 . Q:'$L($T(@%^AFSLODF))
 . U IO(0)
 . W !,"Begin Posting to 1166 Open Document file..."
 . S AFSXPFN=ACHSZFN
 . D TX^AFSLODF ; Post 1166 open document file
 . K AFSXPFN
 . U IO(0)
 . W !,"End Posting to 1166 Open Document file..."
 .Q
 S ^ACHSPCC("ODF-POST")=$$HTFM^XLFDT($H)
END3 ;
 D ^%ZISC
END5 ; Kill vars, do *PCC5, quit.
 K ACHSAREA,ACHSAPN,ACHSPRN,ACHSPSWD,ACHSUID,AUOK,ACHSCT1,ACHSCT2,ACHSPFX,ACHSDESC,DX,DY,ACHSEFDT,ACHSFCT,ACHSGLBL,ACHSHASH
 K J,L,ACHSMED,N,R,ACHSREF,ACHSRR,ACHSSFX1,ACHSSUF,X1,ACHSXY
 K DIR,ACHSFIRN,ACHSQUIT,X,Y,DIC
 I $D(ACHSGCTR) D:ACHSGCTR=6 RTRN^ACHS,^ACHSPCC5 K ACHSGCTR
 K ACHSIO
 Q
 ;
JOBABEND ;EP
 S ACHSFLG=1
 W !!?10,"ABNORMAL END OF AO CHS SPLIT-OUT / EXPORT",!
ENTRETRN ;EP
 W !
 I $$DIR^XBDIR("E","ENTER <RETURN> TO CONTINUE")
 G END
 ;
ERROR ; ENTRY POINT.
 U IO(0)
 W !,"AN ERROR HAS OCCURRED == PLEASE DO AGAIN"
 D ^%ZISC
 G END
 ;
EXIT1 ;EP
 W !!?10,"JOB TERMINATED BY OPERATOR"
 G END
 ;
PCCHJCL ;EP - Generate Head JCL for Parklawn Computer Center.
 S ACHSX="",X=ACHSX_"//"_ACHSUID_ACHSAPN_"DHR JOB (OFM,"_ACHSUID_ACHSAPN_",1,0),'"_ACHSAREA_"',CLASS=E"
 D PADWRITE^ACHSPCC3
 S X=ACHSX_"/*PASS   "_ACHSPSWD
 D PADWRITE^ACHSPCC3
 S X=ACHSX_"/*ROUTE  PRINT RMT"_ACHSPRN
 D PADWRITE^ACHSPCC3
 S X=ACHSX_"//ESYLIB JCLLIB ORDER=(OFM.PROCLIB)" ;UPDATE PCC JCL CARD
 D PADWRITE^ACHSPCC3
 S X=ACHSX_"//S1 EXEC HASRADAP,AP="_ACHSAPN
 D PADWRITE^ACHSPCC3
 S X=ACHSX_"//HASRAD10.DHRIN DD *"
 D PADWRITE^ACHSPCC3
 S X="1BATCH"_$E(DT,4,7)_$E(DT,2,3)_"Z3"_$J("",25)_ACHSPFX
 D PADWRITE^ACHSPCC3
 S X="",$P(X,"9",21)="",X=$J("",60)_X
 D PADWRITE^ACHSPCC3
 Q
 ;
PCCTJCL ;EP - Generate Tail JCL for Parklawn Computer Center.
 S ACHSX="",X="4BATCH"_$E(DT,4,7)_$E(DT,2,3)_"Z3"_ACHSCT2_$J("",21)_ACHSPFX_$J("",9)_ACHSHASH
 D PADWRITE^ACHSPCC3
 S X="",$P(X,"9",21)="",X=$J("",60)_X
 D PADWRITE^ACHSPCC3
 Q:ACHSGCTR=2
 S X=ACHSX_"/*"
 D PADWRITE^ACHSPCC3
 S X=ACHSX_"//"
 D PADWRITE^ACHSPCC3
 ;I $$AOP^ACHS(2,8)="Y" S X="/*" D PADWRITE^ACHSPCC3
 Q
 ;
FIHJCL ;EP - Generate Head JCL for Fiscal Intermediary.
TEST1 ; S X="//IHS003 JOB (1103,SBSP),'PRODUCTION',CLASS=Q,MSGCLASS=H" D PADWRITE^ACHSPCC3
TEST2 ; S X="//STEP01 EXEC IHS003,AREA=RMT"_$E(1000+ACHSFIRN,2,4) D PADWRITE^ACHSPCC3
TEST3 ; S X="//STEP010.SYSUT1 DD *" D PADWRITE^ACHSPCC3
PROD1 S X="//IHS001 JOB (1103,SBSP),'PRODUCTION',CLASS=Q,MSGCLASS=H" D PADWRITE^ACHSPCC3
PROD2 S X="//STEP01 EXEC IHS001,AREA=RMT"_$E(1000+ACHSFIRN,2,4) D PADWRITE^ACHSPCC3
PROD3 S X="//STEP010.IHSODOC DD *" D PADWRITE^ACHSPCC3
 ;  REMOVE COMMENTS FROM PROD1-PROD3 AND SUBSTITUTE FOR TEST1-TEST3
 ;  THIS ENABLES BC/BS OF NM TO AUTOMATICALLY PROCESS YOUR DATA
 S X="1BATCH"_$E(DT,4,7)_$E(DT,2,3)_"Z3"_$J("",25)_ACHSPFX
 D PADWRITE^ACHSPCC3
 Q
 ;
FITJCL ;EP - Generate Tail JCL for Fiscal Intemediary.
 S X="/*"
 D PADWRITE^ACHSPCC3
 Q
 ;
DPSHJCL ;EP - Generate Head JCL for Data center.
 S X="* $$ JOB JNM=TRANTAPE,CLASS=A,DISP=H,PRI=1,USER='DTR,"_$P(^AUTTAREA($P(^AUTTLOC(DUZ(2),0),U,4),0),U,2)_",P,OPR'"
 D PADWRITE^ACHSPCC3
 S X="* $$ LST LST=X'01B',REMOTE="_$P(^AUTTSITE(1,0),U,3)_",JSEP=0"
 D PADWRITE^ACHSPCC3
 S X="* $$ SLI S.TRANTAPE"
 D PADWRITE^ACHSPCC3
 S X="* $$ DATA NCRDATA"
 D PADWRITE^ACHSPCC3
 Q
 ;
DPSTJCL ;EP - Generate Tail JCL for Data center.
 F X="/*","/&","* $$ EOJ" D PADWRITE^ACHSPCC3
 Q
 ;