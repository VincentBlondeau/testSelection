computing
computeDebugSession: data
	| counter isInTestDebug previous isInSuiteOfSingleTestDebug aPreviousTestInAMultipleSessionHasFailed |
	previous := data first.
	counter := 0.
	isInTestDebug := false.
	aPreviousTestInAMultipleSessionHasFailed := false.
	data
		withIndexDo: [ :item :idx | 
			| suiteSize |
			suiteSize := item first.
			suiteSize = 1
				ifTrue: [ 
					"isInSuiteOfSingleTestDebug := true."
					aPreviousTestInAMultipleSessionHasFailed
						ifTrue: [ counter := counter + 1 ] ]
				ifFalse: [ 
					aPreviousTestInAMultipleSessionHasFailed := item second ~= 'PASS'.
					isInSuiteOfSingleTestDebug := false ] ].
	^ counter