ATXXB145 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1804,0YJK3ZZ ",.01)
 ;;0YJK3ZZ 
 ;;9002226.02101,"1804,0YJK3ZZ ",.02)
 ;;0YJK3ZZ 
 ;;9002226.02101,"1804,0YJK3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YJK4ZZ ",.01)
 ;;0YJK4ZZ 
 ;;9002226.02101,"1804,0YJK4ZZ ",.02)
 ;;0YJK4ZZ 
 ;;9002226.02101,"1804,0YJK4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YJKXZZ ",.01)
 ;;0YJKXZZ 
 ;;9002226.02101,"1804,0YJKXZZ ",.02)
 ;;0YJKXZZ 
 ;;9002226.02101,"1804,0YJKXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YJL0ZZ ",.01)
 ;;0YJL0ZZ 
 ;;9002226.02101,"1804,0YJL0ZZ ",.02)
 ;;0YJL0ZZ 
 ;;9002226.02101,"1804,0YJL0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YJL3ZZ ",.01)
 ;;0YJL3ZZ 
 ;;9002226.02101,"1804,0YJL3ZZ ",.02)
 ;;0YJL3ZZ 
 ;;9002226.02101,"1804,0YJL3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YJL4ZZ ",.01)
 ;;0YJL4ZZ 
 ;;9002226.02101,"1804,0YJL4ZZ ",.02)
 ;;0YJL4ZZ 
 ;;9002226.02101,"1804,0YJL4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YJLXZZ ",.01)
 ;;0YJLXZZ 
 ;;9002226.02101,"1804,0YJLXZZ ",.02)
 ;;0YJLXZZ 
 ;;9002226.02101,"1804,0YJLXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YJM0ZZ ",.01)
 ;;0YJM0ZZ 
 ;;9002226.02101,"1804,0YJM0ZZ ",.02)
 ;;0YJM0ZZ 
 ;;9002226.02101,"1804,0YJM0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YJM3ZZ ",.01)
 ;;0YJM3ZZ 
 ;;9002226.02101,"1804,0YJM3ZZ ",.02)
 ;;0YJM3ZZ 
 ;;9002226.02101,"1804,0YJM3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YJM4ZZ ",.01)
 ;;0YJM4ZZ 
 ;;9002226.02101,"1804,0YJM4ZZ ",.02)
 ;;0YJM4ZZ 
 ;;9002226.02101,"1804,0YJM4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YJMXZZ ",.01)
 ;;0YJMXZZ 
 ;;9002226.02101,"1804,0YJMXZZ ",.02)
 ;;0YJMXZZ 
 ;;9002226.02101,"1804,0YJMXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YJN0ZZ ",.01)
 ;;0YJN0ZZ 
 ;;9002226.02101,"1804,0YJN0ZZ ",.02)
 ;;0YJN0ZZ 
 ;;9002226.02101,"1804,0YJN0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YJN3ZZ ",.01)
 ;;0YJN3ZZ 
 ;;9002226.02101,"1804,0YJN3ZZ ",.02)
 ;;0YJN3ZZ 
 ;;9002226.02101,"1804,0YJN3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YJN4ZZ ",.01)
 ;;0YJN4ZZ 
 ;;9002226.02101,"1804,0YJN4ZZ ",.02)
 ;;0YJN4ZZ 
 ;;9002226.02101,"1804,0YJN4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YJNXZZ ",.01)
 ;;0YJNXZZ 
 ;;9002226.02101,"1804,0YJNXZZ ",.02)
 ;;0YJNXZZ 
 ;;9002226.02101,"1804,0YJNXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YM00ZZ ",.01)
 ;;0YM00ZZ 
 ;;9002226.02101,"1804,0YM00ZZ ",.02)
 ;;0YM00ZZ 
 ;;9002226.02101,"1804,0YM00ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YM10ZZ ",.01)
 ;;0YM10ZZ 
 ;;9002226.02101,"1804,0YM10ZZ ",.02)
 ;;0YM10ZZ 
 ;;9002226.02101,"1804,0YM10ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YP900Z ",.01)
 ;;0YP900Z 
 ;;9002226.02101,"1804,0YP900Z ",.02)
 ;;0YP900Z 
 ;;9002226.02101,"1804,0YP900Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YP901Z ",.01)
 ;;0YP901Z 
 ;;9002226.02101,"1804,0YP901Z ",.02)
 ;;0YP901Z 
 ;;9002226.02101,"1804,0YP901Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YP903Z ",.01)
 ;;0YP903Z 
 ;;9002226.02101,"1804,0YP903Z ",.02)
 ;;0YP903Z 
 ;;9002226.02101,"1804,0YP903Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YP907Z ",.01)
 ;;0YP907Z 
 ;;9002226.02101,"1804,0YP907Z ",.02)
 ;;0YP907Z 
 ;;9002226.02101,"1804,0YP907Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YP90JZ ",.01)
 ;;0YP90JZ 
 ;;9002226.02101,"1804,0YP90JZ ",.02)
 ;;0YP90JZ 
 ;;9002226.02101,"1804,0YP90JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YP90KZ ",.01)
 ;;0YP90KZ 
 ;;9002226.02101,"1804,0YP90KZ ",.02)
 ;;0YP90KZ 
 ;;9002226.02101,"1804,0YP90KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YP90YZ ",.01)
 ;;0YP90YZ 
 ;;9002226.02101,"1804,0YP90YZ ",.02)
 ;;0YP90YZ 
 ;;9002226.02101,"1804,0YP90YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YP930Z ",.01)
 ;;0YP930Z 
 ;;9002226.02101,"1804,0YP930Z ",.02)
 ;;0YP930Z 
 ;;9002226.02101,"1804,0YP930Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YP931Z ",.01)
 ;;0YP931Z 
 ;;9002226.02101,"1804,0YP931Z ",.02)
 ;;0YP931Z 
 ;;9002226.02101,"1804,0YP931Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YP933Z ",.01)
 ;;0YP933Z 
 ;;9002226.02101,"1804,0YP933Z ",.02)
 ;;0YP933Z 
 ;;9002226.02101,"1804,0YP933Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YP937Z ",.01)
 ;;0YP937Z 
 ;;9002226.02101,"1804,0YP937Z ",.02)
 ;;0YP937Z 
 ;;9002226.02101,"1804,0YP937Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YP93JZ ",.01)
 ;;0YP93JZ 
 ;;9002226.02101,"1804,0YP93JZ ",.02)
 ;;0YP93JZ 
 ;;9002226.02101,"1804,0YP93JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YP93KZ ",.01)
 ;;0YP93KZ 
 ;;9002226.02101,"1804,0YP93KZ ",.02)
 ;;0YP93KZ 
 ;;9002226.02101,"1804,0YP93KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YP93YZ ",.01)
 ;;0YP93YZ 
 ;;9002226.02101,"1804,0YP93YZ ",.02)
 ;;0YP93YZ 
 ;;9002226.02101,"1804,0YP93YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YP940Z ",.01)
 ;;0YP940Z 
 ;;9002226.02101,"1804,0YP940Z ",.02)
 ;;0YP940Z 
 ;;9002226.02101,"1804,0YP940Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YP941Z ",.01)
 ;;0YP941Z 
 ;;9002226.02101,"1804,0YP941Z ",.02)
 ;;0YP941Z 
 ;;9002226.02101,"1804,0YP941Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YP943Z ",.01)
 ;;0YP943Z 
 ;;9002226.02101,"1804,0YP943Z ",.02)
 ;;0YP943Z 
 ;;9002226.02101,"1804,0YP943Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YP947Z ",.01)
 ;;0YP947Z 
 ;;9002226.02101,"1804,0YP947Z ",.02)
 ;;0YP947Z 
 ;;9002226.02101,"1804,0YP947Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YP94JZ ",.01)
 ;;0YP94JZ 
 ;;9002226.02101,"1804,0YP94JZ ",.02)
 ;;0YP94JZ 
 ;;9002226.02101,"1804,0YP94JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YP94KZ ",.01)
 ;;0YP94KZ 
 ;;9002226.02101,"1804,0YP94KZ ",.02)
 ;;0YP94KZ 
 ;;9002226.02101,"1804,0YP94KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YP94YZ ",.01)
 ;;0YP94YZ 
 ;;9002226.02101,"1804,0YP94YZ ",.02)
 ;;0YP94YZ 
 ;;9002226.02101,"1804,0YP94YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YP9X0Z ",.01)
 ;;0YP9X0Z 
 ;;9002226.02101,"1804,0YP9X0Z ",.02)
 ;;0YP9X0Z 
 ;;9002226.02101,"1804,0YP9X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YP9X1Z ",.01)
 ;;0YP9X1Z 
 ;;9002226.02101,"1804,0YP9X1Z ",.02)
 ;;0YP9X1Z 
 ;;9002226.02101,"1804,0YP9X1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YP9X3Z ",.01)
 ;;0YP9X3Z 
 ;;9002226.02101,"1804,0YP9X3Z ",.02)
 ;;0YP9X3Z 
 ;;9002226.02101,"1804,0YP9X3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YP9X7Z ",.01)
 ;;0YP9X7Z 
 ;;9002226.02101,"1804,0YP9X7Z ",.02)
 ;;0YP9X7Z 
 ;;9002226.02101,"1804,0YP9X7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YP9XJZ ",.01)
 ;;0YP9XJZ 
 ;;9002226.02101,"1804,0YP9XJZ ",.02)
 ;;0YP9XJZ 
 ;;9002226.02101,"1804,0YP9XJZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YP9XKZ ",.01)
 ;;0YP9XKZ 
 ;;9002226.02101,"1804,0YP9XKZ ",.02)
 ;;0YP9XKZ 
 ;;9002226.02101,"1804,0YP9XKZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YP9XYZ ",.01)
 ;;0YP9XYZ 
 ;;9002226.02101,"1804,0YP9XYZ ",.02)
 ;;0YP9XYZ 
 ;;9002226.02101,"1804,0YP9XYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YPB00Z ",.01)
 ;;0YPB00Z 
 ;;9002226.02101,"1804,0YPB00Z ",.02)
 ;;0YPB00Z 
 ;;9002226.02101,"1804,0YPB00Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YPB01Z ",.01)
 ;;0YPB01Z 
 ;;9002226.02101,"1804,0YPB01Z ",.02)
 ;;0YPB01Z 
 ;;9002226.02101,"1804,0YPB01Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YPB03Z ",.01)
 ;;0YPB03Z 
 ;;9002226.02101,"1804,0YPB03Z ",.02)
 ;;0YPB03Z 
 ;;9002226.02101,"1804,0YPB03Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YPB07Z ",.01)
 ;;0YPB07Z 
 ;;9002226.02101,"1804,0YPB07Z ",.02)
 ;;0YPB07Z 
 ;;9002226.02101,"1804,0YPB07Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YPB0JZ ",.01)
 ;;0YPB0JZ 
 ;;9002226.02101,"1804,0YPB0JZ ",.02)
 ;;0YPB0JZ 
 ;;9002226.02101,"1804,0YPB0JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YPB0KZ ",.01)
 ;;0YPB0KZ 
 ;;9002226.02101,"1804,0YPB0KZ ",.02)
 ;;0YPB0KZ 
 ;;9002226.02101,"1804,0YPB0KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YPB0YZ ",.01)
 ;;0YPB0YZ 
 ;;9002226.02101,"1804,0YPB0YZ ",.02)
 ;;0YPB0YZ 
 ;;9002226.02101,"1804,0YPB0YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YPB30Z ",.01)
 ;;0YPB30Z 
 ;;9002226.02101,"1804,0YPB30Z ",.02)
 ;;0YPB30Z 
 ;;9002226.02101,"1804,0YPB30Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YPB31Z ",.01)
 ;;0YPB31Z 
 ;;9002226.02101,"1804,0YPB31Z ",.02)
 ;;0YPB31Z 
 ;;9002226.02101,"1804,0YPB31Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YPB33Z ",.01)
 ;;0YPB33Z 
 ;;9002226.02101,"1804,0YPB33Z ",.02)
 ;;0YPB33Z 
 ;;9002226.02101,"1804,0YPB33Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YPB37Z ",.01)
 ;;0YPB37Z 
 ;;9002226.02101,"1804,0YPB37Z ",.02)
 ;;0YPB37Z 
 ;;9002226.02101,"1804,0YPB37Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YPB3JZ ",.01)
 ;;0YPB3JZ 
 ;;9002226.02101,"1804,0YPB3JZ ",.02)
 ;;0YPB3JZ 
 ;;9002226.02101,"1804,0YPB3JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YPB3KZ ",.01)
 ;;0YPB3KZ 
 ;;9002226.02101,"1804,0YPB3KZ ",.02)
 ;;0YPB3KZ 
 ;;9002226.02101,"1804,0YPB3KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YPB3YZ ",.01)
 ;;0YPB3YZ 
 ;;9002226.02101,"1804,0YPB3YZ ",.02)
 ;;0YPB3YZ 
 ;;9002226.02101,"1804,0YPB3YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YPB40Z ",.01)
 ;;0YPB40Z 
 ;;9002226.02101,"1804,0YPB40Z ",.02)
 ;;0YPB40Z 
 ;;9002226.02101,"1804,0YPB40Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YPB41Z ",.01)
 ;;0YPB41Z 
 ;;9002226.02101,"1804,0YPB41Z ",.02)
 ;;0YPB41Z 
 ;;9002226.02101,"1804,0YPB41Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YPB43Z ",.01)
 ;;0YPB43Z 
 ;;9002226.02101,"1804,0YPB43Z ",.02)
 ;;0YPB43Z 
 ;;9002226.02101,"1804,0YPB43Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YPB47Z ",.01)
 ;;0YPB47Z 
 ;;9002226.02101,"1804,0YPB47Z ",.02)
 ;;0YPB47Z 
 ;;9002226.02101,"1804,0YPB47Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YPB4JZ ",.01)
 ;;0YPB4JZ 
 ;;9002226.02101,"1804,0YPB4JZ ",.02)
 ;;0YPB4JZ 
 ;;9002226.02101,"1804,0YPB4JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YPB4KZ ",.01)
 ;;0YPB4KZ 
 ;;9002226.02101,"1804,0YPB4KZ ",.02)
 ;;0YPB4KZ 
 ;;9002226.02101,"1804,0YPB4KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YPB4YZ ",.01)
 ;;0YPB4YZ 
 ;;9002226.02101,"1804,0YPB4YZ ",.02)
 ;;0YPB4YZ 
 ;;9002226.02101,"1804,0YPB4YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YPBX0Z ",.01)
 ;;0YPBX0Z 
 ;;9002226.02101,"1804,0YPBX0Z ",.02)
 ;;0YPBX0Z 
 ;;9002226.02101,"1804,0YPBX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YPBX1Z ",.01)
 ;;0YPBX1Z 
 ;;9002226.02101,"1804,0YPBX1Z ",.02)
 ;;0YPBX1Z 
 ;;9002226.02101,"1804,0YPBX1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YPBX3Z ",.01)
 ;;0YPBX3Z 
 ;;9002226.02101,"1804,0YPBX3Z ",.02)
 ;;0YPBX3Z 
 ;;9002226.02101,"1804,0YPBX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YPBX7Z ",.01)
 ;;0YPBX7Z 
 ;;9002226.02101,"1804,0YPBX7Z ",.02)
 ;;0YPBX7Z 
 ;;9002226.02101,"1804,0YPBX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YPBXJZ ",.01)
 ;;0YPBXJZ 
 ;;9002226.02101,"1804,0YPBXJZ ",.02)
 ;;0YPBXJZ 
 ;;9002226.02101,"1804,0YPBXJZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YPBXKZ ",.01)
 ;;0YPBXKZ 
 ;;9002226.02101,"1804,0YPBXKZ ",.02)
 ;;0YPBXKZ 
 ;;9002226.02101,"1804,0YPBXKZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YPBXYZ ",.01)
 ;;0YPBXYZ 
 ;;9002226.02101,"1804,0YPBXYZ ",.02)
 ;;0YPBXYZ 
 ;;9002226.02101,"1804,0YPBXYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YQ5XZZ ",.01)
 ;;0YQ5XZZ 
 ;;9002226.02101,"1804,0YQ5XZZ ",.02)
 ;;0YQ5XZZ 
 ;;9002226.02101,"1804,0YQ5XZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YQ6XZZ ",.01)
 ;;0YQ6XZZ 
 ;;9002226.02101,"1804,0YQ6XZZ ",.02)
 ;;0YQ6XZZ 
 ;;9002226.02101,"1804,0YQ6XZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YQ7XZZ ",.01)
 ;;0YQ7XZZ 
 ;;9002226.02101,"1804,0YQ7XZZ ",.02)
 ;;0YQ7XZZ 
 ;;9002226.02101,"1804,0YQ7XZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YQ8XZZ ",.01)
 ;;0YQ8XZZ 
 ;;9002226.02101,"1804,0YQ8XZZ ",.02)
 ;;0YQ8XZZ 
 ;;9002226.02101,"1804,0YQ8XZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YQAXZZ ",.01)
 ;;0YQAXZZ 
 ;;9002226.02101,"1804,0YQAXZZ ",.02)
 ;;0YQAXZZ 
 ;;9002226.02101,"1804,0YQAXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YQEXZZ ",.01)
 ;;0YQEXZZ 