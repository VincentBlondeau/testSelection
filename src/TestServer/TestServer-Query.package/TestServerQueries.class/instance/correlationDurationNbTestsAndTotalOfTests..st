computing
correlationDurationNbTestsAndTotalOfTests: aCollection
	| totalNbTest testSelectionInSession totalDurationSumTests |
	totalNbTest := aCollection collect: #first.
	testSelectionInSession := aCollection collect: #second.
	totalDurationSumTests := aCollection collect: #third.
	self halt.
	self
		recordAsPdfNamed: (self baseDirectory / 'correlationNbTotalTestsSelectedTests.pdf') fullName
		operations: [ 
			'plot'
				asREval:
					{totalNbTest.
					testSelectionInSession.
					('xlab' -> 'Total Number Of Tests').
					('ylab' -> '% Selected Tests')} ].
	self
		recordAsPdfNamed: (self baseDirectory / 'correlationTotalDurationTestsSelectedTests.pdf') fullName
		operations: [ 
			'plot'
				asREval:
					{totalDurationSumTests.
					testSelectionInSession.
					('xlab' -> 'Sum of the durations of all Project Tests').
					('ylab' -> '% Selected Tests')} ].
	
	self
		addResultAt: #'02paper1Rq2a'
		summary:
			{(#correlationNbTotalTestsSelectedTests
				->
					(#cor
						asREvalToSt:
							{(#method -> {#spearman}).
							totalNbTest.
							testSelectionInSession})).
			(#correlationTotalDurationTestsSelectedTests
				->
					(#cor
						asREvalToSt:
							{(#method -> {#spearman}).
							totalDurationSumTests.
							testSelectionInSession}))}
		raw: aCollection