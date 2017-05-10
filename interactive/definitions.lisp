(:def plate (:label plate:plate (:isolate (:blk (:loop (number 3) (:s (:loop (number 4) (:blk (: add red:C top:D))) (: select (call adj left:D))))))))
(:def cube (:label cube:cube (:isolate (:blk (:loop (number 3) (:s (:isolate (:blk (:loop (number 3) (:s (:loop (number 3) (:blk (: add red:C top:D))) (: select (call adj left:D)))))) (: select (call adj back:D))))))))

(:def base (:label base:base (:isolate (:blk (:loop (number 3) (:s (:loop (number 4) (:blk (: add red:C back:D))) (: select (call adj left:D))))))))
(:def rectangle (:label rectangle:rectangle (:isolate (:blk (:loop (number 5) (:s (:: base:base 0) (: select (call adj top:D))))))))

(:def trunk (:label trunk:trunk (:isolate (:loop (number 5) (:s (: add brown:C here) (: select (call adj top:D)))))))
(:def leaves (:label leaves:leaves (:s (: add green:C left) (: add green:C right) (: add green:C front) (: add green:C back))))
(:def "palm tree" (:label "palm tree":"palm tree"  (:s (:: trunk:trunk 0) (:: leaves:leaves 0))))
