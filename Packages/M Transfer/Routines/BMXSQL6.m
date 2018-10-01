BMXSQL6 ; IHS/OIT/HMW - BMX REMOTE PROCEDURE CALLS ; 2/5/11 10:03pm
 ;;4.0;BMX;**1000**;JUN 28, 2010
 ;
 ; *1000: WV/SMH Feb 2 2010 - Changes to support GT.M
 ; Line EOR+3 used a 2 argument form of $Q which is not
 ; in the M 95 standard. Replaced this with a call to $$LAST,
 ; a new Extrinsic in this routine.
 ;
 ;
WRITE ;EP
 N BMXFN,C,BMXN,BMXGF,BMXA,BMXFLDF,N,A,IEN0,I
 N BMXCNT,BMXCNTB,BMXLEN,BMXLTMP,BMXNUM,BMXORD,BMXTYP
 N BMXCFN,BMXCFNX,F,BMXROOT,BMXCID,BMXZ  ;From MAKEC
 N BMXREC,BMXCHAIN  ;TODO: COMMENT AFTER TESTING
 N BMXIENS
 ;Set up FIELD value for GETS^DIQ call
 ; BMXFLD("NAME")="FILE#^FIELD#"
 ; Need: BMXFLDN(FieldNumber)
 ; and : BMXFLDO(SelectOrder)
 ; Get file number -- for now just use first file in array
 ; TODO: Set up same main file and related files here and in enumerator
 S C=0,BMXN=""
 N F
 S BMXGF=0
 S F=0 F  S F=$O(BMXF(F)) Q:F=""  S BMXFN=BMXF(F) D
 . S C=0,BMXN=-1 F  S BMXN=$O(BMXFLDO(BMXN)) Q:BMXN=""  D
 . . Q:$P(BMXFLDO(BMXN),U)'=BMXFN
 . . I $P(BMXFLDO(BMXN),U,2)=".001" S BMXGF=BMXGF+1 Q
 . . S C=C+1
 . . S $P(BMXGF(BMXFN),";",C)=$P(BMXFLDO(BMXN),U,2)
 . . S:'$D(BMXGF(BMXFN,"INTERNAL")) BMXGF(BMXFN,"INTERNAL")="E"
 . . I $P(BMXFLDO(BMXN),U,3)="I" S BMXGF(BMXFN,"INTERNAL")="IE"
 . . S BMXGF=BMXGF+1
 . . Q
 . Q
 ;
 I BMXGF>1 K BMXTK("DISTINCT") ;Distinct supported for only one field
 S N=0,BMXFLDF=0,I=1,BMXNUM=0
 D FIELDS
 D MAKEC
 ;
 ;
 I BMXCOL D COLTYPE^BMXSQL,ERRTACK^BMXSQL(I) Q  ;Column info only
 ;
 S BMXA="A"
 N G,R
 ;---> Loop through results global
 F  S N=$O(^BMXTMP($J,N)) Q:'+N  D
 . K A
 . S R=0 F  S R=$O(BMXFO(R)) Q:'+R  D  ;For each file in ORDER array
 . . S IEN0=0
 . . S BMXFN=BMXFO(R)
 . . Q:$D(BMXMFL(BMXFN,"MULT"))
 . . I R=1 S IEN0=^BMXTMP($J,N)  ;Primary file
 . . I R>1,$D(BMXFJ("JOIN",BMXFN)) D  ;Joined file
 . . . S IEN0=0
 . . . S G=BMXFJ("JOIN",BMXFN)
 . . . S V=BMXFF(G,"JOIN","IEN")
 . . . S @V=^BMXTMP($J,N)
 . . . X BMXFF(G,"JOIN")
 . . I +IEN0 D  ;Removed $D(BMXGF(BMXFN)) for mult fld on extdnd ptr
 . . . D SUBFILE(BMXFN)
 . . I +IEN0,$D(BMXFLDN(BMXFN,.001)) D SETIEN(IEN0,BMXFN)
 . . ;
 . . I 0,R>1,$D(BMXMFL(BMXFN,"MULT")) D  ;Multiple field
 . . . Q:'+IEN0
 . . . Q:'$D(BMXGF(BMXFN))  ;Intervening multiple
 . . . ;Call GETS for each subentry in multiple
 . . . X BMXMFL(BMXFN,"EXEC")
 . S F=0,BMXCNT=0
 . ;
 . D RECORD
 . D OUT
 ;
 ;
 ;---> Tack on Error Delimiter and any error.
 S I=I+1
 D ERRTACK^BMXSQL(I)
 D COLTYPE^BMXSQL
 Q
 ;
