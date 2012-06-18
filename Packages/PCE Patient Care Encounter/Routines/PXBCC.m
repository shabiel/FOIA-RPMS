PXBCC ;ISL/JVS - CURSOR CONTROLS-UTILITY ROUTINES ;10/16/96  10:09
 ;;1.0;PCE PATIENT CARE ENCOUNTER;**7,73**;Aug 12, 1996
 ;
 ; Variable List
 ; PXBSAVE= A Second dopy fo the top Margin in a window
 ; PXBCNT=  A Count of how many Items listed in top window
 ;
ZERO ;--ZERO $X & $Y
 N DX,DY
 S DX=0,DY=0 X ^%ZOSF("XY")
 Q
DXDY ;RESET $X $Y
 X ^%ZOSF("XY")
 Q
INHI() ; Switch to highlighted video (IOINHI must be defined by caller)
 S DX=$X#81,DY=$Y#25 W IOINHI X ^%ZOSF("XY")
 Q ""
INLO() ; Switch to lowlighted video (IOINLOW must be defined by caller)
 S DX=$X#81,DY=$Y#25 W IOINLOW X ^%ZOSF("XY")
 Q ""
FIX ;--FIX
 D TERM,FULL0 W IOUOFF,IOG0
 Q
FIX1 ;--FIX
 D TERM,FULL0 W IOUOFF,IOG0
 Q
WINDOW(PXBCNT,DOWN) ;--set up window area
 N I,IOTM,IOBM
 I PXBCNT>10 S IOTM=17
 I PXBCNT<11 S IOTM=PXBCNT+7
 S PXBSAVE=IOTM I '$D(IOSC) D TERM
 S IOBM=(IOSL-1)
 W IOSC W @IOSTBM W IORC ;--Create smaller window
 I '$D(DOWN) F I=1:1:2 W IOCUD ;-- move currsor down twice
 S PXBWIN=""
 Q
WIN17(PXBCNT) ;--set up window area on the 17th line
 N I,IOTM,IOBM
 W IOCUOFF
 S IOTM=17
 S PXBSAVE=IOTM I '$D(IOSC) D TERM
 S IOBM=(IOSL-0)
 W IOSC W @IOSTBM W IORC ;--Create smaller window
 S PXBWIN=""
 W IOCUON
 Q
 ;
WINDOW1(PXBCNT) ;--set up window area
 N I,IOTM,IOBM
 S IOBM=IOSL-1
 W IOSC W @IOSTBM W IORC ;--Create smaller window
 F I=1:1:2 W IOCUD ;-- move currsor down once
 Q
 ;
TERM ;--set up the terminal variables
 N X
 S X="IOSGRO;IOSTBM;IOCUU;IOSC;IORC;IOCUD;IOHOME;IOELALL;IORVON;IORVOFF;IOCUF;IONEL;IOBON;IOBOFF;IOUON;IOUOFF;IOELEOL;IOEDALL;IOEDEOP;IOCUB;IOECH;IOELBOL;IOIND"
 D ENDR^%ZISS,GSET^%ZISS
 S X="IOINLOW;IOINHI;IOINORM;IOCUOFF;IOCUON;IORI;IOIND;IORESET;IOCUOFF;IOCUON;IOSGR0"
 D ENDR^%ZISS
 I IOSTBM="" S IOSTBM=1
 Q
FULL ;--set terminal to full scrolling window
 N IOTM,IOBM,X
 K PXBWIN
 I '$D(IOSTBM) D TERM
 I IOSTBM]"" S IOTM=1,IOBM=(IOSL-(1)) W IOSC W @IOSTBM W IORC
 S X=IOM X ^%ZOSF("RM")
 Q
FULL0 ;--set terminal to full scrolling window
 N IOTM,IOBM,X
 I '$D(IOSTBM) D TERM
 I IOSTBM]"" S IOTM=1,IOBM=IOSL W IOSC W @IOSTBM W IORC
 S X=IOM X ^%ZOSF("RM")
 Q
CLEAR1 ;--clean out all cursor control varibles
 D KILL^%ZISS,GKILL^%ZISS
 Q
