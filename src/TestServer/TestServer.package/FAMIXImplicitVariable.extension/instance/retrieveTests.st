*TestServer
retrieveTests
	^ self receivingInvocations flatCollect: [ :e | e retrieveTests ]