as yet unclassified
allUniqueTestExecutions
	^ self privateState attributeAt: #allUniqueTestExecutions ifAbsentPut: [ self allTestExecutions collectAsSet: #name ]