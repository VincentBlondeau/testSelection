inserting
insertEclipseProjectExecutions: aDictionary projectId: projectId userId: userId
	| executionId versionId |
	aDictionary ifEmpty: [ ^ self ].
	versionId := aDictionary at: #scmVersion ifAbsent: [ -1 ].
	self findOrCreateVersion: versionId projectId: projectId.
	executionId := self createExecution: aDictionary withUserId: userId.
	(aDictionary at: #testClasses ifAbsent: [ #() ])
		do:
			[ :aClassTestEntry | 
			self
				insertClassesEntry: aClassTestEntry
				executionId: executionId
				projectId: projectId
				versionId: versionId  ]