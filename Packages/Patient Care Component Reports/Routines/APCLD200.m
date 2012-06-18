APCLD200 ; IHS/CMI/LAB -IHS -GETS DATA FOR DIABETES QA REPORT ;
 ;;2.0;IHS PCC SUITE;;MAY 14, 2009
 ;
 ;
EN ; - ENTRY POINT - from ^APCLASK
 K ^APCLDATA("APCLEPI",$J)
 S ^XTMP("APCLDM20",0)=$$FMADD^XLFDT(DT,14)_"^"_DT_"^DM AUDIT 2000"
 S APCLEPIN=0
 S APCLPD=0 F  S APCLPD=$O(^XTMP("APCLDM20",APCLJOB,APCLBTH,"PATS",APCLPD)) Q:'APCLPD  D
 .I APCLTYPE'="P",APCLTYPE'="S" Q:$$DEMO^APCLUTL(APCLPD,$G(APCLDEMO))
 .I APCLPREP=2 D EPIREC Q
 .D GATHER
 I APCLPREP=2 D WRITEF^APCLD20 Q
 I APCLPREP=3!(APCLPREP=4) D CUML^APCLD205
 Q
S(P,I,V) ;
 S ^XTMP("APCLDM20",APCLJOB,APCLBTH,"AUDIT",P,I)=V
 Q
REC(DFN,APCLRTYP,APCLRBD,APCLRED,APCLED,APCLDMRG) ;EP - called to send back a visit record as
 NEW APCLX,APCLREC
 S APCLREC=""
 S APCLRTYP("IEN")=$O(^APCLRECD("B",APCLRTYP,0))
 I 'APCLRTYP("IEN") Q APCLREC
PROC ;
 S APCLX=0
 F  S APCLX=$O(^APCLRECD(APCLRTYP("IEN"),11,"AC",APCLX)) Q:APCLX'=+APCLX!(APCLREC=-1)  S APCLTTT=$O(^APCLRECD(APCLRTYP("IEN"),11,"AC",APCLX,0))  D
 .S X="" X:$D(^APCLRECD(APCLRTYP("IEN"),11,APCLTTT,11)) ^APCLRECD(APCLRTYP("IEN"),11,APCLTTT,11)
 .S $E(APCLREC,$P(^APCLRECD(APCLRTYP("IEN"),11,APCLTTT,0),U,2))=X ;W !,APCLTTT,?5,$P(^APCLRECD(APCLRTYP("IEN"),11,APCLTTT,0),U),?40,X H 2
 Q APCLREC
EPIREC ;create epi info record in ^APCLDATA("APCLEPI",$J,n)
 S APCLEPIR="",APCLEPIR=$$REC(APCLPD,"DM AUDIT 2000 EPI REC 1",APCLRBD,APCLRED,APCLADAT,APCLDMRG),APCLEPIN=APCLEPIN+1,^APCLDATA("APCLEPI",$J,APCLEPIN)=APCLEPIR
 S APCLEPIR="",APCLEPIR=$$REC(APCLPD,"DM AUDIT 2000 EPI REC 2",APCLRBD,APCLRED,APCLADAT,APCLDMRG),APCLEPIN=APCLEPIN+1,^APCLDATA("APCLEPI",$J,APCLEPIN)=APCLEPIR
 S APCLEPIR="",APCLEPIR=$$REC(APCLPD,"DM AUDIT 2000 EPI REC 3",APCLRBD,APCLRED,APCLADAT,APCLDMRG),APCLEPIN=APCLEPIN+1,^APCLDATA("APCLEPI",$J,APCLEPIN)=APCLEPIR
 Q
GATHER ;gather data for 1 patient
 S APCLER=0
HEADER ; Set node with report header info
 ;set report dates
 S ^XTMP("APCLDM20",APCLJOB,APCLBTH,"AUDIT",APCLPD,1)=$S($G(APCLFISC)]"":APCLFISC,1:APCLRBD_" - "_APCLRED)
 ;set audit date to DT
 S ^XTMP("APCLDM20",APCLJOB,APCLBTH,"AUDIT",APCLPD,2)=$$FMTE^XLFDT(DT)
 ;set area, su, facility code and name
 S ^XTMP("APCLDM20",APCLJOB,APCLBTH,"AUDIT",APCLPD,4)=$P(^DIC(4,DUZ(2),0),U)
 S ^XTMP("APCLDM20",APCLJOB,APCLBTH,"AUDIT",APCLPD,6)=$E($P(^AUTTLOC(DUZ(2),0),U,10),1,2)
 S ^XTMP("APCLDM20",APCLJOB,APCLBTH,"AUDIT",APCLPD,8)=$E($P(^AUTTLOC(DUZ(2),0),U,10),3,4)
 S ^XTMP("APCLDM20",APCLJOB,APCLBTH,"AUDIT",APCLPD,10)=$E($P(^AUTTLOC(DUZ(2),0),U,10),5,6)
 ;# pats in register
 S ^XTMP("APCLDM20",APCLJOB,APCLBTH,"AUDIT",APCLPD,12)=$S(APCLDMRG:$$RSTAT^APCLDM6(APCLDMRG,"A"),1:"")
 ;reviewer
 S ^XTMP("APCLDM20",APCLJOB,APCLBTH,"AUDIT",APCLPD,14)=$P(^VA(200,DUZ,0),U,2)
 S ^XTMP("APCLDM20",APCLJOB,APCLBTH,"AUDIT",APCLPD,15)=$$VAL^XBDIQ1(9000001,APCLPD,.14)
