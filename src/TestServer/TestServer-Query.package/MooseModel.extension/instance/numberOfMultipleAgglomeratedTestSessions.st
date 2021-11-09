*TestServer-Query
numberOfMultipleAgglomeratedTestSessions
	^ (self allAgglomeratedTestSessions select: #isMultiple) size