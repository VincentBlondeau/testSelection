as yet unclassified
computeDelayToFixTest: data
	| selected res col result previous prev allTheTimeDelta delta greaterThanMillionSecs |
	greaterThanMillionSecs := OrderedCollection new.
	col := (data groupedBy: #third) collect: [ :e | e sorted: [ :a :b | a sixth < b sixth ] ].
	selected := col select: [ :e | e anySatisfy: [ :f | f fifth ~= 'PASS' ] ].
	result := selected
		collect: [ :e | 
			res := OrderedCollection new.
			e
				withIndexDo: [ :item :index | 
					item fifth = 'PASS'
						ifTrue: [ 
							"check previous"
							index - 1 > 0
								ifTrue: [ 
									previous := e at: index - 1.
									previous fifth ~= 'PASS'
										ifTrue: [ 
											"search the good previous"
											prev := self searchPreviousFailingButNotPassing: e at: index - 1.
											delta := item seventh - prev seventh.
											delta asSeconds > 2000000
												ifTrue: [ 
													greaterThanMillionSecs
														add:
															{e.
															delta} ].
											res add: item seventh - prev seventh ] ] ] ].
			{res.
			e} ].
	allTheTimeDelta := (result values collect: #first) flatten collect: #asMinutes.
	self halt.
	self
		addResultAt: #'RQ2.2-delayToFixTest+TableII'
		summary:
			{(#inMinutes -> allTheTimeDelta).
			(#valuesGreaterThanMillionsSecs -> greaterThanMillionSecs).
			(#summary -> ('summary' asREval: {allTheTimeDelta}))}
		raw: nil