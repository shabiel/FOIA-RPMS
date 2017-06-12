BGP5D21A ; IHS/CMI/LAB - measure 6 ;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
LOINC(A,B) ;EP
 NEW %
 S %=$P($G(^LAB(95.3,A,9999999)),U,2)
 I %]"",$D(^ATXAX(B,21,"B",%)) Q 1
 S %=$P($G(^LAB(95.3,A,0)),U)_"-"_$P($G(^LAB(95.3,A,0)),U,15)
 I $D(^ATXAX(B,21,"B",%)) Q 1
 Q ""
BLINDPL(P,EDATE) ;EP
 NEW %,X,Y,Z,T,G
 ;check for blindness on problem list
 S T=$O(^ATXAX("B","BGP BILATERAL BLINDNESS DXS",0))
 S (X,G)=0 F  S X=$O(^AUPNPROB("AC",P,X)) Q:X'=+X!(G)  D
 .Q:$P(^AUPNPROB(X,0),U,12)="D"  ;deleted problem so skip it
 .Q:$P(^AUPNPROB(X,0),U,12)="I"  ;inactive
 .Q:$P(^AUPNPROB(X,0),U,13)>EDATE  ;date of onset after time period
 .Q:$P(^AUPNPROB(X,0),U,8)>EDATE  ;added to problem list after time period
 .S Y=$P(^AUPNPROB(X,0),U)
 .Q:'$$ICD^BGP5UTL2(Y,T,9)
 .S G=1
 .Q
 Q G