ATXD2F24 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 17, 2015;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"374,S82.262C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.263A ",.01)
 ;;S82.263A
 ;;9002226.02101,"374,S82.263A ",.02)
 ;;S82.263A
 ;;9002226.02101,"374,S82.263A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.263B ",.01)
 ;;S82.263B
 ;;9002226.02101,"374,S82.263B ",.02)
 ;;S82.263B
 ;;9002226.02101,"374,S82.263B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.263C ",.01)
 ;;S82.263C
 ;;9002226.02101,"374,S82.263C ",.02)
 ;;S82.263C
 ;;9002226.02101,"374,S82.263C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.264A ",.01)
 ;;S82.264A
 ;;9002226.02101,"374,S82.264A ",.02)
 ;;S82.264A
 ;;9002226.02101,"374,S82.264A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.264B ",.01)
 ;;S82.264B
 ;;9002226.02101,"374,S82.264B ",.02)
 ;;S82.264B
 ;;9002226.02101,"374,S82.264B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.264C ",.01)
 ;;S82.264C
 ;;9002226.02101,"374,S82.264C ",.02)
 ;;S82.264C
 ;;9002226.02101,"374,S82.264C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.265A ",.01)
 ;;S82.265A
 ;;9002226.02101,"374,S82.265A ",.02)
 ;;S82.265A
 ;;9002226.02101,"374,S82.265A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.265B ",.01)
 ;;S82.265B
 ;;9002226.02101,"374,S82.265B ",.02)
 ;;S82.265B
 ;;9002226.02101,"374,S82.265B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.265C ",.01)
 ;;S82.265C
 ;;9002226.02101,"374,S82.265C ",.02)
 ;;S82.265C
 ;;9002226.02101,"374,S82.265C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.266A ",.01)
 ;;S82.266A
 ;;9002226.02101,"374,S82.266A ",.02)
 ;;S82.266A
 ;;9002226.02101,"374,S82.266A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.266B ",.01)
 ;;S82.266B
 ;;9002226.02101,"374,S82.266B ",.02)
 ;;S82.266B
 ;;9002226.02101,"374,S82.266B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.266C ",.01)
 ;;S82.266C
 ;;9002226.02101,"374,S82.266C ",.02)
 ;;S82.266C
 ;;9002226.02101,"374,S82.266C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.291A ",.01)
 ;;S82.291A
 ;;9002226.02101,"374,S82.291A ",.02)
 ;;S82.291A
 ;;9002226.02101,"374,S82.291A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.291B ",.01)
 ;;S82.291B
 ;;9002226.02101,"374,S82.291B ",.02)
 ;;S82.291B
 ;;9002226.02101,"374,S82.291B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.291C ",.01)
 ;;S82.291C
 ;;9002226.02101,"374,S82.291C ",.02)
 ;;S82.291C
 ;;9002226.02101,"374,S82.291C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.292A ",.01)
 ;;S82.292A
 ;;9002226.02101,"374,S82.292A ",.02)
 ;;S82.292A
 ;;9002226.02101,"374,S82.292A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.292B ",.01)
 ;;S82.292B
 ;;9002226.02101,"374,S82.292B ",.02)
 ;;S82.292B
 ;;9002226.02101,"374,S82.292B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.292C ",.01)
 ;;S82.292C
 ;;9002226.02101,"374,S82.292C ",.02)
 ;;S82.292C
 ;;9002226.02101,"374,S82.292C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.299A ",.01)
 ;;S82.299A
 ;;9002226.02101,"374,S82.299A ",.02)
 ;;S82.299A
 ;;9002226.02101,"374,S82.299A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.299B ",.01)
 ;;S82.299B
 ;;9002226.02101,"374,S82.299B ",.02)
 ;;S82.299B
 ;;9002226.02101,"374,S82.299B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.299C ",.01)
 ;;S82.299C
 ;;9002226.02101,"374,S82.299C ",.02)
 ;;S82.299C
 ;;9002226.02101,"374,S82.299C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.301A ",.01)
 ;;S82.301A
 ;;9002226.02101,"374,S82.301A ",.02)
 ;;S82.301A
 ;;9002226.02101,"374,S82.301A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.301B ",.01)
 ;;S82.301B
 ;;9002226.02101,"374,S82.301B ",.02)
 ;;S82.301B
 ;;9002226.02101,"374,S82.301B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.301C ",.01)
 ;;S82.301C
 ;;9002226.02101,"374,S82.301C ",.02)
 ;;S82.301C
 ;;9002226.02101,"374,S82.301C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.302A ",.01)
 ;;S82.302A
 ;;9002226.02101,"374,S82.302A ",.02)
 ;;S82.302A
 ;;9002226.02101,"374,S82.302A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.302B ",.01)
 ;;S82.302B
 ;;9002226.02101,"374,S82.302B ",.02)
 ;;S82.302B
 ;;9002226.02101,"374,S82.302B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.302C ",.01)
 ;;S82.302C
 ;;9002226.02101,"374,S82.302C ",.02)
 ;;S82.302C
 ;;9002226.02101,"374,S82.302C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.309A ",.01)
 ;;S82.309A
 ;;9002226.02101,"374,S82.309A ",.02)
 ;;S82.309A
 ;;9002226.02101,"374,S82.309A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.309B ",.01)
 ;;S82.309B
 ;;9002226.02101,"374,S82.309B ",.02)
 ;;S82.309B
 ;;9002226.02101,"374,S82.309B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.309C ",.01)
 ;;S82.309C
 ;;9002226.02101,"374,S82.309C ",.02)
 ;;S82.309C
 ;;9002226.02101,"374,S82.309C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.311A ",.01)
 ;;S82.311A
 ;;9002226.02101,"374,S82.311A ",.02)
 ;;S82.311A
 ;;9002226.02101,"374,S82.311A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.312A ",.01)
 ;;S82.312A
 ;;9002226.02101,"374,S82.312A ",.02)
 ;;S82.312A
 ;;9002226.02101,"374,S82.312A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.319A ",.01)
 ;;S82.319A
 ;;9002226.02101,"374,S82.319A ",.02)
 ;;S82.319A
 ;;9002226.02101,"374,S82.319A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.391A ",.01)
 ;;S82.391A
 ;;9002226.02101,"374,S82.391A ",.02)
 ;;S82.391A
 ;;9002226.02101,"374,S82.391A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.391B ",.01)
 ;;S82.391B
 ;;9002226.02101,"374,S82.391B ",.02)
 ;;S82.391B
 ;;9002226.02101,"374,S82.391B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.391C ",.01)
 ;;S82.391C
 ;;9002226.02101,"374,S82.391C ",.02)
 ;;S82.391C
 ;;9002226.02101,"374,S82.391C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.392A ",.01)
 ;;S82.392A
 ;;9002226.02101,"374,S82.392A ",.02)
 ;;S82.392A
 ;;9002226.02101,"374,S82.392A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.392B ",.01)
 ;;S82.392B
 ;;9002226.02101,"374,S82.392B ",.02)
 ;;S82.392B
 ;;9002226.02101,"374,S82.392B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.392C ",.01)
 ;;S82.392C
 ;;9002226.02101,"374,S82.392C ",.02)
 ;;S82.392C
 ;;9002226.02101,"374,S82.392C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.399A ",.01)
 ;;S82.399A
 ;;9002226.02101,"374,S82.399A ",.02)
 ;;S82.399A
 ;;9002226.02101,"374,S82.399A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.399B ",.01)
 ;;S82.399B
 ;;9002226.02101,"374,S82.399B ",.02)
 ;;S82.399B
 ;;9002226.02101,"374,S82.399B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.399C ",.01)
 ;;S82.399C
 ;;9002226.02101,"374,S82.399C ",.02)
 ;;S82.399C
 ;;9002226.02101,"374,S82.399C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.401A ",.01)
 ;;S82.401A
 ;;9002226.02101,"374,S82.401A ",.02)
 ;;S82.401A
 ;;9002226.02101,"374,S82.401A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.401B ",.01)
 ;;S82.401B
 ;;9002226.02101,"374,S82.401B ",.02)
 ;;S82.401B
 ;;9002226.02101,"374,S82.401B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.401C ",.01)
 ;;S82.401C
 ;;9002226.02101,"374,S82.401C ",.02)
 ;;S82.401C
 ;;9002226.02101,"374,S82.401C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.402A ",.01)
 ;;S82.402A
 ;;9002226.02101,"374,S82.402A ",.02)
 ;;S82.402A
 ;;9002226.02101,"374,S82.402A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.402B ",.01)
 ;;S82.402B
 ;;9002226.02101,"374,S82.402B ",.02)
 ;;S82.402B
 ;;9002226.02101,"374,S82.402B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.402C ",.01)
 ;;S82.402C
 ;;9002226.02101,"374,S82.402C ",.02)
 ;;S82.402C
 ;;9002226.02101,"374,S82.402C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.409A ",.01)
 ;;S82.409A
 ;;9002226.02101,"374,S82.409A ",.02)
 ;;S82.409A
 ;;9002226.02101,"374,S82.409A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.409B ",.01)
 ;;S82.409B
 ;;9002226.02101,"374,S82.409B ",.02)
 ;;S82.409B
 ;;9002226.02101,"374,S82.409B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.409C ",.01)
 ;;S82.409C
 ;;9002226.02101,"374,S82.409C ",.02)
 ;;S82.409C
 ;;9002226.02101,"374,S82.409C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.421A ",.01)
 ;;S82.421A
 ;;9002226.02101,"374,S82.421A ",.02)
 ;;S82.421A
 ;;9002226.02101,"374,S82.421A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.421B ",.01)
 ;;S82.421B
 ;;9002226.02101,"374,S82.421B ",.02)
 ;;S82.421B
 ;;9002226.02101,"374,S82.421B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.421C ",.01)
 ;;S82.421C
 ;;9002226.02101,"374,S82.421C ",.02)
 ;;S82.421C
 ;;9002226.02101,"374,S82.421C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.422A ",.01)
 ;;S82.422A
 ;;9002226.02101,"374,S82.422A ",.02)
 ;;S82.422A
 ;;9002226.02101,"374,S82.422A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.422B ",.01)
 ;;S82.422B
 ;;9002226.02101,"374,S82.422B ",.02)
 ;;S82.422B
 ;;9002226.02101,"374,S82.422B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.422C ",.01)
 ;;S82.422C
 ;;9002226.02101,"374,S82.422C ",.02)
 ;;S82.422C
 ;;9002226.02101,"374,S82.422C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.423A ",.01)
 ;;S82.423A
 ;;9002226.02101,"374,S82.423A ",.02)
 ;;S82.423A
 ;;9002226.02101,"374,S82.423A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.423B ",.01)
 ;;S82.423B
 ;;9002226.02101,"374,S82.423B ",.02)
 ;;S82.423B
 ;;9002226.02101,"374,S82.423B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.423C ",.01)
 ;;S82.423C
 ;;9002226.02101,"374,S82.423C ",.02)
 ;;S82.423C
 ;;9002226.02101,"374,S82.423C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.424A ",.01)
 ;;S82.424A
 ;;9002226.02101,"374,S82.424A ",.02)
 ;;S82.424A
 ;;9002226.02101,"374,S82.424A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.424B ",.01)
 ;;S82.424B
 ;;9002226.02101,"374,S82.424B ",.02)
 ;;S82.424B
 ;;9002226.02101,"374,S82.424B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.424C ",.01)
 ;;S82.424C
 ;;9002226.02101,"374,S82.424C ",.02)
 ;;S82.424C
 ;;9002226.02101,"374,S82.424C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.425A ",.01)
 ;;S82.425A
 ;;9002226.02101,"374,S82.425A ",.02)
 ;;S82.425A
 ;;9002226.02101,"374,S82.425A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.425B ",.01)
 ;;S82.425B
 ;;9002226.02101,"374,S82.425B ",.02)
 ;;S82.425B
 ;;9002226.02101,"374,S82.425B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.425C ",.01)
 ;;S82.425C
 ;;9002226.02101,"374,S82.425C ",.02)
 ;;S82.425C
 ;;9002226.02101,"374,S82.425C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.426A ",.01)
 ;;S82.426A
 ;;9002226.02101,"374,S82.426A ",.02)
 ;;S82.426A
 ;;9002226.02101,"374,S82.426A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.426B ",.01)
 ;;S82.426B
 ;;9002226.02101,"374,S82.426B ",.02)
 ;;S82.426B
 ;;9002226.02101,"374,S82.426B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.426C ",.01)
 ;;S82.426C
 ;;9002226.02101,"374,S82.426C ",.02)
 ;;S82.426C
 ;;9002226.02101,"374,S82.426C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.431A ",.01)
 ;;S82.431A
 ;;9002226.02101,"374,S82.431A ",.02)
 ;;S82.431A
 ;;9002226.02101,"374,S82.431A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.431B ",.01)
 ;;S82.431B
 ;;9002226.02101,"374,S82.431B ",.02)
 ;;S82.431B
 ;;9002226.02101,"374,S82.431B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.431C ",.01)
 ;;S82.431C
 ;;9002226.02101,"374,S82.431C ",.02)
 ;;S82.431C
 ;;9002226.02101,"374,S82.431C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.432A ",.01)
 ;;S82.432A
 ;;9002226.02101,"374,S82.432A ",.02)
 ;;S82.432A
 ;;9002226.02101,"374,S82.432A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.432B ",.01)
 ;;S82.432B
 ;;9002226.02101,"374,S82.432B ",.02)
 ;;S82.432B
 ;;9002226.02101,"374,S82.432B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.432C ",.01)
 ;;S82.432C
 ;;9002226.02101,"374,S82.432C ",.02)
 ;;S82.432C
 ;;9002226.02101,"374,S82.432C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.433A ",.01)
 ;;S82.433A
 ;;9002226.02101,"374,S82.433A ",.02)
 ;;S82.433A
 ;;9002226.02101,"374,S82.433A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.433B ",.01)
 ;;S82.433B
 ;;9002226.02101,"374,S82.433B ",.02)
 ;;S82.433B
 ;;9002226.02101,"374,S82.433B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.433C ",.01)
 ;;S82.433C
 ;;9002226.02101,"374,S82.433C ",.02)
 ;;S82.433C
 ;;9002226.02101,"374,S82.433C ",.03)
 ;;30