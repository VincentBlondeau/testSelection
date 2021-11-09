as yet unclassified
isCommitFromList: commits between: aBeforeMooseTestSession and: aAfterMooseTestSession
	| sortedCol indexBefore indexAfter |
	sortedCol := SortedCollection sortBlock: [ :a :b | a dateEnd <= b dateEnd ].
	sortedCol
		addAll: commits;
		add: aBeforeMooseTestSession;
		add: aAfterMooseTestSession.
	indexBefore := sortedCol indexOf: aBeforeMooseTestSession.
	indexAfter := sortedCol indexOf: aAfterMooseTestSession.
	^ indexAfter - indexBefore ~= 1
