PSBIHS5 ;;KF/VAOIT  PSB BCMA BCBU PRINT
 ;;1.0;PSB BCMA CPS FOXK;**1018**;;Build 27
 N ALPBDAYS,ALPBMLOG,ALPBOTYP
 D NOW^%DTC
 S ALPBDAYS=7,ALPBMLOG=3,ALPBOTYP="A"
 S CPSFILE="BCMA_BACKUPS.TXT"
 S CPSDIR=$$DEFDIR^%ZISH()_"BCMAMEDBACK\"
 D OPEN^%ZISH("HFS",CPSDIR,CPSFILE,"W")
 U IO D DQ^ALPBPALL ;PRINT ALL MARS
 D CLOSE^%ZISH("HFS")
STOP ;
 K %,CPSDIR,CPSFILE
 Q