SETIEN(BMXIEN,BMXFN)         ;
 ;B  ;SETIEN
 Q:'$D(BMXFLDN(BMXFN,.001))
 Q:'+BMXIEN
 S A(BMXFN,BMXIEN_",",.001,"E")=BMXIEN
 Q
 ;
SUBFILE(BMXFN) ;
 ;Execute GETS for Any fields in BMXGF(SUBFILE)
 ;
 ;If the subfile itself has subfiles, call SUBFILE(BMXSUBFN)
 ;  (Loop through BMXMFL(BMXFN,"SUBFILE",BMXSUBFN))
 I $D(BMXMFL(BMXFN,"SUBFILE")) D
 . N BMXSUBFN
 . S BMXSUBFN=0
 . F  S BMXSUBFN=$O(BMXMFL(BMXFN,"SUBFILE",BMXSUBFN)) Q:'+BMXSUBFN  D SUBFILE(BMXSUBFN)
 . Q
 ;
 I $D(BMXGF(BMXFN)) D
 . I '$D(BMXMFL(BMXFN,"MULT")) S BMXMSCR=1 D GETS^DIQ(BMXFN,IEN0_",",BMXGF(BMXFN),BMXGF(BMXFN,"INTERNAL"),BMXA) Q
 . E  X BMXMFL(BMXFN,"EXEC") Q
 ;
 ;
 Q
 ;
FIELDS ;---> Write Field Names
 ;Field name is TAAAAANAME
 ;Where T is the field type (T=Text; D=Date)
 ;      AAAAA is the field size (see NUMCHAR routine)
 ;      NAME is the field name
 N BMXNUM,BMXFNUM,BMXFNAM,R
 K BMXLEN,BMXTYP
 S BMXFLDF=1
 S BMXNUM=0
 ;B  ;In FIELDS sub
 D  ;:$D(A)
 . I BMXNUM S ^BMXTEMP($J,I)="IEN^",BMXLEN(I)=10,BMXTYP(I)="T",I=I+1 ;TODO: Change from text to number
 . S BMXFNUM=0
 . S BMXFNAM=0
 . F R=0:1:(BMXFLDO-1) S BMXFN=$P(BMXFLDO(R),U),BMXFNUM=$P(BMXFLDO(R),U,2) D
 . . ;S BMXFNAM=$P(^DD(BMXFN,BMXFNUM,0),"^") ;Get type here
 . . S BMXFNAM=BMXFLDN(BMXFN,BMXFNUM)
 . . I $P(BMXFLDO(R),U,3)="I" S BMXFNAM="INTERNAL["_BMXFNAM_"]"
 . . S BMXFNAM=$TR(BMXFNAM," ","_")
 . . I BMXF>1 S BMXFNAM=$TR($P(BMXFNX(BMXFN),".")," ","_")_"."_BMXFNAM
 . . S BMXTYP(I)="T"
 . . S:$P(BMXFLDO(R),U,5)="D" BMXTYP(I)="D"
 . . S:$P(BMXFLDO(R),U,5)="I" BMXTYP(I)="I"
 . . S BMXLEN(I)=0 ;Start with length zero
 . . ;I $D(BMXFLDA(BMXFN,BMXFNUM)) S BMXFNAM=BMXFLDA(BMXFN,BMXFNUM)
 . . I $P(BMXFLDO(R),U,6)]"" S BMXFNAM=$P(BMXFLDO(R),U,6)
 . . S ^BMXTEMP($J,I)=BMXFNAM_"^"
 . . S I=I+1
 . S ^BMXTEMP($J,I-1)=$E(^BMXTEMP($J,I-1),1,$L(^BMXTEMP($J,I-1))-1)_$C(30)
 Q
 ;
