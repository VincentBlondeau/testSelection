inserting
insertMethodEntry: aTestMethodEntry executionId: execId classId: classId projectId: projectId versionId: versionId
	| preparedStatement methodId |
	methodId := self findOrCreateMethodNamed: (aTestMethodEntry ensureMandatoryFieldAt: #name) classId: classId projectId: projectId versionId: versionId.
	preparedStatement := self
		prepare: 'INSERT INTO execution_entity (status,duration,execution_id,method_id) VALUES  (?,?,?,?) RETURNING id'.
	preparedStatement addBinding: (aTestMethodEntry ensureMandatoryFieldAt: #status).
	preparedStatement addBinding: (aTestMethodEntry ensureMandatoryFieldAt: #duration).
	preparedStatement addBinding: execId.
	preparedStatement addBinding: methodId.
	preparedStatement execute