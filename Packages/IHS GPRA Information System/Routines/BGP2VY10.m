BGP2VY10 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 12, 2012;
 ;;12.1;IHS CLINICAL REPORTING;;MAY 17, 2012;Build 66
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"804,49999-0046-14 ",.01)
 ;;49999-0046-14
 ;;9002226.02101,"804,49999-0046-14 ",.02)
 ;;49999-0046-14
 ;;9002226.02101,"804,49999-0046-20 ",.01)
 ;;49999-0046-20
 ;;9002226.02101,"804,49999-0046-20 ",.02)
 ;;49999-0046-20
 ;;9002226.02101,"804,49999-0046-30 ",.01)
 ;;49999-0046-30
 ;;9002226.02101,"804,49999-0046-30 ",.02)
 ;;49999-0046-30
 ;;9002226.02101,"804,49999-0048-01 ",.01)
 ;;49999-0048-01
 ;;9002226.02101,"804,49999-0048-01 ",.02)
 ;;49999-0048-01
 ;;9002226.02101,"804,49999-0048-20 ",.01)
 ;;49999-0048-20
 ;;9002226.02101,"804,49999-0048-20 ",.02)
 ;;49999-0048-20
 ;;9002226.02101,"804,49999-0048-30 ",.01)
 ;;49999-0048-30
 ;;9002226.02101,"804,49999-0048-30 ",.02)
 ;;49999-0048-30
 ;;9002226.02101,"804,49999-0048-40 ",.01)
 ;;49999-0048-40
 ;;9002226.02101,"804,49999-0048-40 ",.02)
 ;;49999-0048-40
 ;;9002226.02101,"804,49999-0048-60 ",.01)
 ;;49999-0048-60
 ;;9002226.02101,"804,49999-0048-60 ",.02)
 ;;49999-0048-60
 ;;9002226.02101,"804,49999-0048-90 ",.01)
 ;;49999-0048-90
 ;;9002226.02101,"804,49999-0048-90 ",.02)
 ;;49999-0048-90
 ;;9002226.02101,"804,49999-0064-00 ",.01)
 ;;49999-0064-00
 ;;9002226.02101,"804,49999-0064-00 ",.02)
 ;;49999-0064-00
 ;;9002226.02101,"804,49999-0064-01 ",.01)
 ;;49999-0064-01
 ;;9002226.02101,"804,49999-0064-01 ",.02)
 ;;49999-0064-01
 ;;9002226.02101,"804,49999-0064-06 ",.01)
 ;;49999-0064-06
 ;;9002226.02101,"804,49999-0064-06 ",.02)
 ;;49999-0064-06
 ;;9002226.02101,"804,49999-0064-07 ",.01)
 ;;49999-0064-07
 ;;9002226.02101,"804,49999-0064-07 ",.02)
 ;;49999-0064-07
 ;;9002226.02101,"804,49999-0064-10 ",.01)
 ;;49999-0064-10
 ;;9002226.02101,"804,49999-0064-10 ",.02)
 ;;49999-0064-10
 ;;9002226.02101,"804,49999-0064-14 ",.01)
 ;;49999-0064-14
 ;;9002226.02101,"804,49999-0064-14 ",.02)
 ;;49999-0064-14
 ;;9002226.02101,"804,49999-0064-15 ",.01)
 ;;49999-0064-15
 ;;9002226.02101,"804,49999-0064-15 ",.02)
 ;;49999-0064-15
 ;;9002226.02101,"804,49999-0064-18 ",.01)
 ;;49999-0064-18
 ;;9002226.02101,"804,49999-0064-18 ",.02)
 ;;49999-0064-18
 ;;9002226.02101,"804,49999-0064-20 ",.01)
 ;;49999-0064-20
 ;;9002226.02101,"804,49999-0064-20 ",.02)
 ;;49999-0064-20
 ;;9002226.02101,"804,49999-0064-30 ",.01)
 ;;49999-0064-30
 ;;9002226.02101,"804,49999-0064-30 ",.02)
 ;;49999-0064-30
 ;;9002226.02101,"804,49999-0064-40 ",.01)
 ;;49999-0064-40
 ;;9002226.02101,"804,49999-0064-40 ",.02)
 ;;49999-0064-40
 ;;9002226.02101,"804,49999-0064-50 ",.01)
 ;;49999-0064-50
 ;;9002226.02101,"804,49999-0064-50 ",.02)
 ;;49999-0064-50
 ;;9002226.02101,"804,49999-0064-60 ",.01)
 ;;49999-0064-60
 ;;9002226.02101,"804,49999-0064-60 ",.02)
 ;;49999-0064-60
 ;;9002226.02101,"804,49999-0064-90 ",.01)
 ;;49999-0064-90
 ;;9002226.02101,"804,49999-0064-90 ",.02)
 ;;49999-0064-90
 ;;9002226.02101,"804,49999-0065-01 ",.01)
 ;;49999-0065-01
 ;;9002226.02101,"804,49999-0065-01 ",.02)
 ;;49999-0065-01
 ;;9002226.02101,"804,49999-0065-12 ",.01)
 ;;49999-0065-12
 ;;9002226.02101,"804,49999-0065-12 ",.02)
 ;;49999-0065-12
 ;;9002226.02101,"804,49999-0065-20 ",.01)
 ;;49999-0065-20
 ;;9002226.02101,"804,49999-0065-20 ",.02)
 ;;49999-0065-20
 ;;9002226.02101,"804,49999-0065-30 ",.01)
 ;;49999-0065-30
 ;;9002226.02101,"804,49999-0065-30 ",.02)
 ;;49999-0065-30
 ;;9002226.02101,"804,49999-0065-40 ",.01)
 ;;49999-0065-40
 ;;9002226.02101,"804,49999-0065-40 ",.02)
 ;;49999-0065-40
 ;;9002226.02101,"804,49999-0065-60 ",.01)
 ;;49999-0065-60
 ;;9002226.02101,"804,49999-0065-60 ",.02)
 ;;49999-0065-60
 ;;9002226.02101,"804,49999-0065-90 ",.01)
 ;;49999-0065-90
 ;;9002226.02101,"804,49999-0065-90 ",.02)
 ;;49999-0065-90
 ;;9002226.02101,"804,49999-0274-10 ",.01)
 ;;49999-0274-10
 ;;9002226.02101,"804,49999-0274-10 ",.02)
 ;;49999-0274-10
 ;;9002226.02101,"804,49999-0274-21 ",.01)
 ;;49999-0274-21
 ;;9002226.02101,"804,49999-0274-21 ",.02)
 ;;49999-0274-21
 ;;9002226.02101,"804,49999-0363-01 ",.01)
 ;;49999-0363-01
 ;;9002226.02101,"804,49999-0363-01 ",.02)
 ;;49999-0363-01
 ;;9002226.02101,"804,49999-0363-15 ",.01)
 ;;49999-0363-15
 ;;9002226.02101,"804,49999-0363-15 ",.02)
 ;;49999-0363-15
 ;;9002226.02101,"804,49999-0363-16 ",.01)
 ;;49999-0363-16
 ;;9002226.02101,"804,49999-0363-16 ",.02)
 ;;49999-0363-16
 ;;9002226.02101,"804,49999-0363-18 ",.01)
 ;;49999-0363-18
 ;;9002226.02101,"804,49999-0363-18 ",.02)
 ;;49999-0363-18
 ;;9002226.02101,"804,49999-0363-20 ",.01)
 ;;49999-0363-20
 ;;9002226.02101,"804,49999-0363-20 ",.02)
 ;;49999-0363-20
 ;;9002226.02101,"804,49999-0363-30 ",.01)
 ;;49999-0363-30
 ;;9002226.02101,"804,49999-0363-30 ",.02)
 ;;49999-0363-30
 ;;9002226.02101,"804,49999-0363-60 ",.01)
 ;;49999-0363-60
 ;;9002226.02101,"804,49999-0363-60 ",.02)
 ;;49999-0363-60
 ;;9002226.02101,"804,49999-0363-90 ",.01)
 ;;49999-0363-90
 ;;9002226.02101,"804,49999-0363-90 ",.02)
 ;;49999-0363-90
 ;;9002226.02101,"804,49999-0791-00 ",.01)
 ;;49999-0791-00
 ;;9002226.02101,"804,49999-0791-00 ",.02)
 ;;49999-0791-00
 ;;9002226.02101,"804,49999-0791-21 ",.01)
 ;;49999-0791-21
 ;;9002226.02101,"804,49999-0791-21 ",.02)
 ;;49999-0791-21
 ;;9002226.02101,"804,49999-0791-30 ",.01)
 ;;49999-0791-30
 ;;9002226.02101,"804,49999-0791-30 ",.02)
 ;;49999-0791-30
 ;;9002226.02101,"804,50111-0563-01 ",.01)
 ;;50111-0563-01
 ;;9002226.02101,"804,50111-0563-01 ",.02)
 ;;50111-0563-01
 ;;9002226.02101,"804,50111-0563-02 ",.01)
 ;;50111-0563-02
 ;;9002226.02101,"804,50111-0563-02 ",.02)
 ;;50111-0563-02
 ;;9002226.02101,"804,50111-0563-03 ",.01)
 ;;50111-0563-03
 ;;9002226.02101,"804,50111-0563-03 ",.02)
 ;;50111-0563-03
 ;;9002226.02101,"804,50111-0820-01 ",.01)
 ;;50111-0820-01
 ;;9002226.02101,"804,50111-0820-01 ",.02)
 ;;50111-0820-01
 ;;9002226.02101,"804,50458-0625-60 ",.01)
 ;;50458-0625-60
 ;;9002226.02101,"804,50458-0625-60 ",.02)
 ;;50458-0625-60
 ;;9002226.02101,"804,50580-0280-10 ",.01)
 ;;50580-0280-10
 ;;9002226.02101,"804,50580-0280-10 ",.02)
 ;;50580-0280-10
 ;;9002226.02101,"804,50580-0874-11 ",.01)
 ;;50580-0874-11
 ;;9002226.02101,"804,50580-0874-11 ",.02)
 ;;50580-0874-11
 ;;9002226.02101,"804,51079-0055-01 ",.01)
 ;;51079-0055-01
 ;;9002226.02101,"804,51079-0055-01 ",.02)
 ;;51079-0055-01
 ;;9002226.02101,"804,51079-0055-20 ",.01)
 ;;51079-0055-20
 ;;9002226.02101,"804,51079-0055-20 ",.02)
 ;;51079-0055-20
 ;;9002226.02101,"804,51079-0476-01 ",.01)
 ;;51079-0476-01
 ;;9002226.02101,"804,51079-0476-01 ",.02)
 ;;51079-0476-01
 ;;9002226.02101,"804,51079-0476-20 ",.01)
 ;;51079-0476-20
 ;;9002226.02101,"804,51079-0476-20 ",.02)
 ;;51079-0476-20
 ;;9002226.02101,"804,51079-0644-01 ",.01)
 ;;51079-0644-01
 ;;9002226.02101,"804,51079-0644-01 ",.02)
 ;;51079-0644-01
 ;;9002226.02101,"804,51079-0644-19 ",.01)
 ;;51079-0644-19
 ;;9002226.02101,"804,51079-0644-19 ",.02)
 ;;51079-0644-19
 ;;9002226.02101,"804,51079-0644-20 ",.01)
 ;;51079-0644-20
 ;;9002226.02101,"804,51079-0644-20 ",.02)
 ;;51079-0644-20
 ;;9002226.02101,"804,51079-0644-93 ",.01)
 ;;51079-0644-93
 ;;9002226.02101,"804,51079-0644-93 ",.02)
 ;;51079-0644-93
 ;;9002226.02101,"804,51079-0644-97 ",.01)
 ;;51079-0644-97
 ;;9002226.02101,"804,51079-0644-97 ",.02)
 ;;51079-0644-97
 ;;9002226.02101,"804,51079-0819-01 ",.01)
 ;;51079-0819-01
 ;;9002226.02101,"804,51079-0819-01 ",.02)
 ;;51079-0819-01
 ;;9002226.02101,"804,51079-0819-20 ",.01)
 ;;51079-0819-20
 ;;9002226.02101,"804,51079-0819-20 ",.02)
 ;;51079-0819-20
 ;;9002226.02101,"804,51285-0873-02 ",.01)
 ;;51285-0873-02
 ;;9002226.02101,"804,51285-0873-02 ",.02)
 ;;51285-0873-02
 ;;9002226.02101,"804,51285-0873-04 ",.01)
 ;;51285-0873-04
 ;;9002226.02101,"804,51285-0873-04 ",.02)
 ;;51285-0873-04
 ;;9002226.02101,"804,51285-0873-05 ",.01)
 ;;51285-0873-05
 ;;9002226.02101,"804,51285-0873-05 ",.02)
 ;;51285-0873-05
 ;;9002226.02101,"804,51285-0874-04 ",.01)
 ;;51285-0874-04
 ;;9002226.02101,"804,51285-0874-04 ",.02)
 ;;51285-0874-04
 ;;9002226.02101,"804,51285-0874-05 ",.01)
 ;;51285-0874-05
 ;;9002226.02101,"804,51285-0874-05 ",.02)
 ;;51285-0874-05
 ;;9002226.02101,"804,51525-5901-01 ",.01)
 ;;51525-5901-01
 ;;9002226.02101,"804,51525-5901-01 ",.02)
 ;;51525-5901-01
 ;;9002226.02101,"804,51655-0141-50 ",.01)
 ;;51655-0141-50
 ;;9002226.02101,"804,51655-0141-50 ",.02)
 ;;51655-0141-50
 ;;9002226.02101,"804,51655-0141-52 ",.01)
 ;;51655-0141-52
 ;;9002226.02101,"804,51655-0141-52 ",.02)
 ;;51655-0141-52
 ;;9002226.02101,"804,51655-0240-53 ",.01)
 ;;51655-0240-53
 ;;9002226.02101,"804,51655-0240-53 ",.02)
 ;;51655-0240-53
 ;;9002226.02101,"804,51655-0440-24 ",.01)
 ;;51655-0440-24
 ;;9002226.02101,"804,51655-0440-24 ",.02)
 ;;51655-0440-24
 ;;9002226.02101,"804,51655-0440-25 ",.01)
 ;;51655-0440-25
 ;;9002226.02101,"804,51655-0440-25 ",.02)
 ;;51655-0440-25
 ;;9002226.02101,"804,51655-0440-52 ",.01)
 ;;51655-0440-52
 ;;9002226.02101,"804,51655-0440-52 ",.02)
 ;;51655-0440-52
 ;;9002226.02101,"804,51655-0440-54 ",.01)
 ;;51655-0440-54
 ;;9002226.02101,"804,51655-0440-54 ",.02)
 ;;51655-0440-54
 ;;9002226.02101,"804,51655-0440-85 ",.01)
 ;;51655-0440-85
 ;;9002226.02101,"804,51655-0440-85 ",.02)
 ;;51655-0440-85
 ;;9002226.02101,"804,51655-0440-89 ",.01)
 ;;51655-0440-89
 ;;9002226.02101,"804,51655-0440-89 ",.02)
 ;;51655-0440-89
 ;;9002226.02101,"804,51655-0576-24 ",.01)
 ;;51655-0576-24
 ;;9002226.02101,"804,51655-0576-24 ",.02)
 ;;51655-0576-24
 ;;9002226.02101,"804,51655-0576-52 ",.01)
 ;;51655-0576-52
 ;;9002226.02101,"804,51655-0576-52 ",.02)
 ;;51655-0576-52
 ;;9002226.02101,"804,51991-0467-01 ",.01)
 ;;51991-0467-01
 ;;9002226.02101,"804,51991-0467-01 ",.02)
 ;;51991-0467-01
 ;;9002226.02101,"804,51991-0467-10 ",.01)
 ;;51991-0467-10
 ;;9002226.02101,"804,51991-0467-10 ",.02)
 ;;51991-0467-10
 ;;9002226.02101,"804,51991-0468-01 ",.01)
 ;;51991-0468-01
 ;;9002226.02101,"804,51991-0468-01 ",.02)
 ;;51991-0468-01
 ;;9002226.02101,"804,51991-0468-10 ",.01)
 ;;51991-0468-10
 ;;9002226.02101,"804,51991-0468-10 ",.02)
 ;;51991-0468-10
 ;;9002226.02101,"804,52152-0025-02 ",.01)
 ;;52152-0025-02
 ;;9002226.02101,"804,52152-0025-02 ",.02)
 ;;52152-0025-02
 ;;9002226.02101,"804,52152-0025-04 ",.01)
 ;;52152-0025-04
 ;;9002226.02101,"804,52152-0025-04 ",.02)
 ;;52152-0025-04
 ;;9002226.02101,"804,52152-0053-02 ",.01)
 ;;52152-0053-02
 ;;9002226.02101,"804,52152-0053-02 ",.02)
 ;;52152-0053-02
 ;;9002226.02101,"804,52152-0053-05 ",.01)
 ;;52152-0053-05
 ;;9002226.02101,"804,52152-0053-05 ",.02)
 ;;52152-0053-05
 ;;9002226.02101,"804,52152-0136-02 ",.01)
 ;;52152-0136-02
 ;;9002226.02101,"804,52152-0136-02 ",.02)
 ;;52152-0136-02
 ;;9002226.02101,"804,52152-0136-04 ",.01)
 ;;52152-0136-04
 ;;9002226.02101,"804,52152-0136-04 ",.02)
 ;;52152-0136-04
 ;;9002226.02101,"804,52152-0136-05 ",.01)
 ;;52152-0136-05
 ;;9002226.02101,"804,52152-0136-05 ",.02)
 ;;52152-0136-05
 ;;9002226.02101,"804,52152-0137-02 ",.01)
 ;;52152-0137-02
 ;;9002226.02101,"804,52152-0137-02 ",.02)
 ;;52152-0137-02
 ;;9002226.02101,"804,52152-0137-04 ",.01)
 ;;52152-0137-04
 ;;9002226.02101,"804,52152-0137-04 ",.02)
 ;;52152-0137-04
 ;;9002226.02101,"804,52152-0138-02 ",.01)
 ;;52152-0138-02
 ;;9002226.02101,"804,52152-0138-02 ",.02)
 ;;52152-0138-02
 ;;9002226.02101,"804,52152-0301-02 ",.01)
 ;;52152-0301-02
 ;;9002226.02101,"804,52152-0301-02 ",.02)
 ;;52152-0301-02
 ;;9002226.02101,"804,52152-0302-02 ",.01)
 ;;52152-0302-02
 ;;9002226.02101,"804,52152-0302-02 ",.02)
 ;;52152-0302-02
 ;;9002226.02101,"804,52152-0302-05 ",.01)
 ;;52152-0302-05
 ;;9002226.02101,"804,52152-0302-05 ",.02)
 ;;52152-0302-05
 ;;9002226.02101,"804,52152-0340-02 ",.01)
 ;;52152-0340-02
 ;;9002226.02101,"804,52152-0340-02 ",.02)
 ;;52152-0340-02
 ;;9002226.02101,"804,52244-0449-10 ",.01)
 ;;52244-0449-10
 ;;9002226.02101,"804,52244-0449-10 ",.02)
 ;;52244-0449-10
 ;;9002226.02101,"804,52959-0006-10 ",.01)
 ;;52959-0006-10
 ;;9002226.02101,"804,52959-0006-10 ",.02)
 ;;52959-0006-10
 ;;9002226.02101,"804,52959-0006-20 ",.01)
 ;;52959-0006-20
 ;;9002226.02101,"804,52959-0006-20 ",.02)
 ;;52959-0006-20
 ;;9002226.02101,"804,52959-0006-30 ",.01)
 ;;52959-0006-30
 ;;9002226.02101,"804,52959-0006-30 ",.02)
 ;;52959-0006-30
 ;;9002226.02101,"804,52959-0006-90 ",.01)
 ;;52959-0006-90
 ;;9002226.02101,"804,52959-0006-90 ",.02)
 ;;52959-0006-90
 ;;9002226.02101,"804,52959-0026-00 ",.01)
 ;;52959-0026-00
 ;;9002226.02101,"804,52959-0026-00 ",.02)
 ;;52959-0026-00
 ;;9002226.02101,"804,52959-0026-03 ",.01)
 ;;52959-0026-03
 ;;9002226.02101,"804,52959-0026-03 ",.02)
 ;;52959-0026-03
 ;;9002226.02101,"804,52959-0026-06 ",.01)
 ;;52959-0026-06
 ;;9002226.02101,"804,52959-0026-06 ",.02)
 ;;52959-0026-06
 ;;9002226.02101,"804,52959-0026-10 ",.01)
 ;;52959-0026-10
 ;;9002226.02101,"804,52959-0026-10 ",.02)
 ;;52959-0026-10
 ;;9002226.02101,"804,52959-0026-12 ",.01)
 ;;52959-0026-12
 ;;9002226.02101,"804,52959-0026-12 ",.02)
 ;;52959-0026-12
 ;;9002226.02101,"804,52959-0026-14 ",.01)
 ;;52959-0026-14
 ;;9002226.02101,"804,52959-0026-14 ",.02)
 ;;52959-0026-14
 ;;9002226.02101,"804,52959-0026-15 ",.01)
 ;;52959-0026-15
 ;;9002226.02101,"804,52959-0026-15 ",.02)
 ;;52959-0026-15
 ;;9002226.02101,"804,52959-0026-20 ",.01)
 ;;52959-0026-20
 ;;9002226.02101,"804,52959-0026-20 ",.02)
 ;;52959-0026-20
 ;;9002226.02101,"804,52959-0026-21 ",.01)
 ;;52959-0026-21
 ;;9002226.02101,"804,52959-0026-21 ",.02)
 ;;52959-0026-21
 ;;9002226.02101,"804,52959-0026-24 ",.01)
 ;;52959-0026-24
 ;;9002226.02101,"804,52959-0026-24 ",.02)
 ;;52959-0026-24