BGP5PARP ; IHS/CMI/LAB - IHS gpra print ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;
 ;
PRINT ;EP
 K ^TMP($J)
 S BGPIOSL=$S($G(BGPGUI):55,1:IOSL)
 S BGPGPG=0
 S BGPQUIT=""
 D SETEXCEL^BGP5DP
 I BGPROT="D" G DEL
 D AREACP^BGP5DH
 S BGPQUIT="",BGPGPG=0,BGPRPT=0
 D PRINT1^BGP5DP
 Q:BGPQUIT
 Q:BGPROT="P"
DEL ;create delimited output file
 S BGPQUIT="",BGPGPG=0,BGPRPT=0
 D ^%ZISC ;close printer device
 K ^TMP($J)
 D ^BGP5PDL ;create ^tmp of delimited report
 Q
 ;