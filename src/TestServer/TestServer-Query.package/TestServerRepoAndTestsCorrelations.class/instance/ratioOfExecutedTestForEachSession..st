as yet unclassified
ratioOfExecutedTestForEachSession: aCollection
	| groupedByTestSession numberOfTests numberMaxOfTests grouped values numberOfLevels col readyToExportData |
	grouped := self
		on: aCollection
		apply: [ :testSessionGroup | 
			groupedByTestSession := testSessionGroup allButFirstAndLast collect: [ :e | e value ].	"	self computeRatioOfExecutedTest
			maxTest := self projectMaxTest: test value fourth."
			groupedByTestSession
				collect: [ :testsOfTheSession | 
					numberOfTests := testsOfTheSession size.
					Transcript logCr: numberOfTests.
					numberMaxOfTests := self numberOfTestsOfProjectNamed: testsOfTheSession first fourth.
					self assert: numberOfTests / numberMaxOfTests <= 1.
					numberOfTests / numberMaxOfTests asFloat roundTo: 0.001 ] ].
	values := grouped collect: [ :e | (e flatten collect: [ :f | self computeLevelOf: f ]) asBag valuesAndCounts ].
	numberOfLevels := self thresholds size.
	readyToExportData := values
		collect: [ :e | 
			col := OrderedCollection new: numberOfLevels withAll: 0.
			e keysAndValuesDo: [ :key :value | col at: key put: value ].
			col ].
		{#percentageOfExecutedTests -> ('summary' asREvalToSt: {grouped values flatten flatten})} inspect.
		
	self
		exportToCsvFile: self exportFolder / 'data' / 'ratioOfExecutedTestForEachSession.csv'
		headers: (self thresholds collect: #asString)
		data: readyToExportData values.