DEMO ;pat demographics
 S ^XTMP("APCLDM20",APCLJOB,APCLBTH,"AUDIT",APCLPD,16)=$$HRN^AUPNPAT(APCLPD,DUZ(2))
 S ^XTMP("APCLDM20",APCLJOB,APCLBTH,"AUDIT",APCLPD,18)=$$DOB^AUPNPAT(APCLPD,"E")
 S ^XTMP("APCLDM20",APCLJOB,APCLBTH,"AUDIT",APCLPD,20)=$$VAL^XBDIQ1(2,APCLPD,.02)
DXDT ;dates of and dm dxs
 S ^XTMP("APCLDM20",APCLJOB,APCLBTH,"AUDIT",APCLPD,22)=$S(APCLDMRG:$$CMSFDX^APCLD207(APCLPD,APCLDMRG,"D"),1:"")
 S ^XTMP("APCLDM20",APCLJOB,APCLBTH,"AUDIT",APCLPD,24)=$S(APCLDMRG:$$CMSFDX^APCLD207(APCLPD,APCLDMRG,"DX"),1:"")
 S ^XTMP("APCLDM20",APCLJOB,APCLBTH,"AUDIT",APCLPD,23)=$$PLDMDOO^APCLD207(APCLPD)
 D S(APCLPD,25,$$PLDMDXS^APCLD207(APCLPD))
 D S(APCLPD,21,$$FRSTDMDX^APCLD207(APCLPD))
 D S(APCLPD,26,$$LASTDMDX^APCLD207(APCLPD,APCLRED))
 D S(APCLPD,27,$$TOBACCO^APCLD206(APCLPD,APCLRED))
 S APCLTYDM="" D TYPEDM,S(APCLPD,29,APCLTYDM)
 D S(APCLPD,28,$$CESS^APCLD201(APCLPD,APCLRBD,APCLRED))
VITAL ;
 D S(APCLPD,30,$$LASTHT^APCLD207(APCLPD,APCLRED))
 D S(APCLPD,32,$$LASTWT^APCLD207(APCLPD,APCLRED))
 ;htn dx
 D S(APCLPD,34,$$HTNDX^APCLD207(APCLPD,APCLRED))
 ;last 3 BPs
 D S(APCLPD,36,$$BPS^APCLD207(APCLPD,APCLRBD,APCLRED))
EXAMS ;
 D S(APCLPD,38,$$DFE^APCLD207(APCLPD,APCLRBD,APCLRED))
 D S(APCLPD,40,$$EYE^APCLD207(APCLPD,APCLRBD,APCLRED))
 D S(APCLPD,42,$$DENTAL^APCLD207(APCLPD,APCLRBD,APCLRED))
 D S(APCLPD,44,$$DIETEDUC^APCLD207(APCLPD,APCLRBD,APCLRED))
 D S(APCLPD,46,$$EXEDUC^APCLD207(APCLPD,APCLRBD,APCLRED))
 D S(APCLPD,48,$$OTHEDUC^APCLD207(APCLPD,APCLRBD,APCLRED))
THERAPY ;
 S APCL6MBD=$$FMADD^XLFDT(APCLADAT,-(6*31)),APCL6MBD=$$FMTE^XLFDT(APCL6MBD)
 D S(APCLPD,52,$$INSULIN^APCLD202(APCLPD,APCL6MBD,APCLRED))
 D S(APCLPD,53,$$SULF^APCLD202(APCLPD,APCL6MBD,APCLRED))
 D S(APCLPD,54,$$MET^APCLD202(APCLPD,APCL6MBD,APCLRED))
 D S(APCLPD,55,$$ACAR^APCLD202(APCLPD,APCL6MBD,APCLRED))
 D S(APCLPD,56,$$TROG^APCLD202(APCLPD,APCL6MBD,APCLRED))
 S Y=0 F X=52:1:56 I ^XTMP("APCLDM20",APCLJOB,APCLBTH,"AUDIT",APCLPD,X)="X" S Y=1
 D S(APCLPD,51,$S(Y:"",1:"X"))
 D S(APCLPD,60,$$ACE^APCLD206(APCLPD,APCL6MBD,APCLRED))
