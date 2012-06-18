LRPEND ;DALISC/FHS - SET LAB PENDING FILE ; 2/9/97  15:41 ;
 ;;5.2T9;LR;**1018**;Nov 17, 2004
 ;;5.2;LAB SERVICE;**153**;Sep 27, 1994
 Q
 ;PID = SSN / PSITE = Ordering Site # / CSITE = Collecting Site #
 ;PUID = Ordering Site UID / SPEC = Specimen
 ;LRRSITE("SMID") = Shipping Manifest # / SAMP = Colection Sample
 ;STATUS = Processing status / LRSD(REIN)= IEN in ^LRT(67
 ;ODT = Order date/time / CDT = Collection date/time
 ;SDT = Ship date/time / LRNT = Receive date/time
PSET(PID,PSITE,PUID,CSITE,SPEC,SAMP,STATUS,ODT,CDT,SDT,RDT,TST) ;
 Q:'$D(^LRO(69.6,0))#2  S:'$G(LRNT) LRNT=$$NOW^LRAFUNC1
 N DA,DIC,DIE,DINUM,DIR,DR,LRNNODE,LRX,X,Y,DLAYGO
 K DO,DD
 L +^LRO(69.6,0)
 F LRNNODE=+$P(^LRO(69.6,0),U,3):1 Q:'$D(^LRO(69.6,LRNNODE))#2
 L +^LRO(69.6,LRNNODE)
 S (LR696IEN,DINUM,DA)=LRNNODE,DA(1)=69.6
 S X=PNM,DIC="^LRO(69.6,",DIC(0)="LFNM",DLAYGO=69
 S DIC("DR")=".01////"_PNM_";.02////"_SEX_";.03////"_DOB_";.09////"_PID
 S DIC("DR")=DIC("DR")_";1////"_PSITE_";2////"_CSITE_";3////"_PUID_";4////"_SPEC_";18///"_$G(LRRSITE("SMID"))
FILE K DD,DO
 D FILE^DICN S LRX=Y
 L -(^LRO(69.6,0),^LRO(69.6,LRNNODE))
 K DIC,DA,DR,DO,DD
 I LRX<1 Q
 S DR="5////"_SAMP_";6////"_STATUS_";7////"_+$G(LRSD("RIEN"))
 S DR(1,69.6,1)="10////"_ODT_";11////"_CDT_";12////"_$P(SDT,U)_";13////"_LRNT
 S DA=+LRX,DIE="^LRO(69.6,",DIC(0)="LNM"
 D ^DIE
 Q
TST ;
 K DR,DA,DIC,DO
 S PNM="STALLING,FRANK",SEX="M",DOB=2440120,LRDPTDFN=7
 S LRDPF=67,LRRIEN=10
 S LRUID=170_DT,I=100 F  S I=I+1 I '$D(LRO(68,"C",LRUID_I)) S LRUID=LRUID_I Q
 S SSN(2)=111223333,LRRSITE=41,LRSPEC=72
 S LRSD("RIEN")=10
 S LRSAMP=4,(LRODT,LRCDT,LRODT)=DT,LRNT=$$NOW^LRAFUNC1
 S STATUS=131
 S LROT(4,72,11)=181,LROT(4,72,11,2)=71
 S LROT(4,72,"SN")=3
 ;(PID,PSITE,PUID,SPEC,SAMP,STATUS,ODT,CDT,SDT,RDT,.TST)
 D PSET(SSN(2),+LRRSITE,LRUID,+LRRSITE,LRSPEC,LRSAMP,STATUS,LRODT,$P(LRCDT,U),LRCDT,LRNT,.LROT)
 Q