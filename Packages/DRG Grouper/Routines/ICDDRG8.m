ICDDRG8 ;NEISC/GRR/EG - FIX SURGERY HIERARCHY ;03 MAR 89 [ 03/09/92  3:20 PM ]
 ;;8.0
 Q:$O(ICDODRG(0))'>0  K ICDJ,ICDJJ F ICDJ=0:0 S ICDJ=$O(ICDODRG(ICDJ)) Q:ICDJ'>0  S ICDJJ(ICDJ)="" D F
END ;EP                                              ;IHS/ANMC/MWR 03/09/92
 S ICDJ=$O(ICDJ(0)) Q:ICDJ'>0  S ICDJ=ICDJ(ICDJ) K ICDODRG S ICDODRG(ICDJ)="" Q
F ;EP                                              ;IHS/ANMC/MWR 03/09/92
 I ICDJ=471 S ICDJ(1)=ICDJ Q
 I ICDJ=217 S ICDJ(2)=ICDJ Q
 I ICDJ=209 S ICDJ(3)=ICDJ Q
 I ICDJ=210 S ICDJ(4)=ICDJ Q
 I ICDJ=213 S ICDJ(5)=ICDJ Q
 I ICDJ=214 S ICDJ(7)=ICDJ Q
 I ICDJ=216 S ICDJ(6)=ICDJ Q
 I ICDJ=218 S ICDJ(8)=ICDJ Q
 I ICDJ=223 S ICDJ(13)=ICDJ Q
 I ICDJ=221 S ICDJ(9)=ICDJ Q
 I ICDJ=231 S ICDJ(10)=ICDJ Q
 I ICDJ=226 S ICDJ(11)=ICDJ Q
 I ICDJ=230 S ICDJ(12)=ICDJ Q
 I ICDJ=228 S ICDJ(14)=ICDJ Q
 I ICDJ=232 S ICDJ(15)=ICDJ Q
 I ICDJ=225 S ICDJ(16)=ICDJ Q
 I ICDJ=224 S ICDJ(17)=ICDJ Q
 I ICDJ=229 S ICDJ(18)=ICDJ Q
 I ICDJ=233 S ICDJ(19)=ICDJ
 Q