OUT ;
 ;Output to BMXTEMP($J
 Q:'$D(BMXREC)
 N J,K,L,BMXLENT
 S J=0 F  S J=$O(BMXREC(J)) Q:'+J  D
 . S K=0 F  S K=$O(BMXREC(J,K)) Q:'+K  D
 . . I +$O(BMXREC(J,K,0)) D  Q  ;WP
 . . . S L=0,BMXLENT=0 F  S L=$O(BMXREC(J,K,L)) Q:'+L  D
 . . . . S:'$D(^BMXTEMP($J,I)) ^BMXTEMP($J,I)=""
 . . . . S:$L(^BMXTEMP($J,I))>250 I=I+1,^BMXTEMP($J,I)=""
 . . . . S ^BMXTEMP($J,I)=^BMXTEMP($J,I)_BMXREC(J,K,L)
 . . . . S BMXLENT=BMXLENT+$L(BMXREC(J,K,L))
 . . . I BMXLEN(K)<BMXLENT S BMXLEN(K)=BMXLENT
 . . S:'$D(^BMXTEMP($J,I)) ^BMXTEMP($J,I)=""
 . . S:$L(^BMXTEMP($J,I))>250 I=I+1,^BMXTEMP($J,I)=""
 . . I $G(BMXTK("DISTINCT"))="TRUE",BMXREC(J,K)]"" Q:$D(^BMXTEMP($J,"DISTINCT",BMXREC(J,K)))
 . . S ^BMXTEMP($J,I)=^BMXTEMP($J,I)_BMXREC(J,K)
 . . S:$L(BMXREC(J,K))>BMXLEN(K) BMXLEN(K)=$L(BMXREC(J,K))
 . . I $G(BMXTK("DISTINCT"))="TRUE" S ^BMXTEMP($J,"DISTINCT",BMXREC(J,K))=""
 Q
 ;
RECORD ;
 ;For each chain
 N C,BMXCQ,BMXLCQ,BMXCQN,BMXLCQN,BMXTRACK,BMXNODE,BMXCNAME,BMXWP
 K BMXREC,BMXCHAIN  ;TODO: REMOVE AFTER TESTING
 D BLDCHN
 S BMXREC=0
 D RECINI
 S C=0 F  S C=$O(BMXCHAIN(C)) Q:'+C  D
 . ;New chain
 . ;Go to the end of the chain, writing record pieces as you go
 . ;At the end of the chain, write end-of-record marker,increment record counter, copy previous record
 . K BMXTRACK
 . S BMXCNAME="BMXCHAIN("_C_")"
 . S BMXCQN=""
 . S BMXCQ=BMXCNAME F  S BMXCQ=$Q(@BMXCQ) Q:BMXCQ=""  Q:$P(BMXCQ,",")'=("BMXCHAIN("_C)  D
 . . S BMXNODE=@BMXCQ
 . . I $P(BMXNODE,U,2)="" Q
 . . S BMXWP=$P(BMXNODE,U,3)
 . . S BMXLCQ=$L(BMXCQ,",")
 . . S BMXCQN=$Q(@BMXCQ)
 . . S BMXLCQN=$L(BMXCQN,",")
 . . I BMXWP="W" D
 . . . S BMXREC(BMXREC,$P(BMXNODE,U,2),$P(BMXNODE,U,4))=$P(BMXNODE,U)
 . . . S BMXTRACK(BMXLCQ-1,$P(BMXNODE,U,2))=BMXNODE
 . . E  D
 . . . S BMXREC(BMXREC,$P(BMXNODE,U,2))=$P(BMXNODE,U)_U
 . . . S BMXTRACK(BMXLCQ,$P(BMXNODE,U,2))=BMXNODE
 . . I BMXCQN="" D EOR Q
 . . I $P(BMXCQN,",")'=("BMXCHAIN("_C) D EOR Q
 . . I BMXLCQN>BMXLCQ Q
 . . I (BMXLCQN>$S(BMXWP="W":7,1:6)) D  Q
 . . . I ($P(BMXCQ,",",1,BMXLCQ-2)=$P(BMXCQN,",",1,BMXLCQN-2)) Q
 . . . D EOR ;End of chain
 Q
 ;
