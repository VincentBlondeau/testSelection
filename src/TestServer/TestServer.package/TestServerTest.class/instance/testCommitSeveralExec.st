tests
testCommitSeveralExec
	| res |
	res := TestServerPostgresCommiter commitJson: (NeoJSONReader fromString: self json).
	self assert: res equals: #(0 1 2) asOrderedCollection.