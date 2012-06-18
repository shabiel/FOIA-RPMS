ABMER70 ; IHS/ASDST/DMJ - UB92 EMC RECORD 70-1 (Medical) ;    
 ;;2.6;IHS 3P BILLING SYSTEM;**3**;NOV 12, 2009
 ;Original;DMJ;08/18/95 10:07 AM
 ;
 ; IHS/ASDS/DMJ - 11/17/00 - V2.4 Patch 3 - NOIS NDA-0500-180002
 ;     Modified code to allow printing of E-codes if exist.
 ;
 ; IHS/SD/SDR - v2.5 p10 - IM20338 - Fix check for ICDs
 ; IHS/SD/SDR - v2.5 p13 - POA changes
 ;
 ; IHS/SD/SDR - v2.6 CSV
 ; IHS/SD/SDR - abm*2.6*3 - HEAT11931 - fix for INVALI displaying in box 72
 ;
START ;START HERE
 K ABMR(70),ABMREC(70)
 S ABME("RTYPE")=70
 D SET^ABMERUTL,LOOP
 D S90^ABMERUTL
 K ABM,ABME
 Q
 ;
LOOP ;LOOP HERE
 D ^ABMER70A
 F I=130:10:300 D
 .D @I
 .I $D(^ABMEXLM("AA",+$G(ABMP("INS")),+$G(ABMP("EXP")),70,I)) D @(^(I))
 .I '$G(ABMP("NOFMT")) S ABMREC(70)=$G(ABMREC(70))_ABMR(70,I)
 Q
 ;
130 ;Principle Surgical Procedure Code (SOURCE: FILE=9002274.4 FIELD=)
 ; form locator #80
 D SCODE
 S ABMR(70,130)=$P(ABM("SC",1),U)
 S ABMR(70,130)=$$FMT^ABMERUTL(ABMR(70,130),7)
 Q
 ;
140 ;Principle Surgical Procedure Date (SOURCE: FILE=9002274.4 FIELD=)
 ; form locator #80
 D SCODE
 S Y=$P(ABM("SC",1),"^",2) D DFMT^ABMERUTL S ABMR(70,140)=Y
 S ABMR(70,140)=$$FMT^ABMERUTL(ABMR(70,140),6)
 Q
 ;
150 ;Other Surgical Procedure Code #1 (SOURCE: FILE=9002274.4)
 ; form locator #81
 D SCODE
 S ABMR(70,150)=$P(ABM("SC",2),U)
 S ABMR(70,150)=$$FMT^ABMERUTL(ABMR(70,150),7)
 Q
 ;
160 ;Other Surgical Procedure Date #1 (SOURCE: FILE=9002274.4)
 ; form locator #81
 D SCODE
 S Y=$P(ABM("SC",2),"^",2)
 D DFMT^ABMERUTL
 S ABMR(70,160)=Y
 S ABMR(70,160)=$$FMT^ABMERUTL(ABMR(70,160),6)
 Q
 ;
170 ;Other Surgical Procedure Code #2 (SOURCE: FILE=9002274.4)
 ; form locator #81
 D SCODE
 S ABMR(70,170)=$P(ABM("SC",3),U)
 S ABMR(70,170)=$$FMT^ABMERUTL(ABMR(70,170),7)
 Q
180 ;Other Surgical Procedure Date #2 (SOURCE: FILE=9002274.4)
 ; form locator #81
 D SCODE
 S Y=$P(ABM("SC",3),"^",2)
 D DFMT^ABMERUTL
 S ABMR(70,180)=Y
 S ABMR(70,180)=$$FMT^ABMERUTL(ABMR(70,180),6)
 Q
 ;
190 ;Other Surgical Procedure Code #3 (SOURCE: FILE=9002274.4)
 ; form locator #81
 D SCODE
 S ABMR(70,190)=$P(ABM("SC",4),U)
 S ABMR(70,190)=$$FMT^ABMERUTL(ABMR(70,190),7)
 Q
 ;
200 ;Other Surgical Procedure Date #3 (SOURCE: FILE=9002274.4)
 ; form locator #81
 D SCODE
 S Y=$P(ABM("SC",4),"^",2)
 D DFMT^ABMERUTL
 S ABMR(70,200)=Y
 S ABMR(70,200)=$$FMT^ABMERUTL(ABMR(70,200),6)
 Q
 ;
210 ;Other Surgical Procedure Code #4 (SOURCE: FILE=9002274.4)
 ; form locator #81
 D SCODE
 S ABMR(70,210)=$P(ABM("SC",5),U)
 S ABMR(70,210)=$$FMT^ABMERUTL(ABMR(70,210),7)
 Q
 ;
