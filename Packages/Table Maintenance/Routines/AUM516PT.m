AUM516PT ; IHS/OIT/DMJ,SDR - Post Init for v5.1 p6 - 3/4/2005 10:51:27 AM [ 03/24/2005  5:17 PM ]
 ;;5.1;TABLE MAINTENANCE;**6**;MAR 4, 2005
 ;
EP ;
 D FIXICD  ;Fix two reported ICD issues
 Q
FIXICD ; correct codes 795.03 and 796.6
 S DIE="^ICD9("
 S DA=$O(^ICD9("AB","795.03",0))
 I $G(DA) D
 .S DR="10////_PAPANICOLAOU SMEAR OF CERVIX WITH LOW GRADE SQUAMOUS INTRAEPITHELIAL LESION (LGSIL)"
 .D ^DIE
 S DA=$O(^ICD9("AB","796.60",0))
 I $G(DA) D
 .S DR=".01////796.6;9.5////@"
 .D ^DIE
 Q