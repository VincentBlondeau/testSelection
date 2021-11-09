tests
testServerNominalCase
	| res |
	res := ZnEasy post: self serverAddress , '/upload/toto' data: (ZnEntity text: self json).
	self assert: res isSuccess.
	self assert: res contents equals: '0;1;2'