220 ;Other Surgical Procedure Date #4 (SOURCE: FILE=9002274.4)
 ; form locator #81
 D SCODE
 S Y=$P(ABM("SC",5),"^",2)
 D DFMT^ABMERUTL
 S ABMR(70,220)=Y
 S ABMR(70,220)=$$FMT^ABMERUTL(ABMR(70,220),6)
 Q
 ;
230 ;Other Surgical Procedure Code #5 (SOURCE: FILE=9002274.4)
 ; form locator #81
 D SCODE
 S ABMR(70,230)=$P(ABM("SC",6),U)
 S ABMR(70,230)=$$FMT^ABMERUTL(ABMR(70,230),7)
 Q
 ;
240 ;Other Surgical Procedure Date #5 (SOURCE: FILE=9002274.4)
 ; form locator #81
 D SCODE
 S Y=$P(ABM("SC",6),"^",2)
 D DFMT^ABMERUTL
 S ABMR(70,240)=Y
 S ABMR(70,240)=$$FMT^ABMERUTL(ABMR(70,240),6)
 Q
 ;
250 ;Admitting Diagnosis (SOURCE: FILE=9002274.4, FIELD=.59)
 ; form locator #76
 D:'$D(ABM(9002274.4,ABMP("BDFN"),.59)) DIQ1
 S ABMR(70,250)=ABM(9002274.4,ABMP("BDFN"),.59,"E")
 S ABMR(70,250)=$TR(ABMR(70,250),".")
 S ABMR(70,250)=$$FMT^ABMERUTL(ABMR(70,250),6)
 Q
 ;
260 ;External Cause of Injury (SOURCE: FILE=9002274.4, FIELD=)
 ; form locator #77
 S ABMR(70,260)=$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),8)),"^",12)
 ;S ABMR(70,260)=$P($$DX^ABMCVAPI(+ABMR(70,260),ABMP("VDT")),U,2)  ;CSV-c  ;abm*2.6*3 HEAT11931
 S:(+ABMR(70,260)) ABMR(70,260)=$P($$DX^ABMCVAPI(+ABMR(70,260),ABMP("VDT")),U,2)  ;CSV-c  ;abm*2.6*3 HEAT11931
 S ABMR(70,260,"POA")=$$POA(ABMR(70,260))
 S ABMR(70,260)=$TR($G(ABMR(70,260)),".")
 S ABMR(70,260)=$$FMT^ABMERUTL(ABMR(70,260),6)
 Q
 ;
270 ;Procedure Coding Method Used (SOURCE: FILE=9999999.18, FIELD=)
 ; form locator #79
 I +$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),19,0))'=0 S ABMR(70,270)=9
 E  S ABMR(70,270)=$S($P($G(^ABMNINS(DUZ(2),+ABMP("INS"),1,+ABMP("VTYP"),0)),U,2)="I":9,1:4)
 S ABMR(70,270)=$$FMT^ABMERUTL(ABMR(70,270),"1N")
 Q
 ;
280 ;Filler
 S ABMR(70,280)=""
 S ABMR(70,280)=$$FMT^ABMERUTL(ABMR(70,280),23)
 Q
290 ;External Cause of Injury (2) (SOURCE: FILE=9002274.4, FIELD=)
 ; form locator #77
 S ABMR(70,290)=$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),8)),U,19)
 ;S ABMR(70,290)=$P($$DX^ABMCVAPI(+ABMR(70,290),ABMP("VDT")),U,2)  ;CSV-c  ;abm*2.6*3 HEAT11931
 S:(+ABMR(70,290)) ABMR(70,290)=$P($$DX^ABMCVAPI(+ABMR(70,290),ABMP("VDT")),U,2)  ;CSV-c  ;abm*2.6*3 HEAT11931
 S ABMR(70,290,"POA")=$$POA(ABMR(70,290))
 S ABMR(70,290)=$TR($G(ABMR(70,290)),".")
 S ABMR(70,290)=$$FMT^ABMERUTL(ABMR(70,290),6)
 Q
