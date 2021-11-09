as yet unclassified
descriptiveStats
	| testDurationData testSessionDurationData kindOfTest nbOfUniqueFailingTests testExecutions testSessions testAgglomeratedSessions agglomeratedTestSessionDurationData |
	testExecutions := model allTestExecutions.
	testSessions := model allTestSessions.
	testAgglomeratedSessions := model allAgglomeratedTestSessions.
	agglomeratedTestSessionDurationData := testAgglomeratedSessions collect: [ :session | session duration asSeconds ].
	testSessionDurationData := testSessions collect: [ :session | session duration asSeconds ].
	testDurationData := testExecutions collect: #duration thenSelect: [ :e | e >= 0 ].
	nbOfUniqueFailingTests := ((testExecutions select: #isErrorOrFailing) collectAsSet: #name) size.
	kindOfTest := testExecutions collect: #status as: Bag.
	self result
		at: #descriptiveStats
		put:
			{(#testDurationInSecs -> (#summary asREvalToSt: {testDurationData})).
			(#ratioTestsSessionLongerThan1Min
				-> ((testSessionDurationData sum: [ :x | (x > 60) asBit ]) / testSessionDurationData size asFloat)).
			(#ratioTestsSessionLongerThan2Min
				-> ((testSessionDurationData sum: [ :x | (x > 120) asBit ]) / testSessionDurationData size asFloat)).
			(#'RQ1.2-testSessionDurationInSeconds' -> (#summary asREvalToSt: {testSessionDurationData})).
			(#nbTestsByTestSession -> (#summary asREvalToSt: {(testSessions collect: #numberOfTests)})).
			(#ratioAgglomeratedTestsSessionLongerThan1Min
				->
					((agglomeratedTestSessionDurationData sum: [ :x | (x > 60) asBit ]) / agglomeratedTestSessionDurationData size asFloat)).
			(#ratioAgglomeratedTestsSessionLongerThan2Min
				->
					((agglomeratedTestSessionDurationData sum: [ :x | (x > 120) asBit ]) / agglomeratedTestSessionDurationData size asFloat)).
			(#'RQ1.2-AgglomeratedTestSessionDurationInSeconds' -> (#summary asREvalToSt: {agglomeratedTestSessionDurationData})).
			(#nbTestsByAgglomeratedTestSession
				-> (#summary asREvalToSt: {(testAgglomeratedSessions collect: #numberOfTests)}) ).
			(#'RQ0-ratioAgglomeratedSessionsByUser'
				-> (model allTestPeople average: [ :e | e agglomeratedTestSessions size ]) asFloat).
			(#'RQ0-numberOfAgglomeratedTestSessions' -> model numberOfAgglomeratedTestSessions).
			(#numberOfSingleAgglomeratedTestSession -> model numberOfSingleAgglomeratedTestSessions).
			(#'RQ1.4-ratioOfSingleAgglomeratedTestSession' -> model ratioOfSingleAgglomeratedTestSession asFloat).
			(#kindOfTest -> kindOfTest).
			(#ratioOfFails
				-> (((kindOfTest occurrencesOf: 'FAIL') + (kindOfTest occurrencesOf: 'ERROR')) / kindOfTest size asFloat)).
			(#nbOfPassingTests -> ((kindOfTest occurrencesOf: 'FAIL') + (kindOfTest occurrencesOf: 'ERROR'))).
			(#nbOfUniqueFailingTests -> nbOfUniqueFailingTests).
			(#ratioOfPasses -> ((kindOfTest occurrencesOf: 'PASS') / kindOfTest size asFloat)).
			(#'RQ0-ratioSessionsByUser' -> (model allTestPeople average: [ :e | e testSessions size ])asFloat).
			(#'RQ0-numberOfTestExecutions' -> model numberOfTestExectutions).
			(#'RQ0-numberOfTestSessions' -> model numberOfTestSessions).
			(#numberOfSingleTestSession -> model numberOfSingleTestSessions).
			(#'RQ1.4-ratioOfSingleTestSession' -> model ratioOfSingleTestSession asFloat)}