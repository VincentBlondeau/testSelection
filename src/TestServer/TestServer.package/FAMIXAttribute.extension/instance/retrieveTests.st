*TestServer
retrieveTests
	^ self incomingAccesses flatCollect: [ :e | e retrieveTests ]