as yet unclassified
allTestExecutions
	^ self privateState attributeAt: #allTestExecutions ifAbsentPut: [ self testSessions flatCollect: #testExecutions ]