ACHSCR15 ; COMPILED XREF FOR FILE #9002080.018 ; 11/08/10
 ; 
 S DA=0
A1 ;
 I $D(DISET) K DIKLM S:DIKM1=1 DIKLM=1 G @DIKM1
0 ;
A S DA=$O(^ACHSF(DA(1),18,DA)) I DA'>0 S DA=0 G END
1 ;
 S DIKZ(0)=$G(^ACHSF(DA(1),18,DA,0))
 S X=$P(DIKZ(0),U,1)
 I X'="" S ^ACHSF(DA(1),18,"B",$E(X,1,30),DA)=""
 S X=$P(DIKZ(0),U,2)
 I X'="" S ^ACHSF("HVEA",X,DA(1),DA)=""
 G:'$D(DIKLM) A Q:$D(DISET)
END G ^ACHSCR16