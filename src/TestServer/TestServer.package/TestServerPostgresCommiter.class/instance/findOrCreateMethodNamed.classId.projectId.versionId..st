finding objects
findOrCreateMethodNamed: methodNamed classId: classId projectId: projectId versionId: versionId
	| psSelect psInsert |
	psSelect := self prepare: 'SELECT id FROM method WHERE name = ? AND class_id = ? AND project_id = ? AND version_number = ?'.
	psSelect
		addBinding: methodNamed asPostgresEscapedSql;
		addBinding: classId asString;
		addBinding: projectId asString;
		addBinding: versionId asString.
	psInsert := self prepare: 'INSERT INTO method (name, class_id, project_id, version_number) VALUES  (?,?,?,?) RETURNING id'.
	psInsert
		addBinding: methodNamed asPostgresEscapedSql;
		addBinding: classId asString;
		addBinding: projectId asString;
		addBinding: versionId asString.
	^ self findOrCreateSelectPrepQuery: psSelect insertPrepQuery: psInsert