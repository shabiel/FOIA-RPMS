BGP21I4 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"49999-0106-01 ")
 ;;328
 ;;21,"49999-0106-28 ")
 ;;329
 ;;21,"49999-0106-30 ")
 ;;330
 ;;21,"49999-0106-60 ")
 ;;331
 ;;21,"49999-0106-90 ")
 ;;332
 ;;21,"49999-0116-00 ")
 ;;68
 ;;21,"49999-0116-30 ")
 ;;69
 ;;21,"49999-0116-60 ")
 ;;70
 ;;21,"49999-0401-30 ")
 ;;1050
 ;;21,"49999-0401-60 ")
 ;;1051
 ;;21,"49999-0495-30 ")
 ;;598
 ;;21,"49999-0495-60 ")
 ;;599
 ;;21,"49999-0660-30 ")
 ;;1052
 ;;21,"49999-0660-60 ")
 ;;1053
 ;;21,"49999-0820-60 ")
 ;;774
 ;;21,"50268-0531-15 ")
 ;;775
 ;;21,"51079-0626-01 ")
 ;;845
 ;;21,"51079-0626-20 ")
 ;;846
 ;;21,"51079-0627-01 ")
 ;;883
 ;;21,"51079-0627-20 ")
 ;;884
 ;;21,"51079-0972-01 ")
 ;;333
 ;;21,"51079-0972-17 ")
 ;;334
 ;;21,"51079-0972-19 ")
 ;;335
 ;;21,"51079-0972-20 ")
 ;;336
 ;;21,"51079-0972-30 ")
 ;;337
 ;;21,"51079-0972-56 ")
 ;;338
 ;;21,"51079-0972-57 ")
 ;;527
 ;;21,"51079-0973-01 ")
 ;;600
 ;;21,"51079-0973-20 ")
 ;;601
 ;;21,"51079-0995-01 ")
 ;;71
 ;;21,"51079-0995-20 ")
 ;;72
 ;;21,"52959-0207-00 ")
 ;;339
 ;;21,"52959-0207-28 ")
 ;;340
 ;;21,"52959-0207-30 ")
 ;;341
 ;;21,"52959-0207-60 ")
 ;;342
 ;;21,"52959-0860-02 ")
 ;;73
 ;;21,"52959-0860-30 ")
 ;;74
 ;;21,"52959-0860-60 ")
 ;;75
 ;;21,"52959-0860-90 ")
 ;;76
 ;;21,"52959-0896-01 ")
 ;;602
 ;;21,"52959-0896-60 ")
 ;;603
 ;;21,"53002-1251-00 ")
 ;;343
 ;;21,"53002-1251-03 ")
 ;;344
 ;;21,"53002-1251-06 ")
 ;;345
 ;;21,"53002-1422-00 ")
 ;;604
 ;;21,"53002-1422-03 ")
 ;;605
 ;;21,"53002-1422-06 ")
 ;;606
 ;;21,"53002-1445-00 ")
 ;;77
 ;;21,"53002-1445-03 ")
 ;;78
 ;;21,"53002-1445-06 ")
 ;;79
 ;;21,"53489-0467-01 ")
 ;;495
 ;;21,"53489-0467-05 ")
 ;;497
 ;;21,"53489-0467-10 ")
 ;;496
 ;;21,"53489-0468-01 ")
 ;;705
 ;;21,"53489-0468-05 ")
 ;;708
 ;;21,"53489-0468-10 ")
 ;;713
 ;;21,"53489-0469-01 ")
 ;;182
 ;;21,"53489-0469-05 ")
 ;;184
 ;;21,"53489-0469-10 ")
 ;;188
 ;;21,"53746-0178-01 ")
 ;;776
 ;;21,"53746-0178-05 ")
 ;;777
 ;;21,"53746-0178-90 ")
 ;;778
 ;;21,"53746-0179-01 ")
 ;;867
 ;;21,"53746-0179-05 ")
 ;;868
 ;;21,"54458-0974-06 ")
 ;;779
 ;;21,"54569-4202-00 ")
 ;;523
 ;;21,"54569-4202-01 ")
 ;;547
 ;;21,"54569-4202-02 ")
 ;;346
 ;;21,"54569-4202-03 ")
 ;;546
 ;;21,"54569-4740-00 ")
 ;;607
 ;;21,"54569-4740-01 ")
 ;;741
 ;;21,"54569-4786-00 ")
 ;;222
 ;;21,"54569-4786-01 ")
 ;;80
 ;;21,"54569-5210-00 ")
 ;;1038
 ;;21,"54569-5210-01 ")
 ;;1039
 ;;21,"54569-5211-00 ")
 ;;1115
 ;;21,"54569-5211-01 ")
 ;;1116
 ;;21,"54569-5252-00 ")
 ;;851
 ;;21,"54569-5252-01 ")
 ;;856
 ;;21,"54569-5252-02 ")
 ;;860
 ;;21,"54569-5353-00 ")
 ;;608
 ;;21,"54569-5353-02 ")
 ;;609
 ;;21,"54569-5353-03 ")
 ;;610
 ;;21,"54569-5353-04 ")
 ;;738
 ;;21,"54569-5360-00 ")
 ;;347
 ;;21,"54569-5360-03 ")
 ;;348
 ;;21,"54569-5373-00 ")
 ;;81
 ;;21,"54569-5373-02 ")
 ;;82
 ;;21,"54569-5546-00 ")
 ;;780
 ;;21,"54569-5546-01 ")
 ;;781
 ;;21,"54569-5546-02 ")
 ;;753
 ;;21,"54569-5603-00 ")
 ;;1140
 ;;21,"54569-5618-00 ")
 ;;1004
 ;;21,"54569-5618-01 ")
 ;;1005
 ;;21,"54569-5619-00 ")
 ;;1054
 ;;21,"54569-5619-01 ")
 ;;1055
 ;;21,"54569-5991-00 ")
 ;;923
 ;;21,"54569-5992-00 ")
 ;;938
 ;;21,"54569-5993-00 ")
 ;;956
 ;;21,"54569-5993-01 ")
 ;;946
 ;;21,"54738-0925-01 ")
 ;;349
 ;;21,"54738-0925-02 ")
 ;;350
 ;;21,"54738-0925-03 ")
 ;;351
 ;;21,"54738-0926-01 ")
 ;;611
 ;;21,"54738-0926-02 ")
 ;;612
 ;;21,"54738-0926-03 ")
 ;;613
 ;;21,"54738-0927-01 ")
 ;;83
 ;;21,"54738-0927-02 ")
 ;;84
 ;;21,"54738-0927-03 ")
 ;;85
 ;;21,"54868-0795-00 ")
 ;;920
 ;;21,"54868-0830-00 ")
 ;;886
 ;;21,"54868-0830-01 ")
 ;;887
 ;;21,"54868-1097-00 ")
 ;;903
 ;;21,"54868-1097-01 ")
 ;;904
 ;;21,"54868-2894-00 ")
 ;;888
 ;;21,"54868-3545-00 ")
 ;;352
 ;;21,"54868-3545-01 ")
 ;;353
 ;;21,"54868-3545-02 ")
 ;;354
 ;;21,"54868-3545-03 ")
 ;;355
 ;;21,"54868-3546-00 ")
 ;;614
 ;;21,"54868-3546-01 ")
 ;;615
 ;;21,"54868-4160-00 ")
 ;;86
 ;;21,"54868-4160-01 ")
 ;;87
 ;;21,"54868-4529-00 ")
 ;;1056
 ;;21,"54868-4529-01 ")
 ;;1057
 ;;21,"54868-4529-02 ")
 ;;1058
 ;;21,"54868-4529-03 ")
 ;;1059
 ;;21,"54868-4561-00 ")
 ;;616
 ;;21,"54868-4561-01 ")
 ;;617
 ;;21,"54868-4561-02 ")
 ;;618
 ;;21,"54868-4561-03 ")
 ;;619
 ;;21,"54868-4561-04 ")
 ;;552
 ;;21,"54868-4564-00 ")
 ;;356
 ;;21,"54868-4564-01 ")
 ;;357
 ;;21,"54868-4564-02 ")
 ;;358
 ;;21,"54868-4564-03 ")
 ;;359
 ;;21,"54868-4564-04 ")
 ;;360
 ;;21,"54868-4564-05 ")
 ;;227
 ;;21,"54868-4566-00 ")
 ;;88
 ;;21,"54868-4566-01 ")
 ;;89
 ;;21,"54868-4566-02 ")
 ;;90
 ;;21,"54868-4566-03 ")
 ;;91
 ;;21,"54868-4566-04 ")
 ;;92
 ;;21,"54868-4569-00 ")
 ;;782
 ;;21,"54868-4569-01 ")
 ;;783
 ;;21,"54868-4569-02 ")
 ;;784
 ;;21,"54868-4609-00 ")
 ;;1006
 ;;21,"54868-4609-01 ")
 ;;1007
 ;;21,"54868-4906-00 ")
 ;;964
 ;;21,"54868-4965-00 ")
 ;;1136
 ;;21,"54868-4965-01 ")
 ;;1137
 ;;21,"54868-4965-02 ")
 ;;1138
 ;;21,"54868-5148-00 ")
 ;;1008