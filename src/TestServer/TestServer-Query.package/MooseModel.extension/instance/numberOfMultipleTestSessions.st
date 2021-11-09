*TestServer-Query
numberOfMultipleTestSessions
	^ (self allTestSessions select: #isMultiple) size