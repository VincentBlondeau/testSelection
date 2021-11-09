as yet unclassified
correlationDurationNbTestsAndTotalOfTests
	| totalNbTest testSelectionInSession totalDurationSumTests correlationOfRTSvsSuiteSizeData maxTime maxTest sumTimeByProject totalSumTimeByProjectTests |
	correlationOfRTSvsSuiteSizeData := model allTestSessions
		select: #isMultiple
		thenCollect: [ :testSession | 
			maxTime := model maxTestDurationByProject at: testSession project uniqName halt.
			maxTest := model maxNbTestsByProject at: testSession project uniqName.
			sumTimeByProject := model sumDurationByProject at: testSession project uniqName.
			{maxTest.
			(testSession numberOfTests / maxTest asFloat).
			maxTime.
			sumTimeByProject} ].
	totalNbTest := correlationOfRTSvsSuiteSizeData collect: #first.
	testSelectionInSession := correlationOfRTSvsSuiteSizeData collect: #second.
	totalDurationSumTests := correlationOfRTSvsSuiteSizeData collect: #third.
	totalSumTimeByProjectTests := correlationOfRTSvsSuiteSizeData collect: #fourth.
	self result
		at: #'02paper1Rq2a'
		put:
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
							testSelectionInSession})).
			(#correlationSumDurationProjectVsSelectedTests
				->
					(#cor
						asREvalToSt:
							{(#method -> {#spearman}).
							totalSumTimeByProjectTests.
							testSelectionInSession}))}