ICDDRG14 ;NEISC/GRR - FIX SURGERY HIERARCHY ;03 MAR 89
 ;;8.0
 ;
 G POST:ICDPD'["D" I ICDOR["c" S ICDRG=$S(ICDCC:370,1:371) Q
NOV I ICDOR["s"!(ICDOR["g") S ICDRG=$S(ICDOR["s":374,1:375) Q
 S ICDRG=$S(ICDSD["n"!(ICDPD["n"):372,1:373) Q
 ;
POST I ICDPD["d" S ICDRG=$S(ICDOR["O":377,1:376) Q
 S ICDRG=$O(ICDRG(0)) I ICDRG'>0 S ICDRG=469 Q
 X ^ICD(ICDRG,"MC") Q