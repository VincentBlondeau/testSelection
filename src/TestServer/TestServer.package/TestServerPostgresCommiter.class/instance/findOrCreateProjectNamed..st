finding objects
findOrCreateProjectNamed: projectName
	^ self
		findOrCreateSelectQuery: 'SELECT id FROM project WHERE name = ''' , projectName asPostgresEscapedSql , ''''
		insertQuery: 'INSERT INTO project (name) VALUES (''' , projectName asPostgresEscapedSql , ''') RETURNING id'