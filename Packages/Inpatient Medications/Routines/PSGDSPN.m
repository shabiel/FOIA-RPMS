PSGDSPN ;BIR/CML3-PRINT DISCHARGE ORDERS NEW PAGE ;21-Jun-2004 16:47;PLS
 ;;5.0; INPATIENT MEDICATIONS ;**20**;16 DEC 97
 ;
 ; Modified - IHS/CIA/PLS - 06/21/04 - Line NP+4
NP ;
 I 'CML K DIR S DIR(0)="E" W ! D ^DIR S NP=$S($D(DTOUT):"^",1:$E(X)) K DTOUT,DUOUT,DIRUT,DIROUT Q:NP="^"
 I CML W:'NC !!!?44,"PATIENT CONTINUED ON NEXT PAGE..." F Q=$Y:1:IOSL-5 W !
 S PG=PG+1 W:CML !?2,PPN,?40,PSSN,?78-$L(PDOB),PDOB I HDR<22 D ENHDR1^PSGDSP0 Q
 ; IHS/CIA/PLS - 06/21/04 - Removed reference to VA Form
 ;W:$Y @IOF W !?+HDR,"AUTHORIZED ABSENCE/DISCHARGE ",$P(HDR,"^",2),?73-$L(PG),"Page: "_PG,!?+PSGVAMC,$P(PSGVAMC,U,2),!?1,"VA FORM: 10-7978M",!?1,PPN,?40,PSSN,?60,PDOB
 W:$Y @IOF W !?+HDR,"AUTHORIZED ABSENCE/DISCHARGE ",$P(HDR,"^",2),?73-$L(PG),"Page: "_PG,!?+PSGVAMC,$P(PSGVAMC,U,2),!?1," ",!?1,PPN,?40,PSSN,?60,PDOB
 W:DRG]"" !,LINE,!,?56,"Schedule",?72,"Cost per",!," No.",?10,"Medication",?56,"Type",?72,"Dose" Q