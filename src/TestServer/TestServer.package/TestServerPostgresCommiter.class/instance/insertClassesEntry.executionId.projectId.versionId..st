inserting
insertClassesEntry: aTestClassEntry executionId: execId projectId: projectId versionId: versionId
	| preparedStatement classId |
	classId := self findOrCreateClassNamed: (aTestClassEntry ensureMandatoryFieldAt: #name) projectId: projectId versionId: versionId.
	preparedStatement := self
		prepare: 'INSERT INTO execution_entity (status,duration,execution_id,class_id) VALUES  (?,?,?,?) RETURNING id'.
	preparedStatement addBinding: (aTestClassEntry ensureMandatoryFieldAt: #status).
	preparedStatement addBinding: (aTestClassEntry ensureMandatoryFieldAt: #duration).
	preparedStatement addBinding: execId.
	preparedStatement addBinding: classId.
	preparedStatement execute.
	(aTestClassEntry ensureMandatoryFieldAt: #testMethods)
		do: [ :aTestMethodEntry | self insertMethodEntry: aTestMethodEntry executionId: execId classId: classId projectId: projectId versionId: versionId  ]