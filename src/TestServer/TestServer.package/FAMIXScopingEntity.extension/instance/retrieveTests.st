*TestServer
retrieveTests
	^ self types flatCollect: [ :e | e retrieveTests ]