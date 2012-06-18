ADEPQA1D ; IHS/HQT/MJL - CODE SCREENS ;  [ 03/24/1999   9:04 AM ]
 ;;6.0;ADE;;APRIL 1999
 ;
CODSCN(ADEDFN) ;EP - Returns 1 if ADEDFN passes code screens in ADEADA(1)
 Q:$P(ADEADA(1),U,2)="" 1 ;No code screens at all
 N ADEK,ADEJ,ADEL,ADEFLG,ADEVFLG,ADECOD,ADEFOL,ADEOP,ADEPAT,ADEDAYS,ADESAM,ADEVDAT
 S ADEPAT=$P(ADENOD,U)
 S ADEVDAT=$P(ADENOD,U,2)
 I $P(ADEADA(1),U,3)]"",'$D(ADEHXC) S ADEHXC=ADEPAT D ^ADEGRL33
 I $P(ADEADA(1),U,3)]"",ADEHXC'=ADEPAT K ADEHXC,ADEHXO S ADEHXC=ADEPAT D ^ADEGRL33
 S ADEFLG=0,ADEVFLG=0
 S ADEDAYS=$P(ADEADA(1),U,5) I ADEDAYS]"" D
 . S X1=ADEVDAT ;FM Date of current entry
 . S X2=ADEDAYS
 . S %DT="" D C^%DTC S ADEDAYS=X K X
 S ADESAM=$P(ADEADA(1),U,6)
 F ADEJ=1:1:$L($P(ADEADA(1),U,2),",") S ADECOD=$P($P(ADEADA(1),U,2),",",ADEJ) D
 . F ADEK=1:1:$L($P(ADEADA(1),U,3),",") S ADEFOL=$P($P(ADEADA(1),U,3),",",ADEK) D
 . . F ADEL=1:1:$L($P(ADEADA(1),U,7),",") S ADEOP=$P($P(ADEADA(1),U,7),",",ADEL) D
 . . . S ADEFLG=$$CODSCN1(ADECOD,ADEFOL,ADEOP,ADEDAYS,ADESAM) S:ADEFLG ADEVFLG=1
 Q ADEVFLG
 K ADEDAYS,ADESAM,ADEVDAT,ADEVFLG ;*NE
 ;
CODSCN1(ADECOD,ADEFOL,ADEOP,ADEDAYS,ADESAM) ;Returns 1 if code assoc w opsite exists
 N ADEFLG,ADEJ,ADENOD,ADEFLG2
 S ADEFLG=0
 I '$D(^ADEPCD(ADEDFN,"ADA","B",ADECOD)) Q 0
 S ADEJ=0
 F  S ADEJ=$O(^ADEPCD(ADEDFN,"ADA","B",ADECOD,ADEJ)) Q:'ADEJ  D
 . S ADENOD=^ADEPCD(ADEDFN,"ADA",ADEJ,0)
 . I $P(ADENOD,U,5)'="" Q
 . I ADEOP]"",$P(ADENOD,U,2)'=ADEOP Q
 . ;At this point, the primary code must exist, so test for followed-by
 . I ADEFOL="" S ADEFLG=1 S ^ADEUTL("ADEPQA",$J,ADEDFN,ADEJ)="" Q
 . ;Find out if this code hits on the followed by
 . S ADEFLG2=$$CODSCN2(ADECOD,ADEFOL,ADESAM,ADEOP,ADEDAYS)
 . ;If it does:
 . ;  and NOT then quit this Do (ADEFLG unchanged)
 . I ADEFLG2,$P(ADEADA(1),U,4) Q
 . ;  and not NOT then set D0,D1 and ADEFLG=1 and quit this Do
 . I ADEFLG2,'$P(ADEADA(1),U,4) S ADEFLG=1,^ADEUTL("ADEPQA",$J,ADEDFN,ADEJ)="" Q
 . ;If it does not:
 . ;  and NOT then set D0,D1 and ADEFLG=1 and quit this Do
 . I 'ADEFLG2,$P(ADEADA(1),U,4) S ADEFLG=1,^ADEUTL("ADEPQA",$J,ADEDFN,ADEJ)="" Q
 . ;  and not NOT then quit this Do (ADEFLG still 0)
 . I 'ADEFLG2,'$P(ADEADA(1),U,4) Q
 ;
 ;I ADEFOL="" Q ADEFLG
 ;I $P(ADEADA(1),U,4) Q:ADEFLG 0 Q 1 ;If the NOT flag applies
 Q ADEFLG
 K ADEFLG2 ;*NE
 ;
CODSCN2(ADECOD,ADEFOL,ADESAM,ADEOP,ADEDAYS) ;
 ;Returns 1 if ADECOD is followed by ADEFOL within ADEDAYS
 ;If ADESAM, then both ADEFOL and ADECOD must apply to the same opsite
 ;If ADEOP is defined, both must apply to it
 ;Assumes ADEHXC and ADEHXO arrays (pt tx history) have been defined
 ;Have to convert ADECOD from DFN to ADA CODE since ADEHXn arrays
 ;ADEVDAT-.0001 Means will hit on codes on same visit.  Need addtl
 ;parameter to know if should or shouldn't hit on same visit
 N ADEOPC,ADEFLG,ADESAME
 S ADESAME=ADEVDAT ;-.0001
 I $P(ADEADA(1),U,8)]"" S ADESAME=ADESAME-.0001
 S ADEFLG=0
 S ADECOD=$P(^AUTTADA(ADECOD,0),U)
 S ADEFOL=$P(^AUTTADA(ADEFOL,0),U)
 I ADEOP="",ADESAM]"" D  Q ADEFLG
 . S ADEOPC=$P(ADENOD,U,2)
 . I ADEOPC="" Q
 . I '$D(ADEHXO(ADEOPC,ADEFOL)) Q
 . I $O(ADEHXO(ADEOPC,ADEFOL,ADESAME))="" Q
 . I $O(ADEHXO(ADEOPC,ADEFOL,ADESAME))<ADEDAYS S ADEFLG=1
 I ADEOP="",ADESAM="" D  Q ADEFLG
 . I '$D(ADEHXC(ADEFOL)) Q
 . I $O(ADEHXC(ADEFOL,ADESAME))="" Q
 . I $O(ADEHXC(ADEFOL,ADESAME))<ADEDAYS S ADEFLG=1
 I ADEOP]"",ADESAM]"" D  Q ADEFLG
 . I '$D(ADEHXO(ADEOP,ADEFOL)) Q
 . I $O(ADEHXO(ADEOP,ADEFOL,ADESAME))="" Q
 . I $O(ADEHXO(ADEOP,ADEFOL,ADESAME))<ADEDAYS S ADEFLG=1
 I ADEOP]"",ADESAM="" D  Q ADEFLG
 . I '$D(ADEHXC(ADEFOL)) Q
 . I $O(ADEHXC(ADEFOL,ADESAME))="" Q
 . I $O(ADEHXC(ADEFOL,ADESAME))<ADEDAYS S ADEFLG=1
 Q ADEFLG
 K ADEFOL ;*NE