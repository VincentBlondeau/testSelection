*TestServer-Query
numberOfSingleAgglomeratedTestSessions
	^ self allAgglomeratedTestSessions count: [ :e | e numberOfTests = 1 ]