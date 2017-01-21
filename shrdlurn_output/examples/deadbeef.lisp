(example
  (id session:deadbeef)
  (context (date 2016 7 9) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-09T16:22:44.475)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 9) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-09T16:22:52.355)
  (NBestInd 4)
  (utterance "add 3 red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 9) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-09T18:56:31.047)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 9) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-09T18:56:32.485)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 9) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-09T18:56:34.452)
  (NBestInd 0)
  (utterance "add brown")
  (targetFormula (: add brown top))
  (targetValue (string [[3,3,1,\"Brown\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 9) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-09T18:56:39.797)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 9) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-09T18:56:47.892)
  (NBestInd 0)
  (utterance "base 2 2")
  (targetFormula (: base (number 2) (number 2)))
  (targetValue (string [[2,2,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 9) (graph NaiveKnowledgeGraph ((string [[2,2,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-09T18:56:51.379)
  (NBestInd 0)
  (utterance "add brown left")
  (targetFormula (: add brown left))
  (targetValue (string [[2,3,0,\"Brown\",[]],[2,2,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 9) (graph NaiveKnowledgeGraph ((string [[2,3,0,\"Brown\",[]],[2,2,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-09T18:56:53.491)
  (NBestInd 0)
  (utterance "add brown right")
  (targetFormula (: add brown right))
  (targetValue (string [[2,1,0,\"Brown\",[]],[2,3,0,\"Brown\",[]],[2,2,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 9) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-09T18:57:14.034)
  (NBestInd 0)
  (utterance "base 2 2")
  (targetFormula (: base (number 2) (number 2)))
  (targetValue (string [[2,2,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 9) (graph NaiveKnowledgeGraph ((string [[2,2,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-09T18:57:16.194)
  (NBestInd 0)
  (utterance "add brown left")
  (targetFormula (: add brown left))
  (targetValue (string [[2,3,0,\"Brown\",[]],[2,2,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 9) (graph NaiveKnowledgeGraph ((string [[2,3,0,\"Brown\",[]],[2,2,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-09T18:57:18.913)
  (NBestInd 0)
  (utterance "add brown right")
  (targetFormula (: add brown right))
  (targetValue (string [[2,1,0,\"Brown\",[]],[2,3,0,\"Brown\",[]],[2,2,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 9) (graph NaiveKnowledgeGraph ((string [[2,1,0,\"Brown\",[]],[2,3,0,\"Brown\",[]],[2,2,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-09T18:57:21.369)
  (NBestInd 0)
  (utterance "add brown back")
  (targetFormula (: add brown back))
  (targetValue (string [[2,1,0,\"Brown\",[]],[3,2,0,\"Brown\",[]],[2,3,0,\"Brown\",[]],[2,2,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 9) (graph NaiveKnowledgeGraph ((string [[2,1,0,\"Brown\",[]],[3,2,0,\"Brown\",[]],[2,3,0,\"Brown\",[]],[2,2,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-09T18:57:25.650)
  (NBestInd 0)
  (utterance "add brown front")
  (targetFormula (: add brown front))
  (targetValue (string [[2,1,0,\"Brown\",[]],[3,2,0,\"Brown\",[]],[1,2,0,\"Brown\",[]],[2,3,0,\"Brown\",[]],[2,2,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 9)
    (graph NaiveKnowledgeGraph ((string [[2,1,0,\"Brown\",[]],[3,2,0,\"Brown\",[]],[1,2,0,\"Brown\",[]],[2,3,0,\"Brown\",[]],[2,2,0,\"Anchor\",[\"S\"]]]) (name b) (name c)))
  )
  (timeStamp 2016-08-09T18:57:32.072)
  (NBestInd 0)
  (utterance "select all")
  (targetFormula (:for * (: select)))
  (targetValue (string [[2,1,0,\"Brown\",[\"S\"]],[3,2,0,\"Brown\",[\"S\"]],[1,2,0,\"Brown\",[\"S\"]],[2,3,0,\"Brown\",[\"S\"]],[2,2,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 9)
    (graph NaiveKnowledgeGraph ((string [[2,1,0,\"Brown\",[\"S\"]],[3,2,0,\"Brown\",[\"S\"]],[1,2,0,\"Brown\",[\"S\"]],[2,3,0,\"Brown\",[\"S\"]],[2,2,0,\"Anchor\",[\"S\"]]]) (name b) (name c)))
  )
  (timeStamp 2016-08-09T18:57:36.785)
  (NBestInd 0)
  (utterance "repeat 6 [ add brown ]")
  (targetFormula (:loop (number 6) (: add brown top)))
  (targetValue
    (string
      [[2,1,0,\"Brown\",[\"S\"]],[2,3,1,\"Brown\",[]],[1,2,5,\"Brown\",[]],[3,2,4,\"Brown\",[]],[2,2,3,\"Brown\",[]],[3,2,1,\"Brown\",[]],[2,2,0,\"Brown\",[\"S\"]],[2,3,6,\"Brown\",[]],[2,1,5,\"Brown\",[]],[1,2,2,\"Brown\",[]],[2,2,0,\"Brown\",[\"S\"]],[2,3,3,\"Brown\",[]],[3,2,6,\"Brown\",[]],[2,1,2,\"Brown\",[]],[2,2,5,\"Brown\",[]],[3,2,3,\"Brown\",[]],[2,3,0,\"Brown\",[\"S\"]],[1,2,4,\"Brown\",[]],[2,2,2,\"Brown\",[]],[1,2,1,\"Brown\",[]],[3,2,0,\"Brown\",[\"S\"]],[2,1,4,\"Brown\",[]],[2,3,5,\"Brown\",[]],[2,3,2,\"Brown\",[]],[2,1,1,\"Brown\",[]],[3,2,5,\"Brown\",[]],[3,2,2,\"Brown\",[]],[1,2,6,\"Brown\",[]],[2,2,4,\"Brown\",[]],[2,2,1,\"Brown\",[]],[1,2,3,\"Brown\",[]],[1,2,0,\"Brown\",[\"S\"]],[2,1,6,\"Brown\",[]],[2,3,4,\"Brown\",[]],[2,1,3,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 9)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[2,1,0,\"Brown\",[\"S\"]],[2,3,1,\"Brown\",[]],[1,2,5,\"Brown\",[]],[3,2,4,\"Brown\",[]],[2,2,3,\"Brown\",[]],[3,2,1,\"Brown\",[]],[2,2,0,\"Brown\",[\"S\"]],[2,3,6,\"Brown\",[]],[2,1,5,\"Brown\",[]],[1,2,2,\"Brown\",[]],[2,2,0,\"Brown\",[\"S\"]],[2,3,3,\"Brown\",[]],[3,2,6,\"Brown\",[]],[2,1,2,\"Brown\",[]],[2,2,5,\"Brown\",[]],[3,2,3,\"Brown\",[]],[2,3,0,\"Brown\",[\"S\"]],[1,2,4,\"Brown\",[]],[2,2,2,\"Brown\",[]],[1,2,1,\"Brown\",[]],[3,2,0,\"Brown\",[\"S\"]],[2,1,4,\"Brown\",[]],[2,3,5,\"Brown\",[]],[2,3,2,\"Brown\",[]],[2,1,1,\"Brown\",[]],[3,2,5,\"Brown\",[]],[3,2,2,\"Brown\",[]],[1,2,6,\"Brown\",[]],[2,2,4,\"Brown\",[]],[2,2,1,\"Brown\",[]],[1,2,3,\"Brown\",[]],[1,2,0,\"Brown\",[\"S\"]],[2,1,6,\"Brown\",[]],[2,3,4,\"Brown\",[]],[2,1,3,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-09T18:57:46.304)
  (NBestInd 0)
  (utterance "select very top")
  (targetFormula (:for (call veryx top) (: select)))
  (targetValue
    (string
      [[2,1,0,\"Brown\",[\"S\"]],[2,3,1,\"Brown\",[]],[1,2,5,\"Brown\",[]],[3,2,4,\"Brown\",[]],[2,2,3,\"Brown\",[]],[3,2,1,\"Brown\",[]],[2,3,6,\"Brown\",[]],[2,1,5,\"Brown\",[]],[1,2,2,\"Brown\",[]],[2,2,0,\"Brown\",[\"S\"]],[2,3,3,\"Brown\",[]],[3,2,6,\"Brown\",[]],[2,1,2,\"Brown\",[]],[2,2,5,\"Brown\",[]],[3,2,3,\"Brown\",[]],[2,3,0,\"Brown\",[\"S\"]],[1,2,4,\"Brown\",[]],[2,2,2,\"Brown\",[]],[1,2,1,\"Brown\",[]],[3,2,0,\"Brown\",[\"S\"]],[2,1,4,\"Brown\",[]],[2,3,5,\"Brown\",[]],[2,3,2,\"Brown\",[]],[2,1,1,\"Brown\",[]],[3,2,5,\"Brown\",[]],[3,2,2,\"Brown\",[]],[1,2,6,\"Brown\",[]],[2,2,4,\"Brown\",[]],[2,2,1,\"Brown\",[]],[1,2,3,\"Brown\",[]],[1,2,0,\"Brown\",[\"S\"]],[2,1,6,\"Brown\",[]],[2,3,4,\"Brown\",[]],[2,1,3,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 9)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[2,1,0,\"Brown\",[\"S\"]],[2,3,1,\"Brown\",[]],[1,2,5,\"Brown\",[]],[3,2,4,\"Brown\",[]],[2,2,3,\"Brown\",[]],[3,2,1,\"Brown\",[]],[2,3,6,\"Brown\",[]],[2,1,5,\"Brown\",[]],[1,2,2,\"Brown\",[]],[2,2,0,\"Brown\",[\"S\"]],[2,3,3,\"Brown\",[]],[3,2,6,\"Brown\",[]],[2,1,2,\"Brown\",[]],[2,2,5,\"Brown\",[]],[3,2,3,\"Brown\",[]],[2,3,0,\"Brown\",[\"S\"]],[1,2,4,\"Brown\",[]],[2,2,2,\"Brown\",[]],[1,2,1,\"Brown\",[]],[3,2,0,\"Brown\",[\"S\"]],[2,1,4,\"Brown\",[]],[2,3,5,\"Brown\",[]],[2,3,2,\"Brown\",[]],[2,1,1,\"Brown\",[]],[3,2,5,\"Brown\",[]],[3,2,2,\"Brown\",[]],[1,2,6,\"Brown\",[]],[2,2,4,\"Brown\",[]],[2,2,1,\"Brown\",[]],[1,2,3,\"Brown\",[]],[1,2,0,\"Brown\",[\"S\"]],[2,1,6,\"Brown\",[]],[2,3,4,\"Brown\",[]],[2,1,3,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-09T18:57:51.112)
  (NBestInd 0)
  (utterance "add green front")
  (targetFormula (: add green front))
  (targetValue
    (string
      [[2,1,0,\"Brown\",[\"S\"]],[2,3,1,\"Brown\",[]],[1,2,5,\"Brown\",[]],[3,2,4,\"Brown\",[]],[1,3,0,\"Green\",[]],[2,2,3,\"Brown\",[]],[3,2,1,\"Brown\",[]],[2,3,6,\"Brown\",[]],[2,1,5,\"Brown\",[]],[1,2,2,\"Brown\",[]],[2,2,0,\"Brown\",[\"S\"]],[2,3,3,\"Brown\",[]],[3,2,6,\"Brown\",[]],[2,1,2,\"Brown\",[]],[2,2,5,\"Brown\",[]],[3,2,3,\"Brown\",[]],[2,3,0,\"Brown\",[\"S\"]],[1,2,4,\"Brown\",[]],[2,2,2,\"Brown\",[]],[1,2,1,\"Brown\",[]],[3,2,0,\"Brown\",[\"S\"]],[2,1,4,\"Brown\",[]],[0,2,0,\"Green\",[]],[2,3,5,\"Brown\",[]],[2,3,2,\"Brown\",[]],[2,1,1,\"Brown\",[]],[1,1,0,\"Green\",[]],[3,2,5,\"Brown\",[]],[3,2,2,\"Brown\",[]],[1,2,6,\"Brown\",[]],[2,2,4,\"Brown\",[]],[2,2,1,\"Brown\",[]],[1,2,3,\"Brown\",[]],[1,2,0,\"Brown\",[\"S\"]],[2,1,6,\"Brown\",[]],[2,3,4,\"Brown\",[]],[2,1,3,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 9)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[2,1,0,\"Brown\",[\"S\"]],[2,3,1,\"Brown\",[]],[1,2,5,\"Brown\",[]],[3,2,4,\"Brown\",[]],[1,3,0,\"Green\",[]],[2,2,3,\"Brown\",[]],[3,2,1,\"Brown\",[]],[2,3,6,\"Brown\",[]],[2,1,5,\"Brown\",[]],[1,2,2,\"Brown\",[]],[2,2,0,\"Brown\",[\"S\"]],[2,3,3,\"Brown\",[]],[3,2,6,\"Brown\",[]],[2,1,2,\"Brown\",[]],[2,2,5,\"Brown\",[]],[3,2,3,\"Brown\",[]],[2,3,0,\"Brown\",[\"S\"]],[1,2,4,\"Brown\",[]],[2,2,2,\"Brown\",[]],[1,2,1,\"Brown\",[]],[3,2,0,\"Brown\",[\"S\"]],[2,1,4,\"Brown\",[]],[0,2,0,\"Green\",[]],[2,3,5,\"Brown\",[]],[2,3,2,\"Brown\",[]],[2,1,1,\"Brown\",[]],[1,1,0,\"Green\",[]],[3,2,5,\"Brown\",[]],[3,2,2,\"Brown\",[]],[1,2,6,\"Brown\",[]],[2,2,4,\"Brown\",[]],[2,2,1,\"Brown\",[]],[1,2,3,\"Brown\",[]],[1,2,0,\"Brown\",[\"S\"]],[2,1,6,\"Brown\",[]],[2,3,4,\"Brown\",[]],[2,1,3,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-09T18:57:57.504)
  (NBestInd 0)
  (utterance "add green back")
  (targetFormula (: add green back))
  (targetValue
    (string
      [[2,1,0,\"Brown\",[\"S\"]],[2,3,1,\"Brown\",[]],[1,2,5,\"Brown\",[]],[3,2,4,\"Brown\",[]],[1,3,0,\"Green\",[]],[2,2,3,\"Brown\",[]],[3,2,1,\"Brown\",[]],[2,3,6,\"Brown\",[]],[2,1,5,\"Brown\",[]],[1,2,2,\"Brown\",[]],[2,2,0,\"Brown\",[\"S\"]],[2,3,3,\"Brown\",[]],[3,2,6,\"Brown\",[]],[2,1,2,\"Brown\",[]],[3,1,0,\"Green\",[]],[2,2,5,\"Brown\",[]],[3,2,3,\"Brown\",[]],[2,3,0,\"Brown\",[\"S\"]],[1,2,4,\"Brown\",[]],[2,2,2,\"Brown\",[]],[1,2,1,\"Brown\",[]],[3,2,0,\"Brown\",[\"S\"]],[2,1,4,\"Brown\",[]],[0,2,0,\"Green\",[]],[2,3,5,\"Brown\",[]],[2,3,2,\"Brown\",[]],[2,1,1,\"Brown\",[]],[3,3,0,\"Green\",[]],[1,1,0,\"Green\",[]],[3,2,5,\"Brown\",[]],[3,2,2,\"Brown\",[]],[4,2,0,\"Green\",[]],[1,2,6,\"Brown\",[]],[2,2,4,\"Brown\",[]],[2,2,1,\"Brown\",[]],[1,2,3,\"Brown\",[]],[1,2,0,\"Brown\",[\"S\"]],[2,1,6,\"Brown\",[]],[2,3,4,\"Brown\",[]],[2,1,3,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 9)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[2,1,0,\"Brown\",[\"S\"]],[2,3,1,\"Brown\",[]],[1,2,5,\"Brown\",[]],[3,2,4,\"Brown\",[]],[1,3,0,\"Green\",[]],[2,2,3,\"Brown\",[]],[3,2,1,\"Brown\",[]],[2,3,6,\"Brown\",[]],[2,1,5,\"Brown\",[]],[1,2,2,\"Brown\",[]],[2,2,0,\"Brown\",[\"S\"]],[2,3,3,\"Brown\",[]],[3,2,6,\"Brown\",[]],[2,1,2,\"Brown\",[]],[3,1,0,\"Green\",[]],[2,2,5,\"Brown\",[]],[3,2,3,\"Brown\",[]],[2,3,0,\"Brown\",[\"S\"]],[1,2,4,\"Brown\",[]],[2,2,2,\"Brown\",[]],[1,2,1,\"Brown\",[]],[3,2,0,\"Brown\",[\"S\"]],[2,1,4,\"Brown\",[]],[0,2,0,\"Green\",[]],[2,3,5,\"Brown\",[]],[2,3,2,\"Brown\",[]],[2,1,1,\"Brown\",[]],[3,3,0,\"Green\",[]],[1,1,0,\"Green\",[]],[3,2,5,\"Brown\",[]],[3,2,2,\"Brown\",[]],[4,2,0,\"Green\",[]],[1,2,6,\"Brown\",[]],[2,2,4,\"Brown\",[]],[2,2,1,\"Brown\",[]],[1,2,3,\"Brown\",[]],[1,2,0,\"Brown\",[\"S\"]],[2,1,6,\"Brown\",[]],[2,3,4,\"Brown\",[]],[2,1,3,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-09T18:58:04.766)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue
    (string
      [[2,1,0,\"Brown\",[\"S\"]],[2,3,1,\"Brown\",[]],[1,2,5,\"Brown\",[]],[3,2,4,\"Brown\",[]],[1,3,0,\"Green\",[]],[2,2,3,\"Brown\",[]],[3,2,1,\"Brown\",[]],[2,3,6,\"Brown\",[]],[2,1,5,\"Brown\",[]],[1,2,2,\"Brown\",[]],[2,2,0,\"Brown\",[\"S\"]],[2,3,3,\"Brown\",[]],[1,4,0,\"Green\",[]],[3,2,6,\"Brown\",[]],[2,1,2,\"Brown\",[]],[3,1,0,\"Green\",[]],[2,2,5,\"Brown\",[]],[3,2,3,\"Brown\",[]],[2,3,0,\"Brown\",[\"S\"]],[1,2,4,\"Brown\",[]],[2,2,2,\"Brown\",[]],[1,2,1,\"Brown\",[]],[2,4,0,\"Green\",[]],[3,2,0,\"Brown\",[\"S\"]],[2,1,4,\"Brown\",[]],[0,2,0,\"Green\",[]],[2,3,5,\"Brown\",[]],[2,3,2,\"Brown\",[]],[2,1,1,\"Brown\",[]],[3,3,0,\"Green\",[]],[1,1,0,\"Green\",[]],[3,2,5,\"Brown\",[]],[3,2,2,\"Brown\",[]],[4,2,0,\"Green\",[]],[1,2,6,\"Brown\",[]],[2,2,4,\"Brown\",[]],[2,2,1,\"Brown\",[]],[3,4,0,\"Green\",[]],[1,2,3,\"Brown\",[]],[1,2,0,\"Brown\",[\"S\"]],[2,1,6,\"Brown\",[]],[2,3,4,\"Brown\",[]],[2,1,3,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 9)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[2,1,0,\"Brown\",[\"S\"]],[2,3,1,\"Brown\",[]],[1,2,5,\"Brown\",[]],[3,2,4,\"Brown\",[]],[1,3,0,\"Green\",[]],[2,2,3,\"Brown\",[]],[3,2,1,\"Brown\",[]],[2,3,6,\"Brown\",[]],[2,1,5,\"Brown\",[]],[1,2,2,\"Brown\",[]],[2,2,0,\"Brown\",[\"S\"]],[2,3,3,\"Brown\",[]],[1,4,0,\"Green\",[]],[3,2,6,\"Brown\",[]],[2,1,2,\"Brown\",[]],[3,1,0,\"Green\",[]],[2,2,5,\"Brown\",[]],[3,2,3,\"Brown\",[]],[2,3,0,\"Brown\",[\"S\"]],[1,2,4,\"Brown\",[]],[2,2,2,\"Brown\",[]],[1,2,1,\"Brown\",[]],[2,4,0,\"Green\",[]],[3,2,0,\"Brown\",[\"S\"]],[2,1,4,\"Brown\",[]],[0,2,0,\"Green\",[]],[2,3,5,\"Brown\",[]],[2,3,2,\"Brown\",[]],[2,1,1,\"Brown\",[]],[3,3,0,\"Green\",[]],[1,1,0,\"Green\",[]],[3,2,5,\"Brown\",[]],[3,2,2,\"Brown\",[]],[4,2,0,\"Green\",[]],[1,2,6,\"Brown\",[]],[2,2,4,\"Brown\",[]],[2,2,1,\"Brown\",[]],[3,4,0,\"Green\",[]],[1,2,3,\"Brown\",[]],[1,2,0,\"Brown\",[\"S\"]],[2,1,6,\"Brown\",[]],[2,3,4,\"Brown\",[]],[2,1,3,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-09T18:58:07.703)
  (NBestInd 0)
  (utterance "add green right")
  (targetFormula (: add green right))
  (targetValue
    (string
      [[2,1,0,\"Brown\",[\"S\"]],[2,3,1,\"Brown\",[]],[1,2,5,\"Brown\",[]],[3,2,4,\"Brown\",[]],[1,3,0,\"Green\",[]],[2,2,3,\"Brown\",[]],[3,2,1,\"Brown\",[]],[3,0,0,\"Green\",[]],[2,3,6,\"Brown\",[]],[2,1,5,\"Brown\",[]],[1,2,2,\"Brown\",[]],[2,2,0,\"Brown\",[\"S\"]],[2,3,3,\"Brown\",[]],[1,4,0,\"Green\",[]],[3,2,6,\"Brown\",[]],[2,1,2,\"Brown\",[]],[3,1,0,\"Green\",[]],[2,2,5,\"Brown\",[]],[3,2,3,\"Brown\",[]],[2,3,0,\"Brown\",[\"S\"]],[1,2,4,\"Brown\",[]],[2,2,2,\"Brown\",[]],[1,2,1,\"Brown\",[]],[2,4,0,\"Green\",[]],[3,2,0,\"Brown\",[\"S\"]],[2,1,4,\"Brown\",[]],[0,2,0,\"Green\",[]],[1,0,0,\"Green\",[]],[2,3,5,\"Brown\",[]],[2,3,2,\"Brown\",[]],[2,1,1,\"Brown\",[]],[3,3,0,\"Green\",[]],[1,1,0,\"Green\",[]],[3,2,5,\"Brown\",[]],[3,2,2,\"Brown\",[]],[4,2,0,\"Green\",[]],[1,2,6,\"Brown\",[]],[2,2,4,\"Brown\",[]],[2,2,1,\"Brown\",[]],[3,4,0,\"Green\",[]],[2,0,0,\"Green\",[]],[1,2,3,\"Brown\",[]],[1,2,0,\"Brown\",[\"S\"]],[2,1,6,\"Brown\",[]],[2,3,4,\"Brown\",[]],[2,1,3,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 9)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[2,1,0,\"Brown\",[\"S\"]],[2,3,1,\"Brown\",[]],[1,2,5,\"Brown\",[]],[3,2,4,\"Brown\",[]],[1,3,0,\"Green\",[]],[2,2,3,\"Brown\",[]],[3,2,1,\"Brown\",[]],[3,0,0,\"Green\",[]],[2,3,6,\"Brown\",[]],[2,1,5,\"Brown\",[]],[1,2,2,\"Brown\",[]],[2,2,0,\"Brown\",[\"S\"]],[2,3,3,\"Brown\",[]],[1,4,0,\"Green\",[]],[3,2,6,\"Brown\",[]],[2,1,2,\"Brown\",[]],[3,1,0,\"Green\",[]],[2,2,5,\"Brown\",[]],[3,2,3,\"Brown\",[]],[2,3,0,\"Brown\",[\"S\"]],[1,2,4,\"Brown\",[]],[2,2,2,\"Brown\",[]],[1,2,1,\"Brown\",[]],[2,4,0,\"Green\",[]],[3,2,0,\"Brown\",[\"S\"]],[2,1,4,\"Brown\",[]],[0,2,0,\"Green\",[]],[1,0,0,\"Green\",[]],[2,3,5,\"Brown\",[]],[2,3,2,\"Brown\",[]],[2,1,1,\"Brown\",[]],[3,3,0,\"Green\",[]],[1,1,0,\"Green\",[]],[3,2,5,\"Brown\",[]],[3,2,2,\"Brown\",[]],[4,2,0,\"Green\",[]],[1,2,6,\"Brown\",[]],[2,2,4,\"Brown\",[]],[2,2,1,\"Brown\",[]],[3,4,0,\"Green\",[]],[2,0,0,\"Green\",[]],[1,2,3,\"Brown\",[]],[1,2,0,\"Brown\",[\"S\"]],[2,1,6,\"Brown\",[]],[2,3,4,\"Brown\",[]],[2,1,3,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-09T18:58:13.607)
  (NBestInd 0)
  (utterance "select very top of all")
  (targetFormula (:for (call veryx top *) (: select)))
  (targetValue
    (string
      [[2,1,0,\"Brown\",[]],[2,3,1,\"Brown\",[]],[1,2,5,\"Brown\",[]],[3,2,4,\"Brown\",[]],[1,3,0,\"Green\",[]],[2,2,3,\"Brown\",[]],[3,2,1,\"Brown\",[]],[3,0,0,\"Green\",[]],[2,3,6,\"Brown\",[\"S\"]],[2,1,5,\"Brown\",[]],[1,2,2,\"Brown\",[]],[2,2,0,\"Brown\",[]],[2,3,3,\"Brown\",[]],[1,4,0,\"Green\",[]],[3,2,6,\"Brown\",[\"S\"]],[2,1,2,\"Brown\",[]],[3,1,0,\"Green\",[]],[2,2,5,\"Brown\",[]],[3,2,3,\"Brown\",[]],[2,3,0,\"Brown\",[]],[1,2,4,\"Brown\",[]],[2,2,2,\"Brown\",[]],[1,2,1,\"Brown\",[]],[2,4,0,\"Green\",[]],[3,2,0,\"Brown\",[]],[2,1,4,\"Brown\",[]],[0,2,0,\"Green\",[]],[1,0,0,\"Green\",[]],[2,3,5,\"Brown\",[]],[2,3,2,\"Brown\",[]],[2,1,1,\"Brown\",[]],[3,3,0,\"Green\",[]],[1,1,0,\"Green\",[]],[3,2,5,\"Brown\",[]],[3,2,2,\"Brown\",[]],[4,2,0,\"Green\",[]],[1,2,6,\"Brown\",[\"S\"]],[2,2,4,\"Brown\",[]],[2,2,1,\"Brown\",[]],[3,4,0,\"Green\",[]],[2,0,0,\"Green\",[]],[1,2,3,\"Brown\",[]],[1,2,0,\"Brown\",[]],[2,1,6,\"Brown\",[\"S\"]],[2,3,4,\"Brown\",[]],[2,1,3,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 9)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[2,1,0,\"Brown\",[]],[2,3,1,\"Brown\",[]],[1,2,5,\"Brown\",[]],[3,2,4,\"Brown\",[]],[1,3,0,\"Green\",[]],[2,2,3,\"Brown\",[]],[3,2,1,\"Brown\",[]],[3,0,0,\"Green\",[]],[2,3,6,\"Brown\",[\"S\"]],[2,1,5,\"Brown\",[]],[1,2,2,\"Brown\",[]],[2,2,0,\"Brown\",[]],[2,3,3,\"Brown\",[]],[1,4,0,\"Green\",[]],[3,2,6,\"Brown\",[\"S\"]],[2,1,2,\"Brown\",[]],[3,1,0,\"Green\",[]],[2,2,5,\"Brown\",[]],[3,2,3,\"Brown\",[]],[2,3,0,\"Brown\",[]],[1,2,4,\"Brown\",[]],[2,2,2,\"Brown\",[]],[1,2,1,\"Brown\",[]],[2,4,0,\"Green\",[]],[3,2,0,\"Brown\",[]],[2,1,4,\"Brown\",[]],[0,2,0,\"Green\",[]],[1,0,0,\"Green\",[]],[2,3,5,\"Brown\",[]],[2,3,2,\"Brown\",[]],[2,1,1,\"Brown\",[]],[3,3,0,\"Green\",[]],[1,1,0,\"Green\",[]],[3,2,5,\"Brown\",[]],[3,2,2,\"Brown\",[]],[4,2,0,\"Green\",[]],[1,2,6,\"Brown\",[\"S\"]],[2,2,4,\"Brown\",[]],[2,2,1,\"Brown\",[]],[3,4,0,\"Green\",[]],[2,0,0,\"Green\",[]],[1,2,3,\"Brown\",[]],[1,2,0,\"Brown\",[]],[2,1,6,\"Brown\",[\"S\"]],[2,3,4,\"Brown\",[]],[2,1,3,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-09T18:58:18.711)
  (NBestInd 0)
  (utterance "repeat 3 [ add green ]")
  (targetFormula (:loop (number 3) (: add green top)))
  (targetValue
    (string
      [[2,1,0,\"Brown\",[]],[1,2,8,\"Green\",[]],[2,3,1,\"Brown\",[]],[3,2,4,\"Brown\",[]],[1,3,0,\"Green\",[]],[2,2,3,\"Brown\",[]],[2,3,6,\"Brown\",[\"S\"]],[2,1,5,\"Brown\",[]],[1,2,2,\"Brown\",[]],[3,2,9,\"Green\",[]],[3,1,0,\"Green\",[]],[3,2,3,\"Brown\",[]],[2,3,0,\"Brown\",[]],[1,2,7,\"Green\",[]],[2,2,2,\"Brown\",[]],[1,2,1,\"Brown\",[]],[2,1,4,\"Brown\",[]],[0,2,0,\"Green\",[]],[1,0,0,\"Green\",[]],[2,3,5,\"Brown\",[]],[3,3,0,\"Green\",[]],[3,2,8,\"Green\",[]],[3,2,2,\"Brown\",[]],[2,1,9,\"Green\",[]],[1,2,6,\"Brown\",[\"S\"]],[2,2,1,\"Brown\",[]],[2,0,0,\"Green\",[]],[1,2,0,\"Brown\",[]],[3,2,7,\"Green\",[]],[2,3,4,\"Brown\",[]],[2,1,3,\"Brown\",[]],[1,2,5,\"Brown\",[]],[2,1,8,\"Green\",[]],[3,2,1,\"Brown\",[]],[3,0,0,\"Green\",[]],[2,3,9,\"Green\",[]],[2,2,0,\"Brown\",[]],[2,3,3,\"Brown\",[]],[1,4,0,\"Green\",[]],[3,2,6,\"Brown\",[\"S\"]],[2,1,2,\"Brown\",[]],[2,2,5,\"Brown\",[]],[1,2,4,\"Brown\",[]],[2,4,0,\"Green\",[]],[3,2,0,\"Brown\",[]],[2,3,8,\"Green\",[]],[2,1,7,\"Green\",[]],[2,3,2,\"Brown\",[]],[2,1,1,\"Brown\",[]],[1,2,9,\"Green\",[]],[1,1,0,\"Green\",[]],[3,2,5,\"Brown\",[]],[4,2,0,\"Green\",[]],[2,2,4,\"Brown\",[]],[3,4,0,\"Green\",[]],[2,3,7,\"Green\",[]],[1,2,3,\"Brown\",[]],[2,1,6,\"Brown\",[\"S\"]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 9)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[2,1,0,\"Brown\",[]],[1,2,8,\"Green\",[]],[2,3,1,\"Brown\",[]],[3,2,4,\"Brown\",[]],[1,3,0,\"Green\",[]],[2,2,3,\"Brown\",[]],[2,3,6,\"Brown\",[\"S\"]],[2,1,5,\"Brown\",[]],[1,2,2,\"Brown\",[]],[3,2,9,\"Green\",[]],[3,1,0,\"Green\",[]],[3,2,3,\"Brown\",[]],[2,3,0,\"Brown\",[]],[1,2,7,\"Green\",[]],[2,2,2,\"Brown\",[]],[1,2,1,\"Brown\",[]],[2,1,4,\"Brown\",[]],[0,2,0,\"Green\",[]],[1,0,0,\"Green\",[]],[2,3,5,\"Brown\",[]],[3,3,0,\"Green\",[]],[3,2,8,\"Green\",[]],[3,2,2,\"Brown\",[]],[2,1,9,\"Green\",[]],[1,2,6,\"Brown\",[\"S\"]],[2,2,1,\"Brown\",[]],[2,0,0,\"Green\",[]],[1,2,0,\"Brown\",[]],[3,2,7,\"Green\",[]],[2,3,4,\"Brown\",[]],[2,1,3,\"Brown\",[]],[1,2,5,\"Brown\",[]],[2,1,8,\"Green\",[]],[3,2,1,\"Brown\",[]],[3,0,0,\"Green\",[]],[2,3,9,\"Green\",[]],[2,2,0,\"Brown\",[]],[2,3,3,\"Brown\",[]],[1,4,0,\"Green\",[]],[3,2,6,\"Brown\",[\"S\"]],[2,1,2,\"Brown\",[]],[2,2,5,\"Brown\",[]],[1,2,4,\"Brown\",[]],[2,4,0,\"Green\",[]],[3,2,0,\"Brown\",[]],[2,3,8,\"Green\",[]],[2,1,7,\"Green\",[]],[2,3,2,\"Brown\",[]],[2,1,1,\"Brown\",[]],[1,2,9,\"Green\",[]],[1,1,0,\"Green\",[]],[3,2,5,\"Brown\",[]],[4,2,0,\"Green\",[]],[2,2,4,\"Brown\",[]],[3,4,0,\"Green\",[]],[2,3,7,\"Green\",[]],[1,2,3,\"Brown\",[]],[2,1,6,\"Brown\",[\"S\"]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-09T18:58:22.191)
  (NBestInd 0)
  (utterance "select has color green")
  (targetFormula (:for (color green) (: select)))
  (targetValue
    (string
      [[2,1,0,\"Brown\",[]],[1,2,8,\"Green\",[\"S\"]],[2,3,1,\"Brown\",[]],[3,2,4,\"Brown\",[]],[1,3,0,\"Green\",[\"S\"]],[2,2,3,\"Brown\",[]],[2,3,6,\"Brown\",[]],[2,1,5,\"Brown\",[]],[1,2,2,\"Brown\",[]],[3,2,9,\"Green\",[\"S\"]],[3,1,0,\"Green\",[\"S\"]],[3,2,3,\"Brown\",[]],[2,3,0,\"Brown\",[]],[1,2,7,\"Green\",[\"S\"]],[2,2,2,\"Brown\",[]],[1,2,1,\"Brown\",[]],[2,1,4,\"Brown\",[]],[0,2,0,\"Green\",[\"S\"]],[1,0,0,\"Green\",[\"S\"]],[2,3,5,\"Brown\",[]],[3,3,0,\"Green\",[\"S\"]],[3,2,8,\"Green\",[\"S\"]],[3,2,2,\"Brown\",[]],[2,1,9,\"Green\",[\"S\"]],[1,2,6,\"Brown\",[]],[2,2,1,\"Brown\",[]],[2,0,0,\"Green\",[\"S\"]],[1,2,0,\"Brown\",[]],[3,2,7,\"Green\",[\"S\"]],[2,3,4,\"Brown\",[]],[2,1,3,\"Brown\",[]],[1,2,5,\"Brown\",[]],[2,1,8,\"Green\",[\"S\"]],[3,2,1,\"Brown\",[]],[3,0,0,\"Green\",[\"S\"]],[2,3,9,\"Green\",[\"S\"]],[2,2,0,\"Brown\",[]],[2,3,3,\"Brown\",[]],[1,4,0,\"Green\",[\"S\"]],[3,2,6,\"Brown\",[]],[2,1,2,\"Brown\",[]],[2,2,5,\"Brown\",[]],[1,2,4,\"Brown\",[]],[2,4,0,\"Green\",[\"S\"]],[3,2,0,\"Brown\",[]],[2,3,8,\"Green\",[\"S\"]],[2,1,7,\"Green\",[\"S\"]],[2,3,2,\"Brown\",[]],[2,1,1,\"Brown\",[]],[1,2,9,\"Green\",[\"S\"]],[1,1,0,\"Green\",[\"S\"]],[3,2,5,\"Brown\",[]],[4,2,0,\"Green\",[\"S\"]],[2,2,4,\"Brown\",[]],[3,4,0,\"Green\",[\"S\"]],[2,3,7,\"Green\",[\"S\"]],[1,2,3,\"Brown\",[]],[2,1,6,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 9)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[2,1,0,\"Brown\",[]],[1,2,8,\"Green\",[\"S\"]],[2,3,1,\"Brown\",[]],[3,2,4,\"Brown\",[]],[1,3,0,\"Green\",[\"S\"]],[2,2,3,\"Brown\",[]],[2,3,6,\"Brown\",[]],[2,1,5,\"Brown\",[]],[1,2,2,\"Brown\",[]],[3,2,9,\"Green\",[\"S\"]],[3,1,0,\"Green\",[\"S\"]],[3,2,3,\"Brown\",[]],[2,3,0,\"Brown\",[]],[1,2,7,\"Green\",[\"S\"]],[2,2,2,\"Brown\",[]],[1,2,1,\"Brown\",[]],[2,1,4,\"Brown\",[]],[0,2,0,\"Green\",[\"S\"]],[1,0,0,\"Green\",[\"S\"]],[2,3,5,\"Brown\",[]],[3,3,0,\"Green\",[\"S\"]],[3,2,8,\"Green\",[\"S\"]],[3,2,2,\"Brown\",[]],[2,1,9,\"Green\",[\"S\"]],[1,2,6,\"Brown\",[]],[2,2,1,\"Brown\",[]],[2,0,0,\"Green\",[\"S\"]],[1,2,0,\"Brown\",[]],[3,2,7,\"Green\",[\"S\"]],[2,3,4,\"Brown\",[]],[2,1,3,\"Brown\",[]],[1,2,5,\"Brown\",[]],[2,1,8,\"Green\",[\"S\"]],[3,2,1,\"Brown\",[]],[3,0,0,\"Green\",[\"S\"]],[2,3,9,\"Green\",[\"S\"]],[2,2,0,\"Brown\",[]],[2,3,3,\"Brown\",[]],[1,4,0,\"Green\",[\"S\"]],[3,2,6,\"Brown\",[]],[2,1,2,\"Brown\",[]],[2,2,5,\"Brown\",[]],[1,2,4,\"Brown\",[]],[2,4,0,\"Green\",[\"S\"]],[3,2,0,\"Brown\",[]],[2,3,8,\"Green\",[\"S\"]],[2,1,7,\"Green\",[\"S\"]],[2,3,2,\"Brown\",[]],[2,1,1,\"Brown\",[]],[1,2,9,\"Green\",[\"S\"]],[1,1,0,\"Green\",[\"S\"]],[3,2,5,\"Brown\",[]],[4,2,0,\"Green\",[\"S\"]],[2,2,4,\"Brown\",[]],[3,4,0,\"Green\",[\"S\"]],[2,3,7,\"Green\",[\"S\"]],[1,2,3,\"Brown\",[]],[2,1,6,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-09T18:58:26.622)
  (NBestInd 0)
  (utterance "select very left")
  (targetFormula (:for (call veryx left) (: select)))
  (targetValue
    (string
      [[2,1,0,\"Brown\",[]],[1,2,8,\"Green\",[]],[2,3,1,\"Brown\",[]],[3,2,4,\"Brown\",[]],[1,3,0,\"Green\",[]],[2,2,3,\"Brown\",[]],[2,3,6,\"Brown\",[]],[2,1,5,\"Brown\",[]],[1,2,2,\"Brown\",[]],[3,2,9,\"Green\",[]],[3,1,0,\"Green\",[]],[3,2,3,\"Brown\",[]],[2,3,0,\"Brown\",[]],[1,2,7,\"Green\",[]],[2,2,2,\"Brown\",[]],[1,2,1,\"Brown\",[]],[2,1,4,\"Brown\",[]],[0,2,0,\"Green\",[]],[1,0,0,\"Green\",[]],[2,3,5,\"Brown\",[]],[3,3,0,\"Green\",[]],[3,2,8,\"Green\",[]],[3,2,2,\"Brown\",[]],[2,1,9,\"Green\",[]],[1,2,6,\"Brown\",[]],[2,2,1,\"Brown\",[]],[2,0,0,\"Green\",[]],[1,2,0,\"Brown\",[]],[3,2,7,\"Green\",[]],[2,3,4,\"Brown\",[]],[2,1,3,\"Brown\",[]],[1,2,5,\"Brown\",[]],[2,1,8,\"Green\",[]],[3,2,1,\"Brown\",[]],[3,0,0,\"Green\",[]],[2,3,9,\"Green\",[]],[2,2,0,\"Brown\",[]],[2,3,3,\"Brown\",[]],[1,4,0,\"Green\",[\"S\"]],[3,2,6,\"Brown\",[]],[2,1,2,\"Brown\",[]],[2,2,5,\"Brown\",[]],[1,2,4,\"Brown\",[]],[2,4,0,\"Green\",[\"S\"]],[3,2,0,\"Brown\",[]],[2,3,8,\"Green\",[]],[2,1,7,\"Green\",[]],[2,3,2,\"Brown\",[]],[2,1,1,\"Brown\",[]],[1,2,9,\"Green\",[]],[1,1,0,\"Green\",[]],[3,2,5,\"Brown\",[]],[4,2,0,\"Green\",[]],[2,2,4,\"Brown\",[]],[3,4,0,\"Green\",[\"S\"]],[2,3,7,\"Green\",[]],[1,2,3,\"Brown\",[]],[2,1,6,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 9)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[2,1,0,\"Brown\",[]],[1,2,8,\"Green\",[]],[2,3,1,\"Brown\",[]],[3,2,4,\"Brown\",[]],[1,3,0,\"Green\",[]],[2,2,3,\"Brown\",[]],[2,3,6,\"Brown\",[]],[2,1,5,\"Brown\",[]],[1,2,2,\"Brown\",[]],[3,2,9,\"Green\",[]],[3,1,0,\"Green\",[]],[3,2,3,\"Brown\",[]],[2,3,0,\"Brown\",[]],[1,2,7,\"Green\",[]],[2,2,2,\"Brown\",[]],[1,2,1,\"Brown\",[]],[2,1,4,\"Brown\",[]],[0,2,0,\"Green\",[]],[1,0,0,\"Green\",[]],[2,3,5,\"Brown\",[]],[3,3,0,\"Green\",[]],[3,2,8,\"Green\",[]],[3,2,2,\"Brown\",[]],[2,1,9,\"Green\",[]],[1,2,6,\"Brown\",[]],[2,2,1,\"Brown\",[]],[2,0,0,\"Green\",[]],[1,2,0,\"Brown\",[]],[3,2,7,\"Green\",[]],[2,3,4,\"Brown\",[]],[2,1,3,\"Brown\",[]],[1,2,5,\"Brown\",[]],[2,1,8,\"Green\",[]],[3,2,1,\"Brown\",[]],[3,0,0,\"Green\",[]],[2,3,9,\"Green\",[]],[2,2,0,\"Brown\",[]],[2,3,3,\"Brown\",[]],[1,4,0,\"Green\",[\"S\"]],[3,2,6,\"Brown\",[]],[2,1,2,\"Brown\",[]],[2,2,5,\"Brown\",[]],[1,2,4,\"Brown\",[]],[2,4,0,\"Green\",[\"S\"]],[3,2,0,\"Brown\",[]],[2,3,8,\"Green\",[]],[2,1,7,\"Green\",[]],[2,3,2,\"Brown\",[]],[2,1,1,\"Brown\",[]],[1,2,9,\"Green\",[]],[1,1,0,\"Green\",[]],[3,2,5,\"Brown\",[]],[4,2,0,\"Green\",[]],[2,2,4,\"Brown\",[]],[3,4,0,\"Green\",[\"S\"]],[2,3,7,\"Green\",[]],[1,2,3,\"Brown\",[]],[2,1,6,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-09T18:58:31.958)
  (NBestInd 0)
  (utterance "for very top of this [ remove ]")
  (targetFormula (:for (call veryx top this) (: remove)))
  (targetValue
    (string
      [[2,1,0,\"Brown\",[]],[1,2,8,\"Green\",[]],[2,3,1,\"Brown\",[]],[3,2,4,\"Brown\",[]],[1,3,0,\"Green\",[]],[2,2,3,\"Brown\",[]],[2,3,6,\"Brown\",[]],[2,1,5,\"Brown\",[]],[1,2,2,\"Brown\",[]],[3,2,9,\"Green\",[]],[3,1,0,\"Green\",[]],[3,2,3,\"Brown\",[]],[2,3,0,\"Brown\",[]],[1,2,7,\"Green\",[]],[2,2,2,\"Brown\",[]],[1,2,1,\"Brown\",[]],[2,1,4,\"Brown\",[]],[0,2,0,\"Green\",[]],[1,0,0,\"Green\",[]],[2,3,5,\"Brown\",[]],[3,3,0,\"Green\",[]],[3,2,8,\"Green\",[]],[3,2,2,\"Brown\",[]],[2,1,9,\"Green\",[]],[1,2,6,\"Brown\",[]],[2,2,1,\"Brown\",[]],[2,0,0,\"Green\",[]],[1,2,0,\"Brown\",[]],[3,2,7,\"Green\",[]],[2,3,4,\"Brown\",[]],[2,1,3,\"Brown\",[]],[1,2,5,\"Brown\",[]],[2,1,8,\"Green\",[]],[3,2,1,\"Brown\",[]],[3,0,0,\"Green\",[]],[2,3,9,\"Green\",[]],[2,2,0,\"Brown\",[]],[2,3,3,\"Brown\",[]],[3,2,6,\"Brown\",[]],[2,1,2,\"Brown\",[]],[2,2,5,\"Brown\",[]],[1,2,4,\"Brown\",[]],[3,2,0,\"Brown\",[]],[2,3,8,\"Green\",[]],[2,1,7,\"Green\",[]],[2,3,2,\"Brown\",[]],[2,1,1,\"Brown\",[]],[1,2,9,\"Green\",[]],[1,1,0,\"Green\",[]],[3,2,5,\"Brown\",[]],[4,2,0,\"Green\",[]],[2,2,4,\"Brown\",[]],[2,3,7,\"Green\",[]],[1,2,3,\"Brown\",[]],[2,1,6,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 9)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[2,1,0,\"Brown\",[]],[1,2,8,\"Green\",[]],[2,3,1,\"Brown\",[]],[3,2,4,\"Brown\",[]],[1,3,0,\"Green\",[]],[2,2,3,\"Brown\",[]],[2,3,6,\"Brown\",[]],[2,1,5,\"Brown\",[]],[1,2,2,\"Brown\",[]],[3,2,9,\"Green\",[]],[3,1,0,\"Green\",[]],[3,2,3,\"Brown\",[]],[2,3,0,\"Brown\",[]],[1,2,7,\"Green\",[]],[2,2,2,\"Brown\",[]],[1,2,1,\"Brown\",[]],[2,1,4,\"Brown\",[]],[0,2,0,\"Green\",[]],[1,0,0,\"Green\",[]],[2,3,5,\"Brown\",[]],[3,3,0,\"Green\",[]],[3,2,8,\"Green\",[]],[3,2,2,\"Brown\",[]],[2,1,9,\"Green\",[]],[1,2,6,\"Brown\",[]],[2,2,1,\"Brown\",[]],[2,0,0,\"Green\",[]],[1,2,0,\"Brown\",[]],[3,2,7,\"Green\",[]],[2,3,4,\"Brown\",[]],[2,1,3,\"Brown\",[]],[1,2,5,\"Brown\",[]],[2,1,8,\"Green\",[]],[3,2,1,\"Brown\",[]],[3,0,0,\"Green\",[]],[2,3,9,\"Green\",[]],[2,2,0,\"Brown\",[]],[2,3,3,\"Brown\",[]],[3,2,6,\"Brown\",[]],[2,1,2,\"Brown\",[]],[2,2,5,\"Brown\",[]],[1,2,4,\"Brown\",[]],[3,2,0,\"Brown\",[]],[2,3,8,\"Green\",[]],[2,1,7,\"Green\",[]],[2,3,2,\"Brown\",[]],[2,1,1,\"Brown\",[]],[1,2,9,\"Green\",[]],[1,1,0,\"Green\",[]],[3,2,5,\"Brown\",[]],[4,2,0,\"Green\",[]],[2,2,4,\"Brown\",[]],[2,3,7,\"Green\",[]],[1,2,3,\"Brown\",[]],[2,1,6,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-09T18:58:37.758)
  (NBestInd 0)
  (utterance "select very right of has color green")
  (targetFormula (:for (call veryx right (color green)) (: select)))
  (targetValue
    (string
      [[2,1,0,\"Brown\",[]],[1,2,8,\"Green\",[]],[2,3,1,\"Brown\",[]],[3,2,4,\"Brown\",[]],[1,3,0,\"Green\",[]],[2,2,3,\"Brown\",[]],[2,3,6,\"Brown\",[]],[2,1,5,\"Brown\",[]],[1,2,2,\"Brown\",[]],[3,2,9,\"Green\",[]],[3,1,0,\"Green\",[]],[3,2,3,\"Brown\",[]],[2,3,0,\"Brown\",[]],[1,2,7,\"Green\",[]],[2,2,2,\"Brown\",[]],[1,2,1,\"Brown\",[]],[2,1,4,\"Brown\",[]],[0,2,0,\"Green\",[]],[1,0,0,\"Green\",[\"S\"]],[2,3,5,\"Brown\",[]],[3,3,0,\"Green\",[]],[3,2,8,\"Green\",[]],[3,2,2,\"Brown\",[]],[2,1,9,\"Green\",[]],[1,2,6,\"Brown\",[]],[2,2,1,\"Brown\",[]],[2,0,0,\"Green\",[\"S\"]],[1,2,0,\"Brown\",[]],[3,2,7,\"Green\",[]],[2,3,4,\"Brown\",[]],[2,1,3,\"Brown\",[]],[1,2,5,\"Brown\",[]],[2,1,8,\"Green\",[]],[3,2,1,\"Brown\",[]],[3,0,0,\"Green\",[\"S\"]],[2,3,9,\"Green\",[]],[2,2,0,\"Brown\",[]],[2,3,3,\"Brown\",[]],[3,2,6,\"Brown\",[]],[2,1,2,\"Brown\",[]],[2,2,5,\"Brown\",[]],[1,2,4,\"Brown\",[]],[3,2,0,\"Brown\",[]],[2,3,8,\"Green\",[]],[2,1,7,\"Green\",[]],[2,3,2,\"Brown\",[]],[2,1,1,\"Brown\",[]],[1,2,9,\"Green\",[]],[1,1,0,\"Green\",[]],[3,2,5,\"Brown\",[]],[4,2,0,\"Green\",[]],[2,2,4,\"Brown\",[]],[2,3,7,\"Green\",[]],[1,2,3,\"Brown\",[]],[2,1,6,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 9)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[2,1,0,\"Brown\",[]],[1,2,8,\"Green\",[]],[2,3,1,\"Brown\",[]],[3,2,4,\"Brown\",[]],[1,3,0,\"Green\",[]],[2,2,3,\"Brown\",[]],[2,3,6,\"Brown\",[]],[2,1,5,\"Brown\",[]],[1,2,2,\"Brown\",[]],[3,2,9,\"Green\",[]],[3,1,0,\"Green\",[]],[3,2,3,\"Brown\",[]],[2,3,0,\"Brown\",[]],[1,2,7,\"Green\",[]],[2,2,2,\"Brown\",[]],[1,2,1,\"Brown\",[]],[2,1,4,\"Brown\",[]],[0,2,0,\"Green\",[]],[1,0,0,\"Green\",[\"S\"]],[2,3,5,\"Brown\",[]],[3,3,0,\"Green\",[]],[3,2,8,\"Green\",[]],[3,2,2,\"Brown\",[]],[2,1,9,\"Green\",[]],[1,2,6,\"Brown\",[]],[2,2,1,\"Brown\",[]],[2,0,0,\"Green\",[\"S\"]],[1,2,0,\"Brown\",[]],[3,2,7,\"Green\",[]],[2,3,4,\"Brown\",[]],[2,1,3,\"Brown\",[]],[1,2,5,\"Brown\",[]],[2,1,8,\"Green\",[]],[3,2,1,\"Brown\",[]],[3,0,0,\"Green\",[\"S\"]],[2,3,9,\"Green\",[]],[2,2,0,\"Brown\",[]],[2,3,3,\"Brown\",[]],[3,2,6,\"Brown\",[]],[2,1,2,\"Brown\",[]],[2,2,5,\"Brown\",[]],[1,2,4,\"Brown\",[]],[3,2,0,\"Brown\",[]],[2,3,8,\"Green\",[]],[2,1,7,\"Green\",[]],[2,3,2,\"Brown\",[]],[2,1,1,\"Brown\",[]],[1,2,9,\"Green\",[]],[1,1,0,\"Green\",[]],[3,2,5,\"Brown\",[]],[4,2,0,\"Green\",[]],[2,2,4,\"Brown\",[]],[2,3,7,\"Green\",[]],[1,2,3,\"Brown\",[]],[2,1,6,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-09T18:58:43.037)
  (NBestInd 0)
  (utterance "for very top of this [ remove ]")
  (targetFormula (:for (call veryx top this) (: remove)))
  (targetValue
    (string
      [[2,1,0,\"Brown\",[]],[1,2,8,\"Green\",[]],[2,3,1,\"Brown\",[]],[3,2,4,\"Brown\",[]],[1,3,0,\"Green\",[]],[2,2,3,\"Brown\",[]],[2,3,6,\"Brown\",[]],[2,1,5,\"Brown\",[]],[1,2,2,\"Brown\",[]],[3,2,9,\"Green\",[]],[3,1,0,\"Green\",[]],[3,2,3,\"Brown\",[]],[2,3,0,\"Brown\",[]],[1,2,7,\"Green\",[]],[2,2,2,\"Brown\",[]],[1,2,1,\"Brown\",[]],[2,1,4,\"Brown\",[]],[0,2,0,\"Green\",[]],[2,3,5,\"Brown\",[]],[3,3,0,\"Green\",[]],[3,2,8,\"Green\",[]],[3,2,2,\"Brown\",[]],[2,1,9,\"Green\",[]],[1,2,6,\"Brown\",[]],[2,2,1,\"Brown\",[]],[1,2,0,\"Brown\",[]],[3,2,7,\"Green\",[]],[2,3,4,\"Brown\",[]],[2,1,3,\"Brown\",[]],[1,2,5,\"Brown\",[]],[2,1,8,\"Green\",[]],[3,2,1,\"Brown\",[]],[2,3,9,\"Green\",[]],[2,2,0,\"Brown\",[]],[2,3,3,\"Brown\",[]],[3,2,6,\"Brown\",[]],[2,1,2,\"Brown\",[]],[2,2,5,\"Brown\",[]],[1,2,4,\"Brown\",[]],[3,2,0,\"Brown\",[]],[2,3,8,\"Green\",[]],[2,1,7,\"Green\",[]],[2,3,2,\"Brown\",[]],[2,1,1,\"Brown\",[]],[1,2,9,\"Green\",[]],[1,1,0,\"Green\",[]],[3,2,5,\"Brown\",[]],[4,2,0,\"Green\",[]],[2,2,4,\"Brown\",[]],[2,3,7,\"Green\",[]],[1,2,3,\"Brown\",[]],[2,1,6,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 9)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[2,1,0,\"Brown\",[]],[1,2,8,\"Green\",[]],[2,3,1,\"Brown\",[]],[3,2,4,\"Brown\",[]],[1,3,0,\"Green\",[]],[2,2,3,\"Brown\",[]],[2,3,6,\"Brown\",[]],[2,1,5,\"Brown\",[]],[1,2,2,\"Brown\",[]],[3,2,9,\"Green\",[]],[3,1,0,\"Green\",[]],[3,2,3,\"Brown\",[]],[2,3,0,\"Brown\",[]],[1,2,7,\"Green\",[]],[2,2,2,\"Brown\",[]],[1,2,1,\"Brown\",[]],[2,1,4,\"Brown\",[]],[0,2,0,\"Green\",[]],[2,3,5,\"Brown\",[]],[3,3,0,\"Green\",[]],[3,2,8,\"Green\",[]],[3,2,2,\"Brown\",[]],[2,1,9,\"Green\",[]],[1,2,6,\"Brown\",[]],[2,2,1,\"Brown\",[]],[1,2,0,\"Brown\",[]],[3,2,7,\"Green\",[]],[2,3,4,\"Brown\",[]],[2,1,3,\"Brown\",[]],[1,2,5,\"Brown\",[]],[2,1,8,\"Green\",[]],[3,2,1,\"Brown\",[]],[2,3,9,\"Green\",[]],[2,2,0,\"Brown\",[]],[2,3,3,\"Brown\",[]],[3,2,6,\"Brown\",[]],[2,1,2,\"Brown\",[]],[2,2,5,\"Brown\",[]],[1,2,4,\"Brown\",[]],[3,2,0,\"Brown\",[]],[2,3,8,\"Green\",[]],[2,1,7,\"Green\",[]],[2,3,2,\"Brown\",[]],[2,1,1,\"Brown\",[]],[1,2,9,\"Green\",[]],[1,1,0,\"Green\",[]],[3,2,5,\"Brown\",[]],[4,2,0,\"Green\",[]],[2,2,4,\"Brown\",[]],[2,3,7,\"Green\",[]],[1,2,3,\"Brown\",[]],[2,1,6,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-09T18:58:46.692)
  (NBestInd 0)
  (utterance "select nothing")
  (targetFormula (:for nothing (: select)))
  (targetValue
    (string
      [[2,1,0,\"Brown\",[]],[1,2,8,\"Green\",[]],[2,3,1,\"Brown\",[]],[3,2,4,\"Brown\",[]],[1,3,0,\"Green\",[]],[2,2,3,\"Brown\",[]],[2,3,6,\"Brown\",[]],[2,1,5,\"Brown\",[]],[1,2,2,\"Brown\",[]],[3,2,9,\"Green\",[]],[3,1,0,\"Green\",[]],[3,2,3,\"Brown\",[]],[2,3,0,\"Brown\",[]],[1,2,7,\"Green\",[]],[2,2,2,\"Brown\",[]],[1,2,1,\"Brown\",[]],[2,1,4,\"Brown\",[]],[0,2,0,\"Green\",[]],[2,3,5,\"Brown\",[]],[3,3,0,\"Green\",[]],[3,2,8,\"Green\",[]],[3,2,2,\"Brown\",[]],[2,1,9,\"Green\",[]],[1,2,6,\"Brown\",[]],[2,2,1,\"Brown\",[]],[1,2,0,\"Brown\",[]],[3,2,7,\"Green\",[]],[2,3,4,\"Brown\",[]],[2,1,3,\"Brown\",[]],[1,2,5,\"Brown\",[]],[2,1,8,\"Green\",[]],[3,2,1,\"Brown\",[]],[2,3,9,\"Green\",[]],[2,2,0,\"Brown\",[]],[2,3,3,\"Brown\",[]],[3,2,6,\"Brown\",[]],[2,1,2,\"Brown\",[]],[2,2,5,\"Brown\",[]],[1,2,4,\"Brown\",[]],[3,2,0,\"Brown\",[]],[2,3,8,\"Green\",[]],[2,1,7,\"Green\",[]],[2,3,2,\"Brown\",[]],[2,1,1,\"Brown\",[]],[1,2,9,\"Green\",[]],[1,1,0,\"Green\",[]],[3,2,5,\"Brown\",[]],[4,2,0,\"Green\",[]],[2,2,4,\"Brown\",[]],[2,3,7,\"Green\",[]],[1,2,3,\"Brown\",[]],[2,1,6,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 9)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[2,1,0,\"Brown\",[]],[1,2,8,\"Green\",[]],[2,3,1,\"Brown\",[]],[3,2,4,\"Brown\",[]],[1,3,0,\"Green\",[]],[2,2,3,\"Brown\",[]],[2,3,6,\"Brown\",[]],[2,1,5,\"Brown\",[]],[1,2,2,\"Brown\",[]],[3,2,9,\"Green\",[]],[3,1,0,\"Green\",[]],[3,2,3,\"Brown\",[]],[2,3,0,\"Brown\",[]],[1,2,7,\"Green\",[]],[2,2,2,\"Brown\",[]],[1,2,1,\"Brown\",[]],[2,1,4,\"Brown\",[]],[0,2,0,\"Green\",[]],[2,3,5,\"Brown\",[]],[3,3,0,\"Green\",[]],[3,2,8,\"Green\",[]],[3,2,2,\"Brown\",[]],[2,1,9,\"Green\",[]],[1,2,6,\"Brown\",[]],[2,2,1,\"Brown\",[]],[1,2,0,\"Brown\",[]],[3,2,7,\"Green\",[]],[2,3,4,\"Brown\",[]],[2,1,3,\"Brown\",[]],[1,2,5,\"Brown\",[]],[2,1,8,\"Green\",[]],[3,2,1,\"Brown\",[]],[2,3,9,\"Green\",[]],[2,2,0,\"Brown\",[]],[2,3,3,\"Brown\",[]],[3,2,6,\"Brown\",[]],[2,1,2,\"Brown\",[]],[2,2,5,\"Brown\",[]],[1,2,4,\"Brown\",[]],[3,2,0,\"Brown\",[]],[2,3,8,\"Green\",[]],[2,1,7,\"Green\",[]],[2,3,2,\"Brown\",[]],[2,1,1,\"Brown\",[]],[1,2,9,\"Green\",[]],[1,1,0,\"Green\",[]],[3,2,5,\"Brown\",[]],[4,2,0,\"Green\",[]],[2,2,4,\"Brown\",[]],[2,3,7,\"Green\",[]],[1,2,3,\"Brown\",[]],[2,1,6,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-09T18:58:51.164)
  (NBestInd 0)
  (utterance "select very bot of has color green")
  (targetFormula (:for (call veryx bot (color green)) (: select)))
  (targetValue
    (string
      [[2,1,0,\"Brown\",[]],[1,2,8,\"Green\",[]],[2,3,1,\"Brown\",[]],[3,2,4,\"Brown\",[]],[1,3,0,\"Green\",[\"S\"]],[2,2,3,\"Brown\",[]],[2,3,6,\"Brown\",[]],[2,1,5,\"Brown\",[]],[1,2,2,\"Brown\",[]],[3,2,9,\"Green\",[]],[3,1,0,\"Green\",[\"S\"]],[3,2,3,\"Brown\",[]],[2,3,0,\"Brown\",[]],[1,2,7,\"Green\",[]],[2,2,2,\"Brown\",[]],[1,2,1,\"Brown\",[]],[2,1,4,\"Brown\",[]],[0,2,0,\"Green\",[\"S\"]],[2,3,5,\"Brown\",[]],[3,3,0,\"Green\",[\"S\"]],[3,2,8,\"Green\",[]],[3,2,2,\"Brown\",[]],[2,1,9,\"Green\",[]],[1,2,6,\"Brown\",[]],[2,2,1,\"Brown\",[]],[1,2,0,\"Brown\",[]],[3,2,7,\"Green\",[]],[2,3,4,\"Brown\",[]],[2,1,3,\"Brown\",[]],[1,2,5,\"Brown\",[]],[2,1,8,\"Green\",[]],[3,2,1,\"Brown\",[]],[2,3,9,\"Green\",[]],[2,2,0,\"Brown\",[]],[2,3,3,\"Brown\",[]],[3,2,6,\"Brown\",[]],[2,1,2,\"Brown\",[]],[2,2,5,\"Brown\",[]],[1,2,4,\"Brown\",[]],[3,2,0,\"Brown\",[]],[2,3,8,\"Green\",[]],[2,1,7,\"Green\",[]],[2,3,2,\"Brown\",[]],[2,1,1,\"Brown\",[]],[1,2,9,\"Green\",[]],[1,1,0,\"Green\",[\"S\"]],[3,2,5,\"Brown\",[]],[4,2,0,\"Green\",[\"S\"]],[2,2,4,\"Brown\",[]],[2,3,7,\"Green\",[]],[1,2,3,\"Brown\",[]],[2,1,6,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 9)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[2,1,0,\"Brown\",[]],[1,2,8,\"Green\",[]],[2,3,1,\"Brown\",[]],[3,2,4,\"Brown\",[]],[1,3,0,\"Green\",[\"S\"]],[2,2,3,\"Brown\",[]],[2,3,6,\"Brown\",[]],[2,1,5,\"Brown\",[]],[1,2,2,\"Brown\",[]],[3,2,9,\"Green\",[]],[3,1,0,\"Green\",[\"S\"]],[3,2,3,\"Brown\",[]],[2,3,0,\"Brown\",[]],[1,2,7,\"Green\",[]],[2,2,2,\"Brown\",[]],[1,2,1,\"Brown\",[]],[2,1,4,\"Brown\",[]],[0,2,0,\"Green\",[\"S\"]],[2,3,5,\"Brown\",[]],[3,3,0,\"Green\",[\"S\"]],[3,2,8,\"Green\",[]],[3,2,2,\"Brown\",[]],[2,1,9,\"Green\",[]],[1,2,6,\"Brown\",[]],[2,2,1,\"Brown\",[]],[1,2,0,\"Brown\",[]],[3,2,7,\"Green\",[]],[2,3,4,\"Brown\",[]],[2,1,3,\"Brown\",[]],[1,2,5,\"Brown\",[]],[2,1,8,\"Green\",[]],[3,2,1,\"Brown\",[]],[2,3,9,\"Green\",[]],[2,2,0,\"Brown\",[]],[2,3,3,\"Brown\",[]],[3,2,6,\"Brown\",[]],[2,1,2,\"Brown\",[]],[2,2,5,\"Brown\",[]],[1,2,4,\"Brown\",[]],[3,2,0,\"Brown\",[]],[2,3,8,\"Green\",[]],[2,1,7,\"Green\",[]],[2,3,2,\"Brown\",[]],[2,1,1,\"Brown\",[]],[1,2,9,\"Green\",[]],[1,1,0,\"Green\",[\"S\"]],[3,2,5,\"Brown\",[]],[4,2,0,\"Green\",[\"S\"]],[2,2,4,\"Brown\",[]],[2,3,7,\"Green\",[]],[1,2,3,\"Brown\",[]],[2,1,6,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-09T18:58:55.109)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue
    (string
      [[2,1,0,\"Brown\",[]],[1,2,8,\"Green\",[]],[2,3,1,\"Brown\",[]],[3,2,4,\"Brown\",[]],[1,3,0,\"Green\",[\"S\"]],[2,2,3,\"Brown\",[]],[2,3,6,\"Brown\",[]],[2,1,5,\"Brown\",[]],[1,2,2,\"Brown\",[]],[3,2,9,\"Green\",[]],[3,1,0,\"Green\",[\"S\"]],[3,2,3,\"Brown\",[]],[2,3,0,\"Brown\",[]],[1,2,7,\"Green\",[]],[2,2,2,\"Brown\",[]],[1,2,1,\"Brown\",[]],[2,1,4,\"Brown\",[]],[0,2,0,\"Green\",[\"S\"]],[2,3,5,\"Brown\",[]],[3,3,0,\"Green\",[\"S\"]],[3,2,8,\"Green\",[]],[3,2,2,\"Brown\",[]],[2,1,9,\"Green\",[]],[1,2,6,\"Brown\",[]],[2,2,1,\"Brown\",[]],[1,2,0,\"Brown\",[]],[4,3,0,\"Green\",[]],[3,2,7,\"Green\",[]],[2,3,4,\"Brown\",[]],[2,1,3,\"Brown\",[]],[1,2,5,\"Brown\",[]],[2,1,8,\"Green\",[]],[3,2,1,\"Brown\",[]],[2,3,9,\"Green\",[]],[2,2,0,\"Brown\",[]],[2,3,3,\"Brown\",[]],[1,4,0,\"Green\",[]],[3,2,6,\"Brown\",[]],[2,1,2,\"Brown\",[]],[2,2,5,\"Brown\",[]],[1,2,4,\"Brown\",[]],[3,2,0,\"Brown\",[]],[2,3,8,\"Green\",[]],[2,1,7,\"Green\",[]],[2,3,2,\"Brown\",[]],[2,1,1,\"Brown\",[]],[1,2,9,\"Green\",[]],[1,1,0,\"Green\",[\"S\"]],[3,2,5,\"Brown\",[]],[0,3,0,\"Green\",[]],[4,2,0,\"Green\",[\"S\"]],[2,2,4,\"Brown\",[]],[3,4,0,\"Green\",[]],[2,3,7,\"Green\",[]],[1,2,3,\"Brown\",[]],[2,1,6,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 9)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[2,1,0,\"Brown\",[]],[1,2,8,\"Green\",[]],[2,3,1,\"Brown\",[]],[3,2,4,\"Brown\",[]],[1,3,0,\"Green\",[\"S\"]],[2,2,3,\"Brown\",[]],[2,3,6,\"Brown\",[]],[2,1,5,\"Brown\",[]],[1,2,2,\"Brown\",[]],[3,2,9,\"Green\",[]],[3,1,0,\"Green\",[\"S\"]],[3,2,3,\"Brown\",[]],[2,3,0,\"Brown\",[]],[1,2,7,\"Green\",[]],[2,2,2,\"Brown\",[]],[1,2,1,\"Brown\",[]],[2,1,4,\"Brown\",[]],[0,2,0,\"Green\",[\"S\"]],[2,3,5,\"Brown\",[]],[3,3,0,\"Green\",[\"S\"]],[3,2,8,\"Green\",[]],[3,2,2,\"Brown\",[]],[2,1,9,\"Green\",[]],[1,2,6,\"Brown\",[]],[2,2,1,\"Brown\",[]],[1,2,0,\"Brown\",[]],[4,3,0,\"Green\",[]],[3,2,7,\"Green\",[]],[2,3,4,\"Brown\",[]],[2,1,3,\"Brown\",[]],[1,2,5,\"Brown\",[]],[2,1,8,\"Green\",[]],[3,2,1,\"Brown\",[]],[2,3,9,\"Green\",[]],[2,2,0,\"Brown\",[]],[2,3,3,\"Brown\",[]],[1,4,0,\"Green\",[]],[3,2,6,\"Brown\",[]],[2,1,2,\"Brown\",[]],[2,2,5,\"Brown\",[]],[1,2,4,\"Brown\",[]],[3,2,0,\"Brown\",[]],[2,3,8,\"Green\",[]],[2,1,7,\"Green\",[]],[2,3,2,\"Brown\",[]],[2,1,1,\"Brown\",[]],[1,2,9,\"Green\",[]],[1,1,0,\"Green\",[\"S\"]],[3,2,5,\"Brown\",[]],[0,3,0,\"Green\",[]],[4,2,0,\"Green\",[\"S\"]],[2,2,4,\"Brown\",[]],[3,4,0,\"Green\",[]],[2,3,7,\"Green\",[]],[1,2,3,\"Brown\",[]],[2,1,6,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-09T18:58:58.735)
  (NBestInd 0)
  (utterance "add green right")
  (targetFormula (: add green right))
  (targetValue
    (string
      [[2,1,0,\"Brown\",[]],[1,2,8,\"Green\",[]],[2,3,1,\"Brown\",[]],[3,2,4,\"Brown\",[]],[1,3,0,\"Green\",[\"S\"]],[2,2,3,\"Brown\",[]],[2,3,6,\"Brown\",[]],[2,1,5,\"Brown\",[]],[1,2,2,\"Brown\",[]],[3,2,9,\"Green\",[]],[3,1,0,\"Green\",[\"S\"]],[3,2,3,\"Brown\",[]],[2,3,0,\"Brown\",[]],[1,2,7,\"Green\",[]],[2,2,2,\"Brown\",[]],[1,2,1,\"Brown\",[]],[2,1,4,\"Brown\",[]],[0,2,0,\"Green\",[\"S\"]],[1,0,0,\"Green\",[]],[2,3,5,\"Brown\",[]],[3,3,0,\"Green\",[\"S\"]],[3,2,8,\"Green\",[]],[4,1,0,\"Green\",[]],[3,2,2,\"Brown\",[]],[2,1,9,\"Green\",[]],[1,2,6,\"Brown\",[]],[2,2,1,\"Brown\",[]],[1,2,0,\"Brown\",[]],[4,3,0,\"Green\",[]],[3,2,7,\"Green\",[]],[2,3,4,\"Brown\",[]],[2,1,3,\"Brown\",[]],[1,2,5,\"Brown\",[]],[2,1,8,\"Green\",[]],[3,2,1,\"Brown\",[]],[2,3,9,\"Green\",[]],[3,0,0,\"Green\",[]],[2,2,0,\"Brown\",[]],[2,3,3,\"Brown\",[]],[1,4,0,\"Green\",[]],[3,2,6,\"Brown\",[]],[2,1,2,\"Brown\",[]],[2,2,5,\"Brown\",[]],[1,2,4,\"Brown\",[]],[0,1,0,\"Green\",[]],[3,2,0,\"Brown\",[]],[2,3,8,\"Green\",[]],[2,1,7,\"Green\",[]],[2,3,2,\"Brown\",[]],[2,1,1,\"Brown\",[]],[1,2,9,\"Green\",[]],[1,1,0,\"Green\",[\"S\"]],[3,2,5,\"Brown\",[]],[0,3,0,\"Green\",[]],[4,2,0,\"Green\",[\"S\"]],[2,2,4,\"Brown\",[]],[3,4,0,\"Green\",[]],[2,3,7,\"Green\",[]],[1,2,3,\"Brown\",[]],[2,1,6,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context (date 2016 7 9) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-09T19:10:27.574)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 10) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-10T15:37:52.142)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 10) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-10T15:51:49.419)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 10) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-10T15:57:53.178)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 10) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-10T15:57:54.827)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 10) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-10T15:58:06.178)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 10) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-10T16:22:14.524)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 10) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-10T16:22:44.014)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 10) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-10T16:25:29.974)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 10) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-10T16:25:33.445)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 10) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-10T16:25:37.756)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 10) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-10T16:30:36.395)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 10) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-10T16:30:41.977)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 10) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-10T16:30:48.473)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 10) (graph NaiveKnowledgeGraph ((string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-10T16:30:54.314)
  (NBestInd 4)
  (utterance "add 3 red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 10) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-10T16:33:44.986)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 10) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-10T16:33:45.971)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 10) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-10T16:33:53.602)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 10) (graph NaiveKnowledgeGraph ((string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-10T16:33:57.756)
  (NBestInd 0)
  (utterance "add 3 red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 10) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-10T16:35:33.043)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 10) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-10T16:35:34.137)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 10) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-10T16:36:47.238)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 10) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-10T16:36:49.391)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 10) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-10T16:44:01.896)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 10) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-10T16:44:13.769)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 10) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-10T16:44:18.272)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 10) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-10T16:45:32.670)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 10) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-10T16:45:35.084)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 10) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-10T16:45:39.750)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T13:45:27.081)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T13:45:42.564)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T13:45:53.773)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T13:49:21.914)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T13:49:24.642)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T13:49:28.769)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T13:50:22.669)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T13:50:29.188)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T13:50:33.781)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T13:50:50.014)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T13:50:51.571)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T13:50:58.171)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T13:51:55.960)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T13:51:57)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T13:51:58.823)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T13:52:00.178)
  (NBestInd 0)
  (utterance "add 3 red")
  (targetFormula (: select (color red)))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T13:52:02.831)
  (NBestInd 2)
  (utterance "add 3 red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T13:57:55.436)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T13:58:02.461)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T13:58:06.917)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T13:58:12.157)
  (NBestInd 1)
  (utterance "add 3 red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T13:59:53.103)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T13:59:58.689)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T14:00:04.472)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T14:00:11.111)
  (NBestInd 1)
  (utterance "add 3 red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T14:01:26.175)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T14:01:27.414)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T14:01:29.222)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T14:01:31.311)
  (NBestInd 1)
  (utterance "add 3 red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T14:05:49.875)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T14:07:12.103)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T14:07:19.070)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T14:07:23.758)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T14:07:28.093)
  (NBestInd 1)
  (utterance "add 3 red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T14:08:34.221)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T14:08:36.244)
  (NBestInd 0)
  (utterance "add 3 red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-11T14:08:39.716)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,4,0,\"Green\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-11T14:08:41.828)
  (NBestInd 0)
  (utterance "add 3 red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,5,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T14:09:12.835)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T14:09:15.970)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T14:10:23.175)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T14:10:27.406)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T14:10:31.221)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T14:14:58.612)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T14:15:00.237)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T14:15:02.355)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T14:33:40.364)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T14:33:41.495)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T14:33:43.459)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (user deadbeef) (date 2016 7 11))
  (timeStamp 2016-08-11T14:35:01.711)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[4,4,1,\"Blue\",[]],[3,3,1,\"Gray\",[\"S\"]],[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T14:35:09.788)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T14:35:14.938)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T14:35:16.767)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T14:35:20.044)
  (NBestInd 4)
  (utterance "add 3 red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T14:37:59.183)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T14:38:01.189)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T14:38:03.439)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T14:38:10.575)
  (NBestInd 0)
  (utterance "add 3 red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T14:38:23.422)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T14:39:23.620)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T14:39:29.635)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T14:39:34.676)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T14:40:20.592)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T14:40:24.658)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T14:40:29.376)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T14:41:53.995)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T14:41:55.356)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T14:41:57.716)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T14:43:58.428)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T14:43:59.466)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T14:44:01.826)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T14:46:08.550)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T14:46:09.844)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T14:46:11.764)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T14:47:21.602)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T14:47:22.760)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T14:47:24.785)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T15:04:18.762)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:04:20.211)
  (NBestInd 0)
  (utterance "add pink")
  (targetFormula (: add pink top))
  (targetValue (string [[3,3,0,\"Pink\",[\"S\"]],[3,3,0,\"Pink\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T15:05:37.784)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T15:07:40.480)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T15:16:07.681)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:16:12.888)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:16:17.216)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:16:22)
  (NBestInd 0)
  (utterance "repeat 3 [ add red ]")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T15:17:06.338)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:17:07.598)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:17:09.518)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:17:22.214)
  (NBestInd 0)
  (utterance "add 3 red on top of the green block")
  (targetFormula (:for (color green) (:loop (number 3) (: add red top))))
  (targetValue (string [[3,4,3,\"Red\",[]],[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]],[3,4,2,\"Red\",[]],[3,4,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T15:17:27.875)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:17:30.795)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:17:35.500)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:17:40.420)
  (NBestInd 0)
  (utterance "repeat 3 [ add red ]")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,4,0,\"Green\",[]],[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:18:05.908)
  (NBestInd 0)
  (utterance "add 3 red on top of the green block")
  (targetFormula (:for (color green) (:loop (number 3) (: add red top))))
  (targetValue (string [[3,4,3,\"Red\",[]],[3,4,0,\"Green\",[]],[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,4,2,\"Red\",[]],[3,4,1,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      ((string [[3,4,3,\"Red\",[]],[3,4,0,\"Green\",[]],[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,4,2,\"Red\",[]],[3,4,1,\"Red\",[]],[3,3,2,\"Red\",[]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-08-11T15:19:02.411)
  (NBestInd 0)
  (utterance "select very top of has color red")
  (targetFormula (:for (call veryx top (color red)) (: select)))
  (targetValue (string [[3,4,3,\"Red\",[\"S\"]],[3,4,0,\"Green\",[]],[3,3,3,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[]],[3,4,2,\"Red\",[]],[3,4,1,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      ((string [[3,4,3,\"Red\",[\"S\"]],[3,4,0,\"Green\",[]],[3,3,3,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[]],[3,4,2,\"Red\",[]],[3,4,1,\"Red\",[]],[3,3,2,\"Red\",[]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-08-11T15:19:34.831)
  (NBestInd 0)
  (utterance "add orange front")
  (targetFormula (: add orange front))
  (targetValue
    (string
      [[2,3,3,\"Orange\",[]],[3,4,3,\"Red\",[\"S\"]],[3,4,0,\"Green\",[]],[3,3,3,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[]],[3,4,2,\"Red\",[]],[2,4,3,\"Orange\",[]],[3,4,1,\"Red\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T15:20:15.914)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:20:35.351)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:20:40.328)
  (NBestInd 1)
  (utterance "move 3 left")
  (targetFormula (:loop (number 3) (: move left)))
  (targetValue (string [[3,6,0,\"Red\",[\"S\"]],[3,6,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T15:20:48.032)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:23:06.264)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T15:24:25.387)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:24:27.579)
  (NBestInd 0)
  (utterance "add brown")
  (targetFormula (: add brown top))
  (targetValue (string [[3,3,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:24:53.930)
  (NBestInd 0)
  (utterance "repeat 3 [ move left ]")
  (targetFormula (:loop (number 3) (: move left)))
  (targetValue (string [[3,6,0,\"Brown\",[\"S\"]],[3,6,0,\"Brown\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T15:25:00.275)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:25:03.041)
  (NBestInd 0)
  (utterance "add brown")
  (targetFormula (: add brown top))
  (targetValue (string [[3,3,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:25:05.938)
  (NBestInd 0)
  (utterance "add brown right")
  (targetFormula (: add brown right))
  (targetValue (string [[3,2,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,2,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:25:19.610)
  (NBestInd 0)
  (utterance "repeat 2 [ move left ]")
  (targetFormula (:loop (number 2) (: move left)))
  (targetValue (string [[3,2,0,\"Brown\",[]],[3,5,0,\"Brown\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,2,0,\"Brown\",[]],[3,5,0,\"Brown\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:26:31.252)
  (NBestInd 0)
  (utterance "select has color brown")
  (targetFormula (:for (color brown) (: select)))
  (targetValue (string [[3,2,0,\"Brown\",[\"S\"]],[3,5,0,\"Brown\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,2,0,\"Brown\",[\"S\"]],[3,5,0,\"Brown\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:27:11.434)
  (NBestInd 0)
  (utterance "add brown back")
  (targetFormula (: add brown back))
  (targetValue (string [[4,2,0,\"Brown\",[]],[3,2,0,\"Brown\",[\"S\"]],[3,5,0,\"Brown\",[\"S\"]],[4,5,0,\"Brown\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T15:29:36.104)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:29:40.704)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:29:44.481)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T15:29:51.776)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:29:57.867)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:30:03.160)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:30:07.600)
  (NBestInd 0)
  (utterance "repeat 3 [ add red ]")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,4,0,\"Green\",[]],[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:30:31.277)
  (NBestInd 0)
  (utterance "add 3 red on top of the green block")
  (targetFormula (:for (color green) (:loop (number 3) (: add red top))))
  (targetValue (string [[3,4,3,\"Red\",[]],[3,4,0,\"Green\",[]],[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,4,2,\"Red\",[]],[3,4,1,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      ((string [[3,4,3,\"Red\",[]],[3,4,0,\"Green\",[]],[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,4,2,\"Red\",[]],[3,4,1,\"Red\",[]],[3,3,2,\"Red\",[]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-08-11T15:30:40.825)
  (NBestInd 0)
  (utterance "select very top of has color red")
  (targetFormula (:for (call veryx top (color red)) (: select)))
  (targetValue (string [[3,4,3,\"Red\",[\"S\"]],[3,4,0,\"Green\",[]],[3,3,3,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[]],[3,4,2,\"Red\",[]],[3,4,1,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      ((string [[3,4,3,\"Red\",[\"S\"]],[3,4,0,\"Green\",[]],[3,3,3,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[]],[3,4,2,\"Red\",[]],[3,4,1,\"Red\",[]],[3,3,2,\"Red\",[]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-08-11T15:30:49.736)
  (NBestInd 0)
  (utterance "add orange front")
  (targetFormula (: add orange front))
  (targetValue
    (string
      [[2,3,3,\"Orange\",[]],[3,4,3,\"Red\",[\"S\"]],[3,4,0,\"Green\",[]],[3,3,3,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[]],[3,4,2,\"Red\",[]],[2,4,3,\"Orange\",[]],[3,4,1,\"Red\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[2,3,3,\"Orange\",[]],[3,4,3,\"Red\",[\"S\"]],[3,4,0,\"Green\",[]],[3,3,3,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[]],[3,4,2,\"Red\",[]],[2,4,3,\"Orange\",[]],[3,4,1,\"Red\",[]],[3,3,2,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T15:31:06.320)
  (NBestInd 0)
  (utterance "repeat 2 [ move back ]")
  (targetFormula (:loop (number 2) (: move back)))
  (targetValue
    (string
      [[2,3,3,\"Orange\",[]],[3,4,0,\"Green\",[]],[5,4,3,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[]],[3,4,2,\"Red\",[]],[2,4,3,\"Orange\",[]],[3,4,1,\"Red\",[]],[5,3,3,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T15:31:10.725)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:31:37.646)
  (NBestInd 0)
  (utterance "add brown")
  (targetFormula (: add brown top))
  (targetValue (string [[3,3,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:31:42.598)
  (NBestInd 0)
  (utterance "repeat 3 [ add brown back ]")
  (targetFormula (:loop (number 3) (: add brown back)))
  (targetValue (string [[5,3,0,\"Brown\",[]],[6,3,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[4,3,0,\"Brown\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[5,3,0,\"Brown\",[]],[6,3,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[4,3,0,\"Brown\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:31:47.846)
  (NBestInd 0)
  (utterance "select all")
  (targetFormula (:for * (: select)))
  (targetValue (string [[5,3,0,\"Brown\",[\"S\"]],[6,3,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]],[4,3,0,\"Brown\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[5,3,0,\"Brown\",[\"S\"]],[6,3,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]],[4,3,0,\"Brown\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:31:57.437)
  (NBestInd 0)
  (utterance "repeat 3 [ add brown left ]")
  (targetFormula (:loop (number 3) (: add brown left)))
  (targetValue
    (string
      [[3,5,0,\"Brown\",[]],[5,5,0,\"Brown\",[]],[6,3,0,\"Brown\",[\"S\"]],[6,6,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[4,4,0,\"Brown\",[]],[6,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[5,3,0,\"Brown\",[\"S\"]],[3,4,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[6,5,0,\"Brown\",[]],[4,3,0,\"Brown\",[\"S\"]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,5,0,\"Brown\",[]],[5,5,0,\"Brown\",[]],[6,3,0,\"Brown\",[\"S\"]],[6,6,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[4,4,0,\"Brown\",[]],[6,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[5,3,0,\"Brown\",[\"S\"]],[3,4,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[6,5,0,\"Brown\",[]],[4,3,0,\"Brown\",[\"S\"]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T15:33:16.133)
  (NBestInd 0)
  (utterance "repeat 2 [ add red ]")
  (targetFormula (:loop (number 2) (: add red top)))
  (targetValue
    (string
      [[5,3,2,\"Red\",[]],[3,5,0,\"Brown\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[6,3,0,\"Brown\",[\"S\"]],[6,6,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[4,4,0,\"Brown\",[]],[6,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[5,6,0,\"Brown\",[]],[4,3,2,\"Red\",[]],[5,3,0,\"Brown\",[\"S\"]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,3,0,\"Brown\",[\"S\"]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[5,3,2,\"Red\",[]],[3,5,0,\"Brown\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[6,3,0,\"Brown\",[\"S\"]],[6,6,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[4,4,0,\"Brown\",[]],[6,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[5,6,0,\"Brown\",[]],[4,3,2,\"Red\",[]],[5,3,0,\"Brown\",[\"S\"]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,3,0,\"Brown\",[\"S\"]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[3,3,2,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T15:33:35.212)
  (NBestInd 0)
  (utterance "select very top of has color red")
  (targetFormula (:for (call veryx top (color red)) (: select)))
  (targetValue
    (string
      [[5,3,2,\"Red\",[\"S\"]],[3,5,0,\"Brown\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[6,3,0,\"Brown\",[]],[6,6,0,\"Brown\",[]],[3,3,0,\"Brown\",[]],[4,4,0,\"Brown\",[]],[6,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[5,6,0,\"Brown\",[]],[4,3,2,\"Red\",[\"S\"]],[5,3,0,\"Brown\",[]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[\"S\"]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,3,0,\"Brown\",[]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[3,3,2,\"Red\",[\"S\"]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[5,3,2,\"Red\",[\"S\"]],[3,5,0,\"Brown\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[6,3,0,\"Brown\",[]],[6,6,0,\"Brown\",[]],[3,3,0,\"Brown\",[]],[4,4,0,\"Brown\",[]],[6,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[5,6,0,\"Brown\",[]],[4,3,2,\"Red\",[\"S\"]],[5,3,0,\"Brown\",[]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[\"S\"]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,3,0,\"Brown\",[]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[3,3,2,\"Red\",[\"S\"]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T15:33:56.683)
  (NBestInd 0)
  (utterance "repeat 3 [ add yellow left ]")
  (targetFormula (:loop (number 3) (: add yellow left)))
  (targetValue
    (string
      [[3,5,0,\"Brown\",[]],[6,4,2,\"Yellow\",[]],[5,6,2,\"Yellow\",[]],[6,6,0,\"Brown\",[]],[3,4,2,\"Yellow\",[]],[4,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[6,5,2,\"Yellow\",[]],[6,3,1,\"Red\",[]],[3,5,2,\"Yellow\",[]],[4,3,2,\"Red\",[\"S\"]],[5,3,0,\"Brown\",[]],[6,6,2,\"Yellow\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[4,4,2,\"Yellow\",[]],[3,6,2,\"Yellow\",[]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,3,2,\"Red\",[\"S\"]],[4,5,2,\"Yellow\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[6,3,0,\"Brown\",[]],[3,3,0,\"Brown\",[]],[5,4,2,\"Yellow\",[]],[6,4,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[4,6,2,\"Yellow\",[]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[\"S\"]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[5,5,2,\"Yellow\",[]],[4,3,0,\"Brown\",[]],[3,3,2,\"Red\",[\"S\"]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,5,0,\"Brown\",[]],[6,4,2,\"Yellow\",[]],[5,6,2,\"Yellow\",[]],[6,6,0,\"Brown\",[]],[3,4,2,\"Yellow\",[]],[4,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[6,5,2,\"Yellow\",[]],[6,3,1,\"Red\",[]],[3,5,2,\"Yellow\",[]],[4,3,2,\"Red\",[\"S\"]],[5,3,0,\"Brown\",[]],[6,6,2,\"Yellow\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[4,4,2,\"Yellow\",[]],[3,6,2,\"Yellow\",[]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,3,2,\"Red\",[\"S\"]],[4,5,2,\"Yellow\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[6,3,0,\"Brown\",[]],[3,3,0,\"Brown\",[]],[5,4,2,\"Yellow\",[]],[6,4,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[4,6,2,\"Yellow\",[]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[\"S\"]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[5,5,2,\"Yellow\",[]],[4,3,0,\"Brown\",[]],[3,3,2,\"Red\",[\"S\"]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T15:34:10.804)
  (NBestInd 0)
  (utterance "select nothing")
  (targetFormula (:for nothing (: select)))
  (targetValue
    (string
      [[3,5,0,\"Brown\",[]],[6,4,2,\"Yellow\",[]],[5,6,2,\"Yellow\",[]],[6,6,0,\"Brown\",[]],[3,4,2,\"Yellow\",[]],[4,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[6,5,2,\"Yellow\",[]],[6,3,1,\"Red\",[]],[3,5,2,\"Yellow\",[]],[4,3,2,\"Red\",[]],[5,3,0,\"Brown\",[]],[6,6,2,\"Yellow\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[4,4,2,\"Yellow\",[]],[3,6,2,\"Yellow\",[]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,3,2,\"Red\",[]],[4,5,2,\"Yellow\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[6,3,0,\"Brown\",[]],[3,3,0,\"Brown\",[]],[5,4,2,\"Yellow\",[]],[6,4,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[4,6,2,\"Yellow\",[]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[5,5,2,\"Yellow\",[]],[4,3,0,\"Brown\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,5,0,\"Brown\",[]],[5,5,0,\"Brown\",[]],[6,3,0,\"Brown\",[\"S\"]],[6,6,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[4,4,0,\"Brown\",[]],[6,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[5,3,0,\"Brown\",[\"S\"]],[3,4,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[6,5,0,\"Brown\",[]],[4,3,0,\"Brown\",[\"S\"]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T15:34:44.279)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue
    (string
      [[3,5,0,\"Brown\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[6,3,0,\"Brown\",[\"S\"]],[6,6,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[4,4,0,\"Brown\",[]],[6,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[5,6,0,\"Brown\",[]],[5,3,0,\"Brown\",[\"S\"]],[3,4,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,3,0,\"Brown\",[\"S\"]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,5,0,\"Brown\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[6,3,0,\"Brown\",[\"S\"]],[6,6,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[4,4,0,\"Brown\",[]],[6,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[5,6,0,\"Brown\",[]],[5,3,0,\"Brown\",[\"S\"]],[3,4,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,3,0,\"Brown\",[\"S\"]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T15:34:48.246)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue
    (string
      [[5,3,2,\"Red\",[]],[3,5,0,\"Brown\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[6,3,0,\"Brown\",[\"S\"]],[6,6,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[4,4,0,\"Brown\",[]],[6,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[5,6,0,\"Brown\",[]],[4,3,2,\"Red\",[]],[5,3,0,\"Brown\",[\"S\"]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,3,0,\"Brown\",[\"S\"]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[5,3,2,\"Red\",[]],[3,5,0,\"Brown\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[6,3,0,\"Brown\",[\"S\"]],[6,6,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[4,4,0,\"Brown\",[]],[6,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[5,6,0,\"Brown\",[]],[4,3,2,\"Red\",[]],[5,3,0,\"Brown\",[\"S\"]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,3,0,\"Brown\",[\"S\"]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[3,3,2,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T15:35:08.389)
  (NBestInd 0)
  (utterance "select very top of has color red")
  (targetFormula (:for (call veryx top (color red)) (: select)))
  (targetValue
    (string
      [[5,3,2,\"Red\",[\"S\"]],[3,5,0,\"Brown\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[6,3,0,\"Brown\",[]],[6,6,0,\"Brown\",[]],[3,3,0,\"Brown\",[]],[4,4,0,\"Brown\",[]],[6,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[5,6,0,\"Brown\",[]],[4,3,2,\"Red\",[\"S\"]],[5,3,0,\"Brown\",[]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[\"S\"]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,3,0,\"Brown\",[]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[3,3,2,\"Red\",[\"S\"]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[5,3,2,\"Red\",[\"S\"]],[3,5,0,\"Brown\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[6,3,0,\"Brown\",[]],[6,6,0,\"Brown\",[]],[3,3,0,\"Brown\",[]],[4,4,0,\"Brown\",[]],[6,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[5,6,0,\"Brown\",[]],[4,3,2,\"Red\",[\"S\"]],[5,3,0,\"Brown\",[]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[\"S\"]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,3,0,\"Brown\",[]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[3,3,2,\"Red\",[\"S\"]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T15:35:12.294)
  (NBestInd 0)
  (utterance "add yellow right")
  (targetFormula (: add yellow right))
  (targetValue
    (string
      [[3,5,0,\"Brown\",[]],[6,6,0,\"Brown\",[]],[4,2,2,\"Yellow\",[]],[4,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[4,3,2,\"Red\",[\"S\"]],[5,3,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[5,2,2,\"Yellow\",[]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,3,2,\"Red\",[\"S\"]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[6,3,0,\"Brown\",[]],[3,3,0,\"Brown\",[]],[6,2,2,\"Yellow\",[]],[6,4,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[3,2,2,\"Yellow\",[]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[\"S\"]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,3,0,\"Brown\",[]],[3,3,2,\"Red\",[\"S\"]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,5,0,\"Brown\",[]],[6,6,0,\"Brown\",[]],[4,2,2,\"Yellow\",[]],[4,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[4,3,2,\"Red\",[\"S\"]],[5,3,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[5,2,2,\"Yellow\",[]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,3,2,\"Red\",[\"S\"]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[6,3,0,\"Brown\",[]],[3,3,0,\"Brown\",[]],[6,2,2,\"Yellow\",[]],[6,4,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[3,2,2,\"Yellow\",[]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[\"S\"]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,3,0,\"Brown\",[]],[3,3,2,\"Red\",[\"S\"]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T15:35:26.003)
  (NBestInd 0)
  (utterance "select nothing")
  (targetFormula (:for nothing (: select)))
  (targetValue
    (string
      [[3,5,0,\"Brown\",[]],[6,6,0,\"Brown\",[]],[4,2,2,\"Yellow\",[]],[4,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[4,3,2,\"Red\",[]],[5,3,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[5,2,2,\"Yellow\",[]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,3,2,\"Red\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[6,3,0,\"Brown\",[]],[3,3,0,\"Brown\",[]],[6,2,2,\"Yellow\",[]],[6,4,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[3,2,2,\"Yellow\",[]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,3,0,\"Brown\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,5,0,\"Brown\",[]],[6,6,0,\"Brown\",[]],[4,2,2,\"Yellow\",[]],[4,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[4,3,2,\"Red\",[]],[5,3,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[5,2,2,\"Yellow\",[]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,3,2,\"Red\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[6,3,0,\"Brown\",[]],[3,3,0,\"Brown\",[]],[6,2,2,\"Yellow\",[]],[6,4,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[3,2,2,\"Yellow\",[]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,3,0,\"Brown\",[]],[3,3,2,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T15:35:46.062)
  (NBestInd 0)
  (utterance "select has color yellow")
  (targetFormula (:for (color yellow) (: select)))
  (targetValue
    (string
      [[3,5,0,\"Brown\",[]],[6,6,0,\"Brown\",[]],[4,2,2,\"Yellow\",[\"S\"]],[4,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[4,3,2,\"Red\",[]],[5,3,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[5,2,2,\"Yellow\",[\"S\"]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,3,2,\"Red\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[6,3,0,\"Brown\",[]],[3,3,0,\"Brown\",[]],[6,2,2,\"Yellow\",[\"S\"]],[6,4,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[3,2,2,\"Yellow\",[\"S\"]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,3,0,\"Brown\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,5,0,\"Brown\",[]],[6,6,0,\"Brown\",[]],[4,2,2,\"Yellow\",[\"S\"]],[4,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[4,3,2,\"Red\",[]],[5,3,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[5,2,2,\"Yellow\",[\"S\"]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,3,2,\"Red\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[6,3,0,\"Brown\",[]],[3,3,0,\"Brown\",[]],[6,2,2,\"Yellow\",[\"S\"]],[6,4,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[3,2,2,\"Yellow\",[\"S\"]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,3,0,\"Brown\",[]],[3,3,2,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T15:35:51.206)
  (NBestInd 0)
  (utterance "add blue right")
  (targetFormula (: add blue right))
  (targetValue
    (string
      [[3,5,0,\"Brown\",[]],[6,6,0,\"Brown\",[]],[4,2,2,\"Yellow\",[\"S\"]],[4,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[5,1,2,\"Blue\",[]],[4,3,2,\"Red\",[]],[5,3,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[5,2,2,\"Yellow\",[\"S\"]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,3,2,\"Red\",[]],[6,1,2,\"Blue\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[3,1,2,\"Blue\",[]],[6,3,0,\"Brown\",[]],[3,3,0,\"Brown\",[]],[6,2,2,\"Yellow\",[\"S\"]],[6,4,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[3,2,2,\"Yellow\",[\"S\"]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,1,2,\"Blue\",[]],[4,3,0,\"Brown\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,5,0,\"Brown\",[]],[6,6,0,\"Brown\",[]],[4,2,2,\"Yellow\",[\"S\"]],[4,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[5,1,2,\"Blue\",[]],[4,3,2,\"Red\",[]],[5,3,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[5,2,2,\"Yellow\",[\"S\"]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,3,2,\"Red\",[]],[6,1,2,\"Blue\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[3,1,2,\"Blue\",[]],[6,3,0,\"Brown\",[]],[3,3,0,\"Brown\",[]],[6,2,2,\"Yellow\",[\"S\"]],[6,4,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[3,2,2,\"Yellow\",[\"S\"]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,1,2,\"Blue\",[]],[4,3,0,\"Brown\",[]],[3,3,2,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T15:36:05.367)
  (NBestInd 0)
  (utterance "select has color blue")
  (targetFormula (:for (color blue) (: select)))
  (targetValue
    (string
      [[3,5,0,\"Brown\",[]],[6,6,0,\"Brown\",[]],[4,2,2,\"Yellow\",[]],[4,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[5,1,2,\"Blue\",[\"S\"]],[4,3,2,\"Red\",[]],[5,3,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[5,2,2,\"Yellow\",[]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,3,2,\"Red\",[]],[6,1,2,\"Blue\",[\"S\"]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[3,1,2,\"Blue\",[\"S\"]],[6,3,0,\"Brown\",[]],[3,3,0,\"Brown\",[]],[6,2,2,\"Yellow\",[]],[6,4,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[3,2,2,\"Yellow\",[]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,1,2,\"Blue\",[\"S\"]],[4,3,0,\"Brown\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,5,0,\"Brown\",[]],[6,6,0,\"Brown\",[]],[4,2,2,\"Yellow\",[]],[4,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[5,1,2,\"Blue\",[\"S\"]],[4,3,2,\"Red\",[]],[5,3,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[5,2,2,\"Yellow\",[]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,3,2,\"Red\",[]],[6,1,2,\"Blue\",[\"S\"]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[3,1,2,\"Blue\",[\"S\"]],[6,3,0,\"Brown\",[]],[3,3,0,\"Brown\",[]],[6,2,2,\"Yellow\",[]],[6,4,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[3,2,2,\"Yellow\",[]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,1,2,\"Blue\",[\"S\"]],[4,3,0,\"Brown\",[]],[3,3,2,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T15:36:14.389)
  (NBestInd 0)
  (utterance "repeat 2 [ add green bot ]")
  (targetFormula (:loop (number 2) (: add green bot)))
  (targetValue
    (string
      [[3,5,0,\"Brown\",[]],[6,6,0,\"Brown\",[]],[4,2,2,\"Yellow\",[]],[4,4,0,\"Brown\",[]],[6,1,0,\"Green\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[5,1,2,\"Blue\",[\"S\"]],[4,3,2,\"Red\",[]],[5,3,0,\"Brown\",[]],[4,1,1,\"Green\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[3,1,0,\"Green\",[]],[5,2,2,\"Yellow\",[]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,3,2,\"Red\",[]],[6,1,2,\"Blue\",[\"S\"]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[3,1,2,\"Blue\",[\"S\"]],[6,3,0,\"Brown\",[]],[5,1,1,\"Green\",[]],[3,3,0,\"Brown\",[]],[6,2,2,\"Yellow\",[]],[4,1,0,\"Green\",[]],[6,4,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[3,2,2,\"Yellow\",[]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[]],[6,1,1,\"Green\",[]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,1,2,\"Blue\",[\"S\"]],[5,1,0,\"Green\",[]],[4,3,0,\"Brown\",[]],[3,1,1,\"Green\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,5,0,\"Brown\",[]],[6,6,0,\"Brown\",[]],[4,2,2,\"Yellow\",[]],[4,4,0,\"Brown\",[]],[6,1,0,\"Green\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[5,1,2,\"Blue\",[\"S\"]],[4,3,2,\"Red\",[]],[5,3,0,\"Brown\",[]],[4,1,1,\"Green\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[3,1,0,\"Green\",[]],[5,2,2,\"Yellow\",[]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,3,2,\"Red\",[]],[6,1,2,\"Blue\",[\"S\"]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[3,1,2,\"Blue\",[\"S\"]],[6,3,0,\"Brown\",[]],[5,1,1,\"Green\",[]],[3,3,0,\"Brown\",[]],[6,2,2,\"Yellow\",[]],[4,1,0,\"Green\",[]],[6,4,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[3,2,2,\"Yellow\",[]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[]],[6,1,1,\"Green\",[]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,1,2,\"Blue\",[\"S\"]],[5,1,0,\"Green\",[]],[4,3,0,\"Brown\",[]],[3,1,1,\"Green\",[]],[3,3,2,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T15:36:18.005)
  (NBestInd 0)
  (utterance "select nothing")
  (targetFormula (:for nothing (: select)))
  (targetValue
    (string
      [[3,5,0,\"Brown\",[]],[6,6,0,\"Brown\",[]],[4,2,2,\"Yellow\",[]],[4,4,0,\"Brown\",[]],[6,1,0,\"Green\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[5,1,2,\"Blue\",[]],[4,3,2,\"Red\",[]],[5,3,0,\"Brown\",[]],[4,1,1,\"Green\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[3,1,0,\"Green\",[]],[5,2,2,\"Yellow\",[]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,3,2,\"Red\",[]],[6,1,2,\"Blue\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[3,1,2,\"Blue\",[]],[6,3,0,\"Brown\",[]],[5,1,1,\"Green\",[]],[3,3,0,\"Brown\",[]],[6,2,2,\"Yellow\",[]],[4,1,0,\"Green\",[]],[6,4,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[3,2,2,\"Yellow\",[]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[]],[6,1,1,\"Green\",[]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,1,2,\"Blue\",[]],[5,1,0,\"Green\",[]],[4,3,0,\"Brown\",[]],[3,1,1,\"Green\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T15:38:51.116)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:38:53.052)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:38:54.645)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T15:39:11.283)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:39:14.357)
  (NBestInd 0)
  (utterance "add brown")
  (targetFormula (: add brown top))
  (targetValue (string [[3,3,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:39:47.927)
  (NBestInd 0)
  (utterance "repeat 3 [ add brown left ]")
  (targetFormula (:loop (number 3) (: add brown left)))
  (targetValue (string [[3,5,0,\"Brown\",[]],[3,4,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[3,6,0,\"Brown\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,5,0,\"Brown\",[]],[3,4,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[3,6,0,\"Brown\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:39:51.726)
  (NBestInd 0)
  (utterance "select has color brown")
  (targetFormula (:for (color brown) (: select)))
  (targetValue (string [[3,5,0,\"Brown\",[\"S\"]],[3,4,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]],[3,6,0,\"Brown\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,5,0,\"Brown\",[\"S\"]],[3,4,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]],[3,6,0,\"Brown\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T15:39:59.774)
  (NBestInd 0)
  (utterance "repeat 3 [ add brown back ]")
  (targetFormula (:loop (number 3) (: add brown back)))
  (targetValue
    (string
      [[3,5,0,\"Brown\",[\"S\"]],[5,5,0,\"Brown\",[]],[6,3,0,\"Brown\",[]],[6,6,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[4,4,0,\"Brown\",[]],[6,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[\"S\"]],[5,6,0,\"Brown\",[]],[5,3,0,\"Brown\",[]],[3,4,0,\"Brown\",[\"S\"]],[4,5,0,\"Brown\",[]],[6,5,0,\"Brown\",[]],[4,3,0,\"Brown\",[]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,5,0,\"Brown\",[\"S\"]],[5,5,0,\"Brown\",[]],[6,3,0,\"Brown\",[]],[6,6,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[4,4,0,\"Brown\",[]],[6,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[\"S\"]],[5,6,0,\"Brown\",[]],[5,3,0,\"Brown\",[]],[3,4,0,\"Brown\",[\"S\"]],[4,5,0,\"Brown\",[]],[6,5,0,\"Brown\",[]],[4,3,0,\"Brown\",[]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T15:40:06.757)
  (NBestInd 0)
  (utterance "select very right of has color brown")
  (targetFormula (:for (call veryx right (color brown)) (: select)))
  (targetValue
    (string
      [[3,5,0,\"Brown\",[]],[5,5,0,\"Brown\",[]],[6,3,0,\"Brown\",[\"S\"]],[6,6,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[4,4,0,\"Brown\",[]],[6,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[5,3,0,\"Brown\",[\"S\"]],[3,4,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[6,5,0,\"Brown\",[]],[4,3,0,\"Brown\",[\"S\"]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,5,0,\"Brown\",[]],[5,5,0,\"Brown\",[]],[6,3,0,\"Brown\",[\"S\"]],[6,6,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[4,4,0,\"Brown\",[]],[6,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[5,3,0,\"Brown\",[\"S\"]],[3,4,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[6,5,0,\"Brown\",[]],[4,3,0,\"Brown\",[\"S\"]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T15:40:18.792)
  (NBestInd 0)
  (utterance "repeat 2 [ add red ]")
  (targetFormula (:loop (number 2) (: add red top)))
  (targetValue
    (string
      [[5,3,2,\"Red\",[]],[3,5,0,\"Brown\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[6,3,0,\"Brown\",[\"S\"]],[6,6,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[4,4,0,\"Brown\",[]],[6,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[5,6,0,\"Brown\",[]],[4,3,2,\"Red\",[]],[5,3,0,\"Brown\",[\"S\"]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,3,0,\"Brown\",[\"S\"]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[5,3,2,\"Red\",[]],[3,5,0,\"Brown\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[6,3,0,\"Brown\",[\"S\"]],[6,6,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[4,4,0,\"Brown\",[]],[6,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[5,6,0,\"Brown\",[]],[4,3,2,\"Red\",[]],[5,3,0,\"Brown\",[\"S\"]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,3,0,\"Brown\",[\"S\"]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[3,3,2,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T15:40:23.105)
  (NBestInd 0)
  (utterance "select very top of red")
  (targetFormula (:for (call veryx top (color red)) (: select)))
  (targetValue
    (string
      [[5,3,2,\"Red\",[\"S\"]],[3,5,0,\"Brown\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[6,3,0,\"Brown\",[]],[6,6,0,\"Brown\",[]],[3,3,0,\"Brown\",[]],[4,4,0,\"Brown\",[]],[6,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[5,6,0,\"Brown\",[]],[4,3,2,\"Red\",[\"S\"]],[5,3,0,\"Brown\",[]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[\"S\"]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,3,0,\"Brown\",[]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[3,3,2,\"Red\",[\"S\"]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[5,3,2,\"Red\",[\"S\"]],[3,5,0,\"Brown\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[6,3,0,\"Brown\",[]],[6,6,0,\"Brown\",[]],[3,3,0,\"Brown\",[]],[4,4,0,\"Brown\",[]],[6,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[5,6,0,\"Brown\",[]],[4,3,2,\"Red\",[\"S\"]],[5,3,0,\"Brown\",[]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[\"S\"]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,3,0,\"Brown\",[]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[3,3,2,\"Red\",[\"S\"]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T15:40:29.055)
  (NBestInd 0)
  (utterance "add yellow right")
  (targetFormula (: add yellow right))
  (targetValue
    (string
      [[3,5,0,\"Brown\",[]],[6,6,0,\"Brown\",[]],[4,2,2,\"Yellow\",[]],[4,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[4,3,2,\"Red\",[\"S\"]],[5,3,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[5,2,2,\"Yellow\",[]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,3,2,\"Red\",[\"S\"]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[6,3,0,\"Brown\",[]],[3,3,0,\"Brown\",[]],[6,2,2,\"Yellow\",[]],[6,4,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[3,2,2,\"Yellow\",[]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[\"S\"]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,3,0,\"Brown\",[]],[3,3,2,\"Red\",[\"S\"]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,5,0,\"Brown\",[]],[6,6,0,\"Brown\",[]],[4,2,2,\"Yellow\",[]],[4,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[4,3,2,\"Red\",[\"S\"]],[5,3,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[5,2,2,\"Yellow\",[]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,3,2,\"Red\",[\"S\"]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[6,3,0,\"Brown\",[]],[3,3,0,\"Brown\",[]],[6,2,2,\"Yellow\",[]],[6,4,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[3,2,2,\"Yellow\",[]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[\"S\"]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,3,0,\"Brown\",[]],[3,3,2,\"Red\",[\"S\"]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T15:40:34.671)
  (NBestInd 0)
  (utterance "select very right of has color yellow")
  (targetFormula (:for (call veryx right (color yellow)) (: select)))
  (targetValue
    (string
      [[3,5,0,\"Brown\",[]],[6,6,0,\"Brown\",[]],[4,2,2,\"Yellow\",[\"S\"]],[4,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[4,3,2,\"Red\",[]],[5,3,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[5,2,2,\"Yellow\",[\"S\"]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,3,2,\"Red\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[6,3,0,\"Brown\",[]],[3,3,0,\"Brown\",[]],[6,2,2,\"Yellow\",[\"S\"]],[6,4,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[3,2,2,\"Yellow\",[\"S\"]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,3,0,\"Brown\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,5,0,\"Brown\",[]],[6,6,0,\"Brown\",[]],[4,2,2,\"Yellow\",[\"S\"]],[4,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[4,3,2,\"Red\",[]],[5,3,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[5,2,2,\"Yellow\",[\"S\"]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,3,2,\"Red\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[6,3,0,\"Brown\",[]],[3,3,0,\"Brown\",[]],[6,2,2,\"Yellow\",[\"S\"]],[6,4,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[3,2,2,\"Yellow\",[\"S\"]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,3,0,\"Brown\",[]],[3,3,2,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T15:40:41.031)
  (NBestInd 0)
  (utterance "add blue right")
  (targetFormula (: add blue right))
  (targetValue
    (string
      [[3,5,0,\"Brown\",[]],[6,6,0,\"Brown\",[]],[4,2,2,\"Yellow\",[\"S\"]],[4,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[5,1,2,\"Blue\",[]],[4,3,2,\"Red\",[]],[5,3,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[5,2,2,\"Yellow\",[\"S\"]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,3,2,\"Red\",[]],[6,1,2,\"Blue\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[3,1,2,\"Blue\",[]],[6,3,0,\"Brown\",[]],[3,3,0,\"Brown\",[]],[6,2,2,\"Yellow\",[\"S\"]],[6,4,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[3,2,2,\"Yellow\",[\"S\"]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,1,2,\"Blue\",[]],[4,3,0,\"Brown\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,5,0,\"Brown\",[]],[6,6,0,\"Brown\",[]],[4,2,2,\"Yellow\",[\"S\"]],[4,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[5,1,2,\"Blue\",[]],[4,3,2,\"Red\",[]],[5,3,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[5,2,2,\"Yellow\",[\"S\"]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,3,2,\"Red\",[]],[6,1,2,\"Blue\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[3,1,2,\"Blue\",[]],[6,3,0,\"Brown\",[]],[3,3,0,\"Brown\",[]],[6,2,2,\"Yellow\",[\"S\"]],[6,4,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[3,2,2,\"Yellow\",[\"S\"]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,1,2,\"Blue\",[]],[4,3,0,\"Brown\",[]],[3,3,2,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T15:40:45.502)
  (NBestInd 0)
  (utterance "select blue")
  (targetFormula (:for (color blue) (: select)))
  (targetValue
    (string
      [[3,5,0,\"Brown\",[]],[6,6,0,\"Brown\",[]],[4,2,2,\"Yellow\",[]],[4,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[5,1,2,\"Blue\",[\"S\"]],[4,3,2,\"Red\",[]],[5,3,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[5,2,2,\"Yellow\",[]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,3,2,\"Red\",[]],[6,1,2,\"Blue\",[\"S\"]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[3,1,2,\"Blue\",[\"S\"]],[6,3,0,\"Brown\",[]],[3,3,0,\"Brown\",[]],[6,2,2,\"Yellow\",[]],[6,4,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[3,2,2,\"Yellow\",[]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,1,2,\"Blue\",[\"S\"]],[4,3,0,\"Brown\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,5,0,\"Brown\",[]],[6,6,0,\"Brown\",[]],[4,2,2,\"Yellow\",[]],[4,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[5,1,2,\"Blue\",[\"S\"]],[4,3,2,\"Red\",[]],[5,3,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[5,2,2,\"Yellow\",[]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,3,2,\"Red\",[]],[6,1,2,\"Blue\",[\"S\"]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[3,1,2,\"Blue\",[\"S\"]],[6,3,0,\"Brown\",[]],[3,3,0,\"Brown\",[]],[6,2,2,\"Yellow\",[]],[6,4,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[3,2,2,\"Yellow\",[]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,1,2,\"Blue\",[\"S\"]],[4,3,0,\"Brown\",[]],[3,3,2,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T15:41:05.981)
  (NBestInd 0)
  (utterance "repeat 2 [ add green bot ]")
  (targetFormula (:loop (number 2) (: add green bot)))
  (targetValue
    (string
      [[3,5,0,\"Brown\",[]],[6,6,0,\"Brown\",[]],[4,2,2,\"Yellow\",[]],[4,4,0,\"Brown\",[]],[6,1,0,\"Green\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[5,1,2,\"Blue\",[\"S\"]],[4,3,2,\"Red\",[]],[5,3,0,\"Brown\",[]],[4,1,1,\"Green\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[3,1,0,\"Green\",[]],[5,2,2,\"Yellow\",[]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,3,2,\"Red\",[]],[6,1,2,\"Blue\",[\"S\"]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[3,1,2,\"Blue\",[\"S\"]],[6,3,0,\"Brown\",[]],[5,1,1,\"Green\",[]],[3,3,0,\"Brown\",[]],[6,2,2,\"Yellow\",[]],[4,1,0,\"Green\",[]],[6,4,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[3,2,2,\"Yellow\",[]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[]],[6,1,1,\"Green\",[]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,1,2,\"Blue\",[\"S\"]],[5,1,0,\"Green\",[]],[4,3,0,\"Brown\",[]],[3,1,1,\"Green\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,5,0,\"Brown\",[]],[6,6,0,\"Brown\",[]],[4,2,2,\"Yellow\",[]],[4,4,0,\"Brown\",[]],[6,1,0,\"Green\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[5,1,2,\"Blue\",[\"S\"]],[4,3,2,\"Red\",[]],[5,3,0,\"Brown\",[]],[4,1,1,\"Green\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[3,1,0,\"Green\",[]],[5,2,2,\"Yellow\",[]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,3,2,\"Red\",[]],[6,1,2,\"Blue\",[\"S\"]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[3,1,2,\"Blue\",[\"S\"]],[6,3,0,\"Brown\",[]],[5,1,1,\"Green\",[]],[3,3,0,\"Brown\",[]],[6,2,2,\"Yellow\",[]],[4,1,0,\"Green\",[]],[6,4,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[3,2,2,\"Yellow\",[]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[]],[6,1,1,\"Green\",[]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,1,2,\"Blue\",[\"S\"]],[5,1,0,\"Green\",[]],[4,3,0,\"Brown\",[]],[3,1,1,\"Green\",[]],[3,3,2,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T15:41:11.373)
  (NBestInd 0)
  (utterance "select nothing")
  (targetFormula (:for nothing (: select)))
  (targetValue
    (string
      [[3,5,0,\"Brown\",[]],[6,6,0,\"Brown\",[]],[4,2,2,\"Yellow\",[]],[4,4,0,\"Brown\",[]],[6,1,0,\"Green\",[]],[3,6,0,\"Brown\",[]],[6,3,1,\"Red\",[]],[5,1,2,\"Blue\",[]],[4,3,2,\"Red\",[]],[5,3,0,\"Brown\",[]],[4,1,1,\"Green\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Red\",[]],[3,1,0,\"Green\",[]],[5,2,2,\"Yellow\",[]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,3,2,\"Red\",[]],[6,1,2,\"Blue\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Red\",[]],[3,1,2,\"Blue\",[]],[6,3,0,\"Brown\",[]],[5,1,1,\"Green\",[]],[3,3,0,\"Brown\",[]],[6,2,2,\"Yellow\",[]],[4,1,0,\"Green\",[]],[6,4,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[3,2,2,\"Yellow\",[]],[3,4,0,\"Brown\",[]],[6,3,2,\"Red\",[]],[6,1,1,\"Green\",[]],[6,5,0,\"Brown\",[]],[5,3,1,\"Red\",[]],[4,1,2,\"Blue\",[]],[5,1,0,\"Green\",[]],[4,3,0,\"Brown\",[]],[3,1,1,\"Green\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T16:54:18.745)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T16:55:12.629)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T16:55:16.133)
  (NBestInd 1)
  (utterance "add a red block")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T16:55:18.773)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T17:04:21.836)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T17:04:26.628)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T17:04:33.827)
  (NBestInd 0)
  (utterance "repeat 2 [ add red left ]")
  (targetFormula (:loop (number 2) (: add red left)))
  (targetValue (string [[3,5,0,\"Red\",[]],[3,4,0,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,5,0,\"Red\",[]],[3,4,0,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T17:04:38.692)
  (NBestInd 0)
  (utterance "select has color red")
  (targetFormula (:for (color red) (: select)))
  (targetValue (string [[3,5,0,\"Red\",[\"S\"]],[3,4,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T17:04:56.834)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T17:04:59.619)
  (NBestInd 0)
  (utterance "add brown")
  (targetFormula (: add brown top))
  (targetValue (string [[3,3,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T17:05:07.290)
  (NBestInd 0)
  (utterance "repeat 2 [ add brown left ]")
  (targetFormula (:loop (number 2) (: add brown left)))
  (targetValue (string [[3,5,0,\"Brown\",[]],[3,4,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,5,0,\"Brown\",[]],[3,4,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T17:05:22.416)
  (NBestInd 0)
  (utterance "select has color brown")
  (targetFormula (:for (color brown) (: select)))
  (targetValue (string [[3,5,0,\"Brown\",[\"S\"]],[3,4,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,5,0,\"Brown\",[\"S\"]],[3,4,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T17:05:27.904)
  (NBestInd 0)
  (utterance "repeat 2 [ add brown back ]")
  (targetFormula (:loop (number 2) (: add brown back)))
  (targetValue
    (string
      [[3,5,0,\"Brown\",[\"S\"]],[5,3,0,\"Brown\",[]],[3,4,0,\"Brown\",[\"S\"]],[5,5,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[4,4,0,\"Brown\",[]],[4,3,0,\"Brown\",[]],[5,4,0,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,5,0,\"Brown\",[\"S\"]],[5,3,0,\"Brown\",[]],[3,4,0,\"Brown\",[\"S\"]],[5,5,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[4,4,0,\"Brown\",[]],[4,3,0,\"Brown\",[]],[5,4,0,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T17:05:33.439)
  (NBestInd 0)
  (utterance "select has color brown")
  (targetFormula (:for (color brown) (: select)))
  (targetValue
    (string
      [[3,5,0,\"Brown\",[\"S\"]],[5,3,0,\"Brown\",[\"S\"]],[3,4,0,\"Brown\",[\"S\"]],[5,5,0,\"Brown\",[\"S\"]],[4,5,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]],[4,4,0,\"Brown\",[\"S\"]],[4,3,0,\"Brown\",[\"S\"]],[5,4,0,\"Brown\",[\"S\"]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,5,0,\"Brown\",[\"S\"]],[5,3,0,\"Brown\",[\"S\"]],[3,4,0,\"Brown\",[\"S\"]],[5,5,0,\"Brown\",[\"S\"]],[4,5,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]],[4,4,0,\"Brown\",[\"S\"]],[4,3,0,\"Brown\",[\"S\"]],[5,4,0,\"Brown\",[\"S\"]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T17:05:45.141)
  (NBestInd 0)
  (utterance "repeat 3 [ add brown ]")
  (targetFormula (:loop (number 3) (: add brown top)))
  (targetValue
    (string
      [[3,5,0,\"Brown\",[\"S\"]],[4,4,3,\"Brown\",[]],[5,4,1,\"Brown\",[]],[3,4,2,\"Brown\",[]],[4,4,0,\"Brown\",[\"S\"]],[4,5,3,\"Brown\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[5,5,1,\"Brown\",[]],[4,3,2,\"Brown\",[]],[5,3,0,\"Brown\",[\"S\"]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[\"S\"]],[3,3,1,\"Brown\",[]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[5,4,0,\"Brown\",[\"S\"]],[5,5,3,\"Brown\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[\"S\"]],[4,3,1,\"Brown\",[]],[3,5,1,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[5,4,2,\"Brown\",[]],[4,4,1,\"Brown\",[]],[3,4,3,\"Brown\",[]],[3,4,0,\"Brown\",[\"S\"]],[5,3,1,\"Brown\",[]],[5,5,2,\"Brown\",[]],[4,3,3,\"Brown\",[]],[4,3,0,\"Brown\",[\"S\"]],[3,5,3,\"Brown\",[]],[4,5,1,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,5,0,\"Brown\",[\"S\"]],[4,4,3,\"Brown\",[]],[5,4,1,\"Brown\",[]],[3,4,2,\"Brown\",[]],[4,4,0,\"Brown\",[\"S\"]],[4,5,3,\"Brown\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[5,5,1,\"Brown\",[]],[4,3,2,\"Brown\",[]],[5,3,0,\"Brown\",[\"S\"]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[\"S\"]],[3,3,1,\"Brown\",[]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[5,4,0,\"Brown\",[\"S\"]],[5,5,3,\"Brown\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[\"S\"]],[4,3,1,\"Brown\",[]],[3,5,1,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[5,4,2,\"Brown\",[]],[4,4,1,\"Brown\",[]],[3,4,3,\"Brown\",[]],[3,4,0,\"Brown\",[\"S\"]],[5,3,1,\"Brown\",[]],[5,5,2,\"Brown\",[]],[4,3,3,\"Brown\",[]],[4,3,0,\"Brown\",[\"S\"]],[3,5,3,\"Brown\",[]],[4,5,1,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T17:05:50.175)
  (NBestInd 0)
  (utterance "add green")
  (targetFormula (: add green top))
  (targetValue
    (string
      [[5,4,4,\"Green\",[]],[3,5,0,\"Brown\",[\"S\"]],[4,4,3,\"Brown\",[]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[]],[3,4,2,\"Brown\",[]],[4,4,0,\"Brown\",[\"S\"]],[4,5,3,\"Brown\",[]],[3,3,4,\"Green\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[5,5,1,\"Brown\",[]],[4,3,2,\"Brown\",[]],[5,3,0,\"Brown\",[\"S\"]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[\"S\"]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[5,4,0,\"Brown\",[\"S\"]],[5,5,3,\"Brown\",[]],[4,3,4,\"Green\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[\"S\"]],[4,3,1,\"Brown\",[]],[3,5,4,\"Green\",[]],[3,5,1,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[5,4,2,\"Brown\",[]],[4,4,4,\"Green\",[]],[4,4,1,\"Brown\",[]],[3,4,3,\"Brown\",[]],[3,4,0,\"Brown\",[\"S\"]],[5,3,4,\"Green\",[]],[5,3,1,\"Brown\",[]],[4,5,4,\"Green\",[]],[5,5,2,\"Brown\",[]],[4,3,3,\"Brown\",[]],[4,3,0,\"Brown\",[\"S\"]],[3,5,3,\"Brown\",[]],[4,5,1,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[5,4,4,\"Green\",[]],[3,5,0,\"Brown\",[\"S\"]],[4,4,3,\"Brown\",[]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[]],[3,4,2,\"Brown\",[]],[4,4,0,\"Brown\",[\"S\"]],[4,5,3,\"Brown\",[]],[3,3,4,\"Green\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[5,5,1,\"Brown\",[]],[4,3,2,\"Brown\",[]],[5,3,0,\"Brown\",[\"S\"]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[\"S\"]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[5,4,0,\"Brown\",[\"S\"]],[5,5,3,\"Brown\",[]],[4,3,4,\"Green\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[\"S\"]],[4,3,1,\"Brown\",[]],[3,5,4,\"Green\",[]],[3,5,1,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[5,4,2,\"Brown\",[]],[4,4,4,\"Green\",[]],[4,4,1,\"Brown\",[]],[3,4,3,\"Brown\",[]],[3,4,0,\"Brown\",[\"S\"]],[5,3,4,\"Green\",[]],[5,3,1,\"Brown\",[]],[4,5,4,\"Green\",[]],[5,5,2,\"Brown\",[]],[4,3,3,\"Brown\",[]],[4,3,0,\"Brown\",[\"S\"]],[3,5,3,\"Brown\",[]],[4,5,1,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T17:05:53.727)
  (NBestInd 0)
  (utterance "select has color green")
  (targetFormula (:for (color green) (: select)))
  (targetValue
    (string
      [[5,4,4,\"Green\",[\"S\"]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[\"S\"]],[3,4,2,\"Brown\",[]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[3,3,4,\"Green\",[\"S\"]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[5,5,1,\"Brown\",[]],[4,3,2,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[\"S\"]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,5,3,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,4,\"Green\",[\"S\"]],[3,5,1,\"Brown\",[]],[3,3,0,\"Brown\",[]],[5,4,2,\"Brown\",[]],[4,4,4,\"Green\",[\"S\"]],[4,4,1,\"Brown\",[]],[3,4,3,\"Brown\",[]],[3,4,0,\"Brown\",[]],[5,3,4,\"Green\",[\"S\"]],[5,3,1,\"Brown\",[]],[4,5,4,\"Green\",[\"S\"]],[5,5,2,\"Brown\",[]],[4,3,3,\"Brown\",[]],[4,3,0,\"Brown\",[]],[3,5,3,\"Brown\",[]],[4,5,1,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[5,4,4,\"Green\",[\"S\"]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[\"S\"]],[3,4,2,\"Brown\",[]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[3,3,4,\"Green\",[\"S\"]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[5,5,1,\"Brown\",[]],[4,3,2,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[\"S\"]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,5,3,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,4,\"Green\",[\"S\"]],[3,5,1,\"Brown\",[]],[3,3,0,\"Brown\",[]],[5,4,2,\"Brown\",[]],[4,4,4,\"Green\",[\"S\"]],[4,4,1,\"Brown\",[]],[3,4,3,\"Brown\",[]],[3,4,0,\"Brown\",[]],[5,3,4,\"Green\",[\"S\"]],[5,3,1,\"Brown\",[]],[4,5,4,\"Green\",[\"S\"]],[5,5,2,\"Brown\",[]],[4,3,3,\"Brown\",[]],[4,3,0,\"Brown\",[]],[3,5,3,\"Brown\",[]],[4,5,1,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T17:06:27.959)
  (NBestInd 0)
  (utterance "add green right")
  (targetFormula (: add green right))
  (targetValue
    (string
      [[5,4,4,\"Green\",[\"S\"]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[3,2,4,\"Green\",[]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[\"S\"]],[3,4,2,\"Brown\",[]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[3,3,4,\"Green\",[\"S\"]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[5,5,1,\"Brown\",[]],[4,3,2,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,4,3,\"Brown\",[]],[4,2,4,\"Green\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[\"S\"]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,5,3,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,4,\"Green\",[\"S\"]],[3,5,1,\"Brown\",[]],[5,2,4,\"Green\",[]],[3,3,0,\"Brown\",[]],[5,4,2,\"Brown\",[]],[4,4,4,\"Green\",[\"S\"]],[4,4,1,\"Brown\",[]],[3,4,3,\"Brown\",[]],[3,4,0,\"Brown\",[]],[5,3,4,\"Green\",[\"S\"]],[5,3,1,\"Brown\",[]],[4,5,4,\"Green\",[\"S\"]],[5,5,2,\"Brown\",[]],[4,3,3,\"Brown\",[]],[4,3,0,\"Brown\",[]],[3,5,3,\"Brown\",[]],[4,5,1,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[5,4,4,\"Green\",[\"S\"]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[3,2,4,\"Green\",[]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[\"S\"]],[3,4,2,\"Brown\",[]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[3,3,4,\"Green\",[\"S\"]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[5,5,1,\"Brown\",[]],[4,3,2,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,4,3,\"Brown\",[]],[4,2,4,\"Green\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[\"S\"]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,5,3,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,4,\"Green\",[\"S\"]],[3,5,1,\"Brown\",[]],[5,2,4,\"Green\",[]],[3,3,0,\"Brown\",[]],[5,4,2,\"Brown\",[]],[4,4,4,\"Green\",[\"S\"]],[4,4,1,\"Brown\",[]],[3,4,3,\"Brown\",[]],[3,4,0,\"Brown\",[]],[5,3,4,\"Green\",[\"S\"]],[5,3,1,\"Brown\",[]],[4,5,4,\"Green\",[\"S\"]],[5,5,2,\"Brown\",[]],[4,3,3,\"Brown\",[]],[4,3,0,\"Brown\",[]],[3,5,3,\"Brown\",[]],[4,5,1,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T17:06:30.135)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue
    (string
      [[3,2,4,\"Green\",[]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[\"S\"]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[4,3,2,\"Brown\",[]],[4,2,4,\"Green\",[]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[\"S\"]],[5,4,0,\"Brown\",[]],[5,5,3,\"Brown\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,1,\"Brown\",[]],[5,2,4,\"Green\",[]],[3,3,0,\"Brown\",[]],[4,4,4,\"Green\",[\"S\"]],[3,6,4,\"Green\",[]],[3,4,3,\"Brown\",[]],[5,3,1,\"Brown\",[]],[5,5,2,\"Brown\",[]],[4,3,0,\"Brown\",[]],[4,5,1,\"Brown\",[]],[4,6,4,\"Green\",[]],[5,4,4,\"Green\",[\"S\"]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[3,4,2,\"Brown\",[]],[3,3,4,\"Green\",[\"S\"]],[5,5,1,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,6,4,\"Green\",[]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[3,5,4,\"Green\",[\"S\"]],[5,4,2,\"Brown\",[]],[4,4,1,\"Brown\",[]],[3,4,0,\"Brown\",[]],[5,3,4,\"Green\",[\"S\"]],[4,5,4,\"Green\",[\"S\"]],[4,3,3,\"Brown\",[]],[3,5,3,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,2,4,\"Green\",[]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[\"S\"]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[4,3,2,\"Brown\",[]],[4,2,4,\"Green\",[]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[\"S\"]],[5,4,0,\"Brown\",[]],[5,5,3,\"Brown\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,1,\"Brown\",[]],[5,2,4,\"Green\",[]],[3,3,0,\"Brown\",[]],[4,4,4,\"Green\",[\"S\"]],[3,6,4,\"Green\",[]],[3,4,3,\"Brown\",[]],[5,3,1,\"Brown\",[]],[5,5,2,\"Brown\",[]],[4,3,0,\"Brown\",[]],[4,5,1,\"Brown\",[]],[4,6,4,\"Green\",[]],[5,4,4,\"Green\",[\"S\"]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[3,4,2,\"Brown\",[]],[3,3,4,\"Green\",[\"S\"]],[5,5,1,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,6,4,\"Green\",[]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[3,5,4,\"Green\",[\"S\"]],[5,4,2,\"Brown\",[]],[4,4,1,\"Brown\",[]],[3,4,0,\"Brown\",[]],[5,3,4,\"Green\",[\"S\"]],[4,5,4,\"Green\",[\"S\"]],[4,3,3,\"Brown\",[]],[3,5,3,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T17:06:32.046)
  (NBestInd 0)
  (utterance "add green back")
  (targetFormula (: add green back))
  (targetValue
    (string
      [[3,2,4,\"Green\",[]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[\"S\"]],[6,3,4,\"Green\",[]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[4,3,2,\"Brown\",[]],[4,2,4,\"Green\",[]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[\"S\"]],[6,5,4,\"Green\",[]],[5,4,0,\"Brown\",[]],[5,5,3,\"Brown\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,1,\"Brown\",[]],[5,2,4,\"Green\",[]],[3,3,0,\"Brown\",[]],[4,4,4,\"Green\",[\"S\"]],[3,6,4,\"Green\",[]],[3,4,3,\"Brown\",[]],[5,3,1,\"Brown\",[]],[5,5,2,\"Brown\",[]],[4,3,0,\"Brown\",[]],[4,5,1,\"Brown\",[]],[4,6,4,\"Green\",[]],[5,4,4,\"Green\",[\"S\"]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[3,4,2,\"Brown\",[]],[3,3,4,\"Green\",[\"S\"]],[6,4,4,\"Green\",[]],[5,5,1,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,6,4,\"Green\",[]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[3,5,4,\"Green\",[\"S\"]],[5,4,2,\"Brown\",[]],[4,4,1,\"Brown\",[]],[3,4,0,\"Brown\",[]],[5,3,4,\"Green\",[\"S\"]],[4,5,4,\"Green\",[\"S\"]],[4,3,3,\"Brown\",[]],[3,5,3,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,2,4,\"Green\",[]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[\"S\"]],[6,3,4,\"Green\",[]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[4,3,2,\"Brown\",[]],[4,2,4,\"Green\",[]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[\"S\"]],[6,5,4,\"Green\",[]],[5,4,0,\"Brown\",[]],[5,5,3,\"Brown\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,1,\"Brown\",[]],[5,2,4,\"Green\",[]],[3,3,0,\"Brown\",[]],[4,4,4,\"Green\",[\"S\"]],[3,6,4,\"Green\",[]],[3,4,3,\"Brown\",[]],[5,3,1,\"Brown\",[]],[5,5,2,\"Brown\",[]],[4,3,0,\"Brown\",[]],[4,5,1,\"Brown\",[]],[4,6,4,\"Green\",[]],[5,4,4,\"Green\",[\"S\"]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[3,4,2,\"Brown\",[]],[3,3,4,\"Green\",[\"S\"]],[6,4,4,\"Green\",[]],[5,5,1,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,6,4,\"Green\",[]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[3,5,4,\"Green\",[\"S\"]],[5,4,2,\"Brown\",[]],[4,4,1,\"Brown\",[]],[3,4,0,\"Brown\",[]],[5,3,4,\"Green\",[\"S\"]],[4,5,4,\"Green\",[\"S\"]],[4,3,3,\"Brown\",[]],[3,5,3,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T17:06:34.584)
  (NBestInd 0)
  (utterance "add green front")
  (targetFormula (: add green front))
  (targetValue
    (string
      [[2,4,4,\"Green\",[]],[3,2,4,\"Green\",[]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[\"S\"]],[6,3,4,\"Green\",[]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[4,3,2,\"Brown\",[]],[4,2,4,\"Green\",[]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[\"S\"]],[6,5,4,\"Green\",[]],[5,4,0,\"Brown\",[]],[5,5,3,\"Brown\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,1,\"Brown\",[]],[5,2,4,\"Green\",[]],[3,3,0,\"Brown\",[]],[4,4,4,\"Green\",[\"S\"]],[3,6,4,\"Green\",[]],[3,4,3,\"Brown\",[]],[5,3,1,\"Brown\",[]],[5,5,2,\"Brown\",[]],[4,3,0,\"Brown\",[]],[2,3,4,\"Green\",[]],[4,5,1,\"Brown\",[]],[4,6,4,\"Green\",[]],[5,4,4,\"Green\",[\"S\"]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[3,4,2,\"Brown\",[]],[3,3,4,\"Green\",[\"S\"]],[2,5,4,\"Green\",[]],[6,4,4,\"Green\",[]],[5,5,1,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,6,4,\"Green\",[]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[3,5,4,\"Green\",[\"S\"]],[5,4,2,\"Brown\",[]],[4,4,1,\"Brown\",[]],[3,4,0,\"Brown\",[]],[5,3,4,\"Green\",[\"S\"]],[4,5,4,\"Green\",[\"S\"]],[4,3,3,\"Brown\",[]],[3,5,3,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T17:13:40.605)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T17:13:43.765)
  (NBestInd 0)
  (utterance "add brown")
  (targetFormula (: add brown top))
  (targetValue (string [[3,3,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T17:13:52.101)
  (NBestInd 0)
  (utterance "repeat 2 [ add brown left ]")
  (targetFormula (:loop (number 2) (: add brown left)))
  (targetValue (string [[3,5,0,\"Brown\",[]],[3,4,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,5,0,\"Brown\",[]],[3,4,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T17:13:57.797)
  (NBestInd 0)
  (utterance "select has color brown")
  (targetFormula (:for (color brown) (: select)))
  (targetValue (string [[3,5,0,\"Brown\",[\"S\"]],[3,4,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,5,0,\"Brown\",[\"S\"]],[3,4,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T17:14:09.598)
  (NBestInd 0)
  (utterance "repeat 2 [ add brown back ]")
  (targetFormula (:loop (number 2) (: add brown back)))
  (targetValue
    (string
      [[3,5,0,\"Brown\",[\"S\"]],[5,3,0,\"Brown\",[]],[3,4,0,\"Brown\",[\"S\"]],[5,5,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[4,4,0,\"Brown\",[]],[4,3,0,\"Brown\",[]],[5,4,0,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,5,0,\"Brown\",[\"S\"]],[5,3,0,\"Brown\",[]],[3,4,0,\"Brown\",[\"S\"]],[5,5,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[4,4,0,\"Brown\",[]],[4,3,0,\"Brown\",[]],[5,4,0,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T17:14:13.892)
  (NBestInd 0)
  (utterance "select has color brown")
  (targetFormula (:for (color brown) (: select)))
  (targetValue
    (string
      [[3,5,0,\"Brown\",[\"S\"]],[5,3,0,\"Brown\",[\"S\"]],[3,4,0,\"Brown\",[\"S\"]],[5,5,0,\"Brown\",[\"S\"]],[4,5,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]],[4,4,0,\"Brown\",[\"S\"]],[4,3,0,\"Brown\",[\"S\"]],[5,4,0,\"Brown\",[\"S\"]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,5,0,\"Brown\",[\"S\"]],[5,3,0,\"Brown\",[\"S\"]],[3,4,0,\"Brown\",[\"S\"]],[5,5,0,\"Brown\",[\"S\"]],[4,5,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]],[4,4,0,\"Brown\",[\"S\"]],[4,3,0,\"Brown\",[\"S\"]],[5,4,0,\"Brown\",[\"S\"]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T17:14:26.259)
  (NBestInd 0)
  (utterance "repeat 3 [ add brown ]")
  (targetFormula (:loop (number 3) (: add brown top)))
  (targetValue
    (string
      [[3,5,0,\"Brown\",[\"S\"]],[4,4,3,\"Brown\",[]],[5,4,1,\"Brown\",[]],[3,4,2,\"Brown\",[]],[4,4,0,\"Brown\",[\"S\"]],[4,5,3,\"Brown\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[5,5,1,\"Brown\",[]],[4,3,2,\"Brown\",[]],[5,3,0,\"Brown\",[\"S\"]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[\"S\"]],[3,3,1,\"Brown\",[]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[5,4,0,\"Brown\",[\"S\"]],[5,5,3,\"Brown\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[\"S\"]],[4,3,1,\"Brown\",[]],[3,5,1,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[5,4,2,\"Brown\",[]],[4,4,1,\"Brown\",[]],[3,4,3,\"Brown\",[]],[3,4,0,\"Brown\",[\"S\"]],[5,3,1,\"Brown\",[]],[5,5,2,\"Brown\",[]],[4,3,3,\"Brown\",[]],[4,3,0,\"Brown\",[\"S\"]],[3,5,3,\"Brown\",[]],[4,5,1,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,5,0,\"Brown\",[\"S\"]],[4,4,3,\"Brown\",[]],[5,4,1,\"Brown\",[]],[3,4,2,\"Brown\",[]],[4,4,0,\"Brown\",[\"S\"]],[4,5,3,\"Brown\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[5,5,1,\"Brown\",[]],[4,3,2,\"Brown\",[]],[5,3,0,\"Brown\",[\"S\"]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[\"S\"]],[3,3,1,\"Brown\",[]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[5,4,0,\"Brown\",[\"S\"]],[5,5,3,\"Brown\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[\"S\"]],[4,3,1,\"Brown\",[]],[3,5,1,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[5,4,2,\"Brown\",[]],[4,4,1,\"Brown\",[]],[3,4,3,\"Brown\",[]],[3,4,0,\"Brown\",[\"S\"]],[5,3,1,\"Brown\",[]],[5,5,2,\"Brown\",[]],[4,3,3,\"Brown\",[]],[4,3,0,\"Brown\",[\"S\"]],[3,5,3,\"Brown\",[]],[4,5,1,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T17:14:36.930)
  (NBestInd 0)
  (utterance "select very top of has color brown")
  (targetFormula (:for (call veryx top (color brown)) (: select)))
  (targetValue
    (string
      [[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[\"S\"]],[5,4,1,\"Brown\",[]],[3,4,2,\"Brown\",[]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[\"S\"]],[5,3,3,\"Brown\",[\"S\"]],[3,5,2,\"Brown\",[]],[5,5,1,\"Brown\",[]],[4,3,2,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,4,3,\"Brown\",[\"S\"]],[4,5,0,\"Brown\",[]],[3,3,1,\"Brown\",[]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,5,3,\"Brown\",[\"S\"]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[3,3,3,\"Brown\",[\"S\"]],[5,5,0,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,1,\"Brown\",[]],[3,3,0,\"Brown\",[]],[5,4,2,\"Brown\",[]],[4,4,1,\"Brown\",[]],[3,4,3,\"Brown\",[\"S\"]],[3,4,0,\"Brown\",[]],[5,3,1,\"Brown\",[]],[5,5,2,\"Brown\",[]],[4,3,3,\"Brown\",[\"S\"]],[4,3,0,\"Brown\",[]],[3,5,3,\"Brown\",[\"S\"]],[4,5,1,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[\"S\"]],[5,4,1,\"Brown\",[]],[3,4,2,\"Brown\",[]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[\"S\"]],[5,3,3,\"Brown\",[\"S\"]],[3,5,2,\"Brown\",[]],[5,5,1,\"Brown\",[]],[4,3,2,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,4,3,\"Brown\",[\"S\"]],[4,5,0,\"Brown\",[]],[3,3,1,\"Brown\",[]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,5,3,\"Brown\",[\"S\"]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[3,3,3,\"Brown\",[\"S\"]],[5,5,0,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,1,\"Brown\",[]],[3,3,0,\"Brown\",[]],[5,4,2,\"Brown\",[]],[4,4,1,\"Brown\",[]],[3,4,3,\"Brown\",[\"S\"]],[3,4,0,\"Brown\",[]],[5,3,1,\"Brown\",[]],[5,5,2,\"Brown\",[]],[4,3,3,\"Brown\",[\"S\"]],[4,3,0,\"Brown\",[]],[3,5,3,\"Brown\",[\"S\"]],[4,5,1,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T17:14:56.265)
  (NBestInd 0)
  (utterance "add green")
  (targetFormula (: add green top))
  (targetValue
    (string
      [[5,4,4,\"Green\",[]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[\"S\"]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[]],[3,4,2,\"Brown\",[]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[\"S\"]],[3,3,4,\"Green\",[]],[5,3,3,\"Brown\",[\"S\"]],[3,5,2,\"Brown\",[]],[5,5,1,\"Brown\",[]],[4,3,2,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,4,3,\"Brown\",[\"S\"]],[4,5,0,\"Brown\",[]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,5,3,\"Brown\",[\"S\"]],[4,3,4,\"Green\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[3,3,3,\"Brown\",[\"S\"]],[5,5,0,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,4,\"Green\",[]],[3,5,1,\"Brown\",[]],[3,3,0,\"Brown\",[]],[5,4,2,\"Brown\",[]],[4,4,4,\"Green\",[]],[4,4,1,\"Brown\",[]],[3,4,3,\"Brown\",[\"S\"]],[3,4,0,\"Brown\",[]],[5,3,4,\"Green\",[]],[5,3,1,\"Brown\",[]],[4,5,4,\"Green\",[]],[5,5,2,\"Brown\",[]],[4,3,3,\"Brown\",[\"S\"]],[4,3,0,\"Brown\",[]],[3,5,3,\"Brown\",[\"S\"]],[4,5,1,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[5,4,4,\"Green\",[]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[\"S\"]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[]],[3,4,2,\"Brown\",[]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[\"S\"]],[3,3,4,\"Green\",[]],[5,3,3,\"Brown\",[\"S\"]],[3,5,2,\"Brown\",[]],[5,5,1,\"Brown\",[]],[4,3,2,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,4,3,\"Brown\",[\"S\"]],[4,5,0,\"Brown\",[]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,5,3,\"Brown\",[\"S\"]],[4,3,4,\"Green\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[3,3,3,\"Brown\",[\"S\"]],[5,5,0,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,4,\"Green\",[]],[3,5,1,\"Brown\",[]],[3,3,0,\"Brown\",[]],[5,4,2,\"Brown\",[]],[4,4,4,\"Green\",[]],[4,4,1,\"Brown\",[]],[3,4,3,\"Brown\",[\"S\"]],[3,4,0,\"Brown\",[]],[5,3,4,\"Green\",[]],[5,3,1,\"Brown\",[]],[4,5,4,\"Green\",[]],[5,5,2,\"Brown\",[]],[4,3,3,\"Brown\",[\"S\"]],[4,3,0,\"Brown\",[]],[3,5,3,\"Brown\",[\"S\"]],[4,5,1,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T17:15:01.737)
  (NBestInd 0)
  (utterance "select very right of has color green")
  (targetFormula (:for (call veryx right (color green)) (: select)))
  (targetValue
    (string
      [[5,4,4,\"Green\",[]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[]],[3,4,2,\"Brown\",[]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[3,3,4,\"Green\",[\"S\"]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[5,5,1,\"Brown\",[]],[4,3,2,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,5,3,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,4,\"Green\",[]],[3,5,1,\"Brown\",[]],[3,3,0,\"Brown\",[]],[5,4,2,\"Brown\",[]],[4,4,4,\"Green\",[]],[4,4,1,\"Brown\",[]],[3,4,3,\"Brown\",[]],[3,4,0,\"Brown\",[]],[5,3,4,\"Green\",[\"S\"]],[5,3,1,\"Brown\",[]],[4,5,4,\"Green\",[]],[5,5,2,\"Brown\",[]],[4,3,3,\"Brown\",[]],[4,3,0,\"Brown\",[]],[3,5,3,\"Brown\",[]],[4,5,1,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[5,4,4,\"Green\",[]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[]],[3,4,2,\"Brown\",[]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[3,3,4,\"Green\",[\"S\"]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[5,5,1,\"Brown\",[]],[4,3,2,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,5,3,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,4,\"Green\",[]],[3,5,1,\"Brown\",[]],[3,3,0,\"Brown\",[]],[5,4,2,\"Brown\",[]],[4,4,4,\"Green\",[]],[4,4,1,\"Brown\",[]],[3,4,3,\"Brown\",[]],[3,4,0,\"Brown\",[]],[5,3,4,\"Green\",[\"S\"]],[5,3,1,\"Brown\",[]],[4,5,4,\"Green\",[]],[5,5,2,\"Brown\",[]],[4,3,3,\"Brown\",[]],[4,3,0,\"Brown\",[]],[3,5,3,\"Brown\",[]],[4,5,1,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T17:15:04.689)
  (NBestInd 0)
  (utterance "add green right")
  (targetFormula (: add green right))
  (targetValue
    (string
      [[5,4,4,\"Green\",[]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[3,2,4,\"Green\",[]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[]],[3,4,2,\"Brown\",[]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[3,3,4,\"Green\",[\"S\"]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[5,5,1,\"Brown\",[]],[4,3,2,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,4,3,\"Brown\",[]],[4,2,4,\"Green\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,5,3,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,4,\"Green\",[]],[3,5,1,\"Brown\",[]],[5,2,4,\"Green\",[]],[3,3,0,\"Brown\",[]],[5,4,2,\"Brown\",[]],[4,4,4,\"Green\",[]],[4,4,1,\"Brown\",[]],[3,4,3,\"Brown\",[]],[3,4,0,\"Brown\",[]],[5,3,4,\"Green\",[\"S\"]],[5,3,1,\"Brown\",[]],[4,5,4,\"Green\",[]],[5,5,2,\"Brown\",[]],[4,3,3,\"Brown\",[]],[4,3,0,\"Brown\",[]],[3,5,3,\"Brown\",[]],[4,5,1,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[5,4,4,\"Green\",[]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[3,2,4,\"Green\",[]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[]],[3,4,2,\"Brown\",[]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[3,3,4,\"Green\",[\"S\"]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[5,5,1,\"Brown\",[]],[4,3,2,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,4,3,\"Brown\",[]],[4,2,4,\"Green\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,5,3,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,4,\"Green\",[]],[3,5,1,\"Brown\",[]],[5,2,4,\"Green\",[]],[3,3,0,\"Brown\",[]],[5,4,2,\"Brown\",[]],[4,4,4,\"Green\",[]],[4,4,1,\"Brown\",[]],[3,4,3,\"Brown\",[]],[3,4,0,\"Brown\",[]],[5,3,4,\"Green\",[\"S\"]],[5,3,1,\"Brown\",[]],[4,5,4,\"Green\",[]],[5,5,2,\"Brown\",[]],[4,3,3,\"Brown\",[]],[4,3,0,\"Brown\",[]],[3,5,3,\"Brown\",[]],[4,5,1,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T17:15:07.041)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue
    (string
      [[3,2,4,\"Green\",[]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[4,3,2,\"Brown\",[]],[4,2,4,\"Green\",[]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[]],[5,4,0,\"Brown\",[]],[5,5,3,\"Brown\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,1,\"Brown\",[]],[5,2,4,\"Green\",[]],[3,3,0,\"Brown\",[]],[4,4,4,\"Green\",[]],[3,6,4,\"Green\",[]],[3,4,3,\"Brown\",[]],[5,3,1,\"Brown\",[]],[5,5,2,\"Brown\",[]],[4,3,0,\"Brown\",[]],[4,5,1,\"Brown\",[]],[4,6,4,\"Green\",[]],[5,4,4,\"Green\",[]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[3,4,2,\"Brown\",[]],[3,3,4,\"Green\",[\"S\"]],[5,5,1,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,6,4,\"Green\",[]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[3,5,4,\"Green\",[]],[5,4,2,\"Brown\",[]],[4,4,1,\"Brown\",[]],[3,4,0,\"Brown\",[]],[5,3,4,\"Green\",[\"S\"]],[4,5,4,\"Green\",[]],[4,3,3,\"Brown\",[]],[3,5,3,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,2,4,\"Green\",[]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[4,3,2,\"Brown\",[]],[4,2,4,\"Green\",[]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[]],[5,4,0,\"Brown\",[]],[5,5,3,\"Brown\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,1,\"Brown\",[]],[5,2,4,\"Green\",[]],[3,3,0,\"Brown\",[]],[4,4,4,\"Green\",[]],[3,6,4,\"Green\",[]],[3,4,3,\"Brown\",[]],[5,3,1,\"Brown\",[]],[5,5,2,\"Brown\",[]],[4,3,0,\"Brown\",[]],[4,5,1,\"Brown\",[]],[4,6,4,\"Green\",[]],[5,4,4,\"Green\",[]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[3,4,2,\"Brown\",[]],[3,3,4,\"Green\",[\"S\"]],[5,5,1,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,6,4,\"Green\",[]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[3,5,4,\"Green\",[]],[5,4,2,\"Brown\",[]],[4,4,1,\"Brown\",[]],[3,4,0,\"Brown\",[]],[5,3,4,\"Green\",[\"S\"]],[4,5,4,\"Green\",[]],[4,3,3,\"Brown\",[]],[3,5,3,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T17:15:16.136)
  (NBestInd 0)
  (utterance "select has color green")
  (targetFormula (:for (color green) (: select)))
  (targetValue
    (string
      [[3,2,4,\"Green\",[\"S\"]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[\"S\"]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[4,3,2,\"Brown\",[]],[4,2,4,\"Green\",[\"S\"]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[\"S\"]],[5,4,0,\"Brown\",[]],[5,5,3,\"Brown\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,1,\"Brown\",[]],[5,2,4,\"Green\",[\"S\"]],[3,3,0,\"Brown\",[]],[4,4,4,\"Green\",[\"S\"]],[3,6,4,\"Green\",[\"S\"]],[3,4,3,\"Brown\",[]],[5,3,1,\"Brown\",[]],[5,5,2,\"Brown\",[]],[4,3,0,\"Brown\",[]],[4,5,1,\"Brown\",[]],[4,6,4,\"Green\",[\"S\"]],[5,4,4,\"Green\",[\"S\"]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[3,4,2,\"Brown\",[]],[3,3,4,\"Green\",[\"S\"]],[5,5,1,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,6,4,\"Green\",[\"S\"]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[3,5,4,\"Green\",[\"S\"]],[5,4,2,\"Brown\",[]],[4,4,1,\"Brown\",[]],[3,4,0,\"Brown\",[]],[5,3,4,\"Green\",[\"S\"]],[4,5,4,\"Green\",[\"S\"]],[4,3,3,\"Brown\",[]],[3,5,3,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,2,4,\"Green\",[\"S\"]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[\"S\"]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[4,3,2,\"Brown\",[]],[4,2,4,\"Green\",[\"S\"]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[\"S\"]],[5,4,0,\"Brown\",[]],[5,5,3,\"Brown\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,1,\"Brown\",[]],[5,2,4,\"Green\",[\"S\"]],[3,3,0,\"Brown\",[]],[4,4,4,\"Green\",[\"S\"]],[3,6,4,\"Green\",[\"S\"]],[3,4,3,\"Brown\",[]],[5,3,1,\"Brown\",[]],[5,5,2,\"Brown\",[]],[4,3,0,\"Brown\",[]],[4,5,1,\"Brown\",[]],[4,6,4,\"Green\",[\"S\"]],[5,4,4,\"Green\",[\"S\"]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[3,4,2,\"Brown\",[]],[3,3,4,\"Green\",[\"S\"]],[5,5,1,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,6,4,\"Green\",[\"S\"]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[3,5,4,\"Green\",[\"S\"]],[5,4,2,\"Brown\",[]],[4,4,1,\"Brown\",[]],[3,4,0,\"Brown\",[]],[5,3,4,\"Green\",[\"S\"]],[4,5,4,\"Green\",[\"S\"]],[4,3,3,\"Brown\",[]],[3,5,3,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T17:15:19)
  (NBestInd 0)
  (utterance "add green back")
  (targetFormula (: add green back))
  (targetValue
    (string
      [[3,2,4,\"Green\",[\"S\"]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[\"S\"]],[6,3,4,\"Green\",[]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[4,3,2,\"Brown\",[]],[4,2,4,\"Green\",[\"S\"]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[\"S\"]],[6,5,4,\"Green\",[]],[5,4,0,\"Brown\",[]],[5,5,3,\"Brown\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,1,\"Brown\",[]],[5,2,4,\"Green\",[\"S\"]],[3,3,0,\"Brown\",[]],[4,4,4,\"Green\",[\"S\"]],[3,6,4,\"Green\",[\"S\"]],[3,4,3,\"Brown\",[]],[5,3,1,\"Brown\",[]],[5,5,2,\"Brown\",[]],[4,3,0,\"Brown\",[]],[4,5,1,\"Brown\",[]],[6,2,4,\"Green\",[]],[4,6,4,\"Green\",[\"S\"]],[5,4,4,\"Green\",[\"S\"]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[3,4,2,\"Brown\",[]],[3,3,4,\"Green\",[\"S\"]],[6,4,4,\"Green\",[]],[5,5,1,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,6,4,\"Green\",[\"S\"]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[3,5,4,\"Green\",[\"S\"]],[6,6,4,\"Green\",[]],[5,4,2,\"Brown\",[]],[4,4,1,\"Brown\",[]],[3,4,0,\"Brown\",[]],[5,3,4,\"Green\",[\"S\"]],[4,5,4,\"Green\",[\"S\"]],[4,3,3,\"Brown\",[]],[3,5,3,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,2,4,\"Green\",[\"S\"]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[\"S\"]],[6,3,4,\"Green\",[]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[4,3,2,\"Brown\",[]],[4,2,4,\"Green\",[\"S\"]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[\"S\"]],[6,5,4,\"Green\",[]],[5,4,0,\"Brown\",[]],[5,5,3,\"Brown\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,1,\"Brown\",[]],[5,2,4,\"Green\",[\"S\"]],[3,3,0,\"Brown\",[]],[4,4,4,\"Green\",[\"S\"]],[3,6,4,\"Green\",[\"S\"]],[3,4,3,\"Brown\",[]],[5,3,1,\"Brown\",[]],[5,5,2,\"Brown\",[]],[4,3,0,\"Brown\",[]],[4,5,1,\"Brown\",[]],[6,2,4,\"Green\",[]],[4,6,4,\"Green\",[\"S\"]],[5,4,4,\"Green\",[\"S\"]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[3,4,2,\"Brown\",[]],[3,3,4,\"Green\",[\"S\"]],[6,4,4,\"Green\",[]],[5,5,1,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,6,4,\"Green\",[\"S\"]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[3,5,4,\"Green\",[\"S\"]],[6,6,4,\"Green\",[]],[5,4,2,\"Brown\",[]],[4,4,1,\"Brown\",[]],[3,4,0,\"Brown\",[]],[5,3,4,\"Green\",[\"S\"]],[4,5,4,\"Green\",[\"S\"]],[4,3,3,\"Brown\",[]],[3,5,3,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T17:15:21.808)
  (NBestInd 0)
  (utterance "add green front")
  (targetFormula (: add green front))
  (targetValue
    (string
      [[2,4,4,\"Green\",[]],[3,2,4,\"Green\",[\"S\"]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[\"S\"]],[6,3,4,\"Green\",[]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[4,3,2,\"Brown\",[]],[4,2,4,\"Green\",[\"S\"]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[\"S\"]],[6,5,4,\"Green\",[]],[5,4,0,\"Brown\",[]],[2,6,4,\"Green\",[]],[5,5,3,\"Brown\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,1,\"Brown\",[]],[5,2,4,\"Green\",[\"S\"]],[3,3,0,\"Brown\",[]],[4,4,4,\"Green\",[\"S\"]],[3,6,4,\"Green\",[\"S\"]],[3,4,3,\"Brown\",[]],[5,3,1,\"Brown\",[]],[5,5,2,\"Brown\",[]],[4,3,0,\"Brown\",[]],[2,3,4,\"Green\",[]],[4,5,1,\"Brown\",[]],[6,2,4,\"Green\",[]],[4,6,4,\"Green\",[\"S\"]],[5,4,4,\"Green\",[\"S\"]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[3,4,2,\"Brown\",[]],[3,3,4,\"Green\",[\"S\"]],[2,5,4,\"Green\",[]],[6,4,4,\"Green\",[]],[5,5,1,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,6,4,\"Green\",[\"S\"]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[3,5,4,\"Green\",[\"S\"]],[6,6,4,\"Green\",[]],[5,4,2,\"Brown\",[]],[4,4,1,\"Brown\",[]],[2,2,4,\"Green\",[]],[3,4,0,\"Brown\",[]],[5,3,4,\"Green\",[\"S\"]],[4,5,4,\"Green\",[\"S\"]],[4,3,3,\"Brown\",[]],[3,5,3,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[2,4,4,\"Green\",[]],[3,2,4,\"Green\",[\"S\"]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[\"S\"]],[6,3,4,\"Green\",[]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[4,3,2,\"Brown\",[]],[4,2,4,\"Green\",[\"S\"]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[\"S\"]],[6,5,4,\"Green\",[]],[5,4,0,\"Brown\",[]],[2,6,4,\"Green\",[]],[5,5,3,\"Brown\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,1,\"Brown\",[]],[5,2,4,\"Green\",[\"S\"]],[3,3,0,\"Brown\",[]],[4,4,4,\"Green\",[\"S\"]],[3,6,4,\"Green\",[\"S\"]],[3,4,3,\"Brown\",[]],[5,3,1,\"Brown\",[]],[5,5,2,\"Brown\",[]],[4,3,0,\"Brown\",[]],[2,3,4,\"Green\",[]],[4,5,1,\"Brown\",[]],[6,2,4,\"Green\",[]],[4,6,4,\"Green\",[\"S\"]],[5,4,4,\"Green\",[\"S\"]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[3,4,2,\"Brown\",[]],[3,3,4,\"Green\",[\"S\"]],[2,5,4,\"Green\",[]],[6,4,4,\"Green\",[]],[5,5,1,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,6,4,\"Green\",[\"S\"]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[3,5,4,\"Green\",[\"S\"]],[6,6,4,\"Green\",[]],[5,4,2,\"Brown\",[]],[4,4,1,\"Brown\",[]],[2,2,4,\"Green\",[]],[3,4,0,\"Brown\",[]],[5,3,4,\"Green\",[\"S\"]],[4,5,4,\"Green\",[\"S\"]],[4,3,3,\"Brown\",[]],[3,5,3,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T17:15:24.808)
  (NBestInd 0)
  (utterance "add green")
  (targetFormula (: add green top))
  (targetValue
    (string
      [[3,4,5,\"Green\",[]],[4,2,5,\"Green\",[]],[2,4,4,\"Green\",[]],[3,2,4,\"Green\",[\"S\"]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[\"S\"]],[6,3,4,\"Green\",[]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[5,2,5,\"Green\",[]],[4,3,2,\"Brown\",[]],[4,4,5,\"Green\",[]],[4,2,4,\"Green\",[\"S\"]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[\"S\"]],[3,6,5,\"Green\",[]],[6,5,4,\"Green\",[]],[5,4,0,\"Brown\",[]],[2,6,4,\"Green\",[]],[5,5,3,\"Brown\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,1,\"Brown\",[]],[5,2,4,\"Green\",[\"S\"]],[3,3,0,\"Brown\",[]],[5,4,5,\"Green\",[]],[4,6,5,\"Green\",[]],[4,4,4,\"Green\",[\"S\"]],[3,6,4,\"Green\",[\"S\"]],[3,4,3,\"Brown\",[]],[5,3,1,\"Brown\",[]],[3,3,5,\"Green\",[]],[5,5,2,\"Brown\",[]],[4,3,0,\"Brown\",[]],[5,6,5,\"Green\",[]],[2,3,4,\"Green\",[]],[4,5,1,\"Brown\",[]],[6,2,4,\"Green\",[]],[4,6,4,\"Green\",[\"S\"]],[5,4,4,\"Green\",[\"S\"]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[4,3,5,\"Green\",[]],[3,4,2,\"Brown\",[]],[3,5,5,\"Green\",[]],[3,3,4,\"Green\",[\"S\"]],[2,5,4,\"Green\",[]],[6,4,4,\"Green\",[]],[5,5,1,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,6,4,\"Green\",[\"S\"]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[]],[4,4,2,\"Brown\",[]],[5,3,5,\"Green\",[]],[3,4,1,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[4,5,5,\"Green\",[]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[3,5,4,\"Green\",[\"S\"]],[6,6,4,\"Green\",[]],[5,4,2,\"Brown\",[]],[3,2,5,\"Green\",[]],[4,4,1,\"Brown\",[]],[2,2,4,\"Green\",[]],[3,4,0,\"Brown\",[]],[5,5,5,\"Green\",[]],[5,3,4,\"Green\",[\"S\"]],[4,5,4,\"Green\",[\"S\"]],[4,3,3,\"Brown\",[]],[3,5,3,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,4,5,\"Green\",[]],[4,2,5,\"Green\",[]],[2,4,4,\"Green\",[]],[3,2,4,\"Green\",[\"S\"]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[\"S\"]],[6,3,4,\"Green\",[]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[5,2,5,\"Green\",[]],[4,3,2,\"Brown\",[]],[4,4,5,\"Green\",[]],[4,2,4,\"Green\",[\"S\"]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[\"S\"]],[3,6,5,\"Green\",[]],[6,5,4,\"Green\",[]],[5,4,0,\"Brown\",[]],[2,6,4,\"Green\",[]],[5,5,3,\"Brown\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,1,\"Brown\",[]],[5,2,4,\"Green\",[\"S\"]],[3,3,0,\"Brown\",[]],[5,4,5,\"Green\",[]],[4,6,5,\"Green\",[]],[4,4,4,\"Green\",[\"S\"]],[3,6,4,\"Green\",[\"S\"]],[3,4,3,\"Brown\",[]],[5,3,1,\"Brown\",[]],[3,3,5,\"Green\",[]],[5,5,2,\"Brown\",[]],[4,3,0,\"Brown\",[]],[5,6,5,\"Green\",[]],[2,3,4,\"Green\",[]],[4,5,1,\"Brown\",[]],[6,2,4,\"Green\",[]],[4,6,4,\"Green\",[\"S\"]],[5,4,4,\"Green\",[\"S\"]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[4,3,5,\"Green\",[]],[3,4,2,\"Brown\",[]],[3,5,5,\"Green\",[]],[3,3,4,\"Green\",[\"S\"]],[2,5,4,\"Green\",[]],[6,4,4,\"Green\",[]],[5,5,1,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,6,4,\"Green\",[\"S\"]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[]],[4,4,2,\"Brown\",[]],[5,3,5,\"Green\",[]],[3,4,1,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[4,5,5,\"Green\",[]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[3,5,4,\"Green\",[\"S\"]],[6,6,4,\"Green\",[]],[5,4,2,\"Brown\",[]],[3,2,5,\"Green\",[]],[4,4,1,\"Brown\",[]],[2,2,4,\"Green\",[]],[3,4,0,\"Brown\",[]],[5,5,5,\"Green\",[]],[5,3,4,\"Green\",[\"S\"]],[4,5,4,\"Green\",[\"S\"]],[4,3,3,\"Brown\",[]],[3,5,3,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T17:15:32.047)
  (NBestInd 0)
  (utterance "select nothing")
  (targetFormula (:for nothing (: select)))
  (targetValue
    (string
      [[3,4,5,\"Green\",[]],[4,2,5,\"Green\",[]],[2,4,4,\"Green\",[]],[3,2,4,\"Green\",[]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[]],[6,3,4,\"Green\",[]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[5,2,5,\"Green\",[]],[4,3,2,\"Brown\",[]],[4,4,5,\"Green\",[]],[4,2,4,\"Green\",[]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[]],[3,6,5,\"Green\",[]],[6,5,4,\"Green\",[]],[5,4,0,\"Brown\",[]],[2,6,4,\"Green\",[]],[5,5,3,\"Brown\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,1,\"Brown\",[]],[5,2,4,\"Green\",[]],[3,3,0,\"Brown\",[]],[5,4,5,\"Green\",[]],[4,6,5,\"Green\",[]],[4,4,4,\"Green\",[]],[3,6,4,\"Green\",[]],[3,4,3,\"Brown\",[]],[5,3,1,\"Brown\",[]],[3,3,5,\"Green\",[]],[5,5,2,\"Brown\",[]],[4,3,0,\"Brown\",[]],[5,6,5,\"Green\",[]],[2,3,4,\"Green\",[]],[4,5,1,\"Brown\",[]],[6,2,4,\"Green\",[]],[4,6,4,\"Green\",[]],[5,4,4,\"Green\",[]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[4,3,5,\"Green\",[]],[3,4,2,\"Brown\",[]],[3,5,5,\"Green\",[]],[3,3,4,\"Green\",[]],[2,5,4,\"Green\",[]],[6,4,4,\"Green\",[]],[5,5,1,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,6,4,\"Green\",[]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[]],[4,4,2,\"Brown\",[]],[5,3,5,\"Green\",[]],[3,4,1,\"Brown\",[]],[4,3,4,\"Green\",[]],[4,5,5,\"Green\",[]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[3,5,4,\"Green\",[]],[6,6,4,\"Green\",[]],[5,4,2,\"Brown\",[]],[3,2,5,\"Green\",[]],[4,4,1,\"Brown\",[]],[2,2,4,\"Green\",[]],[3,4,0,\"Brown\",[]],[5,5,5,\"Green\",[]],[5,3,4,\"Green\",[]],[4,5,4,\"Green\",[]],[4,3,3,\"Brown\",[]],[3,5,3,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T17:16:16.077)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T17:16:17.637)
  (NBestInd 0)
  (utterance "add brown")
  (targetFormula (: add brown top))
  (targetValue (string [[3,3,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T17:16:24.660)
  (NBestInd 0)
  (utterance "repeat 2 [ add brown left ]")
  (targetFormula (:loop (number 2) (: add brown left)))
  (targetValue (string [[3,5,0,\"Brown\",[]],[3,4,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,5,0,\"Brown\",[]],[3,4,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T17:16:35.828)
  (NBestInd 0)
  (utterance "select has color brown")
  (targetFormula (:for (color brown) (: select)))
  (targetValue (string [[3,5,0,\"Brown\",[\"S\"]],[3,4,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,5,0,\"Brown\",[\"S\"]],[3,4,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T17:16:40.500)
  (NBestInd 0)
  (utterance "repeat 2 [ add brown back ]")
  (targetFormula (:loop (number 2) (: add brown back)))
  (targetValue
    (string
      [[3,5,0,\"Brown\",[\"S\"]],[5,3,0,\"Brown\",[]],[3,4,0,\"Brown\",[\"S\"]],[5,5,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[4,4,0,\"Brown\",[]],[4,3,0,\"Brown\",[]],[5,4,0,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,5,0,\"Brown\",[\"S\"]],[5,3,0,\"Brown\",[]],[3,4,0,\"Brown\",[\"S\"]],[5,5,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[4,4,0,\"Brown\",[]],[4,3,0,\"Brown\",[]],[5,4,0,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T17:16:44.428)
  (NBestInd 0)
  (utterance "select has color brown")
  (targetFormula (:for (color brown) (: select)))
  (targetValue
    (string
      [[3,5,0,\"Brown\",[\"S\"]],[5,3,0,\"Brown\",[\"S\"]],[3,4,0,\"Brown\",[\"S\"]],[5,5,0,\"Brown\",[\"S\"]],[4,5,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]],[4,4,0,\"Brown\",[\"S\"]],[4,3,0,\"Brown\",[\"S\"]],[5,4,0,\"Brown\",[\"S\"]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,5,0,\"Brown\",[\"S\"]],[5,3,0,\"Brown\",[\"S\"]],[3,4,0,\"Brown\",[\"S\"]],[5,5,0,\"Brown\",[\"S\"]],[4,5,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]],[4,4,0,\"Brown\",[\"S\"]],[4,3,0,\"Brown\",[\"S\"]],[5,4,0,\"Brown\",[\"S\"]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T17:16:50.659)
  (NBestInd 0)
  (utterance "repeat 3 [ add brown ]")
  (targetFormula (:loop (number 3) (: add brown top)))
  (targetValue
    (string
      [[3,5,0,\"Brown\",[\"S\"]],[4,4,3,\"Brown\",[]],[5,4,1,\"Brown\",[]],[3,4,2,\"Brown\",[]],[4,4,0,\"Brown\",[\"S\"]],[4,5,3,\"Brown\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[5,5,1,\"Brown\",[]],[4,3,2,\"Brown\",[]],[5,3,0,\"Brown\",[\"S\"]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[\"S\"]],[3,3,1,\"Brown\",[]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[5,4,0,\"Brown\",[\"S\"]],[5,5,3,\"Brown\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[\"S\"]],[4,3,1,\"Brown\",[]],[3,5,1,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[5,4,2,\"Brown\",[]],[4,4,1,\"Brown\",[]],[3,4,3,\"Brown\",[]],[3,4,0,\"Brown\",[\"S\"]],[5,3,1,\"Brown\",[]],[5,5,2,\"Brown\",[]],[4,3,3,\"Brown\",[]],[4,3,0,\"Brown\",[\"S\"]],[3,5,3,\"Brown\",[]],[4,5,1,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,5,0,\"Brown\",[\"S\"]],[4,4,3,\"Brown\",[]],[5,4,1,\"Brown\",[]],[3,4,2,\"Brown\",[]],[4,4,0,\"Brown\",[\"S\"]],[4,5,3,\"Brown\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[5,5,1,\"Brown\",[]],[4,3,2,\"Brown\",[]],[5,3,0,\"Brown\",[\"S\"]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[\"S\"]],[3,3,1,\"Brown\",[]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[5,4,0,\"Brown\",[\"S\"]],[5,5,3,\"Brown\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[\"S\"]],[4,3,1,\"Brown\",[]],[3,5,1,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[5,4,2,\"Brown\",[]],[4,4,1,\"Brown\",[]],[3,4,3,\"Brown\",[]],[3,4,0,\"Brown\",[\"S\"]],[5,3,1,\"Brown\",[]],[5,5,2,\"Brown\",[]],[4,3,3,\"Brown\",[]],[4,3,0,\"Brown\",[\"S\"]],[3,5,3,\"Brown\",[]],[4,5,1,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T17:16:54.195)
  (NBestInd 0)
  (utterance "add green")
  (targetFormula (: add green top))
  (targetValue
    (string
      [[5,4,4,\"Green\",[]],[3,5,0,\"Brown\",[\"S\"]],[4,4,3,\"Brown\",[]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[]],[3,4,2,\"Brown\",[]],[4,4,0,\"Brown\",[\"S\"]],[4,5,3,\"Brown\",[]],[3,3,4,\"Green\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[5,5,1,\"Brown\",[]],[4,3,2,\"Brown\",[]],[5,3,0,\"Brown\",[\"S\"]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[\"S\"]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[5,4,0,\"Brown\",[\"S\"]],[5,5,3,\"Brown\",[]],[4,3,4,\"Green\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[\"S\"]],[4,3,1,\"Brown\",[]],[3,5,4,\"Green\",[]],[3,5,1,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[5,4,2,\"Brown\",[]],[4,4,4,\"Green\",[]],[4,4,1,\"Brown\",[]],[3,4,3,\"Brown\",[]],[3,4,0,\"Brown\",[\"S\"]],[5,3,4,\"Green\",[]],[5,3,1,\"Brown\",[]],[4,5,4,\"Green\",[]],[5,5,2,\"Brown\",[]],[4,3,3,\"Brown\",[]],[4,3,0,\"Brown\",[\"S\"]],[3,5,3,\"Brown\",[]],[4,5,1,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[5,4,4,\"Green\",[]],[3,5,0,\"Brown\",[\"S\"]],[4,4,3,\"Brown\",[]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[]],[3,4,2,\"Brown\",[]],[4,4,0,\"Brown\",[\"S\"]],[4,5,3,\"Brown\",[]],[3,3,4,\"Green\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[5,5,1,\"Brown\",[]],[4,3,2,\"Brown\",[]],[5,3,0,\"Brown\",[\"S\"]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[\"S\"]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[5,4,0,\"Brown\",[\"S\"]],[5,5,3,\"Brown\",[]],[4,3,4,\"Green\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[\"S\"]],[4,3,1,\"Brown\",[]],[3,5,4,\"Green\",[]],[3,5,1,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[5,4,2,\"Brown\",[]],[4,4,4,\"Green\",[]],[4,4,1,\"Brown\",[]],[3,4,3,\"Brown\",[]],[3,4,0,\"Brown\",[\"S\"]],[5,3,4,\"Green\",[]],[5,3,1,\"Brown\",[]],[4,5,4,\"Green\",[]],[5,5,2,\"Brown\",[]],[4,3,3,\"Brown\",[]],[4,3,0,\"Brown\",[\"S\"]],[3,5,3,\"Brown\",[]],[4,5,1,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T17:16:59.834)
  (NBestInd 0)
  (utterance "select has color green")
  (targetFormula (:for (color green) (: select)))
  (targetValue
    (string
      [[5,4,4,\"Green\",[\"S\"]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[\"S\"]],[3,4,2,\"Brown\",[]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[3,3,4,\"Green\",[\"S\"]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[5,5,1,\"Brown\",[]],[4,3,2,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[\"S\"]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,5,3,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,4,\"Green\",[\"S\"]],[3,5,1,\"Brown\",[]],[3,3,0,\"Brown\",[]],[5,4,2,\"Brown\",[]],[4,4,4,\"Green\",[\"S\"]],[4,4,1,\"Brown\",[]],[3,4,3,\"Brown\",[]],[3,4,0,\"Brown\",[]],[5,3,4,\"Green\",[\"S\"]],[5,3,1,\"Brown\",[]],[4,5,4,\"Green\",[\"S\"]],[5,5,2,\"Brown\",[]],[4,3,3,\"Brown\",[]],[4,3,0,\"Brown\",[]],[3,5,3,\"Brown\",[]],[4,5,1,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[5,4,4,\"Green\",[\"S\"]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[\"S\"]],[3,4,2,\"Brown\",[]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[3,3,4,\"Green\",[\"S\"]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[5,5,1,\"Brown\",[]],[4,3,2,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[\"S\"]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,5,3,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,4,\"Green\",[\"S\"]],[3,5,1,\"Brown\",[]],[3,3,0,\"Brown\",[]],[5,4,2,\"Brown\",[]],[4,4,4,\"Green\",[\"S\"]],[4,4,1,\"Brown\",[]],[3,4,3,\"Brown\",[]],[3,4,0,\"Brown\",[]],[5,3,4,\"Green\",[\"S\"]],[5,3,1,\"Brown\",[]],[4,5,4,\"Green\",[\"S\"]],[5,5,2,\"Brown\",[]],[4,3,3,\"Brown\",[]],[4,3,0,\"Brown\",[]],[3,5,3,\"Brown\",[]],[4,5,1,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T17:17:03.042)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue
    (string
      [[4,6,4,\"Green\",[]],[5,4,4,\"Green\",[\"S\"]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[\"S\"]],[3,4,2,\"Brown\",[]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[3,3,4,\"Green\",[\"S\"]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[5,5,1,\"Brown\",[]],[4,3,2,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,6,4,\"Green\",[]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[\"S\"]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,5,3,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,4,\"Green\",[\"S\"]],[3,5,1,\"Brown\",[]],[3,3,0,\"Brown\",[]],[5,4,2,\"Brown\",[]],[4,4,4,\"Green\",[\"S\"]],[4,4,1,\"Brown\",[]],[3,6,4,\"Green\",[]],[3,4,3,\"Brown\",[]],[3,4,0,\"Brown\",[]],[5,3,4,\"Green\",[\"S\"]],[5,3,1,\"Brown\",[]],[4,5,4,\"Green\",[\"S\"]],[5,5,2,\"Brown\",[]],[4,3,3,\"Brown\",[]],[4,3,0,\"Brown\",[]],[3,5,3,\"Brown\",[]],[4,5,1,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[4,6,4,\"Green\",[]],[5,4,4,\"Green\",[\"S\"]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[\"S\"]],[3,4,2,\"Brown\",[]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[3,3,4,\"Green\",[\"S\"]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[5,5,1,\"Brown\",[]],[4,3,2,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,6,4,\"Green\",[]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[\"S\"]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,5,3,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,4,\"Green\",[\"S\"]],[3,5,1,\"Brown\",[]],[3,3,0,\"Brown\",[]],[5,4,2,\"Brown\",[]],[4,4,4,\"Green\",[\"S\"]],[4,4,1,\"Brown\",[]],[3,6,4,\"Green\",[]],[3,4,3,\"Brown\",[]],[3,4,0,\"Brown\",[]],[5,3,4,\"Green\",[\"S\"]],[5,3,1,\"Brown\",[]],[4,5,4,\"Green\",[\"S\"]],[5,5,2,\"Brown\",[]],[4,3,3,\"Brown\",[]],[4,3,0,\"Brown\",[]],[3,5,3,\"Brown\",[]],[4,5,1,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T17:17:05.531)
  (NBestInd 0)
  (utterance "add green right")
  (targetFormula (: add green right))
  (targetValue
    (string
      [[3,2,4,\"Green\",[]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[\"S\"]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[4,3,2,\"Brown\",[]],[4,2,4,\"Green\",[]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[\"S\"]],[5,4,0,\"Brown\",[]],[5,5,3,\"Brown\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,1,\"Brown\",[]],[5,2,4,\"Green\",[]],[3,3,0,\"Brown\",[]],[4,4,4,\"Green\",[\"S\"]],[3,6,4,\"Green\",[]],[3,4,3,\"Brown\",[]],[5,3,1,\"Brown\",[]],[5,5,2,\"Brown\",[]],[4,3,0,\"Brown\",[]],[4,5,1,\"Brown\",[]],[4,6,4,\"Green\",[]],[5,4,4,\"Green\",[\"S\"]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[3,4,2,\"Brown\",[]],[3,3,4,\"Green\",[\"S\"]],[5,5,1,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,6,4,\"Green\",[]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[3,5,4,\"Green\",[\"S\"]],[5,4,2,\"Brown\",[]],[4,4,1,\"Brown\",[]],[3,4,0,\"Brown\",[]],[5,3,4,\"Green\",[\"S\"]],[4,5,4,\"Green\",[\"S\"]],[4,3,3,\"Brown\",[]],[3,5,3,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,2,4,\"Green\",[]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[\"S\"]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[4,3,2,\"Brown\",[]],[4,2,4,\"Green\",[]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[\"S\"]],[5,4,0,\"Brown\",[]],[5,5,3,\"Brown\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,1,\"Brown\",[]],[5,2,4,\"Green\",[]],[3,3,0,\"Brown\",[]],[4,4,4,\"Green\",[\"S\"]],[3,6,4,\"Green\",[]],[3,4,3,\"Brown\",[]],[5,3,1,\"Brown\",[]],[5,5,2,\"Brown\",[]],[4,3,0,\"Brown\",[]],[4,5,1,\"Brown\",[]],[4,6,4,\"Green\",[]],[5,4,4,\"Green\",[\"S\"]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[3,4,2,\"Brown\",[]],[3,3,4,\"Green\",[\"S\"]],[5,5,1,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,6,4,\"Green\",[]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[3,5,4,\"Green\",[\"S\"]],[5,4,2,\"Brown\",[]],[4,4,1,\"Brown\",[]],[3,4,0,\"Brown\",[]],[5,3,4,\"Green\",[\"S\"]],[4,5,4,\"Green\",[\"S\"]],[4,3,3,\"Brown\",[]],[3,5,3,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T17:17:08.337)
  (NBestInd 0)
  (utterance "select has color green")
  (targetFormula (:for (color green) (: select)))
  (targetValue
    (string
      [[3,2,4,\"Green\",[\"S\"]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[\"S\"]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[4,3,2,\"Brown\",[]],[4,2,4,\"Green\",[\"S\"]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[\"S\"]],[5,4,0,\"Brown\",[]],[5,5,3,\"Brown\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,1,\"Brown\",[]],[5,2,4,\"Green\",[\"S\"]],[3,3,0,\"Brown\",[]],[4,4,4,\"Green\",[\"S\"]],[3,6,4,\"Green\",[\"S\"]],[3,4,3,\"Brown\",[]],[5,3,1,\"Brown\",[]],[5,5,2,\"Brown\",[]],[4,3,0,\"Brown\",[]],[4,5,1,\"Brown\",[]],[4,6,4,\"Green\",[\"S\"]],[5,4,4,\"Green\",[\"S\"]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[3,4,2,\"Brown\",[]],[3,3,4,\"Green\",[\"S\"]],[5,5,1,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,6,4,\"Green\",[\"S\"]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[3,5,4,\"Green\",[\"S\"]],[5,4,2,\"Brown\",[]],[4,4,1,\"Brown\",[]],[3,4,0,\"Brown\",[]],[5,3,4,\"Green\",[\"S\"]],[4,5,4,\"Green\",[\"S\"]],[4,3,3,\"Brown\",[]],[3,5,3,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,2,4,\"Green\",[\"S\"]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[\"S\"]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[4,3,2,\"Brown\",[]],[4,2,4,\"Green\",[\"S\"]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[\"S\"]],[5,4,0,\"Brown\",[]],[5,5,3,\"Brown\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,1,\"Brown\",[]],[5,2,4,\"Green\",[\"S\"]],[3,3,0,\"Brown\",[]],[4,4,4,\"Green\",[\"S\"]],[3,6,4,\"Green\",[\"S\"]],[3,4,3,\"Brown\",[]],[5,3,1,\"Brown\",[]],[5,5,2,\"Brown\",[]],[4,3,0,\"Brown\",[]],[4,5,1,\"Brown\",[]],[4,6,4,\"Green\",[\"S\"]],[5,4,4,\"Green\",[\"S\"]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[3,4,2,\"Brown\",[]],[3,3,4,\"Green\",[\"S\"]],[5,5,1,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,6,4,\"Green\",[\"S\"]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[]],[4,4,2,\"Brown\",[]],[3,4,1,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[3,5,4,\"Green\",[\"S\"]],[5,4,2,\"Brown\",[]],[4,4,1,\"Brown\",[]],[3,4,0,\"Brown\",[]],[5,3,4,\"Green\",[\"S\"]],[4,5,4,\"Green\",[\"S\"]],[4,3,3,\"Brown\",[]],[3,5,3,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T17:17:10.956)
  (NBestInd 0)
  (utterance "add green")
  (targetFormula (: add green top))
  (targetValue
    (string
      [[3,4,5,\"Green\",[]],[4,2,5,\"Green\",[]],[3,2,4,\"Green\",[\"S\"]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[\"S\"]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[5,2,5,\"Green\",[]],[4,3,2,\"Brown\",[]],[4,4,5,\"Green\",[]],[4,2,4,\"Green\",[\"S\"]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[\"S\"]],[3,6,5,\"Green\",[]],[5,4,0,\"Brown\",[]],[5,5,3,\"Brown\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,1,\"Brown\",[]],[5,2,4,\"Green\",[\"S\"]],[3,3,0,\"Brown\",[]],[5,4,5,\"Green\",[]],[4,6,5,\"Green\",[]],[4,4,4,\"Green\",[\"S\"]],[3,6,4,\"Green\",[\"S\"]],[3,4,3,\"Brown\",[]],[5,3,1,\"Brown\",[]],[3,3,5,\"Green\",[]],[5,5,2,\"Brown\",[]],[4,3,0,\"Brown\",[]],[5,6,5,\"Green\",[]],[4,5,1,\"Brown\",[]],[4,6,4,\"Green\",[\"S\"]],[5,4,4,\"Green\",[\"S\"]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[4,3,5,\"Green\",[]],[3,4,2,\"Brown\",[]],[3,5,5,\"Green\",[]],[3,3,4,\"Green\",[\"S\"]],[5,5,1,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,6,4,\"Green\",[\"S\"]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[]],[4,4,2,\"Brown\",[]],[5,3,5,\"Green\",[]],[3,4,1,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[4,5,5,\"Green\",[]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[3,5,4,\"Green\",[\"S\"]],[5,4,2,\"Brown\",[]],[3,2,5,\"Green\",[]],[4,4,1,\"Brown\",[]],[3,4,0,\"Brown\",[]],[5,5,5,\"Green\",[]],[5,3,4,\"Green\",[\"S\"]],[4,5,4,\"Green\",[\"S\"]],[4,3,3,\"Brown\",[]],[3,5,3,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,4,5,\"Green\",[]],[4,2,5,\"Green\",[]],[3,2,4,\"Green\",[\"S\"]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[\"S\"]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[5,2,5,\"Green\",[]],[4,3,2,\"Brown\",[]],[4,4,5,\"Green\",[]],[4,2,4,\"Green\",[\"S\"]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[\"S\"]],[3,6,5,\"Green\",[]],[5,4,0,\"Brown\",[]],[5,5,3,\"Brown\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,1,\"Brown\",[]],[5,2,4,\"Green\",[\"S\"]],[3,3,0,\"Brown\",[]],[5,4,5,\"Green\",[]],[4,6,5,\"Green\",[]],[4,4,4,\"Green\",[\"S\"]],[3,6,4,\"Green\",[\"S\"]],[3,4,3,\"Brown\",[]],[5,3,1,\"Brown\",[]],[3,3,5,\"Green\",[]],[5,5,2,\"Brown\",[]],[4,3,0,\"Brown\",[]],[5,6,5,\"Green\",[]],[4,5,1,\"Brown\",[]],[4,6,4,\"Green\",[\"S\"]],[5,4,4,\"Green\",[\"S\"]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[4,3,5,\"Green\",[]],[3,4,2,\"Brown\",[]],[3,5,5,\"Green\",[]],[3,3,4,\"Green\",[\"S\"]],[5,5,1,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,6,4,\"Green\",[\"S\"]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[]],[4,4,2,\"Brown\",[]],[5,3,5,\"Green\",[]],[3,4,1,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[4,5,5,\"Green\",[]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[3,5,4,\"Green\",[\"S\"]],[5,4,2,\"Brown\",[]],[3,2,5,\"Green\",[]],[4,4,1,\"Brown\",[]],[3,4,0,\"Brown\",[]],[5,5,5,\"Green\",[]],[5,3,4,\"Green\",[\"S\"]],[4,5,4,\"Green\",[\"S\"]],[4,3,3,\"Brown\",[]],[3,5,3,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T17:17:14.954)
  (NBestInd 0)
  (utterance "add green back")
  (targetFormula (: add green back))
  (targetValue
    (string
      [[3,4,5,\"Green\",[]],[4,2,5,\"Green\",[]],[3,2,4,\"Green\",[\"S\"]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[\"S\"]],[6,3,4,\"Green\",[]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[5,2,5,\"Green\",[]],[4,3,2,\"Brown\",[]],[4,4,5,\"Green\",[]],[4,2,4,\"Green\",[\"S\"]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[\"S\"]],[3,6,5,\"Green\",[]],[6,5,4,\"Green\",[]],[5,4,0,\"Brown\",[]],[5,5,3,\"Brown\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,1,\"Brown\",[]],[5,2,4,\"Green\",[\"S\"]],[3,3,0,\"Brown\",[]],[5,4,5,\"Green\",[]],[4,6,5,\"Green\",[]],[4,4,4,\"Green\",[\"S\"]],[3,6,4,\"Green\",[\"S\"]],[3,4,3,\"Brown\",[]],[5,3,1,\"Brown\",[]],[3,3,5,\"Green\",[]],[5,5,2,\"Brown\",[]],[4,3,0,\"Brown\",[]],[5,6,5,\"Green\",[]],[4,5,1,\"Brown\",[]],[6,2,4,\"Green\",[]],[4,6,4,\"Green\",[\"S\"]],[5,4,4,\"Green\",[\"S\"]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[4,3,5,\"Green\",[]],[3,4,2,\"Brown\",[]],[3,5,5,\"Green\",[]],[3,3,4,\"Green\",[\"S\"]],[6,4,4,\"Green\",[]],[5,5,1,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,6,4,\"Green\",[\"S\"]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[]],[4,4,2,\"Brown\",[]],[5,3,5,\"Green\",[]],[3,4,1,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[4,5,5,\"Green\",[]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[3,5,4,\"Green\",[\"S\"]],[6,6,4,\"Green\",[]],[5,4,2,\"Brown\",[]],[3,2,5,\"Green\",[]],[4,4,1,\"Brown\",[]],[3,4,0,\"Brown\",[]],[5,5,5,\"Green\",[]],[5,3,4,\"Green\",[\"S\"]],[4,5,4,\"Green\",[\"S\"]],[4,3,3,\"Brown\",[]],[3,5,3,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,4,5,\"Green\",[]],[4,2,5,\"Green\",[]],[3,2,4,\"Green\",[\"S\"]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[\"S\"]],[6,3,4,\"Green\",[]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[5,2,5,\"Green\",[]],[4,3,2,\"Brown\",[]],[4,4,5,\"Green\",[]],[4,2,4,\"Green\",[\"S\"]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[\"S\"]],[3,6,5,\"Green\",[]],[6,5,4,\"Green\",[]],[5,4,0,\"Brown\",[]],[5,5,3,\"Brown\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,1,\"Brown\",[]],[5,2,4,\"Green\",[\"S\"]],[3,3,0,\"Brown\",[]],[5,4,5,\"Green\",[]],[4,6,5,\"Green\",[]],[4,4,4,\"Green\",[\"S\"]],[3,6,4,\"Green\",[\"S\"]],[3,4,3,\"Brown\",[]],[5,3,1,\"Brown\",[]],[3,3,5,\"Green\",[]],[5,5,2,\"Brown\",[]],[4,3,0,\"Brown\",[]],[5,6,5,\"Green\",[]],[4,5,1,\"Brown\",[]],[6,2,4,\"Green\",[]],[4,6,4,\"Green\",[\"S\"]],[5,4,4,\"Green\",[\"S\"]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[4,3,5,\"Green\",[]],[3,4,2,\"Brown\",[]],[3,5,5,\"Green\",[]],[3,3,4,\"Green\",[\"S\"]],[6,4,4,\"Green\",[]],[5,5,1,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,6,4,\"Green\",[\"S\"]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[]],[4,4,2,\"Brown\",[]],[5,3,5,\"Green\",[]],[3,4,1,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[4,5,5,\"Green\",[]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[3,5,4,\"Green\",[\"S\"]],[6,6,4,\"Green\",[]],[5,4,2,\"Brown\",[]],[3,2,5,\"Green\",[]],[4,4,1,\"Brown\",[]],[3,4,0,\"Brown\",[]],[5,5,5,\"Green\",[]],[5,3,4,\"Green\",[\"S\"]],[4,5,4,\"Green\",[\"S\"]],[4,3,3,\"Brown\",[]],[3,5,3,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T17:17:18.177)
  (NBestInd 0)
  (utterance "add green front")
  (targetFormula (: add green front))
  (targetValue
    (string
      [[3,4,5,\"Green\",[]],[4,2,5,\"Green\",[]],[2,4,4,\"Green\",[]],[3,2,4,\"Green\",[\"S\"]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[\"S\"]],[6,3,4,\"Green\",[]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[5,2,5,\"Green\",[]],[4,3,2,\"Brown\",[]],[4,4,5,\"Green\",[]],[4,2,4,\"Green\",[\"S\"]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[\"S\"]],[3,6,5,\"Green\",[]],[6,5,4,\"Green\",[]],[5,4,0,\"Brown\",[]],[2,6,4,\"Green\",[]],[5,5,3,\"Brown\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,1,\"Brown\",[]],[5,2,4,\"Green\",[\"S\"]],[3,3,0,\"Brown\",[]],[5,4,5,\"Green\",[]],[4,6,5,\"Green\",[]],[4,4,4,\"Green\",[\"S\"]],[3,6,4,\"Green\",[\"S\"]],[3,4,3,\"Brown\",[]],[5,3,1,\"Brown\",[]],[3,3,5,\"Green\",[]],[5,5,2,\"Brown\",[]],[4,3,0,\"Brown\",[]],[5,6,5,\"Green\",[]],[2,3,4,\"Green\",[]],[4,5,1,\"Brown\",[]],[6,2,4,\"Green\",[]],[4,6,4,\"Green\",[\"S\"]],[5,4,4,\"Green\",[\"S\"]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[4,3,5,\"Green\",[]],[3,4,2,\"Brown\",[]],[3,5,5,\"Green\",[]],[3,3,4,\"Green\",[\"S\"]],[2,5,4,\"Green\",[]],[6,4,4,\"Green\",[]],[5,5,1,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,6,4,\"Green\",[\"S\"]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[]],[4,4,2,\"Brown\",[]],[5,3,5,\"Green\",[]],[3,4,1,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[4,5,5,\"Green\",[]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[3,5,4,\"Green\",[\"S\"]],[6,6,4,\"Green\",[]],[5,4,2,\"Brown\",[]],[3,2,5,\"Green\",[]],[4,4,1,\"Brown\",[]],[2,2,4,\"Green\",[]],[3,4,0,\"Brown\",[]],[5,5,5,\"Green\",[]],[5,3,4,\"Green\",[\"S\"]],[4,5,4,\"Green\",[\"S\"]],[4,3,3,\"Brown\",[]],[3,5,3,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,4,5,\"Green\",[]],[4,2,5,\"Green\",[]],[2,4,4,\"Green\",[]],[3,2,4,\"Green\",[\"S\"]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[\"S\"]],[6,3,4,\"Green\",[]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[5,2,5,\"Green\",[]],[4,3,2,\"Brown\",[]],[4,4,5,\"Green\",[]],[4,2,4,\"Green\",[\"S\"]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[\"S\"]],[3,6,5,\"Green\",[]],[6,5,4,\"Green\",[]],[5,4,0,\"Brown\",[]],[2,6,4,\"Green\",[]],[5,5,3,\"Brown\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,1,\"Brown\",[]],[5,2,4,\"Green\",[\"S\"]],[3,3,0,\"Brown\",[]],[5,4,5,\"Green\",[]],[4,6,5,\"Green\",[]],[4,4,4,\"Green\",[\"S\"]],[3,6,4,\"Green\",[\"S\"]],[3,4,3,\"Brown\",[]],[5,3,1,\"Brown\",[]],[3,3,5,\"Green\",[]],[5,5,2,\"Brown\",[]],[4,3,0,\"Brown\",[]],[5,6,5,\"Green\",[]],[2,3,4,\"Green\",[]],[4,5,1,\"Brown\",[]],[6,2,4,\"Green\",[]],[4,6,4,\"Green\",[\"S\"]],[5,4,4,\"Green\",[\"S\"]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[4,3,5,\"Green\",[]],[3,4,2,\"Brown\",[]],[3,5,5,\"Green\",[]],[3,3,4,\"Green\",[\"S\"]],[2,5,4,\"Green\",[]],[6,4,4,\"Green\",[]],[5,5,1,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,6,4,\"Green\",[\"S\"]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[]],[4,4,2,\"Brown\",[]],[5,3,5,\"Green\",[]],[3,4,1,\"Brown\",[]],[4,3,4,\"Green\",[\"S\"]],[4,5,5,\"Green\",[]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[3,5,4,\"Green\",[\"S\"]],[6,6,4,\"Green\",[]],[5,4,2,\"Brown\",[]],[3,2,5,\"Green\",[]],[4,4,1,\"Brown\",[]],[2,2,4,\"Green\",[]],[3,4,0,\"Brown\",[]],[5,5,5,\"Green\",[]],[5,3,4,\"Green\",[\"S\"]],[4,5,4,\"Green\",[\"S\"]],[4,3,3,\"Brown\",[]],[3,5,3,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T17:17:21.114)
  (NBestInd 0)
  (utterance "select nothing")
  (targetFormula (:for nothing (: select)))
  (targetValue
    (string
      [[3,4,5,\"Green\",[]],[4,2,5,\"Green\",[]],[2,4,4,\"Green\",[]],[3,2,4,\"Green\",[]],[5,4,1,\"Brown\",[]],[5,5,4,\"Green\",[]],[6,3,4,\"Green\",[]],[4,4,0,\"Brown\",[]],[4,5,3,\"Brown\",[]],[5,3,3,\"Brown\",[]],[3,5,2,\"Brown\",[]],[5,2,5,\"Green\",[]],[4,3,2,\"Brown\",[]],[4,4,5,\"Green\",[]],[4,2,4,\"Green\",[]],[3,3,1,\"Brown\",[]],[3,4,4,\"Green\",[]],[3,6,5,\"Green\",[]],[6,5,4,\"Green\",[]],[5,4,0,\"Brown\",[]],[2,6,4,\"Green\",[]],[5,5,3,\"Brown\",[]],[5,3,2,\"Brown\",[]],[4,5,2,\"Brown\",[]],[4,3,1,\"Brown\",[]],[3,5,1,\"Brown\",[]],[5,2,4,\"Green\",[]],[3,3,0,\"Brown\",[]],[5,4,5,\"Green\",[]],[4,6,5,\"Green\",[]],[4,4,4,\"Green\",[]],[3,6,4,\"Green\",[]],[3,4,3,\"Brown\",[]],[5,3,1,\"Brown\",[]],[3,3,5,\"Green\",[]],[5,5,2,\"Brown\",[]],[4,3,0,\"Brown\",[]],[5,6,5,\"Green\",[]],[2,3,4,\"Green\",[]],[4,5,1,\"Brown\",[]],[6,2,4,\"Green\",[]],[4,6,4,\"Green\",[]],[5,4,4,\"Green\",[]],[3,5,0,\"Brown\",[]],[4,4,3,\"Brown\",[]],[4,3,5,\"Green\",[]],[3,4,2,\"Brown\",[]],[3,5,5,\"Green\",[]],[3,3,4,\"Green\",[]],[2,5,4,\"Green\",[]],[6,4,4,\"Green\",[]],[5,5,1,\"Brown\",[]],[5,3,0,\"Brown\",[]],[5,6,4,\"Green\",[]],[5,4,3,\"Brown\",[]],[4,5,0,\"Brown\",[]],[4,4,2,\"Brown\",[]],[5,3,5,\"Green\",[]],[3,4,1,\"Brown\",[]],[4,3,4,\"Green\",[]],[4,5,5,\"Green\",[]],[3,3,3,\"Brown\",[]],[5,5,0,\"Brown\",[]],[3,5,4,\"Green\",[]],[6,6,4,\"Green\",[]],[5,4,2,\"Brown\",[]],[3,2,5,\"Green\",[]],[4,4,1,\"Brown\",[]],[2,2,4,\"Green\",[]],[3,4,0,\"Brown\",[]],[5,5,5,\"Green\",[]],[5,3,4,\"Green\",[]],[4,5,4,\"Green\",[]],[4,3,3,\"Brown\",[]],[3,5,3,\"Brown\",[]],[3,3,2,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T17:24:09.554)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T17:24:14.282)
  (NBestInd 0)
  (utterance "repeat 3 [ add red ]")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-11T17:24:17.874)
  (NBestInd 0)
  (utterance "select very top of all")
  (targetFormula (:for (call veryx top *) (: select)))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[]],[3,3,2,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[]],[3,3,2,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T17:24:28.826)
  (NBestInd 0)
  (utterance "repeat 3 [ add green left  ;   add green right ]")
  (targetFormula (:loop (number 3) (:s (: add green left) (: add green right))))
  (targetValue
    (string [[3,2,2,\"Green\",[]],[3,5,2,\"Green\",[]],[3,1,2,\"Green\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[]],[3,4,2,\"Green\",[]],[3,6,2,\"Green\",[]],[3,0,2,\"Green\",[]],[3,3,2,\"Red\",[\"S\"]]])
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string [[3,2,2,\"Green\",[]],[3,5,2,\"Green\",[]],[3,1,2,\"Green\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[]],[3,4,2,\"Green\",[]],[3,6,2,\"Green\",[]],[3,0,2,\"Green\",[]],[3,3,2,\"Red\",[\"S\"]]])
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T17:24:33.491)
  (NBestInd 0)
  (utterance "select very left of all")
  (targetFormula (:for (call veryx left *) (: select)))
  (targetValue
    (string [[3,2,2,\"Green\",[]],[3,5,2,\"Green\",[]],[3,1,2,\"Green\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[]],[3,4,2,\"Green\",[]],[3,6,2,\"Green\",[\"S\"]],[3,0,2,\"Green\",[]],[3,3,2,\"Red\",[]]])
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string [[3,2,2,\"Green\",[]],[3,5,2,\"Green\",[]],[3,1,2,\"Green\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[]],[3,4,2,\"Green\",[]],[3,6,2,\"Green\",[\"S\"]],[3,0,2,\"Green\",[]],[3,3,2,\"Red\",[]]])
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T17:24:38.809)
  (NBestInd 0)
  (utterance "select this or very right of all")
  (targetFormula (:for (or this (call veryx right *)) (: select)))
  (targetValue
    (string
      [[3,2,2,\"Green\",[]],[3,5,2,\"Green\",[]],[3,1,2,\"Green\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[]],[3,4,2,\"Green\",[]],[3,6,2,\"Green\",[\"S\"]],[3,0,2,\"Green\",[\"S\"]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,2,2,\"Green\",[]],[3,5,2,\"Green\",[]],[3,1,2,\"Green\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[]],[3,4,2,\"Green\",[]],[3,6,2,\"Green\",[\"S\"]],[3,0,2,\"Green\",[\"S\"]],[3,3,2,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T17:24:46.169)
  (NBestInd 0)
  (utterance "repeat 3 [ add green ]")
  (targetFormula (:loop (number 3) (: add green top)))
  (targetValue
    (string
      [[3,1,2,\"Green\",[]],[3,6,3,\"Green\",[]],[3,0,3,\"Green\",[]],[3,3,0,\"Red\",[]],[3,4,2,\"Green\",[]],[3,0,4,\"Green\",[]],[3,2,2,\"Green\",[]],[3,5,2,\"Green\",[]],[3,6,4,\"Green\",[]],[3,0,5,\"Green\",[]],[3,3,1,\"Red\",[]],[3,6,5,\"Green\",[]],[3,6,2,\"Green\",[\"S\"]],[3,0,2,\"Green\",[\"S\"]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 11)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,1,2,\"Green\",[]],[3,6,3,\"Green\",[]],[3,0,3,\"Green\",[]],[3,3,0,\"Red\",[]],[3,4,2,\"Green\",[]],[3,0,4,\"Green\",[]],[3,2,2,\"Green\",[]],[3,5,2,\"Green\",[]],[3,6,4,\"Green\",[]],[3,0,5,\"Green\",[]],[3,3,1,\"Red\",[]],[3,6,5,\"Green\",[]],[3,6,2,\"Green\",[\"S\"]],[3,0,2,\"Green\",[\"S\"]],[3,3,2,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-11T17:24:48.737)
  (NBestInd 0)
  (utterance "select nothing")
  (targetFormula (:for nothing (: select)))
  (targetValue
    (string
      [[3,1,2,\"Green\",[]],[3,6,3,\"Green\",[]],[3,0,3,\"Green\",[]],[3,3,0,\"Red\",[]],[3,4,2,\"Green\",[]],[3,0,4,\"Green\",[]],[3,2,2,\"Green\",[]],[3,5,2,\"Green\",[]],[3,6,4,\"Green\",[]],[3,0,5,\"Green\",[]],[3,3,1,\"Red\",[]],[3,6,5,\"Green\",[]],[3,6,2,\"Green\",[]],[3,0,2,\"Green\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-08-11T17:31:49.122)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T17:32:02.020)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T17:32:35.033)
  (NBestInd 0)
  (utterance "add brown")
  (targetFormula (: add brown top))
  (targetValue (string [[3,3,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T17:32:40.362)
  (NBestInd 0)
  (utterance "repeat 3 [ add brown ]")
  (targetFormula (:loop (number 3) (: add brown top)))
  (targetValue (string [[3,3,3,\"Brown\",[]],[3,3,1,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[3,3,2,\"Brown\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T17:32:47.450)
  (NBestInd 0)
  (utterance "repeat 2 [ add brown ]")
  (targetFormula (:loop (number 2) (: add brown top)))
  (targetValue (string [[3,3,1,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[3,3,2,\"Brown\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 11) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-11T17:33:17.511)
  (NBestInd 0)
  (utterance "add brown left")
  (targetFormula (: add brown left))
  (targetValue (string [[3,4,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,3,\"Anchor\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T12:37:14.618)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,3,\"Anchor\",[]],[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,3,\"Anchor\",[]],[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T12:37:17.107)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,3,\"Anchor\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,3,\"Anchor\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T12:40:51.895)
  (NBestInd 0)
  (utterance "base 3 3")
  (targetFormula (: base (number 3) (number 3)))
  (targetValue (string [[3,3,3,\"Anchor\",[]],[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T13:07:34.747)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T13:21:04.771)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T13:26:16.961)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T13:26:39.553)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T13:27:57.265)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:01:07.636)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:02:47.290)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:02:49.290)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:09:13.683)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:09:15.523)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[3,3,1,\"Orange\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:10:12.714)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:10:15.074)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:10:16.810)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:10:40.217)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:11:03.736)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:11:05.701)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:11:09.239)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:11:26.454)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:11:28.262)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[3,3,1,\"Orange\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:11:31.182)
  (NBestInd 0)
  (utterance "select has color red")
  (targetFormula (:for (color red) (: select)))
  (targetValue (string [[3,3,1,\"Orange\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:11:33.589)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[3,3,1,\"Orange\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Yellow\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Orange\",[]],[3,3,2,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:11:41.269)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[3,3,3,\"Blue\",[]],[3,3,1,\"Orange\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Yellow\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:12:03.023)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:12:05.360)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[3,3,1,\"Orange\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:12:08.848)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,1,\"Orange\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:12:16.600)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,1,\"Orange\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:16:26.268)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:20:24.079)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:20:36.312)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:22:14.050)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:22:23.537)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[3,3,1,\"Orange\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:25:10.506)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:25:17.803)
  (NBestInd 0)
  (utterance "add green")
  (targetFormula (: add green top))
  (targetValue (string [[3,3,1,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:27:07.297)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:27:15.392)
  (NBestInd 3)
  (utterance "add orange on top")
  (targetFormula (: add orange top))
  (targetValue (string [[3,3,1,\"Orange\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:28:06.522)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:51:59.545)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:53:52.252)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:53:54.043)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[3,3,1,\"Orange\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:53:58.355)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[3,3,1,\"Orange\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Orange\",[]],[3,3,2,\"Blue\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:54:00.378)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[3,3,3,\"Orange\",[]],[3,3,1,\"Orange\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:54:13.370)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:54:14.673)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[3,3,1,\"Orange\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:54:16.488)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[3,3,1,\"Orange\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Yellow\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Orange\",[]],[3,3,2,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:54:18.994)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[3,3,3,\"Blue\",[]],[3,3,1,\"Orange\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Yellow\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Orange\",[]],[3,3,2,\"Yellow\",[]],[3,3,3,\"Blue\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:54:27.513)
  (NBestInd 0)
  (utterance "select nothing")
  (targetFormula (:for nothing (: select)))
  (targetValue (string [[3,3,3,\"Blue\",[]],[3,3,1,\"Orange\",[]],[3,3,0,\"Red\",[]],[3,3,2,\"Yellow\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:54:58.944)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[3,3,0,\"Yellow\",[\"S\"]],[3,3,0,\"Yellow\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Yellow\",[\"S\"]],[3,3,0,\"Yellow\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:55:08.919)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[3,3,1,\"Yellow\",[]],[3,3,0,\"Yellow\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:56:26.285)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[3,3,0,\"Orange\",[\"S\"]],[3,3,0,\"Orange\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:56:49.297)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:57:10.736)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:57:12.801)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[3,3,1,\"Orange\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:57:31.880)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:57:46.782)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T14:58:23.588)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T15:02:00.652)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T15:02:18.451)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T15:02:54.836)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T15:03:24.722)
  (NBestInd 0)
  (utterance "select nothing")
  (targetFormula (:for nothing (: select)))
  (targetValue (string [[3,3,0,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T15:03:41.658)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T15:03:46.593)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[3,3,1,\"Orange\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T15:04:18.830)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T15:05:06.077)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T15:05:20.725)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T15:05:23.188)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T15:05:24.868)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T15:05:26.883)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[3,3,3,\"Yellow\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T15:05:43.459)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T15:06:00.091)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T15:06:12.666)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T15:06:59.495)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T15:07:01.486)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[3,3,1,\"Orange\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T15:07:03.725)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[3,3,1,\"Orange\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Orange\",[]],[3,3,2,\"Blue\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T15:07:08.302)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,1,\"Orange\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Orange\",[]],[3,3,2,\"Blue\",[]],[3,3,3,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T15:07:13.598)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,4,0,\"Green\",[]],[3,3,1,\"Orange\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Orange\",[]],[3,3,2,\"Blue\",[]],[3,3,3,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T15:07:21.591)
  (NBestInd 0)
  (utterance "select has color blue")
  (targetFormula (:for (color blue) (: select)))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,3,\"Red\",[]],[3,3,1,\"Orange\",[]],[3,3,0,\"Red\",[]],[3,3,2,\"Blue\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[]],[3,3,1,\"Orange\",[]],[3,3,2,\"Blue\",[\"S\"]],[3,3,3,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T15:07:25.095)
  (NBestInd 0)
  (utterance "select has color red")
  (targetFormula (:for (color red) (: select)))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,3,\"Red\",[\"S\"]],[3,3,1,\"Orange\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T15:08:28.835)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T15:08:32.370)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T15:08:47.723)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T15:08:55.482)
  (NBestInd 0)
  (utterance "add green")
  (targetFormula (: add green top))
  (targetValue (string [[3,3,1,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T15:09:19.807)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T15:09:22.119)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T15:09:24.080)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T15:09:28.272)
  (NBestInd 0)
  (utterance "select has  color red")
  (targetFormula (:for (color red) (: select)))
  (targetValue (string [[3,3,1,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T21:08:03.842)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T21:08:05.809)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T21:08:07.219)
  (NBestInd 0)
  (utterance "add 3 red")
  (targetFormula (: select (color red)))
  (targetValue (string [[3,3,1,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T21:08:13.305)
  (NBestInd 2)
  (utterance "add 3 red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,4,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]],[3,3,3,\"Red\",[]],[3,3,4,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T21:08:17.785)
  (NBestInd 0)
  (utterance "select has color red")
  (targetFormula (:for (color red) (: select)))
  (targetValue (string [[3,3,3,\"Red\",[\"S\"]],[3,3,1,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,4,\"Red\",[\"S\"]],[3,3,2,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 12)
    (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[\"S\"]],[3,3,2,\"Red\",[\"S\"]],[3,3,3,\"Red\",[\"S\"]],[3,3,4,\"Red\",[\"S\"]]]) (name b) (name c)))
  )
  (timeStamp 2016-08-12T21:08:20.888)
  (NBestInd 0)
  (utterance "select very top")
  (targetFormula (:for (call veryx top) (: select)))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[]],[3,3,4,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Red\",[]],[3,3,4,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T21:08:23.640)
  (NBestInd 0)
  (utterance "add red right")
  (targetFormula (: add red right))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,2,4,\"Red\",[]],[3,3,0,\"Red\",[]],[3,3,4,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 12)
    (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Red\",[]],[3,3,4,\"Red\",[\"S\"]],[3,2,4,\"Red\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-08-12T21:08:29.195)
  (NBestInd 0)
  (utterance "add red right")
  (targetFormula (: add red right))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,2,4,\"Red\",[]],[3,3,0,\"Red\",[]],[3,1,4,\"Red\",[]],[3,3,4,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 12)
    (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Red\",[]],[3,3,4,\"Red\",[\"S\"]],[3,2,4,\"Red\",[]],[3,1,4,\"Red\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-08-12T21:08:32.331)
  (NBestInd 0)
  (utterance "add red right")
  (targetFormula (: add red right))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,2,4,\"Red\",[]],[3,3,0,\"Red\",[]],[3,1,4,\"Red\",[]],[3,0,4,\"Red\",[]],[3,3,4,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 12)
    (graph
      NaiveKnowledgeGraph
      ((string [[3,3,0,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Red\",[]],[3,3,4,\"Red\",[\"S\"]],[3,2,4,\"Red\",[]],[3,1,4,\"Red\",[]],[3,0,4,\"Red\",[]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-08-12T21:09:14.929)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,2,4,\"Red\",[]],[3,3,0,\"Red\",[]],[3,3,5,\"Red\",[]],[3,1,4,\"Red\",[]],[3,0,4,\"Red\",[]],[3,3,4,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 12)
    (graph
      NaiveKnowledgeGraph
      (
        (string [[3,3,0,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Red\",[]],[3,3,4,\"Red\",[\"S\"]],[3,2,4,\"Red\",[]],[3,1,4,\"Red\",[]],[3,0,4,\"Red\",[]],[3,3,5,\"Red\",[]]])
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-12T21:09:18.017)
  (NBestInd 0)
  (utterance "select nothing")
  (targetFormula (:for nothing (: select)))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,2,4,\"Red\",[]],[3,3,0,\"Red\",[]],[3,3,5,\"Red\",[]],[3,1,4,\"Red\",[]],[3,0,4,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 12)
    (graph
      NaiveKnowledgeGraph
      (
        (string [[3,3,0,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Red\",[]],[3,3,4,\"Red\",[]],[3,2,4,\"Red\",[]],[3,1,4,\"Red\",[]],[3,0,4,\"Red\",[]],[3,3,5,\"Red\",[]]])
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-12T21:09:25.505)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,2,4,\"Red\",[]],[3,3,0,\"Red\",[]],[3,3,5,\"Red\",[]],[3,1,4,\"Red\",[]],[3,0,4,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T21:16:56.405)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T21:38:49.544)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T21:45:37.540)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T21:45:45.233)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T21:46:10.202)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T21:46:52.020)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T21:47:38.369)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,4,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Red\",[]],[3,3,4,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T21:47:57.367)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,5,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T21:48:52.929)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T21:49:47.494)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T21:51:04.855)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T21:52:30.188)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T22:43:58.129)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T22:44:12.637)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T22:44:18.957)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T22:44:20.333)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T22:44:21.501)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,4,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T22:45:36.375)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T22:45:39.191)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T22:46:26.860)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T22:46:29.476)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T22:46:31.515)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,4,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T22:47:29.433)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T22:47:31.575)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T22:47:32.672)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-12T22:47:33.751)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 12) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-12T22:49:01.654)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:00:08.822)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:07:08.164)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:11:18.587)
  (NBestInd 3)
  (utterance "add 3 red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:11:59.960)
  (NBestInd 0)
  (utterance "add 3 red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:12:02.893)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:13:04.443)
  (NBestInd 0)
  (utterance "add 3 red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:13:06.851)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:13:17.561)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,4,\"Blue\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:13:54.069)
  (NBestInd 0)
  (utterance "add 3 red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:13:57.071)
  (NBestInd 0)
  (utterance "select has color red")
  (targetFormula (:for (color red) (: select)))
  (targetValue (string [[3,3,1,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:14:34.728)
  (NBestInd 0)
  (utterance "add 3 red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:14:38.453)
  (NBestInd 0)
  (utterance "select has color red")
  (targetFormula (:for (color red) (: select)))
  (targetValue (string [[3,3,1,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:14:49.638)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:15:01.253)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:15:49.434)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:16:00.178)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:16:08.249)
  (NBestInd 0)
  (utterance "add 3 red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:16:33.662)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:16:35.983)
  (NBestInd 0)
  (utterance "add 3 red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:16:55.003)
  (NBestInd 0)
  (utterance "add 3 red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:17:06.986)
  (NBestInd 0)
  (utterance "add 3 red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:17:20.073)
  (NBestInd 0)
  (utterance "add 3 red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:17:23.785)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:17:30.903)
  (NBestInd 0)
  (utterance "add 3 red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:17:37.656)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[3,3,3,\"Blue\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Blue\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:17:40.209)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[3,3,3,\"Blue\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,4,\"Orange\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:18:03.159)
  (NBestInd 0)
  (utterance "add 3 red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:18:06.956)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[3,3,3,\"Blue\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Blue\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:18:08.248)
  (NBestInd 0)
  (utterance "add brown")
  (targetFormula (: add brown top))
  (targetValue (string [[3,3,3,\"Blue\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,4,\"Brown\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Blue\",[]],[3,3,4,\"Brown\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:18:09.679)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[3,3,3,\"Blue\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,5,\"Yellow\",[]],[3,3,4,\"Brown\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:18:18.436)
  (NBestInd 0)
  (utterance "add 3 red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:18:20.181)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[3,3,3,\"Yellow\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:18:21.549)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[3,3,3,\"Yellow\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,4,\"Blue\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Yellow\",[]],[3,3,4,\"Blue\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:18:22.779)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[3,3,3,\"Yellow\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,5,\"Orange\",[]],[3,3,4,\"Blue\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 13)
    (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Yellow\",[]],[3,3,4,\"Blue\",[]],[3,3,5,\"Orange\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-08-13T12:18:26.955)
  (NBestInd 0)
  (utterance "add pink")
  (targetFormula (: add pink top))
  (targetValue (string [[3,3,6,\"Pink\",[]],[3,3,3,\"Yellow\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,5,\"Orange\",[]],[3,3,4,\"Blue\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 13)
    (graph
      NaiveKnowledgeGraph
      ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Yellow\",[]],[3,3,4,\"Blue\",[]],[3,3,5,\"Orange\",[]],[3,3,6,\"Pink\",[]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-08-13T12:18:29.503)
  (NBestInd 0)
  (utterance "add brown")
  (targetFormula (: add brown top))
  (targetValue (string [[3,3,6,\"Pink\",[]],[3,3,3,\"Yellow\",[]],[3,3,1,\"Red\",[]],[3,3,7,\"Brown\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,5,\"Orange\",[]],[3,3,4,\"Blue\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 13)
    (graph
      NaiveKnowledgeGraph
      ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Yellow\",[]],[3,3,4,\"Blue\",[]],[3,3,5,\"Orange\",[]],[3,3,6,\"Pink\",[]],[3,3,7,\"Brown\",[]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-08-13T12:18:34.716)
  (NBestInd 0)
  (utterance "add white")
  (targetFormula (: add white top))
  (targetValue
    (string [[3,3,8,\"White\",[]],[3,3,6,\"Pink\",[]],[3,3,3,\"Yellow\",[]],[3,3,1,\"Red\",[]],[3,3,7,\"Brown\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,5,\"Orange\",[]],[3,3,4,\"Blue\",[]],[3,3,2,\"Red\",[]]])
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 13)
    (graph
      NaiveKnowledgeGraph
      (
        (string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Yellow\",[]],[3,3,4,\"Blue\",[]],[3,3,5,\"Orange\",[]],[3,3,6,\"Pink\",[]],[3,3,7,\"Brown\",[]],[3,3,8,\"White\",[]]])
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-13T12:18:42.131)
  (NBestInd 0)
  (utterance "add black")
  (targetFormula (: add black top))
  (targetValue
    (string
      [[3,3,8,\"White\",[]],[3,3,6,\"Pink\",[]],[3,3,3,\"Yellow\",[]],[3,3,1,\"Red\",[]],[3,3,7,\"Brown\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,5,\"Orange\",[]],[3,3,4,\"Blue\",[]],[3,3,9,\"Black\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 13)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Yellow\",[]],[3,3,4,\"Blue\",[]],[3,3,5,\"Orange\",[]],[3,3,6,\"Pink\",[]],[3,3,7,\"Brown\",[]],[3,3,8,\"White\",[]],[3,3,9,\"Black\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-13T12:18:49.027)
  (NBestInd 0)
  (utterance "add green")
  (targetFormula (: add green top))
  (targetValue
    (string
      [[3,3,8,\"White\",[]],[3,3,6,\"Pink\",[]],[3,3,3,\"Yellow\",[]],[3,3,1,\"Red\",[]],[3,3,10,\"Green\",[]],[3,3,7,\"Brown\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,5,\"Orange\",[]],[3,3,4,\"Blue\",[]],[3,3,9,\"Black\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 13)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Yellow\",[]],[3,3,4,\"Blue\",[]],[3,3,5,\"Orange\",[]],[3,3,6,\"Pink\",[]],[3,3,7,\"Brown\",[]],[3,3,8,\"White\",[]],[3,3,9,\"Black\",[]],[3,3,10,\"Green\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-13T12:18:54.531)
  (NBestInd 0)
  (utterance "select has color red")
  (targetFormula (:for (color red) (: select)))
  (targetValue
    (string
      [[3,3,8,\"White\",[]],[3,3,6,\"Pink\",[]],[3,3,3,\"Yellow\",[]],[3,3,1,\"Red\",[\"S\"]],[3,3,10,\"Green\",[]],[3,3,7,\"Brown\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,5,\"Orange\",[]],[3,3,4,\"Blue\",[]],[3,3,9,\"Black\",[]],[3,3,2,\"Red\",[\"S\"]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 13)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[\"S\"]],[3,3,2,\"Red\",[\"S\"]],[3,3,3,\"Yellow\",[]],[3,3,4,\"Blue\",[]],[3,3,5,\"Orange\",[]],[3,3,6,\"Pink\",[]],[3,3,7,\"Brown\",[]],[3,3,8,\"White\",[]],[3,3,9,\"Black\",[]],[3,3,10,\"Green\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-13T12:18:58.394)
  (NBestInd 0)
  (utterance "select has color yellow")
  (targetFormula (:for (color yellow) (: select)))
  (targetValue
    (string
      [[3,3,8,\"White\",[]],[3,3,6,\"Pink\",[]],[3,3,3,\"Yellow\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,10,\"Green\",[]],[3,3,7,\"Brown\",[]],[3,3,0,\"Red\",[]],[3,3,5,\"Orange\",[]],[3,3,4,\"Blue\",[]],[3,3,9,\"Black\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 13)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,3,0,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Yellow\",[\"S\"]],[3,3,4,\"Blue\",[]],[3,3,5,\"Orange\",[]],[3,3,6,\"Pink\",[]],[3,3,7,\"Brown\",[]],[3,3,8,\"White\",[]],[3,3,9,\"Black\",[]],[3,3,10,\"Green\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-13T12:19:01.978)
  (NBestInd 0)
  (utterance "select has color blue")
  (targetFormula (:for (color blue) (: select)))
  (targetValue
    (string
      [[3,3,8,\"White\",[]],[3,3,6,\"Pink\",[]],[3,3,3,\"Yellow\",[]],[3,3,1,\"Red\",[]],[3,3,10,\"Green\",[]],[3,3,7,\"Brown\",[]],[3,3,0,\"Red\",[]],[3,3,5,\"Orange\",[]],[3,3,4,\"Blue\",[\"S\"]],[3,3,9,\"Black\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 13)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,3,0,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Yellow\",[]],[3,3,4,\"Blue\",[\"S\"]],[3,3,5,\"Orange\",[]],[3,3,6,\"Pink\",[]],[3,3,7,\"Brown\",[]],[3,3,8,\"White\",[]],[3,3,9,\"Black\",[]],[3,3,10,\"Green\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-13T12:19:05.636)
  (NBestInd 0)
  (utterance "select has color orange")
  (targetFormula (:for (color orange) (: select)))
  (targetValue
    (string
      [[3,3,8,\"White\",[]],[3,3,6,\"Pink\",[]],[3,3,3,\"Yellow\",[]],[3,3,1,\"Red\",[]],[3,3,10,\"Green\",[]],[3,3,7,\"Brown\",[]],[3,3,0,\"Red\",[]],[3,3,5,\"Orange\",[\"S\"]],[3,3,4,\"Blue\",[]],[3,3,9,\"Black\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 13)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,3,0,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Yellow\",[]],[3,3,4,\"Blue\",[]],[3,3,5,\"Orange\",[\"S\"]],[3,3,6,\"Pink\",[]],[3,3,7,\"Brown\",[]],[3,3,8,\"White\",[]],[3,3,9,\"Black\",[]],[3,3,10,\"Green\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-13T12:19:08.642)
  (NBestInd 0)
  (utterance "select has color pink")
  (targetFormula (:for (color pink) (: select)))
  (targetValue
    (string
      [[3,3,8,\"White\",[]],[3,3,6,\"Pink\",[\"S\"]],[3,3,3,\"Yellow\",[]],[3,3,1,\"Red\",[]],[3,3,10,\"Green\",[]],[3,3,7,\"Brown\",[]],[3,3,0,\"Red\",[]],[3,3,5,\"Orange\",[]],[3,3,4,\"Blue\",[]],[3,3,9,\"Black\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 13)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,3,0,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Yellow\",[]],[3,3,4,\"Blue\",[]],[3,3,5,\"Orange\",[]],[3,3,6,\"Pink\",[\"S\"]],[3,3,7,\"Brown\",[]],[3,3,8,\"White\",[]],[3,3,9,\"Black\",[]],[3,3,10,\"Green\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-13T12:19:11.443)
  (NBestInd 0)
  (utterance "select has color brown")
  (targetFormula (:for (color brown) (: select)))
  (targetValue
    (string
      [[3,3,8,\"White\",[]],[3,3,6,\"Pink\",[]],[3,3,3,\"Yellow\",[]],[3,3,1,\"Red\",[]],[3,3,10,\"Green\",[]],[3,3,7,\"Brown\",[\"S\"]],[3,3,0,\"Red\",[]],[3,3,5,\"Orange\",[]],[3,3,4,\"Blue\",[]],[3,3,9,\"Black\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 13)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,3,0,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Yellow\",[]],[3,3,4,\"Blue\",[]],[3,3,5,\"Orange\",[]],[3,3,6,\"Pink\",[]],[3,3,7,\"Brown\",[\"S\"]],[3,3,8,\"White\",[]],[3,3,9,\"Black\",[]],[3,3,10,\"Green\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-13T12:19:16.938)
  (NBestInd 0)
  (utterance "add brown right")
  (targetFormula (: add brown right))
  (targetValue
    (string
      [[3,3,8,\"White\",[]],[3,3,6,\"Pink\",[]],[3,3,3,\"Yellow\",[]],[3,3,1,\"Red\",[]],[3,3,10,\"Green\",[]],[3,3,7,\"Brown\",[\"S\"]],[3,3,0,\"Red\",[]],[3,3,5,\"Orange\",[]],[3,3,4,\"Blue\",[]],[3,2,7,\"Brown\",[]],[3,3,9,\"Black\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 13)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,3,0,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Yellow\",[]],[3,3,4,\"Blue\",[]],[3,3,5,\"Orange\",[]],[3,3,6,\"Pink\",[]],[3,3,7,\"Brown\",[\"S\"]],[3,2,7,\"Brown\",[]],[3,3,8,\"White\",[]],[3,3,9,\"Black\",[]],[3,3,10,\"Green\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-13T12:19:23.945)
  (NBestInd 0)
  (utterance "select has color brown")
  (targetFormula (:for (color brown) (: select)))
  (targetValue
    (string
      [[3,3,8,\"White\",[]],[3,3,6,\"Pink\",[]],[3,3,3,\"Yellow\",[]],[3,3,1,\"Red\",[]],[3,3,10,\"Green\",[]],[3,3,7,\"Brown\",[\"S\"]],[3,3,0,\"Red\",[]],[3,3,5,\"Orange\",[]],[3,3,4,\"Blue\",[]],[3,2,7,\"Brown\",[\"S\"]],[3,3,9,\"Black\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 13)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,3,0,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Yellow\",[]],[3,3,4,\"Blue\",[]],[3,3,5,\"Orange\",[]],[3,3,6,\"Pink\",[]],[3,3,7,\"Brown\",[\"S\"]],[3,2,7,\"Brown\",[\"S\"]],[3,3,8,\"White\",[]],[3,3,9,\"Black\",[]],[3,3,10,\"Green\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-13T12:19:26.992)
  (NBestInd 0)
  (utterance "select has color white")
  (targetFormula (:for (color white) (: select)))
  (targetValue
    (string
      [[3,3,8,\"White\",[\"S\"]],[3,3,6,\"Pink\",[]],[3,3,3,\"Yellow\",[]],[3,3,1,\"Red\",[]],[3,3,10,\"Green\",[]],[3,3,7,\"Brown\",[]],[3,3,0,\"Red\",[]],[3,3,5,\"Orange\",[]],[3,3,4,\"Blue\",[]],[3,2,7,\"Brown\",[]],[3,3,9,\"Black\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 13)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,3,0,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Yellow\",[]],[3,3,4,\"Blue\",[]],[3,3,5,\"Orange\",[]],[3,3,6,\"Pink\",[]],[3,3,7,\"Brown\",[]],[3,2,7,\"Brown\",[]],[3,3,8,\"White\",[\"S\"]],[3,3,9,\"Black\",[]],[3,3,10,\"Green\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-13T12:19:30.296)
  (NBestInd 0)
  (utterance "select has color black")
  (targetFormula (:for (color black) (: select)))
  (targetValue
    (string
      [[3,3,8,\"White\",[]],[3,3,6,\"Pink\",[]],[3,3,3,\"Yellow\",[]],[3,3,1,\"Red\",[]],[3,3,10,\"Green\",[]],[3,3,7,\"Brown\",[]],[3,3,0,\"Red\",[]],[3,3,5,\"Orange\",[]],[3,3,4,\"Blue\",[]],[3,2,7,\"Brown\",[]],[3,3,9,\"Black\",[\"S\"]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 13)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,3,0,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Yellow\",[]],[3,3,4,\"Blue\",[]],[3,3,5,\"Orange\",[]],[3,3,6,\"Pink\",[]],[3,3,7,\"Brown\",[]],[3,2,7,\"Brown\",[]],[3,3,8,\"White\",[]],[3,3,9,\"Black\",[\"S\"]],[3,3,10,\"Green\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-13T12:19:33.282)
  (NBestInd 0)
  (utterance "select has color green")
  (targetFormula (:for (color green) (: select)))
  (targetValue
    (string
      [[3,3,8,\"White\",[]],[3,3,6,\"Pink\",[]],[3,3,3,\"Yellow\",[]],[3,3,1,\"Red\",[]],[3,3,10,\"Green\",[\"S\"]],[3,3,7,\"Brown\",[]],[3,3,0,\"Red\",[]],[3,3,5,\"Orange\",[]],[3,3,4,\"Blue\",[]],[3,2,7,\"Brown\",[]],[3,3,9,\"Black\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 13)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,3,0,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Yellow\",[]],[3,3,4,\"Blue\",[]],[3,3,5,\"Orange\",[]],[3,3,6,\"Pink\",[]],[3,3,7,\"Brown\",[]],[3,2,7,\"Brown\",[]],[3,3,8,\"White\",[]],[3,3,9,\"Black\",[]],[3,3,10,\"Green\",[\"S\"]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-13T12:19:42.208)
  (NBestInd 0)
  (utterance "repeat 3 [ add green right ]")
  (targetFormula (:loop (number 3) (: add green right)))
  (targetValue
    (string
      [[3,3,6,\"Pink\",[]],[3,3,3,\"Yellow\",[]],[3,0,10,\"Green\",[]],[3,3,10,\"Green\",[\"S\"]],[3,3,7,\"Brown\",[]],[3,3,0,\"Red\",[]],[3,3,4,\"Blue\",[]],[3,1,10,\"Green\",[]],[3,3,8,\"White\",[]],[3,3,1,\"Red\",[]],[3,2,10,\"Green\",[]],[3,3,5,\"Orange\",[]],[3,2,7,\"Brown\",[]],[3,3,9,\"Black\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:19:58.424)
  (NBestInd 0)
  (utterance "add 3 red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:20:01.023)
  (NBestInd 0)
  (utterance "select has color red")
  (targetFormula (:for (color red) (: select)))
  (targetValue (string [[3,3,1,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:20:09.926)
  (NBestInd 0)
  (utterance "add 3 red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:20:13.966)
  (NBestInd 0)
  (utterance "select has color red")
  (targetFormula (:for (color red) (: select)))
  (targetValue (string [[3,3,1,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[\"S\"]],[3,3,2,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:20:19.590)
  (NBestInd 0)
  (utterance "add 3 green")
  (targetFormula (:loop (number 3) (: add green top)))
  (targetValue (string [[3,3,3,\"Green\",[]],[3,3,1,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,5,\"Green\",[]],[3,3,4,\"Green\",[]],[3,3,2,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 13)
    (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[\"S\"]],[3,3,2,\"Red\",[\"S\"]],[3,3,3,\"Green\",[]],[3,3,4,\"Green\",[]],[3,3,5,\"Green\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-08-13T12:20:22.813)
  (NBestInd 0)
  (utterance "select has color green")
  (targetFormula (:for (color green) (: select)))
  (targetValue (string [[3,3,3,\"Green\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[]],[3,3,5,\"Green\",[\"S\"]],[3,3,4,\"Green\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 13)
    (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Green\",[\"S\"]],[3,3,4,\"Green\",[\"S\"]],[3,3,5,\"Green\",[\"S\"]]]) (name b) (name c)))
  )
  (timeStamp 2016-08-13T12:20:28.646)
  (NBestInd 0)
  (utterance "select has color red")
  (targetFormula (:for (color red) (: select)))
  (targetValue (string [[3,3,3,\"Green\",[]],[3,3,1,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,5,\"Green\",[]],[3,3,4,\"Green\",[]],[3,3,2,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:20:45.308)
  (NBestInd 0)
  (utterance "add 3 red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:20:55.100)
  (NBestInd 0)
  (utterance "add 3 red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:21:02.299)
  (NBestInd 0)
  (utterance "add 3 red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:21:11.251)
  (NBestInd 0)
  (utterance "add 3 red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:21:14.672)
  (NBestInd 0)
  (utterance "select has color red")
  (targetFormula (:for (color red) (: select)))
  (targetValue (string [[3,3,1,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:21:42.893)
  (NBestInd 0)
  (utterance "add 3 red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-13T12:21:45.342)
  (NBestInd 0)
  (utterance "select has color red")
  (targetFormula (:for (color red) (: select)))
  (targetValue (string [[3,3,1,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[\"S\"]],[3,3,2,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T13:16:00.958)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[3,3,3,\"Blue\",[]],[3,3,1,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[\"S\"]],[3,3,2,\"Red\",[\"S\"]],[3,3,3,\"Blue\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-13T13:16:06.597)
  (NBestInd 0)
  (utterance "select has color blue")
  (targetFormula (:for (color blue) (: select)))
  (targetValue (string [[3,3,3,\"Blue\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T13:24:16.998)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T13:24:21.542)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T13:24:23.654)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T13:24:52.181)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T13:24:56.964)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-13T13:24:58.796)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-13T13:25:01.683)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-13T13:25:03.515)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,4,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T13:25:49.033)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T13:25:50.585)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T13:26:11.488)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T13:26:27.783)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T13:26:47.262)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T13:34:48.452)
  (NBestInd 0)
  (utterance "add some really good woot red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T13:39:29.385)
  (NBestInd 0)
  (utterance "add eafefasdf red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T13:42:01.230)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T13:42:07.889)
  (NBestInd 0)
  (utterance "add 3 red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T13:44:57.223)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T13:52:44.559)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T13:52:46.719)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-13T13:53:02.311)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T13:55:39.501)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T13:55:47.196)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-13T13:55:52.086)
  (NBestInd 0)
  (utterance "repeat 3 [ add red ]")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 13) (graph NaiveKnowledgeGraph ((string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-13T13:56:23.623)
  (NBestInd 9)
  (utterance "add 3 red on top of green")
  (targetFormula (:s (: add red top) (: add green top)))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,5,\"Green\",[]],[3,3,4,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 18) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-18T14:24:58.474)
  (NBestInd 0)
  (utterance "add 2 x 3 brown cube")
  (targetFormula (:s (:s (: add brown top) (:loop (number 2) (: add brown back))) (:for (color brown) (:loop (number 3) (: add brown left)))))
  (targetValue
    (string
      [[3,5,0,\"Brown\",[]],[5,5,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[4,4,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[3,6,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[5,3,0,\"Brown\",[]],[3,4,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[4,3,0,\"Brown\",[]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context (date 2016 7 18) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-18T14:25:16.248)
  (NBestInd 0)
  (utterance "add 2 x 3 brown cube")
  (targetFormula (:s (:s (: add brown top) (:loop (number 2) (: add brown back))) (:for (color brown) (:loop (number 3) (: add brown left)))))
  (targetValue
    (string
      [[3,5,0,\"Brown\",[]],[5,5,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[4,4,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[3,6,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[5,3,0,\"Brown\",[]],[3,4,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[4,3,0,\"Brown\",[]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[5,6,0,\"Brown\",[]],[5,5,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,3,0,\"Brown\",[]],[4,6,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[4,4,0,\"Brown\",[]],[4,3,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[3,5,0,\"Brown\",[]],[3,4,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:27:03.537)
  (NBestInd 0)
  (utterance "select has color brown")
  (targetFormula (:for (color brown) (: select)))
  (targetValue
    (string
      [[5,6,0,\"Brown\",[\"S\"]],[5,3,0,\"Brown\",[\"S\"]],[3,5,0,\"Brown\",[\"S\"]],[3,4,0,\"Brown\",[\"S\"]],[5,5,0,\"Brown\",[\"S\"]],[4,5,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]],[4,4,0,\"Brown\",[\"S\"]],[4,3,0,\"Brown\",[\"S\"]],[4,6,0,\"Brown\",[\"S\"]],[5,4,0,\"Brown\",[\"S\"]],[3,6,0,\"Brown\",[\"S\"]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[5,6,0,\"Brown\",[\"S\"]],[5,5,0,\"Brown\",[\"S\"]],[5,4,0,\"Brown\",[\"S\"]],[5,3,0,\"Brown\",[\"S\"]],[4,6,0,\"Brown\",[\"S\"]],[4,5,0,\"Brown\",[\"S\"]],[4,4,0,\"Brown\",[\"S\"]],[4,3,0,\"Brown\",[\"S\"]],[3,6,0,\"Brown\",[\"S\"]],[3,5,0,\"Brown\",[\"S\"]],[3,4,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:29:49.183)
  (NBestInd 1)
  (utterance "add yellow in the middle")
  (targetFormula (: add yellow top))
  (targetValue
    (string
      [[3,5,0,\"Brown\",[\"S\"]],[5,5,0,\"Brown\",[\"S\"]],[4,3,1,\"Yellow\",[]],[5,4,1,\"Yellow\",[]],[3,5,1,\"Yellow\",[]],[3,3,0,\"Brown\",[\"S\"]],[4,6,1,\"Yellow\",[]],[4,4,0,\"Brown\",[\"S\"]],[3,6,0,\"Brown\",[\"S\"]],[5,6,0,\"Brown\",[\"S\"]],[4,4,1,\"Yellow\",[]],[5,5,1,\"Yellow\",[]],[5,3,0,\"Brown\",[\"S\"]],[3,4,0,\"Brown\",[\"S\"]],[4,5,0,\"Brown\",[\"S\"]],[3,3,1,\"Yellow\",[]],[3,6,1,\"Yellow\",[]],[5,3,1,\"Yellow\",[]],[5,6,1,\"Yellow\",[]],[4,3,0,\"Brown\",[\"S\"]],[4,6,0,\"Brown\",[\"S\"]],[3,4,1,\"Yellow\",[]],[5,4,0,\"Brown\",[\"S\"]],[4,5,1,\"Yellow\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[5,6,0,\"Brown\",[]],[5,5,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,3,0,\"Brown\",[]],[4,6,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[4,4,0,\"Brown\",[]],[4,3,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[3,5,0,\"Brown\",[]],[3,4,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[3,3,0,\"Brown\",[\"S\"]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:31:19.632)
  (NBestInd 1)
  (utterance "add 3 yellow")
  (targetFormula (:loop (number 3) (: add yellow top)))
  (targetValue
    (string
      [[3,5,0,\"Brown\",[]],[3,3,3,\"Yellow\",[]],[5,5,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[4,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[5,3,0,\"Brown\",[]],[3,4,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Yellow\",[]],[4,3,0,\"Brown\",[]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[3,3,2,\"Yellow\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[5,6,0,\"Brown\",[]],[5,5,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,3,0,\"Brown\",[]],[4,6,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[4,4,0,\"Brown\",[]],[4,3,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[3,5,0,\"Brown\",[]],[3,4,0,\"Brown\",[]],[3,3,0,\"Brown\",[\"S\"]],[3,3,1,\"Yellow\",[]],[3,3,2,\"Yellow\",[]],[3,3,3,\"Yellow\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:34:09.902)
  (NBestInd 0)
  (utterance "select yellow")
  (targetFormula (:for (color yellow) (: select)))
  (targetValue
    (string
      [[3,5,0,\"Brown\",[]],[3,3,3,\"Yellow\",[\"S\"]],[5,5,0,\"Brown\",[]],[3,3,0,\"Brown\",[]],[4,4,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[5,3,0,\"Brown\",[]],[3,4,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Yellow\",[\"S\"]],[4,3,0,\"Brown\",[]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[3,3,2,\"Yellow\",[\"S\"]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[5,6,0,\"Brown\",[]],[5,5,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[5,3,0,\"Brown\",[]],[4,6,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[4,4,0,\"Brown\",[]],[4,3,0,\"Brown\",[]],[3,6,0,\"Brown\",[]],[3,5,0,\"Brown\",[]],[3,4,0,\"Brown\",[]],[3,3,0,\"Brown\",[]],[3,3,1,\"Yellow\",[\"S\"]],[3,3,2,\"Yellow\",[\"S\"]],[3,3,3,\"Yellow\",[\"S\"]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:35:34.180)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue
    (string
      [[3,5,0,\"Brown\",[]],[3,3,3,\"Yellow\",[\"S\"]],[5,5,0,\"Brown\",[]],[3,3,0,\"Brown\",[]],[4,4,0,\"Brown\",[]],[3,3,4,\"Red\",[]],[3,6,0,\"Brown\",[]],[5,6,0,\"Brown\",[]],[5,3,0,\"Brown\",[]],[3,4,0,\"Brown\",[]],[4,5,0,\"Brown\",[]],[3,3,1,\"Yellow\",[\"S\"]],[4,3,0,\"Brown\",[]],[4,6,0,\"Brown\",[]],[5,4,0,\"Brown\",[]],[3,3,2,\"Yellow\",[\"S\"]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context (date 2016 7 18) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-18T14:38:13.577)
  (NBestInd 0)
  (utterance "add 6 red")
  (targetFormula (:loop (number 6) (: add red top)))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,5,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,5,\"Red\",[]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-08-18T14:38:16.391)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[3,3,6,\"Yellow\",[]],[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,5,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,5,\"Red\",[]],[3,3,6,\"Yellow\",[]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-08-18T14:38:20.816)
  (NBestInd 0)
  (utterance "select yellow")
  (targetFormula (:for (color yellow) (: select)))
  (targetValue (string [[3,3,6,\"Yellow\",[\"S\"]],[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[]],[3,3,5,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      ((string [[3,3,0,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,5,\"Red\",[]],[3,3,6,\"Yellow\",[\"S\"]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-08-18T14:50:16.708)
  (NBestInd 0)
  (utterance "add red left")
  (targetFormula (: add red left))
  (targetValue (string [[3,3,6,\"Yellow\",[\"S\"]],[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[]],[3,3,5,\"Red\",[]],[3,3,4,\"Red\",[]],[3,4,6,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      ((string [[3,3,0,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,5,\"Red\",[]],[3,4,6,\"Red\",[]],[3,3,6,\"Yellow\",[\"S\"]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-08-18T14:50:19.057)
  (NBestInd 0)
  (utterance "add red left")
  (targetFormula (: add red left))
  (targetValue
    (string [[3,3,6,\"Yellow\",[\"S\"]],[3,3,3,\"Red\",[]],[3,5,6,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[]],[3,3,5,\"Red\",[]],[3,3,4,\"Red\",[]],[3,4,6,\"Red\",[]],[3,3,2,\"Red\",[]]])
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string [[3,3,0,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,5,\"Red\",[]],[3,5,6,\"Red\",[]],[3,4,6,\"Red\",[]],[3,3,6,\"Yellow\",[\"S\"]]])
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:50:23.816)
  (NBestInd 0)
  (utterance "select very left of red")
  (targetFormula (:for (call veryx left (color red)) (: select)))
  (targetValue
    (string [[3,3,6,\"Yellow\",[]],[3,3,3,\"Red\",[]],[3,5,6,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[]],[3,3,5,\"Red\",[]],[3,3,4,\"Red\",[]],[3,4,6,\"Red\",[]],[3,3,2,\"Red\",[]]])
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string [[3,3,0,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,5,\"Red\",[]],[3,5,6,\"Red\",[\"S\"]],[3,4,6,\"Red\",[]],[3,3,6,\"Yellow\",[]]])
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:50:26.441)
  (NBestInd 0)
  (utterance "add brown bot")
  (targetFormula (: add brown bot))
  (targetValue
    (string
      [[3,3,6,\"Yellow\",[]],[3,3,3,\"Red\",[]],[3,5,6,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[]],[3,3,5,\"Red\",[]],[3,5,5,\"Brown\",[]],[3,3,4,\"Red\",[]],[3,4,6,\"Red\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,3,0,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Red\",[]],[3,3,4,\"Red\",[]],[3,5,5,\"Brown\",[]],[3,3,5,\"Red\",[]],[3,5,6,\"Red\",[\"S\"]],[3,4,6,\"Red\",[]],[3,3,6,\"Yellow\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:50:29)
  (NBestInd 0)
  (utterance "add brown bot")
  (targetFormula (: add brown bot))
  (targetValue
    (string
      [[3,3,6,\"Yellow\",[]],[3,3,3,\"Red\",[]],[3,5,6,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,5,4,\"Brown\",[]],[3,3,0,\"Red\",[]],[3,3,5,\"Red\",[]],[3,5,5,\"Brown\",[]],[3,3,4,\"Red\",[]],[3,4,6,\"Red\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,3,0,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Red\",[]],[3,5,4,\"Brown\",[]],[3,3,4,\"Red\",[]],[3,5,5,\"Brown\",[]],[3,3,5,\"Red\",[]],[3,5,6,\"Red\",[\"S\"]],[3,4,6,\"Red\",[]],[3,3,6,\"Yellow\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:50:32.674)
  (NBestInd 0)
  (utterance "add brown bot")
  (targetFormula (: add brown bot))
  (targetValue
    (string
      [[3,3,6,\"Yellow\",[]],[3,3,3,\"Red\",[]],[3,5,6,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,5,4,\"Brown\",[]],[3,3,0,\"Red\",[]],[3,3,5,\"Red\",[]],[3,5,5,\"Brown\",[]],[3,3,4,\"Red\",[]],[3,4,6,\"Red\",[]],[3,5,3,\"Brown\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,3,0,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,5,3,\"Brown\",[]],[3,3,3,\"Red\",[]],[3,5,4,\"Brown\",[]],[3,3,4,\"Red\",[]],[3,5,5,\"Brown\",[]],[3,3,5,\"Red\",[]],[3,5,6,\"Red\",[\"S\"]],[3,4,6,\"Red\",[]],[3,3,6,\"Yellow\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:50:35.232)
  (NBestInd 0)
  (utterance "add green bot")
  (targetFormula (: add green bot))
  (targetValue
    (string
      [[3,3,6,\"Yellow\",[]],[3,3,3,\"Red\",[]],[3,5,4,\"Brown\",[]],[3,3,0,\"Red\",[]],[3,5,5,\"Brown\",[]],[3,3,4,\"Red\",[]],[3,4,6,\"Red\",[]],[3,5,2,\"Green\",[]],[3,5,6,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,5,\"Red\",[]],[3,5,3,\"Brown\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,3,0,\"Red\",[]],[3,3,1,\"Red\",[]],[3,5,2,\"Green\",[]],[3,3,2,\"Red\",[]],[3,5,3,\"Brown\",[]],[3,3,3,\"Red\",[]],[3,5,4,\"Brown\",[]],[3,3,4,\"Red\",[]],[3,5,5,\"Brown\",[]],[3,3,5,\"Red\",[]],[3,5,6,\"Red\",[\"S\"]],[3,4,6,\"Red\",[]],[3,3,6,\"Yellow\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:50:37.104)
  (NBestInd 0)
  (utterance "add pink bot")
  (targetFormula (: add pink bot))
  (targetValue
    (string
      [[3,3,6,\"Yellow\",[]],[3,3,3,\"Red\",[]],[3,5,4,\"Brown\",[]],[3,5,1,\"Pink\",[]],[3,3,0,\"Red\",[]],[3,5,5,\"Brown\",[]],[3,3,4,\"Red\",[]],[3,4,6,\"Red\",[]],[3,5,2,\"Green\",[]],[3,5,6,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,5,\"Red\",[]],[3,5,3,\"Brown\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,3,0,\"Red\",[]],[3,5,1,\"Pink\",[]],[3,3,1,\"Red\",[]],[3,5,2,\"Green\",[]],[3,3,2,\"Red\",[]],[3,5,3,\"Brown\",[]],[3,3,3,\"Red\",[]],[3,5,4,\"Brown\",[]],[3,3,4,\"Red\",[]],[3,5,5,\"Brown\",[]],[3,3,5,\"Red\",[]],[3,5,6,\"Red\",[\"S\"]],[3,4,6,\"Red\",[]],[3,3,6,\"Yellow\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:50:39.896)
  (NBestInd 0)
  (utterance "add pink bot")
  (targetFormula (: add pink bot))
  (targetValue
    (string
      [[3,3,6,\"Yellow\",[]],[3,5,0,\"Pink\",[]],[3,3,3,\"Red\",[]],[3,5,4,\"Brown\",[]],[3,5,1,\"Pink\",[]],[3,3,0,\"Red\",[]],[3,5,5,\"Brown\",[]],[3,3,4,\"Red\",[]],[3,4,6,\"Red\",[]],[3,5,2,\"Green\",[]],[3,5,6,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,5,\"Red\",[]],[3,5,3,\"Brown\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,5,0,\"Pink\",[]],[3,3,0,\"Red\",[]],[3,5,1,\"Pink\",[]],[3,3,1,\"Red\",[]],[3,5,2,\"Green\",[]],[3,3,2,\"Red\",[]],[3,5,3,\"Brown\",[]],[3,3,3,\"Red\",[]],[3,5,4,\"Brown\",[]],[3,3,4,\"Red\",[]],[3,5,5,\"Brown\",[]],[3,3,5,\"Red\",[]],[3,5,6,\"Red\",[\"S\"]],[3,4,6,\"Red\",[]],[3,3,6,\"Yellow\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:50:45.784)
  (NBestInd 0)
  (utterance "select very bot of pink")
  (targetFormula (:for (call veryx bot (color pink)) (: select)))
  (targetValue
    (string
      [[3,5,0,\"Pink\",[\"S\"]],[3,3,6,\"Yellow\",[]],[3,3,3,\"Red\",[]],[3,5,4,\"Brown\",[]],[3,5,1,\"Pink\",[]],[3,3,0,\"Red\",[]],[3,5,5,\"Brown\",[]],[3,3,4,\"Red\",[]],[3,4,6,\"Red\",[]],[3,5,2,\"Green\",[]],[3,5,6,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,5,\"Red\",[]],[3,5,3,\"Brown\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,5,0,\"Pink\",[\"S\"]],[3,3,0,\"Red\",[]],[3,5,1,\"Pink\",[]],[3,3,1,\"Red\",[]],[3,5,2,\"Green\",[]],[3,3,2,\"Red\",[]],[3,5,3,\"Brown\",[]],[3,3,3,\"Red\",[]],[3,5,4,\"Brown\",[]],[3,3,4,\"Red\",[]],[3,5,5,\"Brown\",[]],[3,3,5,\"Red\",[]],[3,5,6,\"Red\",[]],[3,4,6,\"Red\",[]],[3,3,6,\"Yellow\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:50:48.080)
  (NBestInd 0)
  (utterance "add blue right")
  (targetFormula (: add blue right))
  (targetValue
    (string
      [[3,5,0,\"Pink\",[\"S\"]],[3,3,6,\"Yellow\",[]],[3,3,3,\"Red\",[]],[3,5,4,\"Brown\",[]],[3,5,1,\"Pink\",[]],[3,3,0,\"Red\",[]],[3,5,5,\"Brown\",[]],[3,3,4,\"Red\",[]],[3,4,6,\"Red\",[]],[3,5,2,\"Green\",[]],[3,4,0,\"Blue\",[]],[3,5,6,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,5,\"Red\",[]],[3,5,3,\"Brown\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,5,0,\"Pink\",[\"S\"]],[3,4,0,\"Blue\",[]],[3,3,0,\"Red\",[]],[3,5,1,\"Pink\",[]],[3,3,1,\"Red\",[]],[3,5,2,\"Green\",[]],[3,3,2,\"Red\",[]],[3,5,3,\"Brown\",[]],[3,3,3,\"Red\",[]],[3,5,4,\"Brown\",[]],[3,3,4,\"Red\",[]],[3,5,5,\"Brown\",[]],[3,3,5,\"Red\",[]],[3,5,6,\"Red\",[]],[3,4,6,\"Red\",[]],[3,3,6,\"Yellow\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:50:59.239)
  (NBestInd 0)
  (utterance "select very bot of brown")
  (targetFormula (:for (call veryx bot (color brown)) (: select)))
  (targetValue
    (string
      [[3,5,0,\"Pink\",[]],[3,3,6,\"Yellow\",[]],[3,3,3,\"Red\",[]],[3,5,4,\"Brown\",[]],[3,5,1,\"Pink\",[]],[3,3,0,\"Red\",[]],[3,5,5,\"Brown\",[]],[3,3,4,\"Red\",[]],[3,4,6,\"Red\",[]],[3,5,2,\"Green\",[]],[3,4,0,\"Blue\",[]],[3,5,6,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,5,\"Red\",[]],[3,5,3,\"Brown\",[\"S\"]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,5,0,\"Pink\",[]],[3,4,0,\"Blue\",[]],[3,3,0,\"Red\",[]],[3,5,1,\"Pink\",[]],[3,3,1,\"Red\",[]],[3,5,2,\"Green\",[]],[3,3,2,\"Red\",[]],[3,5,3,\"Brown\",[\"S\"]],[3,3,3,\"Red\",[]],[3,5,4,\"Brown\",[]],[3,3,4,\"Red\",[]],[3,5,5,\"Brown\",[]],[3,3,5,\"Red\",[]],[3,5,6,\"Red\",[]],[3,4,6,\"Red\",[]],[3,3,6,\"Yellow\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:51:01.711)
  (NBestInd 0)
  (utterance "add green right")
  (targetFormula (: add green right))
  (targetValue
    (string
      [[3,5,0,\"Pink\",[]],[3,3,6,\"Yellow\",[]],[3,3,3,\"Red\",[]],[3,5,4,\"Brown\",[]],[3,5,1,\"Pink\",[]],[3,3,0,\"Red\",[]],[3,5,5,\"Brown\",[]],[3,3,4,\"Red\",[]],[3,4,6,\"Red\",[]],[3,5,2,\"Green\",[]],[3,4,3,\"Green\",[]],[3,4,0,\"Blue\",[]],[3,5,6,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,5,\"Red\",[]],[3,5,3,\"Brown\",[\"S\"]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,5,0,\"Pink\",[]],[3,4,0,\"Blue\",[]],[3,3,0,\"Red\",[]],[3,5,1,\"Pink\",[]],[3,3,1,\"Red\",[]],[3,5,2,\"Green\",[]],[3,3,2,\"Red\",[]],[3,5,3,\"Brown\",[\"S\"]],[3,3,3,\"Red\",[]],[3,5,4,\"Brown\",[]],[3,3,4,\"Red\",[]],[3,5,5,\"Brown\",[]],[3,3,5,\"Red\",[]],[3,5,6,\"Red\",[]],[3,4,6,\"Red\",[]],[3,3,6,\"Yellow\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:51:10.706)
  (NBestInd 0)
  (utterance "add orange right")
  (targetFormula (: add orange right))
  (targetValue
    (string
      [[3,5,0,\"Pink\",[]],[3,3,6,\"Yellow\",[]],[3,3,3,\"Red\",[]],[3,5,4,\"Brown\",[]],[3,5,1,\"Pink\",[]],[3,3,0,\"Red\",[]],[3,5,5,\"Brown\",[]],[3,3,4,\"Red\",[]],[3,4,6,\"Red\",[]],[3,5,2,\"Green\",[]],[3,4,3,\"Orange\",[]],[3,4,0,\"Blue\",[]],[3,5,6,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,5,\"Red\",[]],[3,5,3,\"Brown\",[\"S\"]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context (date 2016 7 18) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-18T14:51:25.190)
  (NBestInd 0)
  (utterance "add 6 red")
  (targetFormula (:loop (number 6) (: add red top)))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,5,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,5,\"Red\",[]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-08-18T14:51:35.813)
  (NBestInd 0)
  (utterance "select red")
  (targetFormula (:for (color red) (: select)))
  (targetValue (string [[3,3,3,\"Red\",[\"S\"]],[3,3,1,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,5,\"Red\",[\"S\"]],[3,3,4,\"Red\",[\"S\"]],[3,3,2,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[\"S\"]],[3,3,2,\"Red\",[\"S\"]],[3,3,3,\"Red\",[\"S\"]],[3,3,4,\"Red\",[\"S\"]],[3,3,5,\"Red\",[\"S\"]]]) (name b) (name c)))
  )
  (timeStamp 2016-08-18T14:51:45.463)
  (NBestInd 0)
  (utterance "move 4 left")
  (targetFormula (:loop (number 4) (: move left)))
  (targetValue
    (string
      [[3,7,3,\"Red\",[\"S\"]],[3,7,5,\"Red\",[\"S\"]],[3,7,1,\"Red\",[\"S\"]],[3,7,3,\"Red\",[\"S\"]],[3,7,0,\"Red\",[\"S\"]],[3,7,0,\"Red\",[\"S\"]],[3,7,5,\"Red\",[\"S\"]],[3,7,4,\"Red\",[\"S\"]],[3,7,4,\"Red\",[\"S\"]],[3,7,2,\"Red\",[\"S\"]],[3,7,2,\"Red\",[\"S\"]],[3,7,1,\"Red\",[\"S\"]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,7,0,\"Red\",[\"S\"]],[3,7,0,\"Red\",[\"S\"]],[3,7,1,\"Red\",[\"S\"]],[3,7,1,\"Red\",[\"S\"]],[3,7,2,\"Red\",[\"S\"]],[3,7,2,\"Red\",[\"S\"]],[3,7,3,\"Red\",[\"S\"]],[3,7,3,\"Red\",[\"S\"]],[3,7,4,\"Red\",[\"S\"]],[3,7,4,\"Red\",[\"S\"]],[3,7,5,\"Red\",[\"S\"]],[3,7,5,\"Red\",[\"S\"]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:52:00.433)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,7,3,\"Red\",[\"S\"]],[3,7,1,\"Red\",[\"S\"]],[3,7,0,\"Red\",[\"S\"]],[3,7,5,\"Red\",[\"S\"]],[3,7,4,\"Red\",[\"S\"]],[3,7,2,\"Red\",[\"S\"]],[3,7,6,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      ((string [[3,7,0,\"Red\",[\"S\"]],[3,7,1,\"Red\",[\"S\"]],[3,7,2,\"Red\",[\"S\"]],[3,7,3,\"Red\",[\"S\"]],[3,7,4,\"Red\",[\"S\"]],[3,7,5,\"Red\",[\"S\"]],[3,7,6,\"Red\",[]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-08-18T14:52:11.068)
  (NBestInd 0)
  (utterance "select not very bot of red")
  (targetFormula (:for (not (call veryx bot (color red))) (: select)))
  (targetValue (string [[3,7,3,\"Red\",[\"S\"]],[3,7,1,\"Red\",[\"S\"]],[3,7,0,\"Red\",[]],[3,7,5,\"Red\",[\"S\"]],[3,7,4,\"Red\",[\"S\"]],[3,7,2,\"Red\",[\"S\"]],[3,7,6,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      ((string [[3,7,0,\"Red\",[]],[3,7,1,\"Red\",[\"S\"]],[3,7,2,\"Red\",[\"S\"]],[3,7,3,\"Red\",[\"S\"]],[3,7,4,\"Red\",[\"S\"]],[3,7,5,\"Red\",[\"S\"]],[3,7,6,\"Red\",[\"S\"]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-08-18T14:52:35.504)
  (NBestInd 0)
  (utterance "select very bot of has color red")
  (targetFormula (:for (call veryx bot (color red)) (: select)))
  (targetValue (string [[3,7,3,\"Red\",[]],[3,7,1,\"Red\",[]],[3,7,0,\"Red\",[\"S\"]],[3,7,5,\"Red\",[]],[3,7,4,\"Red\",[]],[3,7,2,\"Red\",[]],[3,7,6,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph NaiveKnowledgeGraph ((string [[3,7,0,\"Red\",[\"S\"]],[3,7,1,\"Red\",[]],[3,7,2,\"Red\",[]],[3,7,3,\"Red\",[]],[3,7,4,\"Red\",[]],[3,7,5,\"Red\",[]],[3,7,6,\"Red\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-08-18T14:52:38.504)
  (NBestInd 0)
  (utterance "add red right")
  (targetFormula (: add red right))
  (targetValue (string [[3,7,3,\"Red\",[]],[3,7,1,\"Red\",[]],[3,7,0,\"Red\",[\"S\"]],[3,7,5,\"Red\",[]],[3,7,4,\"Red\",[]],[3,7,2,\"Red\",[]],[3,6,0,\"Red\",[]],[3,7,6,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      ((string [[3,7,0,\"Red\",[\"S\"]],[3,6,0,\"Red\",[]],[3,7,1,\"Red\",[]],[3,7,2,\"Red\",[]],[3,7,3,\"Red\",[]],[3,7,4,\"Red\",[]],[3,7,5,\"Red\",[]],[3,7,6,\"Red\",[]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-08-18T14:52:43.104)
  (NBestInd 0)
  (utterance "select very right of has color red")
  (targetFormula (:for (call veryx right (color red)) (: select)))
  (targetValue (string [[3,7,3,\"Red\",[]],[3,7,1,\"Red\",[]],[3,7,0,\"Red\",[]],[3,7,5,\"Red\",[]],[3,7,4,\"Red\",[]],[3,7,2,\"Red\",[]],[3,6,0,\"Red\",[\"S\"]],[3,7,6,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      ((string [[3,7,0,\"Red\",[]],[3,6,0,\"Red\",[\"S\"]],[3,7,1,\"Red\",[]],[3,7,2,\"Red\",[]],[3,7,3,\"Red\",[]],[3,7,4,\"Red\",[]],[3,7,5,\"Red\",[]],[3,7,6,\"Red\",[]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-08-18T14:52:50.613)
  (NBestInd 0)
  (utterance "add red 3")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue
    (string
      [[3,7,3,\"Red\",[]],[3,7,1,\"Red\",[]],[3,7,0,\"Red\",[]],[3,6,3,\"Red\",[]],[3,7,5,\"Red\",[]],[3,6,1,\"Red\",[]],[3,7,4,\"Red\",[]],[3,7,2,\"Red\",[]],[3,6,2,\"Red\",[]],[3,6,0,\"Red\",[\"S\"]],[3,7,6,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,7,0,\"Red\",[]],[3,6,0,\"Red\",[\"S\"]],[3,7,1,\"Red\",[]],[3,6,1,\"Red\",[]],[3,7,2,\"Red\",[]],[3,6,2,\"Red\",[]],[3,7,3,\"Red\",[]],[3,6,3,\"Red\",[]],[3,7,4,\"Red\",[]],[3,7,5,\"Red\",[]],[3,7,6,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:53:30.691)
  (NBestInd 0)
  (utterance "select very right of has color red")
  (targetFormula (:for (call veryx right (color red)) (: select)))
  (targetValue
    (string
      [[3,7,3,\"Red\",[]],[3,7,1,\"Red\",[]],[3,7,0,\"Red\",[]],[3,6,3,\"Red\",[\"S\"]],[3,7,5,\"Red\",[]],[3,6,1,\"Red\",[\"S\"]],[3,7,4,\"Red\",[]],[3,7,2,\"Red\",[]],[3,6,2,\"Red\",[\"S\"]],[3,6,0,\"Red\",[\"S\"]],[3,7,6,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,7,0,\"Red\",[]],[3,6,0,\"Red\",[\"S\"]],[3,7,1,\"Red\",[]],[3,6,1,\"Red\",[\"S\"]],[3,7,2,\"Red\",[]],[3,6,2,\"Red\",[\"S\"]],[3,7,3,\"Red\",[]],[3,6,3,\"Red\",[\"S\"]],[3,7,4,\"Red\",[]],[3,7,5,\"Red\",[]],[3,7,6,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:54:02.922)
  (NBestInd 0)
  (utterance "select bot of this")
  (targetFormula (:for (call adj bot this) (: select)))
  (targetValue
    (string
      [[3,7,3,\"Red\",[]],[3,7,1,\"Red\",[]],[3,7,0,\"Red\",[]],[3,6,3,\"Red\",[]],[3,7,5,\"Red\",[]],[3,6,1,\"Red\",[\"S\"]],[3,7,4,\"Red\",[]],[3,7,2,\"Red\",[]],[3,6,2,\"Red\",[\"S\"]],[3,6,0,\"Red\",[\"S\"]],[3,7,6,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,7,0,\"Red\",[]],[3,6,0,\"Red\",[\"S\"]],[3,7,1,\"Red\",[]],[3,6,1,\"Red\",[\"S\"]],[3,7,2,\"Red\",[]],[3,6,2,\"Red\",[\"S\"]],[3,7,3,\"Red\",[]],[3,6,3,\"Red\",[]],[3,7,4,\"Red\",[]],[3,7,5,\"Red\",[]],[3,7,6,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:54:04.745)
  (NBestInd 0)
  (utterance remove)
  (targetFormula (: remove))
  (targetValue (string [[3,7,3,\"Red\",[]],[3,7,1,\"Red\",[]],[3,7,0,\"Red\",[]],[3,6,3,\"Red\",[]],[3,7,5,\"Red\",[]],[3,7,4,\"Red\",[]],[3,7,2,\"Red\",[]],[3,7,6,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      ((string [[3,7,0,\"Red\",[]],[3,7,1,\"Red\",[]],[3,7,2,\"Red\",[]],[3,7,3,\"Red\",[]],[3,6,3,\"Red\",[]],[3,7,4,\"Red\",[]],[3,7,5,\"Red\",[]],[3,7,6,\"Red\",[]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-08-18T14:54:10.569)
  (NBestInd 0)
  (utterance "select very right of has color red")
  (targetFormula (:for (call veryx right (color red)) (: select)))
  (targetValue (string [[3,7,3,\"Red\",[]],[3,7,1,\"Red\",[]],[3,7,0,\"Red\",[]],[3,6,3,\"Red\",[\"S\"]],[3,7,5,\"Red\",[]],[3,7,4,\"Red\",[]],[3,7,2,\"Red\",[]],[3,7,6,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      ((string [[3,7,0,\"Red\",[]],[3,7,1,\"Red\",[]],[3,7,2,\"Red\",[]],[3,7,3,\"Red\",[]],[3,6,3,\"Red\",[\"S\"]],[3,7,4,\"Red\",[]],[3,7,5,\"Red\",[]],[3,7,6,\"Red\",[]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-08-18T14:54:13.144)
  (NBestInd 0)
  (utterance "add red right")
  (targetFormula (: add red right))
  (targetValue (string [[3,7,3,\"Red\",[]],[3,7,1,\"Red\",[]],[3,7,0,\"Red\",[]],[3,6,3,\"Red\",[\"S\"]],[3,7,5,\"Red\",[]],[3,7,4,\"Red\",[]],[3,7,2,\"Red\",[]],[3,5,3,\"Red\",[]],[3,7,6,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string [[3,7,0,\"Red\",[]],[3,7,1,\"Red\",[]],[3,7,2,\"Red\",[]],[3,7,3,\"Red\",[]],[3,6,3,\"Red\",[\"S\"]],[3,5,3,\"Red\",[]],[3,7,4,\"Red\",[]],[3,7,5,\"Red\",[]],[3,7,6,\"Red\",[]]])
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:54:16.961)
  (NBestInd 0)
  (utterance "select very right of has color red")
  (targetFormula (:for (call veryx right (color red)) (: select)))
  (targetValue (string [[3,7,3,\"Red\",[]],[3,7,1,\"Red\",[]],[3,7,0,\"Red\",[]],[3,6,3,\"Red\",[]],[3,7,5,\"Red\",[]],[3,7,4,\"Red\",[]],[3,7,2,\"Red\",[]],[3,5,3,\"Red\",[\"S\"]],[3,7,6,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string [[3,7,0,\"Red\",[]],[3,7,1,\"Red\",[]],[3,7,2,\"Red\",[]],[3,7,3,\"Red\",[]],[3,6,3,\"Red\",[]],[3,5,3,\"Red\",[\"S\"]],[3,7,4,\"Red\",[]],[3,7,5,\"Red\",[]],[3,7,6,\"Red\",[]]])
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:54:21.626)
  (NBestInd 0)
  (utterance "add 3 red")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue
    (string
      [[3,7,3,\"Red\",[]],[3,7,1,\"Red\",[]],[3,7,0,\"Red\",[]],[3,6,3,\"Red\",[]],[3,5,6,\"Red\",[]],[3,7,5,\"Red\",[]],[3,5,4,\"Red\",[]],[3,7,4,\"Red\",[]],[3,7,2,\"Red\",[]],[3,5,5,\"Red\",[]],[3,5,3,\"Red\",[\"S\"]],[3,7,6,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,7,0,\"Red\",[]],[3,7,1,\"Red\",[]],[3,7,2,\"Red\",[]],[3,7,3,\"Red\",[]],[3,6,3,\"Red\",[]],[3,5,3,\"Red\",[\"S\"]],[3,7,4,\"Red\",[]],[3,5,4,\"Red\",[]],[3,7,5,\"Red\",[]],[3,5,5,\"Red\",[]],[3,7,6,\"Red\",[]],[3,5,6,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:54:28.808)
  (NBestInd 0)
  (utterance "3 add red bot")
  (targetFormula (:loop (number 3) (: add red bot)))
  (targetValue
    (string
      [[3,7,1,\"Red\",[]],[3,5,0,\"Red\",[]],[3,6,3,\"Red\",[]],[3,7,5,\"Red\",[]],[3,5,4,\"Red\",[]],[3,5,1,\"Red\",[]],[3,7,2,\"Red\",[]],[3,5,5,\"Red\",[]],[3,7,6,\"Red\",[]],[3,7,3,\"Red\",[]],[3,5,2,\"Red\",[]],[3,7,0,\"Red\",[]],[3,5,6,\"Red\",[]],[3,7,4,\"Red\",[]],[3,5,3,\"Red\",[\"S\"]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,7,0,\"Red\",[]],[3,5,0,\"Red\",[]],[3,7,1,\"Red\",[]],[3,5,1,\"Red\",[]],[3,7,2,\"Red\",[]],[3,5,2,\"Red\",[]],[3,7,3,\"Red\",[]],[3,6,3,\"Red\",[]],[3,5,3,\"Red\",[\"S\"]],[3,7,4,\"Red\",[]],[3,5,4,\"Red\",[]],[3,7,5,\"Red\",[]],[3,5,5,\"Red\",[]],[3,7,6,\"Red\",[]],[3,5,6,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:54:48.599)
  (NBestInd 0)
  (utterance "select very bot of has color red")
  (targetFormula (:for (call veryx bot (color red)) (: select)))
  (targetValue
    (string
      [[3,7,1,\"Red\",[]],[3,5,0,\"Red\",[\"S\"]],[3,6,3,\"Red\",[]],[3,7,5,\"Red\",[]],[3,5,4,\"Red\",[]],[3,5,1,\"Red\",[]],[3,7,2,\"Red\",[]],[3,5,5,\"Red\",[]],[3,7,6,\"Red\",[]],[3,7,3,\"Red\",[]],[3,5,2,\"Red\",[]],[3,7,0,\"Red\",[\"S\"]],[3,5,6,\"Red\",[]],[3,7,4,\"Red\",[]],[3,5,3,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,7,0,\"Red\",[\"S\"]],[3,5,0,\"Red\",[\"S\"]],[3,7,1,\"Red\",[]],[3,5,1,\"Red\",[]],[3,7,2,\"Red\",[]],[3,5,2,\"Red\",[]],[3,7,3,\"Red\",[]],[3,6,3,\"Red\",[]],[3,5,3,\"Red\",[]],[3,7,4,\"Red\",[]],[3,5,4,\"Red\",[]],[3,7,5,\"Red\",[]],[3,5,5,\"Red\",[]],[3,7,6,\"Red\",[]],[3,5,6,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:54:51.295)
  (NBestInd 0)
  (utterance "select very right")
  (targetFormula (:for (call veryx right) (: select)))
  (targetValue
    (string
      [[3,7,1,\"Red\",[]],[3,5,0,\"Red\",[\"S\"]],[3,6,3,\"Red\",[]],[3,7,5,\"Red\",[]],[3,5,4,\"Red\",[]],[3,5,1,\"Red\",[]],[3,7,2,\"Red\",[]],[3,5,5,\"Red\",[]],[3,7,6,\"Red\",[]],[3,7,3,\"Red\",[]],[3,5,2,\"Red\",[]],[3,7,0,\"Red\",[]],[3,5,6,\"Red\",[]],[3,7,4,\"Red\",[]],[3,5,3,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,7,0,\"Red\",[]],[3,5,0,\"Red\",[\"S\"]],[3,7,1,\"Red\",[]],[3,5,1,\"Red\",[]],[3,7,2,\"Red\",[]],[3,5,2,\"Red\",[]],[3,7,3,\"Red\",[]],[3,6,3,\"Red\",[]],[3,5,3,\"Red\",[]],[3,7,4,\"Red\",[]],[3,5,4,\"Red\",[]],[3,7,5,\"Red\",[]],[3,5,5,\"Red\",[]],[3,7,6,\"Red\",[]],[3,5,6,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:54:56.223)
  (NBestInd 0)
  (utterance "add blue right")
  (targetFormula (: add blue right))
  (targetValue
    (string
      [[3,7,1,\"Red\",[]],[3,5,0,\"Red\",[\"S\"]],[3,6,3,\"Red\",[]],[3,7,5,\"Red\",[]],[3,5,4,\"Red\",[]],[3,5,1,\"Red\",[]],[3,7,2,\"Red\",[]],[3,5,5,\"Red\",[]],[3,7,6,\"Red\",[]],[3,7,3,\"Red\",[]],[3,5,2,\"Red\",[]],[3,4,0,\"Blue\",[]],[3,7,0,\"Red\",[]],[3,5,6,\"Red\",[]],[3,7,4,\"Red\",[]],[3,5,3,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,7,0,\"Red\",[]],[3,5,0,\"Red\",[\"S\"]],[3,7,1,\"Red\",[]],[3,5,1,\"Red\",[]],[3,7,2,\"Red\",[]],[3,5,2,\"Red\",[]],[3,7,3,\"Red\",[]],[3,6,3,\"Red\",[]],[3,5,3,\"Red\",[]],[3,7,4,\"Red\",[]],[3,5,4,\"Red\",[]],[3,7,5,\"Red\",[]],[3,5,5,\"Red\",[]],[3,7,6,\"Red\",[]],[3,5,6,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:55:00.750)
  (NBestInd 0)
  (utterance "add green right")
  (targetFormula (: add green right))
  (targetValue
    (string
      [[3,7,1,\"Red\",[]],[3,5,0,\"Red\",[\"S\"]],[3,6,3,\"Red\",[]],[3,7,5,\"Red\",[]],[3,5,4,\"Red\",[]],[3,5,1,\"Red\",[]],[3,7,2,\"Red\",[]],[3,5,5,\"Red\",[]],[3,7,6,\"Red\",[]],[3,7,3,\"Red\",[]],[3,5,2,\"Red\",[]],[3,4,0,\"Green\",[]],[3,7,0,\"Red\",[]],[3,5,6,\"Red\",[]],[3,7,4,\"Red\",[]],[3,5,3,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,7,0,\"Red\",[]],[3,5,0,\"Red\",[\"S\"]],[3,4,0,\"Green\",[]],[3,7,1,\"Red\",[]],[3,5,1,\"Red\",[]],[3,7,2,\"Red\",[]],[3,5,2,\"Red\",[]],[3,7,3,\"Red\",[]],[3,6,3,\"Red\",[]],[3,5,3,\"Red\",[]],[3,7,4,\"Red\",[]],[3,5,4,\"Red\",[]],[3,7,5,\"Red\",[]],[3,5,5,\"Red\",[]],[3,7,6,\"Red\",[]],[3,5,6,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:55:04.463)
  (NBestInd 0)
  (utterance "select green")
  (targetFormula (:for (color green) (: select)))
  (targetValue
    (string
      [[3,7,1,\"Red\",[]],[3,5,0,\"Red\",[]],[3,6,3,\"Red\",[]],[3,7,5,\"Red\",[]],[3,5,4,\"Red\",[]],[3,5,1,\"Red\",[]],[3,7,2,\"Red\",[]],[3,5,5,\"Red\",[]],[3,7,6,\"Red\",[]],[3,7,3,\"Red\",[]],[3,5,2,\"Red\",[]],[3,4,0,\"Green\",[\"S\"]],[3,7,0,\"Red\",[]],[3,5,6,\"Red\",[]],[3,7,4,\"Red\",[]],[3,5,3,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,7,0,\"Red\",[]],[3,5,0,\"Red\",[]],[3,4,0,\"Green\",[\"S\"]],[3,7,1,\"Red\",[]],[3,5,1,\"Red\",[]],[3,7,2,\"Red\",[]],[3,5,2,\"Red\",[]],[3,7,3,\"Red\",[]],[3,6,3,\"Red\",[]],[3,5,3,\"Red\",[]],[3,7,4,\"Red\",[]],[3,5,4,\"Red\",[]],[3,7,5,\"Red\",[]],[3,5,5,\"Red\",[]],[3,7,6,\"Red\",[]],[3,5,6,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:55:09.790)
  (NBestInd 0)
  (utterance "move right 2")
  (targetFormula (:loop (number 2) (: move right)))
  (targetValue
    (string
      [[3,7,1,\"Red\",[]],[3,2,0,\"Green\",[\"S\"]],[3,5,0,\"Red\",[]],[3,6,3,\"Red\",[]],[3,7,5,\"Red\",[]],[3,5,4,\"Red\",[]],[3,5,1,\"Red\",[]],[3,7,2,\"Red\",[]],[3,5,5,\"Red\",[]],[3,7,6,\"Red\",[]],[3,7,3,\"Red\",[]],[3,5,2,\"Red\",[]],[3,7,0,\"Red\",[]],[3,5,6,\"Red\",[]],[3,7,4,\"Red\",[]],[3,5,3,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,7,0,\"Red\",[]],[3,5,0,\"Red\",[]],[3,4,0,\"Green\",[\"S\"]],[3,7,1,\"Red\",[]],[3,5,1,\"Red\",[]],[3,7,2,\"Red\",[]],[3,5,2,\"Red\",[]],[3,7,3,\"Red\",[]],[3,6,3,\"Red\",[]],[3,5,3,\"Red\",[]],[3,7,4,\"Red\",[]],[3,5,4,\"Red\",[]],[3,7,5,\"Red\",[]],[3,5,5,\"Red\",[]],[3,7,6,\"Red\",[]],[3,5,6,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:55:13.558)
  (NBestInd 0)
  (utterance "move right 1")
  (targetFormula (:loop (number 1) (: move right)))
  (targetValue
    (string
      [[3,7,1,\"Red\",[]],[3,5,0,\"Red\",[]],[3,6,3,\"Red\",[]],[3,7,5,\"Red\",[]],[3,5,4,\"Red\",[]],[3,5,1,\"Red\",[]],[3,3,0,\"Green\",[\"S\"]],[3,7,2,\"Red\",[]],[3,5,5,\"Red\",[]],[3,7,6,\"Red\",[]],[3,7,3,\"Red\",[]],[3,5,2,\"Red\",[]],[3,7,0,\"Red\",[]],[3,5,6,\"Red\",[]],[3,7,4,\"Red\",[]],[3,5,3,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,7,0,\"Red\",[]],[3,5,0,\"Red\",[]],[3,3,0,\"Green\",[\"S\"]],[3,7,1,\"Red\",[]],[3,5,1,\"Red\",[]],[3,7,2,\"Red\",[]],[3,5,2,\"Red\",[]],[3,7,3,\"Red\",[]],[3,6,3,\"Red\",[]],[3,5,3,\"Red\",[]],[3,7,4,\"Red\",[]],[3,5,4,\"Red\",[]],[3,7,5,\"Red\",[]],[3,5,5,\"Red\",[]],[3,7,6,\"Red\",[]],[3,5,6,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:55:20.814)
  (NBestInd 0)
  (utterance "add 2 green")
  (targetFormula (:loop (number 2) (: add green top)))
  (targetValue
    (string
      [[3,7,1,\"Red\",[]],[3,5,0,\"Red\",[]],[3,6,3,\"Red\",[]],[3,7,5,\"Red\",[]],[3,5,4,\"Red\",[]],[3,5,1,\"Red\",[]],[3,3,0,\"Green\",[\"S\"]],[3,7,2,\"Red\",[]],[3,5,5,\"Red\",[]],[3,7,6,\"Red\",[]],[3,7,3,\"Red\",[]],[3,5,2,\"Red\",[]],[3,7,0,\"Red\",[]],[3,5,6,\"Red\",[]],[3,3,1,\"Green\",[]],[3,7,4,\"Red\",[]],[3,5,3,\"Red\",[]],[3,3,2,\"Green\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,7,0,\"Red\",[]],[3,5,0,\"Red\",[]],[3,3,0,\"Green\",[\"S\"]],[3,7,1,\"Red\",[]],[3,5,1,\"Red\",[]],[3,3,1,\"Green\",[]],[3,7,2,\"Red\",[]],[3,5,2,\"Red\",[]],[3,3,2,\"Green\",[]],[3,7,3,\"Red\",[]],[3,6,3,\"Red\",[]],[3,5,3,\"Red\",[]],[3,7,4,\"Red\",[]],[3,5,4,\"Red\",[]],[3,7,5,\"Red\",[]],[3,5,5,\"Red\",[]],[3,7,6,\"Red\",[]],[3,5,6,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:55:23.909)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue
    (string
      [[3,7,1,\"Red\",[]],[3,5,0,\"Red\",[]],[3,3,3,\"Blue\",[]],[3,6,3,\"Red\",[]],[3,7,5,\"Red\",[]],[3,5,4,\"Red\",[]],[3,5,1,\"Red\",[]],[3,3,0,\"Green\",[\"S\"]],[3,7,2,\"Red\",[]],[3,5,5,\"Red\",[]],[3,7,6,\"Red\",[]],[3,7,3,\"Red\",[]],[3,5,2,\"Red\",[]],[3,7,0,\"Red\",[]],[3,5,6,\"Red\",[]],[3,3,1,\"Green\",[]],[3,7,4,\"Red\",[]],[3,5,3,\"Red\",[]],[3,3,2,\"Green\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,7,0,\"Red\",[]],[3,5,0,\"Red\",[]],[3,3,0,\"Green\",[\"S\"]],[3,7,1,\"Red\",[]],[3,5,1,\"Red\",[]],[3,3,1,\"Green\",[]],[3,7,2,\"Red\",[]],[3,5,2,\"Red\",[]],[3,3,2,\"Green\",[]],[3,7,3,\"Red\",[]],[3,6,3,\"Red\",[]],[3,5,3,\"Red\",[]],[3,3,3,\"Blue\",[]],[3,7,4,\"Red\",[]],[3,5,4,\"Red\",[]],[3,7,5,\"Red\",[]],[3,5,5,\"Red\",[]],[3,7,6,\"Red\",[]],[3,5,6,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:55:26.445)
  (NBestInd 0)
  (utterance "add green")
  (targetFormula (: add green top))
  (targetValue
    (string
      [[3,7,1,\"Red\",[]],[3,5,0,\"Red\",[]],[3,3,3,\"Blue\",[]],[3,6,3,\"Red\",[]],[3,7,5,\"Red\",[]],[3,5,4,\"Red\",[]],[3,5,1,\"Red\",[]],[3,3,0,\"Green\",[\"S\"]],[3,7,2,\"Red\",[]],[3,5,5,\"Red\",[]],[3,3,4,\"Green\",[]],[3,7,6,\"Red\",[]],[3,7,3,\"Red\",[]],[3,5,2,\"Red\",[]],[3,7,0,\"Red\",[]],[3,5,6,\"Red\",[]],[3,3,1,\"Green\",[]],[3,7,4,\"Red\",[]],[3,5,3,\"Red\",[]],[3,3,2,\"Green\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,7,0,\"Red\",[]],[3,5,0,\"Red\",[]],[3,3,0,\"Green\",[\"S\"]],[3,7,1,\"Red\",[]],[3,5,1,\"Red\",[]],[3,3,1,\"Green\",[]],[3,7,2,\"Red\",[]],[3,5,2,\"Red\",[]],[3,3,2,\"Green\",[]],[3,7,3,\"Red\",[]],[3,6,3,\"Red\",[]],[3,5,3,\"Red\",[]],[3,3,3,\"Blue\",[]],[3,7,4,\"Red\",[]],[3,5,4,\"Red\",[]],[3,3,4,\"Green\",[]],[3,7,5,\"Red\",[]],[3,5,5,\"Red\",[]],[3,7,6,\"Red\",[]],[3,5,6,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:55:28.503)
  (NBestInd 0)
  (utterance "remove blue")
  (targetFormula (:for (color blue) (: remove)))
  (targetValue
    (string
      [[3,7,1,\"Red\",[]],[3,5,0,\"Red\",[]],[3,6,3,\"Red\",[]],[3,7,5,\"Red\",[]],[3,5,4,\"Red\",[]],[3,5,1,\"Red\",[]],[3,3,0,\"Green\",[\"S\"]],[3,7,2,\"Red\",[]],[3,5,5,\"Red\",[]],[3,3,4,\"Green\",[]],[3,7,6,\"Red\",[]],[3,7,3,\"Red\",[]],[3,5,2,\"Red\",[]],[3,7,0,\"Red\",[]],[3,5,6,\"Red\",[]],[3,3,1,\"Green\",[]],[3,7,4,\"Red\",[]],[3,5,3,\"Red\",[]],[3,3,2,\"Green\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,7,0,\"Red\",[]],[3,5,0,\"Red\",[]],[3,3,0,\"Green\",[\"S\"]],[3,7,1,\"Red\",[]],[3,5,1,\"Red\",[]],[3,3,1,\"Green\",[]],[3,7,2,\"Red\",[]],[3,5,2,\"Red\",[]],[3,3,2,\"Green\",[]],[3,7,3,\"Red\",[]],[3,6,3,\"Red\",[]],[3,5,3,\"Red\",[]],[3,7,4,\"Red\",[]],[3,5,4,\"Red\",[]],[3,3,4,\"Green\",[]],[3,7,5,\"Red\",[]],[3,5,5,\"Red\",[]],[3,7,6,\"Red\",[]],[3,5,6,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:55:41.765)
  (NBestInd 0)
  (utterance "add blue right")
  (targetFormula (: add blue right))
  (targetValue
    (string
      [[3,7,1,\"Red\",[]],[3,2,0,\"Blue\",[]],[3,5,0,\"Red\",[]],[3,6,3,\"Red\",[]],[3,7,5,\"Red\",[]],[3,5,4,\"Red\",[]],[3,5,1,\"Red\",[]],[3,3,0,\"Green\",[\"S\"]],[3,7,2,\"Red\",[]],[3,5,5,\"Red\",[]],[3,3,4,\"Green\",[]],[3,7,6,\"Red\",[]],[3,7,3,\"Red\",[]],[3,5,2,\"Red\",[]],[3,7,0,\"Red\",[]],[3,5,6,\"Red\",[]],[3,3,1,\"Green\",[]],[3,7,4,\"Red\",[]],[3,5,3,\"Red\",[]],[3,3,2,\"Green\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,7,0,\"Red\",[]],[3,5,0,\"Red\",[]],[3,3,0,\"Green\",[\"S\"]],[3,2,0,\"Blue\",[]],[3,7,1,\"Red\",[]],[3,5,1,\"Red\",[]],[3,3,1,\"Green\",[]],[3,7,2,\"Red\",[]],[3,5,2,\"Red\",[]],[3,3,2,\"Green\",[]],[3,7,3,\"Red\",[]],[3,6,3,\"Red\",[]],[3,5,3,\"Red\",[]],[3,7,4,\"Red\",[]],[3,5,4,\"Red\",[]],[3,3,4,\"Green\",[]],[3,7,5,\"Red\",[]],[3,5,5,\"Red\",[]],[3,7,6,\"Red\",[]],[3,5,6,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:55:43.489)
  (NBestInd 0)
  (utterance "select blue")
  (targetFormula (:for (color blue) (: select)))
  (targetValue
    (string
      [[3,2,0,\"Blue\",[\"S\"]],[3,7,1,\"Red\",[]],[3,5,0,\"Red\",[]],[3,6,3,\"Red\",[]],[3,7,5,\"Red\",[]],[3,5,4,\"Red\",[]],[3,5,1,\"Red\",[]],[3,3,0,\"Green\",[]],[3,7,2,\"Red\",[]],[3,5,5,\"Red\",[]],[3,3,4,\"Green\",[]],[3,7,6,\"Red\",[]],[3,7,3,\"Red\",[]],[3,5,2,\"Red\",[]],[3,7,0,\"Red\",[]],[3,5,6,\"Red\",[]],[3,3,1,\"Green\",[]],[3,7,4,\"Red\",[]],[3,5,3,\"Red\",[]],[3,3,2,\"Green\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,7,0,\"Red\",[]],[3,5,0,\"Red\",[]],[3,3,0,\"Green\",[]],[3,2,0,\"Blue\",[\"S\"]],[3,7,1,\"Red\",[]],[3,5,1,\"Red\",[]],[3,3,1,\"Green\",[]],[3,7,2,\"Red\",[]],[3,5,2,\"Red\",[]],[3,3,2,\"Green\",[]],[3,7,3,\"Red\",[]],[3,6,3,\"Red\",[]],[3,5,3,\"Red\",[]],[3,7,4,\"Red\",[]],[3,5,4,\"Red\",[]],[3,3,4,\"Green\",[]],[3,7,5,\"Red\",[]],[3,5,5,\"Red\",[]],[3,7,6,\"Red\",[]],[3,5,6,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:55:48.716)
  (NBestInd 0)
  (utterance "move right")
  (targetFormula (: move right))
  (targetValue
    (string
      [[3,7,1,\"Red\",[]],[3,5,0,\"Red\",[]],[3,6,3,\"Red\",[]],[3,7,5,\"Red\",[]],[3,5,4,\"Red\",[]],[3,5,1,\"Red\",[]],[3,3,0,\"Green\",[]],[3,7,2,\"Red\",[]],[3,5,5,\"Red\",[]],[3,3,4,\"Green\",[]],[3,7,6,\"Red\",[]],[3,7,3,\"Red\",[]],[3,5,2,\"Red\",[]],[3,7,0,\"Red\",[]],[3,5,6,\"Red\",[]],[3,3,1,\"Green\",[]],[3,1,0,\"Blue\",[\"S\"]],[3,7,4,\"Red\",[]],[3,5,3,\"Red\",[]],[3,3,2,\"Green\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,7,0,\"Red\",[]],[3,5,0,\"Red\",[]],[3,3,0,\"Green\",[]],[3,1,0,\"Blue\",[\"S\"]],[3,7,1,\"Red\",[]],[3,5,1,\"Red\",[]],[3,3,1,\"Green\",[]],[3,7,2,\"Red\",[]],[3,5,2,\"Red\",[]],[3,3,2,\"Green\",[]],[3,7,3,\"Red\",[]],[3,6,3,\"Red\",[]],[3,5,3,\"Red\",[]],[3,7,4,\"Red\",[]],[3,5,4,\"Red\",[]],[3,3,4,\"Green\",[]],[3,7,5,\"Red\",[]],[3,5,5,\"Red\",[]],[3,7,6,\"Red\",[]],[3,5,6,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:55:56.405)
  (NBestInd 0)
  (utterance "add brown")
  (targetFormula (: add brown top))
  (targetValue
    (string
      [[3,7,1,\"Red\",[]],[3,5,0,\"Red\",[]],[3,6,3,\"Red\",[]],[3,7,5,\"Red\",[]],[3,5,4,\"Red\",[]],[3,5,1,\"Red\",[]],[3,3,0,\"Green\",[]],[3,7,2,\"Red\",[]],[3,5,5,\"Red\",[]],[3,3,4,\"Green\",[]],[3,7,6,\"Red\",[]],[3,7,3,\"Red\",[]],[3,5,2,\"Red\",[]],[3,7,0,\"Red\",[]],[3,5,6,\"Red\",[]],[3,3,1,\"Green\",[]],[3,1,0,\"Blue\",[\"S\"]],[3,7,4,\"Red\",[]],[3,1,1,\"Brown\",[]],[3,5,3,\"Red\",[]],[3,3,2,\"Green\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,7,0,\"Red\",[]],[3,5,0,\"Red\",[]],[3,3,0,\"Green\",[]],[3,1,0,\"Blue\",[\"S\"]],[3,7,1,\"Red\",[]],[3,5,1,\"Red\",[]],[3,3,1,\"Green\",[]],[3,1,1,\"Brown\",[]],[3,7,2,\"Red\",[]],[3,5,2,\"Red\",[]],[3,3,2,\"Green\",[]],[3,7,3,\"Red\",[]],[3,6,3,\"Red\",[]],[3,5,3,\"Red\",[]],[3,7,4,\"Red\",[]],[3,5,4,\"Red\",[]],[3,3,4,\"Green\",[]],[3,7,5,\"Red\",[]],[3,5,5,\"Red\",[]],[3,7,6,\"Red\",[]],[3,5,6,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:55:59.397)
  (NBestInd 0)
  (utterance "add 5 blue")
  (targetFormula (:loop (number 5) (: add blue top)))
  (targetValue
    (string
      [[3,7,1,\"Red\",[]],[3,5,0,\"Red\",[]],[3,6,3,\"Red\",[]],[3,1,6,\"Blue\",[]],[3,5,5,\"Red\",[]],[3,3,4,\"Green\",[]],[3,7,6,\"Red\",[]],[3,7,3,\"Red\",[]],[3,5,2,\"Red\",[]],[3,1,3,\"Blue\",[]],[3,7,0,\"Red\",[]],[3,3,1,\"Green\",[]],[3,1,0,\"Blue\",[\"S\"]],[3,1,5,\"Blue\",[]],[3,1,2,\"Blue\",[]],[3,7,5,\"Red\",[]],[3,5,4,\"Red\",[]],[3,5,1,\"Red\",[]],[3,3,0,\"Green\",[]],[3,7,2,\"Red\",[]],[3,5,6,\"Red\",[]],[3,7,4,\"Red\",[]],[3,1,4,\"Blue\",[]],[3,1,1,\"Brown\",[]],[3,5,3,\"Red\",[]],[3,3,2,\"Green\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,7,0,\"Red\",[]],[3,5,0,\"Red\",[]],[3,3,0,\"Green\",[]],[3,1,0,\"Blue\",[\"S\"]],[3,7,1,\"Red\",[]],[3,5,1,\"Red\",[]],[3,3,1,\"Green\",[]],[3,1,1,\"Brown\",[]],[3,7,2,\"Red\",[]],[3,5,2,\"Red\",[]],[3,3,2,\"Green\",[]],[3,1,2,\"Blue\",[]],[3,7,3,\"Red\",[]],[3,6,3,\"Red\",[]],[3,5,3,\"Red\",[]],[3,1,3,\"Blue\",[]],[3,7,4,\"Red\",[]],[3,5,4,\"Red\",[]],[3,3,4,\"Green\",[]],[3,1,4,\"Blue\",[]],[3,7,5,\"Red\",[]],[3,5,5,\"Red\",[]],[3,1,5,\"Blue\",[]],[3,7,6,\"Red\",[]],[3,5,6,\"Red\",[]],[3,1,6,\"Blue\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:56:01.861)
  (NBestInd 0)
  (utterance "remove brown")
  (targetFormula (:for (color brown) (: remove)))
  (targetValue
    (string
      [[3,7,1,\"Red\",[]],[3,5,0,\"Red\",[]],[3,6,3,\"Red\",[]],[3,1,6,\"Blue\",[]],[3,5,5,\"Red\",[]],[3,3,4,\"Green\",[]],[3,7,6,\"Red\",[]],[3,7,3,\"Red\",[]],[3,5,2,\"Red\",[]],[3,1,3,\"Blue\",[]],[3,7,0,\"Red\",[]],[3,3,1,\"Green\",[]],[3,1,0,\"Blue\",[\"S\"]],[3,1,5,\"Blue\",[]],[3,1,2,\"Blue\",[]],[3,7,5,\"Red\",[]],[3,5,4,\"Red\",[]],[3,5,1,\"Red\",[]],[3,3,0,\"Green\",[]],[3,7,2,\"Red\",[]],[3,5,6,\"Red\",[]],[3,7,4,\"Red\",[]],[3,1,4,\"Blue\",[]],[3,5,3,\"Red\",[]],[3,3,2,\"Green\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 18)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,7,0,\"Red\",[]],[3,5,0,\"Red\",[]],[3,3,0,\"Green\",[]],[3,1,0,\"Blue\",[\"S\"]],[3,7,1,\"Red\",[]],[3,5,1,\"Red\",[]],[3,3,1,\"Green\",[]],[3,7,2,\"Red\",[]],[3,5,2,\"Red\",[]],[3,3,2,\"Green\",[]],[3,1,2,\"Blue\",[]],[3,7,3,\"Red\",[]],[3,6,3,\"Red\",[]],[3,5,3,\"Red\",[]],[3,1,3,\"Blue\",[]],[3,7,4,\"Red\",[]],[3,5,4,\"Red\",[]],[3,3,4,\"Green\",[]],[3,1,4,\"Blue\",[]],[3,7,5,\"Red\",[]],[3,5,5,\"Red\",[]],[3,1,5,\"Blue\",[]],[3,7,6,\"Red\",[]],[3,5,6,\"Red\",[]],[3,1,6,\"Blue\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-18T14:56:05.340)
  (NBestInd 0)
  (utterance "select nothing")
  (targetFormula (:for nothing (: select)))
  (targetValue
    (string
      [[3,7,1,\"Red\",[]],[3,5,0,\"Red\",[]],[3,6,3,\"Red\",[]],[3,1,6,\"Blue\",[]],[3,5,5,\"Red\",[]],[3,3,4,\"Green\",[]],[3,7,6,\"Red\",[]],[3,7,3,\"Red\",[]],[3,5,2,\"Red\",[]],[3,1,3,\"Blue\",[]],[3,7,0,\"Red\",[]],[3,3,1,\"Green\",[]],[3,1,0,\"Blue\",[]],[3,1,5,\"Blue\",[]],[3,1,2,\"Blue\",[]],[3,7,5,\"Red\",[]],[3,5,4,\"Red\",[]],[3,5,1,\"Red\",[]],[3,3,0,\"Green\",[]],[3,7,2,\"Red\",[]],[3,5,6,\"Red\",[]],[3,7,4,\"Red\",[]],[3,1,4,\"Blue\",[]],[3,5,3,\"Red\",[]],[3,3,2,\"Green\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context (date 2016 7 19) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-19T15:44:17.846)
  (NBestInd 0)
  (utterance "add red top")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 19) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-19T15:44:20.249)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 19) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-19T15:44:53.516)
  (NBestInd 0)
  (utterance "add red top")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 19) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-19T15:48:27.397)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 19) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-19T15:48:29.266)
  (NBestInd 0)
  (utterance "add green left")
  (targetFormula (: add green left))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 19) (graph NaiveKnowledgeGraph ((string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-19T15:48:37.050)
  (NBestInd 0)
  (utterance "isolate selected [ add red top ]")
  (targetFormula (:isolate selected (: add red top)))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 19) (graph NaiveKnowledgeGraph ((string [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-19T15:48:53.752)
  (NBestInd 0)
  (utterance "isolate selected [ add red left ]")
  (targetFormula (:isolate selected (: add red left)))
  (targetValue (string [[3,4,0,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 19) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-19T15:52:38.084)
  (NBestInd 0)
  (utterance "add 3 x 3 brown cube")
  (targetFormula (: select (color brown)))
  (targetValue (string [[3,3,0,\"Anchor\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 19) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-19T15:53:43.554)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 19) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-19T15:54:45.535)
  (NBestInd 0)
  (utterance "add 3 red  ;  isolate selected [ add red left ]")
  (targetFormula (:loop (number 3) (:s (: select (color red)) (:isolate selected (: add red left)))))
  (targetValue (string [[3,4,0,\"Red\",[\"S\"]],[3,6,0,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,5,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 19) (graph NaiveKnowledgeGraph ((string [[3,6,0,\"Red\",[]],[3,5,0,\"Red\",[\"S\"]],[3,4,0,\"Red\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-19T15:55:02.743)
  (NBestInd 0)
  (utterance "select very right")
  (targetFormula (:for (call veryx right) (: select)))
  (targetValue (string [[3,4,0,\"Red\",[]],[3,6,0,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,5,0,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 19) (graph NaiveKnowledgeGraph ((string [[3,6,0,\"Red\",[]],[3,5,0,\"Red\",[]],[3,4,0,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-19T15:55:19.343)
  (NBestInd 12)
  (utterance "add green back 3")
  (targetFormula (:loop (number 3) (: add green back)))
  (targetValue (string [[3,4,0,\"Red\",[]],[3,6,0,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[4,3,0,\"Green\",[]],[3,5,0,\"Red\",[]],[5,3,0,\"Green\",[]],[6,3,0,\"Green\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      ((string [[6,3,0,\"Green\",[]],[5,3,0,\"Green\",[]],[4,3,0,\"Green\",[]],[3,6,0,\"Red\",[]],[3,5,0,\"Red\",[]],[3,4,0,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-08-19T15:55:46.993)
  (NBestInd 0)
  (utterance "select back of this")
  (targetFormula (:for (call adj back this) (: select)))
  (targetValue (string [[3,4,0,\"Red\",[]],[3,6,0,\"Red\",[]],[3,3,0,\"Red\",[]],[4,3,0,\"Red\",[\"S\"]],[5,3,0,\"Green\",[]],[3,5,0,\"Red\",[]],[6,3,0,\"Green\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      ((string [[6,3,0,\"Green\",[]],[5,3,0,\"Green\",[]],[4,3,0,\"Red\",[\"S\"]],[3,6,0,\"Red\",[]],[3,5,0,\"Red\",[]],[3,4,0,\"Red\",[]],[3,3,0,\"Red\",[]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-08-19T15:56:01.257)
  (NBestInd 0)
  (utterance "select back of this")
  (targetFormula (:for (call adj back this) (: select)))
  (targetValue (string [[3,4,0,\"Red\",[]],[3,6,0,\"Red\",[]],[3,3,0,\"Red\",[]],[4,3,0,\"Red\",[]],[3,5,0,\"Red\",[]],[5,3,0,\"Red\",[\"S\"]],[6,3,0,\"Green\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      ((string [[6,3,0,\"Green\",[]],[5,3,0,\"Red\",[\"S\"]],[4,3,0,\"Red\",[]],[3,6,0,\"Red\",[]],[3,5,0,\"Red\",[]],[3,4,0,\"Red\",[]],[3,3,0,\"Red\",[]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-08-19T15:56:12.446)
  (NBestInd 0)
  (utterance "select has color green")
  (targetFormula (:for (color green) (: select)))
  (targetValue (string [[3,4,0,\"Red\",[]],[3,6,0,\"Red\",[]],[3,3,0,\"Red\",[]],[4,3,0,\"Red\",[]],[5,3,0,\"Red\",[]],[3,5,0,\"Red\",[]],[6,3,0,\"Green\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      ((string [[6,3,0,\"Green\",[\"S\"]],[5,3,0,\"Red\",[]],[4,3,0,\"Red\",[]],[3,6,0,\"Red\",[]],[3,5,0,\"Red\",[]],[3,4,0,\"Red\",[]],[3,3,0,\"Red\",[]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-08-19T15:56:19.521)
  (NBestInd 0)
  (utterance "select front of this")
  (targetFormula (:for (call adj front this) (: select)))
  (targetValue (string [[3,4,0,\"Red\",[]],[3,6,0,\"Red\",[]],[3,3,0,\"Red\",[]],[4,3,0,\"Red\",[]],[3,5,0,\"Red\",[]],[5,3,0,\"Green\",[\"S\"]],[6,3,0,\"Green\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      ((string [[6,3,0,\"Green\",[]],[5,3,0,\"Green\",[\"S\"]],[4,3,0,\"Red\",[]],[3,6,0,\"Red\",[]],[3,5,0,\"Red\",[]],[3,4,0,\"Red\",[]],[3,3,0,\"Red\",[]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-08-19T15:57:01.583)
  (NBestInd 0)
  (utterance "isolate this [repeat 3 [add blue front]]")
  (targetFormula (:isolate this (:loop (number 3) (: add blue front))))
  (targetValue (string [[3,4,0,\"Red\",[]],[3,6,0,\"Red\",[]],[2,3,0,\"Blue\",[]],[3,3,0,\"Blue\",[]],[4,3,0,\"Blue\",[]],[5,3,0,\"Green\",[\"S\"]],[3,5,0,\"Red\",[]],[6,3,0,\"Green\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 19) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-19T16:06:14.750)
  (NBestInd 7)
  (utterance "add red left 3")
  (targetFormula (:loop (number 3) (: add red left)))
  (targetValue (string [[3,4,0,\"Red\",[]],[3,6,0,\"Red\",[]],[3,3,0,\"Anchor\",[\"S\"]],[3,5,0,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 19) (graph NaiveKnowledgeGraph ((string [[3,6,0,\"Red\",[]],[3,5,0,\"Red\",[]],[3,4,0,\"Red\",[]],[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-19T16:06:19.587)
  (NBestInd 0)
  (utterance "select left of this")
  (targetFormula (:for (call adj left this) (: select)))
  (targetValue (string [[3,4,0,\"Red\",[\"S\"]],[3,6,0,\"Red\",[]],[3,3,0,\"Anchor\",[]],[3,5,0,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 19) (graph NaiveKnowledgeGraph ((string [[3,6,0,\"Red\",[]],[3,5,0,\"Red\",[]],[3,4,0,\"Red\",[\"S\"]],[3,3,0,\"Anchor\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-19T16:06:46.361)
  (NBestInd 0)
  (utterance "update color green")
  (targetFormula (: update color green))
  (targetValue (string [[3,4,0,\"Green\",[\"S\"]],[3,6,0,\"Red\",[]],[3,3,0,\"Anchor\",[]],[3,5,0,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 19) (graph NaiveKnowledgeGraph ((string [[3,6,0,\"Red\",[]],[3,5,0,\"Red\",[]],[3,4,0,\"Green\",[\"S\"]],[3,3,0,\"Anchor\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-19T16:06:54.665)
  (NBestInd 0)
  (utterance "select left of this")
  (targetFormula (:for (call adj left this) (: select)))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,6,0,\"Red\",[]],[3,3,0,\"Anchor\",[]],[3,5,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 19) (graph NaiveKnowledgeGraph ((string [[3,6,0,\"Red\",[]],[3,5,0,\"Red\",[\"S\"]],[3,4,0,\"Green\",[]],[3,3,0,\"Anchor\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-19T16:06:59.152)
  (NBestInd 0)
  (utterance "select left of this")
  (targetFormula (:for (call adj left this) (: select)))
  (targetValue (string [[3,4,0,\"Green\",[]],[3,6,0,\"Red\",[\"S\"]],[3,3,0,\"Anchor\",[]],[3,5,0,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 19) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-19T16:07:27.895)
  (NBestInd 0)
  (utterance "add red top 7")
  (targetFormula (:loop (number 7) (: add red top)))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,5,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,6,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,5,\"Red\",[]],[3,3,6,\"Red\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-08-19T16:08:17.309)
  (NBestInd 0)
  (utterance "repeat 4 [add green left ;  add green right ;  repeat 2[ select top of selected]]")
  (targetFormula (:loop (number 4) (:s (:s (: add green left) (: add green right)) (:loop (number 2) (:for (call adj top selected) (: select))))))
  (targetValue
    (string
      [[3,2,0,\"Green\",[]],[3,3,3,\"Red\",[]],[3,4,6,\"Green\",[]],[3,2,2,\"Green\",[]],[3,3,5,\"Red\",[]],[3,3,0,\"Red\",[]],[3,2,4,\"Green\",[]],[3,3,2,\"Red\",[]],[3,4,0,\"Green\",[]],[3,2,6,\"Green\",[]],[3,3,4,\"Red\",[]],[3,4,2,\"Green\",[]],[3,3,6,\"Red\",[]],[3,3,1,\"Red\",[]],[3,4,4,\"Green\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,4,0,\"Green\",[]],[3,3,0,\"Red\",[]],[3,2,0,\"Green\",[]],[3,3,1,\"Red\",[]],[3,4,2,\"Green\",[]],[3,3,2,\"Red\",[]],[3,2,2,\"Green\",[]],[3,3,3,\"Red\",[]],[3,4,4,\"Green\",[]],[3,3,4,\"Red\",[]],[3,2,4,\"Green\",[]],[3,3,5,\"Red\",[]],[3,4,6,\"Green\",[]],[3,3,6,\"Red\",[]],[3,2,6,\"Green\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-19T16:08:36.643)
  (NBestInd 0)
  (utterance "select very top of all")
  (targetFormula (:for (call veryx top *) (: select)))
  (targetValue
    (string
      [[3,2,0,\"Green\",[]],[3,3,3,\"Red\",[]],[3,4,6,\"Green\",[\"S\"]],[3,2,2,\"Green\",[]],[3,3,5,\"Red\",[]],[3,3,0,\"Red\",[]],[3,2,4,\"Green\",[]],[3,3,2,\"Red\",[]],[3,4,0,\"Green\",[]],[3,2,6,\"Green\",[\"S\"]],[3,3,4,\"Red\",[]],[3,4,2,\"Green\",[]],[3,3,6,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,4,4,\"Green\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context (date 2016 7 19) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-19T16:09:26.985)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[3,3,0,\"Orange\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 19) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Orange\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-19T16:09:29.137)
  (NBestInd 0)
  (utterance "add orange back 3")
  (targetFormula (:loop (number 3) (: add orange top)))
  (targetValue (string [[3,3,3,\"Orange\",[]],[3,3,0,\"Orange\",[\"S\"]],[3,3,1,\"Orange\",[]],[3,3,2,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 19) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Orange\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-19T16:09:33.912)
  (NBestInd 2)
  (utterance "add orange back 3")
  (targetFormula (:loop (number 3) (: add orange back)))
  (targetValue (string [[3,3,0,\"Orange\",[\"S\"]],[4,3,0,\"Orange\",[]],[5,3,0,\"Orange\",[]],[6,3,0,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 19) (graph NaiveKnowledgeGraph ((string [[6,3,0,\"Orange\",[]],[5,3,0,\"Orange\",[]],[4,3,0,\"Orange\",[]],[3,3,0,\"Orange\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-19T16:09:39.554)
  (NBestInd 0)
  (utterance "select orange")
  (targetFormula (:for (color orange) (: select)))
  (targetValue (string [[3,3,0,\"Orange\",[\"S\"]],[4,3,0,\"Orange\",[\"S\"]],[5,3,0,\"Orange\",[\"S\"]],[6,3,0,\"Orange\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 19) (graph NaiveKnowledgeGraph ((string [[6,3,0,\"Orange\",[\"S\"]],[5,3,0,\"Orange\",[\"S\"]],[4,3,0,\"Orange\",[\"S\"]],[3,3,0,\"Orange\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-19T16:09:42.968)
  (NBestInd 1)
  (utterance "add orange left 3")
  (targetFormula (:loop (number 3) (: add orange left)))
  (targetValue
    (string
      [[3,6,0,\"Orange\",[]],[4,6,0,\"Orange\",[]],[5,6,0,\"Orange\",[]],[6,6,0,\"Orange\",[]],[3,3,0,\"Orange\",[\"S\"]],[4,3,0,\"Orange\",[\"S\"]],[5,3,0,\"Orange\",[\"S\"]],[6,3,0,\"Orange\",[\"S\"]],[3,4,0,\"Orange\",[]],[4,4,0,\"Orange\",[]],[5,4,0,\"Orange\",[]],[6,4,0,\"Orange\",[]],[3,5,0,\"Orange\",[]],[4,5,0,\"Orange\",[]],[5,5,0,\"Orange\",[]],[6,5,0,\"Orange\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[6,6,0,\"Orange\",[]],[6,5,0,\"Orange\",[]],[6,4,0,\"Orange\",[]],[6,3,0,\"Orange\",[\"S\"]],[5,6,0,\"Orange\",[]],[5,5,0,\"Orange\",[]],[5,4,0,\"Orange\",[]],[5,3,0,\"Orange\",[\"S\"]],[4,6,0,\"Orange\",[]],[4,5,0,\"Orange\",[]],[4,4,0,\"Orange\",[]],[4,3,0,\"Orange\",[\"S\"]],[3,6,0,\"Orange\",[]],[3,5,0,\"Orange\",[]],[3,4,0,\"Orange\",[]],[3,3,0,\"Orange\",[\"S\"]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-19T16:09:46.752)
  (NBestInd 0)
  (utterance "select orange")
  (targetFormula (:for (color orange) (: select)))
  (targetValue
    (string
      [[3,6,0,\"Orange\",[\"S\"]],[4,6,0,\"Orange\",[\"S\"]],[5,6,0,\"Orange\",[\"S\"]],[6,6,0,\"Orange\",[\"S\"]],[3,3,0,\"Orange\",[\"S\"]],[4,3,0,\"Orange\",[\"S\"]],[5,3,0,\"Orange\",[\"S\"]],[6,3,0,\"Orange\",[\"S\"]],[3,4,0,\"Orange\",[\"S\"]],[4,4,0,\"Orange\",[\"S\"]],[5,4,0,\"Orange\",[\"S\"]],[6,4,0,\"Orange\",[\"S\"]],[3,5,0,\"Orange\",[\"S\"]],[4,5,0,\"Orange\",[\"S\"]],[5,5,0,\"Orange\",[\"S\"]],[6,5,0,\"Orange\",[\"S\"]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[6,6,0,\"Orange\",[\"S\"]],[6,5,0,\"Orange\",[\"S\"]],[6,4,0,\"Orange\",[\"S\"]],[6,3,0,\"Orange\",[\"S\"]],[5,6,0,\"Orange\",[\"S\"]],[5,5,0,\"Orange\",[\"S\"]],[5,4,0,\"Orange\",[\"S\"]],[5,3,0,\"Orange\",[\"S\"]],[4,6,0,\"Orange\",[\"S\"]],[4,5,0,\"Orange\",[\"S\"]],[4,4,0,\"Orange\",[\"S\"]],[4,3,0,\"Orange\",[\"S\"]],[3,6,0,\"Orange\",[\"S\"]],[3,5,0,\"Orange\",[\"S\"]],[3,4,0,\"Orange\",[\"S\"]],[3,3,0,\"Orange\",[\"S\"]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-19T16:09:53.152)
  (NBestInd 0)
  (utterance "add orange right")
  (targetFormula (: add orange right))
  (targetValue
    (string
      [[3,2,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[6,2,0,\"Orange\",[]],[3,6,0,\"Orange\",[\"S\"]],[4,6,0,\"Orange\",[\"S\"]],[5,6,0,\"Orange\",[\"S\"]],[6,6,0,\"Orange\",[\"S\"]],[3,3,0,\"Orange\",[\"S\"]],[4,3,0,\"Orange\",[\"S\"]],[5,3,0,\"Orange\",[\"S\"]],[6,3,0,\"Orange\",[\"S\"]],[3,4,0,\"Orange\",[\"S\"]],[4,4,0,\"Orange\",[\"S\"]],[5,4,0,\"Orange\",[\"S\"]],[6,4,0,\"Orange\",[\"S\"]],[3,5,0,\"Orange\",[\"S\"]],[4,5,0,\"Orange\",[\"S\"]],[5,5,0,\"Orange\",[\"S\"]],[6,5,0,\"Orange\",[\"S\"]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[6,6,0,\"Orange\",[\"S\"]],[6,5,0,\"Orange\",[\"S\"]],[6,4,0,\"Orange\",[\"S\"]],[6,3,0,\"Orange\",[\"S\"]],[6,2,0,\"Orange\",[]],[5,6,0,\"Orange\",[\"S\"]],[5,5,0,\"Orange\",[\"S\"]],[5,4,0,\"Orange\",[\"S\"]],[5,3,0,\"Orange\",[\"S\"]],[5,2,0,\"Orange\",[]],[4,6,0,\"Orange\",[\"S\"]],[4,5,0,\"Orange\",[\"S\"]],[4,4,0,\"Orange\",[\"S\"]],[4,3,0,\"Orange\",[\"S\"]],[4,2,0,\"Orange\",[]],[3,6,0,\"Orange\",[\"S\"]],[3,5,0,\"Orange\",[\"S\"]],[3,4,0,\"Orange\",[\"S\"]],[3,3,0,\"Orange\",[\"S\"]],[3,2,0,\"Orange\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-19T16:09:59.815)
  (NBestInd 0)
  (utterance "add orange left  ;  add orange back  ;  add orange front")
  (targetFormula (:s (:s (: add orange left) (: add orange back)) (: add orange front)))
  (targetValue
    (string
      [[2,6,0,\"Orange\",[]],[3,6,0,\"Orange\",[\"S\"]],[4,6,0,\"Orange\",[\"S\"]],[5,6,0,\"Orange\",[\"S\"]],[6,6,0,\"Orange\",[\"S\"]],[7,6,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[3,3,0,\"Orange\",[\"S\"]],[4,3,0,\"Orange\",[\"S\"]],[5,3,0,\"Orange\",[\"S\"]],[6,3,0,\"Orange\",[\"S\"]],[7,3,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[3,5,0,\"Orange\",[\"S\"]],[4,5,0,\"Orange\",[\"S\"]],[5,5,0,\"Orange\",[\"S\"]],[6,5,0,\"Orange\",[\"S\"]],[7,5,0,\"Orange\",[]],[3,2,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[6,2,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[6,7,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[3,4,0,\"Orange\",[\"S\"]],[4,4,0,\"Orange\",[\"S\"]],[5,4,0,\"Orange\",[\"S\"]],[6,4,0,\"Orange\",[\"S\"]],[7,4,0,\"Orange\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[7,6,0,\"Orange\",[]],[7,5,0,\"Orange\",[]],[7,4,0,\"Orange\",[]],[7,3,0,\"Orange\",[]],[6,7,0,\"Orange\",[]],[6,6,0,\"Orange\",[\"S\"]],[6,5,0,\"Orange\",[\"S\"]],[6,4,0,\"Orange\",[\"S\"]],[6,3,0,\"Orange\",[\"S\"]],[6,2,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[5,6,0,\"Orange\",[\"S\"]],[5,5,0,\"Orange\",[\"S\"]],[5,4,0,\"Orange\",[\"S\"]],[5,3,0,\"Orange\",[\"S\"]],[5,2,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[4,6,0,\"Orange\",[\"S\"]],[4,5,0,\"Orange\",[\"S\"]],[4,4,0,\"Orange\",[\"S\"]],[4,3,0,\"Orange\",[\"S\"]],[4,2,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[3,6,0,\"Orange\",[\"S\"]],[3,5,0,\"Orange\",[\"S\"]],[3,4,0,\"Orange\",[\"S\"]],[3,3,0,\"Orange\",[\"S\"]],[3,2,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[2,3,0,\"Orange\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-19T16:10:19.669)
  (NBestInd 0)
  (utterance "select orange")
  (targetFormula (:for (color orange) (: select)))
  (targetValue
    (string
      [[2,6,0,\"Orange\",[\"S\"]],[3,6,0,\"Orange\",[\"S\"]],[4,6,0,\"Orange\",[\"S\"]],[5,6,0,\"Orange\",[\"S\"]],[6,6,0,\"Orange\",[\"S\"]],[7,6,0,\"Orange\",[\"S\"]],[2,3,0,\"Orange\",[\"S\"]],[3,3,0,\"Orange\",[\"S\"]],[4,3,0,\"Orange\",[\"S\"]],[5,3,0,\"Orange\",[\"S\"]],[6,3,0,\"Orange\",[\"S\"]],[7,3,0,\"Orange\",[\"S\"]],[2,5,0,\"Orange\",[\"S\"]],[3,5,0,\"Orange\",[\"S\"]],[4,5,0,\"Orange\",[\"S\"]],[5,5,0,\"Orange\",[\"S\"]],[6,5,0,\"Orange\",[\"S\"]],[7,5,0,\"Orange\",[\"S\"]],[3,2,0,\"Orange\",[\"S\"]],[4,2,0,\"Orange\",[\"S\"]],[5,2,0,\"Orange\",[\"S\"]],[6,2,0,\"Orange\",[\"S\"]],[3,7,0,\"Orange\",[\"S\"]],[4,7,0,\"Orange\",[\"S\"]],[5,7,0,\"Orange\",[\"S\"]],[6,7,0,\"Orange\",[\"S\"]],[2,4,0,\"Orange\",[\"S\"]],[3,4,0,\"Orange\",[\"S\"]],[4,4,0,\"Orange\",[\"S\"]],[5,4,0,\"Orange\",[\"S\"]],[6,4,0,\"Orange\",[\"S\"]],[7,4,0,\"Orange\",[\"S\"]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[7,6,0,\"Orange\",[\"S\"]],[7,5,0,\"Orange\",[\"S\"]],[7,4,0,\"Orange\",[\"S\"]],[7,3,0,\"Orange\",[\"S\"]],[6,7,0,\"Orange\",[\"S\"]],[6,6,0,\"Orange\",[\"S\"]],[6,5,0,\"Orange\",[\"S\"]],[6,4,0,\"Orange\",[\"S\"]],[6,3,0,\"Orange\",[\"S\"]],[6,2,0,\"Orange\",[\"S\"]],[5,7,0,\"Orange\",[\"S\"]],[5,6,0,\"Orange\",[\"S\"]],[5,5,0,\"Orange\",[\"S\"]],[5,4,0,\"Orange\",[\"S\"]],[5,3,0,\"Orange\",[\"S\"]],[5,2,0,\"Orange\",[\"S\"]],[4,7,0,\"Orange\",[\"S\"]],[4,6,0,\"Orange\",[\"S\"]],[4,5,0,\"Orange\",[\"S\"]],[4,4,0,\"Orange\",[\"S\"]],[4,3,0,\"Orange\",[\"S\"]],[4,2,0,\"Orange\",[\"S\"]],[3,7,0,\"Orange\",[\"S\"]],[3,6,0,\"Orange\",[\"S\"]],[3,5,0,\"Orange\",[\"S\"]],[3,4,0,\"Orange\",[\"S\"]],[3,3,0,\"Orange\",[\"S\"]],[3,2,0,\"Orange\",[\"S\"]],[2,6,0,\"Orange\",[\"S\"]],[2,5,0,\"Orange\",[\"S\"]],[2,4,0,\"Orange\",[\"S\"]],[2,3,0,\"Orange\",[\"S\"]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-19T16:10:54.316)
  (NBestInd 40)
  (utterance "select not very right and not very back and not very front and not very left of orange")
  (targetFormula (:for (and (and (and (not (call veryx right)) (not (call veryx back))) (not (call veryx front))) (not (call veryx left (color orange)))) (: select)))
  (targetValue
    (string
      [[2,6,0,\"Orange\",[]],[3,6,0,\"Orange\",[\"S\"]],[4,6,0,\"Orange\",[\"S\"]],[5,6,0,\"Orange\",[\"S\"]],[6,6,0,\"Orange\",[\"S\"]],[7,6,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[3,3,0,\"Orange\",[\"S\"]],[4,3,0,\"Orange\",[\"S\"]],[5,3,0,\"Orange\",[\"S\"]],[6,3,0,\"Orange\",[\"S\"]],[7,3,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[3,5,0,\"Orange\",[\"S\"]],[4,5,0,\"Orange\",[\"S\"]],[5,5,0,\"Orange\",[\"S\"]],[6,5,0,\"Orange\",[\"S\"]],[7,5,0,\"Orange\",[]],[3,2,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[6,2,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[6,7,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[3,4,0,\"Orange\",[\"S\"]],[4,4,0,\"Orange\",[\"S\"]],[5,4,0,\"Orange\",[\"S\"]],[6,4,0,\"Orange\",[\"S\"]],[7,4,0,\"Orange\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[7,6,0,\"Orange\",[]],[7,5,0,\"Orange\",[]],[7,4,0,\"Orange\",[]],[7,3,0,\"Orange\",[]],[6,7,0,\"Orange\",[]],[6,6,0,\"Orange\",[\"S\"]],[6,5,0,\"Orange\",[\"S\"]],[6,4,0,\"Orange\",[\"S\"]],[6,3,0,\"Orange\",[\"S\"]],[6,2,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[5,6,0,\"Orange\",[\"S\"]],[5,5,0,\"Orange\",[\"S\"]],[5,4,0,\"Orange\",[\"S\"]],[5,3,0,\"Orange\",[\"S\"]],[5,2,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[4,6,0,\"Orange\",[\"S\"]],[4,5,0,\"Orange\",[\"S\"]],[4,4,0,\"Orange\",[\"S\"]],[4,3,0,\"Orange\",[\"S\"]],[4,2,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[3,6,0,\"Orange\",[\"S\"]],[3,5,0,\"Orange\",[\"S\"]],[3,4,0,\"Orange\",[\"S\"]],[3,3,0,\"Orange\",[\"S\"]],[3,2,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[2,3,0,\"Orange\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-19T16:11:07.608)
  (NBestInd 0)
  (utterance "add orange left  ;  add orange right  ;  add orange back  ;  add orange front")
  (targetFormula (:s (:s (:s (: add orange left) (: add orange right)) (: add orange back)) (: add orange front)))
  (targetValue
    (string
      [[1,6,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[3,6,0,\"Orange\",[\"S\"]],[4,6,0,\"Orange\",[\"S\"]],[5,6,0,\"Orange\",[\"S\"]],[6,6,0,\"Orange\",[\"S\"]],[1,3,0,\"Orange\",[]],[7,6,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[3,3,0,\"Orange\",[\"S\"]],[8,6,0,\"Orange\",[]],[4,3,0,\"Orange\",[\"S\"]],[5,3,0,\"Orange\",[\"S\"]],[6,3,0,\"Orange\",[\"S\"]],[7,3,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[6,8,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[3,5,0,\"Orange\",[\"S\"]],[4,5,0,\"Orange\",[\"S\"]],[5,5,0,\"Orange\",[\"S\"]],[6,5,0,\"Orange\",[\"S\"]],[7,5,0,\"Orange\",[]],[3,2,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[6,2,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[6,7,0,\"Orange\",[]],[1,4,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[3,4,0,\"Orange\",[\"S\"]],[4,4,0,\"Orange\",[\"S\"]],[5,4,0,\"Orange\",[\"S\"]],[6,4,0,\"Orange\",[\"S\"]],[7,4,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[8,4,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[6,1,0,\"Orange\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[8,6,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[8,4,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[7,6,0,\"Orange\",[]],[7,5,0,\"Orange\",[]],[7,4,0,\"Orange\",[]],[7,3,0,\"Orange\",[]],[6,8,0,\"Orange\",[]],[6,7,0,\"Orange\",[]],[6,6,0,\"Orange\",[\"S\"]],[6,5,0,\"Orange\",[\"S\"]],[6,4,0,\"Orange\",[\"S\"]],[6,3,0,\"Orange\",[\"S\"]],[6,2,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[5,6,0,\"Orange\",[\"S\"]],[5,5,0,\"Orange\",[\"S\"]],[5,4,0,\"Orange\",[\"S\"]],[5,3,0,\"Orange\",[\"S\"]],[5,2,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[4,6,0,\"Orange\",[\"S\"]],[4,5,0,\"Orange\",[\"S\"]],[4,4,0,\"Orange\",[\"S\"]],[4,3,0,\"Orange\",[\"S\"]],[4,2,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[3,6,0,\"Orange\",[\"S\"]],[3,5,0,\"Orange\",[\"S\"]],[3,4,0,\"Orange\",[\"S\"]],[3,3,0,\"Orange\",[\"S\"]],[3,2,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[1,4,0,\"Orange\",[]],[1,3,0,\"Orange\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-19T16:11:16.795)
  (NBestInd 0)
  (utterance "select right of this")
  (targetFormula (:for (call adj right this) (: select)))
  (targetValue
    (string
      [[1,6,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[3,6,0,\"Orange\",[]],[4,6,0,\"Orange\",[]],[5,6,0,\"Orange\",[]],[6,6,0,\"Orange\",[]],[1,3,0,\"Orange\",[]],[7,6,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[8,6,0,\"Orange\",[]],[3,3,0,\"Orange\",[\"S\"]],[4,3,0,\"Orange\",[\"S\"]],[5,3,0,\"Orange\",[\"S\"]],[6,3,0,\"Orange\",[\"S\"]],[7,3,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[6,8,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[3,5,0,\"Orange\",[\"S\"]],[4,5,0,\"Orange\",[\"S\"]],[5,5,0,\"Orange\",[\"S\"]],[6,5,0,\"Orange\",[\"S\"]],[7,5,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[3,2,0,\"Orange\",[\"S\"]],[4,2,0,\"Orange\",[\"S\"]],[5,2,0,\"Orange\",[\"S\"]],[6,2,0,\"Orange\",[\"S\"]],[3,7,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[6,7,0,\"Orange\",[]],[1,4,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[3,4,0,\"Orange\",[\"S\"]],[4,4,0,\"Orange\",[\"S\"]],[5,4,0,\"Orange\",[\"S\"]],[6,4,0,\"Orange\",[\"S\"]],[7,4,0,\"Orange\",[]],[8,4,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[6,1,0,\"Orange\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[8,6,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[8,4,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[7,6,0,\"Orange\",[]],[7,5,0,\"Orange\",[]],[7,4,0,\"Orange\",[]],[7,3,0,\"Orange\",[]],[6,8,0,\"Orange\",[]],[6,7,0,\"Orange\",[]],[6,6,0,\"Orange\",[]],[6,5,0,\"Orange\",[\"S\"]],[6,4,0,\"Orange\",[\"S\"]],[6,3,0,\"Orange\",[\"S\"]],[6,2,0,\"Orange\",[\"S\"]],[6,1,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[5,6,0,\"Orange\",[]],[5,5,0,\"Orange\",[\"S\"]],[5,4,0,\"Orange\",[\"S\"]],[5,3,0,\"Orange\",[\"S\"]],[5,2,0,\"Orange\",[\"S\"]],[5,1,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[4,6,0,\"Orange\",[]],[4,5,0,\"Orange\",[\"S\"]],[4,4,0,\"Orange\",[\"S\"]],[4,3,0,\"Orange\",[\"S\"]],[4,2,0,\"Orange\",[\"S\"]],[4,1,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[3,6,0,\"Orange\",[]],[3,5,0,\"Orange\",[\"S\"]],[3,4,0,\"Orange\",[\"S\"]],[3,3,0,\"Orange\",[\"S\"]],[3,2,0,\"Orange\",[\"S\"]],[3,1,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[1,4,0,\"Orange\",[]],[1,3,0,\"Orange\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-19T16:11:22.539)
  (NBestInd 0)
  (utterance "select right of this")
  (targetFormula (:for (call adj right this) (: select)))
  (targetValue
    (string
      [[1,6,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[3,6,0,\"Orange\",[]],[4,6,0,\"Orange\",[]],[5,6,0,\"Orange\",[]],[6,6,0,\"Orange\",[]],[1,3,0,\"Orange\",[]],[7,6,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[8,6,0,\"Orange\",[]],[3,3,0,\"Orange\",[\"S\"]],[4,3,0,\"Orange\",[\"S\"]],[5,3,0,\"Orange\",[\"S\"]],[6,3,0,\"Orange\",[\"S\"]],[7,3,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[6,8,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[3,5,0,\"Orange\",[]],[4,5,0,\"Orange\",[]],[5,5,0,\"Orange\",[]],[6,5,0,\"Orange\",[]],[7,5,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[3,2,0,\"Orange\",[\"S\"]],[4,2,0,\"Orange\",[\"S\"]],[5,2,0,\"Orange\",[\"S\"]],[6,2,0,\"Orange\",[\"S\"]],[3,7,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[6,7,0,\"Orange\",[]],[1,4,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[3,4,0,\"Orange\",[\"S\"]],[4,4,0,\"Orange\",[\"S\"]],[5,4,0,\"Orange\",[\"S\"]],[6,4,0,\"Orange\",[\"S\"]],[7,4,0,\"Orange\",[]],[8,4,0,\"Orange\",[]],[3,1,0,\"Orange\",[\"S\"]],[4,1,0,\"Orange\",[\"S\"]],[5,1,0,\"Orange\",[\"S\"]],[6,1,0,\"Orange\",[\"S\"]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[8,6,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[8,4,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[7,6,0,\"Orange\",[]],[7,5,0,\"Orange\",[]],[7,4,0,\"Orange\",[]],[7,3,0,\"Orange\",[]],[6,8,0,\"Orange\",[]],[6,7,0,\"Orange\",[]],[6,6,0,\"Orange\",[\"S\"]],[6,5,0,\"Orange\",[\"S\"]],[6,4,0,\"Orange\",[\"S\"]],[6,3,0,\"Orange\",[\"S\"]],[6,2,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[5,6,0,\"Orange\",[\"S\"]],[5,5,0,\"Orange\",[\"S\"]],[5,4,0,\"Orange\",[\"S\"]],[5,3,0,\"Orange\",[\"S\"]],[5,2,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[4,6,0,\"Orange\",[\"S\"]],[4,5,0,\"Orange\",[\"S\"]],[4,4,0,\"Orange\",[\"S\"]],[4,3,0,\"Orange\",[\"S\"]],[4,2,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[3,6,0,\"Orange\",[\"S\"]],[3,5,0,\"Orange\",[\"S\"]],[3,4,0,\"Orange\",[\"S\"]],[3,3,0,\"Orange\",[\"S\"]],[3,2,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[1,4,0,\"Orange\",[]],[1,3,0,\"Orange\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-19T16:16:25.484)
  (NBestInd 0)
  (utterance "add green")
  (targetFormula (: add green top))
  (targetValue
    (string
      [[3,4,1,\"Green\",[]],[4,4,1,\"Green\",[]],[1,3,0,\"Orange\",[]],[5,4,1,\"Green\",[]],[2,3,0,\"Orange\",[]],[6,4,1,\"Green\",[]],[3,3,0,\"Orange\",[\"S\"]],[4,3,0,\"Orange\",[\"S\"]],[5,3,0,\"Orange\",[\"S\"]],[6,3,0,\"Orange\",[\"S\"]],[7,3,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[6,8,0,\"Orange\",[]],[3,3,1,\"Green\",[]],[4,3,1,\"Green\",[]],[5,3,1,\"Green\",[]],[6,3,1,\"Green\",[]],[3,2,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[6,2,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[6,7,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[3,6,0,\"Orange\",[\"S\"]],[4,6,0,\"Orange\",[\"S\"]],[5,6,0,\"Orange\",[\"S\"]],[6,6,0,\"Orange\",[\"S\"]],[7,6,0,\"Orange\",[]],[8,6,0,\"Orange\",[]],[3,6,1,\"Green\",[]],[4,6,1,\"Green\",[]],[1,5,0,\"Orange\",[]],[5,6,1,\"Green\",[]],[2,5,0,\"Orange\",[]],[6,6,1,\"Green\",[]],[3,5,0,\"Orange\",[\"S\"]],[4,5,0,\"Orange\",[\"S\"]],[5,5,0,\"Orange\",[\"S\"]],[6,5,0,\"Orange\",[\"S\"]],[7,5,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[3,5,1,\"Green\",[]],[4,5,1,\"Green\",[]],[1,4,0,\"Orange\",[]],[5,5,1,\"Green\",[]],[2,4,0,\"Orange\",[]],[6,5,1,\"Green\",[]],[3,4,0,\"Orange\",[\"S\"]],[4,4,0,\"Orange\",[\"S\"]],[5,4,0,\"Orange\",[\"S\"]],[6,4,0,\"Orange\",[\"S\"]],[7,4,0,\"Orange\",[]],[8,4,0,\"Orange\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[8,6,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[8,4,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[7,6,0,\"Orange\",[]],[7,5,0,\"Orange\",[]],[7,4,0,\"Orange\",[]],[7,3,0,\"Orange\",[]],[6,8,0,\"Orange\",[]],[6,7,0,\"Orange\",[]],[6,6,0,\"Orange\",[\"S\"]],[6,5,0,\"Orange\",[\"S\"]],[6,4,0,\"Orange\",[\"S\"]],[6,3,0,\"Orange\",[\"S\"]],[6,2,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[5,6,0,\"Orange\",[\"S\"]],[5,5,0,\"Orange\",[\"S\"]],[5,4,0,\"Orange\",[\"S\"]],[5,3,0,\"Orange\",[\"S\"]],[5,2,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[4,6,0,\"Orange\",[\"S\"]],[4,5,0,\"Orange\",[\"S\"]],[4,4,0,\"Orange\",[\"S\"]],[4,3,0,\"Orange\",[\"S\"]],[4,2,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[3,6,0,\"Orange\",[\"S\"]],[3,5,0,\"Orange\",[\"S\"]],[3,4,0,\"Orange\",[\"S\"]],[3,3,0,\"Orange\",[\"S\"]],[3,2,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[1,4,0,\"Orange\",[]],[1,3,0,\"Orange\",[]],[6,6,1,\"Green\",[]],[6,5,1,\"Green\",[]],[6,4,1,\"Green\",[]],[6,3,1,\"Green\",[]],[5,6,1,\"Green\",[]],[5,5,1,\"Green\",[]],[5,4,1,\"Green\",[]],[5,3,1,\"Green\",[]],[4,6,1,\"Green\",[]],[4,5,1,\"Green\",[]],[4,4,1,\"Green\",[]],[4,3,1,\"Green\",[]],[3,6,1,\"Green\",[]],[3,5,1,\"Green\",[]],[3,4,1,\"Green\",[]],[3,3,1,\"Green\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-19T16:16:34.836)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue
    (string
      [[3,5,2,\"Red\",[]],[4,5,2,\"Red\",[]],[5,5,2,\"Red\",[]],[6,5,2,\"Red\",[]],[3,4,1,\"Green\",[]],[4,4,1,\"Green\",[]],[1,3,0,\"Orange\",[]],[5,4,1,\"Green\",[]],[2,3,0,\"Orange\",[]],[6,4,1,\"Green\",[]],[3,3,0,\"Orange\",[\"S\"]],[4,3,0,\"Orange\",[\"S\"]],[5,3,0,\"Orange\",[\"S\"]],[6,3,0,\"Orange\",[\"S\"]],[7,3,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[3,4,2,\"Red\",[]],[6,8,0,\"Orange\",[]],[4,4,2,\"Red\",[]],[5,4,2,\"Red\",[]],[6,4,2,\"Red\",[]],[3,3,1,\"Green\",[]],[4,3,1,\"Green\",[]],[5,3,1,\"Green\",[]],[6,3,1,\"Green\",[]],[3,2,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[6,2,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[3,3,2,\"Red\",[]],[6,7,0,\"Orange\",[]],[4,3,2,\"Red\",[]],[5,3,2,\"Red\",[]],[6,3,2,\"Red\",[]],[3,1,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[3,6,0,\"Orange\",[\"S\"]],[4,6,0,\"Orange\",[\"S\"]],[5,6,0,\"Orange\",[\"S\"]],[6,6,0,\"Orange\",[\"S\"]],[7,6,0,\"Orange\",[]],[8,6,0,\"Orange\",[]],[3,6,1,\"Green\",[]],[4,6,1,\"Green\",[]],[1,5,0,\"Orange\",[]],[5,6,1,\"Green\",[]],[2,5,0,\"Orange\",[]],[6,6,1,\"Green\",[]],[3,5,0,\"Orange\",[\"S\"]],[4,5,0,\"Orange\",[\"S\"]],[5,5,0,\"Orange\",[\"S\"]],[6,5,0,\"Orange\",[\"S\"]],[7,5,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[3,6,2,\"Red\",[]],[4,6,2,\"Red\",[]],[5,6,2,\"Red\",[]],[6,6,2,\"Red\",[]],[3,5,1,\"Green\",[]],[4,5,1,\"Green\",[]],[1,4,0,\"Orange\",[]],[5,5,1,\"Green\",[]],[2,4,0,\"Orange\",[]],[6,5,1,\"Green\",[]],[3,4,0,\"Orange\",[\"S\"]],[4,4,0,\"Orange\",[\"S\"]],[5,4,0,\"Orange\",[\"S\"]],[6,4,0,\"Orange\",[\"S\"]],[7,4,0,\"Orange\",[]],[8,4,0,\"Orange\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[8,6,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[8,4,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[7,6,0,\"Orange\",[]],[7,5,0,\"Orange\",[]],[7,4,0,\"Orange\",[]],[7,3,0,\"Orange\",[]],[6,8,0,\"Orange\",[]],[6,7,0,\"Orange\",[]],[6,6,0,\"Orange\",[\"S\"]],[6,5,0,\"Orange\",[\"S\"]],[6,4,0,\"Orange\",[\"S\"]],[6,3,0,\"Orange\",[\"S\"]],[6,2,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[5,6,0,\"Orange\",[\"S\"]],[5,5,0,\"Orange\",[\"S\"]],[5,4,0,\"Orange\",[\"S\"]],[5,3,0,\"Orange\",[\"S\"]],[5,2,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[4,6,0,\"Orange\",[\"S\"]],[4,5,0,\"Orange\",[\"S\"]],[4,4,0,\"Orange\",[\"S\"]],[4,3,0,\"Orange\",[\"S\"]],[4,2,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[3,6,0,\"Orange\",[\"S\"]],[3,5,0,\"Orange\",[\"S\"]],[3,4,0,\"Orange\",[\"S\"]],[3,3,0,\"Orange\",[\"S\"]],[3,2,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[1,4,0,\"Orange\",[]],[1,3,0,\"Orange\",[]],[6,6,1,\"Green\",[]],[6,5,1,\"Green\",[]],[6,4,1,\"Green\",[]],[6,3,1,\"Green\",[]],[5,6,1,\"Green\",[]],[5,5,1,\"Green\",[]],[5,4,1,\"Green\",[]],[5,3,1,\"Green\",[]],[4,6,1,\"Green\",[]],[4,5,1,\"Green\",[]],[4,4,1,\"Green\",[]],[4,3,1,\"Green\",[]],[3,6,1,\"Green\",[]],[3,5,1,\"Green\",[]],[3,4,1,\"Green\",[]],[3,3,1,\"Green\",[]],[6,6,2,\"Red\",[]],[6,5,2,\"Red\",[]],[6,4,2,\"Red\",[]],[6,3,2,\"Red\",[]],[5,6,2,\"Red\",[]],[5,5,2,\"Red\",[]],[5,4,2,\"Red\",[]],[5,3,2,\"Red\",[]],[4,6,2,\"Red\",[]],[4,5,2,\"Red\",[]],[4,4,2,\"Red\",[]],[4,3,2,\"Red\",[]],[3,6,2,\"Red\",[]],[3,5,2,\"Red\",[]],[3,4,2,\"Red\",[]],[3,3,2,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-19T16:16:36.949)
  (NBestInd 0)
  (utterance "remove green")
  (targetFormula (:for (color green) (: remove)))
  (targetValue
    (string
      [[3,5,2,\"Red\",[]],[4,5,2,\"Red\",[]],[5,5,2,\"Red\",[]],[6,5,2,\"Red\",[]],[1,3,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[3,3,0,\"Orange\",[\"S\"]],[4,3,0,\"Orange\",[\"S\"]],[5,3,0,\"Orange\",[\"S\"]],[6,3,0,\"Orange\",[\"S\"]],[7,3,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[3,4,2,\"Red\",[]],[6,8,0,\"Orange\",[]],[4,4,2,\"Red\",[]],[5,4,2,\"Red\",[]],[6,4,2,\"Red\",[]],[3,2,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[6,2,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[3,3,2,\"Red\",[]],[6,7,0,\"Orange\",[]],[4,3,2,\"Red\",[]],[5,3,2,\"Red\",[]],[6,3,2,\"Red\",[]],[3,1,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[3,6,0,\"Orange\",[\"S\"]],[4,6,0,\"Orange\",[\"S\"]],[5,6,0,\"Orange\",[\"S\"]],[6,6,0,\"Orange\",[\"S\"]],[7,6,0,\"Orange\",[]],[8,6,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[3,5,0,\"Orange\",[\"S\"]],[4,5,0,\"Orange\",[\"S\"]],[5,5,0,\"Orange\",[\"S\"]],[6,5,0,\"Orange\",[\"S\"]],[7,5,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[3,6,2,\"Red\",[]],[4,6,2,\"Red\",[]],[5,6,2,\"Red\",[]],[6,6,2,\"Red\",[]],[1,4,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[3,4,0,\"Orange\",[\"S\"]],[4,4,0,\"Orange\",[\"S\"]],[5,4,0,\"Orange\",[\"S\"]],[6,4,0,\"Orange\",[\"S\"]],[7,4,0,\"Orange\",[]],[8,4,0,\"Orange\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[8,6,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[8,4,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[7,6,0,\"Orange\",[]],[7,5,0,\"Orange\",[]],[7,4,0,\"Orange\",[]],[7,3,0,\"Orange\",[]],[6,8,0,\"Orange\",[]],[6,7,0,\"Orange\",[]],[6,6,0,\"Orange\",[\"S\"]],[6,5,0,\"Orange\",[\"S\"]],[6,4,0,\"Orange\",[\"S\"]],[6,3,0,\"Orange\",[\"S\"]],[6,2,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[5,6,0,\"Orange\",[\"S\"]],[5,5,0,\"Orange\",[\"S\"]],[5,4,0,\"Orange\",[\"S\"]],[5,3,0,\"Orange\",[\"S\"]],[5,2,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[4,6,0,\"Orange\",[\"S\"]],[4,5,0,\"Orange\",[\"S\"]],[4,4,0,\"Orange\",[\"S\"]],[4,3,0,\"Orange\",[\"S\"]],[4,2,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[3,6,0,\"Orange\",[\"S\"]],[3,5,0,\"Orange\",[\"S\"]],[3,4,0,\"Orange\",[\"S\"]],[3,3,0,\"Orange\",[\"S\"]],[3,2,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[1,4,0,\"Orange\",[]],[1,3,0,\"Orange\",[]],[6,6,2,\"Red\",[]],[6,5,2,\"Red\",[]],[6,4,2,\"Red\",[]],[6,3,2,\"Red\",[]],[5,6,2,\"Red\",[]],[5,5,2,\"Red\",[]],[5,4,2,\"Red\",[]],[5,3,2,\"Red\",[]],[4,6,2,\"Red\",[]],[4,5,2,\"Red\",[]],[4,4,2,\"Red\",[]],[4,3,2,\"Red\",[]],[3,6,2,\"Red\",[]],[3,5,2,\"Red\",[]],[3,4,2,\"Red\",[]],[3,3,2,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-19T16:16:51.258)
  (NBestInd 0)
  (utterance "for this [ move back ]")
  (targetFormula (:for this (: move back)))
  (targetValue
    (string
      [[3,5,2,\"Red\",[]],[4,5,2,\"Red\",[]],[5,5,2,\"Red\",[]],[6,5,2,\"Red\",[]],[1,3,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[4,3,0,\"Orange\",[\"S\"]],[5,3,0,\"Orange\",[\"S\"]],[6,3,0,\"Orange\",[\"S\"]],[7,3,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[3,4,2,\"Red\",[]],[6,8,0,\"Orange\",[]],[4,4,2,\"Red\",[]],[5,4,2,\"Red\",[]],[6,4,2,\"Red\",[]],[3,2,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[6,2,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[3,3,2,\"Red\",[]],[6,7,0,\"Orange\",[]],[4,3,2,\"Red\",[]],[5,3,2,\"Red\",[]],[6,3,2,\"Red\",[]],[3,1,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[4,6,0,\"Orange\",[\"S\"]],[5,6,0,\"Orange\",[\"S\"]],[6,6,0,\"Orange\",[\"S\"]],[7,6,0,\"Orange\",[]],[8,6,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[4,5,0,\"Orange\",[\"S\"]],[5,5,0,\"Orange\",[\"S\"]],[6,5,0,\"Orange\",[\"S\"]],[7,5,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[3,6,2,\"Red\",[]],[4,6,2,\"Red\",[]],[5,6,2,\"Red\",[]],[6,6,2,\"Red\",[]],[1,4,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[4,4,0,\"Orange\",[\"S\"]],[5,4,0,\"Orange\",[\"S\"]],[6,4,0,\"Orange\",[\"S\"]],[7,4,0,\"Orange\",[]],[8,4,0,\"Orange\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[8,6,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[8,4,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[7,6,0,\"Orange\",[]],[7,5,0,\"Orange\",[]],[7,4,0,\"Orange\",[]],[7,3,0,\"Orange\",[]],[6,8,0,\"Orange\",[]],[6,7,0,\"Orange\",[]],[6,6,0,\"Orange\",[\"S\"]],[6,5,0,\"Orange\",[\"S\"]],[6,4,0,\"Orange\",[\"S\"]],[6,3,0,\"Orange\",[\"S\"]],[6,2,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[5,6,0,\"Orange\",[\"S\"]],[5,5,0,\"Orange\",[\"S\"]],[5,4,0,\"Orange\",[\"S\"]],[5,3,0,\"Orange\",[\"S\"]],[5,2,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[4,6,0,\"Orange\",[\"S\"]],[4,5,0,\"Orange\",[\"S\"]],[4,4,0,\"Orange\",[\"S\"]],[4,3,0,\"Orange\",[\"S\"]],[4,2,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[3,2,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[1,4,0,\"Orange\",[]],[1,3,0,\"Orange\",[]],[6,6,2,\"Red\",[]],[6,5,2,\"Red\",[]],[6,4,2,\"Red\",[]],[6,3,2,\"Red\",[]],[5,6,2,\"Red\",[]],[5,5,2,\"Red\",[]],[5,4,2,\"Red\",[]],[5,3,2,\"Red\",[]],[4,6,2,\"Red\",[]],[4,5,2,\"Red\",[]],[4,4,2,\"Red\",[]],[4,3,2,\"Red\",[]],[3,6,2,\"Red\",[]],[3,5,2,\"Red\",[]],[3,4,2,\"Red\",[]],[3,3,2,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-19T16:16:54.130)
  (NBestInd 0)
  (utterance "for this [ move back ]")
  (targetFormula (:for this (: move back)))
  (targetValue
    (string
      [[3,5,2,\"Red\",[]],[4,5,2,\"Red\",[]],[5,5,2,\"Red\",[]],[6,5,2,\"Red\",[]],[1,3,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[5,3,0,\"Orange\",[\"S\"]],[6,3,0,\"Orange\",[\"S\"]],[7,3,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[3,4,2,\"Red\",[]],[6,8,0,\"Orange\",[]],[4,4,2,\"Red\",[]],[5,4,2,\"Red\",[]],[6,4,2,\"Red\",[]],[3,2,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[6,2,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[3,3,2,\"Red\",[]],[6,7,0,\"Orange\",[]],[4,3,2,\"Red\",[]],[5,3,2,\"Red\",[]],[6,3,2,\"Red\",[]],[3,1,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[5,6,0,\"Orange\",[\"S\"]],[6,6,0,\"Orange\",[\"S\"]],[7,6,0,\"Orange\",[]],[8,6,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[5,5,0,\"Orange\",[\"S\"]],[6,5,0,\"Orange\",[\"S\"]],[7,5,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[3,6,2,\"Red\",[]],[4,6,2,\"Red\",[]],[5,6,2,\"Red\",[]],[6,6,2,\"Red\",[]],[1,4,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[5,4,0,\"Orange\",[\"S\"]],[6,4,0,\"Orange\",[\"S\"]],[7,4,0,\"Orange\",[]],[8,4,0,\"Orange\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[8,6,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[8,4,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[7,6,0,\"Orange\",[]],[7,5,0,\"Orange\",[]],[7,4,0,\"Orange\",[]],[7,3,0,\"Orange\",[]],[6,8,0,\"Orange\",[]],[6,7,0,\"Orange\",[]],[6,6,0,\"Orange\",[\"S\"]],[6,5,0,\"Orange\",[\"S\"]],[6,4,0,\"Orange\",[\"S\"]],[6,3,0,\"Orange\",[\"S\"]],[6,2,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[5,6,0,\"Orange\",[\"S\"]],[5,5,0,\"Orange\",[\"S\"]],[5,4,0,\"Orange\",[\"S\"]],[5,3,0,\"Orange\",[\"S\"]],[5,2,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[3,2,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[1,4,0,\"Orange\",[]],[1,3,0,\"Orange\",[]],[6,6,2,\"Red\",[]],[6,5,2,\"Red\",[]],[6,4,2,\"Red\",[]],[6,3,2,\"Red\",[]],[5,6,2,\"Red\",[]],[5,5,2,\"Red\",[]],[5,4,2,\"Red\",[]],[5,3,2,\"Red\",[]],[4,6,2,\"Red\",[]],[4,5,2,\"Red\",[]],[4,4,2,\"Red\",[]],[4,3,2,\"Red\",[]],[3,6,2,\"Red\",[]],[3,5,2,\"Red\",[]],[3,4,2,\"Red\",[]],[3,3,2,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-19T16:16:57.049)
  (NBestInd 0)
  (utterance "for this [ move back ]")
  (targetFormula (:for this (: move back)))
  (targetValue
    (string
      [[3,5,2,\"Red\",[]],[4,5,2,\"Red\",[]],[5,5,2,\"Red\",[]],[6,5,2,\"Red\",[]],[1,3,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[6,3,0,\"Orange\",[\"S\"]],[7,3,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[3,4,2,\"Red\",[]],[6,8,0,\"Orange\",[]],[4,4,2,\"Red\",[]],[5,4,2,\"Red\",[]],[6,4,2,\"Red\",[]],[3,2,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[6,2,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[3,3,2,\"Red\",[]],[6,7,0,\"Orange\",[]],[4,3,2,\"Red\",[]],[5,3,2,\"Red\",[]],[6,3,2,\"Red\",[]],[3,1,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[6,6,0,\"Orange\",[\"S\"]],[7,6,0,\"Orange\",[]],[8,6,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[6,5,0,\"Orange\",[\"S\"]],[7,5,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[3,6,2,\"Red\",[]],[4,6,2,\"Red\",[]],[5,6,2,\"Red\",[]],[6,6,2,\"Red\",[]],[1,4,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[6,4,0,\"Orange\",[\"S\"]],[7,4,0,\"Orange\",[]],[8,4,0,\"Orange\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[8,6,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[8,4,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[7,6,0,\"Orange\",[]],[7,5,0,\"Orange\",[]],[7,4,0,\"Orange\",[]],[7,3,0,\"Orange\",[]],[6,8,0,\"Orange\",[]],[6,7,0,\"Orange\",[]],[6,6,0,\"Orange\",[\"S\"]],[6,5,0,\"Orange\",[\"S\"]],[6,4,0,\"Orange\",[\"S\"]],[6,3,0,\"Orange\",[\"S\"]],[6,2,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[3,2,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[1,4,0,\"Orange\",[]],[1,3,0,\"Orange\",[]],[6,6,2,\"Red\",[]],[6,5,2,\"Red\",[]],[6,4,2,\"Red\",[]],[6,3,2,\"Red\",[]],[5,6,2,\"Red\",[]],[5,5,2,\"Red\",[]],[5,4,2,\"Red\",[]],[5,3,2,\"Red\",[]],[4,6,2,\"Red\",[]],[4,5,2,\"Red\",[]],[4,4,2,\"Red\",[]],[4,3,2,\"Red\",[]],[3,6,2,\"Red\",[]],[3,5,2,\"Red\",[]],[3,4,2,\"Red\",[]],[3,3,2,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-19T16:17:03.577)
  (NBestInd 0)
  (utterance "for this [ move back ]")
  (targetFormula (:for this (: move back)))
  (targetValue
    (string
      [[3,5,2,\"Red\",[]],[4,5,2,\"Red\",[]],[5,5,2,\"Red\",[]],[6,5,2,\"Red\",[]],[1,3,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[7,3,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[3,4,2,\"Red\",[]],[6,8,0,\"Orange\",[]],[4,4,2,\"Red\",[]],[5,4,2,\"Red\",[]],[6,4,2,\"Red\",[]],[3,2,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[6,2,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[3,3,2,\"Red\",[]],[6,7,0,\"Orange\",[]],[4,3,2,\"Red\",[]],[5,3,2,\"Red\",[]],[6,3,2,\"Red\",[]],[3,1,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[7,6,0,\"Orange\",[]],[8,6,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[7,5,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[3,6,2,\"Red\",[]],[4,6,2,\"Red\",[]],[5,6,2,\"Red\",[]],[6,6,2,\"Red\",[]],[1,4,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[7,4,0,\"Orange\",[]],[8,4,0,\"Orange\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[8,6,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[8,4,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[7,6,0,\"Orange\",[]],[7,5,0,\"Orange\",[]],[7,4,0,\"Orange\",[]],[7,3,0,\"Orange\",[]],[6,8,0,\"Orange\",[]],[6,7,0,\"Orange\",[]],[6,2,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[3,2,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[1,4,0,\"Orange\",[]],[1,3,0,\"Orange\",[]],[6,6,2,\"Red\",[]],[6,5,2,\"Red\",[]],[6,4,2,\"Red\",[]],[6,3,2,\"Red\",[]],[5,6,2,\"Red\",[]],[5,5,2,\"Red\",[]],[5,4,2,\"Red\",[]],[5,3,2,\"Red\",[]],[4,6,2,\"Red\",[]],[4,5,2,\"Red\",[]],[4,4,2,\"Red\",[]],[4,3,2,\"Red\",[]],[3,6,2,\"Red\",[]],[3,5,2,\"Red\",[]],[3,4,2,\"Red\",[]],[3,3,2,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-19T16:17:11.018)
  (NBestInd 0)
  (utterance "select red")
  (targetFormula (:for (color red) (: select)))
  (targetValue
    (string
      [[3,5,2,\"Red\",[\"S\"]],[1,6,0,\"Orange\",[]],[4,5,2,\"Red\",[\"S\"]],[2,6,0,\"Orange\",[]],[5,5,2,\"Red\",[\"S\"]],[6,5,2,\"Red\",[\"S\"]],[1,3,0,\"Orange\",[]],[7,6,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[8,6,0,\"Orange\",[]],[7,3,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[3,4,2,\"Red\",[\"S\"]],[6,8,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[4,4,2,\"Red\",[\"S\"]],[2,5,0,\"Orange\",[]],[5,4,2,\"Red\",[\"S\"]],[6,4,2,\"Red\",[\"S\"]],[7,5,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[3,2,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[6,2,0,\"Orange\",[]],[3,6,2,\"Red\",[\"S\"]],[4,6,2,\"Red\",[\"S\"]],[5,6,2,\"Red\",[\"S\"]],[3,7,0,\"Orange\",[]],[6,6,2,\"Red\",[\"S\"]],[4,7,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[3,3,2,\"Red\",[\"S\"]],[6,7,0,\"Orange\",[]],[1,4,0,\"Orange\",[]],[4,3,2,\"Red\",[\"S\"]],[2,4,0,\"Orange\",[]],[5,3,2,\"Red\",[\"S\"]],[6,3,2,\"Red\",[\"S\"]],[7,4,0,\"Orange\",[]],[8,4,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[6,1,0,\"Orange\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[8,6,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[8,4,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[7,6,0,\"Orange\",[]],[7,5,0,\"Orange\",[]],[7,4,0,\"Orange\",[]],[7,3,0,\"Orange\",[]],[6,8,0,\"Orange\",[]],[6,7,0,\"Orange\",[]],[6,2,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[3,2,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[1,4,0,\"Orange\",[]],[1,3,0,\"Orange\",[]],[6,6,2,\"Red\",[\"S\"]],[6,5,2,\"Red\",[\"S\"]],[6,4,2,\"Red\",[\"S\"]],[6,3,2,\"Red\",[\"S\"]],[5,6,2,\"Red\",[\"S\"]],[5,5,2,\"Red\",[\"S\"]],[5,4,2,\"Red\",[\"S\"]],[5,3,2,\"Red\",[\"S\"]],[4,6,2,\"Red\",[\"S\"]],[4,5,2,\"Red\",[\"S\"]],[4,4,2,\"Red\",[\"S\"]],[4,3,2,\"Red\",[\"S\"]],[3,6,2,\"Red\",[\"S\"]],[3,5,2,\"Red\",[\"S\"]],[3,4,2,\"Red\",[\"S\"]],[3,3,2,\"Red\",[\"S\"]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-19T16:17:26.800)
  (NBestInd 16)
  (utterance "select not very right and not very left and not very back and not very front of has color red")
  (targetFormula (:for (and (and (and (not (call veryx right)) (not (call veryx left))) (not (call veryx back))) (not (call veryx front (color red)))) (: select)))
  (targetValue
    (string
      [[3,5,2,\"Red\",[]],[1,6,0,\"Orange\",[\"S\"]],[4,5,2,\"Red\",[\"S\"]],[2,6,0,\"Orange\",[\"S\"]],[5,5,2,\"Red\",[\"S\"]],[6,5,2,\"Red\",[]],[1,3,0,\"Orange\",[\"S\"]],[7,6,0,\"Orange\",[\"S\"]],[2,3,0,\"Orange\",[\"S\"]],[8,6,0,\"Orange\",[\"S\"]],[7,3,0,\"Orange\",[\"S\"]],[8,3,0,\"Orange\",[\"S\"]],[3,8,0,\"Orange\",[\"S\"]],[4,8,0,\"Orange\",[\"S\"]],[5,8,0,\"Orange\",[\"S\"]],[3,4,2,\"Red\",[]],[6,8,0,\"Orange\",[\"S\"]],[1,5,0,\"Orange\",[\"S\"]],[4,4,2,\"Red\",[\"S\"]],[2,5,0,\"Orange\",[\"S\"]],[5,4,2,\"Red\",[\"S\"]],[6,4,2,\"Red\",[]],[7,5,0,\"Orange\",[\"S\"]],[8,5,0,\"Orange\",[\"S\"]],[3,2,0,\"Orange\",[\"S\"]],[4,2,0,\"Orange\",[\"S\"]],[5,2,0,\"Orange\",[\"S\"]],[6,2,0,\"Orange\",[\"S\"]],[3,6,2,\"Red\",[]],[4,6,2,\"Red\",[]],[5,6,2,\"Red\",[]],[3,7,0,\"Orange\",[\"S\"]],[6,6,2,\"Red\",[]],[4,7,0,\"Orange\",[\"S\"]],[5,7,0,\"Orange\",[\"S\"]],[3,3,2,\"Red\",[]],[6,7,0,\"Orange\",[\"S\"]],[1,4,0,\"Orange\",[\"S\"]],[4,3,2,\"Red\",[]],[2,4,0,\"Orange\",[\"S\"]],[5,3,2,\"Red\",[]],[6,3,2,\"Red\",[]],[7,4,0,\"Orange\",[\"S\"]],[8,4,0,\"Orange\",[\"S\"]],[3,1,0,\"Orange\",[\"S\"]],[4,1,0,\"Orange\",[\"S\"]],[5,1,0,\"Orange\",[\"S\"]],[6,1,0,\"Orange\",[\"S\"]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[8,6,0,\"Orange\",[\"S\"]],[8,5,0,\"Orange\",[\"S\"]],[8,4,0,\"Orange\",[\"S\"]],[8,3,0,\"Orange\",[\"S\"]],[7,6,0,\"Orange\",[\"S\"]],[7,5,0,\"Orange\",[\"S\"]],[7,4,0,\"Orange\",[\"S\"]],[7,3,0,\"Orange\",[\"S\"]],[6,8,0,\"Orange\",[\"S\"]],[6,7,0,\"Orange\",[\"S\"]],[6,2,0,\"Orange\",[\"S\"]],[6,1,0,\"Orange\",[\"S\"]],[5,8,0,\"Orange\",[\"S\"]],[5,7,0,\"Orange\",[\"S\"]],[5,2,0,\"Orange\",[\"S\"]],[5,1,0,\"Orange\",[\"S\"]],[4,8,0,\"Orange\",[\"S\"]],[4,7,0,\"Orange\",[\"S\"]],[4,2,0,\"Orange\",[\"S\"]],[4,1,0,\"Orange\",[\"S\"]],[3,8,0,\"Orange\",[\"S\"]],[3,7,0,\"Orange\",[\"S\"]],[3,2,0,\"Orange\",[\"S\"]],[3,1,0,\"Orange\",[\"S\"]],[2,6,0,\"Orange\",[\"S\"]],[2,5,0,\"Orange\",[\"S\"]],[2,4,0,\"Orange\",[\"S\"]],[2,3,0,\"Orange\",[\"S\"]],[1,6,0,\"Orange\",[\"S\"]],[1,5,0,\"Orange\",[\"S\"]],[1,4,0,\"Orange\",[\"S\"]],[1,3,0,\"Orange\",[\"S\"]],[6,6,2,\"Red\",[]],[6,5,2,\"Red\",[]],[6,4,2,\"Red\",[]],[6,3,2,\"Red\",[]],[5,6,2,\"Red\",[]],[5,5,2,\"Red\",[\"S\"]],[5,4,2,\"Red\",[\"S\"]],[5,3,2,\"Red\",[]],[4,6,2,\"Red\",[]],[4,5,2,\"Red\",[\"S\"]],[4,4,2,\"Red\",[\"S\"]],[4,3,2,\"Red\",[]],[3,6,2,\"Red\",[]],[3,5,2,\"Red\",[]],[3,4,2,\"Red\",[]],[3,3,2,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-19T16:18:05.074)
  (NBestInd 0)
  (utterance "select has color red and this")
  (targetFormula (:for (and (color red) this) (: select)))
  (targetValue
    (string
      [[3,5,2,\"Red\",[]],[1,6,0,\"Orange\",[]],[4,5,2,\"Red\",[\"S\"]],[2,6,0,\"Orange\",[]],[5,5,2,\"Red\",[\"S\"]],[6,5,2,\"Red\",[]],[1,3,0,\"Orange\",[]],[7,6,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[8,6,0,\"Orange\",[]],[7,3,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[3,4,2,\"Red\",[]],[6,8,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[4,4,2,\"Red\",[\"S\"]],[2,5,0,\"Orange\",[]],[5,4,2,\"Red\",[\"S\"]],[6,4,2,\"Red\",[]],[7,5,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[3,2,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[6,2,0,\"Orange\",[]],[3,6,2,\"Red\",[]],[4,6,2,\"Red\",[]],[5,6,2,\"Red\",[]],[3,7,0,\"Orange\",[]],[6,6,2,\"Red\",[]],[4,7,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[3,3,2,\"Red\",[]],[6,7,0,\"Orange\",[]],[1,4,0,\"Orange\",[]],[4,3,2,\"Red\",[]],[2,4,0,\"Orange\",[]],[5,3,2,\"Red\",[]],[6,3,2,\"Red\",[]],[7,4,0,\"Orange\",[]],[8,4,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[6,1,0,\"Orange\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[8,6,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[8,4,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[7,6,0,\"Orange\",[]],[7,5,0,\"Orange\",[]],[7,4,0,\"Orange\",[]],[7,3,0,\"Orange\",[]],[6,8,0,\"Orange\",[]],[6,7,0,\"Orange\",[]],[6,2,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[3,2,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[1,4,0,\"Orange\",[]],[1,3,0,\"Orange\",[]],[6,6,2,\"Red\",[]],[6,5,2,\"Red\",[]],[6,4,2,\"Red\",[]],[6,3,2,\"Red\",[]],[5,6,2,\"Red\",[]],[5,5,2,\"Red\",[\"S\"]],[5,4,2,\"Red\",[\"S\"]],[5,3,2,\"Red\",[]],[4,6,2,\"Red\",[]],[4,5,2,\"Red\",[\"S\"]],[4,4,2,\"Red\",[\"S\"]],[4,3,2,\"Red\",[]],[3,6,2,\"Red\",[]],[3,5,2,\"Red\",[]],[3,4,2,\"Red\",[]],[3,3,2,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-19T16:18:07.306)
  (NBestInd 0)
  (utterance remove)
  (targetFormula (: remove))
  (targetValue
    (string
      [[3,5,2,\"Red\",[]],[1,6,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[6,5,2,\"Red\",[]],[1,3,0,\"Orange\",[]],[7,6,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[8,6,0,\"Orange\",[]],[7,3,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[3,4,2,\"Red\",[]],[6,8,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[6,4,2,\"Red\",[]],[7,5,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[3,2,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[6,2,0,\"Orange\",[]],[3,6,2,\"Red\",[]],[4,6,2,\"Red\",[]],[5,6,2,\"Red\",[]],[3,7,0,\"Orange\",[]],[6,6,2,\"Red\",[]],[4,7,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[3,3,2,\"Red\",[]],[6,7,0,\"Orange\",[]],[1,4,0,\"Orange\",[]],[4,3,2,\"Red\",[]],[2,4,0,\"Orange\",[]],[5,3,2,\"Red\",[]],[6,3,2,\"Red\",[]],[7,4,0,\"Orange\",[]],[8,4,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[6,1,0,\"Orange\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[8,6,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[8,4,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[7,6,0,\"Orange\",[]],[7,5,0,\"Orange\",[]],[7,4,0,\"Orange\",[]],[7,3,0,\"Orange\",[]],[6,8,0,\"Orange\",[]],[6,7,0,\"Orange\",[]],[6,2,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[3,2,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[1,4,0,\"Orange\",[]],[1,3,0,\"Orange\",[]],[6,6,2,\"Red\",[]],[6,5,2,\"Red\",[]],[6,4,2,\"Red\",[]],[6,3,2,\"Red\",[]],[5,6,2,\"Red\",[]],[5,3,2,\"Red\",[]],[4,6,2,\"Red\",[]],[4,3,2,\"Red\",[]],[3,6,2,\"Red\",[]],[3,5,2,\"Red\",[]],[3,4,2,\"Red\",[]],[3,3,2,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-19T16:18:28.737)
  (NBestInd 0)
  (utterance "select very right of red")
  (targetFormula (:for (call veryx right (color red)) (: select)))
  (targetValue
    (string
      [[3,5,2,\"Red\",[]],[1,6,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[6,5,2,\"Red\",[]],[1,3,0,\"Orange\",[]],[7,6,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[8,6,0,\"Orange\",[]],[7,3,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[3,4,2,\"Red\",[]],[6,8,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[6,4,2,\"Red\",[]],[7,5,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[3,2,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[6,2,0,\"Orange\",[]],[3,6,2,\"Red\",[]],[4,6,2,\"Red\",[]],[5,6,2,\"Red\",[]],[3,7,0,\"Orange\",[]],[6,6,2,\"Red\",[]],[4,7,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[3,3,2,\"Red\",[\"S\"]],[6,7,0,\"Orange\",[]],[1,4,0,\"Orange\",[]],[4,3,2,\"Red\",[\"S\"]],[2,4,0,\"Orange\",[]],[5,3,2,\"Red\",[\"S\"]],[6,3,2,\"Red\",[\"S\"]],[7,4,0,\"Orange\",[]],[8,4,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[6,1,0,\"Orange\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[8,6,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[8,4,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[7,6,0,\"Orange\",[]],[7,5,0,\"Orange\",[]],[7,4,0,\"Orange\",[]],[7,3,0,\"Orange\",[]],[6,8,0,\"Orange\",[]],[6,7,0,\"Orange\",[]],[6,2,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[3,2,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[1,4,0,\"Orange\",[]],[1,3,0,\"Orange\",[]],[6,6,2,\"Red\",[]],[6,5,2,\"Red\",[]],[6,4,2,\"Red\",[]],[6,3,2,\"Red\",[\"S\"]],[5,6,2,\"Red\",[]],[5,3,2,\"Red\",[\"S\"]],[4,6,2,\"Red\",[]],[4,3,2,\"Red\",[\"S\"]],[3,6,2,\"Red\",[]],[3,5,2,\"Red\",[]],[3,4,2,\"Red\",[]],[3,3,2,\"Red\",[\"S\"]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-19T16:18:39.136)
  (NBestInd 0)
  (utterance "select very back or very front")
  (targetFormula (:for (or (call veryx back) (call veryx front)) (: select)))
  (targetValue
    (string
      [[3,5,2,\"Red\",[]],[1,6,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[6,5,2,\"Red\",[]],[1,3,0,\"Orange\",[]],[7,6,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[8,6,0,\"Orange\",[]],[7,3,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[3,4,2,\"Red\",[]],[6,8,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[6,4,2,\"Red\",[]],[7,5,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[3,2,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[6,2,0,\"Orange\",[]],[3,6,2,\"Red\",[]],[4,6,2,\"Red\",[]],[5,6,2,\"Red\",[]],[3,7,0,\"Orange\",[]],[6,6,2,\"Red\",[]],[4,7,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[3,3,2,\"Red\",[\"S\"]],[6,7,0,\"Orange\",[]],[1,4,0,\"Orange\",[]],[4,3,2,\"Red\",[]],[2,4,0,\"Orange\",[]],[5,3,2,\"Red\",[]],[6,3,2,\"Red\",[\"S\"]],[7,4,0,\"Orange\",[]],[8,4,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[6,1,0,\"Orange\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[8,6,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[8,4,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[7,6,0,\"Orange\",[]],[7,5,0,\"Orange\",[]],[7,4,0,\"Orange\",[]],[7,3,0,\"Orange\",[]],[6,8,0,\"Orange\",[]],[6,7,0,\"Orange\",[]],[6,2,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[3,2,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[1,4,0,\"Orange\",[]],[1,3,0,\"Orange\",[]],[6,6,2,\"Red\",[]],[6,5,2,\"Red\",[]],[6,4,2,\"Red\",[]],[6,3,2,\"Red\",[\"S\"]],[5,6,2,\"Red\",[]],[5,3,2,\"Red\",[]],[4,6,2,\"Red\",[]],[4,3,2,\"Red\",[]],[3,6,2,\"Red\",[]],[3,5,2,\"Red\",[]],[3,4,2,\"Red\",[]],[3,3,2,\"Red\",[\"S\"]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-19T16:18:42.625)
  (NBestInd 1)
  (utterance "add red bot 2")
  (targetFormula (:loop (number 2) (: add red bot)))
  (targetValue
    (string
      [[3,5,2,\"Red\",[]],[1,6,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[6,5,2,\"Red\",[]],[1,3,0,\"Orange\",[]],[7,6,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[8,6,0,\"Orange\",[]],[3,3,0,\"Red\",[]],[6,3,0,\"Red\",[]],[7,3,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[3,4,2,\"Red\",[]],[6,8,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[6,4,2,\"Red\",[]],[3,3,1,\"Red\",[]],[7,5,0,\"Orange\",[]],[6,3,1,\"Red\",[]],[8,5,0,\"Orange\",[]],[3,2,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[6,2,0,\"Orange\",[]],[3,6,2,\"Red\",[]],[4,6,2,\"Red\",[]],[5,6,2,\"Red\",[]],[3,7,0,\"Orange\",[]],[6,6,2,\"Red\",[]],[4,7,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[3,3,2,\"Red\",[\"S\"]],[6,7,0,\"Orange\",[]],[1,4,0,\"Orange\",[]],[4,3,2,\"Red\",[]],[2,4,0,\"Orange\",[]],[5,3,2,\"Red\",[]],[6,3,2,\"Red\",[\"S\"]],[7,4,0,\"Orange\",[]],[8,4,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[6,1,0,\"Orange\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[8,6,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[8,4,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[7,6,0,\"Orange\",[]],[7,5,0,\"Orange\",[]],[7,4,0,\"Orange\",[]],[7,3,0,\"Orange\",[]],[6,8,0,\"Orange\",[]],[6,7,0,\"Orange\",[]],[6,3,0,\"Red\",[]],[6,2,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[3,3,0,\"Red\",[]],[3,2,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[1,4,0,\"Orange\",[]],[1,3,0,\"Orange\",[]],[6,3,1,\"Red\",[]],[3,3,1,\"Red\",[]],[6,6,2,\"Red\",[]],[6,5,2,\"Red\",[]],[6,4,2,\"Red\",[]],[6,3,2,\"Red\",[\"S\"]],[5,6,2,\"Red\",[]],[5,3,2,\"Red\",[]],[4,6,2,\"Red\",[]],[4,3,2,\"Red\",[]],[3,6,2,\"Red\",[]],[3,5,2,\"Red\",[]],[3,4,2,\"Red\",[]],[3,3,2,\"Red\",[\"S\"]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-19T16:18:47.040)
  (NBestInd 0)
  (utterance remove)
  (targetFormula (: remove))
  (targetValue
    (string
      [[3,5,2,\"Red\",[]],[1,6,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[6,5,2,\"Red\",[]],[1,3,0,\"Orange\",[]],[7,6,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[8,6,0,\"Orange\",[]],[3,3,0,\"Red\",[]],[6,3,0,\"Red\",[]],[7,3,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[3,4,2,\"Red\",[]],[6,8,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[6,4,2,\"Red\",[]],[3,3,1,\"Red\",[]],[7,5,0,\"Orange\",[]],[6,3,1,\"Red\",[]],[8,5,0,\"Orange\",[]],[3,2,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[6,2,0,\"Orange\",[]],[3,6,2,\"Red\",[]],[4,6,2,\"Red\",[]],[5,6,2,\"Red\",[]],[3,7,0,\"Orange\",[]],[6,6,2,\"Red\",[]],[4,7,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[6,7,0,\"Orange\",[]],[1,4,0,\"Orange\",[]],[4,3,2,\"Red\",[]],[2,4,0,\"Orange\",[]],[5,3,2,\"Red\",[]],[7,4,0,\"Orange\",[]],[8,4,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[6,1,0,\"Orange\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[8,6,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[8,4,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[7,6,0,\"Orange\",[]],[7,5,0,\"Orange\",[]],[7,4,0,\"Orange\",[]],[7,3,0,\"Orange\",[]],[6,8,0,\"Orange\",[]],[6,7,0,\"Orange\",[]],[6,3,0,\"Red\",[]],[6,2,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[3,3,0,\"Red\",[]],[3,2,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[1,4,0,\"Orange\",[]],[1,3,0,\"Orange\",[]],[6,3,1,\"Red\",[]],[3,3,1,\"Red\",[]],[6,6,2,\"Red\",[]],[6,5,2,\"Red\",[]],[6,4,2,\"Red\",[]],[6,3,2,\"Red\",[\"S\"]],[5,6,2,\"Red\",[]],[5,3,2,\"Red\",[]],[4,6,2,\"Red\",[]],[4,3,2,\"Red\",[]],[3,6,2,\"Red\",[]],[3,5,2,\"Red\",[]],[3,4,2,\"Red\",[]],[3,3,2,\"Red\",[\"S\"]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-19T16:18:58.809)
  (NBestInd 0)
  (utterance "add blue 2")
  (targetFormula (:loop (number 2) (: add blue top)))
  (targetValue
    (string
      [[3,5,2,\"Red\",[]],[6,5,2,\"Red\",[]],[1,3,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[3,3,0,\"Red\",[]],[6,3,0,\"Red\",[]],[7,3,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[3,4,2,\"Red\",[]],[6,8,0,\"Orange\",[]],[6,4,2,\"Red\",[]],[3,3,1,\"Red\",[]],[6,3,1,\"Red\",[]],[3,2,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[6,2,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[3,3,2,\"Red\",[\"S\"]],[6,7,0,\"Orange\",[]],[4,3,2,\"Red\",[]],[5,3,2,\"Red\",[]],[6,3,2,\"Red\",[\"S\"]],[3,1,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[3,3,3,\"Blue\",[]],[2,6,0,\"Orange\",[]],[6,3,3,\"Blue\",[]],[7,6,0,\"Orange\",[]],[8,6,0,\"Orange\",[]],[3,3,4,\"Blue\",[]],[6,3,4,\"Blue\",[]],[1,5,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[7,5,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[3,6,2,\"Red\",[]],[4,6,2,\"Red\",[]],[5,6,2,\"Red\",[]],[6,6,2,\"Red\",[]],[1,4,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[7,4,0,\"Orange\",[]],[8,4,0,\"Orange\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[8,6,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[8,4,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[7,6,0,\"Orange\",[]],[7,5,0,\"Orange\",[]],[7,4,0,\"Orange\",[]],[7,3,0,\"Orange\",[]],[6,8,0,\"Orange\",[]],[6,7,0,\"Orange\",[]],[6,3,0,\"Red\",[]],[6,2,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[3,3,0,\"Red\",[]],[3,2,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[1,4,0,\"Orange\",[]],[1,3,0,\"Orange\",[]],[6,3,1,\"Red\",[]],[3,3,1,\"Red\",[]],[6,6,2,\"Red\",[]],[6,5,2,\"Red\",[]],[6,4,2,\"Red\",[]],[6,3,2,\"Red\",[\"S\"]],[5,6,2,\"Red\",[]],[5,3,2,\"Red\",[]],[4,6,2,\"Red\",[]],[4,3,2,\"Red\",[]],[3,6,2,\"Red\",[]],[3,5,2,\"Red\",[]],[3,4,2,\"Red\",[]],[3,3,2,\"Red\",[\"S\"]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-19T16:19:02.871)
  (NBestInd 0)
  (utterance "add 2 pink")
  (targetFormula (:loop (number 2) (: add pink top)))
  (targetValue
    (string
      [[3,5,2,\"Red\",[]],[6,5,2,\"Red\",[]],[1,3,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[3,3,0,\"Red\",[]],[6,3,0,\"Red\",[]],[7,3,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[3,4,2,\"Red\",[]],[6,8,0,\"Orange\",[]],[6,4,2,\"Red\",[]],[3,3,1,\"Red\",[]],[6,3,1,\"Red\",[]],[3,2,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[6,2,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[3,3,2,\"Red\",[\"S\"]],[6,7,0,\"Orange\",[]],[4,3,2,\"Red\",[]],[5,3,2,\"Red\",[]],[6,3,2,\"Red\",[\"S\"]],[3,1,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[3,3,3,\"Pink\",[]],[2,6,0,\"Orange\",[]],[6,3,3,\"Pink\",[]],[7,6,0,\"Orange\",[]],[8,6,0,\"Orange\",[]],[3,3,4,\"Pink\",[]],[6,3,4,\"Pink\",[]],[1,5,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[7,5,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[3,6,2,\"Red\",[]],[4,6,2,\"Red\",[]],[5,6,2,\"Red\",[]],[6,6,2,\"Red\",[]],[1,4,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[7,4,0,\"Orange\",[]],[8,4,0,\"Orange\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[8,6,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[8,4,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[7,6,0,\"Orange\",[]],[7,5,0,\"Orange\",[]],[7,4,0,\"Orange\",[]],[7,3,0,\"Orange\",[]],[6,8,0,\"Orange\",[]],[6,7,0,\"Orange\",[]],[6,3,0,\"Red\",[]],[6,2,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[3,3,0,\"Red\",[]],[3,2,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[1,4,0,\"Orange\",[]],[1,3,0,\"Orange\",[]],[6,3,1,\"Red\",[]],[3,3,1,\"Red\",[]],[6,6,2,\"Red\",[]],[6,5,2,\"Red\",[]],[6,4,2,\"Red\",[]],[6,3,2,\"Red\",[\"S\"]],[5,6,2,\"Red\",[]],[5,3,2,\"Red\",[]],[4,6,2,\"Red\",[]],[4,3,2,\"Red\",[]],[3,6,2,\"Red\",[]],[3,5,2,\"Red\",[]],[3,4,2,\"Red\",[]],[3,3,2,\"Red\",[\"S\"]],[6,3,3,\"Pink\",[]],[3,3,3,\"Pink\",[]],[6,3,4,\"Pink\",[]],[3,3,4,\"Pink\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-19T16:19:08.767)
  (NBestInd 0)
  (utterance "select very left of red")
  (targetFormula (:for (call veryx left (color red)) (: select)))
  (targetValue
    (string
      [[3,5,2,\"Red\",[]],[6,5,2,\"Red\",[]],[1,3,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[3,3,0,\"Red\",[]],[6,3,0,\"Red\",[]],[7,3,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[3,4,2,\"Red\",[]],[6,8,0,\"Orange\",[]],[6,4,2,\"Red\",[]],[3,3,1,\"Red\",[]],[6,3,1,\"Red\",[]],[3,2,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[6,2,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[3,3,2,\"Red\",[]],[6,7,0,\"Orange\",[]],[4,3,2,\"Red\",[]],[5,3,2,\"Red\",[]],[6,3,2,\"Red\",[]],[3,1,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[3,3,3,\"Pink\",[]],[2,6,0,\"Orange\",[]],[6,3,3,\"Pink\",[]],[7,6,0,\"Orange\",[]],[8,6,0,\"Orange\",[]],[3,3,4,\"Pink\",[]],[6,3,4,\"Pink\",[]],[1,5,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[7,5,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[3,6,2,\"Red\",[\"S\"]],[4,6,2,\"Red\",[\"S\"]],[5,6,2,\"Red\",[\"S\"]],[6,6,2,\"Red\",[\"S\"]],[1,4,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[7,4,0,\"Orange\",[]],[8,4,0,\"Orange\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[8,6,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[8,4,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[7,6,0,\"Orange\",[]],[7,5,0,\"Orange\",[]],[7,4,0,\"Orange\",[]],[7,3,0,\"Orange\",[]],[6,8,0,\"Orange\",[]],[6,7,0,\"Orange\",[]],[6,3,0,\"Red\",[]],[6,2,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[3,3,0,\"Red\",[]],[3,2,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[1,4,0,\"Orange\",[]],[1,3,0,\"Orange\",[]],[6,3,1,\"Red\",[]],[3,3,1,\"Red\",[]],[6,6,2,\"Red\",[\"S\"]],[6,5,2,\"Red\",[]],[6,4,2,\"Red\",[]],[6,3,2,\"Red\",[]],[5,6,2,\"Red\",[\"S\"]],[5,3,2,\"Red\",[]],[4,6,2,\"Red\",[\"S\"]],[4,3,2,\"Red\",[]],[3,6,2,\"Red\",[\"S\"]],[3,5,2,\"Red\",[]],[3,4,2,\"Red\",[]],[3,3,2,\"Red\",[]],[6,3,3,\"Pink\",[]],[3,3,3,\"Pink\",[]],[6,3,4,\"Pink\",[]],[3,3,4,\"Pink\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-19T16:19:12.753)
  (NBestInd 0)
  (utterance "select very back or very front")
  (targetFormula (:for (or (call veryx back) (call veryx front)) (: select)))
  (targetValue
    (string
      [[3,5,2,\"Red\",[]],[6,5,2,\"Red\",[]],[1,3,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[3,3,0,\"Red\",[]],[6,3,0,\"Red\",[]],[7,3,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[3,4,2,\"Red\",[]],[6,8,0,\"Orange\",[]],[6,4,2,\"Red\",[]],[3,3,1,\"Red\",[]],[6,3,1,\"Red\",[]],[3,2,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[6,2,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[3,3,2,\"Red\",[]],[6,7,0,\"Orange\",[]],[4,3,2,\"Red\",[]],[5,3,2,\"Red\",[]],[6,3,2,\"Red\",[]],[3,1,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[3,3,3,\"Pink\",[]],[2,6,0,\"Orange\",[]],[6,3,3,\"Pink\",[]],[7,6,0,\"Orange\",[]],[8,6,0,\"Orange\",[]],[3,3,4,\"Pink\",[]],[6,3,4,\"Pink\",[]],[1,5,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[7,5,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[3,6,2,\"Red\",[\"S\"]],[4,6,2,\"Red\",[]],[5,6,2,\"Red\",[]],[6,6,2,\"Red\",[\"S\"]],[1,4,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[7,4,0,\"Orange\",[]],[8,4,0,\"Orange\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[8,6,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[8,4,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[7,6,0,\"Orange\",[]],[7,5,0,\"Orange\",[]],[7,4,0,\"Orange\",[]],[7,3,0,\"Orange\",[]],[6,8,0,\"Orange\",[]],[6,7,0,\"Orange\",[]],[6,3,0,\"Red\",[]],[6,2,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[3,3,0,\"Red\",[]],[3,2,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[1,4,0,\"Orange\",[]],[1,3,0,\"Orange\",[]],[6,3,1,\"Red\",[]],[3,3,1,\"Red\",[]],[6,6,2,\"Red\",[\"S\"]],[6,5,2,\"Red\",[]],[6,4,2,\"Red\",[]],[6,3,2,\"Red\",[]],[5,6,2,\"Red\",[]],[5,3,2,\"Red\",[]],[4,6,2,\"Red\",[]],[4,3,2,\"Red\",[]],[3,6,2,\"Red\",[\"S\"]],[3,5,2,\"Red\",[]],[3,4,2,\"Red\",[]],[3,3,2,\"Red\",[]],[6,3,3,\"Pink\",[]],[3,3,3,\"Pink\",[]],[6,3,4,\"Pink\",[]],[3,3,4,\"Pink\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-19T16:19:16.030)
  (NBestInd 0)
  (utterance "add red bot 2")
  (targetFormula (:loop (number 2) (: add red bot)))
  (targetValue
    (string
      [[3,5,2,\"Red\",[]],[6,5,2,\"Red\",[]],[1,3,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[3,3,0,\"Red\",[]],[6,3,0,\"Red\",[]],[7,3,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[3,4,2,\"Red\",[]],[6,8,0,\"Orange\",[]],[6,4,2,\"Red\",[]],[3,3,1,\"Red\",[]],[6,3,1,\"Red\",[]],[3,2,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[6,2,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[3,3,2,\"Red\",[]],[6,7,0,\"Orange\",[]],[4,3,2,\"Red\",[]],[5,3,2,\"Red\",[]],[6,3,2,\"Red\",[]],[3,1,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[3,3,3,\"Pink\",[]],[2,6,0,\"Orange\",[]],[3,6,0,\"Red\",[]],[6,3,3,\"Pink\",[]],[6,6,0,\"Red\",[]],[7,6,0,\"Orange\",[]],[8,6,0,\"Orange\",[]],[3,3,4,\"Pink\",[]],[3,6,1,\"Red\",[]],[6,3,4,\"Pink\",[]],[1,5,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[6,6,1,\"Red\",[]],[7,5,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[3,6,2,\"Red\",[\"S\"]],[4,6,2,\"Red\",[]],[5,6,2,\"Red\",[]],[6,6,2,\"Red\",[\"S\"]],[1,4,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[7,4,0,\"Orange\",[]],[8,4,0,\"Orange\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[8,6,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[8,4,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[7,6,0,\"Orange\",[]],[7,5,0,\"Orange\",[]],[7,4,0,\"Orange\",[]],[7,3,0,\"Orange\",[]],[6,8,0,\"Orange\",[]],[6,7,0,\"Orange\",[]],[6,6,0,\"Red\",[]],[6,3,0,\"Red\",[]],[6,2,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[3,6,0,\"Red\",[]],[3,3,0,\"Red\",[]],[3,2,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[1,4,0,\"Orange\",[]],[1,3,0,\"Orange\",[]],[6,6,1,\"Red\",[]],[6,3,1,\"Red\",[]],[3,6,1,\"Red\",[]],[3,3,1,\"Red\",[]],[6,6,2,\"Red\",[\"S\"]],[6,5,2,\"Red\",[]],[6,4,2,\"Red\",[]],[6,3,2,\"Red\",[]],[5,6,2,\"Red\",[]],[5,3,2,\"Red\",[]],[4,6,2,\"Red\",[]],[4,3,2,\"Red\",[]],[3,6,2,\"Red\",[\"S\"]],[3,5,2,\"Red\",[]],[3,4,2,\"Red\",[]],[3,3,2,\"Red\",[]],[6,3,3,\"Pink\",[]],[3,3,3,\"Pink\",[]],[6,3,4,\"Pink\",[]],[3,3,4,\"Pink\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-19T16:19:20.518)
  (NBestInd 0)
  (utterance "add pink 2")
  (targetFormula (:loop (number 2) (: add pink top)))
  (targetValue
    (string
      [[6,6,3,\"Pink\",[]],[3,5,2,\"Red\",[]],[6,5,2,\"Red\",[]],[1,3,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[3,3,0,\"Red\",[]],[6,3,0,\"Red\",[]],[7,3,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[3,6,4,\"Pink\",[]],[6,6,4,\"Pink\",[]],[3,8,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[3,4,2,\"Red\",[]],[6,8,0,\"Orange\",[]],[6,4,2,\"Red\",[]],[3,3,1,\"Red\",[]],[6,3,1,\"Red\",[]],[3,2,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[6,2,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[3,3,2,\"Red\",[]],[6,7,0,\"Orange\",[]],[4,3,2,\"Red\",[]],[5,3,2,\"Red\",[]],[6,3,2,\"Red\",[]],[3,1,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[3,3,3,\"Pink\",[]],[2,6,0,\"Orange\",[]],[3,6,0,\"Red\",[]],[6,3,3,\"Pink\",[]],[6,6,0,\"Red\",[]],[7,6,0,\"Orange\",[]],[8,6,0,\"Orange\",[]],[3,3,4,\"Pink\",[]],[3,6,1,\"Red\",[]],[6,3,4,\"Pink\",[]],[1,5,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[6,6,1,\"Red\",[]],[7,5,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[3,6,2,\"Red\",[\"S\"]],[4,6,2,\"Red\",[]],[5,6,2,\"Red\",[]],[6,6,2,\"Red\",[\"S\"]],[1,4,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[7,4,0,\"Orange\",[]],[8,4,0,\"Orange\",[]],[3,6,3,\"Pink\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[8,6,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[8,4,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[7,6,0,\"Orange\",[]],[7,5,0,\"Orange\",[]],[7,4,0,\"Orange\",[]],[7,3,0,\"Orange\",[]],[6,8,0,\"Orange\",[]],[6,7,0,\"Orange\",[]],[6,6,0,\"Red\",[]],[6,3,0,\"Red\",[]],[6,2,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[3,6,0,\"Red\",[]],[3,3,0,\"Red\",[]],[3,2,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[1,4,0,\"Orange\",[]],[1,3,0,\"Orange\",[]],[6,6,1,\"Red\",[]],[6,3,1,\"Red\",[]],[3,6,1,\"Red\",[]],[3,3,1,\"Red\",[]],[6,6,2,\"Red\",[\"S\"]],[6,5,2,\"Red\",[]],[6,4,2,\"Red\",[]],[6,3,2,\"Red\",[]],[5,6,2,\"Red\",[]],[5,3,2,\"Red\",[]],[4,6,2,\"Red\",[]],[4,3,2,\"Red\",[]],[3,6,2,\"Red\",[\"S\"]],[3,5,2,\"Red\",[]],[3,4,2,\"Red\",[]],[3,3,2,\"Red\",[]],[6,6,3,\"Pink\",[]],[6,3,3,\"Pink\",[]],[3,6,3,\"Pink\",[]],[3,3,3,\"Pink\",[]],[6,6,4,\"Pink\",[]],[6,3,4,\"Pink\",[]],[3,6,4,\"Pink\",[]],[3,3,4,\"Pink\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-19T16:25:29.402)
  (NBestInd 0)
  (utterance "select all")
  (targetFormula (:for * (: select)))
  (targetValue
    (string
      [[6,6,3,\"Pink\",[\"S\"]],[3,5,2,\"Red\",[\"S\"]],[6,5,2,\"Red\",[\"S\"]],[1,3,0,\"Orange\",[\"S\"]],[2,3,0,\"Orange\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[6,3,0,\"Red\",[\"S\"]],[7,3,0,\"Orange\",[\"S\"]],[8,3,0,\"Orange\",[\"S\"]],[3,6,4,\"Pink\",[\"S\"]],[6,6,4,\"Pink\",[\"S\"]],[3,8,0,\"Orange\",[\"S\"]],[4,8,0,\"Orange\",[\"S\"]],[5,8,0,\"Orange\",[\"S\"]],[3,4,2,\"Red\",[\"S\"]],[6,8,0,\"Orange\",[\"S\"]],[6,4,2,\"Red\",[\"S\"]],[3,3,1,\"Red\",[\"S\"]],[6,3,1,\"Red\",[\"S\"]],[3,2,0,\"Orange\",[\"S\"]],[4,2,0,\"Orange\",[\"S\"]],[5,2,0,\"Orange\",[\"S\"]],[6,2,0,\"Orange\",[\"S\"]],[3,7,0,\"Orange\",[\"S\"]],[4,7,0,\"Orange\",[\"S\"]],[5,7,0,\"Orange\",[\"S\"]],[3,3,2,\"Red\",[\"S\"]],[6,7,0,\"Orange\",[\"S\"]],[4,3,2,\"Red\",[\"S\"]],[5,3,2,\"Red\",[\"S\"]],[6,3,2,\"Red\",[\"S\"]],[3,1,0,\"Orange\",[\"S\"]],[4,1,0,\"Orange\",[\"S\"]],[5,1,0,\"Orange\",[\"S\"]],[6,1,0,\"Orange\",[\"S\"]],[1,6,0,\"Orange\",[\"S\"]],[3,3,3,\"Pink\",[\"S\"]],[2,6,0,\"Orange\",[\"S\"]],[3,6,0,\"Red\",[\"S\"]],[6,3,3,\"Pink\",[\"S\"]],[6,6,0,\"Red\",[\"S\"]],[7,6,0,\"Orange\",[\"S\"]],[8,6,0,\"Orange\",[\"S\"]],[3,3,4,\"Pink\",[\"S\"]],[3,6,1,\"Red\",[\"S\"]],[6,3,4,\"Pink\",[\"S\"]],[1,5,0,\"Orange\",[\"S\"]],[2,5,0,\"Orange\",[\"S\"]],[6,6,1,\"Red\",[\"S\"]],[7,5,0,\"Orange\",[\"S\"]],[8,5,0,\"Orange\",[\"S\"]],[3,6,2,\"Red\",[\"S\"]],[4,6,2,\"Red\",[\"S\"]],[5,6,2,\"Red\",[\"S\"]],[6,6,2,\"Red\",[\"S\"]],[1,4,0,\"Orange\",[\"S\"]],[2,4,0,\"Orange\",[\"S\"]],[7,4,0,\"Orange\",[\"S\"]],[8,4,0,\"Orange\",[\"S\"]],[3,6,3,\"Pink\",[\"S\"]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 19)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[8,6,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[8,4,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[7,6,0,\"Orange\",[]],[7,5,0,\"Orange\",[]],[7,4,0,\"Orange\",[]],[7,3,0,\"Orange\",[]],[6,8,0,\"Orange\",[]],[6,7,0,\"Orange\",[]],[6,6,0,\"Red\",[]],[6,3,0,\"Red\",[]],[6,2,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[3,8,0,\"Orange\",[]],[3,7,0,\"Orange\",[]],[3,6,0,\"Red\",[]],[3,3,0,\"Red\",[]],[3,2,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[2,6,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[1,5,0,\"Orange\",[]],[1,4,0,\"Orange\",[]],[1,3,0,\"Orange\",[]],[6,6,1,\"Red\",[]],[6,3,1,\"Red\",[]],[3,6,1,\"Red\",[]],[3,3,1,\"Red\",[]],[6,6,2,\"Red\",[\"S\"]],[6,5,2,\"Red\",[]],[6,4,2,\"Red\",[]],[6,3,2,\"Red\",[]],[5,6,2,\"Red\",[]],[5,3,2,\"Red\",[]],[4,6,2,\"Red\",[]],[4,3,2,\"Red\",[]],[3,6,2,\"Red\",[\"S\"]],[3,5,2,\"Red\",[]],[3,4,2,\"Red\",[]],[3,3,2,\"Red\",[]],[6,6,3,\"Pink\",[]],[6,3,3,\"Pink\",[]],[3,6,3,\"Pink\",[]],[3,3,3,\"Pink\",[]],[6,6,4,\"Pink\",[]],[6,3,4,\"Pink\",[]],[3,6,4,\"Pink\",[]],[3,3,4,\"Pink\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-19T16:25:39.421)
  (NBestInd 0)
  (utterance "add brown")
  (targetFormula (: add brown top))
  (targetValue
    (string
      [[6,6,3,\"Pink\",[]],[3,5,2,\"Red\",[]],[6,5,2,\"Red\",[]],[1,3,0,\"Orange\",[]],[2,3,0,\"Orange\",[]],[3,3,0,\"Red\",[]],[6,3,0,\"Red\",[]],[7,3,0,\"Orange\",[]],[8,3,0,\"Orange\",[]],[3,6,4,\"Pink\",[]],[6,6,4,\"Pink\",[]],[3,8,0,\"Orange\",[]],[4,8,0,\"Orange\",[]],[5,8,0,\"Orange\",[]],[3,4,2,\"Red\",[]],[6,8,0,\"Orange\",[]],[6,4,2,\"Red\",[]],[3,3,1,\"Red\",[]],[6,3,1,\"Red\",[]],[3,2,0,\"Orange\",[]],[4,2,0,\"Orange\",[]],[5,2,0,\"Orange\",[]],[6,2,0,\"Orange\",[]],[3,6,5,\"Brown\",[]],[6,6,5,\"Brown\",[]],[3,7,0,\"Orange\",[]],[4,7,0,\"Orange\",[]],[5,7,0,\"Orange\",[]],[3,3,2,\"Red\",[]],[6,7,0,\"Orange\",[]],[4,3,2,\"Red\",[]],[5,3,2,\"Red\",[]],[6,3,2,\"Red\",[]],[3,1,0,\"Orange\",[]],[4,1,0,\"Orange\",[]],[5,1,0,\"Orange\",[]],[6,1,0,\"Orange\",[]],[1,6,0,\"Orange\",[]],[3,3,3,\"Pink\",[]],[2,6,0,\"Orange\",[]],[3,6,0,\"Red\",[]],[6,3,3,\"Pink\",[]],[6,6,0,\"Red\",[]],[7,6,0,\"Orange\",[]],[8,6,0,\"Orange\",[]],[3,3,4,\"Pink\",[]],[3,6,1,\"Red\",[]],[6,3,4,\"Pink\",[]],[1,5,0,\"Orange\",[]],[2,5,0,\"Orange\",[]],[6,6,1,\"Red\",[]],[7,5,0,\"Orange\",[]],[8,5,0,\"Orange\",[]],[3,6,2,\"Red\",[\"S\"]],[4,6,2,\"Red\",[]],[5,6,2,\"Red\",[]],[6,6,2,\"Red\",[\"S\"]],[1,4,0,\"Orange\",[]],[2,4,0,\"Orange\",[]],[7,4,0,\"Orange\",[]],[8,4,0,\"Orange\",[]],[3,6,3,\"Pink\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context (date 2016 7 21) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-21T14:27:58.320)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 21) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-21T14:28:03.305)
  (NBestInd 3)
  (utterance "add 3 brown")
  (targetFormula (:loop (number 3) (: add brown top)))
  (targetValue (string [[3,3,3,\"Brown\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Brown\",[]],[3,3,2,\"Brown\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 21) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-21T14:29:01.750)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 21) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-21T14:29:06.124)
  (NBestInd 2)
  (utterance "add blue 3")
  (targetFormula (:loop (number 3) (: add blue top)))
  (targetValue (string [[3,3,3,\"Blue\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Blue\",[]],[3,3,2,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 21) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-21T14:29:51.026)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 21) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-21T14:29:53.282)
  (NBestInd 0)
  (utterance "add orange 3")
  (targetFormula (:loop (number 3) (: add orange top)))
  (targetValue (string [[3,3,3,\"Orange\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Orange\",[]],[3,3,2,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 21) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-21T14:31:58.742)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 21) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-21T14:32:05.236)
  (NBestInd 2)
  (utterance "add pink 3")
  (targetFormula (:loop (number 3) (: add pink top)))
  (targetValue (string [[3,3,3,\"Pink\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Pink\",[]],[3,3,2,\"Pink\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 21) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-21T14:33:02.008)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 21) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-21T14:33:05.075)
  (NBestInd 0)
  (utterance "add 3 white")
  (targetFormula (:loop (number 3) (: add white top)))
  (targetValue (string [[3,3,3,\"White\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"White\",[]],[3,3,2,\"White\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 21) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-21T14:37:42.230)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T13:44:54.560)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T13:45:02.674)
  (NBestInd 3)
  (utterance "add 3 brown")
  (targetFormula (:loop (number 3) (: add brown top)))
  (targetValue (string [[3,3,3,\"Brown\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Brown\",[]],[3,3,2,\"Brown\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Brown\",[]],[3,3,2,\"Brown\",[]],[3,3,3,\"Brown\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-22T13:45:09.649)
  (NBestInd 0)
  (utterance "select all")
  (targetFormula (:for * (: select)))
  (targetValue (string [[3,3,3,\"Brown\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Brown\",[\"S\"]],[3,3,2,\"Brown\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Brown\",[\"S\"]],[3,3,2,\"Brown\",[\"S\"]],[3,3,3,\"Brown\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T13:49:21.070)
  (NBestInd 0)
  (utterance "build rrbb")
  (targetFormula (: build top (string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Brown\",[\"S\"]],[3,3,2,\"Brown\",[\"S\"]],[3,3,3,\"Brown\",[\"S\"]]])))
  (targetValue
    (string
      [[3,3,3,\"Brown\",[\"S\"]],[3,3,4,\"Red\",[\"S\"]],[3,3,5,\"Brown\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,6,\"Brown\",[\"S\"]],[3,3,1,\"Brown\",[\"S\"]],[3,3,7,\"Brown\",[\"S\"]],[3,3,2,\"Brown\",[\"S\"]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T14:04:49.797)
  (NBestInd 0)
  (utterance "{ add red }")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T14:05:29.651)
  (NBestInd 0)
  (utterance "{ add red }")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T14:05:48.434)
  (NBestInd 0)
  (utterance "{ add red }")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T14:05:50.841)
  (NBestInd 0)
  (utterance "{ add orange }")
  (targetFormula (: add orange top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-22T14:05:59.152)
  (NBestInd 0)
  (utterance "{ add blue }")
  (targetFormula (: add blue top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Orange\",[]],[3,3,2,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T14:18:05.255)
  (NBestInd 0)
  (utterance "{ add red }")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T14:18:07.231)
  (NBestInd 0)
  (utterance "{ add blue }")
  (targetFormula (: add blue top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Blue\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-22T14:18:10.879)
  (NBestInd 0)
  (utterance "{ add orange }")
  (targetFormula (: add orange top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Blue\",[]],[3,3,2,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Blue\",[]],[3,3,2,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-22T14:18:13.166)
  (NBestInd 0)
  (utterance "{ add orange }")
  (targetFormula (: add orange top))
  (targetValue (string [[3,3,3,\"Orange\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Blue\",[]],[3,3,2,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T14:27:53.548)
  (NBestInd 0)
  (utterance "{ add orange }")
  (targetFormula (: add orange top))
  (targetValue (string [[3,3,0,\"Orange\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T14:33:15.861)
  (NBestInd 2)
  (utterance "{ add red top 3 times }")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T14:33:22.060)
  (NBestInd 1)
  (utterance "{ add red top 3 times }")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T14:33:30.051)
  (NBestInd 1)
  (utterance "{ add red top 3 times }")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T14:35:41.095)
  (NBestInd 1)
  (utterance "{ add red top 3 times }")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-22T14:35:48.030)
  (NBestInd 1)
  (utterance "{ add red top 3 times }")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,5,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T14:37:34.994)
  (NBestInd 1)
  (utterance "{ add red top 3 times }")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T14:38:26.681)
  (NBestInd 4)
  (utterance "{ add red top 3 times }")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-22T14:38:34.744)
  (NBestInd 0)
  (utterance "{ add red top 3 times }")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,5,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T14:45:06.541)
  (NBestInd 0)
  (utterance "_ add red")
  (targetFormula (: select (color red)))
  (targetValue (string [[3,3,0,\"Anchor\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T14:45:10.203)
  (NBestInd 0)
  (utterance "_ add red")
  (targetFormula (: select (color red)))
  (targetValue (string [[3,3,0,\"Anchor\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-22T14:45:12.109)
  (NBestInd 0)
  (utterance "_ add red")
  (targetFormula (: select (color red)))
  (targetValue (string [[3,3,0,\"Anchor\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-22T14:45:13.917)
  (NBestInd 0)
  (utterance "_ add red")
  (targetFormula (: select (color red)))
  (targetValue (string [[3,3,0,\"Anchor\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T14:45:51.630)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T14:46:52.284)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T14:46:54.579)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-22T14:46:56.123)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[3,3,0,\"Anchor\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-22T14:46:58.114)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[3,3,0,\"Anchor\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T14:47:06.124)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T14:47:08.299)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[3,3,0,\"Orange\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-22T14:47:10.041)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[3,3,0,\"Anchor\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T14:47:42.224)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[3,3,0,\"Blue\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T14:47:57.906)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T14:50:01.683)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Orange\",[]],[3,3,2,\"Blue\",[]],[3,3,3,\"Blue\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-22T14:50:20.274)
  (NBestInd 4)
  (utterance "add red top 3 times")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,3,\"Blue\",[]],[3,3,4,\"Red\",[]],[3,3,5,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,6,\"Red\",[]],[3,3,1,\"Orange\",[]],[3,3,2,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 22)
    (graph
      NaiveKnowledgeGraph
      ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Orange\",[]],[3,3,2,\"Blue\",[]],[3,3,3,\"Blue\",[]],[3,3,4,\"Red\",[]],[3,3,5,\"Red\",[]],[3,3,6,\"Red\",[]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-08-22T14:50:23.021)
  (NBestInd 0)
  (utterance "add red top 3 times")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue
    (string
      [[3,3,8,\"Red\",[]],[3,3,3,\"Blue\",[]],[3,3,9,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,5,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,6,\"Red\",[]],[3,3,1,\"Orange\",[]],[3,3,7,\"Red\",[]],[3,3,2,\"Blue\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 22)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Orange\",[]],[3,3,2,\"Blue\",[]],[3,3,3,\"Blue\",[]],[3,3,4,\"Red\",[]],[3,3,5,\"Red\",[]],[3,3,6,\"Red\",[]],[3,3,7,\"Red\",[]],[3,3,8,\"Red\",[]],[3,3,9,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-22T14:50:26.536)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue
    (string
      [[3,3,8,\"Red\",[]],[3,3,3,\"Blue\",[]],[3,3,9,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,10,\"Red\",[]],[3,3,5,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,6,\"Red\",[]],[3,3,1,\"Orange\",[]],[3,3,7,\"Red\",[]],[3,3,2,\"Blue\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 22)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Orange\",[]],[3,3,2,\"Blue\",[]],[3,3,3,\"Blue\",[]],[3,3,4,\"Red\",[]],[3,3,5,\"Red\",[]],[3,3,6,\"Red\",[]],[3,3,7,\"Red\",[]],[3,3,8,\"Red\",[]],[3,3,9,\"Red\",[]],[3,3,10,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-22T14:50:28.255)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue
    (string
      [[3,3,8,\"Red\",[]],[3,3,3,\"Blue\",[]],[3,3,9,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,10,\"Red\",[]],[3,3,5,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,11,\"Blue\",[]],[3,3,6,\"Red\",[]],[3,3,1,\"Orange\",[]],[3,3,7,\"Red\",[]],[3,3,2,\"Blue\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T14:51:00.682)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T15:09:21.241)
  (NBestInd 1)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T15:09:24.133)
  (NBestInd 1)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-22T15:09:27.389)
  (NBestInd 1)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-22T15:09:31.054)
  (NBestInd 1)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-22T15:09:34.389)
  (NBestInd 1)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Red\",[]],[3,3,4,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-22T15:09:41.991)
  (NBestInd 19)
  (utterance "add red top 3 times")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,5,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,6,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,7,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 22)
    (graph
      NaiveKnowledgeGraph
      ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,5,\"Red\",[]],[3,3,6,\"Red\",[]],[3,3,7,\"Red\",[]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-08-22T15:09:46.374)
  (NBestInd 2)
  (utterance "add red top 3 times")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue
    (string
      [[3,3,8,\"Red\",[]],[3,3,3,\"Red\",[]],[3,3,9,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,10,\"Red\",[]],[3,3,5,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,6,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,7,\"Red\",[]],[3,3,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 22)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,5,\"Red\",[]],[3,3,6,\"Red\",[]],[3,3,7,\"Red\",[]],[3,3,8,\"Red\",[]],[3,3,9,\"Red\",[]],[3,3,10,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-22T15:09:49.877)
  (NBestInd 2)
  (utterance "add red top 3 times")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue
    (string
      [[3,3,13,\"Red\",[]],[3,3,8,\"Red\",[]],[3,3,3,\"Red\",[]],[3,3,10,\"Red\",[]],[3,3,5,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,12,\"Red\",[]],[3,3,7,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,9,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,11,\"Red\",[]],[3,3,6,\"Red\",[]],[3,3,1,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 22)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,5,\"Red\",[]],[3,3,6,\"Red\",[]],[3,3,7,\"Red\",[]],[3,3,8,\"Red\",[]],[3,3,9,\"Red\",[]],[3,3,10,\"Red\",[]],[3,3,11,\"Red\",[]],[3,3,12,\"Red\",[]],[3,3,13,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-22T15:09:56.114)
  (NBestInd 2)
  (utterance "add green right")
  (targetFormula (: add green right))
  (targetValue
    (string
      [[3,3,13,\"Red\",[]],[3,2,0,\"Green\",[]],[3,3,8,\"Red\",[]],[3,3,3,\"Red\",[]],[3,3,10,\"Red\",[]],[3,3,5,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,12,\"Red\",[]],[3,3,7,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,9,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,11,\"Red\",[]],[3,3,6,\"Red\",[]],[3,3,1,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 22)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,3,0,\"Red\",[\"S\"]],[3,2,0,\"Green\",[]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,5,\"Red\",[]],[3,3,6,\"Red\",[]],[3,3,7,\"Red\",[]],[3,3,8,\"Red\",[]],[3,3,9,\"Red\",[]],[3,3,10,\"Red\",[]],[3,3,11,\"Red\",[]],[3,3,12,\"Red\",[]],[3,3,13,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-22T15:09:59.994)
  (NBestInd 2)
  (utterance "add green right")
  (targetFormula (: add green right))
  (targetValue
    (string
      [[3,2,0,\"Green\",[]],[3,3,13,\"Red\",[]],[3,3,8,\"Red\",[]],[3,3,3,\"Red\",[]],[3,3,10,\"Red\",[]],[3,3,5,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,12,\"Red\",[]],[3,3,7,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,9,\"Red\",[]],[3,3,4,\"Red\",[]],[3,1,0,\"Green\",[]],[3,3,11,\"Red\",[]],[3,3,6,\"Red\",[]],[3,3,1,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 22)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,3,0,\"Red\",[]],[3,2,0,\"Green\",[]],[3,1,0,\"Green\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,5,\"Red\",[]],[3,3,6,\"Red\",[]],[3,3,7,\"Red\",[]],[3,3,8,\"Red\",[]],[3,3,9,\"Red\",[]],[3,3,10,\"Red\",[]],[3,3,11,\"Red\",[]],[3,3,12,\"Red\",[]],[3,3,13,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-22T15:10:11.483)
  (NBestInd 2)
  (utterance "add red top 3 times")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue
    (string
      [[3,2,0,\"Green\",[]],[3,3,13,\"Red\",[]],[3,3,8,\"Red\",[]],[3,3,3,\"Red\",[]],[3,3,10,\"Red\",[]],[3,3,5,\"Red\",[]],[3,3,0,\"Red\",[]],[3,1,1,\"Red\",[]],[3,3,12,\"Red\",[]],[3,3,7,\"Red\",[]],[3,3,2,\"Red\",[]],[3,1,3,\"Red\",[]],[3,3,9,\"Red\",[]],[3,3,4,\"Red\",[]],[3,1,0,\"Green\",[\"S\"]],[3,3,11,\"Red\",[]],[3,3,6,\"Red\",[]],[3,3,1,\"Red\",[]],[3,1,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 22)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,3,0,\"Red\",[]],[3,2,0,\"Green\",[]],[3,1,0,\"Green\",[\"S\"]],[3,3,1,\"Red\",[]],[3,1,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,1,2,\"Red\",[]],[3,3,3,\"Red\",[]],[3,1,3,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,5,\"Red\",[]],[3,3,6,\"Red\",[]],[3,3,7,\"Red\",[]],[3,3,8,\"Red\",[]],[3,3,9,\"Red\",[]],[3,3,10,\"Red\",[]],[3,3,11,\"Red\",[]],[3,3,12,\"Red\",[]],[3,3,13,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-22T15:10:15.956)
  (NBestInd 3)
  (utterance "add orange top 3 times")
  (targetFormula (:loop (number 3) (: add orange top)))
  (targetValue
    (string
      [[3,2,0,\"Green\",[]],[3,3,13,\"Red\",[]],[3,3,8,\"Red\",[]],[3,3,3,\"Red\",[]],[3,1,4,\"Orange\",[]],[3,3,10,\"Red\",[]],[3,3,5,\"Red\",[]],[3,3,0,\"Red\",[]],[3,1,6,\"Orange\",[]],[3,1,1,\"Red\",[]],[3,3,12,\"Red\",[]],[3,3,7,\"Red\",[]],[3,3,2,\"Red\",[]],[3,1,3,\"Red\",[]],[3,3,9,\"Red\",[]],[3,3,4,\"Red\",[]],[3,1,5,\"Orange\",[]],[3,1,0,\"Green\",[\"S\"]],[3,3,11,\"Red\",[]],[3,3,6,\"Red\",[]],[3,3,1,\"Red\",[]],[3,1,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 22)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,3,0,\"Red\",[]],[3,2,0,\"Green\",[]],[3,1,0,\"Green\",[\"S\"]],[3,3,1,\"Red\",[]],[3,1,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,1,2,\"Red\",[]],[3,3,3,\"Red\",[]],[3,1,3,\"Red\",[]],[3,3,4,\"Red\",[]],[3,1,4,\"Orange\",[]],[3,3,5,\"Red\",[]],[3,1,5,\"Orange\",[]],[3,3,6,\"Red\",[]],[3,1,6,\"Orange\",[]],[3,3,7,\"Red\",[]],[3,3,8,\"Red\",[]],[3,3,9,\"Red\",[]],[3,3,10,\"Red\",[]],[3,3,11,\"Red\",[]],[3,3,12,\"Red\",[]],[3,3,13,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-22T15:10:19.266)
  (NBestInd 2)
  (utterance "add orange top 3 times")
  (targetFormula (:loop (number 3) (: add orange top)))
  (targetValue
    (string
      [[3,3,13,\"Red\",[]],[3,3,3,\"Red\",[]],[3,1,4,\"Orange\",[]],[3,3,10,\"Red\",[]],[3,3,0,\"Red\",[]],[3,1,1,\"Red\",[]],[3,3,7,\"Red\",[]],[3,1,8,\"Orange\",[]],[3,3,4,\"Red\",[]],[3,1,5,\"Orange\",[]],[3,3,11,\"Red\",[]],[3,3,1,\"Red\",[]],[3,1,2,\"Red\",[]],[3,2,0,\"Green\",[]],[3,3,8,\"Red\",[]],[3,1,9,\"Orange\",[]],[3,3,5,\"Red\",[]],[3,1,6,\"Orange\",[]],[3,3,12,\"Red\",[]],[3,3,2,\"Red\",[]],[3,1,3,\"Red\",[]],[3,3,9,\"Red\",[]],[3,1,0,\"Green\",[\"S\"]],[3,3,6,\"Red\",[]],[3,1,7,\"Orange\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T15:11:01.868)
  (NBestInd 1)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T15:11:04.234)
  (NBestInd 1)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-22T15:11:08.249)
  (NBestInd 3)
  (utterance "add orange 3 times")
  (targetFormula (:loop (number 3) (: add orange top)))
  (targetValue (string [[3,3,3,\"Orange\",[]],[3,3,4,\"Orange\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T15:48:54.293)
  (NBestInd 0)
  (utterance "add orange eree")
  (targetFormula (: add orange top))
  (targetValue (string [[3,3,0,\"Orange\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T15:53:09.874)
  (NBestInd 2)
  (utterance "add orange 3 times")
  (targetFormula (: select (color orange)))
  (targetValue (string [[3,3,0,\"Anchor\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 22)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[3,3,0,\"Orange\",[\"S\"]],[3,2,0,\"Green\",[]],[3,3,1,\"Orange\",[]],[3,3,2,\"Orange\",[]],[3,3,3,\"Orange\",[]],[3,3,4,\"Orange\",[]],[3,3,5,\"Orange\",[]],[3,3,6,\"Orange\",[]],[3,3,7,\"Orange\",[]],[3,3,8,\"Orange\",[]],[3,3,9,\"Orange\",[]],[3,3,10,\"Orange\",[]],[3,3,11,\"Orange\",[]],[3,3,12,\"Red\",[]],[3,3,13,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-08-22T15:53:43.481)
  (NBestInd 0)
  (utterance "select green")
  (targetFormula (: select))
  (targetValue
    (string
      [[3,2,0,\"Green\",[]],[3,3,13,\"Red\",[]],[3,3,8,\"Orange\",[]],[3,3,3,\"Orange\",[]],[3,3,10,\"Orange\",[]],[3,3,5,\"Orange\",[]],[3,3,0,\"Orange\",[\"S\"]],[3,3,12,\"Red\",[]],[3,3,7,\"Orange\",[]],[3,3,2,\"Orange\",[]],[3,3,9,\"Orange\",[]],[3,3,4,\"Orange\",[]],[3,3,11,\"Orange\",[]],[3,3,6,\"Orange\",[]],[3,3,1,\"Orange\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T15:56:20.468)
  (NBestInd 2)
  (utterance "add red 3")
  (targetFormula (: select (color red)))
  (targetValue (string [[3,3,0,\"Anchor\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T16:00:48.530)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T16:01:02.793)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T16:01:27.547)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T16:01:38.339)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T16:02:34.936)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T16:07:33.161)
  (NBestInd 2)
  (utterance "_ add red 3")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-22T16:07:36.801)
  (NBestInd 0)
  (utterance "_ add red 3")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,5,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T16:11:35.820)
  (NBestInd 0)
  (utterance "_ add orange ear")
  (targetFormula (:loop (number 3) (: add orange top)))
  (targetValue (string [[3,3,0,\"Orange\",[\"S\"]],[3,3,1,\"Orange\",[]],[3,3,2,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Orange\",[\"S\"]],[3,3,1,\"Orange\",[]],[3,3,2,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-22T16:13:39.614)
  (NBestInd 3)
  (utterance "_ add green right")
  (targetFormula (: add green right))
  (targetValue (string [[3,2,0,\"Green\",[]],[3,3,0,\"Orange\",[\"S\"]],[3,3,1,\"Orange\",[]],[3,3,2,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T16:35:10.476)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T16:35:13.202)
  (NBestInd 1)
  (utterance "add red 3 times")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-22T16:35:15.258)
  (NBestInd 0)
  (utterance "add red 3 times")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,5,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,6,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 7 22)
    (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,5,\"Red\",[]],[3,3,6,\"Red\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-08-22T16:35:43.024)
  (NBestInd 2)
  (utterance "add orange ear")
  (targetFormula (: add orange right))
  (targetValue (string [[3,2,0,\"Orange\",[]],[3,3,3,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,5,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,6,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T16:36:08.440)
  (NBestInd 0)
  (utterance "add orange ear")
  (targetFormula (: add orange right))
  (targetValue (string [[3,2,0,\"Orange\",[]],[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]],[3,2,0,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-22T16:36:11.655)
  (NBestInd 0)
  (utterance "add orange ear")
  (targetFormula (: add orange right))
  (targetValue (string [[3,2,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[3,3,0,\"Anchor\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]],[3,2,0,\"Orange\",[]],[3,1,0,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-22T16:37:00.629)
  (NBestInd 0)
  (utterance "add orange ere")
  (targetFormula (: add orange right))
  (targetValue (string [[3,2,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[3,3,0,\"Anchor\",[\"S\"]],[3,0,0,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]],[3,2,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[3,0,0,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-22T16:38:22.464)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,2,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[3,3,0,\"Red\",[\"S\"]],[3,0,0,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,2,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[3,0,0,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-22T16:38:26.792)
  (NBestInd 0)
  (utterance "build orange ear top")
  (targetFormula (: build top (string [[3,3,0,\"Anchor\",[\"S\"]],[3,2,0,\"Orange\",[]],[3,1,0,\"Orange\",[]],[3,0,0,\"Orange\",[]]])))
  (targetValue
    (string [[3,2,0,\"Orange\",[]],[3,4,1,\"Orange\",[]],[3,1,0,\"Orange\",[]],[3,6,1,\"Anchor\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Orange\",[]],[3,0,0,\"Orange\",[]],[3,5,1,\"Orange\",[]]])
  )
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T16:45:35.611)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T16:46:02.186)
  (NBestInd 0)
  (utterance "add red top")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T16:56:54.374)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T16:59:04.807)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T16:59:12.270)
  (NBestInd 0)
  (utterance "add red right")
  (targetFormula (: add red right))
  (targetValue (string [[3,2,0,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T16:59:29.317)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T16:59:40.397)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T16:59:43.492)
  (NBestInd 0)
  (utterance "add orange top")
  (targetFormula (: add orange top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T17:07:12.146)
  (NBestInd 1)
  (utterance "add red 3 times")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-22T17:07:14.351)
  (NBestInd 0)
  (utterance "add red 3 times")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,5,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T17:43:42.224)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T17:43:53.072)
  (NBestInd 11)
  (utterance "add red back 3")
  (targetFormula (:loop (number 3) (: add red back)))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]],[4,3,0,\"Red\",[]],[5,3,0,\"Red\",[]],[6,3,0,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 22) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-22T18:36:53.052)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 23) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-23T17:41:02.134)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 23) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-23T17:46:12.745)
  (NBestInd 1)
  (utterance "add red top 3 times")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 23) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]],[3,3,3,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-23T17:46:16.748)
  (NBestInd 0)
  (utterance "add red top 3 times")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[3,3,3,\"Red\",[]],[3,3,4,\"Red\",[]],[3,3,5,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,6,\"Red\",[]],[3,3,1,\"Red\",[]],[3,3,2,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 24) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Anchor\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-24T17:19:23.182)
  (NBestInd 0)
  (utterance "add red top")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 24) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-24T17:19:29.080)
  (NBestInd 1)
  (utterance "add orange 3 times")
  (targetFormula (:loop (number 3) (: add orange top)))
  (targetValue (string [[3,3,3,\"Orange\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Orange\",[]],[3,3,2,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 24) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Orange\",[]],[3,3,2,\"Orange\",[]],[3,3,3,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-08-24T17:19:32.127)
  (NBestInd 0)
  (utterance "select all")
  (targetFormula (:for * (: select)))
  (targetValue (string [[3,3,3,\"Orange\",[\"S\"]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Orange\",[\"S\"]],[3,3,2,\"Orange\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 7 24) (graph NaiveKnowledgeGraph ((string [[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Orange\",[\"S\"]],[3,3,2,\"Orange\",[\"S\"]],[3,3,3,\"Orange\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-08-24T17:19:48.236)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[3,3,3,\"Orange\",[\"S\"]],[3,3,4,\"Red\",[]],[3,3,0,\"Red\",[\"S\"]],[3,3,1,\"Orange\",[\"S\"]],[3,3,2,\"Orange\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 12) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-12T14:49:33.685)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 12) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-12T14:55:38.508)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 12) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-12T15:01:29.800)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 12) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-12T15:04:31.875)
  (NBestInd 0)
  (utterance "add orange 3 times")
  (targetFormula (:loop (number 3) (: add orange top)))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 12) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-12T15:20:45.940)
  (NBestInd 0)
  (utterance "add orange 5 times")
  (targetFormula (:loop (number 5) (: add orange top)))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 12) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-12T16:11:23.020)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 12) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-12T16:11:31.613)
  (NBestInd 1)
  (utterance "add green 5 times")
  (targetFormula (:loop (number 5) (: add green top)))
  (targetValue (string [[0,0,2,\"Green\",[]],[0,0,3,\"Green\",[]],[0,0,4,\"Green\",[]],[0,0,5,\"Green\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Green\",[]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 12) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-12T17:20:15.082)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 12) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-12T17:20:17.432)
  (NBestInd 0)
  (utterance "add red right")
  (targetFormula (: add red right))
  (targetValue (string [[0,-1,0,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 12) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,-1,0,\"Red\",[]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-12T17:20:20.655)
  (NBestInd 0)
  (utterance "add green")
  (targetFormula (: add green top))
  (targetValue (string [[0,0,2,\"Green\",[]],[0,-1,0,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 12) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,-1,0,\"Red\",[]],[0,0,1,\"Red\",[]],[0,0,2,\"Green\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-12T17:20:24.183)
  (NBestInd 0)
  (utterance "add green right")
  (targetFormula (: add green right))
  (targetValue (string [[0,0,2,\"Green\",[]],[0,-1,0,\"Red\",[]],[0,-2,0,\"Green\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 12) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,-1,0,\"Red\",[]],[0,-2,0,\"Green\",[]],[0,0,1,\"Red\",[]],[0,0,2,\"Green\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-12T17:21:12.724)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Green\",[]],[0,-1,0,\"Red\",[]],[0,0,3,\"Red\",[]],[0,-2,0,\"Green\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 12)
    (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,-1,0,\"Red\",[]],[0,-2,0,\"Green\",[]],[0,0,1,\"Red\",[]],[0,0,2,\"Green\",[]],[0,0,3,\"Red\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-10-12T17:21:20.011)
  (NBestInd 3)
  (utterance "select red")
  (targetFormula (: select (color red)))
  (targetValue (string [[0,0,2,\"Green\",[]],[0,-1,0,\"Red\",[\"S\"]],[0,0,3,\"Red\",[\"S\"]],[0,-2,0,\"Green\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 12)
    (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,-1,0,\"Red\",[\"S\"]],[0,-2,0,\"Green\",[]],[0,0,1,\"Red\",[\"S\"]],[0,0,2,\"Green\",[]],[0,0,3,\"Red\",[\"S\"]]]) (name b) (name c)))
  )
  (timeStamp 2016-10-12T17:22:39.101)
  (NBestInd 0)
  (utterance "add red left")
  (targetFormula (: add red left))
  (targetValue
    (string
      [[0,0,2,\"Green\",[]],[0,-1,0,\"Red\",[\"S\"]],[0,0,3,\"Red\",[\"S\"]],[0,1,0,\"Red\",[]],[0,1,1,\"Red\",[]],[0,-2,0,\"Green\",[]],[0,0,0,\"Red\",[\"S\"]],[0,1,3,\"Red\",[]],[0,0,1,\"Red\",[\"S\"]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 12)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[0,1,0,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,-1,0,\"Red\",[\"S\"]],[0,-2,0,\"Green\",[]],[0,1,1,\"Red\",[]],[0,0,1,\"Red\",[\"S\"]],[0,0,2,\"Green\",[]],[0,1,3,\"Red\",[]],[0,0,3,\"Red\",[\"S\"]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-12T17:22:48.005)
  (NBestInd 8)
  (utterance "select very left and very top of red")
  (targetFormula (:foreach (call adj left) (: select)))
  (targetValue
    (string [[0,0,2,\"Green\",[]],[0,-1,0,\"Red\",[]],[0,1,0,\"Red\",[]],[0,0,3,\"Red\",[]],[0,1,1,\"Red\",[]],[0,-2,0,\"Green\",[]],[0,0,0,\"Red\",[]],[0,1,3,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]])
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 12)
    (graph
      NaiveKnowledgeGraph
      (
        (string [[0,1,0,\"Red\",[]],[0,0,0,\"Red\",[]],[0,-1,0,\"Red\",[]],[0,-2,0,\"Green\",[]],[0,1,1,\"Red\",[]],[0,0,1,\"Red\",[]],[0,0,2,\"Green\",[]],[0,1,3,\"Red\",[\"S\"]],[0,0,3,\"Red\",[]]])
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-12T17:23:05.580)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue
    (string
      [[0,1,4,\"Orange\",[]],[0,0,2,\"Green\",[]],[0,-1,0,\"Red\",[]],[0,1,0,\"Red\",[]],[0,0,3,\"Red\",[]],[0,1,1,\"Red\",[]],[0,-2,0,\"Green\",[]],[0,0,0,\"Red\",[]],[0,1,3,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 12)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[0,1,0,\"Red\",[]],[0,0,0,\"Red\",[]],[0,-1,0,\"Red\",[]],[0,-2,0,\"Green\",[]],[0,1,1,\"Red\",[]],[0,0,1,\"Red\",[]],[0,0,2,\"Green\",[]],[0,1,3,\"Red\",[\"S\"]],[0,0,3,\"Red\",[]],[0,1,4,\"Orange\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-12T17:23:16.443)
  (NBestInd 0)
  (utterance "select very left and very right of red")
  (targetFormula (: select))
  (targetValue
    (string
      [[0,1,4,\"Orange\",[]],[0,0,2,\"Green\",[]],[0,-1,0,\"Red\",[]],[0,1,0,\"Red\",[]],[0,0,3,\"Red\",[]],[0,1,1,\"Red\",[]],[0,-2,0,\"Green\",[]],[0,0,0,\"Red\",[]],[0,1,3,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 12)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[0,1,0,\"Red\",[]],[0,0,0,\"Red\",[]],[0,-1,0,\"Red\",[]],[0,-2,0,\"Green\",[]],[0,1,1,\"Red\",[]],[0,0,1,\"Red\",[]],[0,0,2,\"Green\",[]],[0,1,3,\"Red\",[\"S\"]],[0,0,3,\"Red\",[]],[0,1,4,\"Orange\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-12T17:23:18.331)
  (NBestInd 0)
  (utterance "add red left")
  (targetFormula (: add red left))
  (targetValue
    (string
      [[0,1,4,\"Orange\",[]],[0,0,2,\"Green\",[]],[0,-1,0,\"Red\",[]],[0,1,0,\"Red\",[]],[0,0,3,\"Red\",[]],[0,2,3,\"Red\",[]],[0,1,1,\"Red\",[]],[0,-2,0,\"Green\",[]],[0,0,0,\"Red\",[]],[0,1,3,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 12)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[0,1,0,\"Red\",[]],[0,0,0,\"Red\",[]],[0,-1,0,\"Red\",[]],[0,-2,0,\"Green\",[]],[0,1,1,\"Red\",[]],[0,0,1,\"Red\",[]],[0,0,2,\"Green\",[]],[0,2,3,\"Red\",[]],[0,1,3,\"Red\",[\"S\"]],[0,0,3,\"Red\",[]],[0,1,4,\"Orange\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-12T17:23:27.243)
  (NBestInd 1)
  (utterance "select very left and very right of red")
  (targetFormula (:foreach (call adj left) (: select)))
  (targetValue
    (string
      [[0,1,4,\"Orange\",[]],[0,0,2,\"Green\",[]],[0,-1,0,\"Red\",[]],[0,1,0,\"Red\",[]],[0,0,3,\"Red\",[]],[0,2,3,\"Red\",[\"S\"]],[0,1,1,\"Red\",[]],[0,-2,0,\"Green\",[]],[0,0,0,\"Red\",[]],[0,1,3,\"Red\",[]],[0,0,1,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 12)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[0,1,0,\"Red\",[]],[0,0,0,\"Red\",[]],[0,-1,0,\"Red\",[]],[0,-2,0,\"Green\",[]],[0,1,1,\"Red\",[]],[0,0,1,\"Red\",[]],[0,0,2,\"Green\",[]],[0,2,3,\"Red\",[\"S\"]],[0,1,3,\"Red\",[]],[0,0,3,\"Red\",[]],[0,1,4,\"Orange\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-12T17:23:40.498)
  (NBestInd 3)
  (utterance "select green")
  (targetFormula (: select (color green)))
  (targetValue
    (string
      [[0,1,4,\"Orange\",[]],[0,0,2,\"Green\",[\"S\"]],[0,-1,0,\"Red\",[]],[0,1,0,\"Red\",[]],[0,0,3,\"Red\",[]],[0,2,3,\"Red\",[]],[0,1,1,\"Red\",[]],[0,-2,0,\"Green\",[\"S\"]],[0,0,0,\"Red\",[]],[0,1,3,\"Red\",[]],[0,0,1,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 12)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[0,1,0,\"Red\",[]],[0,0,0,\"Red\",[]],[0,-1,0,\"Red\",[]],[0,-2,0,\"Green\",[\"S\"]],[0,1,1,\"Red\",[]],[0,0,1,\"Red\",[]],[0,0,2,\"Green\",[\"S\"]],[0,2,3,\"Red\",[]],[0,1,3,\"Red\",[]],[0,0,3,\"Red\",[]],[0,1,4,\"Orange\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-12T17:24:57.530)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue
    (string
      [[0,1,4,\"Orange\",[]],[0,-1,0,\"Red\",[]],[0,0,3,\"Red\",[]],[0,1,1,\"Red\",[]],[0,0,0,\"Red\",[]],[0,-2,1,\"Red\",[]],[0,1,3,\"Red\",[]],[0,0,2,\"Green\",[\"S\"]],[0,1,0,\"Red\",[]],[0,2,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,-2,0,\"Green\",[\"S\"]],[0,0,1,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 12)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[0,1,0,\"Red\",[]],[0,0,0,\"Red\",[]],[0,-1,0,\"Red\",[]],[0,-2,0,\"Green\",[\"S\"]],[0,1,1,\"Red\",[]],[0,0,1,\"Red\",[]],[0,-2,1,\"Red\",[]],[0,0,2,\"Green\",[\"S\"]],[0,2,3,\"Red\",[]],[0,1,3,\"Red\",[]],[0,0,3,\"Red\",[]],[0,1,4,\"Orange\",[]],[0,0,4,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-12T17:35:10.155)
  (NBestInd 0)
  (utterance "add red left")
  (targetFormula (: add red left))
  (targetValue
    (string
      [[0,1,4,\"Orange\",[]],[0,-1,0,\"Red\",[]],[0,0,3,\"Red\",[]],[0,1,1,\"Red\",[]],[0,0,0,\"Red\",[]],[0,-2,1,\"Red\",[]],[0,1,3,\"Red\",[]],[0,0,2,\"Green\",[\"S\"]],[0,1,0,\"Red\",[]],[0,2,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,-2,0,\"Green\",[\"S\"]],[0,1,2,\"Red\",[]],[0,2,0,\"Red\",[]],[0,0,1,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 12)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[0,2,0,\"Red\",[]],[0,1,0,\"Red\",[]],[0,0,0,\"Red\",[]],[0,-1,0,\"Red\",[]],[0,-2,0,\"Green\",[\"S\"]],[0,1,1,\"Red\",[]],[0,0,1,\"Red\",[]],[0,-2,1,\"Red\",[]],[0,1,2,\"Red\",[]],[0,0,2,\"Green\",[\"S\"]],[0,2,3,\"Red\",[]],[0,1,3,\"Red\",[]],[0,0,3,\"Red\",[]],[0,1,4,\"Orange\",[]],[0,0,4,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-12T17:35:28.138)
  (NBestInd 0)
  (utterance "add red orange")
  (targetFormula (: add red top))
  (targetValue
    (string
      [[0,1,4,\"Orange\",[]],[0,-1,0,\"Red\",[]],[0,0,3,\"Red\",[]],[0,1,1,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,0,\"Red\",[]],[0,-2,1,\"Red\",[]],[0,1,3,\"Red\",[]],[0,0,2,\"Green\",[\"S\"]],[0,1,0,\"Red\",[]],[0,2,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,-2,0,\"Green\",[\"S\"]],[0,1,2,\"Red\",[]],[0,2,0,\"Red\",[]],[0,0,1,\"Red\",[]],[0,-2,2,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context (date 2016 9 12) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-12T18:32:00.919)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 12) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-12T18:32:03.567)
  (NBestInd 0)
  (utterance "add orange 3 times")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 12) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-12T18:32:08.917)
  (NBestInd 1)
  (utterance "add orange 3 times")
  (targetFormula (:loop (number 3) (: add orange top)))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 12) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-12T18:32:15.639)
  (NBestInd 1)
  (utterance "add orange 3 times")
  (targetFormula (:loop (number 3) (: add orange top)))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 12)
    (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-10-12T18:32:19.135)
  (NBestInd 0)
  (utterance "add brown")
  (targetFormula (: add brown top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Brown\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 12)
    (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Brown\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-10-12T18:32:41.527)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Brown\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Blue\",[]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 12)
    (graph
      NaiveKnowledgeGraph
      ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Brown\",[]],[0,0,6,\"Blue\",[]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-10-12T18:35:15.291)
  (NBestInd 0)
  (utterance "add red cool")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,7,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Brown\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Blue\",[]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 12)
    (graph
      NaiveKnowledgeGraph
      (
        (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Brown\",[]],[0,0,6,\"Blue\",[]],[0,0,7,\"Red\",[]]])
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-12T18:35:34.284)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue
    (string [[0,0,7,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,8,\"Red\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Brown\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Blue\",[]],[0,0,1,\"Red\",[]]])
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 12)
    (graph
      NaiveKnowledgeGraph
      (
        (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Brown\",[]],[0,0,6,\"Blue\",[]],[0,0,7,\"Red\",[]],[0,0,8,\"Red\",[]]])
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-12T18:35:44.994)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue
    (string
      [[0,0,7,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,8,\"Red\",[]],[0,0,3,\"Orange\",[]],[0,0,9,\"Red\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Brown\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Blue\",[]],[0,0,1,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 12)
    (graph
      NaiveKnowledgeGraph
      ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Brown\",[]],[0,0,6,\"Blue\",[]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-10-12T18:36:28.817)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,7,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Brown\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Blue\",[]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 12)
    (graph
      NaiveKnowledgeGraph
      (
        (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Brown\",[]],[0,0,6,\"Blue\",[]],[0,0,7,\"Red\",[]]])
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-12T18:36:31.105)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue
    (string [[0,0,7,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,8,\"Red\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Brown\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Blue\",[]],[0,0,1,\"Red\",[]]])
  )
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:05:18.214)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:05:20.411)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:05:24.319)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:05:25.480)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:05:41.308)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:05:47.915)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:06:24.388)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:07:16.656)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:07:18.335)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:07:19.855)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:07:21.694)
  (NBestInd 0)
  (utterance "add red left")
  (targetFormula (: add red left))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]],[0,1,0,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]],[0,1,0,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:07:23.590)
  (NBestInd 0)
  (utterance "add red right")
  (targetFormula (: add red right))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,-1,0,\"Red\",[]],[0,0,3,\"Yellow\",[]],[0,1,0,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 20)
    (graph NaiveKnowledgeGraph ((string [[0,0,2,\"Orange\",[]],[0,-1,0,\"Red\",[]],[0,0,3,\"Yellow\",[]],[0,1,0,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-10-20T00:07:25.965)
  (NBestInd 0)
  (utterance "select all")
  (targetFormula (:for * (: select)))
  (targetValue (string [[0,0,2,\"Orange\",[\"S\"]],[0,-1,0,\"Red\",[\"S\"]],[0,0,3,\"Yellow\",[\"S\"]],[0,1,0,\"Red\",[\"S\"]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 20)
    (graph
      NaiveKnowledgeGraph
      ((string [[0,0,2,\"Orange\",[\"S\"]],[0,-1,0,\"Red\",[\"S\"]],[0,0,3,\"Yellow\",[\"S\"]],[0,1,0,\"Red\",[\"S\"]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[\"S\"]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-10-20T00:07:32.326)
  (NBestInd 0)
  (utterance remove)
  (targetFormula (: remove))
  (targetValue (string []))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-10-20T00:07:36.013)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string []))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string []) (name b) (name c))))
  (timeStamp 2016-10-20T00:07:37.718)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string []))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:09:11.828)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:09:41.858)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:09:44.131)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:10:03.259)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:10:07.323)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,2,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:10:11.395)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:10:42.296)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:11:46.413)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,2,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:11:49.340)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:11:51.996)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:12:49.889)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:13:01.012)
  (NBestInd 0)
  (utterance "add orange 3 times")
  (targetFormula (:loop (number 3) (: add orange top)))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:20:47.614)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:20:48.870)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:30:58.225)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:31:00.610)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:31:03.921)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Blue\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:36:24.341)
  (NBestInd 0)
  (utterance "add orange 3 times")
  (targetFormula (:loop (number 3) (: add orange top)))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:36:31.258)
  (NBestInd 1)
  (utterance "add blue 3 times")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Blue\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:38:10.363)
  (NBestInd 2)
  (utterance "add red")
  (targetFormula (: select (color red)))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:38:29.804)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:38:36.147)
  (NBestInd 2)
  (utterance "add yellow")
  (targetFormula (: select (color yellow)))
  (targetValue (string [[0,0,0,\"Red\",[]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:38:46.460)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,0,\"Red\",[]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:38:56.604)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:39:01.969)
  (NBestInd 2)
  (utterance "add orange")
  (targetFormula (: select (color orange)))
  (targetValue (string [[0,0,0,\"Red\",[]],[0,0,1,\"Yellow\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:39:49.981)
  (NBestInd 2)
  (utterance "add orange")
  (targetFormula (: select (color orange)))
  (targetValue (string [[0,0,0,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:40:46.398)
  (NBestInd 2)
  (utterance "add orange")
  (targetFormula (: select (color orange)))
  (targetValue (string [[0,0,0,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:40:53.880)
  (NBestInd 2)
  (utterance "add red")
  (targetFormula (: select (color red)))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:41:00.258)
  (NBestInd 2)
  (utterance "add orange")
  (targetFormula (: select (color orange)))
  (targetValue (string [[0,0,0,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:41:16.537)
  (NBestInd 2)
  (utterance "add yellow")
  (targetFormula (: select (color yellow)))
  (targetValue (string [[0,0,0,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:41:22.334)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,0,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:41:34.274)
  (NBestInd 2)
  (utterance "add  red")
  (targetFormula (: select (color red)))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:41:36.579)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:41:39.195)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:41:44.799)
  (NBestInd 2)
  (utterance "add orange")
  (targetFormula (: select (color orange)))
  (targetValue (string [[0,0,2,\"Orange\",[\"S\"]],[0,0,0,\"Red\",[]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,2,\"Orange\",[\"S\"]],[0,0,0,\"Red\",[]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:41:48.824)
  (NBestInd 2)
  (utterance "add orange")
  (targetFormula (: select (color orange)))
  (targetValue (string [[0,0,2,\"Orange\",[\"S\"]],[0,0,0,\"Red\",[]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,2,\"Orange\",[\"S\"]],[0,0,0,\"Red\",[]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:42:05.965)
  (NBestInd 0)
  (utterance "add pink right")
  (targetFormula (: add pink right))
  (targetValue (string [[0,0,2,\"Orange\",[\"S\"]],[0,-1,2,\"Pink\",[]],[0,0,0,\"Red\",[]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,2,\"Orange\",[\"S\"]],[0,-1,2,\"Pink\",[]],[0,0,0,\"Red\",[]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:42:14.007)
  (NBestInd 2)
  (utterance "add orange")
  (targetFormula (: select (color orange)))
  (targetValue (string [[0,0,2,\"Orange\",[\"S\"]],[0,-1,2,\"Pink\",[]],[0,0,0,\"Red\",[]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:42:45.757)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:42:50.126)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:42:55.951)
  (NBestInd 0)
  (utterance "add orange 3 times")
  (targetFormula (:loop (number 3) (: add orange top)))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 20)
    (graph NaiveKnowledgeGraph ((string [[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-10-20T00:43:00.633)
  (NBestInd 2)
  (utterance "add orange")
  (targetFormula (: select (color orange)))
  (targetValue (string [[0,0,2,\"Orange\",[\"S\"]],[0,0,3,\"Orange\",[\"S\"]],[0,0,4,\"Orange\",[\"S\"]],[0,0,5,\"Orange\",[\"S\"]],[0,0,0,\"Red\",[]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 20)
    (graph
      NaiveKnowledgeGraph
      ((string [[0,0,2,\"Orange\",[\"S\"]],[0,0,3,\"Orange\",[\"S\"]],[0,0,4,\"Orange\",[\"S\"]],[0,0,5,\"Orange\",[\"S\"]],[0,0,0,\"Red\",[]],[0,0,1,\"Red\",[]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-10-20T00:43:06.968)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Orange\",[\"S\"]],[0,0,3,\"Orange\",[\"S\"]],[0,0,4,\"Orange\",[\"S\"]],[0,0,5,\"Orange\",[\"S\"]],[0,0,0,\"Red\",[]],[0,0,6,\"Yellow\",[]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 20)
    (graph
      NaiveKnowledgeGraph
      ((string [[0,0,2,\"Orange\",[\"S\"]],[0,0,3,\"Orange\",[\"S\"]],[0,0,4,\"Orange\",[\"S\"]],[0,0,5,\"Orange\",[\"S\"]],[0,0,0,\"Red\",[]],[0,0,6,\"Yellow\",[]],[0,0,1,\"Red\",[]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-10-20T00:43:14.193)
  (NBestInd 0)
  (utterance "select yellow")
  (targetFormula (:foreach (color yellow) (: select)))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Orange\",[]],[0,0,0,\"Red\",[]],[0,0,6,\"Yellow\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:51:37.925)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:51:44.117)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:51:47.134)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:51:54.645)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]],[0,0,4,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-20T00:54:25.797)
  (NBestInd 0)
  (utterance "add red 3 times")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-20T01:10:39.357)
  (NBestInd 2)
  (utterance "add red")
  (targetFormula (: select (color red)))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-20T01:13:17.917)
  (NBestInd 0)
  (utterance "add red 3 times")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-20T01:21:47.287)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-20T01:55:34.136)
  (NBestInd 0)
  (utterance "add orange 3 times")
  (targetFormula (:loop (number 3) (: add orange top)))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-20T01:55:55.015)
  (NBestInd 0)
  (utterance "add orange 3 times")
  (targetFormula (:loop (number 3) (: add orange top)))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-20T01:59:47.724)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-20T02:12:47.519)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T02:12:49.095)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T02:12:51.863)
  (NBestInd 0)
  (utterance "add orange 3 times")
  (targetFormula (:loop (number 3) (: add orange top)))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-20T02:16:07.513)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-20T02:16:09.994)
  (NBestInd 0)
  (utterance "add orange 3 times")
  (targetFormula (:loop (number 3) (: add orange top)))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 20) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-20T17:13:15.059)
  (NBestInd 0)
  (utterance "add green 3 times")
  (targetFormula (:loop (number 3) (: add green top)))
  (targetValue (string [[0,0,2,\"Green\",[]],[0,0,3,\"Green\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Green\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 21) (graph NaiveKnowledgeGraph ((string [[0,0,2,\"Green\",[]],[0,0,3,\"Green\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Green\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-21T16:18:50.724)
  (NBestInd 0)
  (utterance "add red 3 times")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[0,0,2,\"Green\",[]],[0,0,3,\"Green\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Red\",[]],[0,0,1,\"Green\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 21)
    (graph
      NaiveKnowledgeGraph
      ((string [[0,0,2,\"Green\",[]],[0,0,3,\"Green\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Red\",[]],[0,0,1,\"Green\",[]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-10-21T16:18:58.547)
  (NBestInd 1)
  (utterance "add a green to the right")
  (targetFormula (: add green right))
  (targetValue (string [[0,0,2,\"Green\",[]],[0,-1,0,\"Green\",[]],[0,0,3,\"Green\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Red\",[]],[0,0,1,\"Green\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:10:43.437)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:10:46.852)
  (NBestInd 1)
  (utterance "add red 3 times")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:18:16.829)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:18:38.983)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:20:35.140)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:20:44.580)
  (NBestInd 0)
  (utterance "add red 3 times")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:21:06.195)
  (NBestInd 0)
  (utterance "add red 3 times")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:21:11.025)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:21:35.921)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:21:39.102)
  (NBestInd 0)
  (utterance "add red 3 times")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:23:00.938)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:23:04.449)
  (NBestInd 0)
  (utterance "add 3 yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:23:07.178)
  (NBestInd 0)
  (utterance "add yellow 3 times")
  (targetFormula (:loop (number 3) (: add yellow top)))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Yellow\",[]],[0,0,4,\"Yellow\",[]],[0,0,5,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]],[0,0,3,\"Yellow\",[]],[0,0,4,\"Yellow\",[]],[0,0,5,\"Yellow\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-10-25T20:23:11.080)
  (NBestInd 1)
  (utterance "add blue right")
  (targetFormula (: add blue right))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,-1,0,\"Blue\",[]],[0,0,3,\"Yellow\",[]],[0,0,4,\"Yellow\",[]],[0,0,5,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      ((string [[0,0,0,\"Red\",[\"S\"]],[0,-1,0,\"Blue\",[]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]],[0,0,3,\"Yellow\",[]],[0,0,4,\"Yellow\",[]],[0,0,5,\"Yellow\",[]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-10-25T20:23:18.488)
  (NBestInd 1)
  (utterance "add blue right")
  (targetFormula (: add blue right))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,-1,0,\"Blue\",[]],[0,0,3,\"Yellow\",[]],[0,0,4,\"Yellow\",[]],[0,-2,0,\"Blue\",[]],[0,0,5,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:25:54.414)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:26:24.804)
  (NBestInd 0)
  (utterance "add 3 red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:26:27.330)
  (NBestInd 0)
  (utterance "add red 3 times")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:26:59.097)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:27:01.978)
  (NBestInd 0)
  (utterance "add red 3 times")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:27:35.032)
  (NBestInd 0)
  (utterance "add red 3 times")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:28:04.284)
  (NBestInd 0)
  (utterance "add red 3 times")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:28:24.835)
  (NBestInd 0)
  (utterance "add red all over the place until it stops trying and then we can really make a difference")
  (targetFormula (:foreach * (: add red top)))
  (targetValue (string [[0,0,7,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Red\",[]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:29:19.904)
  (NBestInd 0)
  (utterance "add red 3 times")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:29:25.406)
  (NBestInd 0)
  (utterance "add red 5 times")
  (targetFormula (:loop (number 5) (: add red top)))
  (targetValue (string [[0,0,7,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Red\",[]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      (
        (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,8,\"Red\",[]]])
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-25T20:29:30.895)
  (NBestInd 1)
  (utterance "add orange to all sides")
  (targetFormula (: add orange top))
  (targetValue
    (string
      [[0,0,7,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,9,\"Orange\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Red\",[]],[0,0,1,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:32:11.145)
  (NBestInd 0)
  (utterance "add red 3 times")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:36:04.064)
  (NBestInd 0)
  (utterance "add red 3 times")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:36:14.133)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:37:02.916)
  (NBestInd 1)
  (utterance "add yellow left")
  (targetFormula (: add yellow left))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,1,0,\"Yellow\",[]],[0,0,4,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:38:01.515)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:38:02.975)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:38:05.750)
  (NBestInd 0)
  (utterance "add orange 3 times")
  (targetFormula (:loop (number 3) (: add orange top)))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Orange\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-10-25T20:38:09.862)
  (NBestInd 0)
  (utterance "add orange 5 times")
  (targetFormula (:loop (number 5) (: add orange top)))
  (targetValue
    (string
      [[0,0,7,\"Orange\",[]],[0,0,2,\"Orange\",[]],[0,0,8,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,9,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,10,\"Orange\",[]],[0,0,5,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Orange\",[]],[0,0,1,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:39:29.976)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:39:30.902)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:39:31.934)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:41:15.490)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:48:03.443)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:48:05.532)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:48:11.594)
  (NBestInd 0)
  (utterance "add red 3 times")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:53:56.574)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:54:00.486)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:54:10.509)
  (NBestInd 1)
  (utterance "add red three times")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:54:16.364)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:54:20.938)
  (NBestInd 2)
  (utterance "add red orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:57:25.814)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:57:32.686)
  (NBestInd 1)
  (utterance "add red three times")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:57:45.411)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:58:29.257)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:58:30.969)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:58:53.072)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T20:59:59.252)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:00:16.857)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:02:51.746)
  (NBestInd 0)
  (utterance "add red 3 times")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:03:14.912)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:03:17.080)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:05:02.035)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:05:05.051)
  (NBestInd 0)
  (utterance "add redadd red three times")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:05:30.977)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:05:34.953)
  (NBestInd 0)
  (utterance "add red three times")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:05:40.857)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:10:24.827)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:10:27.723)
  (NBestInd 0)
  (utterance "add red three times")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:42:43.769)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:42:45.657)
  (NBestInd 0)
  (utterance "add 3 red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:43:04.545)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:44:07.306)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:45:20.829)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:45:23.363)
  (NBestInd 0)
  (utterance "add red 3 times")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:50:04.488)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Orange\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-10-25T21:50:07.526)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Yellow\",[]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Orange\",[]],[0,0,6,\"Yellow\",[]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-10-25T21:50:09.413)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,7,\"Orange\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Yellow\",[]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:52:18.830)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:52:31.518)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:52:33.923)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:52:35.391)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:52:36.924)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]],[0,0,4,\"Blue\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:52:48.779)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:52:50.098)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]],[0,0,2,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:52:51.630)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]],[0,0,2,\"Yellow\",[]],[0,0,3,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:52:54.449)
  (NBestInd 0)
  (utterance "add green")
  (targetFormula (: add green top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Green\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]],[0,0,2,\"Yellow\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Green\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-10-25T21:52:56.299)
  (NBestInd 0)
  (utterance "add brown")
  (targetFormula (: add brown top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Green\",[]],[0,0,5,\"Brown\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:53:33.175)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:53:34.572)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:53:49.365)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:53:51.013)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]],[0,0,2,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:53:52.796)
  (NBestInd 0)
  (utterance "add green")
  (targetFormula (: add green top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Green\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:54:05.573)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:54:07.108)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]],[0,0,2,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:54:08.618)
  (NBestInd 0)
  (utterance "add green")
  (targetFormula (: add green top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Green\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]],[0,0,2,\"Yellow\",[]],[0,0,3,\"Green\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:54:10.060)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Green\",[]],[0,0,4,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:54:21.922)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:54:23.393)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]],[0,0,2,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:54:24.732)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]],[0,0,2,\"Yellow\",[]],[0,0,3,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:54:26.664)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Blue\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:54:46.041)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:54:48.009)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,2,\"Blue\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Blue\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:54:55.506)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Blue\",[]],[0,0,3,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Blue\",[]],[0,0,3,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:54:57.662)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Blue\",[]],[0,0,3,\"Yellow\",[]],[0,0,4,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Blue\",[]],[0,0,3,\"Yellow\",[]],[0,0,4,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:54:59.662)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Blue\",[]],[0,0,3,\"Yellow\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Blue\",[]],[0,0,3,\"Yellow\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Orange\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-10-25T21:55:00.818)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Blue\",[]],[0,0,3,\"Yellow\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Red\",[]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:55:04.078)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:55:05.383)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:55:06.728)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:55:08.743)
  (NBestInd 0)
  (utterance "add green")
  (targetFormula (: add green top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]],[0,0,4,\"Green\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:55:53.903)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:55:55.325)
  (NBestInd 0)
  (utterance "add green")
  (targetFormula (: add green top))
  (targetValue (string [[0,0,2,\"Green\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]],[0,0,2,\"Green\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:55:56.776)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Green\",[]],[0,0,3,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]],[0,0,2,\"Green\",[]],[0,0,3,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:55:58.014)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Green\",[]],[0,0,3,\"Yellow\",[]],[0,0,4,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:56:52.163)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:56:54.074)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:56:59.629)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:58:10.675)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:58:13.757)
  (NBestInd 0)
  (utterance "add red 3 times")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:58:19.550)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:59:09.632)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:59:11.152)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:59:12.695)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Blue\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Blue\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:59:14.488)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Blue\",[]],[0,0,4,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Blue\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:59:22.742)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Blue\",[]],[0,0,4,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Blue\",[]],[0,0,4,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T21:59:28.889)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Blue\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:00:31.986)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:01:35.022)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:03:11.784)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:04:18.572)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:04:20.379)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:04:27.411)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,2,\"Blue\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Blue\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:04:29.627)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Blue\",[]],[0,0,3,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Blue\",[]],[0,0,3,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:04:31.466)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Blue\",[]],[0,0,3,\"Yellow\",[]],[0,0,4,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:10:16.522)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:10:19.210)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:10:24.345)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,2,\"Blue\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]],[0,0,2,\"Blue\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:10:26.945)
  (NBestInd 0)
  (utterance "add green")
  (targetFormula (: add green top))
  (targetValue (string [[0,0,2,\"Blue\",[]],[0,0,3,\"Green\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]],[0,0,2,\"Blue\",[]],[0,0,3,\"Green\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:10:28.895)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Blue\",[]],[0,0,3,\"Green\",[]],[0,0,4,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]],[0,0,2,\"Blue\",[]],[0,0,3,\"Green\",[]],[0,0,4,\"Orange\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-10-25T22:10:30.951)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,2,\"Blue\",[]],[0,0,3,\"Green\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Blue\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]],[0,0,2,\"Blue\",[]],[0,0,3,\"Green\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:10:37.488)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Blue\",[]],[0,0,3,\"Green\",[]],[0,0,4,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:10:43.768)
  (NBestInd 1)
  (utterance "add red right")
  (targetFormula (: add red right))
  (targetValue (string [[0,-1,0,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,-1,0,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:10:47.878)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,-1,0,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,-1,0,\"Red\",[]],[0,0,1,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:10:56.527)
  (NBestInd 0)
  (utterance "select right of red")
  (targetFormula (:for (call adj right) (: select)))
  (targetValue (string [[0,-1,0,\"Red\",[\"S\"]],[0,0,0,\"Red\",[]],[0,0,1,\"Yellow\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[]],[0,-1,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:11:10.594)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,-1,0,\"Red\",[\"S\"]],[0,-1,1,\"Red\",[]],[0,0,0,\"Red\",[]],[0,0,1,\"Yellow\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[]],[0,-1,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]],[0,-1,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:11:40.733)
  (NBestInd 1)
  (utterance "add blue front")
  (targetFormula (: add blue front))
  (targetValue (string [[-1,-1,0,\"Blue\",[]],[0,-1,0,\"Red\",[\"S\"]],[0,-1,1,\"Red\",[]],[0,0,0,\"Red\",[]],[0,0,1,\"Yellow\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[]],[0,-1,0,\"Red\",[\"S\"]],[-1,-1,0,\"Blue\",[]],[0,0,1,\"Yellow\",[]],[0,-1,1,\"Red\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-10-25T22:11:44.884)
  (NBestInd 0)
  (utterance "add green")
  (targetFormula (: add green top))
  (targetValue (string [[-1,-1,0,\"Blue\",[]],[0,-1,0,\"Red\",[\"S\"]],[0,-1,1,\"Red\",[]],[0,-1,2,\"Green\",[]],[0,0,0,\"Red\",[]],[0,0,1,\"Yellow\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[]],[0,-1,0,\"Red\",[\"S\"]],[-1,-1,0,\"Blue\",[]],[0,0,1,\"Yellow\",[]],[0,-1,1,\"Red\",[]],[0,-1,2,\"Green\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-10-25T22:12:12.917)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[-1,-1,0,\"Blue\",[]],[0,-1,0,\"Red\",[\"S\"]],[0,-1,1,\"Red\",[]],[0,-1,2,\"Green\",[]],[0,0,0,\"Red\",[]],[0,-1,3,\"Red\",[]],[0,0,1,\"Yellow\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      ((string [[0,0,0,\"Red\",[]],[0,-1,0,\"Red\",[\"S\"]],[-1,-1,0,\"Blue\",[]],[0,0,1,\"Yellow\",[]],[0,-1,1,\"Red\",[]],[0,-1,2,\"Green\",[]],[0,-1,3,\"Red\",[]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-10-25T22:12:14.102)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[-1,-1,0,\"Blue\",[]],[0,-1,0,\"Red\",[\"S\"]],[0,-1,1,\"Red\",[]],[0,-1,2,\"Green\",[]],[0,0,0,\"Red\",[]],[0,-1,3,\"Red\",[]],[0,0,1,\"Yellow\",[]],[0,-1,4,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      (
        (string [[0,0,0,\"Red\",[]],[0,-1,0,\"Red\",[\"S\"]],[-1,-1,0,\"Blue\",[]],[0,0,1,\"Yellow\",[]],[0,-1,1,\"Red\",[]],[0,-1,2,\"Green\",[]],[0,-1,3,\"Red\",[]],[0,-1,4,\"Red\",[]]])
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-25T22:12:15.301)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue
    (string [[-1,-1,0,\"Blue\",[]],[0,-1,5,\"Red\",[]],[0,-1,0,\"Red\",[\"S\"]],[0,-1,1,\"Red\",[]],[0,-1,2,\"Green\",[]],[0,0,0,\"Red\",[]],[0,-1,3,\"Red\",[]],[0,0,1,\"Yellow\",[]],[0,-1,4,\"Red\",[]]])
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      (
        (string [[0,0,0,\"Red\",[]],[0,-1,0,\"Red\",[\"S\"]],[-1,-1,0,\"Blue\",[]],[0,0,1,\"Yellow\",[]],[0,-1,1,\"Red\",[]],[0,-1,2,\"Green\",[]],[0,-1,3,\"Red\",[]],[0,-1,4,\"Red\",[]],[0,-1,5,\"Red\",[]]])
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-25T22:12:16.560)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue
    (string
      [[-1,-1,0,\"Blue\",[]],[0,-1,5,\"Red\",[]],[0,-1,0,\"Red\",[\"S\"]],[0,-1,6,\"Red\",[]],[0,-1,1,\"Red\",[]],[0,-1,2,\"Green\",[]],[0,0,0,\"Red\",[]],[0,-1,3,\"Red\",[]],[0,0,1,\"Yellow\",[]],[0,-1,4,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[0,0,0,\"Red\",[]],[0,-1,0,\"Red\",[\"S\"]],[-1,-1,0,\"Blue\",[]],[0,0,1,\"Yellow\",[]],[0,-1,1,\"Red\",[]],[0,-1,2,\"Green\",[]],[0,-1,3,\"Red\",[]],[0,-1,4,\"Red\",[]],[0,-1,5,\"Red\",[]],[0,-1,6,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-25T22:12:17.623)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue
    (string
      [[-1,-1,0,\"Blue\",[]],[0,-1,5,\"Red\",[]],[0,-1,0,\"Red\",[\"S\"]],[0,-1,6,\"Red\",[]],[0,-1,1,\"Red\",[]],[0,-1,7,\"Red\",[]],[0,-1,2,\"Green\",[]],[0,0,0,\"Red\",[]],[0,-1,3,\"Red\",[]],[0,0,1,\"Yellow\",[]],[0,-1,4,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[0,0,0,\"Red\",[]],[0,-1,0,\"Red\",[\"S\"]],[-1,-1,0,\"Blue\",[]],[0,0,1,\"Yellow\",[]],[0,-1,1,\"Red\",[]],[0,-1,2,\"Green\",[]],[0,-1,3,\"Red\",[]],[0,-1,4,\"Red\",[]],[0,-1,5,\"Red\",[]],[0,-1,6,\"Red\",[]],[0,-1,7,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-25T22:12:18.628)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue
    (string
      [[-1,-1,0,\"Blue\",[]],[0,-1,5,\"Red\",[]],[0,-1,0,\"Red\",[\"S\"]],[0,-1,6,\"Red\",[]],[0,-1,1,\"Red\",[]],[0,-1,7,\"Red\",[]],[0,-1,2,\"Green\",[]],[0,-1,8,\"Red\",[]],[0,0,0,\"Red\",[]],[0,-1,3,\"Red\",[]],[0,0,1,\"Yellow\",[]],[0,-1,4,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[0,0,0,\"Red\",[]],[0,-1,0,\"Red\",[\"S\"]],[-1,-1,0,\"Blue\",[]],[0,0,1,\"Yellow\",[]],[0,-1,1,\"Red\",[]],[0,-1,2,\"Green\",[]],[0,-1,3,\"Red\",[]],[0,-1,4,\"Red\",[]],[0,-1,5,\"Red\",[]],[0,-1,6,\"Red\",[]],[0,-1,7,\"Red\",[]],[0,-1,8,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-25T22:12:19.598)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue
    (string
      [[-1,-1,0,\"Blue\",[]],[0,-1,5,\"Red\",[]],[0,-1,0,\"Red\",[\"S\"]],[0,-1,7,\"Red\",[]],[0,-1,2,\"Green\",[]],[0,0,0,\"Red\",[]],[0,-1,9,\"Red\",[]],[0,-1,4,\"Red\",[]],[0,-1,6,\"Red\",[]],[0,-1,1,\"Red\",[]],[0,-1,8,\"Red\",[]],[0,-1,3,\"Red\",[]],[0,0,1,\"Yellow\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:12:28.362)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:12:29.285)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:12:30.212)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:12:31.132)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:12:32.287)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-10-25T22:12:35.787)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Red\",[]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,6,\"Red\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-10-25T22:12:36.781)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,7,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Red\",[]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,7,\"Red\",[]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-10-25T22:12:37.494)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,7,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Red\",[]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      (
        (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,8,\"Red\",[]]])
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-25T22:12:38.230)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue
    (string
      [[0,0,7,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Red\",[]],[0,0,1,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,9,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-25T22:12:38.748)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue
    (string
      [[0,0,7,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Red\",[]],[0,0,1,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,10,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-25T22:12:39.214)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue
    (string
      [[0,0,7,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,11,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,1,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,11,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-25T22:12:39.684)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue
    (string
      [[0,0,8,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,12,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,1,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,12,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-25T22:12:40.155)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue
    (string
      [[0,0,13,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,12,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,1,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,12,\"Red\",[]],[0,0,13,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-25T22:12:40.661)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue
    (string
      [[0,0,13,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,12,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,14,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,1,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,12,\"Red\",[]],[0,0,13,\"Red\",[]],[0,0,14,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-25T22:12:41.140)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue
    (string
      [[0,0,13,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,15,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,12,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,14,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,1,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,12,\"Red\",[]],[0,0,13,\"Red\",[]],[0,0,14,\"Red\",[]],[0,0,15,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-25T22:12:41.715)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue
    (string
      [[0,0,13,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,15,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,12,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,14,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,16,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,1,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,12,\"Red\",[]],[0,0,13,\"Red\",[]],[0,0,14,\"Red\",[]],[0,0,15,\"Red\",[]],[0,0,16,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-25T22:12:42.149)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue
    (string
      [[0,0,13,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,15,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,17,\"Red\",[]],[0,0,12,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,14,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,16,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,1,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,12,\"Red\",[]],[0,0,13,\"Red\",[]],[0,0,14,\"Red\",[]],[0,0,15,\"Red\",[]],[0,0,16,\"Red\",[]],[0,0,17,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-25T22:12:42.620)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue
    (string
      [[0,0,18,\"Red\",[]],[0,0,13,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,15,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,17,\"Red\",[]],[0,0,12,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,14,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,16,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,1,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,12,\"Red\",[]],[0,0,13,\"Red\",[]],[0,0,14,\"Red\",[]],[0,0,15,\"Red\",[]],[0,0,16,\"Red\",[]],[0,0,17,\"Red\",[]],[0,0,18,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-25T22:12:43.083)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue
    (string
      [[0,0,18,\"Red\",[]],[0,0,13,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,15,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,17,\"Red\",[]],[0,0,12,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,19,\"Red\",[]],[0,0,14,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,16,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,1,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,12,\"Red\",[]],[0,0,13,\"Red\",[]],[0,0,14,\"Red\",[]],[0,0,15,\"Red\",[]],[0,0,16,\"Red\",[]],[0,0,17,\"Red\",[]],[0,0,18,\"Red\",[]],[0,0,19,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-25T22:12:43.508)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue
    (string
      [[0,0,18,\"Red\",[]],[0,0,13,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,20,\"Red\",[]],[0,0,15,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,17,\"Red\",[]],[0,0,12,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,19,\"Red\",[]],[0,0,14,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,16,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,1,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,12,\"Red\",[]],[0,0,13,\"Red\",[]],[0,0,14,\"Red\",[]],[0,0,15,\"Red\",[]],[0,0,16,\"Red\",[]],[0,0,17,\"Red\",[]],[0,0,18,\"Red\",[]],[0,0,19,\"Red\",[]],[0,0,20,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-25T22:12:43.931)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue
    (string
      [[0,0,18,\"Red\",[]],[0,0,13,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,20,\"Red\",[]],[0,0,15,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,17,\"Red\",[]],[0,0,12,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,19,\"Red\",[]],[0,0,14,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,21,\"Red\",[]],[0,0,16,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,1,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,12,\"Red\",[]],[0,0,13,\"Red\",[]],[0,0,14,\"Red\",[]],[0,0,15,\"Red\",[]],[0,0,16,\"Red\",[]],[0,0,17,\"Red\",[]],[0,0,18,\"Red\",[]],[0,0,19,\"Red\",[]],[0,0,20,\"Red\",[]],[0,0,21,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-25T22:12:44.365)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue
    (string
      [[0,0,18,\"Red\",[]],[0,0,13,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,20,\"Red\",[]],[0,0,15,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,22,\"Red\",[]],[0,0,17,\"Red\",[]],[0,0,12,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,19,\"Red\",[]],[0,0,14,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,21,\"Red\",[]],[0,0,16,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,1,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,12,\"Red\",[]],[0,0,13,\"Red\",[]],[0,0,14,\"Red\",[]],[0,0,15,\"Red\",[]],[0,0,16,\"Red\",[]],[0,0,17,\"Red\",[]],[0,0,18,\"Red\",[]],[0,0,19,\"Red\",[]],[0,0,20,\"Red\",[]],[0,0,21,\"Red\",[]],[0,0,22,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-25T22:12:44.830)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue
    (string
      [[0,0,23,\"Red\",[]],[0,0,18,\"Red\",[]],[0,0,13,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,20,\"Red\",[]],[0,0,15,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,22,\"Red\",[]],[0,0,17,\"Red\",[]],[0,0,12,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,19,\"Red\",[]],[0,0,14,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,21,\"Red\",[]],[0,0,16,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,1,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,12,\"Red\",[]],[0,0,13,\"Red\",[]],[0,0,14,\"Red\",[]],[0,0,15,\"Red\",[]],[0,0,16,\"Red\",[]],[0,0,17,\"Red\",[]],[0,0,18,\"Red\",[]],[0,0,19,\"Red\",[]],[0,0,20,\"Red\",[]],[0,0,21,\"Red\",[]],[0,0,22,\"Red\",[]],[0,0,23,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-25T22:12:45.294)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue
    (string
      [[0,0,23,\"Red\",[]],[0,0,13,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,20,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,17,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,24,\"Red\",[]],[0,0,14,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,21,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,1,\"Red\",[]],[0,0,18,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,15,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,22,\"Red\",[]],[0,0,12,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,19,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,16,\"Red\",[]],[0,0,6,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,12,\"Red\",[]],[0,0,13,\"Red\",[]],[0,0,14,\"Red\",[]],[0,0,15,\"Red\",[]],[0,0,16,\"Red\",[]],[0,0,17,\"Red\",[]],[0,0,18,\"Red\",[]],[0,0,19,\"Red\",[]],[0,0,20,\"Red\",[]],[0,0,21,\"Red\",[]],[0,0,22,\"Red\",[]],[0,0,23,\"Red\",[]],[0,0,24,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-25T22:12:45.787)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue
    (string
      [[0,0,23,\"Red\",[]],[0,0,13,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,20,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,17,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,24,\"Red\",[]],[0,0,14,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,21,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,1,\"Red\",[]],[0,0,18,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,25,\"Red\",[]],[0,0,15,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,22,\"Red\",[]],[0,0,12,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,19,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,16,\"Red\",[]],[0,0,6,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,12,\"Red\",[]],[0,0,13,\"Red\",[]],[0,0,14,\"Red\",[]],[0,0,15,\"Red\",[]],[0,0,16,\"Red\",[]],[0,0,17,\"Red\",[]],[0,0,18,\"Red\",[]],[0,0,19,\"Red\",[]],[0,0,20,\"Red\",[]],[0,0,21,\"Red\",[]],[0,0,22,\"Red\",[]],[0,0,23,\"Red\",[]],[0,0,24,\"Red\",[]],[0,0,25,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-25T22:12:46.691)
  (NBestInd 0)
  (utterance "add redadd red")
  (targetFormula (: add red top))
  (targetValue
    (string
      [[0,0,23,\"Red\",[]],[0,0,13,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,20,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,17,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,24,\"Red\",[]],[0,0,14,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,21,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,1,\"Red\",[]],[0,0,18,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,25,\"Red\",[]],[0,0,15,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,22,\"Red\",[]],[0,0,12,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,19,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,26,\"Red\",[]],[0,0,16,\"Red\",[]],[0,0,6,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,12,\"Red\",[]],[0,0,13,\"Red\",[]],[0,0,14,\"Red\",[]],[0,0,15,\"Red\",[]],[0,0,16,\"Red\",[]],[0,0,17,\"Red\",[]],[0,0,18,\"Red\",[]],[0,0,19,\"Red\",[]],[0,0,20,\"Red\",[]],[0,0,21,\"Red\",[]],[0,0,22,\"Red\",[]],[0,0,23,\"Red\",[]],[0,0,24,\"Red\",[]],[0,0,25,\"Red\",[]],[0,0,26,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-25T22:12:47.181)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue
    (string
      [[0,0,23,\"Red\",[]],[0,0,13,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,20,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,27,\"Red\",[]],[0,0,17,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,24,\"Red\",[]],[0,0,14,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,21,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,1,\"Red\",[]],[0,0,18,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,25,\"Red\",[]],[0,0,15,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,22,\"Red\",[]],[0,0,12,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,19,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,26,\"Red\",[]],[0,0,16,\"Red\",[]],[0,0,6,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,12,\"Red\",[]],[0,0,13,\"Red\",[]],[0,0,14,\"Red\",[]],[0,0,15,\"Red\",[]],[0,0,16,\"Red\",[]],[0,0,17,\"Red\",[]],[0,0,18,\"Red\",[]],[0,0,19,\"Red\",[]],[0,0,20,\"Red\",[]],[0,0,21,\"Red\",[]],[0,0,22,\"Red\",[]],[0,0,23,\"Red\",[]],[0,0,24,\"Red\",[]],[0,0,25,\"Red\",[]],[0,0,26,\"Red\",[]],[0,0,27,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-25T22:12:47.636)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue
    (string
      [[0,0,23,\"Red\",[]],[0,0,13,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,20,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,27,\"Red\",[]],[0,0,17,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,24,\"Red\",[]],[0,0,14,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,21,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,1,\"Red\",[]],[0,0,28,\"Red\",[]],[0,0,18,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,25,\"Red\",[]],[0,0,15,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,22,\"Red\",[]],[0,0,12,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,19,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,26,\"Red\",[]],[0,0,16,\"Red\",[]],[0,0,6,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,12,\"Red\",[]],[0,0,13,\"Red\",[]],[0,0,14,\"Red\",[]],[0,0,15,\"Red\",[]],[0,0,16,\"Red\",[]],[0,0,17,\"Red\",[]],[0,0,18,\"Red\",[]],[0,0,19,\"Red\",[]],[0,0,20,\"Red\",[]],[0,0,21,\"Red\",[]],[0,0,22,\"Red\",[]],[0,0,23,\"Red\",[]],[0,0,24,\"Red\",[]],[0,0,25,\"Red\",[]],[0,0,26,\"Red\",[]],[0,0,27,\"Red\",[]],[0,0,28,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-25T22:12:48.045)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue
    (string
      [[0,0,23,\"Red\",[]],[0,0,13,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,20,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,27,\"Red\",[]],[0,0,17,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,24,\"Red\",[]],[0,0,14,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,21,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,1,\"Red\",[]],[0,0,28,\"Red\",[]],[0,0,18,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,25,\"Red\",[]],[0,0,15,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,22,\"Red\",[]],[0,0,12,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,29,\"Red\",[]],[0,0,19,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,26,\"Red\",[]],[0,0,16,\"Red\",[]],[0,0,6,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,12,\"Red\",[]],[0,0,13,\"Red\",[]],[0,0,14,\"Red\",[]],[0,0,15,\"Red\",[]],[0,0,16,\"Red\",[]],[0,0,17,\"Red\",[]],[0,0,18,\"Red\",[]],[0,0,19,\"Red\",[]],[0,0,20,\"Red\",[]],[0,0,21,\"Red\",[]],[0,0,22,\"Red\",[]],[0,0,23,\"Red\",[]],[0,0,24,\"Red\",[]],[0,0,25,\"Red\",[]],[0,0,26,\"Red\",[]],[0,0,27,\"Red\",[]],[0,0,28,\"Red\",[]],[0,0,29,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-25T22:12:48.493)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue
    (string
      [[0,0,23,\"Red\",[]],[0,0,13,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,30,\"Red\",[]],[0,0,20,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,27,\"Red\",[]],[0,0,17,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,24,\"Red\",[]],[0,0,14,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,21,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,1,\"Red\",[]],[0,0,28,\"Red\",[]],[0,0,18,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,25,\"Red\",[]],[0,0,15,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,22,\"Red\",[]],[0,0,12,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,29,\"Red\",[]],[0,0,19,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,26,\"Red\",[]],[0,0,16,\"Red\",[]],[0,0,6,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,6,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,12,\"Red\",[]],[0,0,13,\"Red\",[]],[0,0,14,\"Red\",[]],[0,0,15,\"Red\",[]],[0,0,16,\"Red\",[]],[0,0,17,\"Red\",[]],[0,0,18,\"Red\",[]],[0,0,19,\"Red\",[]],[0,0,20,\"Red\",[]],[0,0,21,\"Red\",[]],[0,0,22,\"Red\",[]],[0,0,23,\"Red\",[]],[0,0,24,\"Red\",[]],[0,0,25,\"Red\",[]],[0,0,26,\"Red\",[]],[0,0,27,\"Red\",[]],[0,0,28,\"Red\",[]],[0,0,29,\"Red\",[]],[0,0,30,\"Red\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-25T22:12:48.987)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue
    (string
      [[0,0,23,\"Red\",[]],[0,0,13,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,30,\"Red\",[]],[0,0,20,\"Red\",[]],[0,0,10,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,27,\"Red\",[]],[0,0,17,\"Red\",[]],[0,0,7,\"Red\",[]],[0,0,24,\"Red\",[]],[0,0,14,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,31,\"Red\",[]],[0,0,21,\"Red\",[]],[0,0,11,\"Red\",[]],[0,0,1,\"Red\",[]],[0,0,28,\"Red\",[]],[0,0,18,\"Red\",[]],[0,0,8,\"Red\",[]],[0,0,25,\"Red\",[]],[0,0,15,\"Red\",[]],[0,0,5,\"Red\",[]],[0,0,22,\"Red\",[]],[0,0,12,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,29,\"Red\",[]],[0,0,19,\"Red\",[]],[0,0,9,\"Red\",[]],[0,0,26,\"Red\",[]],[0,0,16,\"Red\",[]],[0,0,6,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:13:50.774)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:13:52.375)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:13:54.136)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:13:58.286)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,2,\"Blue\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:14:02.711)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:23:17.211)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:23:52.737)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:24:09.607)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:24:59.099)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:25:12.827)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:26:35.989)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:28:19.389)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:28:50.090)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:28:51.402)
  (NBestInd 0)
  (utterance "Add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:28:53.337)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:28:55.448)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]],[0,0,4,\"Blue\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:29:03.345)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,2,\"Blue\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Blue\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:29:07.599)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Blue\",[]],[0,0,3,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:35:19.300)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:36:13.713)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:36:17.026)
  (NBestInd 0)
  (utterance "add red 3 times")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:37:09.196)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:37:10.325)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:37:16.645)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:37:22.781)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]],[0,0,4,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]],[0,0,4,\"Orange\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-10-25T22:37:26.573)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:38:04.857)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:38:13.769)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:38:18.225)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:43:51.134)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:49:05.245)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:49:06.344)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:49:07.363)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:49:30.866)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:49:32.418)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:49:33.715)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:49:59.917)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:50:00.960)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:50:02.161)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:50:08.449)
  (NBestInd 0)
  (utterance "add green")
  (targetFormula (: add green top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]],[0,0,4,\"Green\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:52:27.464)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:52:29.694)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:53:36.556)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:54:12.607)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:54:13.711)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,2,\"Blue\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Blue\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:54:20.255)
  (NBestInd 0)
  (utterance "add orange 3 times")
  (targetFormula (:loop (number 3) (: add orange top)))
  (targetValue (string [[0,0,2,\"Blue\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:54:32.270)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:54:36.942)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]],[0,0,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:54:37.887)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:54:39.277)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:54:40.334)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Blue\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Blue\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-10-25T22:54:41.376)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Blue\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Blue\",[]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Blue\",[]],[0,0,6,\"Blue\",[]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-10-25T22:54:42.392)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,7,\"Blue\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Blue\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Blue\",[]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:57:52.219)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:57:53.250)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,2,\"Blue\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Blue\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:57:54.314)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Blue\",[]],[0,0,3,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Blue\",[]],[0,0,3,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:57:55.321)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Blue\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:58:09.440)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:58:10.496)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,2,\"Blue\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Blue\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:58:11.528)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Blue\",[]],[0,0,3,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:59:10.641)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:59:11.904)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,2,\"Blue\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Blue\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:59:12.945)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Blue\",[]],[0,0,3,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:59:22.841)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:59:24.815)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:59:48.329)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T22:59:49.669)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:00:16.437)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:00:17.431)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:00:18.621)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:00:28.155)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:00:29.323)
  (NBestInd 0)
  (utterance "Add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:00:30.933)
  (NBestInd 0)
  (utterance "Add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:00:38.187)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:00:39.642)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:00:40.612)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:00:45.811)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:00:48.519)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:00:50.241)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,2,\"Blue\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]],[0,0,2,\"Blue\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:00:52.786)
  (NBestInd 0)
  (utterance "add green")
  (targetFormula (: add green top))
  (targetValue (string [[0,0,2,\"Blue\",[]],[0,0,3,\"Green\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]],[0,0,2,\"Blue\",[]],[0,0,3,\"Green\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:00:56.706)
  (NBestInd 0)
  (utterance "add brown")
  (targetFormula (: add brown top))
  (targetValue (string [[0,0,2,\"Blue\",[]],[0,0,3,\"Green\",[]],[0,0,4,\"Brown\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]],[0,0,2,\"Blue\",[]],[0,0,3,\"Green\",[]],[0,0,4,\"Brown\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-10-25T23:00:58.497)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Blue\",[]],[0,0,3,\"Green\",[]],[0,0,4,\"Brown\",[]],[0,0,5,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:02:17.348)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:02:18.395)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:02:19.404)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Blue\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Blue\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:02:36.419)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Blue\",[]],[0,0,4,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Blue\",[]],[0,0,4,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:02:37.908)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Blue\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Blue\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Yellow\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-10-25T23:02:39.603)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Blue\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Blue\",[]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:02:43.171)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:02:44.337)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:02:45.426)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]],[0,0,3,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:02:46.522)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Blue\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Blue\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:02:48.512)
  (NBestInd 0)
  (utterance "add pink")
  (targetFormula (: add pink top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Blue\",[]],[0,0,5,\"Pink\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:03:53.455)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:03:54.830)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:03:56.231)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:04:40.203)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:04:41.739)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:04:42.859)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]],[0,0,3,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:04:44.155)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Blue\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:05:50.324)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:05:52.443)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:05:53.788)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:06:33.110)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]],[0,0,4,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]],[0,0,4,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:07:06.692)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:07:51.983)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:07:52.995)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:07:56.248)
  (NBestInd 0)
  (utterance "add blue three times")
  (targetFormula (:loop (number 3) (: add blue top)))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Blue\",[]],[0,0,4,\"Blue\",[]],[0,0,5,\"Blue\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:08:28.607)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:08:29.685)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]],[0,0,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:08:30.806)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Blue\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Blue\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:08:32.236)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Blue\",[]],[0,0,4,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Blue\",[]],[0,0,4,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:08:45.140)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Blue\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:08:48.027)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:08:49.003)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:08:50.091)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Blue\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Blue\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:08:51.259)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Blue\",[]],[0,0,4,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Blue\",[]],[0,0,4,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:08:52.523)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Blue\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Blue\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Yellow\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-10-25T23:09:10.002)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Blue\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Yellow\",[]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Blue\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Yellow\",[]],[0,0,6,\"Yellow\",[]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-10-25T23:09:11.469)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,7,\"Orange\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Blue\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Yellow\",[]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      (
        (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Blue\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Yellow\",[]],[0,0,6,\"Yellow\",[]],[0,0,7,\"Orange\",[]]])
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-25T23:09:12.985)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue
    (string
      [[0,0,7,\"Orange\",[]],[0,0,2,\"Orange\",[]],[0,0,8,\"Blue\",[]],[0,0,3,\"Blue\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Yellow\",[]],[0,0,1,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      (
        (string
          [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Blue\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Yellow\",[]],[0,0,6,\"Yellow\",[]],[0,0,7,\"Orange\",[]],[0,0,8,\"Blue\",[]]]
        )
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-25T23:09:15.042)
  (NBestInd 0)
  (utterance "add green")
  (targetFormula (: add green top))
  (targetValue
    (string
      [[0,0,7,\"Orange\",[]],[0,0,2,\"Orange\",[]],[0,0,8,\"Blue\",[]],[0,0,3,\"Blue\",[]],[0,0,9,\"Green\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Yellow\",[]],[0,0,1,\"Red\",[]]]
    )
  )
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:12:36.162)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:12:37.434)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:18:14.049)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:18:15.409)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:18:22.994)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:18:26.944)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]],[0,0,4,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:19:06.127)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:19:08.990)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:19:12.255)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:19:14.887)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]],[0,0,4,\"Blue\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:19:22.025)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:20:46.828)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:21:02.252)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:21:03.306)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:21:04.602)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:23:03.157)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:23:04.780)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:23:22.080)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:23:23.522)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:23:34.752)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:23:36.040)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:23:57.072)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:25:58.172)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:25:59.412)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:27:30.041)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]],[0,0,3,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:27:31.951)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:27:33.746)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Yellow\",[]],[0,0,5,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]],[0,0,3,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:28:28.167)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]],[0,0,3,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:29:11.560)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:29:34.822)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:29:36.087)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:31:47.684)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:31:48.653)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]],[0,0,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:31:49.927)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:31:51.100)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:34:26.940)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:34:28.884)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:34:32.916)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:36:38.375)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:36:39.862)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:36:41.149)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:37:04.264)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:37:05.302)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:39:15.494)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:39:49.672)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:40:19.636)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:40:21.227)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:40:58.217)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:41:13.074)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:41:32.319)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:41:41.087)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:43:17.835)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:43:19.371)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:43:38.003)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]],[0,0,3,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:43:41.161)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:43:44.082)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:44:38.949)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:44:41.388)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:44:44.501)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:44:46.973)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Yellow\",[]],[0,0,4,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Yellow\",[]],[0,0,4,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:44:49.580)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Yellow\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Blue\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Yellow\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Blue\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-10-25T23:44:51.741)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Yellow\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Blue\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Orange\",[]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Yellow\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Blue\",[]],[0,0,6,\"Orange\",[]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-10-25T23:44:53.596)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,7,\"Yellow\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Yellow\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Blue\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Orange\",[]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:45:02.003)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:45:57.846)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:46:02.006)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:46:30.844)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:46:33.164)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]],[0,0,2,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:46:35.276)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:46:53.900)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:47:06.810)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:47:10.497)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:48:24.085)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:48:48.899)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:48:50.697)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:48:52.114)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]],[0,0,3,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:48:53.748)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Blue\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:49:28.576)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:49:30.168)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:49:32.095)
  (NBestInd 0)
  (utterance "ass orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]],[0,0,3,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:49:34.352)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:49:42.367)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:49:44.150)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:50:10.669)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:50:12.564)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:50:15.691)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]],[0,0,3,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:50:17.172)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:50:18.293)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Yellow\",[]],[0,0,5,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Yellow\",[]],[0,0,5,\"Orange\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-10-25T23:50:19.708)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Yellow\",[]],[0,0,5,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Blue\",[]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:51:35.015)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:51:47.031)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:51:51.205)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:51:54.982)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:51:56.813)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:51:58.335)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Yellow\",[]],[0,0,5,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Yellow\",[]],[0,0,5,\"Orange\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-10-25T23:52:00.685)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Yellow\",[]],[0,0,5,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Blue\",[]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 25)
    (graph
      NaiveKnowledgeGraph
      ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Yellow\",[]],[0,0,5,\"Orange\",[]],[0,0,6,\"Blue\",[]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-10-25T23:52:02.259)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,7,\"Orange\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Yellow\",[]],[0,0,5,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Blue\",[]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:52:20.499)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:52:23.899)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:52:25.859)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:53:10.543)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:53:11.855)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:53:12.951)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:53:32.446)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:53:33.656)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:53:39.030)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]],[0,0,3,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:53:40.590)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:53:41.749)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Yellow\",[]],[0,0,5,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:57:09.634)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:58:21.960)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 25) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-25T23:58:23.408)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-26T00:00:45.878)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-26T00:00:47.701)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-26T00:03:23.116)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-26T00:03:24.794)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-26T00:03:26.251)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]],[0,0,3,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-26T00:03:27.450)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Blue\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Blue\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-26T00:03:41.058)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Blue\",[]],[0,0,5,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-26T00:05:52.219)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-26T00:10:09.260)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-26T00:10:10.500)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-26T00:10:17.196)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]],[0,0,3,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-26T00:10:18.667)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Yellow\",[]],[0,0,4,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-26T00:10:37.589)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-26T00:10:38.819)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-26T00:10:39.667)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]],[0,0,3,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-26T00:10:40.677)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Blue\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-26T00:11:34.289)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-26T00:11:35.515)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-26T00:11:36.682)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-26T00:13:03.202)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-26T00:13:04.569)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-26T00:13:24.697)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-26T00:13:26.008)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-26T00:13:27.202)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Blue\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-26T00:13:49.401)
  (NBestInd 0)
  (utterance "add blue")
  (targetFormula (: add blue top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-26T00:13:50.562)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]],[0,0,2,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-26T00:13:51.986)
  (NBestInd 0)
  (utterance "add green")
  (targetFormula (: add green top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Green\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Blue\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-26T15:18:43.998)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-26T15:18:47.455)
  (NBestInd 1)
  (utterance "add red 3 times")
  (targetFormula (:loop (number 3) (: add red top)))
  (targetValue (string [[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-26T15:18:50.440)
  (NBestInd 0)
  (utterance "add orange 3 times")
  (targetFormula (:loop (number 3) (: add orange top)))
  (targetValue (string [[0,0,7,\"Orange\",[]],[0,0,2,\"Red\",[]],[0,0,3,\"Red\",[]],[0,0,4,\"Red\",[]],[0,0,5,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Orange\",[]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-26T15:39:08.621)
  (NBestInd 1)
  (utterance "add yellow left")
  (targetFormula (: add yellow left))
  (targetValue (string [[0,1,0,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,1,0,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-26T15:40:22.949)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,1,0,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-26T17:10:52.658)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-26T17:10:57.015)
  (NBestInd 0)
  (utterance "add orange 3 times")
  (targetFormula (:loop (number 3) (: add orange top)))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 26)
    (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-10-26T17:11:29.263)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 26)
    (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Red\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-10-26T17:11:34.263)
  (NBestInd 2)
  (utterance "add orange")
  (targetFormula (: select (color orange)))
  (targetValue (string [[0,0,2,\"Orange\",[\"S\"]],[0,0,3,\"Orange\",[\"S\"]],[0,0,4,\"Orange\",[\"S\"]],[0,0,5,\"Red\",[]],[0,0,0,\"Red\",[]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 26)
    (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-10-26T17:11:58.760)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 26)
    (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-10-26T17:12:12.698)
  (NBestInd 0)
  (utterance "add green")
  (targetFormula (: add green top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Green\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 26)
    (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Green\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-10-26T17:13:01.485)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Green\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Orange\",[]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 26)
    (graph
      NaiveKnowledgeGraph
      ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Green\",[]],[0,0,6,\"Orange\",[]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-10-26T17:13:32.003)
  (NBestInd 3)
  (utterance "select orange")
  (targetFormula (: select (color orange)))
  (targetValue (string [[0,0,2,\"Orange\",[\"S\"]],[0,0,3,\"Orange\",[\"S\"]],[0,0,4,\"Orange\",[\"S\"]],[0,0,5,\"Green\",[]],[0,0,0,\"Red\",[]],[0,0,6,\"Orange\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-26T17:15:00.521)
  (NBestInd 0)
  (utterance "add orange")
  (targetFormula (: add orange top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-26T17:15:04.033)
  (NBestInd 0)
  (utterance "add yellow 3 times")
  (targetFormula (:loop (number 3) (: add yellow top)))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Yellow\",[]],[0,0,4,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Orange\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-26T17:22:26.619)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-26T17:22:31.970)
  (NBestInd 0)
  (utterance "add orange 3 times")
  (targetFormula (:loop (number 3) (: add orange top)))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 26)
    (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-10-26T17:22:47.842)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 26)
    (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Red\",[]]]) (name b) (name c)))
  )
  (timeStamp 2016-10-26T17:22:49.938)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Yellow\",[]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 26)
    (graph
      NaiveKnowledgeGraph
      ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Red\",[]],[0,0,6,\"Yellow\",[]]]) (name b) (name c))
    )
  )
  (timeStamp 2016-10-26T17:22:56.632)
  (NBestInd 0)
  (utterance "add green")
  (targetFormula (: add green top))
  (targetValue (string [[0,0,7,\"Green\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Yellow\",[]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context
    (date 2016 9 26)
    (graph
      NaiveKnowledgeGraph
      (
        (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Red\",[]],[0,0,6,\"Yellow\",[]],[0,0,7,\"Green\",[]]])
        (name b)
        (name c)
      )
    )
  )
  (timeStamp 2016-10-26T17:24:48.644)
  (NBestInd 2)
  (utterance "add red")
  (targetFormula (: select (color red)))
  (targetValue
    (string [[0,0,7,\"Green\",[]],[0,0,2,\"Orange\",[]],[0,0,3,\"Orange\",[]],[0,0,4,\"Orange\",[]],[0,0,5,\"Red\",[\"S\"]],[0,0,0,\"Red\",[\"S\"]],[0,0,6,\"Yellow\",[]],[0,0,1,\"Red\",[\"S\"]]])
  )
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-26T17:27:08.871)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-26T17:27:14.869)
  (NBestInd 2)
  (utterance "add red")
  (targetFormula (: select (color red)))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Yellow\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]]]) (name b) (name c))))
  (timeStamp 2016-10-26T17:30:58.277)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-26T17:31:00.459)
  (NBestInd 0)
  (utterance "add yellow")
  (targetFormula (: add yellow top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
(example
  (id session:deadbeef)
  (context (date 2016 9 26) (graph NaiveKnowledgeGraph ((string [[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]],[0,0,2,\"Yellow\",[]]]) (name b) (name c))))
  (timeStamp 2016-10-26T17:31:11.572)
  (NBestInd 0)
  (utterance "add red")
  (targetFormula (: add red top))
  (targetValue (string [[0,0,2,\"Yellow\",[]],[0,0,3,\"Red\",[]],[0,0,0,\"Red\",[\"S\"]],[0,0,1,\"Red\",[]]]))
)
