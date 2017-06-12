BGP48F7 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 17, 2014;
 ;;14.1;IHS CLINICAL REPORTING;;MAY 29, 2014;Build 114
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1201,00006-0732-94 ",.01)
 ;;00006-0732-94
 ;;9002226.02101,"1201,00006-0732-94 ",.02)
 ;;00006-0732-94
 ;;9002226.02101,"1201,00006-0735-28 ",.01)
 ;;00006-0735-28
 ;;9002226.02101,"1201,00006-0735-28 ",.02)
 ;;00006-0735-28
 ;;9002226.02101,"1201,00006-0735-31 ",.01)
 ;;00006-0735-31
 ;;9002226.02101,"1201,00006-0735-31 ",.02)
 ;;00006-0735-31
 ;;9002226.02101,"1201,00006-0735-54 ",.01)
 ;;00006-0735-54
 ;;9002226.02101,"1201,00006-0735-54 ",.02)
 ;;00006-0735-54
 ;;9002226.02101,"1201,00006-0735-61 ",.01)
 ;;00006-0735-61
 ;;9002226.02101,"1201,00006-0735-61 ",.02)
 ;;00006-0735-61
 ;;9002226.02101,"1201,00006-0735-82 ",.01)
 ;;00006-0735-82
 ;;9002226.02101,"1201,00006-0735-82 ",.02)
 ;;00006-0735-82
 ;;9002226.02101,"1201,00006-0735-87 ",.01)
 ;;00006-0735-87
 ;;9002226.02101,"1201,00006-0735-87 ",.02)
 ;;00006-0735-87
 ;;9002226.02101,"1201,00006-0740-28 ",.01)
 ;;00006-0740-28
 ;;9002226.02101,"1201,00006-0740-28 ",.02)
 ;;00006-0740-28
 ;;9002226.02101,"1201,00006-0740-31 ",.01)
 ;;00006-0740-31
 ;;9002226.02101,"1201,00006-0740-31 ",.02)
 ;;00006-0740-31
 ;;9002226.02101,"1201,00006-0740-54 ",.01)
 ;;00006-0740-54
 ;;9002226.02101,"1201,00006-0740-54 ",.02)
 ;;00006-0740-54
 ;;9002226.02101,"1201,00006-0740-61 ",.01)
 ;;00006-0740-61
 ;;9002226.02101,"1201,00006-0740-61 ",.02)
 ;;00006-0740-61
 ;;9002226.02101,"1201,00006-0740-82 ",.01)
 ;;00006-0740-82
 ;;9002226.02101,"1201,00006-0740-82 ",.02)
 ;;00006-0740-82
 ;;9002226.02101,"1201,00006-0740-87 ",.01)
 ;;00006-0740-87
 ;;9002226.02101,"1201,00006-0740-87 ",.02)
 ;;00006-0740-87
 ;;9002226.02101,"1201,00006-0749-28 ",.01)
 ;;00006-0749-28
 ;;9002226.02101,"1201,00006-0749-28 ",.02)
 ;;00006-0749-28
 ;;9002226.02101,"1201,00006-0749-31 ",.01)
 ;;00006-0749-31
 ;;9002226.02101,"1201,00006-0749-31 ",.02)
 ;;00006-0749-31
 ;;9002226.02101,"1201,00006-0749-54 ",.01)
 ;;00006-0749-54
 ;;9002226.02101,"1201,00006-0749-54 ",.02)
 ;;00006-0749-54
 ;;9002226.02101,"1201,00006-0749-61 ",.01)
 ;;00006-0749-61
 ;;9002226.02101,"1201,00006-0749-61 ",.02)
 ;;00006-0749-61
 ;;9002226.02101,"1201,00006-0749-82 ",.01)
 ;;00006-0749-82
 ;;9002226.02101,"1201,00006-0749-82 ",.02)
 ;;00006-0749-82
 ;;9002226.02101,"1201,00006-0753-31 ",.01)
 ;;00006-0753-31
 ;;9002226.02101,"1201,00006-0753-31 ",.02)
 ;;00006-0753-31
 ;;9002226.02101,"1201,00006-0753-54 ",.01)
 ;;00006-0753-54
 ;;9002226.02101,"1201,00006-0753-54 ",.02)
 ;;00006-0753-54
 ;;9002226.02101,"1201,00006-0753-82 ",.01)
 ;;00006-0753-82
 ;;9002226.02101,"1201,00006-0753-82 ",.02)
 ;;00006-0753-82
 ;;9002226.02101,"1201,00006-0757-31 ",.01)
 ;;00006-0757-31
 ;;9002226.02101,"1201,00006-0757-31 ",.02)
 ;;00006-0757-31
 ;;9002226.02101,"1201,00006-0757-54 ",.01)
 ;;00006-0757-54
 ;;9002226.02101,"1201,00006-0757-54 ",.02)
 ;;00006-0757-54
 ;;9002226.02101,"1201,00006-0757-82 ",.01)
 ;;00006-0757-82
 ;;9002226.02101,"1201,00006-0757-82 ",.02)
 ;;00006-0757-82
 ;;9002226.02101,"1201,00006-0773-31 ",.01)
 ;;00006-0773-31
 ;;9002226.02101,"1201,00006-0773-31 ",.02)
 ;;00006-0773-31
 ;;9002226.02101,"1201,00006-0773-54 ",.01)
 ;;00006-0773-54
 ;;9002226.02101,"1201,00006-0773-54 ",.02)
 ;;00006-0773-54
 ;;9002226.02101,"1201,00006-0773-82 ",.01)
 ;;00006-0773-82
 ;;9002226.02101,"1201,00006-0773-82 ",.02)
 ;;00006-0773-82
 ;;9002226.02101,"1201,00069-2150-30 ",.01)
 ;;00069-2150-30
 ;;9002226.02101,"1201,00069-2150-30 ",.02)
 ;;00069-2150-30
 ;;9002226.02101,"1201,00069-2160-30 ",.01)
 ;;00069-2160-30
 ;;9002226.02101,"1201,00069-2160-30 ",.02)
 ;;00069-2160-30
 ;;9002226.02101,"1201,00069-2170-30 ",.01)
 ;;00069-2170-30
 ;;9002226.02101,"1201,00069-2170-30 ",.02)
 ;;00069-2170-30
 ;;9002226.02101,"1201,00069-2180-30 ",.01)
 ;;00069-2180-30
 ;;9002226.02101,"1201,00069-2180-30 ",.02)
 ;;00069-2180-30
 ;;9002226.02101,"1201,00069-2190-30 ",.01)
 ;;00069-2190-30
 ;;9002226.02101,"1201,00069-2190-30 ",.02)
 ;;00069-2190-30
 ;;9002226.02101,"1201,00069-2250-30 ",.01)
 ;;00069-2250-30
 ;;9002226.02101,"1201,00069-2250-30 ",.02)
 ;;00069-2250-30
 ;;9002226.02101,"1201,00069-2260-30 ",.01)
 ;;00069-2260-30
 ;;9002226.02101,"1201,00069-2260-30 ",.02)
 ;;00069-2260-30
 ;;9002226.02101,"1201,00069-2270-30 ",.01)
 ;;00069-2270-30
 ;;9002226.02101,"1201,00069-2270-30 ",.02)
 ;;00069-2270-30
 ;;9002226.02101,"1201,00069-2960-30 ",.01)
 ;;00069-2960-30
 ;;9002226.02101,"1201,00069-2960-30 ",.02)
 ;;00069-2960-30
 ;;9002226.02101,"1201,00069-2970-30 ",.01)
 ;;00069-2970-30
 ;;9002226.02101,"1201,00069-2970-30 ",.02)
 ;;00069-2970-30
 ;;9002226.02101,"1201,00069-2980-30 ",.01)
 ;;00069-2980-30
 ;;9002226.02101,"1201,00069-2980-30 ",.02)
 ;;00069-2980-30
 ;;9002226.02101,"1201,00071-0155-23 ",.01)
 ;;00071-0155-23
 ;;9002226.02101,"1201,00071-0155-23 ",.02)
 ;;00071-0155-23
 ;;9002226.02101,"1201,00071-0155-34 ",.01)
 ;;00071-0155-34
 ;;9002226.02101,"1201,00071-0155-34 ",.02)
 ;;00071-0155-34
 ;;9002226.02101,"1201,00071-0155-40 ",.01)
 ;;00071-0155-40
 ;;9002226.02101,"1201,00071-0155-40 ",.02)
 ;;00071-0155-40
 ;;9002226.02101,"1201,00071-0156-23 ",.01)
 ;;00071-0156-23
 ;;9002226.02101,"1201,00071-0156-23 ",.02)
 ;;00071-0156-23
 ;;9002226.02101,"1201,00071-0156-40 ",.01)
 ;;00071-0156-40
 ;;9002226.02101,"1201,00071-0156-40 ",.02)
 ;;00071-0156-40
 ;;9002226.02101,"1201,00071-0156-94 ",.01)
 ;;00071-0156-94
 ;;9002226.02101,"1201,00071-0156-94 ",.02)
 ;;00071-0156-94
 ;;9002226.02101,"1201,00071-0157-23 ",.01)
 ;;00071-0157-23
 ;;9002226.02101,"1201,00071-0157-23 ",.02)
 ;;00071-0157-23
 ;;9002226.02101,"1201,00071-0157-40 ",.01)
 ;;00071-0157-40
 ;;9002226.02101,"1201,00071-0157-40 ",.02)
 ;;00071-0157-40
 ;;9002226.02101,"1201,00071-0157-73 ",.01)
 ;;00071-0157-73
 ;;9002226.02101,"1201,00071-0157-73 ",.02)
 ;;00071-0157-73
 ;;9002226.02101,"1201,00071-0157-88 ",.01)
 ;;00071-0157-88
 ;;9002226.02101,"1201,00071-0157-88 ",.02)
 ;;00071-0157-88
 ;;9002226.02101,"1201,00071-0158-23 ",.01)
 ;;00071-0158-23
 ;;9002226.02101,"1201,00071-0158-23 ",.02)
 ;;00071-0158-23
 ;;9002226.02101,"1201,00071-0158-73 ",.01)
 ;;00071-0158-73
 ;;9002226.02101,"1201,00071-0158-73 ",.02)
 ;;00071-0158-73
 ;;9002226.02101,"1201,00071-0158-88 ",.01)
 ;;00071-0158-88
 ;;9002226.02101,"1201,00071-0158-88 ",.02)
 ;;00071-0158-88
 ;;9002226.02101,"1201,00071-0158-92 ",.01)
 ;;00071-0158-92
 ;;9002226.02101,"1201,00071-0158-92 ",.02)
 ;;00071-0158-92
 ;;9002226.02101,"1201,00074-3005-90 ",.01)
 ;;00074-3005-90
 ;;9002226.02101,"1201,00074-3005-90 ",.02)
 ;;00074-3005-90
 ;;9002226.02101,"1201,00074-3007-90 ",.01)
 ;;00074-3007-90
 ;;9002226.02101,"1201,00074-3007-90 ",.02)
 ;;00074-3007-90
 ;;9002226.02101,"1201,00074-3010-90 ",.01)
 ;;00074-3010-90
 ;;9002226.02101,"1201,00074-3010-90 ",.02)
 ;;00074-3010-90
 ;;9002226.02101,"1201,00074-3072-90 ",.01)
 ;;00074-3072-90
 ;;9002226.02101,"1201,00074-3072-90 ",.02)
 ;;00074-3072-90
 ;;9002226.02101,"1201,00074-3312-90 ",.01)
 ;;00074-3312-90
 ;;9002226.02101,"1201,00074-3312-90 ",.02)
 ;;00074-3312-90
 ;;9002226.02101,"1201,00074-3315-90 ",.01)
 ;;00074-3315-90
 ;;9002226.02101,"1201,00074-3315-90 ",.02)
 ;;00074-3315-90
 ;;9002226.02101,"1201,00074-3316-90 ",.01)
 ;;00074-3316-90
 ;;9002226.02101,"1201,00074-3316-90 ",.02)
 ;;00074-3316-90
 ;;9002226.02101,"1201,00074-3455-90 ",.01)
 ;;00074-3455-90
 ;;9002226.02101,"1201,00074-3455-90 ",.02)
 ;;00074-3455-90
 ;;9002226.02101,"1201,00074-3457-90 ",.01)
 ;;00074-3457-90
 ;;9002226.02101,"1201,00074-3457-90 ",.02)
 ;;00074-3457-90
 ;;9002226.02101,"1201,00074-3459-90 ",.01)
 ;;00074-3459-90
 ;;9002226.02101,"1201,00074-3459-90 ",.02)
 ;;00074-3459-90
 ;;9002226.02101,"1201,00078-0176-05 ",.01)
 ;;00078-0176-05
 ;;9002226.02101,"1201,00078-0176-05 ",.02)
 ;;00078-0176-05
 ;;9002226.02101,"1201,00078-0176-15 ",.01)
 ;;00078-0176-15
 ;;9002226.02101,"1201,00078-0176-15 ",.02)
 ;;00078-0176-15
 ;;9002226.02101,"1201,00078-0234-05 ",.01)
 ;;00078-0234-05
 ;;9002226.02101,"1201,00078-0234-05 ",.02)
 ;;00078-0234-05
 ;;9002226.02101,"1201,00078-0234-15 ",.01)
 ;;00078-0234-15
 ;;9002226.02101,"1201,00078-0234-15 ",.02)
 ;;00078-0234-15
 ;;9002226.02101,"1201,00078-0354-05 ",.01)
 ;;00078-0354-05
 ;;9002226.02101,"1201,00078-0354-05 ",.02)
 ;;00078-0354-05
 ;;9002226.02101,"1201,00078-0354-15 ",.01)
 ;;00078-0354-15
 ;;9002226.02101,"1201,00078-0354-15 ",.02)
 ;;00078-0354-15
 ;;9002226.02101,"1201,00093-0576-06 ",.01)
 ;;00093-0576-06
 ;;9002226.02101,"1201,00093-0576-06 ",.02)
 ;;00093-0576-06
 ;;9002226.02101,"1201,00093-0576-10 ",.01)
 ;;00093-0576-10
 ;;9002226.02101,"1201,00093-0576-10 ",.02)
 ;;00093-0576-10
 ;;9002226.02101,"1201,00093-0576-19 ",.01)
 ;;00093-0576-19
 ;;9002226.02101,"1201,00093-0576-19 ",.02)
 ;;00093-0576-19
 ;;9002226.02101,"1201,00093-0576-93 ",.01)
 ;;00093-0576-93
 ;;9002226.02101,"1201,00093-0576-93 ",.02)
 ;;00093-0576-93
 ;;9002226.02101,"1201,00093-0771-10 ",.01)
 ;;00093-0771-10
 ;;9002226.02101,"1201,00093-0771-10 ",.02)
 ;;00093-0771-10
 ;;9002226.02101,"1201,00093-0771-98 ",.01)
 ;;00093-0771-98
 ;;9002226.02101,"1201,00093-0771-98 ",.02)
 ;;00093-0771-98
 ;;9002226.02101,"1201,00093-0926-06 ",.01)
 ;;00093-0926-06
 ;;9002226.02101,"1201,00093-0926-06 ",.02)
 ;;00093-0926-06
 ;;9002226.02101,"1201,00093-0926-10 ",.01)
 ;;00093-0926-10
 ;;9002226.02101,"1201,00093-0926-10 ",.02)
 ;;00093-0926-10
 ;;9002226.02101,"1201,00093-0926-19 ",.01)
 ;;00093-0926-19
 ;;9002226.02101,"1201,00093-0926-19 ",.02)
 ;;00093-0926-19
 ;;9002226.02101,"1201,00093-0926-93 ",.01)
 ;;00093-0926-93
 ;;9002226.02101,"1201,00093-0926-93 ",.02)
 ;;00093-0926-93
 ;;9002226.02101,"1201,00093-0928-06 ",.01)
 ;;00093-0928-06
 ;;9002226.02101,"1201,00093-0928-06 ",.02)
 ;;00093-0928-06
 ;;9002226.02101,"1201,00093-0928-10 ",.01)
 ;;00093-0928-10
 ;;9002226.02101,"1201,00093-0928-10 ",.02)
 ;;00093-0928-10
 ;;9002226.02101,"1201,00093-0928-19 ",.01)
 ;;00093-0928-19
 ;;9002226.02101,"1201,00093-0928-19 ",.02)
 ;;00093-0928-19
 ;;9002226.02101,"1201,00093-0928-93 ",.01)
 ;;00093-0928-93
 ;;9002226.02101,"1201,00093-0928-93 ",.02)
 ;;00093-0928-93
 ;;9002226.02101,"1201,00093-7152-19 ",.01)
 ;;00093-7152-19
 ;;9002226.02101,"1201,00093-7152-19 ",.02)
 ;;00093-7152-19
 ;;9002226.02101,"1201,00093-7152-56 ",.01)
 ;;00093-7152-56
 ;;9002226.02101,"1201,00093-7152-56 ",.02)
 ;;00093-7152-56
 ;;9002226.02101,"1201,00093-7152-93 ",.01)
 ;;00093-7152-93
 ;;9002226.02101,"1201,00093-7152-93 ",.02)
 ;;00093-7152-93
 ;;9002226.02101,"1201,00093-7152-98 ",.01)
 ;;00093-7152-98
 ;;9002226.02101,"1201,00093-7152-98 ",.02)
 ;;00093-7152-98
 ;;9002226.02101,"1201,00093-7153-10 ",.01)
 ;;00093-7153-10
 ;;9002226.02101,"1201,00093-7153-10 ",.02)
 ;;00093-7153-10
 ;;9002226.02101,"1201,00093-7153-19 ",.01)
 ;;00093-7153-19
 ;;9002226.02101,"1201,00093-7153-19 ",.02)
 ;;00093-7153-19
 ;;9002226.02101,"1201,00093-7153-56 ",.01)
 ;;00093-7153-56
 ;;9002226.02101,"1201,00093-7153-56 ",.02)
 ;;00093-7153-56
 ;;9002226.02101,"1201,00093-7153-93 ",.01)
 ;;00093-7153-93
 ;;9002226.02101,"1201,00093-7153-93 ",.02)
 ;;00093-7153-93
 ;;9002226.02101,"1201,00093-7153-98 ",.01)
 ;;00093-7153-98
 ;;9002226.02101,"1201,00093-7153-98 ",.02)
 ;;00093-7153-98
 ;;9002226.02101,"1201,00093-7154-10 ",.01)
 ;;00093-7154-10
 ;;9002226.02101,"1201,00093-7154-10 ",.02)
 ;;00093-7154-10
 ;;9002226.02101,"1201,00093-7154-19 ",.01)
 ;;00093-7154-19
 ;;9002226.02101,"1201,00093-7154-19 ",.02)
 ;;00093-7154-19
 ;;9002226.02101,"1201,00093-7154-56 ",.01)
 ;;00093-7154-56
 ;;9002226.02101,"1201,00093-7154-56 ",.02)
 ;;00093-7154-56
 ;;9002226.02101,"1201,00093-7154-93 ",.01)
 ;;00093-7154-93
 ;;9002226.02101,"1201,00093-7154-93 ",.02)
 ;;00093-7154-93
 ;;9002226.02101,"1201,00093-7154-98 ",.01)
 ;;00093-7154-98
 ;;9002226.02101,"1201,00093-7154-98 ",.02)
 ;;00093-7154-98
 ;;9002226.02101,"1201,00093-7155-10 ",.01)
 ;;00093-7155-10
 ;;9002226.02101,"1201,00093-7155-10 ",.02)
 ;;00093-7155-10
 ;;9002226.02101,"1201,00093-7155-19 ",.01)
 ;;00093-7155-19
 ;;9002226.02101,"1201,00093-7155-19 ",.02)
 ;;00093-7155-19
 ;;9002226.02101,"1201,00093-7155-56 ",.01)
 ;;00093-7155-56
 ;;9002226.02101,"1201,00093-7155-56 ",.02)
 ;;00093-7155-56
 ;;9002226.02101,"1201,00093-7155-93 ",.01)
 ;;00093-7155-93
 ;;9002226.02101,"1201,00093-7155-93 ",.02)
 ;;00093-7155-93
 ;;9002226.02101,"1201,00093-7155-98 ",.01)
 ;;00093-7155-98
 ;;9002226.02101,"1201,00093-7155-98 ",.02)
 ;;00093-7155-98
 ;;9002226.02101,"1201,00093-7156-10 ",.01)
 ;;00093-7156-10
 ;;9002226.02101,"1201,00093-7156-10 ",.02)
 ;;00093-7156-10
 ;;9002226.02101,"1201,00093-7156-19 ",.01)
 ;;00093-7156-19
 ;;9002226.02101,"1201,00093-7156-19 ",.02)
 ;;00093-7156-19
 ;;9002226.02101,"1201,00093-7156-56 ",.01)
 ;;00093-7156-56
 ;;9002226.02101,"1201,00093-7156-56 ",.02)
 ;;00093-7156-56
 ;;9002226.02101,"1201,00093-7156-93 ",.01)
 ;;00093-7156-93
 ;;9002226.02101,"1201,00093-7156-93 ",.02)
 ;;00093-7156-93
 ;;9002226.02101,"1201,00093-7156-98 ",.01)
 ;;00093-7156-98
 ;;9002226.02101,"1201,00093-7156-98 ",.02)
 ;;00093-7156-98
 ;;9002226.02101,"1201,00093-7201-10 ",.01)
 ;;00093-7201-10
 ;;9002226.02101,"1201,00093-7201-10 ",.02)
 ;;00093-7201-10
 ;;9002226.02101,"1201,00093-7201-98 ",.01)
 ;;00093-7201-98
 ;;9002226.02101,"1201,00093-7201-98 ",.02)
 ;;00093-7201-98
 ;;9002226.02101,"1201,00093-7202-10 ",.01)
 ;;00093-7202-10
 ;;9002226.02101,"1201,00093-7202-10 ",.02)
 ;;00093-7202-10
 ;;9002226.02101,"1201,00093-7202-98 ",.01)
 ;;00093-7202-98