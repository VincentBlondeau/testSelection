tests
testCommitOneExec
	| res |
	res := TestServerPostgresCommiter commitJson: (NeoJSONReader fromString: self jsonOneExec).
	self assert: res equals: #(1) asOrderedCollection.
	self assert: self isCommitedInDb