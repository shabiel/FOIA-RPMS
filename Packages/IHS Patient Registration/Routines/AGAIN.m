AGAIN ;$ORDER THRU "B" X-REF ROUTINE [ 08/10/01  9:46 AM ]
 ;This Routine $ORDERS THRU "B" X-REF
 ;THE "B" X-REF IS THE .01 FIELD OF THE GLOBAL
 ;
START ;
 S NAME=""
 F  S NAME=$ORDER(^CLASSGBL("B",NAME)) Q:NAME=""  D SECOND
 Q
 ;
SECOND ;
 F RECNR=0:0 S RECNR=$ORDER(^CLASSGBL("B",NAME,RECNR)) Q:RECNR=""  D DISPLAY
 Q
 ;
DISPLAY ;
 W !,NAME,?30,RECNR
 ;You can use this RECNR to access other pieces of the Data Node
 W ?35,$PIECE(^CLASSGBL(RECNR,0),"^",2)
 W ?60,$PIECE(^CLASSGBL(RECNR,0),"^",3)
 Q