BQIMTREG ;GDHS/HCD/ALA-Register Components ; 11 Feb 2016  3:55 PM
 ;;2.5;ICARE MANAGEMENT SYSTEM;**1**;May 24, 2016;Build 17
 ;
 ;
REG(DATA,FAKE) ;EP
 S CMN=0
 F  S CMN=$O(^ACM(56,CMN)) Q:'CMN  D
 . S NM=$P(^ACM(56,CMN,0),U,1),CODE=$P(^ACM(56,CMN,0),U,2),ORD=$P(^(0),U,3)
 . S IEN=$O(^BQI(90506.5,42,10,"C",NM,""))
 . I IEN'="" D
 .. S DA(1)=42,DA=IEN,IENS=$$IENS^DILF(.DA)
 .. S BQIUPD(90506.51,IENS,.09)="@"
 .. D FILE^DIE("","BQIUPD","ERROR")
 .. S DESC(1)="Case Summary Component of "_NM
 .. D WP^DIE(90506.51,IENS,4,"","DESC")
 . I IEN="" D
 .. S DA(1)=42,X=CODE,DIC="^BQI(90506.5,"_DA(1)_",10,",DIC(0)="L",DLAYGO=90506.51
 .. K DO,DD D FILE^DICN S DA=+Y
 .. S IENS=$$IENS^DILF(.DA)
 .. S BQIUPD(90506.51,IENS,.02)="",BQIUPD(90506.51,IENS,.03)=NM
 .. S BQIUPD(90506.51,IENS,.04)="",BQIUPD(90506.51,IENS,.05)="D"
 .. S BQIUPD(90506.51,IENS,.06)="D",BQIUPD(90506.51,IENS,.08)="A"
 .. S BQIUPD(90506.51,IENS,1)=""
 .. D FILE^DIE("","BQIUPD","ERROR")
 .. S DESC(1)="Case Summary Component of "_NM
 .. D WP^DIE(90506.51,IENS,4,"","DESC")
