ABSPOSFP ; IHS/FCS/DRS - Print NCPDP claim ;   [ 09/12/2002  10:09 AM ]
 ;;1.0;PHARMACY POINT OF SALE;**3**;JUN 21, 2001
 ;----------------------------------------------------------------------
 Q
PRINT ; EP - we have the ABSP() and NCPDP() arrays
 ; Print to the current device
 N VOFF,HOFF S VOFF=2,HOFF=0 ; vertical and horizontal offsets
 N A,B,C,I,X,Y,Z
 I $Y'=0 W @IOF ; in case not at top of form
 F I=1:1:VOFF W !
 N MAXRXN S MAXRXN=$O(ABSP("RX"," "),-1)
 N RXN F RXN=1:2:MAXRXN D PAGE
 W @IOF
 Q
PAGE ; print one page
 N RX1,RX2 S RX1=RXN,RX2=RX1+1
1 W ?6+HOFF,NCPDP(302) ; I.D.
 W ?40+HOFF,NCPDP(301) ; GROUP I.D.
 W !
 W !
2 W ?10+HOFF,NCPDP(313),",",NCPDP(312) ; NAME (of insured)
 W ?53+HOFF ; PLAN NAME (insurance name?)
 W !
 W !
3 W ?10+HOFF,NCPDP(311),",",NCPDP(310) ; PATIENT NAME
 W ?44+HOFF,NCPDP(308) ; OTHER COVERAGE CODE
 W ?59+HOFF,NCPDP(303)
 W !
 W !
4 W ?14+HOFF,$$MM(NCPDP(304)) ; PATIENT DATE OF BIRTH
 W ?19+HOFF,$$DD(NCPDP(304))
 W ?23+HOFF,$$CCYY(NCPDP(304))
 W ?47+HOFF,NCPDP(305) ; PATIENT GENDER CODE
 W ?65+HOFF,NCPDP(306) ; PATIENT RELATIONSHIP CODE
 W !
 W !
5 W ?11+HOFF,ABSP("Site","Name") ; PHARMACY NAME
 W !
 W !
6 W ?11+HOFF,ABSP("Site","Addr") ; ADDRESS
 W ?46+HOFF,NCPDP(201) ; SERVICE PROVIDER I.D.
 W ?66 ; QUAL
 W !
 S X=ABSP("Site","Tax ID #") I X]"" W ?46+HOFF,"Tax ID #",X
 W !
7 W ?11+HOFF,ABSP("Site","City") ; CITY
 W ?47+HOFF,ABSP("Site","Phone") ; PHONE NO.
 W !
 W !
8 W ?16+HOFF,ABSP("Site","State")," ",ABSP("Site","Zip") ; STATE & ZIP
 W ?47+HOFF,ABSP("Site","Fax") ; FAX NO.
 W !
 W !
 W !
9 W ?11+HOFF,NCPDP(315) ; WORKERS COMP. INFORMATION - EMPLOYER NAME
 W !
 W !
10 W ?11+HOFF,NCPDP(316) ; ADDRESS
 W ?53,"Signature on file"
 W !
 W !
11 W ?11+HOFF,NCPDP(317) ; CITY
 W ?43+HOFF,NCPDP(318) ; STATE
 W ?56+HOFF,NCPDP(319) ; ZIP
 W !
 W !
12 W ?11+HOFF,NCPDP(327) ; CARRIER I.D.
 W ?45+HOFF ; EMPLOYER PHONE NO.
 W !
 W !
13 W ?11+HOFF,$$MM(NCPDP("RX",RX1,434)) ; DATE OF INJURY
 W ?16+HOFF,$$DD(NCPDP("RX",RX1,434))
 W ?21+HOFF,$$CCYY(NCPDP("RX",RX1,434))
 W ?38+HOFF,NCPDP("RX",RX1,435) ; CLAIM REFERENCE I.D.
 W !
 W !
14 D BILLINFO
 W ?68+HOFF,$$MONEY(NCPDP("RX",RX1,409)) ; INGREDIENT COST SUBMITTED
 W !
 W !
15 W ?68+HOFF,$$MONEY(NCPDP("RX",RX1,412)) ; DISPENSING FEE SUBMITTED
 W !
 W !
16 W ?68+HOFF,$$MONEY(NCPDP("RX",RX1,438)) ; INCENTIVE AMOUNT SUBMITTED
 W !
