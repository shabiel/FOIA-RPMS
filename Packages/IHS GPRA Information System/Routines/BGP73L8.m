BGP73L8 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 05, 2017;
 ;;17.1;IHS CLINICAL REPORTING;;MAY 10, 2017;Build 29
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"873,00378-6323-05 ",.02)
 ;;00378-6323-05
 ;;9002226.02101,"873,00378-6323-77 ",.01)
 ;;00378-6323-77
 ;;9002226.02101,"873,00378-6323-77 ",.02)
 ;;00378-6323-77
 ;;9002226.02101,"873,00378-6324-05 ",.01)
 ;;00378-6324-05
 ;;9002226.02101,"873,00378-6324-05 ",.02)
 ;;00378-6324-05
 ;;9002226.02101,"873,00378-6324-77 ",.01)
 ;;00378-6324-77
 ;;9002226.02101,"873,00378-6324-77 ",.02)
 ;;00378-6324-77
 ;;9002226.02101,"873,00378-6325-05 ",.01)
 ;;00378-6325-05
 ;;9002226.02101,"873,00378-6325-05 ",.02)
 ;;00378-6325-05
 ;;9002226.02101,"873,00378-6325-77 ",.01)
 ;;00378-6325-77
 ;;9002226.02101,"873,00378-6325-77 ",.02)
 ;;00378-6325-77
 ;;9002226.02101,"873,00378-6629-93 ",.01)
 ;;00378-6629-93
 ;;9002226.02101,"873,00378-6629-93 ",.02)
 ;;00378-6629-93
 ;;9002226.02101,"873,00591-2167-19 ",.01)
 ;;00591-2167-19
 ;;9002226.02101,"873,00591-2167-19 ",.02)
 ;;00591-2167-19
 ;;9002226.02101,"873,00591-2167-30 ",.01)
 ;;00591-2167-30
 ;;9002226.02101,"873,00591-2167-30 ",.02)
 ;;00591-2167-30
 ;;9002226.02101,"873,00591-2168-10 ",.01)
 ;;00591-2168-10
 ;;9002226.02101,"873,00591-2168-10 ",.02)
 ;;00591-2168-10
 ;;9002226.02101,"873,00591-2168-19 ",.01)
 ;;00591-2168-19
 ;;9002226.02101,"873,00591-2168-19 ",.02)
 ;;00591-2168-19
 ;;9002226.02101,"873,00591-2169-10 ",.01)
 ;;00591-2169-10
 ;;9002226.02101,"873,00591-2169-10 ",.02)
 ;;00591-2169-10
 ;;9002226.02101,"873,00591-2169-19 ",.01)
 ;;00591-2169-19
 ;;9002226.02101,"873,00591-2169-19 ",.02)
 ;;00591-2169-19
 ;;9002226.02101,"873,00591-2170-05 ",.01)
 ;;00591-2170-05
 ;;9002226.02101,"873,00591-2170-05 ",.02)
 ;;00591-2170-05
 ;;9002226.02101,"873,00591-2170-19 ",.01)
 ;;00591-2170-19
 ;;9002226.02101,"873,00591-2170-19 ",.02)
 ;;00591-2170-19
 ;;9002226.02101,"873,00591-2315-10 ",.01)
 ;;00591-2315-10
 ;;9002226.02101,"873,00591-2315-10 ",.02)
 ;;00591-2315-10
 ;;9002226.02101,"873,00591-2315-19 ",.01)
 ;;00591-2315-19
 ;;9002226.02101,"873,00591-2315-19 ",.02)
 ;;00591-2315-19
 ;;9002226.02101,"873,00591-2316-10 ",.01)
 ;;00591-2316-10
 ;;9002226.02101,"873,00591-2316-10 ",.02)
 ;;00591-2316-10
 ;;9002226.02101,"873,00591-2316-19 ",.01)
 ;;00591-2316-19
 ;;9002226.02101,"873,00591-2316-19 ",.02)
 ;;00591-2316-19
 ;;9002226.02101,"873,00591-2317-10 ",.01)
 ;;00591-2317-10
 ;;9002226.02101,"873,00591-2317-10 ",.02)
 ;;00591-2317-10
 ;;9002226.02101,"873,00591-2317-19 ",.01)
 ;;00591-2317-19
 ;;9002226.02101,"873,00591-2317-19 ",.02)
 ;;00591-2317-19
 ;;9002226.02101,"873,00591-2318-19 ",.01)
 ;;00591-2318-19
 ;;9002226.02101,"873,00591-2318-19 ",.02)
 ;;00591-2318-19
 ;;9002226.02101,"873,00591-2319-19 ",.01)
 ;;00591-2319-19
 ;;9002226.02101,"873,00591-2319-19 ",.02)
 ;;00591-2319-19
 ;;9002226.02101,"873,00591-2782-19 ",.01)
 ;;00591-2782-19
 ;;9002226.02101,"873,00591-2782-19 ",.02)
 ;;00591-2782-19
 ;;9002226.02101,"873,00591-2782-30 ",.01)
 ;;00591-2782-30
 ;;9002226.02101,"873,00591-2782-30 ",.02)
 ;;00591-2782-30
 ;;9002226.02101,"873,00591-2783-19 ",.01)
 ;;00591-2783-19
 ;;9002226.02101,"873,00591-2783-19 ",.02)
 ;;00591-2783-19
 ;;9002226.02101,"873,00591-2783-30 ",.01)
 ;;00591-2783-30
 ;;9002226.02101,"873,00591-2783-30 ",.02)
 ;;00591-2783-30
 ;;9002226.02101,"873,00591-2784-19 ",.01)
 ;;00591-2784-19
 ;;9002226.02101,"873,00591-2784-19 ",.02)
 ;;00591-2784-19
 ;;9002226.02101,"873,00591-2784-30 ",.01)
 ;;00591-2784-30
 ;;9002226.02101,"873,00591-2784-30 ",.02)
 ;;00591-2784-30
 ;;9002226.02101,"873,00591-2785-19 ",.01)
 ;;00591-2785-19
 ;;9002226.02101,"873,00591-2785-19 ",.02)
 ;;00591-2785-19
 ;;9002226.02101,"873,00591-2785-30 ",.01)
 ;;00591-2785-30
 ;;9002226.02101,"873,00591-2785-30 ",.02)
 ;;00591-2785-30
 ;;9002226.02101,"873,00591-2786-19 ",.01)
 ;;00591-2786-19
 ;;9002226.02101,"873,00591-2786-19 ",.02)
 ;;00591-2786-19
 ;;9002226.02101,"873,00591-2786-30 ",.01)
 ;;00591-2786-30
 ;;9002226.02101,"873,00591-2786-30 ",.02)
 ;;00591-2786-30
 ;;9002226.02101,"873,00591-3292-15 ",.01)
 ;;00591-3292-15
 ;;9002226.02101,"873,00591-3292-15 ",.02)
 ;;00591-3292-15
 ;;9002226.02101,"873,00591-3293-15 ",.01)
 ;;00591-3293-15
 ;;9002226.02101,"873,00591-3293-15 ",.02)
 ;;00591-3293-15
 ;;9002226.02101,"873,00591-3294-15 ",.01)
 ;;00591-3294-15
 ;;9002226.02101,"873,00591-3294-15 ",.02)
 ;;00591-3294-15
 ;;9002226.02101,"873,00591-3745-10 ",.01)
 ;;00591-3745-10
 ;;9002226.02101,"873,00591-3745-10 ",.02)
 ;;00591-3745-10
 ;;9002226.02101,"873,00591-3745-19 ",.01)
 ;;00591-3745-19
 ;;9002226.02101,"873,00591-3745-19 ",.02)
 ;;00591-3745-19
 ;;9002226.02101,"873,00591-3746-10 ",.01)
 ;;00591-3746-10
 ;;9002226.02101,"873,00591-3746-10 ",.02)
 ;;00591-3746-10
 ;;9002226.02101,"873,00591-3746-19 ",.01)
 ;;00591-3746-19
 ;;9002226.02101,"873,00591-3746-19 ",.02)
 ;;00591-3746-19
 ;;9002226.02101,"873,00591-3746-30 ",.01)
 ;;00591-3746-30
 ;;9002226.02101,"873,00591-3746-30 ",.02)
 ;;00591-3746-30
 ;;9002226.02101,"873,00591-3747-10 ",.01)
 ;;00591-3747-10
 ;;9002226.02101,"873,00591-3747-10 ",.02)
 ;;00591-3747-10
 ;;9002226.02101,"873,00591-3747-19 ",.01)
 ;;00591-3747-19
 ;;9002226.02101,"873,00591-3747-19 ",.02)
 ;;00591-3747-19
 ;;9002226.02101,"873,00591-3747-30 ",.01)
 ;;00591-3747-30
 ;;9002226.02101,"873,00591-3747-30 ",.02)
 ;;00591-3747-30
 ;;9002226.02101,"873,00597-0039-37 ",.01)
 ;;00597-0039-37
 ;;9002226.02101,"873,00597-0039-37 ",.02)
 ;;00597-0039-37
 ;;9002226.02101,"873,00597-0040-37 ",.01)
 ;;00597-0040-37
 ;;9002226.02101,"873,00597-0040-37 ",.02)
 ;;00597-0040-37
 ;;9002226.02101,"873,00597-0041-37 ",.01)
 ;;00597-0041-37
 ;;9002226.02101,"873,00597-0041-37 ",.02)
 ;;00597-0041-37
 ;;9002226.02101,"873,00597-0042-37 ",.01)
 ;;00597-0042-37
 ;;9002226.02101,"873,00597-0042-37 ",.02)
 ;;00597-0042-37
 ;;9002226.02101,"873,00597-0043-37 ",.01)
 ;;00597-0043-37
 ;;9002226.02101,"873,00597-0043-37 ",.02)
 ;;00597-0043-37
 ;;9002226.02101,"873,00597-0044-37 ",.01)
 ;;00597-0044-37
 ;;9002226.02101,"873,00597-0044-37 ",.02)
 ;;00597-0044-37
 ;;9002226.02101,"873,00597-0124-37 ",.01)
 ;;00597-0124-37
 ;;9002226.02101,"873,00597-0124-37 ",.02)
 ;;00597-0124-37
 ;;9002226.02101,"873,00597-0125-37 ",.01)
 ;;00597-0125-37
 ;;9002226.02101,"873,00597-0125-37 ",.02)
 ;;00597-0125-37
 ;;9002226.02101,"873,00597-0126-37 ",.01)
 ;;00597-0126-37
 ;;9002226.02101,"873,00597-0126-37 ",.02)
 ;;00597-0126-37
 ;;9002226.02101,"873,00597-0127-37 ",.01)
 ;;00597-0127-37
 ;;9002226.02101,"873,00597-0127-37 ",.02)
 ;;00597-0127-37
 ;;9002226.02101,"873,00603-4080-02 ",.01)
 ;;00603-4080-02
 ;;9002226.02101,"873,00603-4080-02 ",.02)
 ;;00603-4080-02
 ;;9002226.02101,"873,00603-4080-16 ",.01)
 ;;00603-4080-16
 ;;9002226.02101,"873,00603-4080-16 ",.02)
 ;;00603-4080-16
 ;;9002226.02101,"873,00603-4081-02 ",.01)
 ;;00603-4081-02
 ;;9002226.02101,"873,00603-4081-02 ",.02)
 ;;00603-4081-02
 ;;9002226.02101,"873,00603-4081-16 ",.01)
 ;;00603-4081-16
 ;;9002226.02101,"873,00603-4081-16 ",.02)
 ;;00603-4081-16
 ;;9002226.02101,"873,00603-4081-28 ",.01)
 ;;00603-4081-28
 ;;9002226.02101,"873,00603-4081-28 ",.02)
 ;;00603-4081-28
 ;;9002226.02101,"873,00603-4082-02 ",.01)
 ;;00603-4082-02
 ;;9002226.02101,"873,00603-4082-02 ",.02)
 ;;00603-4082-02
 ;;9002226.02101,"873,00603-4082-16 ",.01)
 ;;00603-4082-16
 ;;9002226.02101,"873,00603-4082-16 ",.02)
 ;;00603-4082-16
 ;;9002226.02101,"873,00603-4082-28 ",.01)
 ;;00603-4082-28
 ;;9002226.02101,"873,00603-4082-28 ",.02)
 ;;00603-4082-28
 ;;9002226.02101,"873,00603-4088-02 ",.01)
 ;;00603-4088-02
 ;;9002226.02101,"873,00603-4088-02 ",.02)
 ;;00603-4088-02
 ;;9002226.02101,"873,00603-4088-16 ",.01)
 ;;00603-4088-16
 ;;9002226.02101,"873,00603-4088-16 ",.02)
 ;;00603-4088-16
 ;;9002226.02101,"873,00603-4089-02 ",.01)
 ;;00603-4089-02
 ;;9002226.02101,"873,00603-4089-02 ",.02)
 ;;00603-4089-02
 ;;9002226.02101,"873,00603-4089-16 ",.01)
 ;;00603-4089-16
 ;;9002226.02101,"873,00603-4089-16 ",.02)
 ;;00603-4089-16
 ;;9002226.02101,"873,00603-4224-02 ",.01)
 ;;00603-4224-02
 ;;9002226.02101,"873,00603-4224-02 ",.02)
 ;;00603-4224-02
 ;;9002226.02101,"873,00603-4224-32 ",.01)
 ;;00603-4224-32
 ;;9002226.02101,"873,00603-4224-32 ",.02)
 ;;00603-4224-32
 ;;9002226.02101,"873,00603-4225-02 ",.01)
 ;;00603-4225-02
 ;;9002226.02101,"873,00603-4225-02 ",.02)
 ;;00603-4225-02
 ;;9002226.02101,"873,00603-4225-16 ",.01)
 ;;00603-4225-16
 ;;9002226.02101,"873,00603-4225-16 ",.02)
 ;;00603-4225-16
 ;;9002226.02101,"873,00603-4225-32 ",.01)
 ;;00603-4225-32
 ;;9002226.02101,"873,00603-4225-32 ",.02)
 ;;00603-4225-32
 ;;9002226.02101,"873,00603-4226-02 ",.01)
 ;;00603-4226-02
 ;;9002226.02101,"873,00603-4226-02 ",.02)
 ;;00603-4226-02
 ;;9002226.02101,"873,00603-4226-16 ",.01)
 ;;00603-4226-16
 ;;9002226.02101,"873,00603-4226-16 ",.02)
 ;;00603-4226-16
 ;;9002226.02101,"873,00603-4226-32 ",.01)
 ;;00603-4226-32
 ;;9002226.02101,"873,00603-4226-32 ",.02)
 ;;00603-4226-32
 ;;9002226.02101,"873,00603-4228-02 ",.01)
 ;;00603-4228-02
 ;;9002226.02101,"873,00603-4228-02 ",.02)
 ;;00603-4228-02
 ;;9002226.02101,"873,00603-4228-16 ",.01)
 ;;00603-4228-16
 ;;9002226.02101,"873,00603-4228-16 ",.02)
 ;;00603-4228-16
 ;;9002226.02101,"873,00603-4228-32 ",.01)
 ;;00603-4228-32
 ;;9002226.02101,"873,00603-4228-32 ",.02)
 ;;00603-4228-32
 ;;9002226.02101,"873,00603-4229-02 ",.01)
 ;;00603-4229-02
 ;;9002226.02101,"873,00603-4229-02 ",.02)
 ;;00603-4229-02
 ;;9002226.02101,"873,00603-4229-16 ",.01)
 ;;00603-4229-16
 ;;9002226.02101,"873,00603-4229-16 ",.02)
 ;;00603-4229-16
 ;;9002226.02101,"873,00603-4229-32 ",.01)
 ;;00603-4229-32
 ;;9002226.02101,"873,00603-4229-32 ",.02)
 ;;00603-4229-32
 ;;9002226.02101,"873,00603-4230-02 ",.01)
 ;;00603-4230-02
 ;;9002226.02101,"873,00603-4230-02 ",.02)
 ;;00603-4230-02
 ;;9002226.02101,"873,00603-4230-16 ",.01)
 ;;00603-4230-16
 ;;9002226.02101,"873,00603-4230-16 ",.02)
 ;;00603-4230-16
 ;;9002226.02101,"873,00603-4230-32 ",.01)
 ;;00603-4230-32
 ;;9002226.02101,"873,00603-4230-32 ",.02)
 ;;00603-4230-32
 ;;9002226.02101,"873,00603-5914-16 ",.01)
 ;;00603-5914-16
 ;;9002226.02101,"873,00603-5914-16 ",.02)
 ;;00603-5914-16
 ;;9002226.02101,"873,00603-5915-16 ",.01)
 ;;00603-5915-16
 ;;9002226.02101,"873,00603-5915-16 ",.02)
 ;;00603-5915-16
 ;;9002226.02101,"873,00603-5916-16 ",.01)
 ;;00603-5916-16
 ;;9002226.02101,"873,00603-5916-16 ",.02)
 ;;00603-5916-16
 ;;9002226.02101,"873,00603-5926-16 ",.01)
 ;;00603-5926-16
 ;;9002226.02101,"873,00603-5926-16 ",.02)
 ;;00603-5926-16
 ;;9002226.02101,"873,00603-5927-16 ",.01)
 ;;00603-5927-16
 ;;9002226.02101,"873,00603-5927-16 ",.02)
 ;;00603-5927-16
 ;;9002226.02101,"873,00603-5928-16 ",.01)
 ;;00603-5928-16
 ;;9002226.02101,"873,00603-5928-16 ",.02)
 ;;00603-5928-16
 ;;9002226.02101,"873,00603-6340-02 ",.01)
 ;;00603-6340-02
 ;;9002226.02101,"873,00603-6340-02 ",.02)
 ;;00603-6340-02
 ;;9002226.02101,"873,00603-6341-02 ",.01)
 ;;00603-6341-02
 ;;9002226.02101,"873,00603-6341-02 ",.02)
 ;;00603-6341-02
 ;;9002226.02101,"873,00603-6341-28 ",.01)
 ;;00603-6341-28
 ;;9002226.02101,"873,00603-6341-28 ",.02)
 ;;00603-6341-28
 ;;9002226.02101,"873,00603-6342-02 ",.01)
 ;;00603-6342-02
 ;;9002226.02101,"873,00603-6342-02 ",.02)
 ;;00603-6342-02
 ;;9002226.02101,"873,00603-6342-28 ",.01)
 ;;00603-6342-28
 ;;9002226.02101,"873,00603-6342-28 ",.02)
 ;;00603-6342-28
 ;;9002226.02101,"873,00603-6343-02 ",.01)
 ;;00603-6343-02
 ;;9002226.02101,"873,00603-6343-02 ",.02)
 ;;00603-6343-02
 ;;9002226.02101,"873,00603-6343-28 ",.01)
 ;;00603-6343-28
 ;;9002226.02101,"873,00603-6343-28 ",.02)
 ;;00603-6343-28
 ;;9002226.02101,"873,00603-6345-02 ",.01)
 ;;00603-6345-02