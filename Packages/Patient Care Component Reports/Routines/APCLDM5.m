APCLDM5 ; IHS/CMI/LAB - DM AUDIT ;
 ;;2.0;IHS PCC SUITE;;MAY 14, 2009
 ;
 ;
EN ;ENTRY POINT FROM APCLDM1
 D HEADER
 D IDENT
 Q
HEADER ; Set node with report header info
 S APCLAREA=$P(^AUTTAREA($P(^AUTTLOC(DUZ(2),0),U,4),0),U) ;_" - "_$P(^(0),U)
 S APCLSU=$P(^AUTTSU($P(^AUTTLOC(DUZ(2),0),U,5),0),U)
 S APCLFAC=$P(^DIC(4,DUZ(2),0),U)
 I '$D(APCLFISC) D
 . S APCLDTE=APCLBDT_" - "_APCLEDT
 S (^TMP("APCL",$J,1000),^TMP("APCLCUML",$J,1000))=APCLTDTE
 S (^TMP("APCL",$J,1001),^TMP("APCLCUML",$J,1001))=$S($D(APCLDTE):APCLDTE,1:APCLFISC)
 S (^TMP("APCL",$J,1002),^TMP("APCLCUML",$J,1002))=APCLAREA
 S (^TMP("APCL",$J,1003),^TMP("APCLCUML",$J,1003))=APCLSU
 S (^TMP("APCL",$J,1004),^TMP("APCLCUML",$J,1004))=APCLFAC
 S (^TMP("APCL",$J,1005),^TMP("APCLCUML",$J,1005))=$P(^VA(200,DUZ,0),U)
 S ^TMP("APCL",$J,42)=$$FMTE^XLFDT(APCLED)
 S APCLUED=$S(APCLED>DT:DT,1:APCLED)
 Q
 ;
IDENT ; Pt identifying factors
 I APCLCUML S ^(1)=$G(^TMP("APCLCUML",$J,1))+1
 S Y=$P(^DPT(APCLPD,0),U,3) D DD^%DT
 S ^TMP("APCL",$J,500)=$P($G(^AUPNPAT(APCLPD,41,DUZ(2),0)),U,2)
 S ^TMP("APCL",$J,501)=Y
 S (^TMP("APCL",$J,502),APCLSEX)=$P(^DPT(APCLPD,0),U,2)
 S ^TMP("APCL",$J,504)=$P(^DPT(APCLPD,0),U)
 I APCLCUML D  S APCLSUB=2 D CUML
 . I APCLSEX="F" S APCLGOT1=1
 . E  S APCLGOT1=0
 S (APCLAGE,^TMP("APCL",$J,503))=(APCLED-$P(^DPT(APCLPD,0),U,3))\10000 I APCLCUML D
 . I APCLAGE<15 S APCLGOT1=1,APCLSUB=50 D CUML F APCLSUB=51,52,53 S APCLGOT1=0 D CUML
 . I APCLAGE>14&(APCLAGE<45) S APCLGOT1=1,APCLSUB=51 D CUML F APCLSUB=50,52,53 S APCLGOT1=0 D CUML
 . I APCLAGE>44&(APCLAGE<65) S APCLGOT1=1,APCLSUB=52 D CUML F APCLSUB=50,51,53 S APCLGOT1=0 D CUML
 . I APCLAGE>64 S APCLGOT1=1,APCLSUB=53 D CUML F APCLSUB=50,51,52 S APCLGOT1=0 D CUML
 K APCLAGE
 Q
 ;
CUML ; - ENTRY POINT - Set cumulative nodes
 I '$D(^TMP("APCLCUML",$J,APCLSUB)) S ^TMP("APCLCUML",$J,APCLSUB)=APCLGOT1_"/"_1
 E  S ^(APCLSUB)=$S(APCLGOT1:$P(^TMP("APCLCUML",$J,APCLSUB),"/")+1,1:$P(^TMP("APCLCUML",$J,APCLSUB),"/"))_"/"_($P(^(APCLSUB),"/",2)+1)
 Q
 ;
CLEAN ;EP
 K ^TMP("APCLDM FETCH",$J),^TMP("APCLDM DXVS",$J),^TMP("APCLDM VST",$J)
 K APCLDX,APCLVST,APCLDXVS,APCLHT,APCLMEAS,APCLL,APCLTOT,APCLMDFN,APCLVDFN,APCLYES,APCLPOD,APCLCL1,APCLCL2,APCLX,APCLY,APCLEYE1,APCLEYE2,APCLPCL1,APCLPCL2,APCLPCL3,APCLPRD,APCLPRV,APCLTD,APCLFDX
 K APCLDAYS,APCLDP,APCLHTK1
 K APCLAREA,APCLSU,APCLFAC,APCLDTE,APCLI,APCLSEX,APCLSUB,APCLGOT1,APCLER,APCLERTX,APCLHTNE,APCLDOO,APCLLL,APCLPCL
 K APCLRTYP,APCLVMED,APCLW
 Q
 ;