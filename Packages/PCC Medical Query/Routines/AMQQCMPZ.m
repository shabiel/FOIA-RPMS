AMQQCMPZ ;IHS/CMI/THL - TURBO CODE FOR LAB RESULTS ;
 ;;2.0;IHS PCC SUITE;**2**;MAY 14, 2009
 ;-----
TURB51 ; ENTRY POINT FROM AMQQCMP1
 N AMQQEXFL
 S AMQQEXFL="^AUPNVSK"
 D TURB5
 Q
 ;
TURB81 ; ENTRY POINT FROM AMQQCMP1
 N AMQQEXFL,AMQQEXSP
 S AMQQEXFL="^AUPNVXAM"
TURB8 S %=$P(^AMQQ(1,+Q,0),U,15)
 S AMQQLINO=2
 S C=$P(Q,U,15)
 S A=$P(C,";",4)
 S B=$P(C,";",5)
 I 'A S A=0 I 'B S A="",B=0
 I A=B S A=A-.1
 I A=.9 S A=0
 ;PATCH XXX
 S AMQQEXSP=";"
 I AMQQEXFL["^AUPNVXAM",A=-999999999 S AMQQEXSP=":"
 S AMQV(1)="S AMQP(.1)="""_%_AMQQEXSP_A_""",AMQP(.11)="""_%_";"_B_""" X AMQV(2)"
 ;PATCH XXX
 D TURBLAB
 D KILL
 Q
 ;
TURBLAB N W,AMQQTG
 S AMQQTG=$S('$D(AMQQEXFL):"^AUPNVLAB",1:AMQQEXFL)
 S AMQV(AMQQLINO)="F  S %=$O("_AMQQTG_"(""AQ"",AMQP(.1))) S:((AMQP(.1)=99999999999)!(%="""")!(%]AMQP(.11))) %=""99999;999"" K:"
 S AMQV(AMQQLINO)=AMQV(AMQQLINO)_%_"'=+% ^UTILITY(""AMQQ TEMP"",$J) Q:"_%_"'=+%  S AMQP(.1)=% X AMQV("_(AMQQLINO+1)_")"
 S AMQQLINO=AMQQLINO+1
 S W="F AMQP(.2)=0:0 Q:"_%_"'=+AMQP(.1)  S AMQP(.2)=$O("_AMQQTG_"(""AQ"",AMQP(.1),AMQP(.2))) Q:'AMQP(.2)  S %=$P("
 S W=W_AMQQTG_"(AMQP(.2),0),U,2) I '$D(^UTILITY(""AMQQ TEMP"",$J,%)) S ^(%)="""",AMQP(0)=% X AMQV("_(AMQQLINO+1)_")"
 S AMQV(AMQQLINO)=W
 S AMQQLINO=AMQQLINO+1
 Q
 ;
TSETLAB S A=$E("000000000",1,E-$L(A\1))_A,B=$E("000000000",1,E-$L(B\1))_B
 K E,F
 Q
 ;
TURB5 S %=$P(^AMQQ(1,+Q,0),U,15)
 S AMQQLINO=2
 S C=$P(Q,U,15)
 S A=$P(C,";",4)
 S B=$P(C,";",5)
 I A=B S A=A-.000001
 S E=4
 D TSETLAB
 I '$D(AMQQEXFL),$D(^AMQQ(5,"LC",+Q)) D COLAB G T51
 S AMQV(1)="S AMQP(.1)="""_%_";"_A_""",AMQP(.11)="""_%_";"_B_""" X AMQV(2)"
T51 D TURBLAB
 D KILL
 Q
 ;
TURB6 S %=$P(^AMQQ(1,+Q,0),U,15)
 S AMQQLINO=2
 S C=$P(Q,U,15)
 S A=$P(C,";",4)
 S B=$P(C,";",5)
 S:A="-" A=-2
 S:A=B A=A-.1
 I $E(A)="." S A=0_A
 I $E(B)="." S B=0_B
 S AMQV(1)="S AMQP(.1)="""_%_";"_A_""",AMQP(.11)="""_%_";"_B_""" X AMQV(2)"
 D TURBLAB
 D KILL
 Q
 ;
TURB7 S %=$P(^AMQQ(1,+Q,0),U,15)
 S AMQQLINO=2
 S C=$P(Q,U,15)
 S A=$P(C,";",4)
 S B=$P(C,";",5)
 I 'A S A=0 I 'B S A="",B=0
 I A=B S A=A-.1
 S E=9
 D TSETLAB
 I A=-999999999 S A=""
 I A="00000000.99999999" S A="000000000"
 S AMQV(1)="S AMQP(.1)="""_%_";"_A_""",AMQP(.11)="""_%_";"_B_""" X AMQV(2)"
 D TURBLAB
 D KILL
 Q
 ;
TURB11 ; ENTRY POINT FROM AMQQCMP1
 S %=$P(Q,U,15)
 S %=$P(%,";",4)
 I %=0!(%="A") D TURB110 Q
 S %=+$P(^AMQQ(1,+Q,2),"AUPNVIMM;",2)_";"_%
 S AMQQLINO=3
 S AMQV(1)="S AMQP(0)=0 F AMQP(2.11)=0:0 K:AMQP(0)=99999999999 ^UTILITY(""AMQQ TEMP"",$J) Q:AMQP(0)=99999999999  S AMQP(2.11)=$O(^AUPNVIMM(""AQ"","""_%_""",AMQP(2.11))) Q:'AMQP(2.11)  X AMQV(2)"
 S AMQV(2)="S %=$P(^AUPNVIMM(AMQP(2.11),0),U,2) I $D(^DPT(%)),'$D(^UTILITY(""AMQQ TEMP"",$J,%)) S ^(%)="""",AMQP(0)=% X AMQV(3)"
 K %
 Q
 ;
TURB110 S AMQQLINO=4
 S (AMQQ1,%)=":"_$P(^AMQQ(1,+Q,2),";",2)_":"
 I $L(%,":")>2 D  I 1
 .S AMQV(1)="F AMQQJ=2:1 S AMQP(2.111)=$P(AMQQ1,"":"",AMQQJ)_"":"" Q:'AMQP(2.111)  S AMQPX=AMQP(2.111),AMQP(0)=0 "
 .S AMQV(1)=AMQV(1)_"F  K:AMQP(0)=99999999999 ^UTILITY(""AMQQ TEMP"",$J) Q:AMQP(0)=99999999999  S AMQP(2.111)=$O(^AUPNVIMM(""AQ"",AMQP(2.111))) Q:AMQP(2.111)'[+AMQPX  X AMQV(2)"
 E  S AMQV(1)="S AMQP(0)=0,AMQP(2.111)="""_%_""" F  K:AMQP(0)=99999999999 ^UTILITY(""AMQQ TEMP"",$J) Q:AMQP(0)=99999999999  S AMQP(2.111)=$O(^AUPNVIMM(""AQ"",AMQP(2.111))) Q:+AMQP(2.111)'="""_+%_"""  X AMQV(2)"
 S AMQV(2)="F AMQP(2.11)=0:0 Q:AMQP(0)=99999999999  S AMQP(2.11)=$O(^AUPNVIMM(""AQ"",AMQP(2.111),AMQP(2.11))) Q:'AMQP(2.11)  X AMQV(3)"
 S AMQV(3)="S %=$P(^AUPNVIMM(AMQP(2.11),0),U,2) I $D(^DPT(%)),'$D(^UTILITY(""AMQQ TEMP"",$J,%)) S ^(%)="""",AMQP(0)=% X AMQV(4)"
 Q
 ;
TURB20 S AMQQLINO=3
 S %=$P(^AMQQ(1,+Q,0),U,3)
 S %=^DIC(%,0,"GL")
 S X=$P(Q,U,15)
 S X=$P(X,";",4)
 S AMQV(1)="F AMQP(.1)=0:0 S AMQP(.1)=$O(^UTILITY(""AMQQ TAX"",$J,"_X_",AMQP(.1))) K:'AMQP(.1) ^UTILITY(""AMQQ TEMP"",$J) Q:'AMQP(.1)  F AMQP(.11)=0:0 S AMQP(.11)=$O("_%_"""B"",AMQP(.1),AMQP(.11))) Q:'AMQP(.11)  X AMQV(2)"
 S AMQV(2)="S %=$P("_%_"AMQP(.11),0),U,2) I %,'$D(^UTILITY(""AMQQ TEMP"",$J,%)) S ^(%)="""",AMQP(0)=% X AMQV(3)"
 K %
 Q
 ;
TURB9 S AMQQLINO=4
 S X=$P(Q,U,15)
 S X=$P(X,";",4)
 S %=$S($D(AMQQEXFL):AMQQEXFL,1:"^AUPNVLAB")
 S AMQV(1)="S AMQP(.1)="""" F  K:$G(AMQP(0))=99999999999 ^UTILITY(""AMQQ TEMP"",$J) Q:$G(AMQP(0))=99999999999  S AMQP(.1)=$O(^UTILITY(""AMQQ TAX"",$J,"_X_",AMQP(.1))) K:AMQP(.1)="""" ^UTILITY(""AMQQ TEMP"",$J) Q:AMQP(.1)=""""  X AMQV(2)"
 S AMQV(2)="F AMQP(.11)=0:0 Q:$G(AMQP(0))=99999999999  S AMQP(.11)=$O("_%_"(""AQ"",("""_$P(^AMQQ(1,+Q,0),U,15)_";""_AMQP(.1)),AMQP(.11))) Q:'AMQP(.11)  X AMQV(3)"
 S AMQV(3)="S %=$P("_%_"(AMQP(.11),0),U,2) I %,'$D(^UTILITY(""AMQQ TEMP"",$J,%)) S ^(%)="""",AMQP(0)=% X AMQV(4)"
 K %
 Q
 ;
KILL K %,A,B,C,E,F,J,N,Q,W,X,Z
 Q
 ;
COLAB N X,N,Z,J S X=""
 S Z=$P($G(^AMQQ(1,+Q,2)),";",2)
 F J=1:1 S N=$P(Z,":",J) Q:'N  S N=N\1,X=X_N_U
 S AMQV(1)="F AMQP(.01)=1:1 S AMQP(""LAB"")=$P("""_X_""",U,AMQP(.01)) Q:'AMQP(""LAB"")  Q:$G(AMQP(0))=99999999999  S AMQP(.1)=AMQP(""LAB"")_"";"_A_""",AMQP(.11)=AMQP(""LAB"")_"";"_B_""" X AMQV(2)"
 S %="AMQP(""LAB"")"
 Q
 ;
TURB500 S %=5 G TURBDXPR ; ENTRY POINT FROM AMQQCMP1
TURB600 S %=6 G TURBDXPR ; ENTRY POINT FROM AMQQCMP1
TURB700 S %=7 G TURBDXPR ; ENTRY POINT FROM AMQQCMP1
TURB800 S %=8 G TURBDXPR ; ENTRY POINT FROM AMQQCMP1
TURB900 S %=9 G TURBDXPR ; ENTRY POINT FROM AMQQCMP1
TURBDXPR S AMQQEXFL="^AUPNVDXP"
 D @("TURB"_%)
 Q
 ;