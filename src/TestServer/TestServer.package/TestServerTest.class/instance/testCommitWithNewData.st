tests
testCommitWithNewData
	| res |
	res := TestServerPostgresCommiter commitJson: (NeoJSONReader fromString: self jsonWithNewData ).
	self assert: res equals: #(11) asOrderedCollection.
