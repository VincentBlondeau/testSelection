*TestServer
retrieveTestsAndFilter
	^ self retrieveTests asSet select: [ :e | e isMethod and: [ e isTest ] ]