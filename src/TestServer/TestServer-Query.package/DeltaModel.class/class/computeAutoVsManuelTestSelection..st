as yet unclassified
computeAutoVsManuelTestSelection: aCollection
	| res testSessionsManual testSessionsAutomatic nbManual nbAuto comparison notOracle oracle stats manualTestSessions testSelectionRatio nbOfLineOfChange nbOfLineOfDiff corspearman corpearson corValuesManualAndAutoPears corValuesManualAndAutoSpear value |
	res := aCollection
		collect: [ :dico | 
			testSessionsManual := (dico at: #otherFoundTests) union: ((dico at: #verifiedTestGroup) reject: #isCommit).
			testSessionsAutomatic := (dico at: #decomposedChanges) flatCollect: [ :e | e at: #testComparison ].
			nbOfLineOfChange := (dico at: #decomposedChanges)
				sum: [ :e | 
					value := e at: #nbLinesOfDiff.
					value isCollection
						ifTrue: [ value first ]
						ifFalse: [ value ] ].
			{(testSessionsManual asMooseGroup).
			(testSessionsAutomatic asMooseGroup).
			nbOfLineOfChange} ].
	nbManual := res collect: [ :e | e first allTestExecutions size ].
	nbAuto := res collect: [ :e | e second size ].
	manualTestSessions := res collect: #first.
	testSelectionRatio := manualTestSessions collect: [ :e | (e average: #testSelectionRatio) asFloat ].
	nbOfLineOfDiff := res collect: #third.
	corspearman := #cor
		asREvalToSt:
			{(#method -> {#spearman}).
			nbOfLineOfDiff.
			testSelectionRatio}.
	corpearson := #cor
		asREvalToSt:
			{(#method -> {#pearson}).
			nbOfLineOfDiff.
			testSelectionRatio}.
	corValuesManualAndAutoPears := #cor
		asREvalToSt:
			{(#method -> {#pearson}).
			nbManual.
			nbAuto}.
	corValuesManualAndAutoSpear := #cor
		asREvalToSt:
			{(#method -> {#spearman}).
			nbManual.
			nbAuto}.
	self halt.	RFunctionUtils
		recordAsPdfNamed:
			'C:\Utilisateurs\a577142\Documents\Papers\2016-ICSE-test_analysis\figures\automaticVsManualTestSelection.pdf'
		operations: [ 
	'plot'
		asREval:
			{nbManual.
			nbAuto.
			('xlim' -> #(0 700)).
			('ylim' -> #(0 700)).
			('xlab' -> 'Manual').
			('ylab' -> 'Automated').
			('pch' -> 21).
			('las' -> 1).
			('bg' -> 'gold').
			('cex' -> 1.6).
			('cex.lab' -> 1.4).
			('cex.axis' -> 1.4)}.
	'abline'
		asREval:
			{('a' -> 1).
			('b' -> 1)}.	].
	stats := res
		collect: [ :e | 
			comparison := e first allTestExecutions compareWithTestNamed: e second.
			notOracle := (comparison at: #manualTests) asSet.
			oracle := (comparison at: #automaticTests) asOrderedCollection.
			StatisticsManager spaceOfResults: nil expectedResults: oracle computedResults: notOracle ].
	^ {(#prec -> (stats collect: #precision) average).
	(#recall -> (stats collect: #recall) average).
	(#rtsAndCodeChangesSpearman -> corspearman).
	(#rtsAndCodeChangesPearson -> corpearson).
	(#corValuesManualAndAutoSpear -> corValuesManualAndAutoSpear).
	(#corValuesManualAndAutoPears -> corValuesManualAndAutoPears)} asDictionary