17 W ?5+HOFF,NCPDP("RX",RX1,402) ; PRESCRIPTION #
 W ?22+HOFF,$$MM(NCPDP("RX",RX1,414)) ; DATE WRITTEN
 W ?25+HOFF,$$DD(NCPDP("RX",RX1,414))
 W ?28+HOFF,$$CCYY(NCPDP("RX",RX1,414))
 W ?33+HOFF,$$MM(NCPDP("RX",RX1,401)) ; DATE FILLED
 W ?36+HOFF,$$DD(NCPDP("RX",RX1,401))
 W ?39+HOFF,$$CCYY(NCPDP("RX",RX1,401))
 W ?44+HOFF,$J(NCPDP("RX",RX1,403),2) ; REFILL #
 W ?47+HOFF,$$QTY(NCPDP("RX",RX1,442)) ; QUANTITY
 W ?59+HOFF,$J(NCPDP("RX",RX1,405),3) ; DAYS SUPPLY
 W !
18 I ABSP("RX",RX1,"RX IEN") D
 . W ?5+HOFF,$P(^PSRX(ABSP("RX",RX1,"RX IEN"),0),U)
 W ?68+HOFF ; OTHER AMOUNT SUBMITTED
 W !
 W !
19 W ?68+HOFF,$$MONEY(NCPDP("RX",RX1,410)) ; SALES TAX
 W !