RECINI ;
 N J
 S BMXREC=BMXREC+1
 F J=1:1:BMXFLDO D
 . I $P(BMXFLDO(J-1),U,4)="W" S BMXREC(BMXREC,J,999999)="^" Q
 . S BMXREC(BMXREC,J)="^"
 Q
 ;
EOR ;
 ;B  ;EOR
 N J,K,L,M,I,N
 ;S M=$Q(BMXREC(9999999),-1)
 S M=$$LAST("BMXREC")
 S @M=$TR(@M,"^",$C(30))
 Q:BMXCQN=""
 I BMXCQN'="" D RECINI
 ;K BMXTRACK(BMXLCQ) ;Also kill all track levels between current and next level
 F  K BMXTRACK($O(BMXTRACK(999999),-1)) Q:$O(BMXTRACK(9999999),-1)'>BMXLCQN
 S J=0 F  S J=$O(BMXTRACK(J)) Q:'+J  D  ;Level
 . S K=0 F  S K=$O(BMXTRACK(J,K)) Q:'+K  D  ;Order
 . . I $D(BMXTRACK(J,K)) S BMXNODE=BMXTRACK(J,K) S BMXREC(BMXREC,$P(BMXNODE,U,2))=$P(BMXNODE,U)_U
 . . S L=0 F  S L=$O(BMXTRACK(J,K,L)) Q:'+L  D  ;wp node
 . . . I $D(BMXTRACK(J,K,L)) S BMXNODE=BMXTRACK(J,K,L) S BMXREC(BMXREC,$P(BMXNODE,U,2),L)=$P(BMXNODE,U)
 Q
 ;
BLDCHN ;
 N B
 D MAKEB
 ;D MAKEC
 D BUILD
 Q
 ;
MAKEC ;
 ;MAKE Chain
 ;How many chains are there?
 S BMXZ=0 S BMXCID=1 K BMXCFN
 ;
 ;
 ;Create BMXCHNP(BMXCID)
 S F=0 F  S F=$O(BMXMFL(F)) Q:'+F  I '$D(BMXMFL("SUBFILE",F)),$D(BMXMFL("PARENT",F)) S BMXMFL("BOTTOM",F)=""
 N BMXCB,BMXCHNP,BMXP
 S BMXCID=0,BMXCB=0,BMXCHNP=0
 I $D(BMXMFL("BOTTOM")) F  S BMXCB=$O(BMXMFL("BOTTOM",BMXCB)) Q:'BMXCB  D
 . S BMXCID=BMXCID+1,BMXCHNP=BMXCID
 . S BMXCHNP(BMXCID)=BMXCB
 . S BMXP=BMXCB
 . F  Q:'$D(BMXMFL("PARENT",BMXP))  S BMXP=BMXMFL("PARENT",BMXP) S BMXCHNP(BMXCID)=BMXP_U_BMXCHNP(BMXCID)
 ;
 N J,K,L,M
 ;Create BMXMFL("BASE")="FILE1^FILE2^...^FILEN"
 S F=0,M=0,BMXMFL("BASE")="" F  S F=$O(BMXMFL(F)) Q:'+F  I (('$D(BMXMFL("PARENT",F)))&('$D(BMXMFL(F,"SUBFILE"))))!(BMXFO(1)=F) S M=M+1,$P(BMXMFL("BASE"),U,M)=F ;Changed to make BMXFO(1) always a member of the base
 ;
 ;Create BMXCFN(BMXCID,BMXZ,FILE)
 I BMXCID=0 S BMXCID=1
 S J=0,BMXZ=0 F J=1:1:BMXCID D
 . I BMXMFL("BASE")]"" F L=1:1:$L(BMXMFL("BASE"),"^") S F=$P(BMXMFL("BASE"),"^",L) D
 . . S BMXZ=BMXZ+100
 . . S BMXCFN(J,BMXZ,F)=""
 . I +BMXCHNP F K=1:1:$L(BMXCHNP(J),"^") S F=$P(BMXCHNP(J),"^",K) D
 . . Q:F=BMXFO(1)  ;BMXFO(1) Is always a member of the base
 . . S BMXZ=BMXZ+100
 . . S BMXCFN(J,BMXZ,F)=""
 ;
 ;
 ;B  ;FIXCFN
 D FIXCFN
 Q
 ;
