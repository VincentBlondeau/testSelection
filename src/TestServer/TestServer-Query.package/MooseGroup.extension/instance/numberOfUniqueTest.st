*TestServer-Query
numberOfUniqueTest
	^ (self flatCollect: [ :e | e allUniqueTestExecutions ] as: Set) size