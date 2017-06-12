BQIRGDBA ;VNGT/HS/ALA-Diabetes Audit ; 11 Oct 2010  1:07 PM
 ;;2.5;ICARE MANAGEMENT SYSTEM;;May 24, 2016;Build 27
 ;
EN ; Entry Point for all diabetes tagged patients
 S BDMJOB=$J,BDMBTH=$H
 S CYR=$P($G(^BQI(90508,1,"DM")),U,1)
 S CIEN=$O(^BQI(90508,1,21,"B",CYR,"")) I CIEN="" Q
 S PGTHR=$P(^BQI(90508,1,21,CIEN,0),U,2),PGPRT=$P(^(0),U,3),PGRF=$P(^(0),U,4)
 K ^XTMP("BDMDM01",BDMJOB,BDMBTH)
 S BQITGN=$O(^BQI(90506.2,"B","Diabetes",""))
 S RIEN=""
 F  S RIEN=$O(^BQIREG("B",BQITGN,RIEN)) Q:RIEN=""  D
 . S DFN=$P(^BQIREG(RIEN,0),U,2)
 . I '$$ATAG^BQITDUTL(DFN,BQITGN) Q
 . ;S ^XTMP("BDMDM01",BDMJOB,BDMBTH,"PATS",DFN)=""
 . S ^XTMP("BDMDM12",BDMJOB,BDMBTH,"PATS",DFN)=""
 Q
 ;
AUD(DATA,BDMPD) ;EP -- BQI PAT DIABETES AUDIT REPORT
 ;Description
 ;  Generates a Patient's Diabetes Audit Report for a given DFN
 ;
 ;Input
 ;  BDMPD - Patient Internal Entry number (aka DFN)
 ;
 ;Output
 ;  DATA - Name of global in which data is stored(^TMP("BQIRGDBA"))
 ;
 NEW UID,X,BQII,BDMJOB,BDMBTH,BMDRBD,BDMRED,BDMDMRG,BDMADAT,%
 NEW BDMTYPE,BDMBDAT,BDMPREP,IOSL,BDMGUIC,BDMIOSL,BDMLT,BDMOT,%DT
 NEW DTIME,DFN,AMQQTAXN,B,BDM6MBD,BDMARRAY,BDMC,BDMDEP,BDMER,%X,%Y
 NEW BDMPG,BDMQUIT,BDMR,BDMRBD,BDMTYDM,BDMUTT,BDMV,C,D,E,ED,G,M
 NEW HDATE,HSTEXT,I,ICD,J,L,N,T,V,Y,Z,T1,T2,CYR,CIEN,PGTHR,PGPRT,PGRF
 NEW BD,BDMX
 S UID=$S($G(ZTSK):"Z"_ZTSK,1:$J)
 S DATA=$NA(^TMP("BQIRGDBA",UID))
 K @DATA
 ;
 S BQII=0
 ;
 NEW $ESTACK,$ETRAP S $ETRAP="D ERR^BQIRGDBA D UNWIND^%ZTER" ; SAC 2006 2.2.3.3.2
 ;
 S DFN=BDMPD
 S CYR=$P($G(^BQI(90508,1,"DM")),U,1),BDMDMRG=$P($G(^BQI(90508,1,"DM")),U,2)
 S CIEN=$O(^BQI(90508,1,21,"B",CYR,"")) I CIEN="" Q
 S PGTHR=$P(^BQI(90508,1,21,CIEN,0),U,2),PGPRT=$P(^(0),U,3),PGRF=$P(^(0),U,4)
 ;
 D HDR
 ;
 I $$TMPFL^BQIUL1("W",UID,DFN) G DONE
 ;
 S BDMJOB=UID,BDMBTH=$H
 K ^XTMP(PGRF,BDMJOB)
 S BDMRBD=DT,BDMADAT=DT,BDMTYPE="P",BDMRED=$$FMADD^XLFDT(BDMADAT,-365)
 S BDMBDAT=$$FMADD^XLFDT(BDMADAT,-365)
 D @("GATHER^"_PGTHR)
 S BDMPREP=1,IOSL=999,DTIME=1
 U IO D @("^"_PGPRT)
 U IO W $C(9)
 ;
 I $$TMPFL^BQIUL1("C") G DONE
 I $$TMPFL^BQIUL1("R",UID,DFN) G DONE
 ;
 F  U IO R HSTEXT:.1 Q:HSTEXT[$C(9)  D
 . S HSTEXT=$$STRIP^XLFSTR(HSTEXT,"^"),HSTEXT=$$CTRL^BQIUL1(HSTEXT)
 . I HSTEXT="" S HSTEXT=" "
 . S BQII=BQII+1,@DATA@(BQII)=HSTEXT_$C(13)_$C(10)
 S BQII=BQII+1,@DATA@(BQII)=$C(30)
 ;
 I $$TMPFL^BQIUL1("C") G DONE
 I $$TMPFL^BQIUL1("D",UID,DFN) G DONE
 ;
DONE ;
 ;
 S BQII=BQII+1,@DATA@(BQII)=$C(31)
 Q
 ;
HDR ;
 S @DATA@(BQII)="T02048REPORT_TEXT"_$C(30)
 Q
 ;
ERR ;
 D ^%ZTER
 NEW Y,ERRDTM
 S Y=$$NOW^XLFDT() X ^DD("DD") S ERRDTM=Y
 S BMXSEC="Recording that an error occurred at "_ERRDTM
 I $D(BQII),$D(DATA) S BQII=BQII+1,@DATA@(BQII)=$C(31)
 I $$TMPFL^BQIUL1("C")
 Q