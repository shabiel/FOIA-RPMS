ATXXB93 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1804,0N9T30Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0N9T3ZZ ",.01)
 ;;0N9T3ZZ 
 ;;9002226.02101,"1804,0N9T3ZZ ",.02)
 ;;0N9T3ZZ 
 ;;9002226.02101,"1804,0N9T3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0N9T40Z ",.01)
 ;;0N9T40Z 
 ;;9002226.02101,"1804,0N9T40Z ",.02)
 ;;0N9T40Z 
 ;;9002226.02101,"1804,0N9T40Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0N9T4ZZ ",.01)
 ;;0N9T4ZZ 
 ;;9002226.02101,"1804,0N9T4ZZ ",.02)
 ;;0N9T4ZZ 
 ;;9002226.02101,"1804,0N9T4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0N9V00Z ",.01)
 ;;0N9V00Z 
 ;;9002226.02101,"1804,0N9V00Z ",.02)
 ;;0N9V00Z 
 ;;9002226.02101,"1804,0N9V00Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0N9V0ZZ ",.01)
 ;;0N9V0ZZ 
 ;;9002226.02101,"1804,0N9V0ZZ ",.02)
 ;;0N9V0ZZ 
 ;;9002226.02101,"1804,0N9V0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0N9V30Z ",.01)
 ;;0N9V30Z 
 ;;9002226.02101,"1804,0N9V30Z ",.02)
 ;;0N9V30Z 
 ;;9002226.02101,"1804,0N9V30Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0N9V3ZZ ",.01)
 ;;0N9V3ZZ 
 ;;9002226.02101,"1804,0N9V3ZZ ",.02)
 ;;0N9V3ZZ 
 ;;9002226.02101,"1804,0N9V3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0N9V40Z ",.01)
 ;;0N9V40Z 
 ;;9002226.02101,"1804,0N9V40Z ",.02)
 ;;0N9V40Z 
 ;;9002226.02101,"1804,0N9V40Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0N9V4ZZ ",.01)
 ;;0N9V4ZZ 
 ;;9002226.02101,"1804,0N9V4ZZ ",.02)
 ;;0N9V4ZZ 
 ;;9002226.02101,"1804,0N9V4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NBR0ZX ",.01)
 ;;0NBR0ZX 
 ;;9002226.02101,"1804,0NBR0ZX ",.02)
 ;;0NBR0ZX 
 ;;9002226.02101,"1804,0NBR0ZX ",.03)
 ;;31
 ;;9002226.02101,"1804,0NBR0ZZ ",.01)
 ;;0NBR0ZZ 
 ;;9002226.02101,"1804,0NBR0ZZ ",.02)
 ;;0NBR0ZZ 
 ;;9002226.02101,"1804,0NBR0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NBR3ZX ",.01)
 ;;0NBR3ZX 
 ;;9002226.02101,"1804,0NBR3ZX ",.02)
 ;;0NBR3ZX 
 ;;9002226.02101,"1804,0NBR3ZX ",.03)
 ;;31
 ;;9002226.02101,"1804,0NBR3ZZ ",.01)
 ;;0NBR3ZZ 
 ;;9002226.02101,"1804,0NBR3ZZ ",.02)
 ;;0NBR3ZZ 
 ;;9002226.02101,"1804,0NBR3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NBR4ZX ",.01)
 ;;0NBR4ZX 
 ;;9002226.02101,"1804,0NBR4ZX ",.02)
 ;;0NBR4ZX 
 ;;9002226.02101,"1804,0NBR4ZX ",.03)
 ;;31
 ;;9002226.02101,"1804,0NBR4ZZ ",.01)
 ;;0NBR4ZZ 
 ;;9002226.02101,"1804,0NBR4ZZ ",.02)
 ;;0NBR4ZZ 
 ;;9002226.02101,"1804,0NBR4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NBS0ZX ",.01)
 ;;0NBS0ZX 
 ;;9002226.02101,"1804,0NBS0ZX ",.02)
 ;;0NBS0ZX 
 ;;9002226.02101,"1804,0NBS0ZX ",.03)
 ;;31
 ;;9002226.02101,"1804,0NBS0ZZ ",.01)
 ;;0NBS0ZZ 
 ;;9002226.02101,"1804,0NBS0ZZ ",.02)
 ;;0NBS0ZZ 
 ;;9002226.02101,"1804,0NBS0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NBS3ZX ",.01)
 ;;0NBS3ZX 
 ;;9002226.02101,"1804,0NBS3ZX ",.02)
 ;;0NBS3ZX 
 ;;9002226.02101,"1804,0NBS3ZX ",.03)
 ;;31
 ;;9002226.02101,"1804,0NBS3ZZ ",.01)
 ;;0NBS3ZZ 
 ;;9002226.02101,"1804,0NBS3ZZ ",.02)
 ;;0NBS3ZZ 
 ;;9002226.02101,"1804,0NBS3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NBS4ZX ",.01)
 ;;0NBS4ZX 
 ;;9002226.02101,"1804,0NBS4ZX ",.02)
 ;;0NBS4ZX 
 ;;9002226.02101,"1804,0NBS4ZX ",.03)
 ;;31
 ;;9002226.02101,"1804,0NBS4ZZ ",.01)
 ;;0NBS4ZZ 
 ;;9002226.02101,"1804,0NBS4ZZ ",.02)
 ;;0NBS4ZZ 
 ;;9002226.02101,"1804,0NBS4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NBT0ZX ",.01)
 ;;0NBT0ZX 
 ;;9002226.02101,"1804,0NBT0ZX ",.02)
 ;;0NBT0ZX 
 ;;9002226.02101,"1804,0NBT0ZX ",.03)
 ;;31
 ;;9002226.02101,"1804,0NBT0ZZ ",.01)
 ;;0NBT0ZZ 
 ;;9002226.02101,"1804,0NBT0ZZ ",.02)
 ;;0NBT0ZZ 
 ;;9002226.02101,"1804,0NBT0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NBT3ZX ",.01)
 ;;0NBT3ZX 
 ;;9002226.02101,"1804,0NBT3ZX ",.02)
 ;;0NBT3ZX 
 ;;9002226.02101,"1804,0NBT3ZX ",.03)
 ;;31
 ;;9002226.02101,"1804,0NBT3ZZ ",.01)
 ;;0NBT3ZZ 
 ;;9002226.02101,"1804,0NBT3ZZ ",.02)
 ;;0NBT3ZZ 
 ;;9002226.02101,"1804,0NBT3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NBT4ZX ",.01)
 ;;0NBT4ZX 
 ;;9002226.02101,"1804,0NBT4ZX ",.02)
 ;;0NBT4ZX 
 ;;9002226.02101,"1804,0NBT4ZX ",.03)
 ;;31
 ;;9002226.02101,"1804,0NBT4ZZ ",.01)
 ;;0NBT4ZZ 
 ;;9002226.02101,"1804,0NBT4ZZ ",.02)
 ;;0NBT4ZZ 
 ;;9002226.02101,"1804,0NBT4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NBV0ZX ",.01)
 ;;0NBV0ZX 
 ;;9002226.02101,"1804,0NBV0ZX ",.02)
 ;;0NBV0ZX 
 ;;9002226.02101,"1804,0NBV0ZX ",.03)
 ;;31
 ;;9002226.02101,"1804,0NBV0ZZ ",.01)
 ;;0NBV0ZZ 
 ;;9002226.02101,"1804,0NBV0ZZ ",.02)
 ;;0NBV0ZZ 
 ;;9002226.02101,"1804,0NBV0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NBV3ZX ",.01)
 ;;0NBV3ZX 
 ;;9002226.02101,"1804,0NBV3ZX ",.02)
 ;;0NBV3ZX 
 ;;9002226.02101,"1804,0NBV3ZX ",.03)
 ;;31
 ;;9002226.02101,"1804,0NBV3ZZ ",.01)
 ;;0NBV3ZZ 
 ;;9002226.02101,"1804,0NBV3ZZ ",.02)
 ;;0NBV3ZZ 
 ;;9002226.02101,"1804,0NBV3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NBV4ZX ",.01)
 ;;0NBV4ZX 
 ;;9002226.02101,"1804,0NBV4ZX ",.02)
 ;;0NBV4ZX 
 ;;9002226.02101,"1804,0NBV4ZX ",.03)
 ;;31
 ;;9002226.02101,"1804,0NBV4ZZ ",.01)
 ;;0NBV4ZZ 
 ;;9002226.02101,"1804,0NBV4ZZ ",.02)
 ;;0NBV4ZZ 
 ;;9002226.02101,"1804,0NBV4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NCR0ZZ ",.01)
 ;;0NCR0ZZ 
 ;;9002226.02101,"1804,0NCR0ZZ ",.02)
 ;;0NCR0ZZ 
 ;;9002226.02101,"1804,0NCR0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NCR3ZZ ",.01)
 ;;0NCR3ZZ 
 ;;9002226.02101,"1804,0NCR3ZZ ",.02)
 ;;0NCR3ZZ 
 ;;9002226.02101,"1804,0NCR3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NCR4ZZ ",.01)
 ;;0NCR4ZZ 
 ;;9002226.02101,"1804,0NCR4ZZ ",.02)
 ;;0NCR4ZZ 
 ;;9002226.02101,"1804,0NCR4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NCS0ZZ ",.01)
 ;;0NCS0ZZ 
 ;;9002226.02101,"1804,0NCS0ZZ ",.02)
 ;;0NCS0ZZ 
 ;;9002226.02101,"1804,0NCS0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NCS3ZZ ",.01)
 ;;0NCS3ZZ 
 ;;9002226.02101,"1804,0NCS3ZZ ",.02)
 ;;0NCS3ZZ 
 ;;9002226.02101,"1804,0NCS3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NCS4ZZ ",.01)
 ;;0NCS4ZZ 
 ;;9002226.02101,"1804,0NCS4ZZ ",.02)
 ;;0NCS4ZZ 
 ;;9002226.02101,"1804,0NCS4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NCT0ZZ ",.01)
 ;;0NCT0ZZ 
 ;;9002226.02101,"1804,0NCT0ZZ ",.02)
 ;;0NCT0ZZ 
 ;;9002226.02101,"1804,0NCT0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NCT3ZZ ",.01)
 ;;0NCT3ZZ 
 ;;9002226.02101,"1804,0NCT3ZZ ",.02)
 ;;0NCT3ZZ 
 ;;9002226.02101,"1804,0NCT3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NCT4ZZ ",.01)
 ;;0NCT4ZZ 
 ;;9002226.02101,"1804,0NCT4ZZ ",.02)
 ;;0NCT4ZZ 
 ;;9002226.02101,"1804,0NCT4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NCV0ZZ ",.01)
 ;;0NCV0ZZ 
 ;;9002226.02101,"1804,0NCV0ZZ ",.02)
 ;;0NCV0ZZ 
 ;;9002226.02101,"1804,0NCV0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NCV3ZZ ",.01)
 ;;0NCV3ZZ 
 ;;9002226.02101,"1804,0NCV3ZZ ",.02)
 ;;0NCV3ZZ 
 ;;9002226.02101,"1804,0NCV3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NCV4ZZ ",.01)
 ;;0NCV4ZZ 
 ;;9002226.02101,"1804,0NCV4ZZ ",.02)
 ;;0NCV4ZZ 
 ;;9002226.02101,"1804,0NCV4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NH005Z ",.01)
 ;;0NH005Z 
 ;;9002226.02101,"1804,0NH005Z ",.02)
 ;;0NH005Z 
 ;;9002226.02101,"1804,0NH005Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0NH035Z ",.01)
 ;;0NH035Z 
 ;;9002226.02101,"1804,0NH035Z ",.02)
 ;;0NH035Z 
 ;;9002226.02101,"1804,0NH035Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0NH045Z ",.01)
 ;;0NH045Z 
 ;;9002226.02101,"1804,0NH045Z ",.02)
 ;;0NH045Z 
 ;;9002226.02101,"1804,0NH045Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0NJ0XZZ ",.01)
 ;;0NJ0XZZ 
 ;;9002226.02101,"1804,0NJ0XZZ ",.02)
 ;;0NJ0XZZ 
 ;;9002226.02101,"1804,0NJ0XZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NJBXZZ ",.01)
 ;;0NJBXZZ 
 ;;9002226.02101,"1804,0NJBXZZ ",.02)
 ;;0NJBXZZ 
 ;;9002226.02101,"1804,0NJBXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NJWXZZ ",.01)
 ;;0NJWXZZ 
 ;;9002226.02101,"1804,0NJWXZZ ",.02)
 ;;0NJWXZZ 
 ;;9002226.02101,"1804,0NJWXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NP0X0Z ",.01)
 ;;0NP0X0Z 
 ;;9002226.02101,"1804,0NP0X0Z ",.02)
 ;;0NP0X0Z 
 ;;9002226.02101,"1804,0NP0X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0NP0X5Z ",.01)
 ;;0NP0X5Z 
 ;;9002226.02101,"1804,0NP0X5Z ",.02)
 ;;0NP0X5Z 
 ;;9002226.02101,"1804,0NP0X5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0NPBX0Z ",.01)
 ;;0NPBX0Z 
 ;;9002226.02101,"1804,0NPBX0Z ",.02)
 ;;0NPBX0Z 
 ;;9002226.02101,"1804,0NPBX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0NPBX4Z ",.01)
 ;;0NPBX4Z 
 ;;9002226.02101,"1804,0NPBX4Z ",.02)
 ;;0NPBX4Z 
 ;;9002226.02101,"1804,0NPBX4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0NPBXMZ ",.01)
 ;;0NPBXMZ 
 ;;9002226.02101,"1804,0NPBXMZ ",.02)
 ;;0NPBXMZ 
 ;;9002226.02101,"1804,0NPBXMZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NPWX0Z ",.01)
 ;;0NPWX0Z 
 ;;9002226.02101,"1804,0NPWX0Z ",.02)
 ;;0NPWX0Z 
 ;;9002226.02101,"1804,0NPWX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0NPWXMZ ",.01)
 ;;0NPWXMZ 
 ;;9002226.02101,"1804,0NPWXMZ ",.02)
 ;;0NPWXMZ 
 ;;9002226.02101,"1804,0NPWXMZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NQR0ZZ ",.01)
 ;;0NQR0ZZ 
 ;;9002226.02101,"1804,0NQR0ZZ ",.02)
 ;;0NQR0ZZ 
 ;;9002226.02101,"1804,0NQR0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NQR3ZZ ",.01)
 ;;0NQR3ZZ 
 ;;9002226.02101,"1804,0NQR3ZZ ",.02)
 ;;0NQR3ZZ 
 ;;9002226.02101,"1804,0NQR3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NQR4ZZ ",.01)
 ;;0NQR4ZZ 
 ;;9002226.02101,"1804,0NQR4ZZ ",.02)
 ;;0NQR4ZZ 
 ;;9002226.02101,"1804,0NQR4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NQRXZZ ",.01)
 ;;0NQRXZZ 
 ;;9002226.02101,"1804,0NQRXZZ ",.02)
 ;;0NQRXZZ 
 ;;9002226.02101,"1804,0NQRXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NQS0ZZ ",.01)
 ;;0NQS0ZZ 
 ;;9002226.02101,"1804,0NQS0ZZ ",.02)
 ;;0NQS0ZZ 
 ;;9002226.02101,"1804,0NQS0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NQS3ZZ ",.01)
 ;;0NQS3ZZ 
 ;;9002226.02101,"1804,0NQS3ZZ ",.02)
 ;;0NQS3ZZ 
 ;;9002226.02101,"1804,0NQS3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NQS4ZZ ",.01)
 ;;0NQS4ZZ 
 ;;9002226.02101,"1804,0NQS4ZZ ",.02)
 ;;0NQS4ZZ 
 ;;9002226.02101,"1804,0NQS4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NQSXZZ ",.01)
 ;;0NQSXZZ 
 ;;9002226.02101,"1804,0NQSXZZ ",.02)
 ;;0NQSXZZ 
 ;;9002226.02101,"1804,0NQSXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NQT0ZZ ",.01)
 ;;0NQT0ZZ 
 ;;9002226.02101,"1804,0NQT0ZZ ",.02)
 ;;0NQT0ZZ 
 ;;9002226.02101,"1804,0NQT0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NQT3ZZ ",.01)
 ;;0NQT3ZZ 
 ;;9002226.02101,"1804,0NQT3ZZ ",.02)
 ;;0NQT3ZZ 
 ;;9002226.02101,"1804,0NQT3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NQT4ZZ ",.01)
 ;;0NQT4ZZ 
 ;;9002226.02101,"1804,0NQT4ZZ ",.02)
 ;;0NQT4ZZ 
 ;;9002226.02101,"1804,0NQT4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NQTXZZ ",.01)
 ;;0NQTXZZ 
 ;;9002226.02101,"1804,0NQTXZZ ",.02)
 ;;0NQTXZZ 
 ;;9002226.02101,"1804,0NQTXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NQV0ZZ ",.01)
 ;;0NQV0ZZ 
 ;;9002226.02101,"1804,0NQV0ZZ ",.02)
 ;;0NQV0ZZ 
 ;;9002226.02101,"1804,0NQV0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NQV3ZZ ",.01)
 ;;0NQV3ZZ 
 ;;9002226.02101,"1804,0NQV3ZZ ",.02)
 ;;0NQV3ZZ 
 ;;9002226.02101,"1804,0NQV3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NQV4ZZ ",.01)
 ;;0NQV4ZZ 
 ;;9002226.02101,"1804,0NQV4ZZ ",.02)
 ;;0NQV4ZZ 
 ;;9002226.02101,"1804,0NQV4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NQVXZZ ",.01)
 ;;0NQVXZZ 
 ;;9002226.02101,"1804,0NQVXZZ ",.02)
 ;;0NQVXZZ 
 ;;9002226.02101,"1804,0NQVXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0NW0X0Z ",.01)
 ;;0NW0X0Z 
 ;;9002226.02101,"1804,0NW0X0Z ",.02)
 ;;0NW0X0Z 
 ;;9002226.02101,"1804,0NW0X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0NW0X4Z ",.01)
 ;;0NW0X4Z 
 ;;9002226.02101,"1804,0NW0X4Z ",.02)
 ;;0NW0X4Z 
 ;;9002226.02101,"1804,0NW0X4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0NW0X5Z ",.01)
 ;;0NW0X5Z 
 ;;9002226.02101,"1804,0NW0X5Z ",.02)
 ;;0NW0X5Z 
 ;;9002226.02101,"1804,0NW0X5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0NW0X7Z ",.01)
 ;;0NW0X7Z 
 ;;9002226.02101,"1804,0NW0X7Z ",.02)
 ;;0NW0X7Z 
 ;;9002226.02101,"1804,0NW0X7Z ",.03)
 ;;31