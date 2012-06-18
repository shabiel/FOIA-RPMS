BPMCHK ;IHS/OIT/LJF - PROGRAMMER CHECK FOR PAT MERGE COMPLIANCE
 ;;1.0;IHS PATIENT MERGE;;MAR 01, 2010
 ;
 Q
 ;
EN ;EP; loop through database and find possible files that need
 ;         special merge routines
 ;TO BE RUN BY PATIENT MERGE DEVELOPER periodically
 ;
 W !!,"This routine will build an array of files which might need special"
 W !,"merge routines due to their structure.  This includes pointers without"
 W !,"regular cross-references, variable pointers to files 2 or 9000001, and"
 W !,"files DINUM'ed to files 2 or 9000001 with word-processing fields.",!
 Q:'$$READ^BPMU("Y","OKAY to Continue","NO")
 ;
 NEW BPMWARN,HELP
 S HELP="Regular xrefs speed up merges but are not required.  Answer YES to see them."
 S BPMWARN=$$READ^BPMU("Y","Include WARNINGS of missing regular cross-references","NO",HELP)
 D BUILD
 I '$D(^TMP("BPMCHK",$J)) W !!,"NONE FOUND" Q
 D DISPLAY
 Q
 ;
BUILD ;EP; builds array of findings
 NEW FILE,FIELD,PARENT
 K ^TMP("BPMCHK",$J)
 ;
 S FILE=0 F  S FILE=$O(^DD(FILE)) Q:'FILE  D
 . ;
 . ; if this is a subfile, see if WP on DINUM file
 . I $P($G(^DD(FILE,0)),U)["SUB-FIELD" D                          ;if subfile
 . . Q:$P($G(^DD(FILE,.01,0)),U,2)'["W"                           ;quit if not WP subifle
 . . S PARENT=$G(^DD(FILE,0,"UP")) Q:'PARENT                      ;find parent file
 . . I $P($G(^DD(PARENT,.01,0)),U,5)["DINUM",$$PTR(PARENT,.01) D  ;if parent is DINUM to 2 or 9000001
 . . . Q:$$OKWP(FILE)                                               ;skip if already in special merge routine
 . . . S ^TMP("BPMCHK",$J,"WP",PARENT,FILE)=""                    ;set ^TMP
 . ;
 . ; otherwise, loop through fields looking for pointers and variable pointers
 . S FIELD=0
 . F  S FIELD=$O(^DD(FILE,FIELD)) Q:'FIELD  D
 . . I $$PTR(FILE,FIELD),('$$REGXREF(FILE,FIELD)) S ^TMP("BPMCHK",$J,"XREF",FILE,FIELD)=""
 . . I $$VAR(FILE,FIELD),'$$OKVP(FILE,FIELD) S ^TMP("BPMCHK",$J,"VAR",FILE,FIELD)=""
 Q
 ;
DISPLAY ; write findings to screen
 NEW FIRST,FILE,FIELD,SUBFILE,CAT
 S FIRST=1
 S FILE=0 F  S FILE=$O(^TMP("BPMCHK",$J,"WP",FILE)) Q:'FILE  D
 . S SUBFILE=0 F  S SUBFILE=$O(^TMP("BPMCHK",$J,"WP",FILE,SUBFILE)) Q:'SUBFILE  D
 . . I FIRST W !!!,"DINUM'ED FILES WITH WORD-PROCESSING FIELDS WITHOUT A SPECIAL MERGE WRITTEN",! S FIRST=0
 . . W !,"FILE: ",FILE," (",$P(^DIC(FILE,0),U),")  SUBFILE: ",SUBFILE," (",$P($P(^DD(SUBFILE,0),U)," SUB-FIELD"),")"
 ;
 ;
 F CAT="VAR","XREF" S FIRST=1 D
 . I CAT="XREF",BPMWARN<1 Q    ;skip regular xref warnings
 . S FILE=0 F  S FILE=$O(^TMP("BPMCHK",$J,CAT,FILE)) Q:'FILE  D
 . . I FIRST,CAT="XREF" W !!!,"FILES WITH POINTERS BUT NO REGULAR CROSS-REFERENCES - WARNING ONLY",! S FIRST=0
 . . I FIRST,CAT="VAR" W !!!,"FILES WITH VARIABLE POINTERS & NOT ALREADY HANDLED BY PATIENT MERGE",! S FIRST=0
 . . ;
 . . S FIELD=0 F  S FIELD=$O(^TMP("BPMCHK",$J,CAT,FILE,FIELD)) Q:'FIELD  D
 . . . W !,"FILE: ",FILE," (",$$TOPFILE(FILE),")  FIELD: ",FIELD," (",$P(^DD(FILE,FIELD,0),U),")"
 Q
 ;
PTR(FILE,FIELD) ; return 1 if this field in this file is a pointer to files 2 or 9000001
 NEW NODE
 S NODE=$G(^DD(FILE,FIELD,0))
 I $P(NODE,U,2)'["P" Q 0            ;not a pointer
 I ($P(NODE,U,2)["9000001"),($P(NODE,U,2)'["9000001.") Q 1       ;pointer to PATIENT file
 I $P(NODE,U,2)'["P2" Q 0           ;looking for pointers to file 2
 I +$P($P(NODE,U,2),"P",2)>2 Q 0    ;don't get pointers to files 20, 21, 200, 2999, etc.
 Q 1
 ;
REGXREF(FILE,FIELD) ; return 1 if field has regular xref
 NEW XREF,FOUND
 S FOUND=0
 S XREF=0 F  S XREF=$O(^DD(FILE,FIELD,1,XREF)) Q:'XREF  D
 . I $P(^DD(FILE,FIELD,1,XREF,0),U,3)="" S FOUND=1
 Q FOUND
 ;
VAR(FILE,FIELD) ; returns 1 if field is a variable pointer to files 2 or 9000001
 I $P($G(^DD(FILE,FIELD,0)),U,2)'["V" Q 0
 I $D(^DD(FILE,FIELD,"V","B",2)) Q 1
 I $D(^DD(FILE,FIELD,"V","B",9000001)) Q 1
 Q 0
 ;
OKVP(FILE,FIELD) ; returns 1 if file/field comb already known
 NEW FOUND,N
 S FOUND=0
 F N=1:1 Q:$P($T(KNOWNVP+N),";;",2)=""  D
 . I $P($T(KNOWNVP+N),";;",2)=FILE,$P($T(KNOWNVP+N),";;",3)=FIELD S FOUND=1
 Q FOUND
 ;
OKWP(SUBFILE) ; returns 1 if subfile already in special merge routine
 NEW FOUND,N
 S FOUND=0
 F N=1:1 Q:$P($T(KNOWNWP+N),";;",2)=""  D
 . I $P($T(KNOWNWP+N),";;",2)=SUBFILE S FOUND=1
 Q FOUND
 ;
TOPFILE(FILE) ;returns file and subfile names
 I '$D(^DD(FILE,0,"UP")) Q $P(^DIC(FILE,0),U)   ;already top level file
 NEW NAME
 S NAME=$P($P(^DD(FILE,0),U)," SUB-FIELD")      ;subfile name
 F  Q:'$D(^DD(FILE,0,"UP"))  D
 . S FILE=$G(^DD(FILE,0,"UP"))
 . I $D(^DD(FILE,0,"UP")) S NAME=NAME_" - "_$P($P(^DD(FILE,0),U)," SUB-FIELD") Q
 . S NAME=NAME_" - "_$P(^DIC(FILE,0),U)
 Q NAME
 ;
KNOWNWP ;;
 ;;9000001.12;;LOCATION OF HOME FIELD IN PATIENT FILE
 ;;9000001.13;;ADDITIONAL REGISTRATION INFO FIELD IN PATIENT FILE
 ;;9000001.14;;REMRAKS FIELD IN PATIENT FILE
 ;;9000001.15;;ALERTS FIELD IN PATIENT FILE
 ;;9000001.16;;CHS NOTES FIELD IN PATIENT FILE
 ;;90181.0111;;NOTES/COMMENTS FIELD IN ASTHMA REGISTER FILE
 ;;9002011.071;;REFERRED BY FIELD IN MHSS INTAKE FILE
 ;;9002011.0711;;INFORMANTS INCLUDE FIELD IN MHSS INTAKE FILE
 ;;9002011.0712;;HISTORY OF PRESENTING PROBLEM FIELD IN MHSS INTAKE FILE
 ;;9002011.0713;;PAST PSYCHIATRIC HISTORY FIELD IN MHSS INTAKE FILE
 ;;9002011.0714;;DRUG/ALCOHOL HISTORY FIELD IN MHSS INTAKE FILE
 ;;9002011.0715;;LEGAL HISTORY FIELD IN MHSS INTAKE FILE
 ;;9002011.0716;;SOCIAL HISTORY FIELD IN MHSS INTAKE FILE
 ;;9002011.0717;;MEDICAL HISTORY FIELD IN MHSS INTAKE FILE
 ;;9002011.0718;;CURRENT MEDICATIONS FIELD IN MHSS INTAKE FILE
 ;;9002011.0719;;MENTAL STATUS EXAM FIELD IN MHSS INTAKE FILE
 ;;9002011.0721;;IMPRESSION/FORMULATION FIELD IN MHSS INTAKE FILE
 ;;9002011.0722;;DEVELOPMENTAL HISTORY FIELD IN MHSS INTAKE FILE
 ;;9002011.0723;;EDUCATIONAL HISTORY FIELD IN MHSS INTAKE FILE
 ;;9002011.0724;;FAMILY HISTORY FIELD IN MHSS INTAKE FILE
 ;;9002011.0725;;VOCATIONAL HISTORY FIELD IN MHSS INTAKE FILE
 ;;9002011.0726;;HOBBIES FIELD IN MHSS INTAKE FILE
 ;;9002011.0727;;STRENGTHS/RESOURCES FIELD IN MHSS INTAKE FILE
 ;;9002011.0728;;INITIAL PLAN FIELD IN MHSS INTAKE FILE
 ;;9002011.0741;;INTAKE DOCUMENTATION/NARRATIVE FIELD IN MHSS INTAKE FILE
 ;;9002084.03;;IMM/SERVE TEXT FIELD IN BI PATIENT FILE
 ;;9002086.06;;NOTES FIELD IN BW PATIENT FILE
 ;;55.061;;COMMENTS FIELD IN PHARMACY PATIENT FILE
 ;;126.01;;INTAKE FIELD IN GMRY PATIENT I/O FILE
 ;;126.02;;OUTPUT FIELD IN GMRY PATIENT I/O FILE
 ;;126.03;;IV FIELD IN GMRY PATIENT I/O FILE
 ;;404.4125;;COMMENT FIELD IN OUTPATIENT PROFILE FILE
 ;;9002313.798;;RESPONSE RAW DATA FIELD IN ABSP ELIGIBILITY FILE
 ;;9002313.799;;TRANSMISSION RAW DATA FIELD IN ABSP ELIGIBILITY FILE
 ;;
KNOWNVP ;;
 ;;15;;.01;;OKAY - PATIENT MERGE FILES
 ;;15;;.02;;OKAY - PATIENT MERGE FILES
 ;;15.4;;.01;;OKAY PATIENT MERGE FILES
 ;;15.4;;.02;;OKAY PATIENT MERGE FILES
 ;;43;;213;;ONLY USED FOR LOOKUP
 ;;64.03;;2;;V1^BPMXVP
 ;;64.1111;;9;;V2^BPMXVP
 ;;67;;3;;ONLY USED BY LOOKUP
 ;;100;;.02;;V3^BPMXVP
 ;;100.2101;;.01;;V4^BPMXVP
 ;;350.9;;4.02;;NOT USED BY IHS (VA INTEGRATED BILLING)
 ;;408.12;;.03;;V5^BPMXVP
 ;;815;;201;;ONLY USED FOR LOOKUP
 ;;90050.02;;.01;;I1^BPMXVP
 ;;9000043.0101;;.01;;12^BPMXVP
 ;;9002274.3;;.127;;I3^BPMXVP
 ;;9002274.4;;.127;;I4^BPMXVP