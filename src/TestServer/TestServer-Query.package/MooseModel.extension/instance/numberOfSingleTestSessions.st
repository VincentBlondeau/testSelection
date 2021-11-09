*TestServer-Query
numberOfSingleTestSessions
	^ self allTestSessions count: [ :e | e numberOfTests = 1 ]