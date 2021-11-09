tests
testServerNominalCaseNewVersion
	| res |
	res := ZnEasy post: self serverAddress , '/upload/toto' data: (ZnEntity text: self jsonNewVersion).
	self assert: res isSuccess.
	self assert: res contents equals: '0;1;2'