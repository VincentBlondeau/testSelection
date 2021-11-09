tests
testServerErrors
	| res |
	res := ZnEasy post: self serverAddress , '/upload/toto' data: (ZnEntity text: self jsonWithError).
	self assert: res isBadRequest.
	self assert: (res contents beginsWith: 'Malformed Json')