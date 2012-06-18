BGOIN005 ; IHS/MSC/DKM/PLS - BGO*1.1*5 ;01-May-2009 14:17;PLS
 ;;1.1;BGO COMPONENTS;**5**;Sep 18, 2007
EC Q
 ; Preinit
PRE Q
 ; Postinit
POST ;EP
 ; Register RPCs
 D REGNMSP^CIAURPC("BGO","CIAV VUECENTRIC")
 ; Set default web search engine
 D EN^XPAR("SYS","BGO DEFAULT WEB SEARCH SITE",,"UpToDate")
 ; Update BGO component versions
 N VER,FDA,PID,IEN,X
 D BMES^XPDUTL("Updating version numbers...")
 F VER=0:1 S X=$P($T(VER+VER),";;",2) Q:'$L(X)  D
 .S PID=$$PRGID^CIAVMCFG($P(X,";"))
 .;MD5 field doesn't existing until EHR v1.1 patch 6
 .S:PID FDA(19930.2,PID_",",2)=$P(X,";",2)  ;,FDA(19930.2,PID_",",7)=$P(X,";",3)
 D:$D(FDA) FILE^DIE(,"FDA")
 Q
VER ;;IHSBGOACTIVITYTIME.IHSBGOACTTIMECTRL;1.1.0.176;FE7FD32222351371179F06CDBAD973DB
 ;;IHSBGOCHIEFCOMPLAINT.BGOCC;1.1.0.302;1D9D92504A52EAC9DD569D40799530FF
 ;;IHSBGOEM.BGOEMCTRL;1.1.0.202;462B1A73F827BDED130A40D3AEB3992E
 ;;IHSBGOEXAMS.BGOEXAMS;1.1.0.336;590E095A93C025FE8814EFAA7BCD249B
 ;;IHSBGOHEALTHFACTORS.BGOHF;1.1.0.270;4B6874B133D26E9B4101F326F73E8BDC
 ;;IHSBGOICDPICKLIST.ICDPICKLIST;1.2.0.69;1BC2645CC1B9371A87EF4BB5428536F1
 ;;IHSBGOIMMUNIZATION.BGOIMM;1.2.0.24;7D0A9E4C5D371EDE992557F5B0509892
 ;;IHSBGOITEMS.BGOITEMS;1.2.0.43;9FB2169385A8F7193DE2426797CBFFEC
 ;;IHSBGOPATIENTED.BGOPATED;1.2.0.8;8F10CE26117927B6169996D44096C044
 ;;IHSBGOPOVHISTORY.BGOPOVHISTORY;1.2.0.6;C3F9DA3EDF92371C45398EDE70B090FF
 ;;IHSBGOPROBLEM.BGOPROBLEM;1.2.0.7;2A548F7451C1C477D00687AC2834855F
 ;;IHSBGOPROCEDURESVIEWER.BGOPROCVIEW;1.2.0.42;A4BBC7579204CB037AD18DD03343CF3A
 ;;IHSBGOREPHISTORY.IHSBGOREPHISTCTRL;1.1.0.423;B665BE367C9E96F9A1024B426DBD6208
 ;;IHSBGOSKINTEST.IHSBGOSK;1.2.0.35;379B115FC00515615E81878935D2A979
 ;;IHSBGOTRIAGE.BGOTRIAGE;1.2.0.1;BFB688374D934E0A40BBC01E368A26BF
 ;;IHSBGOTRIAGESUMMARY.BGOTRIAGESUMMARY;1.1.0.150;EDFDC2B7BD943D5C3BA5814880CFD617
 ;;IHSBGOVCPT.BGOVCPT;1.2.0.27;62DA25D7F17FD4D8F2043249DF6639A3
 ;;IHSBGOVPOV.BGOVPOV;1.2.0.8;1BCF10F61D13967CDA7BF3505D135ADB
 ;;FILE:IHSBGOCONTAINER.OCX;1.2.0.17;715989BA0240E11230DC8AD109CC89B6
 ;;FILE:IHSBGOVCDATE.OCX;1.1.0.60;40C39C0693C63788F32455B13A92D33E
 ;;FILE:VSFLEX8L.OCX;8.0.20061.231;A63B78ED2FAE227F31A68D292404ACFB
 ;;FILE:VB SPLITTER.OCX;1;FC87461D5C23702655A4B963FDFABA22
 ;;