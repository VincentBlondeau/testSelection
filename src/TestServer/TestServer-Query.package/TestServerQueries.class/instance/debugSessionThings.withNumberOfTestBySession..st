computing
debugSessionThings: groupedByProjects withNumberOfTestBySession: numberOfTestsBySession
	"collect: [ :e | 
			(e asOrderedCollection groupedBy: [ :col | col second ])
				collect: [ :f | 
					(f
						collect: [ :g | 
							{(g first).
							(g second)} ]
						as: Set) asOrderedCollection collect: [ :h | numberOfTestsBySession at: h first ] ] ]"

^	groupedByProjects
		collect: [ :item | 
			| testsAndNbDebugSessions |
			testsAndNbDebugSessions := (item groupedBy: #third)
				collect: [ :e | 
					self
						numberOfDebugSessionIn:
							(e
								collect: [ :f | 
									{(numberOfTestsBySession at: f first).
									f} ]) ].
			testsAndNbDebugSessions values sum asFloat ].
