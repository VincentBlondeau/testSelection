*TestServer-Query
maxNbTestsByProject
	^ self privateState
		attributeAt: #maxNbTestsByProject
		ifAbsentPut: [ self allGroupedProjectsByEntity collect: [ :project | project numberOfUniqueTest ] ]