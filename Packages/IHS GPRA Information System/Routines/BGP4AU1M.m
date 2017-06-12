BGP4AU1M ; IHS/CMI/LAB - SEND MAIL MESSAGE ;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
DESC ;----- ROUTINE DESCRIPTION
 ;;
 ;;This routine sends email messages.
 ;;$$END 
 N I,X F I=1:1 S X=$P($T(DESC+I),";;",2) Q:X["$$END"  D EN^DDIOL(X)
 Q
 ;
EN(BGPMSG,BGPBEGDT,BGPENDDT,BGPFACS,BGPF,BGPDFILE) ;EP
 ;----- MAIN ENTRY POINT TO SEND MESSAGE
 ;
 ;      INPUT:
 ;      BGPMSG    =  WHICH MESSAGE TO SEND
 ;      BGPBEGDT  =  REPORT PERIOD BEGINNING DATE
 ;      BGPENDDT  =  REPORT PERIOD ENDING DATE
 ;      BGPFACS   =  ARRAY CONTAINING LIST OF SITE FILES
 ;      BGPF      =  ARRAY CONTAINING AGGREGATE FILE LIST
 ;      BGPDFILE  =  DATA DUMP FILE NAME FOR DEEPSEE
 ;
 ;N BGPFILE,BGPOUT,X,Y
 ;
 ;D GET(BGPMSG,BGPBEGDT,BGPENDDT,.BGPFACS,.BGPF,BGPDFILE,.BGPFILE,.BGPOUT)
 ;Q:BGPOUT
 ;
 ;D SENDMAIL(BGPFILE)
 ;
 ;S X="rm "_$P($G(^BGPGP1PM(1,0)),U)_BGPFILE  ;REMOVE FILE
 ;S X=$$JOBWAIT^%HOSTCMD(X)
 ;
 Q
GET(BGPMSG,BGPBEGDT,BGPENDDT,BGPFACS,BGPF,BGPDFILE,BGPFILE,BGPOUT) ;
 ;----- GET THE DATA, PUT INTO A TEXT FILE
 ;
 N %FILE
 ;
 S BGPOUT=0
 ;
 D FILE(BGPBEGDT,.%FILE,.BGPFILE,.BGPOUT)
 Q:BGPOUT
 ;
 U %FILE
 I BGPMSG=1 D MSG1(BGPBEGDT,BGPENDDT,.BGPFACS)
 I BGPMSG=2 D MSG2(BGPBEGDT,BGPENDDT,.BGPF,BGPDFILE)
 D CLOSE^%ZISH("FILE")
 ;
 Q
SENDMAIL(BGPFILE) ;
 ;----- SEND THE EMAIL
 ;
 ;N BGPERR,BGPFROM,BGPOUT,BGPSUB,BGPTO,I,X
 ;
 ;S BGPOUT=0
 ;
 ;S BGPTO=$$TO
 ;Q:BGPTO']""
 ;
 ;S BGPFROM=$P($G(^BGPGP1PM(1,99.1)),U)
 ;I BGPFROM']"" D  Q
 ;. S BGPERR="NO SENDER"
 ;. ;S $ZE="BGPGP1MM FAILURE" D ^%ZTER
 ;
 ;S BGPFILE=$P($G(^BGPGP1PM(1,1)),U)_BGPFILE
 ;S BGPSUB="MONTHLY AUTOMATIC GPRA UPLOAD"
 ;
 ;S X=$ZF(-1,"wsendmail -s"""_BGPSUB_""" -f"_BGPFROM_" -t"_BGPFILE_" "_BGPTO)
 ;
 ;I X D
 ;. S BGPERR="CANNOT SEND EMAIL - wsendmail failure"
 ;. ;S $ZE="BGPGP1MM FAILURE" D ^%ZTER
 Q
TO() ;
 ;----- CREATE MAIL RECIPIENT STRING 
 ; 
 N BGPD1,BGPTO
 ;
 S BGPTO=""
 S BGPD1=0
 F  S BGPD1=$O(^BGPGP1PM(1,99.2,BGPD1)) Q:'BGPD1  D
 . S BGPTO=BGPTO_","_$G(^BGPGP1PM(1,99.2,BGPD1,0))
 I $E(BGPTO)="," S BGPTO=$E(BGPTO,2,999999)
 Q BGPTO
 ;
FILE(BGPBEGDT,%FILE,BGPFILE,BGPOUT) ;
 ;----- CREATE FILE CONTAINING THE DATA
 ;
 N BGPERR,BGPOUT
 ;
 ;I '$G(DUZ) S DUZ=1
 D ^XBKVAR
 S BGPOUT=0
 S BGPERR=""
 S BGPFILE="BGPGP1MM"_BGPBEGDT
 D HFS(.BGPOUT,.%FILE,BGPFILE)
 I BGPOUT D  Q
 . S BGPERR="CANNOT OPEN FILE" ;FOR ERROR TRAP
 . ;S $ZE="BGPGP1MM FAILURE" D ^%ZTER
 Q
HFS(BGPOUT,%FILE,BGPFILE)  ;EP
 ;----- CREATE AND OPEN DATA FILE
 ;
 ;      INPUT:
 ;      FILE    = DATA FILE NAME TO CREATE AND OPEN
 ;
 ;      OUTPUT:
 ;      %FILE   = THE DEVICE NUMBER OF THE FILE
 ;      BGPOUT  = QUIT INDICATOR
 ;
 N I,POP,X,Y,ZISH1,ZISH2,ZISH3,ZISH4
 ;
 S %FILE=""
 S BGPOUT=0
 S ZISH1="FILE"  ;HANDLE
 S ZISH2=$P($G(^BGPGP1PM(1,1)),U)  ;DIRECTORY
 S ZISH3=BGPFILE  ;FILENAME
 S ZISH4="W"  ;WRITE MODE
 D OPEN^%ZISH(ZISH1,ZISH2,ZISH3,ZISH4)
 I POP S BGPOUT=1
 Q:BGPOUT
 S %FILE=IO
 Q
EXDT(X) ;
 ;----- CONVERT INTERNAL FM DATE TO EXTERNAL READABLE DATE
 ;
 N Y
 S Y=""
 I X D
 . S Y=X
 . D DD^%DT
 Q Y
MSG1(BGPBEGDT,BGPENDDT,BGPFACS) ;EP
 ;----- MESSAGE 1, MISSING FILES 
 ;
 N BGPASU,BGPFAC
 ;
 W !,"Monthly GPRA report period date range:  "_$$EXDT(BGPBEGDT)_" to "_$$EXDT(BGPENDDT)
 ;
 W !!,"The site GPRA files could not be uploaded because files are"
 W !,"missing from the following facilities:",!!
 ;
 S BGPASU=0
 F  S BGPASU=$O(BGPFACS(BGPENDDT,BGPASU)) Q:BGPASU=""  D
 . Q:BGPFACS(BGPENDDT,BGPASU)]""
 . S BGPFAC=$O(^BGPGP1PM(1,9,"C",BGPASU,0))
 . Q:'BGPFAC
 . S BGPFAC=$P($G(^BGPGP1PM(1,9,BGPFAC,0)),U)
 . I BGPFAC]"" W !?5,BGPASU,"   ",$$VAL^XBDIQ1(4,BGPFAC,.01)
 ;
 W !!!,"The aggregate excel files cannot be created until all files"
 W !,"are received from all facilities."
 Q
MSG2(BGPBEGDT,BGPENDDT,BGPF,BGPDFILE) ;
 ;----- MESSAGE 2, AGGREGATE EXCEL FILES CREATED
 ;
 N BGP
 ;
 W !,"Monthly GPRA report period date range:  "_$$EXDT(BGPBEGDT)_" to "_$$EXDT(BGPENDDT)
 ;
 W !!,"The following aggregate excel files have been created:",!!
 ;
 S BGP=0
 F  S BGP=$O(BGPF(BGP)) Q:'BGP  D
 . W !?5,BGPF(BGP)
 ;
 W !!,"The following data file for DeepSee has been created:",!!
 W !?5,BGPDFILE
 Q