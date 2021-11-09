as yet unclassified
testsBySessionAgglomerated
	| numberOfTestByTestSession |
	numberOfTestByTestSession := model allAgglomeratedTestSessions collect: #numberOfTests.
	self result
		at: #'testSessionAndNumberOfTests-Agglomerated'
		put:
			{(#'RQ0-numberOfTestByTestSessionAvg' -> numberOfTestByTestSession average asFloat).
			(#numberOfTestByTestSessionMax -> numberOfTestByTestSession max asFloat).
			(#numberOfTestByTestSessionBag -> numberOfTestByTestSession).
			(#ratioOfTestSessionGreaterThan5
				-> ((numberOfTestByTestSession sum: [ :x | (x > 5) asBit ]) / numberOfTestByTestSession size asFloat)).
			(#ratioOfTestSessionGreaterThan50
				-> ((numberOfTestByTestSession sum: [ :x | (x > 50) asBit ]) / numberOfTestByTestSession size asFloat))}