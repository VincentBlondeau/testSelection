as yet unclassified
testsBySession
	| numberOfTestByTestSession |
	numberOfTestByTestSession := model allTestSessions collect: #numberOfTests.
	self result
		at: #testSessionAndNumberOfTests
		put:
			{(#'RQ0-numberOfTestByTestSessionAvg' -> numberOfTestByTestSession average asFloat).
			(#numberOfTestByTestSessionMax -> numberOfTestByTestSession max asFloat).
			(#numberOfTestByTestSessionBag -> numberOfTestByTestSession).
			(#ratioOfTestSessionGreaterThan5
				-> ((numberOfTestByTestSession sum: [ :x | (x > 5) asBit ]) / numberOfTestByTestSession size asFloat)).
			(#ratioOfTestSessionGreaterThan50
				-> ((numberOfTestByTestSession sum: [ :x | (x > 50) asBit ]) / numberOfTestByTestSession size asFloat))}