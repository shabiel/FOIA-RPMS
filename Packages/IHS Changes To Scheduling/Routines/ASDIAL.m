ASDIAL ; IHS/ADC/PDW/ENM - IHS CALLS FOR INPT APPTS LIST ; [ 03/25/1999  11:48 AM ]
 ;;5.0;IHS SCHEDULING;;MAR 25, 1999
 ; -- called by SDIAL
 ;
HD ;EP; IHS version of heading
 I SDPG>0!(IOST["C-") W @IOF
 S SDPG=SDPG+1,SD1=1
 W !?29,"INPATIENT APPOINTMENT LIST",?69,"PAGE: ",SDPG
 W ! S SDOS=(77-$L(I))\2 W ?SDOS,"WARD: ",I
 S Y=DT D DTS^SDUTL W ?60,"Printed: ",Y,!
 W !,"APPT DATE/PATIENT/CLINIC",?34,"HRCN/APPT TM"
 W ?52,"LAB@",?62,"XRAY@",?72,"EKG@"
 W !,?15,"OTHER INFORMATION",! F A=1:1:80 W "="
 S SD2=0 Q