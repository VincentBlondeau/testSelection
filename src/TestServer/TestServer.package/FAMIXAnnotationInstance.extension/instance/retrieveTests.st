*TestServer
retrieveTests
	^ self annotatedEntity ifNotNil: [ :e | e retrieveTests ] ifNil: [ #() ]