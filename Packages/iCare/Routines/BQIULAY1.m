BQIULAY1 ;GDIT/HCS/ALA-Layout continued ; 07 Jul 2017  10:53 AM
 ;;2.6;ICARE MANAGEMENT SYSTEM;;Jul 07, 2017;Build 72
 ;
DEF(TYPE,OWNR) ;EP - Add new default template
 NEW CRN,CARE,TEMPL,DOR,SOR,SDIR,LYIEN,LIST,STVW,STVCD,IENS
 S CRN=$O(^BQI(90506.5,"C",TYPE,"")) I CRN="" Q
 S CARE=$P(^BQI(90506.5,CRN,0),U,1),TEMPL=$P(^BQI(90506.5,CRN,0),U,9)
 I TEMPL="" S TEMPL=CARE_" Default"
 I TYPE="Q" D
 . S DOR=$$DFNC^BQICEVW()_$C(29)_$$CDEF^BQICEVW(),SOR=$$SFNC^BQICEVW(CRN,TYPE),SDIR="A"_$C(29)_"D"_$C(29)_"A"
 I TYPE'="Q" D
 . S DOR=$$DFNC^BQICMVW()_$C(29)_$$CDEF^BQICMVW(),SOR=$$SFNC^BQICMVW(),SDIR="A"
 ;
 D NTMP(TEMPL,.LYIEN)
 ;
 NEW DA,IENS
 S DA(1)=OWNR,DA=LYIEN,IENS=$$IENS^DILF(.DA)
 S BQIUPD(90505.015,IENS,.01)=TEMPL
 S BQIUPD(90505.015,IENS,.02)=TYPE
 S BQIUPD(90505.015,IENS,.05)="Y"
 S BQIUPD(90505.015,IENS,.04)=$$NOW^XLFDT()
 D FILE^DIE("","BQIUPD","ERROR")
 ;
 S SOR=$G(SOR,""),SDIR=$G(SDIR,"")
 S:SOR="" SOR="PN" S:SDIR="" SDIR="A"
 ;
 S DOR=$G(DOR,"")
 I DOR="" D
 . S LIST="",BN=""
 . F  S BN=$O(DOR(BN)) Q:BN=""  S LIST=LIST_DOR(BN)
 . K DOR
 . S DOR=LIST
 . K LIST
 ;
 F DI=1:1:$L(DOR,$C(29)) S STVCD=$P(DOR,$C(29),DI) Q:STVCD=""  D
 . S STVW=STVCD
 . NEW DA,X,DINUM,DIC,DIE,DLAYGO,IENS,Y
 . S DA(2)=OWNR,DA(1)=LYIEN
 . S DIC="^BQICARE("_DA(2)_",15,"_DA(1)_",1,",DIE=DIC
 . S DLAYGO=90505.151,DIC(0)="L",DIC("P")=DLAYGO
 . S X=STVW
 . I '$D(^BQICARE(DA(2),15,DA(1),1,0)) S ^BQICARE(DA(2),15,DA(1),1,0)="^90505.151^^"
 . S DA=$O(^BQICARE(DA(2),15,DA(1),1,"B",X,""))
 . I DA="" D
 .. K DO,DD D FILE^DICN
 .. S DA=+Y
 . S IENS=$$IENS^DILF(.DA)
 . S BQIUPD(90505.151,IENS,.02)=DI
 . D FILE^DIE("","BQIUPD","ERROR")
 . K BQIUPD
 ;
 F SI=1:1:$L(SOR,$C(29)) S STVCD=$P(SOR,$C(29),SI) Q:STVCD=""  D
 . S SRDR=$P(SDIR,$C(29),SI) S:SRDR="" SRDR="A"
 . S STVW=STVCD
 . NEW DA,IENS
 . S DA(2)=OWNR,DA(1)=LYIEN,DA=$O(^BQICARE(OWNR,15,LYIEN,1,"B",STVW,""))
 . S IENS=$$IENS^DILF(.DA)
 . S BQIUPD(90505.151,IENS,.03)=SI
 . S BQIUPD(90505.151,IENS,.04)=SRDR
 . D FILE^DIE("","BQIUPD","ERROR")
 . K BQIUPD
 Q
 ;
NTMP(TEMPL,LYIEN) ;EP
 S LYIEN=$O(^BQICARE(DZZ,15,"B",TEMPL,""))
 I LYIEN="" D
 . NEW DIC,Y,DLAYGO
 . I $G(^BQICARE(DZZ,15,0))="" S ^BQICARE(DZZ,15,0)="^90505.015^^"
 . S DIC(0)="L",DA(1)=DZZ,DLAYGO="90505.015",DIC="^BQICARE("_DA(1)_",15,",X=TEMPL
 . K DD,DO D FILE^DICN
 . S LYIEN=+Y
 Q