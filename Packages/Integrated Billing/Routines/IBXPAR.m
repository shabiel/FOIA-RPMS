IBXPAR ; GENERATED FROM 'IB EDIT MCCR PARM' INPUT TEMPLATE(#2561), FILE 350.9;11/29/04
 D DE G BEGIN
DE S DIE="^IBE(350.9,",DIC=DIE,DP=350.9,DL=1,DIEL=0,DU="" K DG,DE,DB Q:$O(^IBE(350.9,DA,""))=""
 I $D(^(0)) S %Z=^(0) S %=$P(%Z,U,12) S:%]"" DE(22)=% S %=$P(%Z,U,15) S:%]"" DE(24)=%
 I $D(^(1)) S %Z=^(1) S %=$P(%Z,U,1) S:%]"" DE(10)=% S %=$P(%Z,U,2) S:%]"" DE(11)=% S %=$P(%Z,U,4) S:%]"" DE(31)=% S %=$P(%Z,U,5) S:%]"" DE(3)=% S %=$P(%Z,U,6) S:%]"" DE(4)=% S %=$P(%Z,U,7) S:%]"" DE(35)=% S %=$P(%Z,U,8) S:%]"" DE(12)=%
 I  S %=$P(%Z,U,10) S:%]"" DE(29)=% S %=$P(%Z,U,14) S:%]"" DE(6)=% S %=$P(%Z,U,15) S:%]"" DE(17)=% S %=$P(%Z,U,16) S:%]"" DE(18)=% S %=$P(%Z,U,17) S:%]"" DE(19)=% S %=$P(%Z,U,18) S:%]"" DE(20)=% S %=$P(%Z,U,19) S:%]"" DE(21)=%
 I  S %=$P(%Z,U,20) S:%]"" DE(30)=% S %=$P(%Z,U,21) S:%]"" DE(5)=% S %=$P(%Z,U,22) S:%]"" DE(15)=% S %=$P(%Z,U,23) S:%]"" DE(16)=% S %=$P(%Z,U,25) S:%]"" DE(7)=% S %=$P(%Z,U,27) S:%]"" DE(34)=% S %=$P(%Z,U,28) S:%]"" DE(23)=%
 I  S %=$P(%Z,U,29) S:%]"" DE(25)=% S %=$P(%Z,U,30) S:%]"" DE(26)=% S %=$P(%Z,U,31) S:%]"" DE(32)=%
 I $D(^(2)) S %Z=^(2) S %=$P(%Z,U,7) S:%]"" DE(33)=%
 K %Z Q
 ;
W W !?DL+DL-2,DLB_": "
 Q
