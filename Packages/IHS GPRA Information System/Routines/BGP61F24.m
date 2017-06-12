BGP61F24 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1733,13668-0116-90 ",.02)
 ;;13668-0116-90
 ;;9002226.02101,"1733,13668-0117-10 ",.01)
 ;;13668-0117-10
 ;;9002226.02101,"1733,13668-0117-10 ",.02)
 ;;13668-0117-10
 ;;9002226.02101,"1733,13668-0117-30 ",.01)
 ;;13668-0117-30
 ;;9002226.02101,"1733,13668-0117-30 ",.02)
 ;;13668-0117-30
 ;;9002226.02101,"1733,13668-0117-90 ",.01)
 ;;13668-0117-90
 ;;9002226.02101,"1733,13668-0117-90 ",.02)
 ;;13668-0117-90
 ;;9002226.02101,"1733,13668-0118-10 ",.01)
 ;;13668-0118-10
 ;;9002226.02101,"1733,13668-0118-10 ",.02)
 ;;13668-0118-10
 ;;9002226.02101,"1733,13668-0118-30 ",.01)
 ;;13668-0118-30
 ;;9002226.02101,"1733,13668-0118-30 ",.02)
 ;;13668-0118-30
 ;;9002226.02101,"1733,13668-0118-90 ",.01)
 ;;13668-0118-90
 ;;9002226.02101,"1733,13668-0118-90 ",.02)
 ;;13668-0118-90
 ;;9002226.02101,"1733,13668-0156-30 ",.01)
 ;;13668-0156-30
 ;;9002226.02101,"1733,13668-0156-30 ",.02)
 ;;13668-0156-30
 ;;9002226.02101,"1733,13668-0156-36 ",.01)
 ;;13668-0156-36
 ;;9002226.02101,"1733,13668-0156-36 ",.02)
 ;;13668-0156-36
 ;;9002226.02101,"1733,13668-0156-72 ",.01)
 ;;13668-0156-72
 ;;9002226.02101,"1733,13668-0156-72 ",.02)
 ;;13668-0156-72
 ;;9002226.02101,"1733,13668-0157-30 ",.01)
 ;;13668-0157-30
 ;;9002226.02101,"1733,13668-0157-30 ",.02)
 ;;13668-0157-30
 ;;9002226.02101,"1733,13668-0157-36 ",.01)
 ;;13668-0157-36
 ;;9002226.02101,"1733,13668-0157-36 ",.02)
 ;;13668-0157-36
 ;;9002226.02101,"1733,13668-0157-72 ",.01)
 ;;13668-0157-72
 ;;9002226.02101,"1733,13668-0157-72 ",.02)
 ;;13668-0157-72
 ;;9002226.02101,"1733,13668-0158-30 ",.01)
 ;;13668-0158-30
 ;;9002226.02101,"1733,13668-0158-30 ",.02)
 ;;13668-0158-30
 ;;9002226.02101,"1733,13668-0158-36 ",.01)
 ;;13668-0158-36
 ;;9002226.02101,"1733,13668-0158-36 ",.02)
 ;;13668-0158-36
 ;;9002226.02101,"1733,13668-0158-72 ",.01)
 ;;13668-0158-72
 ;;9002226.02101,"1733,13668-0158-72 ",.02)
 ;;13668-0158-72
 ;;9002226.02101,"1733,13668-0159-30 ",.01)
 ;;13668-0159-30
 ;;9002226.02101,"1733,13668-0159-30 ",.02)
 ;;13668-0159-30
 ;;9002226.02101,"1733,13668-0160-30 ",.01)
 ;;13668-0160-30
 ;;9002226.02101,"1733,13668-0160-30 ",.02)
 ;;13668-0160-30
 ;;9002226.02101,"1733,13668-0161-30 ",.01)
 ;;13668-0161-30
 ;;9002226.02101,"1733,13668-0161-30 ",.02)
 ;;13668-0161-30
 ;;9002226.02101,"1733,13668-0204-30 ",.01)
 ;;13668-0204-30
 ;;9002226.02101,"1733,13668-0204-30 ",.02)
 ;;13668-0204-30
 ;;9002226.02101,"1733,13668-0205-30 ",.01)
 ;;13668-0205-30
 ;;9002226.02101,"1733,13668-0205-30 ",.02)
 ;;13668-0205-30
 ;;9002226.02101,"1733,13668-0206-30 ",.01)
 ;;13668-0206-30
 ;;9002226.02101,"1733,13668-0206-30 ",.02)
 ;;13668-0206-30
 ;;9002226.02101,"1733,13668-0207-30 ",.01)
 ;;13668-0207-30
 ;;9002226.02101,"1733,13668-0207-30 ",.02)
 ;;13668-0207-30
 ;;9002226.02101,"1733,13668-0343-30 ",.01)
 ;;13668-0343-30
 ;;9002226.02101,"1733,13668-0343-30 ",.02)
 ;;13668-0343-30
 ;;9002226.02101,"1733,13668-0344-30 ",.01)
 ;;13668-0344-30
 ;;9002226.02101,"1733,13668-0344-30 ",.02)
 ;;13668-0344-30
 ;;9002226.02101,"1733,13668-0345-30 ",.01)
 ;;13668-0345-30
 ;;9002226.02101,"1733,13668-0345-30 ",.02)
 ;;13668-0345-30
 ;;9002226.02101,"1733,13668-0346-30 ",.01)
 ;;13668-0346-30
 ;;9002226.02101,"1733,13668-0346-30 ",.02)
 ;;13668-0346-30
 ;;9002226.02101,"1733,13668-0409-10 ",.01)
 ;;13668-0409-10
 ;;9002226.02101,"1733,13668-0409-10 ",.02)
 ;;13668-0409-10
 ;;9002226.02101,"1733,13668-0409-30 ",.01)
 ;;13668-0409-30
 ;;9002226.02101,"1733,13668-0409-30 ",.02)
 ;;13668-0409-30
 ;;9002226.02101,"1733,13668-0409-90 ",.01)
 ;;13668-0409-90
 ;;9002226.02101,"1733,13668-0409-90 ",.02)
 ;;13668-0409-90
 ;;9002226.02101,"1733,13811-0627-10 ",.01)
 ;;13811-0627-10
 ;;9002226.02101,"1733,13811-0627-10 ",.02)
 ;;13811-0627-10
 ;;9002226.02101,"1733,13811-0628-10 ",.01)
 ;;13811-0628-10
 ;;9002226.02101,"1733,13811-0628-10 ",.02)
 ;;13811-0628-10
 ;;9002226.02101,"1733,13811-0628-50 ",.01)
 ;;13811-0628-50
 ;;9002226.02101,"1733,13811-0628-50 ",.02)
 ;;13811-0628-50
 ;;9002226.02101,"1733,13811-0629-10 ",.01)
 ;;13811-0629-10
 ;;9002226.02101,"1733,13811-0629-10 ",.02)
 ;;13811-0629-10
 ;;9002226.02101,"1733,13811-0629-50 ",.01)
 ;;13811-0629-50
 ;;9002226.02101,"1733,13811-0629-50 ",.02)
 ;;13811-0629-50
 ;;9002226.02101,"1733,13811-0630-10 ",.01)
 ;;13811-0630-10
 ;;9002226.02101,"1733,13811-0630-10 ",.02)
 ;;13811-0630-10
 ;;9002226.02101,"1733,13811-0630-50 ",.01)
 ;;13811-0630-50
 ;;9002226.02101,"1733,13811-0630-50 ",.02)
 ;;13811-0630-50
 ;;9002226.02101,"1733,15338-0200-30 ",.01)
 ;;15338-0200-30
 ;;9002226.02101,"1733,15338-0200-30 ",.02)
 ;;15338-0200-30
 ;;9002226.02101,"1733,15338-0211-30 ",.01)
 ;;15338-0211-30
 ;;9002226.02101,"1733,15338-0211-30 ",.02)
 ;;15338-0211-30
 ;;9002226.02101,"1733,15338-0220-30 ",.01)
 ;;15338-0220-30
 ;;9002226.02101,"1733,15338-0220-30 ",.02)
 ;;15338-0220-30
 ;;9002226.02101,"1733,15338-0233-30 ",.01)
 ;;15338-0233-30
 ;;9002226.02101,"1733,15338-0233-30 ",.02)
 ;;15338-0233-30
 ;;9002226.02101,"1733,16252-0541-30 ",.01)
 ;;16252-0541-30
 ;;9002226.02101,"1733,16252-0541-30 ",.02)
 ;;16252-0541-30
 ;;9002226.02101,"1733,16252-0542-90 ",.01)
 ;;16252-0542-90
 ;;9002226.02101,"1733,16252-0542-90 ",.02)
 ;;16252-0542-90
 ;;9002226.02101,"1733,16252-0543-90 ",.01)
 ;;16252-0543-90
 ;;9002226.02101,"1733,16252-0543-90 ",.02)
 ;;16252-0543-90
 ;;9002226.02101,"1733,16252-0570-30 ",.01)
 ;;16252-0570-30
 ;;9002226.02101,"1733,16252-0570-30 ",.02)
 ;;16252-0570-30
 ;;9002226.02101,"1733,16252-0571-01 ",.01)
 ;;16252-0571-01
 ;;9002226.02101,"1733,16252-0571-01 ",.02)
 ;;16252-0571-01
 ;;9002226.02101,"1733,16252-0571-50 ",.01)
 ;;16252-0571-50
 ;;9002226.02101,"1733,16252-0571-50 ",.02)
 ;;16252-0571-50
 ;;9002226.02101,"1733,16252-0572-01 ",.01)
 ;;16252-0572-01
 ;;9002226.02101,"1733,16252-0572-01 ",.02)
 ;;16252-0572-01
 ;;9002226.02101,"1733,16252-0572-50 ",.01)
 ;;16252-0572-50
 ;;9002226.02101,"1733,16252-0572-50 ",.02)
 ;;16252-0572-50
 ;;9002226.02101,"1733,16252-0573-01 ",.01)
 ;;16252-0573-01
 ;;9002226.02101,"1733,16252-0573-01 ",.02)
 ;;16252-0573-01
 ;;9002226.02101,"1733,16252-0573-50 ",.01)
 ;;16252-0573-50
 ;;9002226.02101,"1733,16252-0573-50 ",.02)
 ;;16252-0573-50
 ;;9002226.02101,"1733,16571-0500-50 ",.01)
 ;;16571-0500-50
 ;;9002226.02101,"1733,16571-0500-50 ",.02)
 ;;16571-0500-50
 ;;9002226.02101,"1733,16571-0501-11 ",.01)
 ;;16571-0501-11
 ;;9002226.02101,"1733,16571-0501-11 ",.02)
 ;;16571-0501-11
 ;;9002226.02101,"1733,16571-0502-11 ",.01)
 ;;16571-0502-11
 ;;9002226.02101,"1733,16571-0502-11 ",.02)
 ;;16571-0502-11
 ;;9002226.02101,"1733,16590-0063-30 ",.01)
 ;;16590-0063-30
 ;;9002226.02101,"1733,16590-0063-30 ",.02)
 ;;16590-0063-30
 ;;9002226.02101,"1733,16590-0259-30 ",.01)
 ;;16590-0259-30
 ;;9002226.02101,"1733,16590-0259-30 ",.02)
 ;;16590-0259-30
 ;;9002226.02101,"1733,16590-0277-30 ",.01)
 ;;16590-0277-30
 ;;9002226.02101,"1733,16590-0277-30 ",.02)
 ;;16590-0277-30
 ;;9002226.02101,"1733,16590-0280-30 ",.01)
 ;;16590-0280-30
 ;;9002226.02101,"1733,16590-0280-30 ",.02)
 ;;16590-0280-30
 ;;9002226.02101,"1733,16590-0306-30 ",.01)
 ;;16590-0306-30
 ;;9002226.02101,"1733,16590-0306-30 ",.02)
 ;;16590-0306-30
 ;;9002226.02101,"1733,16590-0306-60 ",.01)
 ;;16590-0306-60
 ;;9002226.02101,"1733,16590-0306-60 ",.02)
 ;;16590-0306-60
 ;;9002226.02101,"1733,16590-0306-90 ",.01)
 ;;16590-0306-90
 ;;9002226.02101,"1733,16590-0306-90 ",.02)
 ;;16590-0306-90
 ;;9002226.02101,"1733,16590-0307-30 ",.01)
 ;;16590-0307-30
 ;;9002226.02101,"1733,16590-0307-30 ",.02)
 ;;16590-0307-30
 ;;9002226.02101,"1733,16590-0307-60 ",.01)
 ;;16590-0307-60
 ;;9002226.02101,"1733,16590-0307-60 ",.02)
 ;;16590-0307-60
 ;;9002226.02101,"1733,16590-0307-90 ",.01)
 ;;16590-0307-90
 ;;9002226.02101,"1733,16590-0307-90 ",.02)
 ;;16590-0307-90
 ;;9002226.02101,"1733,16590-0309-30 ",.01)
 ;;16590-0309-30
 ;;9002226.02101,"1733,16590-0309-30 ",.02)
 ;;16590-0309-30
 ;;9002226.02101,"1733,16590-0309-60 ",.01)
 ;;16590-0309-60
 ;;9002226.02101,"1733,16590-0309-60 ",.02)
 ;;16590-0309-60
 ;;9002226.02101,"1733,16590-0309-72 ",.01)
 ;;16590-0309-72
 ;;9002226.02101,"1733,16590-0309-72 ",.02)
 ;;16590-0309-72
 ;;9002226.02101,"1733,16590-0309-90 ",.01)
 ;;16590-0309-90
 ;;9002226.02101,"1733,16590-0309-90 ",.02)
 ;;16590-0309-90
 ;;9002226.02101,"1733,16590-0312-30 ",.01)
 ;;16590-0312-30
 ;;9002226.02101,"1733,16590-0312-30 ",.02)
 ;;16590-0312-30
 ;;9002226.02101,"1733,16590-0332-30 ",.01)
 ;;16590-0332-30
 ;;9002226.02101,"1733,16590-0332-30 ",.02)
 ;;16590-0332-30
 ;;9002226.02101,"1733,16590-0356-30 ",.01)
 ;;16590-0356-30
 ;;9002226.02101,"1733,16590-0356-30 ",.02)
 ;;16590-0356-30
 ;;9002226.02101,"1733,16590-0356-60 ",.01)
 ;;16590-0356-60
 ;;9002226.02101,"1733,16590-0356-60 ",.02)
 ;;16590-0356-60
 ;;9002226.02101,"1733,16590-0360-30 ",.01)
 ;;16590-0360-30
 ;;9002226.02101,"1733,16590-0360-30 ",.02)
 ;;16590-0360-30
 ;;9002226.02101,"1733,16590-0360-60 ",.01)
 ;;16590-0360-60
 ;;9002226.02101,"1733,16590-0360-60 ",.02)
 ;;16590-0360-60
 ;;9002226.02101,"1733,16590-0360-90 ",.01)
 ;;16590-0360-90
 ;;9002226.02101,"1733,16590-0360-90 ",.02)
 ;;16590-0360-90
 ;;9002226.02101,"1733,16590-0392-30 ",.01)
 ;;16590-0392-30
 ;;9002226.02101,"1733,16590-0392-30 ",.02)
 ;;16590-0392-30
 ;;9002226.02101,"1733,16590-0392-60 ",.01)
 ;;16590-0392-60
 ;;9002226.02101,"1733,16590-0392-60 ",.02)
 ;;16590-0392-60
 ;;9002226.02101,"1733,16590-0392-90 ",.01)
 ;;16590-0392-90
 ;;9002226.02101,"1733,16590-0392-90 ",.02)
 ;;16590-0392-90
 ;;9002226.02101,"1733,16590-0952-90 ",.01)
 ;;16590-0952-90
 ;;9002226.02101,"1733,16590-0952-90 ",.02)
 ;;16590-0952-90
 ;;9002226.02101,"1733,16590-0954-60 ",.01)
 ;;16590-0954-60
 ;;9002226.02101,"1733,16590-0954-60 ",.02)
 ;;16590-0954-60
 ;;9002226.02101,"1733,16714-0224-01 ",.01)
 ;;16714-0224-01
 ;;9002226.02101,"1733,16714-0224-01 ",.02)
 ;;16714-0224-01
 ;;9002226.02101,"1733,16714-0224-02 ",.01)
 ;;16714-0224-02
 ;;9002226.02101,"1733,16714-0224-02 ",.02)
 ;;16714-0224-02
 ;;9002226.02101,"1733,16714-0225-01 ",.01)
 ;;16714-0225-01
 ;;9002226.02101,"1733,16714-0225-01 ",.02)
 ;;16714-0225-01
 ;;9002226.02101,"1733,16714-0225-02 ",.01)
 ;;16714-0225-02
 ;;9002226.02101,"1733,16714-0225-02 ",.02)
 ;;16714-0225-02
 ;;9002226.02101,"1733,16714-0225-04 ",.01)
 ;;16714-0225-04
 ;;9002226.02101,"1733,16714-0225-04 ",.02)
 ;;16714-0225-04
 ;;9002226.02101,"1733,16714-0226-01 ",.01)
 ;;16714-0226-01
 ;;9002226.02101,"1733,16714-0226-01 ",.02)
 ;;16714-0226-01
 ;;9002226.02101,"1733,16714-0226-02 ",.01)
 ;;16714-0226-02
 ;;9002226.02101,"1733,16714-0226-02 ",.02)
 ;;16714-0226-02
 ;;9002226.02101,"1733,16714-0226-04 ",.01)
 ;;16714-0226-04
 ;;9002226.02101,"1733,16714-0226-04 ",.02)
 ;;16714-0226-04
 ;;9002226.02101,"1733,16714-0581-02 ",.01)
 ;;16714-0581-02
 ;;9002226.02101,"1733,16714-0581-02 ",.02)
 ;;16714-0581-02
 ;;9002226.02101,"1733,16714-0581-03 ",.01)
 ;;16714-0581-03
 ;;9002226.02101,"1733,16714-0581-03 ",.02)
 ;;16714-0581-03
 ;;9002226.02101,"1733,16714-0582-01 ",.01)
 ;;16714-0582-01
 ;;9002226.02101,"1733,16714-0582-01 ",.02)
 ;;16714-0582-01
 ;;9002226.02101,"1733,16714-0582-02 ",.01)
 ;;16714-0582-02
 ;;9002226.02101,"1733,16714-0582-02 ",.02)
 ;;16714-0582-02
 ;;9002226.02101,"1733,16714-0582-03 ",.01)
 ;;16714-0582-03
 ;;9002226.02101,"1733,16714-0582-03 ",.02)
 ;;16714-0582-03
 ;;9002226.02101,"1733,16714-0583-01 ",.01)
 ;;16714-0583-01
 ;;9002226.02101,"1733,16714-0583-01 ",.02)
 ;;16714-0583-01
 ;;9002226.02101,"1733,16714-0583-02 ",.01)
 ;;16714-0583-02
 ;;9002226.02101,"1733,16714-0583-02 ",.02)
 ;;16714-0583-02
 ;;9002226.02101,"1733,16714-0583-03 ",.01)
 ;;16714-0583-03
 ;;9002226.02101,"1733,16714-0583-03 ",.02)
 ;;16714-0583-03
 ;;9002226.02101,"1733,16729-0152-01 ",.01)
 ;;16729-0152-01
 ;;9002226.02101,"1733,16729-0152-01 ",.02)
 ;;16729-0152-01
 ;;9002226.02101,"1733,16729-0153-01 ",.01)
 ;;16729-0153-01
 ;;9002226.02101,"1733,16729-0153-01 ",.02)
 ;;16729-0153-01
 ;;9002226.02101,"1733,16729-0153-16 ",.01)
 ;;16729-0153-16
 ;;9002226.02101,"1733,16729-0153-16 ",.02)
 ;;16729-0153-16
 ;;9002226.02101,"1733,16729-0154-01 ",.01)
 ;;16729-0154-01
 ;;9002226.02101,"1733,16729-0154-01 ",.02)
 ;;16729-0154-01
 ;;9002226.02101,"1733,16729-0154-16 ",.01)
 ;;16729-0154-16
 ;;9002226.02101,"1733,16729-0154-16 ",.02)
 ;;16729-0154-16
 ;;9002226.02101,"1733,16729-0155-01 ",.01)
 ;;16729-0155-01
 ;;9002226.02101,"1733,16729-0155-01 ",.02)
 ;;16729-0155-01
 ;;9002226.02101,"1733,16729-0155-16 ",.01)
 ;;16729-0155-16