ATXXB117 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1804,0WHD41Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHF01Z ",.01)
 ;;0WHF01Z 
 ;;9002226.02101,"1804,0WHF01Z ",.02)
 ;;0WHF01Z 
 ;;9002226.02101,"1804,0WHF01Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHF31Z ",.01)
 ;;0WHF31Z 
 ;;9002226.02101,"1804,0WHF31Z ",.02)
 ;;0WHF31Z 
 ;;9002226.02101,"1804,0WHF31Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHF41Z ",.01)
 ;;0WHF41Z 
 ;;9002226.02101,"1804,0WHF41Z ",.02)
 ;;0WHF41Z 
 ;;9002226.02101,"1804,0WHF41Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHG01Z ",.01)
 ;;0WHG01Z 
 ;;9002226.02101,"1804,0WHG01Z ",.02)
 ;;0WHG01Z 
 ;;9002226.02101,"1804,0WHG01Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHG31Z ",.01)
 ;;0WHG31Z 
 ;;9002226.02101,"1804,0WHG31Z ",.02)
 ;;0WHG31Z 
 ;;9002226.02101,"1804,0WHG31Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHG41Z ",.01)
 ;;0WHG41Z 
 ;;9002226.02101,"1804,0WHG41Z ",.02)
 ;;0WHG41Z 
 ;;9002226.02101,"1804,0WHG41Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHH01Z ",.01)
 ;;0WHH01Z 
 ;;9002226.02101,"1804,0WHH01Z ",.02)
 ;;0WHH01Z 
 ;;9002226.02101,"1804,0WHH01Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHH31Z ",.01)
 ;;0WHH31Z 
 ;;9002226.02101,"1804,0WHH31Z ",.02)
 ;;0WHH31Z 
 ;;9002226.02101,"1804,0WHH31Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHH41Z ",.01)
 ;;0WHH41Z 
 ;;9002226.02101,"1804,0WHH41Z ",.02)
 ;;0WHH41Z 
 ;;9002226.02101,"1804,0WHH41Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHJ01Z ",.01)
 ;;0WHJ01Z 
 ;;9002226.02101,"1804,0WHJ01Z ",.02)
 ;;0WHJ01Z 
 ;;9002226.02101,"1804,0WHJ01Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHJ31Z ",.01)
 ;;0WHJ31Z 
 ;;9002226.02101,"1804,0WHJ31Z ",.02)
 ;;0WHJ31Z 
 ;;9002226.02101,"1804,0WHJ31Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHJ41Z ",.01)
 ;;0WHJ41Z 
 ;;9002226.02101,"1804,0WHJ41Z ",.02)
 ;;0WHJ41Z 
 ;;9002226.02101,"1804,0WHJ41Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHK01Z ",.01)
 ;;0WHK01Z 
 ;;9002226.02101,"1804,0WHK01Z ",.02)
 ;;0WHK01Z 
 ;;9002226.02101,"1804,0WHK01Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHK03Z ",.01)
 ;;0WHK03Z 
 ;;9002226.02101,"1804,0WHK03Z ",.02)
 ;;0WHK03Z 
 ;;9002226.02101,"1804,0WHK03Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHK0YZ ",.01)
 ;;0WHK0YZ 
 ;;9002226.02101,"1804,0WHK0YZ ",.02)
 ;;0WHK0YZ 
 ;;9002226.02101,"1804,0WHK0YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHK31Z ",.01)
 ;;0WHK31Z 
 ;;9002226.02101,"1804,0WHK31Z ",.02)
 ;;0WHK31Z 
 ;;9002226.02101,"1804,0WHK31Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHK33Z ",.01)
 ;;0WHK33Z 
 ;;9002226.02101,"1804,0WHK33Z ",.02)
 ;;0WHK33Z 
 ;;9002226.02101,"1804,0WHK33Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHK3YZ ",.01)
 ;;0WHK3YZ 
 ;;9002226.02101,"1804,0WHK3YZ ",.02)
 ;;0WHK3YZ 
 ;;9002226.02101,"1804,0WHK3YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHK41Z ",.01)
 ;;0WHK41Z 
 ;;9002226.02101,"1804,0WHK41Z ",.02)
 ;;0WHK41Z 
 ;;9002226.02101,"1804,0WHK41Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHK43Z ",.01)
 ;;0WHK43Z 
 ;;9002226.02101,"1804,0WHK43Z ",.02)
 ;;0WHK43Z 
 ;;9002226.02101,"1804,0WHK43Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHK4YZ ",.01)
 ;;0WHK4YZ 
 ;;9002226.02101,"1804,0WHK4YZ ",.02)
 ;;0WHK4YZ 
 ;;9002226.02101,"1804,0WHK4YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHL01Z ",.01)
 ;;0WHL01Z 
 ;;9002226.02101,"1804,0WHL01Z ",.02)
 ;;0WHL01Z 
 ;;9002226.02101,"1804,0WHL01Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHL03Z ",.01)
 ;;0WHL03Z 
 ;;9002226.02101,"1804,0WHL03Z ",.02)
 ;;0WHL03Z 
 ;;9002226.02101,"1804,0WHL03Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHL0YZ ",.01)
 ;;0WHL0YZ 
 ;;9002226.02101,"1804,0WHL0YZ ",.02)
 ;;0WHL0YZ 
 ;;9002226.02101,"1804,0WHL0YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHL31Z ",.01)
 ;;0WHL31Z 
 ;;9002226.02101,"1804,0WHL31Z ",.02)
 ;;0WHL31Z 
 ;;9002226.02101,"1804,0WHL31Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHL33Z ",.01)
 ;;0WHL33Z 
 ;;9002226.02101,"1804,0WHL33Z ",.02)
 ;;0WHL33Z 
 ;;9002226.02101,"1804,0WHL33Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHL3YZ ",.01)
 ;;0WHL3YZ 
 ;;9002226.02101,"1804,0WHL3YZ ",.02)
 ;;0WHL3YZ 
 ;;9002226.02101,"1804,0WHL3YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHL41Z ",.01)
 ;;0WHL41Z 
 ;;9002226.02101,"1804,0WHL41Z ",.02)
 ;;0WHL41Z 
 ;;9002226.02101,"1804,0WHL41Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHL43Z ",.01)
 ;;0WHL43Z 
 ;;9002226.02101,"1804,0WHL43Z ",.02)
 ;;0WHL43Z 
 ;;9002226.02101,"1804,0WHL43Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHL4YZ ",.01)
 ;;0WHL4YZ 
 ;;9002226.02101,"1804,0WHL4YZ ",.02)
 ;;0WHL4YZ 
 ;;9002226.02101,"1804,0WHL4YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHM01Z ",.01)
 ;;0WHM01Z 
 ;;9002226.02101,"1804,0WHM01Z ",.02)
 ;;0WHM01Z 
 ;;9002226.02101,"1804,0WHM01Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHM03Z ",.01)
 ;;0WHM03Z 
 ;;9002226.02101,"1804,0WHM03Z ",.02)
 ;;0WHM03Z 
 ;;9002226.02101,"1804,0WHM03Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHM0YZ ",.01)
 ;;0WHM0YZ 
 ;;9002226.02101,"1804,0WHM0YZ ",.02)
 ;;0WHM0YZ 
 ;;9002226.02101,"1804,0WHM0YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHM31Z ",.01)
 ;;0WHM31Z 
 ;;9002226.02101,"1804,0WHM31Z ",.02)
 ;;0WHM31Z 
 ;;9002226.02101,"1804,0WHM31Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHM33Z ",.01)
 ;;0WHM33Z 
 ;;9002226.02101,"1804,0WHM33Z ",.02)
 ;;0WHM33Z 
 ;;9002226.02101,"1804,0WHM33Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHM3YZ ",.01)
 ;;0WHM3YZ 
 ;;9002226.02101,"1804,0WHM3YZ ",.02)
 ;;0WHM3YZ 
 ;;9002226.02101,"1804,0WHM3YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHM41Z ",.01)
 ;;0WHM41Z 
 ;;9002226.02101,"1804,0WHM41Z ",.02)
 ;;0WHM41Z 
 ;;9002226.02101,"1804,0WHM41Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHM43Z ",.01)
 ;;0WHM43Z 
 ;;9002226.02101,"1804,0WHM43Z ",.02)
 ;;0WHM43Z 
 ;;9002226.02101,"1804,0WHM43Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHM4YZ ",.01)
 ;;0WHM4YZ 
 ;;9002226.02101,"1804,0WHM4YZ ",.02)
 ;;0WHM4YZ 
 ;;9002226.02101,"1804,0WHM4YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHN01Z ",.01)
 ;;0WHN01Z 
 ;;9002226.02101,"1804,0WHN01Z ",.02)
 ;;0WHN01Z 
 ;;9002226.02101,"1804,0WHN01Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHN31Z ",.01)
 ;;0WHN31Z 
 ;;9002226.02101,"1804,0WHN31Z ",.02)
 ;;0WHN31Z 
 ;;9002226.02101,"1804,0WHN31Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHN41Z ",.01)
 ;;0WHN41Z 
 ;;9002226.02101,"1804,0WHN41Z ",.02)
 ;;0WHN41Z 
 ;;9002226.02101,"1804,0WHN41Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHP01Z ",.01)
 ;;0WHP01Z 
 ;;9002226.02101,"1804,0WHP01Z ",.02)
 ;;0WHP01Z 
 ;;9002226.02101,"1804,0WHP01Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHP31Z ",.01)
 ;;0WHP31Z 
 ;;9002226.02101,"1804,0WHP31Z ",.02)
 ;;0WHP31Z 
 ;;9002226.02101,"1804,0WHP31Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHP41Z ",.01)
 ;;0WHP41Z 
 ;;9002226.02101,"1804,0WHP41Z ",.02)
 ;;0WHP41Z 
 ;;9002226.02101,"1804,0WHP41Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHP71Z ",.01)
 ;;0WHP71Z 
 ;;9002226.02101,"1804,0WHP71Z ",.02)
 ;;0WHP71Z 
 ;;9002226.02101,"1804,0WHP71Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHP81Z ",.01)
 ;;0WHP81Z 
 ;;9002226.02101,"1804,0WHP81Z ",.02)
 ;;0WHP81Z 
 ;;9002226.02101,"1804,0WHP81Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHQ01Z ",.01)
 ;;0WHQ01Z 
 ;;9002226.02101,"1804,0WHQ01Z ",.02)
 ;;0WHQ01Z 
 ;;9002226.02101,"1804,0WHQ01Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHQ31Z ",.01)
 ;;0WHQ31Z 
 ;;9002226.02101,"1804,0WHQ31Z ",.02)
 ;;0WHQ31Z 
 ;;9002226.02101,"1804,0WHQ31Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHQ41Z ",.01)
 ;;0WHQ41Z 
 ;;9002226.02101,"1804,0WHQ41Z ",.02)
 ;;0WHQ41Z 
 ;;9002226.02101,"1804,0WHQ41Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHQ71Z ",.01)
 ;;0WHQ71Z 
 ;;9002226.02101,"1804,0WHQ71Z ",.02)
 ;;0WHQ71Z 
 ;;9002226.02101,"1804,0WHQ71Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHQ73Z ",.01)
 ;;0WHQ73Z 
 ;;9002226.02101,"1804,0WHQ73Z ",.02)
 ;;0WHQ73Z 
 ;;9002226.02101,"1804,0WHQ73Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHQ7YZ ",.01)
 ;;0WHQ7YZ 
 ;;9002226.02101,"1804,0WHQ7YZ ",.02)
 ;;0WHQ7YZ 
 ;;9002226.02101,"1804,0WHQ7YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHQ81Z ",.01)
 ;;0WHQ81Z 
 ;;9002226.02101,"1804,0WHQ81Z ",.02)
 ;;0WHQ81Z 
 ;;9002226.02101,"1804,0WHQ81Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHR01Z ",.01)
 ;;0WHR01Z 
 ;;9002226.02101,"1804,0WHR01Z ",.02)
 ;;0WHR01Z 
 ;;9002226.02101,"1804,0WHR01Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHR31Z ",.01)
 ;;0WHR31Z 
 ;;9002226.02101,"1804,0WHR31Z ",.02)
 ;;0WHR31Z 
 ;;9002226.02101,"1804,0WHR31Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHR41Z ",.01)
 ;;0WHR41Z 
 ;;9002226.02101,"1804,0WHR41Z ",.02)
 ;;0WHR41Z 
 ;;9002226.02101,"1804,0WHR41Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHR71Z ",.01)
 ;;0WHR71Z 
 ;;9002226.02101,"1804,0WHR71Z ",.02)
 ;;0WHR71Z 
 ;;9002226.02101,"1804,0WHR71Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHR73Z ",.01)
 ;;0WHR73Z 
 ;;9002226.02101,"1804,0WHR73Z ",.02)
 ;;0WHR73Z 
 ;;9002226.02101,"1804,0WHR73Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHR7YZ ",.01)
 ;;0WHR7YZ 
 ;;9002226.02101,"1804,0WHR7YZ ",.02)
 ;;0WHR7YZ 
 ;;9002226.02101,"1804,0WHR7YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WHR81Z ",.01)
 ;;0WHR81Z 
 ;;9002226.02101,"1804,0WHR81Z ",.02)
 ;;0WHR81Z 
 ;;9002226.02101,"1804,0WHR81Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WJ00ZZ ",.01)
 ;;0WJ00ZZ 
 ;;9002226.02101,"1804,0WJ00ZZ ",.02)
 ;;0WJ00ZZ 
 ;;9002226.02101,"1804,0WJ00ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WJ03ZZ ",.01)
 ;;0WJ03ZZ 
 ;;9002226.02101,"1804,0WJ03ZZ ",.02)
 ;;0WJ03ZZ 
 ;;9002226.02101,"1804,0WJ03ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WJ04ZZ ",.01)
 ;;0WJ04ZZ 
 ;;9002226.02101,"1804,0WJ04ZZ ",.02)
 ;;0WJ04ZZ 
 ;;9002226.02101,"1804,0WJ04ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WJ0XZZ ",.01)
 ;;0WJ0XZZ 
 ;;9002226.02101,"1804,0WJ0XZZ ",.02)
 ;;0WJ0XZZ 
 ;;9002226.02101,"1804,0WJ0XZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WJ20ZZ ",.01)
 ;;0WJ20ZZ 
 ;;9002226.02101,"1804,0WJ20ZZ ",.02)
 ;;0WJ20ZZ 
 ;;9002226.02101,"1804,0WJ20ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WJ23ZZ ",.01)
 ;;0WJ23ZZ 
 ;;9002226.02101,"1804,0WJ23ZZ ",.02)
 ;;0WJ23ZZ 
 ;;9002226.02101,"1804,0WJ23ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WJ24ZZ ",.01)
 ;;0WJ24ZZ 
 ;;9002226.02101,"1804,0WJ24ZZ ",.02)
 ;;0WJ24ZZ 
 ;;9002226.02101,"1804,0WJ24ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WJ2XZZ ",.01)
 ;;0WJ2XZZ 
 ;;9002226.02101,"1804,0WJ2XZZ ",.02)
 ;;0WJ2XZZ 
 ;;9002226.02101,"1804,0WJ2XZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WJ3XZZ ",.01)
 ;;0WJ3XZZ 
 ;;9002226.02101,"1804,0WJ3XZZ ",.02)
 ;;0WJ3XZZ 
 ;;9002226.02101,"1804,0WJ3XZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WJ40ZZ ",.01)
 ;;0WJ40ZZ 
 ;;9002226.02101,"1804,0WJ40ZZ ",.02)
 ;;0WJ40ZZ 
 ;;9002226.02101,"1804,0WJ40ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WJ43ZZ ",.01)
 ;;0WJ43ZZ 
 ;;9002226.02101,"1804,0WJ43ZZ ",.02)
 ;;0WJ43ZZ 
 ;;9002226.02101,"1804,0WJ43ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WJ44ZZ ",.01)
 ;;0WJ44ZZ 
 ;;9002226.02101,"1804,0WJ44ZZ ",.02)
 ;;0WJ44ZZ 
 ;;9002226.02101,"1804,0WJ44ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WJ4XZZ ",.01)
 ;;0WJ4XZZ 
 ;;9002226.02101,"1804,0WJ4XZZ ",.02)
 ;;0WJ4XZZ 
 ;;9002226.02101,"1804,0WJ4XZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WJ50ZZ ",.01)
 ;;0WJ50ZZ 
 ;;9002226.02101,"1804,0WJ50ZZ ",.02)
 ;;0WJ50ZZ 
 ;;9002226.02101,"1804,0WJ50ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WJ53ZZ ",.01)
 ;;0WJ53ZZ 
 ;;9002226.02101,"1804,0WJ53ZZ ",.02)
 ;;0WJ53ZZ 
 ;;9002226.02101,"1804,0WJ53ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WJ54ZZ ",.01)
 ;;0WJ54ZZ 
 ;;9002226.02101,"1804,0WJ54ZZ ",.02)
 ;;0WJ54ZZ 
 ;;9002226.02101,"1804,0WJ54ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WJ5XZZ ",.01)
 ;;0WJ5XZZ 
 ;;9002226.02101,"1804,0WJ5XZZ ",.02)
 ;;0WJ5XZZ 
 ;;9002226.02101,"1804,0WJ5XZZ ",.03)
 ;;31