as yet unclassified
correlationDurationNbAgglomeratedTestsAndTotalOfTests
	| totalNbTest testSelectionInSession totalDurationSumTests  correlationOfRTSvsSuiteSizeData maxTime maxTest |
	correlationOfRTSvsSuiteSizeData := model allAgglomeratedTestSessions
		select: #isMultiple
		thenCollect: [ :testSession | 
			maxTime := model maxTestDurationByProject at: testSession project uniqName halt.
			maxTest := model maxNbTestsByProject at: testSession project uniqName.
			{maxTest.
			(testSession numberOfTests / maxTest asFloat).
			maxTime} ].
	totalNbTest := correlationOfRTSvsSuiteSizeData collect: #first.
	testSelectionInSession := correlationOfRTSvsSuiteSizeData collect: #second.
	totalDurationSumTests := correlationOfRTSvsSuiteSizeData collect: #third.
	self result
		at: #'02paper1Rq2a-Agglomerated'
		put:
			{(#'correlationNbTotalTestsSelectedTests-Agglomerated'
				->
					(#cor
						asREvalToSt:
							{(#method -> {#spearman}).
							totalNbTest.
							testSelectionInSession})).
			(#'correlationTotalDurationTestsSelectedTests-Agglomerated'
				->
					(#cor
						asREvalToSt:
							{(#method -> {#spearman}).
							totalDurationSumTests.
							testSelectionInSession}))}