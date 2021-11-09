tests
testServerNominalCaseWithRepo
	| res |
	res := ZnEasy post: self serverAddress , '/upload/toto' data: (ZnEntity text: self jsonWithRepos).
	self assert: res isSuccess.
	self assert: res contents equals: '5'.
