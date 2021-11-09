*TestServer-Query
summaryOfTestSelectionBySession
    | size res ratioOfSelectedTests |
    res := self allTestPeople
        flatCollect: [ :testPeople | 
            ratioOfSelectedTests := testPeople agglomeratedTestSessions
                collect: [ :session | (session numberOfTests / (session at: 1) people nbTestsMax) asFloat ].
            ratioOfSelectedTests ].
    size := res size.
    'hist'     asREval:    {res collect: #log.    ('axes' -> false).    ('xlab' -> 'summaryOfTestSelectionBySession').('ylab' -> 'Freq').('main' -> 'summaryOfTestSelectionBySession')}.
    ^ {('inf < 1%' -> ((res count: [ :e | e < 0.01 ]) / size asFloat)).
    ('> 95%' -> ((res count: [ :e | e > 0.95 ]) / size asFloat)).
    (#summary -> (#summary asREvalToSt: {res}))}