20 W ?5+HOFF,NCPDP("RX",RX1,407) ; PRODUCT/SERVICE I.D. (NDC #)
 W ?27+HOFF,NCPDP("RX",RX1,408) ; DAW
 W ?31+HOFF,$$PANUM(NCPDP("RX",RX1,416)) ; PRIOR AUTH #
 W ?42+HOFF,$$PATYP(NCPDP("RX",RX1,416))
 W ?46+HOFF,NCPDP("RX",RX1,411) ; PRESCRIBER I.D.
 W !
 W ?5+HOFF,$E($P($G(^PSDRUG(+$G(ABSP("RX",RX1,"Drug IEN")),0)),U),1,40)
 W ?46+HOFF,$E($P($G(^VA(200,ABSP("RX",RX1,"Prescriber IEN"),0)),U),1,20)
 W ?68+HOFF,$$MONEY($$GROSSAMT(RX1))
 W !
 W !
21 W ?68+HOFF,$$MONEY(NCPDP("RX",RX1,433)) ; PATIENT PAID AMOUNT
 W !
22 W ?5+HOFF,NCPDP("RX",RX1,439) ; DUR CODES
 W ?9+HOFF,NCPDP("RX",RX1,440)
 W ?13+HOFF,NCPDP("RX",RX1,441)
 W ?17+HOFF,NCPDP("RX",RX1,423) ; BASIS OF COST DETERMINATION
 W ?20+HOFF ; PROVIDER I.D. ?
 W ?38+HOFF,NCPDP("RX",RX1,424) ; DIAGNOSIS CODE
 W !
23 W ?68+HOFF,$$MONEY(NCPDP("RX",RX1,431)) ; OTHER PAYOR AMOUNT
 W !
 W !
24 W ?68+HOFF,$$MONEY($$NETAMT(RX1))
 W !
 W ?5+HOFF,$$MM(NCPDP("RX",RX1,443)) ; OTHER PAYOR DATE
 W ?8+HOFF,$$DD(NCPDP("RX",RX1,443))
 W ?11+HOFF,$$CCYY(NCPDP("RX",RX1,443))
 W ?16+HOFF ; OTHER PAYOR I.D.
 W ?29+HOFF ; OTHER PAYOR REJECT CODES
 W ?49,$$MONEY(NCPDP("RX",RX1,426)) ; USUAL & CUSTOMARY AMOUNT
 W !
 W !
25 ; the second prescription
 I RX2>MAXRXN G 99 ; only one prescription on this page
 W ?68+HOFF,$$MONEY(NCPDP("RX",RX2,409))
 W !
 W !
26 W ?68+HOFF,$$MONEY(NCPDP("RX",RX2,412))
 W !
 W !
 W ?5+HOFF,NCPDP("RX",RX2,402)
 W ?23+HOFF,$$MM(NCPDP("RX",RX2,414))
 W ?26+HOFF,$$DD(NCPDP("RX",RX2,414))
 W ?29+HOFF,$$CCYY(NCPDP("RX",RX2,414))
 W ?34+HOFF,$$MM(NCPDP("RX",RX2,401))
 W ?37+HOFF,$$DD(NCPDP("RX",RX2,401))
 W ?40+HOFF,$$CCYY(NCPDP("RX",RX2,401))
 W ?44+HOFF,$J(NCPDP("RX",RX2,403),3)
 W ?47+HOFF,$$QTY(NCPDP("RX",RX2,442))
 W ?60+HOFF,$J(NCPDP("RX",RX2,405),3)
 W ?68+HOFF,$$MONEY(NCPDP("RX",RX2,438))
 W !
 I ABSP("RX",RX2,"RX IEN") D
 . W ?5+HOFF,$P(^PSRX(ABSP("RX",RX2,"RX IEN"),0),U)
 W !
27 W ?68+HOFF ; OTHER AMOUNT SUBMITTED
 W !
 W !
28 W ?5+HOFF,NCPDP("RX",RX2,407)
 W ?28+HOFF,NCPDP("RX",RX2,408)
 W ?31+HOFF,$$PANUM(NCPDP("RX",RX2,416))
 W ?41+HOFF,$$PATYP(NCPDP("RX",RX2,416))
 W ?46+HOFF,NCPDP("RX",RX2,411)
 W ?68+HOFF,$$MONEY(NCPDP("RX",RX2,410))
 W !
 W ?5+HOFF,$E($P($G(^PSDRUG(+$G(ABSP("RX",RX2,"Drug IEN")),0)),U),1,40)
 W ?46+HOFF,$E($P($G(^VA(200,ABSP("RX",RX2,"Prescriber IEN"),0)),U),1,20)
 W !
29 W ?68+HOFF,$$MONEY($$GROSSAMT(RX2))
 W !
 W !
30 W ?5+HOFF,NCPDP("RX",RX2,439)
 W ?8+HOFF,NCPDP("RX",RX2,440)
 W ?11+HOFF,NCPDP("RX",RX2,441)
 W ?18+HOFF,NCPDP("RX",RX2,423)
 W ?21+HOFF ; PROVIDER I.D.
 W ?39+HOFF,NCPDP("RX",RX2,424)
 W ?68+HOFF,$$MONEY(NCPDP("RX",RX2,433))
 W !
 W !
31 W ?68+HOFF,$$MONEY(NCPDP("RX",RX2,431))
 W !
 W !
32 W ?5+HOFF,$$MM(NCPDP("RX",RX2,443))
 W ?8+HOFF,$$DD(NCPDP("RX",RX2,443))
 W ?11+HOFF,$$CCYY(NCPDP("RX",RX2,443))
 W ?16+HOFF ; OTHER PAYER I.D.
 W ?31+HOFF ; OTHER PAYER REJECT CODES
 W ?49+HOFF,$$MONEY(NCPDP("RX",RX2,426))
 W ?68+HOFF,$$MONEY($$NETAMT(RX2))
 W !
99 ;
 Q
MONEY(X) ; format money amount
 I 'X Q "" ; zero amounts - we print nothing
 Q $J(X,8,2) ; 99999.99
MM(D) ; month part of the date
 Q:'D "" Q $E(D,5,6)
DD(D) ; day part of the date
 Q:'D "" Q $E(D,7,8)
CCYY(D) ; year part of the date
 Q:'D "" Q $E(D,1,4)
QTY(Q) ; quantity - metric decimal quantity now
 ; but avoid printing "." unless there is actually a decimal part
 S Q=Q/1000
 I Q#1 Q $J(Q,9,3)
 Q $J(Q,5)_"    "
PANUM(X) ; prior auth # ; first digit is type, second digit undef
 ; then 10 digits for the actual number
 S X=$E(X,3,12)
 Q $S(X:X,1:"") ; return null if it's a great big zero
PATYP(X) Q $S($$PANUM(X):$E(X),1:"") ; return null if number is zero
GROSSAMT(X) ;add it up - don't rely on Gross Amount Due field
 N T S T=0
 N F F F=409,412,438,410 S T=T+NCPDP("RX",X,F)
 Q T
NETAMT(X) ; compute it
 N T S T=0
 S T=$$GROSSAMT(X)
 N F F F=433,431 S T=T-NCPDP("RX",X,F)
 Q T
BILLINFO ;
 N A,B,X S X=ABSP("RX",RX1,"IEN57")
 S A=$P($G(^ABSPTL(X,0)),U,4) ; ILC A/R
 S B=$P($G(^ABSPTL(X,0)),U,15) ; ILC or other A/R
 I A!B D
 . I A S A=$P($G(^ABSBITMS(9002302,A,0)),U)_" `"_A
 . E  S A="`"_B
 . W "Bill #",A
 S A=$P($G(^ABSPTL(X,0)),U,7) ; visit
 I A D
 . S B=$P($G(^AUPNVSIT(A,"VCN")),U)
 . I B]"" W "   VCN ",B
 . E  W "   Visit `",A
 Q