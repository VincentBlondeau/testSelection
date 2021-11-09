tests
testServerNominalCaseJUnit
	| res |
	res := ZnEasy post: self serverAddress , '/upload/toto' data: (ZnEntity text: self jsonJUnit).
	self assert: res isSuccess.
	self assert: res contents equals: '1'