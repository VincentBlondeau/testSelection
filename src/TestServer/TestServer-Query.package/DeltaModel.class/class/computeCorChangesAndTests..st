as yet unclassified
computeCorChangesAndTests: aCollection
	| res testSessions nbTests nbLinesOfDiff changes tests value |
	res := aCollection
		collect: [ :dico | 
			testSessions := (dico at: #otherFoundTests) union: ((dico at: #verifiedTestGroup) reject: #isCommit).
			nbTests := testSessions sum: #numberOfTests.
			nbLinesOfDiff := (dico at: #decomposedChanges)
				sum: [ :e | 
					value := e at: #nbLinesOfDiff.	"patch bug twice the same value. Doesn't happen often"
					value isCollection
						ifTrue: [ value first ]
						ifFalse: [ value ] ].
			{nbTests.
			(nbLinesOfDiff)} ].
	changes := res collect: #second.
	tests := res collect: #first.
	^{'shapiro.test' asREval: {changes}.
	'shapiro.test' asREval: {tests}.
	 #cor
		asREval:
			{(#method -> {#spearman}).
			changes.
			tests}}