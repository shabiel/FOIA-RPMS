BGP61G14 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1220,21695-0998-30 ",.01)
 ;;21695-0998-30
 ;;9002226.02101,"1220,21695-0998-30 ",.02)
 ;;21695-0998-30
 ;;9002226.02101,"1220,23155-0026-01 ",.01)
 ;;23155-0026-01
 ;;9002226.02101,"1220,23155-0026-01 ",.02)
 ;;23155-0026-01
 ;;9002226.02101,"1220,23155-0027-01 ",.01)
 ;;23155-0027-01
 ;;9002226.02101,"1220,23155-0027-01 ",.02)
 ;;23155-0027-01
 ;;9002226.02101,"1220,23155-0048-01 ",.01)
 ;;23155-0048-01
 ;;9002226.02101,"1220,23155-0048-01 ",.02)
 ;;23155-0048-01
 ;;9002226.02101,"1220,23155-0049-01 ",.01)
 ;;23155-0049-01
 ;;9002226.02101,"1220,23155-0049-01 ",.02)
 ;;23155-0049-01
 ;;9002226.02101,"1220,23155-0050-01 ",.01)
 ;;23155-0050-01
 ;;9002226.02101,"1220,23155-0050-01 ",.02)
 ;;23155-0050-01
 ;;9002226.02101,"1220,24477-0515-01 ",.01)
 ;;24477-0515-01
 ;;9002226.02101,"1220,24477-0515-01 ",.02)
 ;;24477-0515-01
 ;;9002226.02101,"1220,24477-0516-01 ",.01)
 ;;24477-0516-01
 ;;9002226.02101,"1220,24477-0516-01 ",.02)
 ;;24477-0516-01
 ;;9002226.02101,"1220,24979-0009-01 ",.01)
 ;;24979-0009-01
 ;;9002226.02101,"1220,24979-0009-01 ",.02)
 ;;24979-0009-01
 ;;9002226.02101,"1220,24979-0010-01 ",.01)
 ;;24979-0010-01
 ;;9002226.02101,"1220,24979-0010-01 ",.02)
 ;;24979-0010-01
 ;;9002226.02101,"1220,24979-0011-01 ",.01)
 ;;24979-0011-01
 ;;9002226.02101,"1220,24979-0011-01 ",.02)
 ;;24979-0011-01
 ;;9002226.02101,"1220,29300-0241-05 ",.01)
 ;;29300-0241-05
 ;;9002226.02101,"1220,29300-0241-05 ",.02)
 ;;29300-0241-05
 ;;9002226.02101,"1220,29300-0241-10 ",.01)
 ;;29300-0241-10
 ;;9002226.02101,"1220,29300-0241-10 ",.02)
 ;;29300-0241-10
 ;;9002226.02101,"1220,29300-0241-19 ",.01)
 ;;29300-0241-19
 ;;9002226.02101,"1220,29300-0241-19 ",.02)
 ;;29300-0241-19
 ;;9002226.02101,"1220,29300-0242-05 ",.01)
 ;;29300-0242-05
 ;;9002226.02101,"1220,29300-0242-05 ",.02)
 ;;29300-0242-05
 ;;9002226.02101,"1220,29300-0242-10 ",.01)
 ;;29300-0242-10
 ;;9002226.02101,"1220,29300-0242-10 ",.02)
 ;;29300-0242-10
 ;;9002226.02101,"1220,29300-0242-19 ",.01)
 ;;29300-0242-19
 ;;9002226.02101,"1220,29300-0242-19 ",.02)
 ;;29300-0242-19
 ;;9002226.02101,"1220,29300-0243-05 ",.01)
 ;;29300-0243-05
 ;;9002226.02101,"1220,29300-0243-05 ",.02)
 ;;29300-0243-05
 ;;9002226.02101,"1220,29300-0243-10 ",.01)
 ;;29300-0243-10
 ;;9002226.02101,"1220,29300-0243-10 ",.02)
 ;;29300-0243-10
 ;;9002226.02101,"1220,29300-0243-19 ",.01)
 ;;29300-0243-19
 ;;9002226.02101,"1220,29300-0243-19 ",.02)
 ;;29300-0243-19
 ;;9002226.02101,"1220,31722-0237-10 ",.01)
 ;;31722-0237-10
 ;;9002226.02101,"1220,31722-0237-10 ",.02)
 ;;31722-0237-10
 ;;9002226.02101,"1220,31722-0237-90 ",.01)
 ;;31722-0237-90
 ;;9002226.02101,"1220,31722-0237-90 ",.02)
 ;;31722-0237-90
 ;;9002226.02101,"1220,31722-0238-10 ",.01)
 ;;31722-0238-10
 ;;9002226.02101,"1220,31722-0238-10 ",.02)
 ;;31722-0238-10
 ;;9002226.02101,"1220,31722-0238-90 ",.01)
 ;;31722-0238-90
 ;;9002226.02101,"1220,31722-0238-90 ",.02)
 ;;31722-0238-90
 ;;9002226.02101,"1220,31722-0239-10 ",.01)
 ;;31722-0239-10
 ;;9002226.02101,"1220,31722-0239-10 ",.02)
 ;;31722-0239-10
 ;;9002226.02101,"1220,31722-0239-90 ",.01)
 ;;31722-0239-90
 ;;9002226.02101,"1220,31722-0239-90 ",.02)
 ;;31722-0239-90
 ;;9002226.02101,"1220,33261-0183-30 ",.01)
 ;;33261-0183-30
 ;;9002226.02101,"1220,33261-0183-30 ",.02)
 ;;33261-0183-30
 ;;9002226.02101,"1220,33261-0183-60 ",.01)
 ;;33261-0183-60
 ;;9002226.02101,"1220,33261-0183-60 ",.02)
 ;;33261-0183-60
 ;;9002226.02101,"1220,33261-0183-90 ",.01)
 ;;33261-0183-90
 ;;9002226.02101,"1220,33261-0183-90 ",.02)
 ;;33261-0183-90
 ;;9002226.02101,"1220,33261-0370-30 ",.01)
 ;;33261-0370-30
 ;;9002226.02101,"1220,33261-0370-30 ",.02)
 ;;33261-0370-30
 ;;9002226.02101,"1220,33261-0370-90 ",.01)
 ;;33261-0370-90
 ;;9002226.02101,"1220,33261-0370-90 ",.02)
 ;;33261-0370-90
 ;;9002226.02101,"1220,33261-0437-02 ",.01)
 ;;33261-0437-02
 ;;9002226.02101,"1220,33261-0437-02 ",.02)
 ;;33261-0437-02
 ;;9002226.02101,"1220,33261-0437-30 ",.01)
 ;;33261-0437-30
 ;;9002226.02101,"1220,33261-0437-30 ",.02)
 ;;33261-0437-30
 ;;9002226.02101,"1220,33261-0437-60 ",.01)
 ;;33261-0437-60
 ;;9002226.02101,"1220,33261-0437-60 ",.02)
 ;;33261-0437-60
 ;;9002226.02101,"1220,33261-0437-90 ",.01)
 ;;33261-0437-90
 ;;9002226.02101,"1220,33261-0437-90 ",.02)
 ;;33261-0437-90
 ;;9002226.02101,"1220,33261-0535-02 ",.01)
 ;;33261-0535-02
 ;;9002226.02101,"1220,33261-0535-02 ",.02)
 ;;33261-0535-02
 ;;9002226.02101,"1220,33261-0535-30 ",.01)
 ;;33261-0535-30
 ;;9002226.02101,"1220,33261-0535-30 ",.02)
 ;;33261-0535-30
 ;;9002226.02101,"1220,33261-0535-60 ",.01)
 ;;33261-0535-60
 ;;9002226.02101,"1220,33261-0535-60 ",.02)
 ;;33261-0535-60
 ;;9002226.02101,"1220,33261-0535-90 ",.01)
 ;;33261-0535-90
 ;;9002226.02101,"1220,33261-0535-90 ",.02)
 ;;33261-0535-90
 ;;9002226.02101,"1220,33261-0675-00 ",.01)
 ;;33261-0675-00
 ;;9002226.02101,"1220,33261-0675-00 ",.02)
 ;;33261-0675-00
 ;;9002226.02101,"1220,33261-0675-02 ",.01)
 ;;33261-0675-02
 ;;9002226.02101,"1220,33261-0675-02 ",.02)
 ;;33261-0675-02
 ;;9002226.02101,"1220,33261-0675-07 ",.01)
 ;;33261-0675-07
 ;;9002226.02101,"1220,33261-0675-07 ",.02)
 ;;33261-0675-07
 ;;9002226.02101,"1220,33261-0675-14 ",.01)
 ;;33261-0675-14
 ;;9002226.02101,"1220,33261-0675-14 ",.02)
 ;;33261-0675-14
 ;;9002226.02101,"1220,33261-0675-20 ",.01)
 ;;33261-0675-20
 ;;9002226.02101,"1220,33261-0675-20 ",.02)
 ;;33261-0675-20
 ;;9002226.02101,"1220,33261-0675-21 ",.01)
 ;;33261-0675-21
 ;;9002226.02101,"1220,33261-0675-21 ",.02)
 ;;33261-0675-21
 ;;9002226.02101,"1220,33261-0675-28 ",.01)
 ;;33261-0675-28
 ;;9002226.02101,"1220,33261-0675-28 ",.02)
 ;;33261-0675-28
 ;;9002226.02101,"1220,33261-0675-30 ",.01)
 ;;33261-0675-30
 ;;9002226.02101,"1220,33261-0675-30 ",.02)
 ;;33261-0675-30
 ;;9002226.02101,"1220,33261-0675-60 ",.01)
 ;;33261-0675-60
 ;;9002226.02101,"1220,33261-0675-60 ",.02)
 ;;33261-0675-60
 ;;9002226.02101,"1220,33261-0675-90 ",.01)
 ;;33261-0675-90
 ;;9002226.02101,"1220,33261-0675-90 ",.02)
 ;;33261-0675-90
 ;;9002226.02101,"1220,33261-0823-30 ",.01)
 ;;33261-0823-30
 ;;9002226.02101,"1220,33261-0823-30 ",.02)
 ;;33261-0823-30
 ;;9002226.02101,"1220,33261-0823-60 ",.01)
 ;;33261-0823-60
 ;;9002226.02101,"1220,33261-0823-60 ",.02)
 ;;33261-0823-60
 ;;9002226.02101,"1220,33261-0823-90 ",.01)
 ;;33261-0823-90
 ;;9002226.02101,"1220,33261-0823-90 ",.02)
 ;;33261-0823-90
 ;;9002226.02101,"1220,33261-0824-00 ",.01)
 ;;33261-0824-00
 ;;9002226.02101,"1220,33261-0824-00 ",.02)
 ;;33261-0824-00
 ;;9002226.02101,"1220,33261-0824-30 ",.01)
 ;;33261-0824-30
 ;;9002226.02101,"1220,33261-0824-30 ",.02)
 ;;33261-0824-30
 ;;9002226.02101,"1220,33261-0824-60 ",.01)
 ;;33261-0824-60
 ;;9002226.02101,"1220,33261-0824-60 ",.02)
 ;;33261-0824-60
 ;;9002226.02101,"1220,33261-0824-90 ",.01)
 ;;33261-0824-90
 ;;9002226.02101,"1220,33261-0824-90 ",.02)
 ;;33261-0824-90
 ;;9002226.02101,"1220,33261-0825-00 ",.01)
 ;;33261-0825-00
 ;;9002226.02101,"1220,33261-0825-00 ",.02)
 ;;33261-0825-00
 ;;9002226.02101,"1220,33261-0825-30 ",.01)
 ;;33261-0825-30
 ;;9002226.02101,"1220,33261-0825-30 ",.02)
 ;;33261-0825-30
 ;;9002226.02101,"1220,33261-0825-60 ",.01)
 ;;33261-0825-60
 ;;9002226.02101,"1220,33261-0825-60 ",.02)
 ;;33261-0825-60
 ;;9002226.02101,"1220,33261-0825-90 ",.01)
 ;;33261-0825-90
 ;;9002226.02101,"1220,33261-0825-90 ",.02)
 ;;33261-0825-90
 ;;9002226.02101,"1220,33261-0826-00 ",.01)
 ;;33261-0826-00
 ;;9002226.02101,"1220,33261-0826-00 ",.02)
 ;;33261-0826-00
 ;;9002226.02101,"1220,33261-0826-30 ",.01)
 ;;33261-0826-30
 ;;9002226.02101,"1220,33261-0826-30 ",.02)
 ;;33261-0826-30
 ;;9002226.02101,"1220,33261-0826-60 ",.01)
 ;;33261-0826-60
 ;;9002226.02101,"1220,33261-0826-60 ",.02)
 ;;33261-0826-60
 ;;9002226.02101,"1220,33261-0826-90 ",.01)
 ;;33261-0826-90
 ;;9002226.02101,"1220,33261-0826-90 ",.02)
 ;;33261-0826-90
 ;;9002226.02101,"1220,33261-0829-30 ",.01)
 ;;33261-0829-30
 ;;9002226.02101,"1220,33261-0829-30 ",.02)
 ;;33261-0829-30
 ;;9002226.02101,"1220,33261-0829-90 ",.01)
 ;;33261-0829-90
 ;;9002226.02101,"1220,33261-0829-90 ",.02)
 ;;33261-0829-90
 ;;9002226.02101,"1220,33261-0836-00 ",.01)
 ;;33261-0836-00
 ;;9002226.02101,"1220,33261-0836-00 ",.02)
 ;;33261-0836-00
 ;;9002226.02101,"1220,33261-0836-30 ",.01)
 ;;33261-0836-30
 ;;9002226.02101,"1220,33261-0836-30 ",.02)
 ;;33261-0836-30
 ;;9002226.02101,"1220,33261-0836-60 ",.01)
 ;;33261-0836-60
 ;;9002226.02101,"1220,33261-0836-60 ",.02)
 ;;33261-0836-60
 ;;9002226.02101,"1220,33261-0836-90 ",.01)
 ;;33261-0836-90
 ;;9002226.02101,"1220,33261-0836-90 ",.02)
 ;;33261-0836-90
 ;;9002226.02101,"1220,33261-0840-00 ",.01)
 ;;33261-0840-00
 ;;9002226.02101,"1220,33261-0840-00 ",.02)
 ;;33261-0840-00
 ;;9002226.02101,"1220,33261-0840-30 ",.01)
 ;;33261-0840-30
 ;;9002226.02101,"1220,33261-0840-30 ",.02)
 ;;33261-0840-30
 ;;9002226.02101,"1220,33261-0840-60 ",.01)
 ;;33261-0840-60
 ;;9002226.02101,"1220,33261-0840-60 ",.02)
 ;;33261-0840-60
 ;;9002226.02101,"1220,33261-0840-90 ",.01)
 ;;33261-0840-90
 ;;9002226.02101,"1220,33261-0840-90 ",.02)
 ;;33261-0840-90
 ;;9002226.02101,"1220,33261-0844-00 ",.01)
 ;;33261-0844-00
 ;;9002226.02101,"1220,33261-0844-00 ",.02)
 ;;33261-0844-00
 ;;9002226.02101,"1220,33261-0844-30 ",.01)
 ;;33261-0844-30
 ;;9002226.02101,"1220,33261-0844-30 ",.02)
 ;;33261-0844-30
 ;;9002226.02101,"1220,33261-0844-60 ",.01)
 ;;33261-0844-60
 ;;9002226.02101,"1220,33261-0844-60 ",.02)
 ;;33261-0844-60
 ;;9002226.02101,"1220,33261-0844-90 ",.01)
 ;;33261-0844-90
 ;;9002226.02101,"1220,33261-0844-90 ",.02)
 ;;33261-0844-90
 ;;9002226.02101,"1220,33261-0847-30 ",.01)
 ;;33261-0847-30
 ;;9002226.02101,"1220,33261-0847-30 ",.02)
 ;;33261-0847-30
 ;;9002226.02101,"1220,33261-0847-60 ",.01)
 ;;33261-0847-60
 ;;9002226.02101,"1220,33261-0847-60 ",.02)
 ;;33261-0847-60
 ;;9002226.02101,"1220,33261-0847-90 ",.01)
 ;;33261-0847-90
 ;;9002226.02101,"1220,33261-0847-90 ",.02)
 ;;33261-0847-90
 ;;9002226.02101,"1220,33261-0951-30 ",.01)
 ;;33261-0951-30
 ;;9002226.02101,"1220,33261-0951-30 ",.02)
 ;;33261-0951-30
 ;;9002226.02101,"1220,33261-0951-60 ",.01)
 ;;33261-0951-60
 ;;9002226.02101,"1220,33261-0951-60 ",.02)
 ;;33261-0951-60
 ;;9002226.02101,"1220,33261-0951-90 ",.01)
 ;;33261-0951-90
 ;;9002226.02101,"1220,33261-0951-90 ",.02)
 ;;33261-0951-90
 ;;9002226.02101,"1220,33261-0982-00 ",.01)
 ;;33261-0982-00
 ;;9002226.02101,"1220,33261-0982-00 ",.02)
 ;;33261-0982-00
 ;;9002226.02101,"1220,33261-0982-30 ",.01)
 ;;33261-0982-30
 ;;9002226.02101,"1220,33261-0982-30 ",.02)
 ;;33261-0982-30
 ;;9002226.02101,"1220,33261-0982-60 ",.01)
 ;;33261-0982-60
 ;;9002226.02101,"1220,33261-0982-60 ",.02)
 ;;33261-0982-60
 ;;9002226.02101,"1220,33261-0982-90 ",.01)
 ;;33261-0982-90
 ;;9002226.02101,"1220,33261-0982-90 ",.02)
 ;;33261-0982-90
 ;;9002226.02101,"1220,33342-0015-10 ",.01)
 ;;33342-0015-10
 ;;9002226.02101,"1220,33342-0015-10 ",.02)
 ;;33342-0015-10
 ;;9002226.02101,"1220,33342-0016-10 ",.01)
 ;;33342-0016-10
 ;;9002226.02101,"1220,33342-0016-10 ",.02)
 ;;33342-0016-10
 ;;9002226.02101,"1220,33358-0109-30 ",.01)
 ;;33358-0109-30
 ;;9002226.02101,"1220,33358-0109-30 ",.02)
 ;;33358-0109-30
 ;;9002226.02101,"1220,33358-0222-00 ",.01)
 ;;33358-0222-00
 ;;9002226.02101,"1220,33358-0222-00 ",.02)
 ;;33358-0222-00
 ;;9002226.02101,"1220,33358-0262-00 ",.01)
 ;;33358-0262-00
 ;;9002226.02101,"1220,33358-0262-00 ",.02)
 ;;33358-0262-00
 ;;9002226.02101,"1220,33358-0262-30 ",.01)
 ;;33358-0262-30
 ;;9002226.02101,"1220,33358-0262-30 ",.02)
 ;;33358-0262-30
 ;;9002226.02101,"1220,35356-0026-00 ",.01)
 ;;35356-0026-00
 ;;9002226.02101,"1220,35356-0026-00 ",.02)
 ;;35356-0026-00
 ;;9002226.02101,"1220,35356-0027-00 ",.01)
 ;;35356-0027-00
 ;;9002226.02101,"1220,35356-0027-00 ",.02)
 ;;35356-0027-00
 ;;9002226.02101,"1220,35356-0059-10 ",.01)
 ;;35356-0059-10
 ;;9002226.02101,"1220,35356-0059-10 ",.02)
 ;;35356-0059-10
 ;;9002226.02101,"1220,35356-0059-30 ",.01)
 ;;35356-0059-30
 ;;9002226.02101,"1220,35356-0059-30 ",.02)
 ;;35356-0059-30
 ;;9002226.02101,"1220,35356-0059-60 ",.01)
 ;;35356-0059-60
 ;;9002226.02101,"1220,35356-0059-60 ",.02)
 ;;35356-0059-60
 ;;9002226.02101,"1220,35356-0059-90 ",.01)
 ;;35356-0059-90
 ;;9002226.02101,"1220,35356-0059-90 ",.02)
 ;;35356-0059-90
 ;;9002226.02101,"1220,35356-0268-30 ",.01)
 ;;35356-0268-30
 ;;9002226.02101,"1220,35356-0268-30 ",.02)
 ;;35356-0268-30
 ;;9002226.02101,"1220,35356-0510-30 ",.01)
 ;;35356-0510-30
 ;;9002226.02101,"1220,35356-0510-30 ",.02)
 ;;35356-0510-30