O D W W Y W:$X>45 !?9
 I $L(Y)>19,'DV,DV'["I",(DV["F"!(DV["K")) G RW^DIR2
 W:Y]"" "// " I 'DV,DV["I",$D(DE(DQ))#2 S X="" W "  (No Editing)" Q
TR R X:DTIME E  S (DTOUT,X)=U W $C(7)
 Q
A K DQ(DQ) S DQ=DQ+1
B G @DQ
RE G PR:$D(DE(DQ)) D W,TR
N I X="" G NKEY:$D(^DD("KEY","F",DP,DIFLD)),A:DV'["R",X:'DV,X:D'>0,A
RD G QS:X?."?" I X["^" D D G ^DIE17
 I X="@" D D G Z^DIE2
 I X=" ",DV["d",DV'["P",$D(^DISV(DUZ,"DIE",DLB)) S X=^(DLB) I DV'["D",DV'["S" W "  "_X
T G M^DIE17:DV,^DIE3:DV["V",P:DV'["S" X:$D(^DD(DP,DIFLD,12.1)) ^(12.1) I X?.ANP D SET I 'DDER X:$D(DIC("S")) DIC("S") I  W:'$D(DB(DQ)) "  "_% G V
 K DDER G X
P I DV["P" S DIC=U_DU,DIC(0)=$E("EN",$D(DB(DQ))+1)_"M"_$E("L",DV'["'") S:DIC(0)["L" DLAYGO=+$P(DV,"P",2) G:DV["*" AST^DIED D NOSCR^DIED S X=+Y,DIC=DIE G X:X<0
 G V:DV'["N" D D I $L($P(X,"."))>24 K X G Z
 I $P(DQ(DQ),U,5)'["$",X?.1"-".N.1".".N,$P(DQ(DQ),U,5,99)["+X'=X" S X=+X
V D @("X"_DQ) K YS
Z K DIC("S"),DLAYGO I $D(X),X'=U D:$G(DE(DW,"INDEX")) SAVEVALS G:'$$KEYCHK UNIQFERR^DIE17 S DG(DW)=X S:DV["d" ^DISV(DUZ,"DIE",DLB)=X G A
X W:'$D(ZTQUEUED) $C(7),"??" I $D(DB(DQ)) G Z^DIE17
 S X="?BAD"
QS S DZ=X D D,QQ^DIEQ G B
D S D=DIFLD,DQ(DQ)=DLB_U_DV_U_DU_U_DW_U_$P($T(@("X"_DQ))," ",2,99) Q
Y I '$D(DE(DQ)) D O G RD:"@"'[X,A:DV'["R"&(X="@"),X:X="@" S X=Y G N
PR S DG=DV,Y=DE(DQ),X=DU I $D(DQ(DQ,2)) X DQ(DQ,2) G RP
R I DG["P",@("$D(^"_X_"0))") S X=+$P(^(0),U,2) G RP:'$D(^(Y,0)) S Y=$P(^(0),U),X=$P(^DD(X,.01,0),U,3),DG=$P(^(0),U,2) G R
 I DG["V",+Y,$P(Y,";",2)["(",$D(@(U_$P(Y,";",2)_"0)")) S X=+$P(^(0),U,2) G RP:'$D(^(+Y,0)) S Y=$P(^(0),U) I $D(^DD(+X,.01,0)) S DG=$P(^(0),U,2),X=$P(^(0),U,3) G R
 X:DG["D" ^DD("DD") I DG["S" S %=$P($P(";"_X,";"_Y_":",2),";") S:%]"" Y=%
RP D O I X="" S X=DE(DQ) G A:'DV,A:DC<2,N^DIE17
I I DV'["I",DV'["#" G RD
 D E^DIE0 G RD:$D(X),PR
 Q
SET N DIR S DIR(0)="SV"_$E("o",$D(DB(DQ)))_U_DU,DIR("V")=1
 I $D(DB(DQ)),'$D(DIQUIET) N DIQUIET S DIQUIET=1
 D ^DIR I 'DDER S %=Y(0),X=Y
 Q
SAVEVALS S @DIEZTMP@("V",DP,DIIENS,DIFLD,"O")=$G(DE(DQ)) S:$D(^("F"))[0 ^("F")=$G(DE(DQ))
 I $D(DE(DW,"4/")) S @DIEZTMP@("V",DP,DIIENS,DIFLD,"4/")=""
 E  K @DIEZTMP@("V",DP,DIIENS,DIFLD,"4/")
 Q
NKEY W:'$D(ZTQUEUED) "??  Required key field" S X="?BAD" G QS
KEYCHK() Q:$G(DE(DW,"KEY"))="" 1 Q @DE(DW,"KEY")
BEGIN S DNM="IBXPAR",DQ=1
 N DIEZTMP,DIEZAR,DIEZRXR,DIIENS,DIXR K DIEFIRE,DIEBADK S DIEZTMP=$$GETTMP^DIKC1("DIEZ")
 M DIEZAR=^DIE(2561,"AR") S DICRREC="TRIG^DIE17"
 S:$D(DTIME)[0 DTIME=300 S D0=DA,DIIENS=DA_",",DIEZ=2561,U="^"
1 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=1 D X1 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X1 I '$D(IBDR) S IBDR="1,2,3,4,5"
 Q
2 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=2 D X2 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X2 S:IBDR'["1" Y="@2"
 Q
3 S DW="1;5",DV="RF",DU="",DLB="FEDERAL TAX NUMBER",DIFLD=1.05
 G RE
X3 K:$L(X)>10!($L(X)<10)!'(X?2N1"-"7N) X
 I $D(X),X'?.ANP K X
 Q
 ;
4 S DW="1;6",DV="RF",DU="",DLB="BLUE CROSS/SHIELD PROVIDER #",DIFLD=1.06
 G RE
X4 K:$L(X)>13!($L(X)<3) X
 I $D(X),X'?.ANP K X
 Q
 ;
5 S DW="1;21",DV="F",DU="",DLB="MEDICARE PROVIDER NUMBER",DIFLD=1.21
 G RE
X5 K:$L(X)>8!($L(X)<1) X
 I $D(X),X'?.ANP K X
 Q
 ;
6 S DW="1;14",DV="RP49'",DU="",DLB="MAS SERVICE POINTER",DIFLD=1.14
 S DU="DIC(49,"
 G RE
X6 Q
7 S DW="1;25",DV="P40.8",DU="",DLB="DEFAULT DIVISION",DIFLD=1.25
 S DU="DG(40.8,"
 G RE
X7 Q
8 S DQ=9 ;@2
9 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=9 D X9 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X9 S:IBDR'["2" Y="@3"
 Q
10 S DW="1;1",DV="F",DU="",DLB="NAME OF CLAIM FORM SIGNER",DIFLD=1.01
 G RE
X10 K:$L(X)>20!($L(X)<2) X
 I $D(X),X'?.ANP K X
 Q
 ;
11 S DW="1;2",DV="F",DU="",DLB="TITLE OF CLAIM FORM SIGNER",DIFLD=1.02
 G RE
X11 K:$L(X)>20!($L(X)<2) X
 I $D(X),X'?.ANP K X
 Q
 ;
12 S DW="1;8",DV="RP200'",DU="",DLB="BILLING SUPERVISOR NAME",DIFLD=1.08
 S DU="VA(200,"
 G RE
X12 Q
13 S DQ=14 ;@3
14 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=14 D X14 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X14 S:IBDR'["3" Y="@4"
 Q
15 S DW="1;22",DV="S",DU="",DLB="MULTIPLE FORM TYPES",DIFLD=1.22
 S DU="1:YES;0:NO;"
 G RE
X15 Q
16 S DW="1;23",DV="S",DU="",DLB="CAN INITIATOR AUTHORIZE?",DIFLD=1.23
 S DU="1:YES;0:NO;"
 G RE
X16 Q
17 S DW="1;15",DV="S",DU="",DLB="CAN CLERK ENTER NON-PTF CODES?",DIFLD=1.15
 S DU="1:YES;0:NO;"
 G RE
X17 Q
18 S DW="1;16",DV="S",DU="",DLB="ASK HINQ IN MCCR",DIFLD=1.16
 S DU="1:YES;0:NO;"
 G RE
X18 Q
19 S DW="1;17",DV="S",DU="",DLB="USE OP CPT SCREEN?",DIFLD=1.17
 S DU="1:YES;0:NO;"
 G RE
X19 Q
20 S DW="1;18",DV="*P399.2'",DU="",DLB="DEFAULT AMB SURG REV CODE",DIFLD=1.18
 S DU="DGCR(399.2,"
 G RE
X20 S DIC("S")="I $P(^(0),U,3)" D ^DIC K DIC S DIC=DIE,X=+Y K:Y<0 X
 Q
 ;
21 S DW="1;19",DV="S",DU="",DLB="TRANSFER PROCEDURES TO SCHED?",DIFLD=1.19
 S DU="1:YES;0:NO;"
 G RE
X21 Q
22 S DW="0;12",DV="D",DU="",DLB="PER DIEM START DATE",DIFLD=.12
 G RE
X22 S %DT="EX" D ^%DT S X=Y K:3991231<X!(2901105>X) X
 Q
 ;
23 S DW="1;28",DV="*P399.2'",DU="",DLB="DEFAULT RX REFILL REV CODE",DIFLD=1.28
 S DU="DGCR(399.2,"
 G RE
X23 S DIC("S")="I $P(^(0),U,3)" D ^DIC K DIC S DIC=DIE,X=+Y K:Y<0 X
 Q
 ;
24 S DW="0;15",DV="S",DU="",DLB="SUPPRESS MT INS BULLETIN",DIFLD=.15
 S DU="1:YES;0:NO;"
 G RE
X24 Q
25 S DW="1;29",DV="P80'",DU="",DLB="DEFAULT RX REFILL DX",DIFLD=1.29
 S DU="ICD9("
 G RE
X25 Q
26 S DW="1;30",DV="P81'",DU="",DLB="DEFAULT RX REFILL CPT",DIFLD=1.3
 S DU="ICPT("
 G RE
X26 Q
27 S DQ=28 ;@4
28 D:$D(DG)>9 F^DIE17,DE S Y=U,DQ=28 D X28 D:$D(DIEFIRE)#2 FIREREC^DIE17 G A:$D(Y)[0,A:Y=U S X=Y,DIC(0)="F",DW=DQ G OUT^DIE17
X28 S:IBDR'["4" Y="@5"
 Q
29 S DW="1;10",DV="S",DU="",DLB="PRINT '001' FOR TOTAL CHARGES?",DIFLD=1.1
 S DU="1:YES;0:NO;"
 G RE
X29 Q
30 S DW="1;20",DV="S",DU="",DLB="HOLD MT BILLS W/INS",DIFLD=1.2
 S DU="1:YES;0:NO;"
 G RE
X30 Q
31 S DW="1;4",DV="F",DU="",DLB="REMARKS TO APPEAR ON EACH FORM",DIFLD=1.04
 G RE
X31 K:$L(X)>39!($L(X)<2) X
 I $D(X),X'?.ANP K X
 Q
 ;
32 S DW="1;31",DV="NJ2,0",DU="",DLB="UB-92 ADDRESS COLUMN",DIFLD=1.31
 G RE
X32 K:+X'=X!(X>80)!(X<1)!(X?.E1"."1N.N) X
 Q
 ;
33 S DW="2;7",DV="F",DU="",DLB="CANCELLATION REMARK FOR FISCAL",DIFLD=2.07
 G RE
X33 K:$L(X)>75!($L(X)<3)!'(X?1A.E) X
 I $D(X),X'?.ANP K X
 Q
 ;
34 S DW="1;27",DV="NJ2,0",DU="",DLB="HCFA 1500 ADDRESS COLUMN",DIFLD=1.27
 G RE
X34 K:+X'=X!(X>80)!(X<1)!(X?.E1"."1N.N) X
 Q
 ;
35 S DW="1;7",DV="P3.8'",DU="",DLB="BILL CANCELLATION MAILGROUP",DIFLD=1.07
 S DU="XMB(3.8,"
 G RE
X35 Q
36 D:$D(DG)>9 F^DIE17 G ^IBXPAR1