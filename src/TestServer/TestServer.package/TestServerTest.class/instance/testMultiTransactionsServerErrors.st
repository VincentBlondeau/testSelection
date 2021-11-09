tests
testMultiTransactionsServerErrors
	| res |
	res := OrderedCollection new.
	(1 to: 4)
		collect: [ :i | [ res add: (ZnEasy post: self serverAddress , '/upload/toto' data: (ZnEntity text: self json)) ] fork ].
	(Delay forMilliseconds: 2000) wait.
	self assert: res first isCreated.
	self assert: res second isNotModified.
	res := ZnEasy post: self serverAddress , '/upload/toto' data: (ZnEntity text: self json).
	res isCreated