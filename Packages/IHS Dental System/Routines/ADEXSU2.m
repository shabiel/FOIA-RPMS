ADEXSU2 ; IHS/HQT/MJL  - DENTAL EXTRACT PART 4 ;  [ 03/24/1999   9:04 AM ]
 ;;6.0;ADE;;APRIL 1999
ERRORS ; ERROR ROUTINES
ERR1 ;EP
 W !," - DAMAGED DATA FILE: MISSING 0TH NODE FOR DENTAL PROCEDURE FILE ENTRY ",ADEA G ERREND
ERR2 ;EP
 W:'$D(ADERR("FAC",ADESITE)) !," - MISSING AREA/SERVICE UNIT/FACILITY CODE IN LOCATION FILE FOR ",$P(^AUTTLOC(ADESITE,0),U) S:'$D(ADERR("FAC",ADESITE)) ADERR("FAC",ADESITE)=1 G ERREND
ERR3 ;EP
 W !," - MISSING OR INVALID LOCATION OF ENCOUNTER IN DENTAL PROCEDURE FILE ENTRY ",ADEA G ERREND
ERR4 ;EP
 W !," - DAMAGED DATA FILE: NO PATIENT (FILE 2) ENTRY FOR DENTAL PROCEDURE ENTRY ",ADEA," (REFERENCING DFN ",ADEDFN,")",! G ERREND
ERR5 ;EP
 W !," - INVALID DATA: MISSING VISIT DATE FOR DENTAL PROCEDURE FILE ENTRY ",ADEA G ERREND
ERR6 ;EP
 W !," - INVALID DATA: MISSING ATTENDING DENTIST IN DENTAL PROCEDURE FILE ENTRY ",ADEA G ERREND
ERR10 ;EP
 W !," - INVALID DATA: MISSING SERVICE DATA FOR DENTAL PROCEDURE ENTRY ",ADEA G ERREND
ERR12 ;EP
 I '$D(ADERR("RPD",ADEREPD)) W !," - INVALID DATA: MISSING SOCIAL SECURITY NUMBER IN 'PERSON' FILE FOR ",$P(^DIC(16,ADEREPD,0),U) S ADERR("RPD",ADEREPD)=1 D ERREND G END
END Q
ERREND S (ADERROR,ADEERR)=1
 W !,?15,"RECORD SCANNING " Q