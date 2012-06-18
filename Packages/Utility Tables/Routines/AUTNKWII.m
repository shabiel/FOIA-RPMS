AUTNKWII ;IHS/DIRM/TMD/JDM/DFM - INTERFACE FOR INSURER DICTIONARY AND LOOKUP; [ 01/03/2003  10:48 AM ]
 ;;98.1;IHS DICTIONARIES (POINTERS);**9,12**;MAR 04, 1998
 ;IHS/SET/GTH AUT*98.1*12 01/02/2003 - Forward compatibility w FM22.
 G:DIPGM(0)=2 EN2
EN1 ; FIRST ENTRY FROM DIC
 K HITLIMIT
 G:DIC(0)["A" ASK^DIC ;IHS exception approved on 9/18/97
EN2 ; SECOND ENTRY FROM DIC OR FALL-THROUGH IF NO 'ASK' INDICATED
 I X="?BAD"!(X["^") S Y=-1 Q
 ;G:(X?1"?".E)!(X?1"`"1N.N)!(U[X)!(X?1N.N)!(X=" ") RTN^DIC ;IHS exception approved on 9/18/97 ;IHS/SET/GTH AUT*98.1*12 01/02/2003
 I (X?1"?".E)!(X?1"`"1N.N)!(U[X)!(X?1N.N)!(X=" ") KILL DO D DO^DIC1 G RTN^DIC ;IHS exception approved on 9/18/97 ;IHS/SET/GTH AUT*98.1*12 01/02/2003
 S AUTN("AICD VER")="" D  G OLD:'AUTN("AICD VER")
 .Q:'+$O(^AICDKWLC("B","INSURERS",""))
 .F  S AUTN("AICD VER")=$O(^DIC(9.4,"C","AICD",AUTN("AICD VER"))) Q:'AUTN("AICD VER")  I $D(^DIC(9.4,AUTN("AICD VER"),"VERSION")),+^("VERSION")>3.4 S AUTN("AICD VER")=+^("VERSION") Q
 K AUTN("AICD VER")
 D INS^AUTNKWLD
 ; I Y>0 S ^DISV(DUZ,DIC)=+Y Q  ; IHS/ASDST/GTH AUT*98.1*9 01/07/2002
 I Y>0 S ^DISV(DUZ,DIC)=+Y S:DIC(0)["Z" Y(0)=^AUTNINS(+Y,0),Y(0,0)=$P(^(0),U) Q  ; IHS/ASDST/GTH AUT*98.1*9 01/07/2002
 Q:$G(DTOUT)
 I $E(X)="^" S DUOUT=1 Q
 S AUTN("DIC0")=DIC(0)
 S DIC(0)=$S(DIC(0)["L":"EIL",1:"EI")
 W !!,"Since the KEYWORD LOOKUP failed lets try a NON-KEYWORD LOOKUP...",!!?5,X
 ;D RTN^DIC ;IHS exception approved on 9/18/97 ;IHS/SET/GTH AUT*98.1*12 01/02/2003
 KILL DO D DO^DIC1 D RTN^DIC ;IHS exception approved on 9/18/97 ;IHS/SET/GTH AUT*98.1*12 01/02/2003
 S DIC(0)=AUTN("DIC0") K AUTN("DIC0")
 Q
 ;
OLD K AUTN("AICD VER")
 ;G RTN^DIC ;IHS exception approved on 9/18/97 ;IHS/SET/GTH AUT*98.1*12 01/02/2003
 KILL DO D DO^DIC1 G RTN^DIC ;IHS exception approved on 9/18/97 ;IHS/SET/GTH AUT*98.1*12 01/02/2003