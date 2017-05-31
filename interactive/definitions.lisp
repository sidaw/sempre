(:def plate (:label plate:plate (:isolate (:blk (:loop (number 3) (:s (:loop (number 4) (:blk (: add red:C top:D))) (: select (call adj left:D))))))))
(:def cube (:label cube:cube (:isolate (:blk (:loop (number 5) (:s (:isolate (:blk (:loop (number 5) (:s (:loop (number 5) (:blk (: add red:C top:D))) (: select (call adj left:D)))))) (: select (call adj back:D))))))))

(:def base (:label base:base (:isolate (:blk (:loop (number 3) (:s (:loop (number 4) (:blk (: add red:C back:D))) (: select (call adj left:D))))))))
(:def rectangle (:label rectangle:rectangle (:isolate (:blk (:loop (number 5) (:s (:: base:base 0) (: select (call adj top:D))))))))

(:def trunk (:label trunk:trunk (:isolate (:loop (number 5) (:s (: add brown:C here) (: select (call adj top:D)))))))
(:def leaves (:label leaves:leaves (:s (: add green:C left) (: add green:C right) (: add green:C front) (: add green:C back))))
(:def "palm tree" (:label "palm tree":"palm tree"  (:s (:: trunk:trunk 0) (:: leaves:leaves 0))))
(:def trunk (:label trunk:trunk (:isolate (:loop (number 5) (:s (: add brown:C here) (: select (call adj top:D)))))))

(:def "square frame" (:label "square frame":"square frame" (:s
  (:isolate (:loop (number 5) (:s (: add red:C here) (: select (call adj top)))))
  (:isolate (:loop (number 5) (:s (: add red:C here) (: select (call adj left)))))
  (:isolate (:loop (number 5) (:s (: add red:C here) (: select (call adj bot)))))
  (:isolate (:loop (number 5) (:s (: add red:C here) (: select (call adj right))))))))

(:def frame (:label frame:frame (:s
  (:isolate (:loop (number 5) (:s (: add red:C here) (: select (call adj top)))))
  (:blk (:isolate (:loop (number 5) (:s (: add red:C here) (: select (call adj back))))))
  (:isolate (:loop (number 5) (:s (: add red:C here) (: select (call adj left)))))
  (:blk (:isolate (:loop (number 5) (:s (: add red:C here) (: select (call adj back))))))
  (:isolate (:loop (number 5) (:s (: add red:C here) (: select (call adj bot)))))
  (:blk (:isolate (:loop (number 5) (:s (: add red:C here) (: select (call adj back))))))
  (:isolate (:loop (number 5) (:s (: add red:C here) (: select (call adj right)))))
  (:isolate (:loop (number 5) (:s (: add red:C here) (: select (call adj back)))))
  (:isolate (:loop (number 5) (:s (: add red:C here) (: select (call adj top)))))
  (:isolate (:loop (number 5) (:s (: add red:C here) (: select (call adj left)))))
  (:isolate (:loop (number 5) (:s (: add red:C here) (: select (call adj bot)))))
  (:isolate (:loop (number 5) (:s (: add red:C here) (: select (call adj right)))))
  (: add red here))))

(:def "leg":leg (:label leg:leg (:loop (number 5) (:s (: add brown:C here) (: select (call adj top))))))

(:def "legs":legs (:label legs:legs (:s
  (:blk
    (:loop (number 5) (: select (call adj back)))
    (:blk (:: leg:leg 0))
    (:loop (number 5) (: select (call adj left)))
    (:blk (:: leg:leg 0))
    (:loop (number 5) (: select (call adj front)))
    (:blk (:: leg:leg 0))
    (:loop (number 5) (: select (call adj right)))
  )
  (:isolate (:: leg:leg 0))
)))

(:def seat (:label seat:seat (:isolate (:blk (:loop (number 6) (:s (:loop (number 6) (:blk (: add red:C back))) (: select (call adj left))))))))
(:def back (:label back:back (:isolate (:blk (:loop (number 6) (:s (:loop (number 7) (:blk (: add red:C top))) (: select (call adj left))))))))

(:def chair:chair (:label chair:chair (:s
  (:: legs:legs 0)
  (: select (call adj front))
  (:: seat:seat 0)
  (:loop (number 6) (: select (call adj back)))
  (:: back:back 0)
)))
