PSOPAT ;BHAM ISC/SAB - update pharmacy patient data ; 03/08/93 8:35
 ;;7.0;OUTPATIENT PHARMACY;**74,117**;DEC 1997
 ;Reference to ^PS(55, is supported by IA 2228
 I '$D(PSOPAR) D ^PSOLSET I '$D(PSOPAR) W $C(7),!,"Site Parameters must be Defined!",! G EX
2 W ! S PSOFROM=1,DIC("A")="Select Patient: ",DIC=2,DIC(0)="AEQMZ" D ^DIC G:"^"[X EX G:Y<0 2 S DFN=+Y S PSOLOUD=1 D:$P($G(^PS(55,DFN,0)),"^",6)'=2 EN^PSOHLUP(DFN) K PSOLOUD
 S DA=DFN,PI="" D ^PSODEM G 2:PI="^" G:'$P($G(PSOPAR),"^",22) P55
 S DIE="^DPT(",DR="[PSO OUTPT]" L +^DPT(DA):0 I '$T D MSG D EX G 2
 L +^PS(55,DA):0 I '$T D MSG D EX G 2 Q
 D ^DIE L -^DPT(DA)
P55 I '$D(^PS(55,DFN)) K DIC S DIC="^PS(55,",DIC(0)="LZ",(X,DINUM)=DFN K DD,DO D FILE^DICN D:$G(DFN)&($P($G(^PS(55,DFN,0)),"^",6)'=2) EN^PSOHLUP(DFN) K DIC
 I $G(DFN),$P($G(^PS(55,DFN,0)),"^")="" S $P(^PS(55,DFN,0),"^")=DFN K DIK S DA=DFN,DIK="^PS(55,",DIK(1)=".01^B" D EN^DIK K DIK S DA=DFN
 S DIE="^PS(55,",DR=".02;.03;.05;.04;1;D ELIG^PSORX1;3;40:41.1;106;106.1" W !!?5,">>PHARMACY PATIENT DATA<<",!
 D ^DIE,EX W !! G 2
 Q
EX L -^PS(55,+$G(DA)),-^DPT(+$G(DA))
 K DIC,X,Y,DIE,D0,DA,DFN,PI,DR,%,%Y,%X,C,DI,DIPGM,DQ,PSOFROM
 Q
MSG W $C(7),!,"Patient Data is Being Edited by Another User!",! Q