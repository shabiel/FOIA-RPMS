BGP7POS2 ; IHS/CMI/LAB - NO DESCRIPTION PROVIDED 28 Jan 2005 1:34 PM ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
 ;
PRE ;EP
 ;CHANGE PACKAGE FILE NAME
 S BGPX=0 F  S BGPX=$O(^BGPCTRL(BGPX)) Q:BGPX'=+BGPX  S DA=BGPX,DIK="^BGPCTRL(" D ^DIK
 S BGPX=0 F  S BGPX=$O(^BGPPEIG(BGPX)) Q:BGPX'=+BGPX  S DA=BGPX,DIK="^BGPPEIG(" D ^DIK
 S BGPX=0 F  S BGPX=$O(^BGPELIG(BGPX)) Q:BGPX'=+BGPX  S DA=BGPX,DIK="^BGPELIG(" D ^DIK
 S BGPX=0 F  S BGPX=$O(^BGPELIIG(BGPX)) Q:BGPX'=+BGPX  S DA=BGPX,DIK="^BGPELIIG(" D ^DIK
 S BGPX=0 F  S BGPX=$O(^BGPNPLG(BGPX)) Q:BGPX'=+BGPX  S DA=BGPX,DIK="^BGPNPLG(" D ^DIK
 S BGPX=0 F  S BGPX=$O(^BGPINDGC(BGPX)) Q:BGPX'=+BGPX  S DA=BGPX,DIK="^BGPINDGC(" D ^DIK
 S BGPX=0 F  S BGPX=$O(^BGPINDG(BGPX)) Q:BGPX'=+BGPX  S DA=BGPX,DIK="^BGPINDG(" D ^DIK
 S BGPX=0 F  S BGPX=$O(^BGPTAXG(BGPX)) Q:BGPX'=+BGPX  S DA=BGPX,DIK="^BGPTAXG(" D ^DIK
 S BGPX=0 F  S BGPX=$O(^BGPSNOMG(BGPX)) Q:BGPX'=+BGPX  S DA=BGPX,DIK="^BGPSNOMG(" D ^DIK
 Q