300 ;External Cause of Injury (3) (SOURCE: FILE=9002274.4, FIELD=)
 ; form locator #77
 S ABMR(70,300)=$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),8)),U,20)
 ;S ABMR(70,300)=$P($$DX^ABMCVAPI(+ABMR(70,300),ABMP("VDT")),U,2)  ;CSV-c  ;abm*2.6*3 HEAT11931
 S:(+ABMR(70,300)) ABMR(70,300)=$P($$DX^ABMCVAPI(+ABMR(70,300),ABMP("VDT")),U,2)  ;CSV-c  ;abm*2.6*3 HEAT11931
 S ABMR(70,300,"POA")=$$POA(ABMR(70,300))
 S ABMR(70,300)=$TR($G(ABMR(70,300)),".")
 S ABMR(70,300)=$$FMT^ABMERUTL(ABMR(70,300),6)
 Q
 ;
SCODE ;SURGICAL PROCEDURE CODES
 Q:$D(ABM("SC"))   ; Quit if already done
 N I
 S I=0,CNT=0
 F  S I=$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),19,"C",I)) Q:+I=0  D
 .S J=0
 .F  S J=$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),19,"C",I,J)) Q:+J=0  D
 ..S CNT=CNT+1
 ..S ABM("ZERO")=$G(^ABMDBILL(DUZ(2),ABMP("BDFN"),19,J,0))
 ..S ABM("SC",CNT)=$P($$ICDOP^ABMCVAPI(+ABM("ZERO"),ABMP("VDT")),U,2)_"^"_$P(ABM("ZERO"),U,3)  ;CSV-c
 ..Q:$P($G(^ABMDEXP(ABMP("EXP"),1)),U,5)'="E"
 ..S ABM("SC",CNT)=$TR(ABM("SC",CNT),".")
 I $D(ABM("SC")) F I=1:1:6 S:'$D(ABM("SC",I)) ABM("SC",I)=""
 Q:$D(ABM("SC"))
 ; if procedure coding method used is ICD use node 19,
 ;   else use node 21 (Med/Surg)
 S ABM("SUB")=$S($P($G(^ABMNINS(DUZ(2),+ABMP("INS"),1,+ABMP("VTYP"),0)),"^",2)="I":19,1:21)
 N I
 S I=0,CNT=0
 ; loop INS priority order
 F  S I=$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),ABM("SUB"),"C",I)) Q:'I  D
 .N J
 .S J=0
 .; Loop IEN to multiple
 .F  S J=$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),ABM("SUB"),"C",I,J)) Q:'J  D
 ..S CNT=CNT+1  ; increment counter
 ..S ABM("ZERO")=^ABMDBILL(DUZ(2),ABMP("BDFN"),ABM("SUB"),J,0)
 ..I ABM("SUB")=19 D   ; ICD procedure code ^ date of service
 ...S ABM("SC",CNT)=$P($$ICDOP^ABMCVAPI(+ABM("ZERO"),ABMP("VDT")),U,2)_"^"_$P(ABM("ZERO"),U,3)  ;CSV-c
 ...Q:$P($G(^ABMDEXP(ABMP("EXP"),1)),"^",5)'="E"
 ...S ABM("SC",CNT)=$TR(ABM("SC",CNT),".")
 ..; CPT code ^ date/time
 ..I ABM("SUB")=21 S ABM("SC",CNT)=$P($$CPT^ABMCVAPI(+ABM("ZERO"),ABMP("VDT")),U,2)_"^"_$P(ABM("ZERO"),U,5)  ;CSV-c
 F I=1:1:6 S:'$D(ABM("SC",I)) ABM("SC",I)=""
 Q
 ;
DIQ1 ;GET INFO FROM FILE 9002274.4
 N I
 S DA=ABMP("BDFN")
 S DR=".59;.857"
 S DIQ="ABM"
 S DIQ(0)="E"
 S DIC="^ABMDBILL(DUZ(2),"
 D EN^DIQ1
 K DIQ
 Q
 ;
EX(ABMX,ABMY) ;EXTRINSIC FUNCTION HERE
 ;
 ;  INPUT: ABMX = data element
 ;            Y = bill internal entry number
 ;
 ; OUTPUT:    Y = bill internal entry number
 ;         
 I '$G(ABMP("NOFMT")) S ABMP("FMT")=0
 D @ABMX
 S Y=ABMR(70,ABMX)
 I $D(ABMP("FMT")) S ABMP("FMT")=1
 K ABMR(70,ABMX),ABMX,ABMY
 Q Y
POA(ABMDX) ;EP
 N I
 S I=0
 S ABMRPOA=""
 F  S I=$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),17,I)) Q:'I  D
 .I ABMDX=$P($G(^ICD9($P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),17,I,0)),U),0)),U) S ABMRPOA=$P($G(^ABMDBILL(DUZ(2),ABMP("BDFN"),17,I,0)),U,5)
 Q ABMRPOA