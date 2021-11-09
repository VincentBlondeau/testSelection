finding objects
findOrCreateClassNamed: className projectId: projectId versionId: versionId
	^ self
		findOrCreateSelectQuery: 'SELECT id FROM class WHERE name = ''' , className asPostgresEscapedSql, ''' AND project_id = ''' , projectId asString , ''' AND version_number = ''' , versionId asString , ''''
		insertQuery: 'INSERT INTO class (name, project_id, version_number) VALUES  (''' , className asPostgresEscapedSql, ''',''' , projectId asString , ''',''' , versionId asString , ''') RETURNING id'