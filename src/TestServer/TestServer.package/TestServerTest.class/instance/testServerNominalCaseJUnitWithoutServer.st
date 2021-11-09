tests
testServerNominalCaseJUnitWithoutServer
	| res |
	res := TestServerPostgresCommiter commitJson: (NeoJSONReader fromString: self jsonJUnit).
	self assert: res equals: #(1) asOrderedCollection