UNDON ;--underline on
 I '$D(IOUON) D TERM^PXBCC
 W IOUON
 Q
UNDOFF ;--underline off
 I '$D(IOUON) D TERM^PXBCC
 W IOUOFF
 Q
REVCPT(LINE,PXRVON) ;--Reverse Video a particular CPT CODE,PROVIDER OR POV
 ;
 ;     INPUT:  LINE = Selection from PXBSAM array
 ;             PXRVON = Flag to turn reverse video on/off
 ;                 where: 1 = reverse video on
 ;                        0 = reverse video off   
 ;
 Q:$G(NOREV)=1
 N ENTRY,XLINE,I,IOTM,IOBM,COL,DX,DY
 S ENTRY=$G(PXBSAM(LINE))
 ;Actual line on which CPT code displayed
 S XLINE=(PXBSAM(LINE,"LINE")#10)+4
 I XLINE<5 S XLINE=XLINE+10
 I '$D(IOSC) D TERM
 S COL=4
 W IOSC S IOTM=1,IOBM=IOSL W @IOSTBM W IOHOME D ZERO
 F I=1:1:XLINE W IOCUD
 F I=1:1:COL W IOCUF
 S DY=XLINE,DX=COL D DXDY
 I $G(PXRVON) W IORVON,$P(ENTRY,"^",1),IORVOFF
 I '$G(PXRVON) W IORVOFF,$P(ENTRY,"^",1)
 S IOTM=PXBSAVE,IOBM=IOSL W @IOSTBM W IORC
 Q
REVPRV(LINE) ;--Reverse Video a particular CPT CODE,PROVIDER OR POV
 Q:$G(NOREV)=1  Q:$G(FROM)["CPT"  Q:$G(FROM)["PL"
 N ENTRY,XLINE,I,IOTM,IOBM,COL,DX,DY
 S ENTRY=$G(PXBSAM(LINE)),XLINE=(LINE#10)+4
 I XLINE<5 S XLINE=XLINE+10
 I '$D(IOSC) D TERM
 S COL=4
 W IOSC S IOTM=1,IOBM=IOSL W @IOSTBM W IOHOME D ZERO
 F I=1:1:XLINE W IOCUD
 F I=1:1:COL W IOCUF
 S DY=XLINE,DX=COL D DXDY
 W IORVON,$P(ENTRY,"^",1),IORVOFF
 S IOTM=PXBSAVE,IOBM=IOSL W @IOSTBM W IORC
 Q
REVPOV(LINE) ;--Reverse Video a particular CPT CODE,PROVIDER OR POV
 Q:$G(NOREV)=1
 N ENTRY,XLINE,I,IOTM,IOBM,COL,DX,DY
 S ENTRY=$G(PXBSAM(LINE)),XLINE=(LINE#10)+4
 I XLINE<5 S XLINE=XLINE+10
 I '$D(IOSC) D TERM
 S COL=4
 W IOSC S IOTM=1,IOBM=IOSL W @IOSTBM W IOHOME D ZERO
 F I=1:1:XLINE W IOCUD
 F I=1:1:COL W IOCUF
 S DY=XLINE,DX=COL D DXDY
 W IORVON,$J($P($P(ENTRY,"^",1),".",1),4),".",$P($P(ENTRY,"^",1),".",2),IORVOFF
 S IOTM=PXBSAVE,IOBM=IOSL W @IOSTBM W IORC
 Q
REVSTP(LINE) ;--Reverse Video a particular CPT CODE,PROVIDER OR POV
 Q:$G(NOREV)=1
 N ENTRY,XLINE,I,IOTM,IOBM,COL,DX,DY
 S ENTRY=$G(PXBSAM(LINE)),XLINE=(LINE#10)+4
 I XLINE<5 S XLINE=XLINE+10
 I '$D(IOSC) D TERM
 S COL=4
 W IOSC S IOTM=1,IOBM=IOSL W @IOSTBM W IOHOME D ZERO
 F I=1:1:XLINE W IOCUD
 F I=1:1:COL W IOCUF
 S DY=XLINE,DX=COL D DXDY
 W IORVON,$P(ENTRY,"^",1),IORVOFF
 S IOTM=PXBSAVE,IOBM=IOSL W @IOSTBM W IORC
 Q
 ;
UREV(LINE) ;--Reverse Video a particular CPT CODE,PROVIDER OR POV
 Q
 ;--**OUT OF ORDER
 N ENTRY,XLINE,I,IOTM,IOBM,DX,DY
 S ENTRY=$G(PXBSAM(LINE)),XLINE=LINE+4
 I '$D(IOSC) D TERM
 W IOSC S IOTM=1,IOBM=IOSL W @IOSTBM W IOHOME D ZERO
 F I=1:1:XLINE W IOCUD
 F I=1:1:4 W IOCUF
 S DY=XLINE,DX=COL D DXDY
 W $P(ENTRY,"^",1)
 S IOTM=PXBSAVE,IOBM=IOSL W @IOSTBM W IORC
 Q
 ;
RREV(LINE,COLUMN,ENTRY) ;--Reverse REQUESTED information
 Q:$G(NOREV)=1
 N XLINE,I,IOTM,IOBM,DX,DY
 S XLINE=LINE+1
 I '$D(IOSC) D TERM
 W IOSC S IOTM=1,IOBM=IOSL W @IOSTBM W IOHOME D ZERO
 F I=1:1:XLINE W IOCUD
 F I=1:1:COLUMN W IOCUF
 S DY=XLINE,DX=COLUMN D DXDY
 W IOELEOL,IOINHI,ENTRY,IOINLOW
 S IOTM=PXBSAVE,IOBM=IOSL W @IOSTBM W IORC
 Q
RREVST(LINE,COLUMN,ENTRY) ;--Reverse REQUESTED information
 Q:$G(NOREV)=1
 N XLINE,I,IOTM,IOBM,DX,DY
 S XLINE=LINE+1
 I '$D(IOSC) D TERM
 W IOSC S IOTM=1,IOBM=IOSL W @IOSTBM W IOHOME D ZERO
 F I=1:1:XLINE W IOCUD
 F I=1:1:COLUMN W IOCUF
 S DY=XLINE,DX=COLUMN D DXDY
 W IORVON,ENTRY,IORVOFF
 S IOTM=PXBSAVE,IOBM=IOSL W @IOSTBM W IORC
 Q
RREVH(LINE,COLUMN,ENTRY) ;--Reverse REQUESTED information
 Q:$G(NOREV)=1
 N XLINE,I,IOTM,IOBM,DX,DY
 S XLINE=LINE+1
 I '$D(IOSC) D TERM
 W IOSC S IOTM=1,IOBM=IOSL W @IOSTBM W IOHOME D ZERO
 F I=1:1:XLINE W IOCUD
 F I=1:1:COLUMN W IOCUF
 S DY=XLINE,DX=COLUMN D DXDY
 W IOELEOL,IOINHI,IOUON,ENTRY,IOINLOW,IOUON F I=1:1:5 W " "
 W IOUOFF
 S IOTM=PXBSAVE,IOBM=IOSL W @IOSTBM W IORC
 Q
LOC(LINE,COLUMN) ;--Locate Cursor to specified position
 N PXBOS
 S PXBOS=^%ZOSF("OS")
 I PXBOS'["MSM" N DY,DX S DY=LINE,DX=COLUMN X IOXY,^%ZOSF("XY") Q
 N XLINE,I,IOTM,IOBM,DX,DY
 W IOCUOFF
 I '$D(IOSTBM) D TERM
 S IOTM=1,IOBM=IOSL W @IOSTBM W IOHOME D ZERO
 I $D(LINE) F I=1:1:LINE W IOIND
 F I=1:1:COLUMN W IOCUF
 I $D(LINE) S DY=LINE
 E  S DY=$Y
 S DX=COLUMN D DXDY
 W IOCUON
 Q
 ;
ERASE ;---ERASE THE LIST GOING UPWARDS
 N PXI
 I '$D(IOCUU) D TERM^PXBCC
 D LOC^PXBCC(15,1)
 S PXI=0 F I=1:1:11 W IORI,IOELALL
 Q