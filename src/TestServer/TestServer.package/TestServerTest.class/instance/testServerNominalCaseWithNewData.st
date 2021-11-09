tests
testServerNominalCaseWithNewData
	| res |
	res := ZnEasy post: self serverAddress , '/upload/toto' data: (ZnEntity text: self jsonWithNewData).
	self assert: res isSuccess.
	self assert: res contents equals: '11'