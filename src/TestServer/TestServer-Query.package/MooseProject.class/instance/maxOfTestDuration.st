as yet unclassified
maxOfTestDuration
	^ self privateState attributeAt: #maxOfTestDuration2 ifAbsentPut: [ self allTestExecutions max: #duration ]