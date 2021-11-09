finding objects
findOrCreateRepositoryNamed: repoUrl
	^ self findOrCreateSelectQuery: 'SELECT id FROM repository WHERE url = ''' , repoUrl asPostgresEscapedSql, '''' insertQuery: 'INSERT INTO repository (url) VALUES (''' , repoUrl asPostgresEscapedSql, ''') RETURNING id'