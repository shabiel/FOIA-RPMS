LROI ; IHS/DIR/FJE - LAB ORDER INFORMATION UPDATE 8/25/87 08:46 ;
 ;;5.2;LR;**1013**;JUL 15, 2002
 ;
 ;;5.2;LAB SERVICE;;Sep 27, 1994
 R !,"(N)ormal values or (C)ollection description?: ",LRLX:DTIME G LROI:LRLX="",END:LRLX="^",LROI:"CN"'[LRLX
L5 S DR=$S(LRLX["N":"2;3;100",LRLX["C":"2;3;6:9;51;200;300",1:"")
 S U="^",DIC="^LAB(60,",DIC(0)="AEOQZ",DIE=DIC D ^DIC G END:Y<1 S DA=+Y D ^DIE G L5
MIMN S DR="1.6:7",U="^",DIC="^LAB(61.2,",DIC(0)="AELMOQZ",DLAYGO=61,DIE=DIC D ^DIC G END:Y<1 S DA=+Y D ^DIE G MIMN
END K DIC,LRLX,DLAYGO Q