BUILD ;Building BMXCHAIN(
 N BMXIEN,BMXCID,BMXFLD,BMXCS,BMXINT,BMXCFNC,BMXCFIEN
 S BMXCID=0,BMXIEN=0
 F  S BMXCID=$O(BMXCFN(BMXCID)) Q:'+BMXCID  D
 . S BMXCFNC=0 F  S BMXCFNC=$O(BMXCFN(BMXCID,BMXCFNC)) Q:'+BMXCFNC  S BMXCFN=+BMXCFN(BMXCID,BMXCFNC) D
 . . S BMXIEN=0 F  S BMXIEN=$O(B(BMXCFN,BMXIEN)) Q:BMXIEN=""  D
 . . . S $P(BMXCFN(BMXCID,BMXCFNC),U,2)=BMXIEN
 . . . S BMXFLD=0 F  S BMXFLD=$O(B(BMXCFN,BMXIEN,BMXFLD)) Q:'+BMXFLD  D
 . . . . S BMXINT="D" F  S BMXINT=$O(B(BMXCFN,BMXIEN,BMXFLD,BMXINT)) Q:BMXINT=""  D
 . . . . . Q:'$D(BMXFLDOX(BMXCFN,BMXFLD,BMXINT))
 . . . . . I $P(BMXFLDO(BMXFLDOX(BMXCFN,BMXFLD,BMXINT)),U,4)="W" D MCWP Q
 . . . . . D FIXIEN
 . . . . . S BMXCS="BMXCHAIN("_BMXCID_","_$S($L(BMXIEN,",")=2:1,1:2)_","_BMXCFIEN_","_BMXFLD_","_$C(34)_BMXINT_$C(34)_")"
 . . . . . S @BMXCS=B(BMXCFN,BMXIEN,BMXFLD,BMXINT)_U_(BMXFLDOX(BMXCFN,BMXFLD,BMXINT)+1)
 Q
 ;
FIXIEN ;
 N BMXC,BMXCFN1,BMXOFF
 S BMXC=BMXCFNC
 S BMXCFIEN=BMXCFN_","_$P(BMXIEN,",",$L(BMXIEN,","))
 S BMXOFF=1
 F  S BMXC=$O(BMXCFN(BMXCID,BMXC),-1) Q:'+BMXC  D
 . S BMXCFN1=+BMXCFN(BMXCID,BMXC)
 . I '$D(BMXMFL(BMXCFN,"OTM")) D
 . . I '$D(BMXMFL(BMXCFN1,"SUBFILE",BMXCFN)) Q
 . . S BMXCFIEN=BMXCFN1_","_$P(BMXIEN,",",$L(BMXIEN,",")-BMXOFF)_","_BMXCFIEN
 . I $D(BMXMFL(BMXCFN,"OTM")) D
 . . I '$D(BMXMFL(BMXCFN1,"SUBFILE",BMXCFN)) Q
 . . S BMXCFIEN=BMXCFN1_$P(BMXCFN(BMXCID,BMXC),U,2)_","_BMXCFIEN
 . S BMXOFF=BMXOFF+1
 ;
 ;
 Q
 ;
FIXCFN ;
 N J,K,L
 S J=0 F  S J=$O(BMXCFN(J)) Q:'+J  D
 . S K=0 F  S K=$O(BMXCFN(J,K)) Q:'+K  D
 . . S L=0 F  S L=$O(BMXCFN(J,K,L)) Q:'+L  D
 . . . K BMXCFN(J,K,L)
 . . . S BMXCFN(J,K)=L
 ;
 Q
 ;
MCWP ;
 ;MAKEC Process WP Field
 N BMXIENL,BMXWP
 S BMXIENL=1
 S:$L(BMXIEN,",")>2 BMXIENL=2
 S BMXWP=0
 ;
 F  S BMXWP=$O(B(BMXCFN,BMXIEN,BMXFLD,BMXWP)) Q:'+BMXWP  D
 . S BMXCS="BMXCHAIN("_BMXCID_","_BMXIENL_","_BMXCFN_BMXIEN_","_BMXFLD_","_$C(34)_BMXINT_$C(34)_","_BMXWP_")"
 . S @BMXCS=B(BMXCFN,BMXIEN,BMXFLD,BMXWP)_U_(BMXFLDOX(BMXCFN,BMXFLD,BMXINT)+1)_U_"W"_U_BMXWP
 Q
 ;
 ;
MAKEB ;
 N BMXFILE,BMXIEN,BMXFLD,BMXINT
 N BMXSUB,BMXIENR
 S BMXFILE=0 F  S BMXFILE=$O(A(BMXFILE)) Q:'+BMXFILE  D
 . S BMXIEN=0 F  S BMXIEN=$O(A(BMXFILE,BMXIEN)) Q:'+BMXIEN  D
 . . S BMXFLD=0 F  S BMXFLD=$O(A(BMXFILE,BMXIEN,BMXFLD)) Q:'+BMXFLD  D
 . . . S BMXINT=0 F  S BMXINT=$O(A(BMXFILE,BMXIEN,BMXFLD,BMXINT)) Q:BMXINT=""  D
 . . . . S BMXIENR=$$REVERSE(BMXIEN)
 . . . . S BMXSUB="B("_BMXFILE_","_$C(34)_BMXIENR_$C(34)_","_BMXFLD_","_$C(34)_BMXINT_$C(34)_")"
 . . . . I $D(BMXFLDOX(BMXFILE,BMXFLD,BMXINT)),$P(BMXFLDO(BMXFLDOX(BMXFILE,BMXFLD,BMXINT)),U,5)="D" D  Q
 . . . . . S @BMXSUB=$TR(A(BMXFILE,BMXIEN,BMXFLD,BMXINT),"@"," ")
 . . . . S @BMXSUB=A(BMXFILE,BMXIEN,BMXFLD,BMXINT)
 Q
 ;
REVERSE(BMXIEN) ;
 N J,T,C
 S C=1
 F J=$L(BMXIEN,","):-1:1 D
 . S $P(T,",",C)=$P(BMXIEN,",",J)
 . S C=C+1
 Q T
LAST(VAR) ; Get last entry in an array //SMH new code
  N SUB1 S SUB1=$O(@VAR@(""),-1)
  N SUB2 S SUB2=$O(@VAR@(SUB1,""),-1)
  N SUB3 S SUB3=$O(@VAR@(SUB1,SUB2,""),-1)
  I SUB3="" Q $NA(@VAR@(SUB1,SUB2))
  E  Q $NA(@VAR@(SUB1,SUB2,SUB3))
