tests
testServerNominalCase
<expectedFailure>
	| res |
	res := ZnEasy post: self serverAddress , '/upload/toto/projectId' data: (ZnEntity text: self mse).
	self assert: res isSuccess.
	self assert: res contents equals: '0'