tests
testRepoExists
	| res |
	res := TestServerPostgresCommiter commitJson: (NeoJSONReader fromString: self jsonWithRepos).
	self assert: res equals: #(5) asOrderedCollection .
	self assertRepoInfosAreCommittedInDB.