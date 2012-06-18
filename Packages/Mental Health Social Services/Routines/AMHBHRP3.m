AMHBHRP3 ; IHS/CMI/LAB - behavioral health display for GUI ;
 ;;4.0;IHS BEHAVIORAL HEALTH;;MAY 14, 2010
 ;
 ;
 ;
TEST ;
 D ACTCL(.RETVAL,"01/01/2000","12/31/2005","")
 Q
ACTCL(AMHARRAY,AMHBD,AMHED,AMHPROV) ;EP - AMHBH RPT SUICIDE STANDARD
 S JOB=$J,AMHGUI=1,XWBWRAP=1
 S ZTIO="",ZTQUEUED=1
 S AMHARRAY="^XTMP(""AMHRPT"","_$J_")"
 I $G(AMHBD)="" S ^XTMP("AMHRPT",JOB,.5)=2,^XTMP("AMHRPT",JOB,1)="Invalid beginning date passed" D KILL Q
 D DT^DILF("X",AMHBD,.AMHBD)
 I $G(AMHBD)=-1 S ^XTMP("AMHRPT",JOB,.5)=2,^XTMP("AMHRPT",JOB,1)="Invalid beginning date passed" D KILL Q
 I $G(AMHED)="" S ^XTMP("AMHRPT",JOB,.5)=2,^XTMP("AMHRPT",JOB,1)="Invalid ending date passed" D KILL Q
 D DT^DILF("X",AMHED,.AMHED)
 I $G(AMHED)=-1 S ^XTMP("AMHRPT",JOB,.5)=2,^XTMP("AMHRPT",JOB,1)="Invalid ending date passed" D KILL Q
 I $G(AMHPROV),'$D(^VA(200,AMHPROV,0)) S ^XTMP("AMHRPT",JOB,.5)=2,^XTMP("AMHRPT",JOB,1)="Invalid IEN of provider entry passed" D KILL Q
 S AMHPROV=$G(AMHPROV)
 K ^XTMP("AMHRPT",JOB)
 S ^XTMP("AMHRPTRUN",JOB)=""
 D ^XBKSET
 D PROC^AMHRP8
 ;S ZTRTN="TSK^AMHBHRP3",ZTIO="",ZTDESC="AMH ACTIVE CLIENT LIST",ZTSAVE("AMH*")="",ZTSAVE("JOB")="",ZTDTH=$H D ^%ZTLOAD
 ;F I=1:1:120 Q:$G(^XTMP("AMHRPTRUN",$J))="DONE"  H 1
 ;D KILL
 ;Q
 ;
TSK ;
 D ^XBKSET
 S ^XTMP("AMHRPTRUN",JOB)="START"
 D GUIR^XBLM("^AMHRP8P","^XTMP(""AMHRPT"",JOB)")
 S ^XTMP("AMHRPT",JOB,.5)=$O(^XTMP("AMHRPT",JOB,""),-1)+1
 S ^XTMP("AMHRPTRUN",JOB)="DONE"
 D KILL
 Q
 ;
KILL ;
 K AMHOA,AMHBT,AMHTOT
 K AMHCTR,AMHGUI,AMHSF,DIC,JOB,X,Y,ZTDESC,ZTDTH,ZTIO,ZTRTN,ZTSAVE
 D XIT^AMHRP8
 Q