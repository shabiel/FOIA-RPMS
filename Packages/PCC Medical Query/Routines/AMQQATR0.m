AMQQATR0 ; IHS/CMI/THL - MAKES CODE FOR DYNAMIC SEARCH OPTIMIZATION ;
 ;;2.0;IHS PCC SUITE;;MAY 14, 2009
 ;-----
FILTERB ; ENTRY POINT FROM AMQQATR
 I $P(AMQQECPR,";",2)'="" G FB2
 S Z=$P(AMQQECPR,";")
 D FBT
 S AMQQECMP="I AMQQEVAL"_AMQQESBL_Z
 Q
 ;
FBT S Z=$S(Z?1.N1"/"1.N:(+Z/$P(Z,"/",2)),$E(Z)="N":0,$E(Z)="F":1,1:-1)
 Q
 ;
FB2 S Z=$P(AMQQECPR,";")
 D FBT
 S X(1)=Z,Z=$P(AMQQECPR,";",2)
 D FBT
 S X(2)=Z
 I AMQQESBL="><" S X(3)=.0000000001,X(1)=X(1)-X(3),X(2)=X(2)+X(3),AMQQECMP="I AMQQEVAL>"_X(1)_",AMQQEVAL<"_X(2) Q
 S AMQQECMP="I AMQQEVAL<"_X(1)_"!(AMQQEVAL>"_X(2)_")"
 Q
 ;
FILTERD ; ENTRY POINT FROM AMQQATR
FILTERN ; ENTRY POINT FROM AMQQATR
 I $P(AMQQECPR,";",2)="" S AMQQECMP="I AMQQEVAL"_AMQQESBL_+AMQQECPR Q
 S X(1)=+AMQQECPR
 S X(2)=$P(AMQQECPR,";",2)
 S AMQQECMP="I AMQQEVAL<"_X(1)_"!(AMQQEVAL>"_X(2)_")"
 I AMQQESBL="><"!(AMQQESBL="=") S X(3)=.0000001,X(1)=X(1)-X(3),X(2)=X(2)+X(3),AMQQECMP="I AMQQEVAL>"_X(1)_",AMQQEVAL<"_X(2) Q
 Q
 ;
DATE S AMQQECMP="I 1",X=$P(AMQQESBL,";")
 S AMQQEVAL=0
 I X'="<",X'="'>" S AMQQEVAL=$P(AMQQECPR,";")-.0000001
 I AMQQENCO=2 S AMQQECMP="I AMQQEVAL>"_$P(AMQQECPR,";",2)
 Q
 ;
FILTERS ; ENTRY POINT FROM AMQQATR
 S AMQQECMP="I AMQQEVAL"_AMQQESBL_""""_$P(AMQQECPR,":")_""""
 Q
 ;
FILTERF ; ENTRY POINT FROM AMQQATR
 I AMQQECPR[";" S AMQQECMP="I AMQQEVAL]"""_$P(AMQQECPR,";")_""",AMQQEVAL']"""_$P(AMQQECPR,";",2)_""",AMQQEVAL"_"'=""""" Q
 I AMQQESBL="$" S AMQQECMP="I $E(AMQQEVAL,1,"_$L(AMQQECPR)_")="""_AMQQECPR_"""" Q
 I AMQQESBL="#" S AMQQECMP="I $E(AMQQEVAL,"_($L(AMQQEVAL)-$L(AMQQECPR)+1)_",99)="""_AMQQECPR_"""" Q
 S AMQQECMP="I AMQQEVAL"_AMQQESBL_""""_AMQQECPR_""""
 Q
 ;
FILTERA ; ENTRY POINT FROM AMQQATR
 N %
 S %DT=""
 S X="T+1"
 D ^%DT
 S X(3)=Y
 S X(1)=+AMQQECPR
 S X(2)=$P(AMQQECPR,";",2)
 I AMQQESBL="'<" S X(1)=X(1)-1,AMQQESBL=">" G FAG
 I AMQQESBL="'>" S X(1)=X(1)+1,AMQQESBL="<" G FAL
FAG I AMQQESBL=">" S Z(1)=0,Z(2)=X(3)-((X(1)+1)*10000),AMQQESBL="><" G FSET
FAL I AMQQESBL="<" S Z(2)=99999999,Z(1)=DT-(X(1)*10000),AMQQESBL="><" G FSET
 I AMQQESBL="=" S Z(1)=DT-((X(1)+1)*10000),Z(2)=X(3)-(X(1)*10000),AMQQESBL="><" G FSET
 I AMQQESBL="'=" S Z(1)=DT-(X(1)*10000),Z(2)=X(3)-((X(1)+1)*10000),AMQQESBL="'><" G FSET
 I AMQQESBL="><" S Z(1)=DT-(X(2)*10000),Z(2)=X(3)-(X(1)*10000) G FSET
 S Z(1)=DT-(X(1)*10000)
 S Z(2)=X(3)-(X(2)*10000)
FSET I AMQQESBL="><" S AMQQECMP="I AMQQEVAL>"_Z(1)_",AMQQEVAL<"_Z(2) Q
 S AMQQECMP="I AMQQEVAL>"_Z(1)_"!(AMQQEVAL<"_Z(2)_")"
 Q
 ;
FILTERC Q
 ;