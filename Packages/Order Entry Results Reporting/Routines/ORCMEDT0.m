ORCMEDT0 ;SLC/MKB-Dialog Utilities ;21-Apr-2010 22:34;PLS
 ;;3.0;ORDER ENTRY/RESULTS REPORTING;**46,60,190,1005**;Dec 17, 1997
 ; Modified - 12/03/09 - IHS/MSC/MGH - Line SAVE+7 - Fix for disappearing leading '0'.
 ;            04/22/10 - IHS/MSC/PLS - Line SAVE+10 - Fix for empty WP fields
DIALOG(TYPE) ; -- Get Dialog file entry
 N X,Y,Z,D,DIC,DIE,DIK,DA,DR,DLAYGO,ORPKG,ORDLG,ORIT,OROI,I,IDX
 S ORPKG=$O(^DIC(9.4,"C","OR",0)),DIC="^ORD(101.41,",DIC(0)="AEQLZ"
 S DIC("S")="I $P(^(0),U,4)="""_TYPE_"""",DLAYGO=101.41
 S DIC("A")="Select "_$S(TYPE="Q":"QUICK ORDER",TYPE="O":"ORDER SET",TYPE="A":"ACTION",1:"ORDER DIALOG")_" NAME: "
 S DIC("DR")="4///"_TYPE_$S(TYPE="D":";7////"_ORPKG,1:"")
D0 S D="AB" D IX^DIC I Y'>0 S ORDLG="^" G DQ
 S ORDLG=+Y,ORDG=$P(Y(0),U,5) G:'$P(Y,U,3) DQ ; not a new entry
 I $O(^ORD(101.41,"AB",$P(Y,U,2),0))'=+Y W $C(7),!,"Another entry already exists by this name!",! D DEL(+Y) G D0
 I TYPE="D" D  G:ORDLG="^" DQ ;new dialog
 . S DA=ORDLG,DR="5R",DIE=DIC,ORIT=$P(Y,U,2) D ^DIE
 . S ORDG=+$P($G(^ORD(101.41,ORDLG,0)),U,5)
 . I 'ORDG W $C(7),!,"Deleting <"_ORIT_"> ..." S DA=ORDLG,DIK=DIC D ^DIK S ORDLG="^" Q
 . S ORIT=$$OI^ORCMEDT3(+ORDG) S:ORIT="^" ORDLG="^"
 I TYPE="Q" D  G DQ ;new quick order
 . S DIC="^ORD(100.98,",DIC(0)="AEQM",DIC("S")="I ($P(^(0),U,4)&($P(^(0),U)'=""NON-VA MEDICATIONS""))"
 . S DIC("A")="TYPE OF QUICK ORDER: " D ^DIC
 . I Y>0 S ORDG=+Y,$P(^ORD(101.41,ORDLG,0),U,5)=+Y Q
 . W !,$P(^ORD(101.41,ORDLG,0),U)_" quick order dialog DELETED!",!
 . S DA=ORDLG,DIK="^ORD(101.41,",ORDLG="^" D ^DIK
D1 I $$COPY^ORCMEDIT(TYPE) D  ;copy an existing dialog?
 . K DLAYGO,DIC("B") S DIC(0)="AEQZ",DIC("A")="Select "_$S(TYPE="Q":"QUICK ORDER",TYPE="O":"ORDER SET",1:"ORDER DIALOG")_" TO COPY: "
 . D ^DIC Q:Y'>0  W !,"Copying ..."
 . F I=2,6,8,9 S $P(^ORD(101.41,ORDLG,0),U,I)=$P(Y(0),U,I)
 . S:TYPE'="D" $P(^ORD(101.41,ORDLG,0),U,5)=$P(Y(0),U,5) ;skip DG if Dlg
 . S:$L($P(Y(0),U,2)) ^ORD(101.41,"C",$$UP^XLFSTR($P(Y(0),U,2)),ORDLG)="" ;disp text
 . F I=2,3,3.1,4,5,6,7,9,10 I $D(^ORD(101.41,+Y,I)) M ^ORD(101.41,ORDLG,I)=^ORD(101.41,+Y,I)
 . I $P(Y(0),U,7) S DA=ORDLG,DIE=DIC,DR="7////"_$P(Y(0),U,7) D ^DIE
 . K DA S DA(1)=ORDLG,DIK="^ORD(101.41,"_ORDLG_",10,",DIK(1)="2^AD" D ENALL^DIK
D2 I TYPE="D",$G(ORIT) D  ;stuff in default OI
 . S DA=ORDLG,DR="2///"_$P(ORIT,U,2),DIE="^ORD(101.41," D ^DIE
 . S OROI=$$PTR^ORCD("OR GTX ORDERABLE ITEM"),DA=$O(^ORD(101.41,ORDLG,10,"D",OROI,0)) I 'DA D  Q:'DA  ;create OI prompt
 .. S X=+$O(^ORD(101.41,ORDLG,10,"B",0)),X=$S(X=0:1,1:X-.1) ;get Seq#
 .. K DA,DIC S DIC="^ORD(101.41,"_ORDLG_",10,",DIC(0)="L",DA(1)=ORDLG
 .. S DIC("P")=$P(^DD(101.41,10,0),U,2) D ^DIC Q:Y'>0  S DA=+Y
 .. S Z=+$O(^ORD(101.41,ORDLG,10,"ATXT",0)),Z=$S(Z=0:1,1:Z-.1) ;TxtSeq#
 .. S ^ORD(101.41,ORDLG,10,DA,0)=X_U_OROI_"^^Order: ^^1",^(2)=Z
 .. S ^ORD(101.41,"AD",OROI,ORDLG,DA)="",^ORD(101.41,ORDLG,10,"B",X,DA)="",^ORD(101.41,ORDLG,10,"D",OROI,DA)="",^ORD(101.41,ORDLG,10,"ATXT",X,DA)=""
 . S IDX="S."_$P($G(^ORD(100.98,+ORDG,0)),U,3)
 . S $P(^ORD(101.41,ORDLG,10,DA,0),U,8)=1,$P(^(0),U,10)=IDX,^(3)="I 0 ;uneditable",^(7)="S Y="_+ORIT
DQ Q ORDLG
 ;
DEL(DA) ; -- delete bad entry in Order Dialog file
 N DIK S DIK="^ORD(101.41," D:$G(DA) ^DIK
 Q
 ;
SAVE ; -- Save ORDG, responses in ORDIALOG to dialog ORQDLG
 N PROMPT,CNT,ITM,TYPE,INST,VALUE K ^ORD(101.41,ORQDLG,6)
 S (PROMPT,CNT)=0 F  S PROMPT=$O(ORDIALOG(PROMPT)) Q:PROMPT'>0  D
 . S ITM=ORDIALOG(PROMPT),TYPE=$E(ORDIALOG(PROMPT,0))
 . S INST=0 F  S INST=$O(ORDIALOG(PROMPT,INST)) Q:INST'>0  D
 . . S VALUE=$G(ORDIALOG(PROMPT,INST)),CNT=CNT+1
 . . S ^ORD(101.41,ORQDLG,6,CNT,0)=+ITM_U_PROMPT_U_INST
 . . I TYPE="N" D   ;Patch 1005
 . . .I $P(ITM,"^",2)="QTY"&($E(VALUE,1,1)=".") S VALUE="0"_VALUE
 . . S:TYPE'="W" ^ORD(101.41,ORQDLG,6,CNT,1)=VALUE
 . . ;M:TYPE="W" ^ORD(101.41,ORQDLG,6,CNT,2)=@VALUE
 . . I TYPE="W",$L($G(VALUE)) M ^ORD(101.41,ORQDLG,6,CNT,2)=@VALUE
 . . S ^ORD(101.41,ORQDLG,6,"D",PROMPT,CNT)=""
 S ^ORD(101.41,ORQDLG,6,0)="^101.416^"_CNT_U_CNT
 S:$G(ORDG) $P(^ORD(101.41,ORQDLG,0),U,5)=+ORDG
 Q
 ;
ITEM(Z) ; -- Select new item to add
 N X,Y,DIC,ORDDF,ORERR,I
 S DIC=101.41,DIC(0)="AEQM",DIC("A")="ITEM: "
 I $G(Z) S Z=$P($G(^ORD(101.41,+Z,0)),U) S:$L(Z) DIC("B")=Z
 S DIC("S")="I $P(^(0),U,4)'=""P"""
IT1 D ^DIC I Y'>0 S Y=$S($D(DUOUT)!$D(DTOUT):"^",1:"") Q Y
 D RECURSV^ORCMEDT5(+Y,+ORMENU,.ORERR) I $D(ORERR) D  G IT1
 . W $C(7),!!,"An ancestor of this menu may not be added as an item!"
 . W !,ORERR S I=0 F  S I=$O(ORERR(I)) Q:I'>0  W !?18," =>"_ORERR(I)
 Q +Y