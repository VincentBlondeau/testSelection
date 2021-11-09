as yet unclassified
computeDelayToFixTest
	| selected res col result previous prev allTheTimeDelta delta greaterThanMillionSecs |
	greaterThanMillionSecs := OrderedCollection new.
	col := ((model allTestExecutions groupedBy: #name)
		collect: [ :e | e asOrderedCollection sorted: [ :a :b | a session start < b session start ] ]) values.
	selected := col select: [ :e | e anySatisfy: [ :test | test isPassing ] ].
	result := selected
		collect: [ :e | 
			res := OrderedCollection new.
			e
				withIndexDo: [ :test :index | 
					test isPassing
						ifTrue: [ 
							"check previous"
							index - 1 > 0
								ifTrue: [ 
									previous := e at: index - 1.
									previous isPassing not
										ifTrue: [ 
											"search the good previous"
											prev := self searchPreviousFailingButNotPassing: e at: index - 1.
											delta := test session end - prev session end.
											delta asSeconds > 2000000
												ifTrue: [ 
													greaterThanMillionSecs
														add:
															{e.
															delta} ].
											delta asSeconds < 0
												ifTrue: [ res add: 0 asSeconds	"It seems that the test sessions are intertwined..." ]
												ifFalse: [ res add: test session end - prev session end ] ] ] ] ].
			{res.
			e} ].
	allTheTimeDelta := (result collect: #first) flatten collect: #asMinutes.
	self result
		at: #'TABLEII-delayToFixTest'
		put:
			{(#inMinutes -> allTheTimeDelta).
			(#valuesGreaterThanMillionsSecs -> greaterThanMillionSecs).
			(#summary -> ('summary' asREval: {allTheTimeDelta}))}