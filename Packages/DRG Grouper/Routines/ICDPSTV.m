ICDPSTV ;NEISC/GRR/EG - POSTINIT FOR DRG GROUPER ; APR 5 1991 [ 12/31/91  2:08 PM ]
 ;;8.0
 S U="^" W !,"Adding 2 new MDC's and moving DRG470" D MDCA
 W !,"Adding 13 new DRG's and repointing UNGROUPABLE RECORDS to MDC 99" D DRGA^ICDPSTV1
 I '$D(^ICDYZ(80.9)) G NOGO
 ;W !,"Beginning Postinit, this shouldn't take longer than 15 minutes",!
 W !,"New Mumps logic to calculate DRG's now being moved to the DRG file!"
 F I=0:0 S I=$O(^ICDYZ(80.9,I)) Q:I'>0  D RPT D:'$D(^ICD(I,0)) SETUP K ^ICD(I,1) S ^ICD(I,1,0)="^80.21A^1^1",^ICD(I,1,1,0)=^ICDYZ(80.9,I,1,1,0),^ICD(I,1,"B",$E(^(0),1,30),1)="" I $D(^ICDYZ(80.9,I,"MC")) S ^ICD(I,"MC")=^ICDYZ(80.9,I,"MC")
 S ^ICD(0)="DRG^80.2^490^490",U="^" D DT^DICRW S DIU=80.9,DIU(0)="D" D EN^DIU2
 W !!,"TEMPORARY DRG FILE (80.9) DELETED!"
 S DIK="^ICM(" D IXALL^DIK K DIK
 ;
 ;
 ;W !,"Post-initialization completed",!           ;IHS/ANMC/MWR 12/30/91
 ;K DIU Q                                         ;IHS/ANMC/MWR 12/30/91
 K DIU                                            ;IHS/ANMC/MWR 12/30/91
 D ^ICDZCVT                                       ;IHS/ANMC/MWR 12/30/91
 W !!,"Initialization of New ICD files and "      ;IHS/ANMC/MWR 12/30/91
 W "Grouper v.8 completed.",!                     ;IHS/ANMC/MWR 12/30/91
 Q                                                ;IHS/ANMC/MWR 12/30/91
 ;
 ;
NOGO W !,"Cannot do Postinit because the Temporary DRG File (80.9) was not initialized",!,"during the ICD INIT's. Please redo ICD Init's" Q
SETUP S ^ICD("B","DRG"_I,I)="",$P(^ICD(I,0),"^",1)="DRG"_I D RPT
 Q
RPT ;MDC pointer
 S:$D(^ICD(I,0)) $P(^ICD(I,0),"^",5)=$P(^ICDYZ(80.9,I,0),"^",5)
 Q
MDCA S DA=3,DIE="^ICM(",DR=".01///"_"EAR, NOSE, MOUTH & THROAT" D ^DIE K DA,DIE,DR S DA=23 F I=1:1 S DA=$O(^ICM(DA)) Q:DA=""  K ^ICM(DA)
 F I=1:1 S X=$T(ADD1+I) S ICDMDC=$P(X,";;",2) Q:ICDMDC=""  X ICDMDC
 S ^ICM(0)="MAJOR DIAGNOSTIC CATEGORY^80.3^99^26" K ICDMDC,X
 Q
ADD1 ;add new mdc's
 ;;S ^ICM(24,0)="MULTIPLE SIGNIFICANT TRAUMA"
 ;;S ^ICM(24,1,0)="^80.31A^4^4"
 ;;S ^ICM(24,1,1,0)="CRANIOTOMY^1^484"
 ;;S ^ICM(24,1,2,0)="LIMB REATTACHMENT, HIP & FEMUR^1^485"
 ;;S ^ICM(24,1,3,0)="OTHER OR PROCEDURE FOR TRAUMA^1^486"
 ;;S ^ICM(24,1,4,0)="OTHER DX FOR MULTIPLE TRAUMA^^487"
 ;;S ^ICM(24,1,"B","CRANIOTOMY",1)=""
 ;;S ^ICM(24,1,"B","LIMB REATTACHMENT, HIP & FEMUR",2)=""
 ;;S ^ICM(24,1,"B","OTHER DX FOR MULTIPLE TRAUMA",4)=""
 ;;S ^ICM(24,1,"B","OTHER OR PROCEDURE FOR TRAUMA",3)=""
 ;;S ^ICM(25,0)="HIV INFECTIONS"
 ;;S ^ICM(25,1,0)="^80.31A^2^2"
 ;;S ^ICM(25,1,1,0)="EXTENSIVE OR PROCEDURE^1^488"
 ;;S ^ICM(25,1,2,0)="HIV MAJOR RELATED CONDITION^^489^490"
 ;;S ^ICM(25,1,"B","EXTENSIVE OR PROCEDURE",1)=""
 ;;S ^ICM(25,1,"B","HIV MAJOR RELATED CONDITION",2)=""
 ;;S ^ICM(99,0)="UNGROUPABLE RECORDS"
 ;;S ^ICM(99,1,0)="^80.31A^9^9"
 ;;S ^ICM(99,1,1,0)="OR PROCEDURE UNRELATED TO A MDC^1^468"
 ;;S ^ICM(99,1,2,0)="VALID DIAGNOSIS,NOT A PRINCIPAL DX^^469"
 ;;S ^ICM(99,1,3,0)="INVALID AGE,SEX,DX,DISCHARGE STATUS^^470"
 ;;S ^ICM(99,1,4,0)="PROSTATIC OR PROCEDURE UNRELATED TO DXLS^1^476"
 ;;S ^ICM(99,1,5,0)="NON-EXTENSIVE OR PROCEDURE UNRELATED TO DXLS^1^477"
 ;;S ^ICM(99,1,6,0)="LIVER TRANSPLANT^1^480"
 ;;S ^ICM(99,1,7,0)="BONE MARROW TRANSPLANT^1^481"
 ;;S ^ICM(99,1,8,0)="TRACHEOSTOMY W MOUTH,LARYNX,PHARYNX DIS^1^482"
 ;;S ^ICM(99,1,9,0)="TRACHEOSTOMY EXCEPT MOUTH,LARYNX,PHARYNX,DIS^1^483"
 ;;S ^ICM(99,1,"B","BONE MARROW TRANSPLANT",7)=""
 ;;S ^ICM(99,1,"B","INVALID AGE,SEX,DX,DISCHARGE STATUS",3)=""
 ;;S ^ICM(99,1,"B","LIVER TRANSPLANT",6)=""
 ;;S ^ICM(99,1,"B","NON-EXTENSIVE OR PROCEDURE UNRELATED TO DXLS",5)=""
 ;;S ^ICM(99,1,"B","OR PROCEDURE UNRELATED TO A MDC",1)=""
 ;;S ^ICM(99,1,"B","PROSTATIC OR PROCEDURE UNRELATED TO DXLS",4)=""
 ;;S ^ICM(99,1,"B","TRACHEOSTOMY EXCEPT MOUTH,LARYNX,PHARYNX,DIS",9)=""
 ;;S ^ICM(99,1,"B","TRACHEOSTOMY W MOUTH,LARYNX,PHARYNX DIS",8)=""
 ;;S ^ICM(99,1,"B","VALID DIAGNOSIS,NOT A PRINCIPAL DX",2)=""
 ;;