IMM ;
 D S(APCLPD,62,$$ASPIRIN^APCLD206(APCLPD,APCLRBD,APCLRED))
 D S(APCLPD,61,$$LIPID^APCLD206(APCLPD,APCL6MBD,APCLRED))
 D S(APCLPD,64,$$FLU^APCLD206(APCLPD,APCLRBD,APCLRED))
 D S(APCLPD,66,$$PNEU^APCLD206(APCLPD,APCLRED))
 D S(APCLPD,68,$$TD^APCLD206(APCLPD,APCLRED))
PPD ;
 D S(APCLPD,70,$$PPD^APCLD208(APCLPD,APCLRED))
 D S(APCLPD,114,$$LASTNP^APCLD208(APCLPD,APCLRED))
 D S(APCLPD,72,$$TBTX^APCLD202(APCLPD))
 D S(APCLPD,76,$$EKG^APCLD202(APCLPD,APCLRED))
LABS ;
 D S(APCLPD,78,$$HGBA1C^APCLD208(APCLPD,APCLRBD,APCLRED))
 D S(APCLPD,82,$$BS^APCLD208(APCLPD,APCLRBD,APCLRED))
 D S(APCLPD,84,$$CREAT^APCLD208(APCLPD,APCLRBD,APCLRED))
 D S(APCLPD,86,$$CHOL^APCLD208(APCLPD,APCLRBD,APCLRED))
 D S(APCLPD,88,$$LDL^APCLD208(APCLPD,APCLRBD,APCLRED))
 D S(APCLPD,89,$$HDL^APCLD208(APCLPD,APCLRBD,APCLRED))
 D S(APCLPD,90,$$TRIG^APCLD208(APCLPD,APCLRBD,APCLRED))
 D S(APCLPD,92,$$URIN^APCLD208(APCLPD,APCLRBD,APCLRED))
 D S(APCLPD,94,$$PROTEIN^APCLD208(APCLPD,APCLRBD,APCLRED))
 D S(APCLPD,96,$$MICRO^APCLD208(APCLPD,APCLRBD,APCLRED))
 D S(APCLPD,98,$$SELF^APCLD206(APCLPD,APCLRBD,APCLRED))
 D S(APCLPD,100,$$SDM^APCLD206(APCLPD,APCLRBD,APCLRED))
 ;D S(APCLPD,102,$$PERI^APCLD206(APCLPD,APCLRBD,APCLRED))
 D S(APCLPD,104,$$AST^APCLD202(APCLPD,APCLRBD,APCLRED))
 D S(APCLPD,106,$$ALT^APCLD202(APCLPD,APCLRBD,APCLRED))
 D S(APCLPD,108,$$PAP^APCLD202(APCLPD,APCLRBD,APCLRED))
 D S(APCLPD,110,$$MAMMOG^APCLD202(APCLPD,APCLRBD,APCLRED))
 D S(APCLPD,112,$$BMI^APCLD208(APCLPD,APCLRBD,APCLRED))
 ;
 Q
TYPEDM ;return type of DM in APCLTYDM
 I ^XTMP("APCLDM20",APCLJOB,APCLBTH,"AUDIT",APCLPD,24)="NIDDM" S APCLTYDM="2  Type 2" Q
 I ^XTMP("APCLDM20",APCLJOB,APCLBTH,"AUDIT",APCLPD,24)="TYPE II" S APCLTYDM="2  Type 2" Q
 I ^XTMP("APCLDM20",APCLJOB,APCLBTH,"AUDIT",APCLPD,24)[2 S APCLTYDM="2  Type 2" Q
 I ^XTMP("APCLDM20",APCLJOB,APCLBTH,"AUDIT",APCLPD,24)="IDDM" S APCLTYDM="1  Type 1" Q
 I ^XTMP("APCLDM20",APCLJOB,APCLBTH,"AUDIT",APCLPD,24)[1 S APCLTYDM="1  Type 1" Q
 S X=^XTMP("APCLDM20",APCLJOB,APCLBTH,"AUDIT",APCLPD,25) ;get problem list dxs
 F I=1:1 S C=$P(X,";",I) Q:C=""!(APCLTYDM]"")  I $E(C,6)=0!($E(C,6)=2) S APCLTYDM="2  Type 2"
 Q:APCLTYDM]""
 F I=1:1 S C=$P(X,";",I) Q:C=""!(APCLTYDM]"")  I $E(C,6)=1!($E(C,6)=3) S APCLTYDM="1  Type 1"
 Q:APCLTYDM]""
 S X=^XTMP("APCLDM20",APCLJOB,APCLBTH,"AUDIT",APCLPD,26) ;get pov list dxs
 I X[2 S APCLTYDM="2  Type 2" Q
 I X[1 S APCLTYDM="1  Type 1" Q
 Q
DATE(D) ;EP
 I $G(D)="" Q ""
 Q $E(D,4,5)_"/"_$E(D,6,7)_"/"_(1700+($E(D,1,3)))