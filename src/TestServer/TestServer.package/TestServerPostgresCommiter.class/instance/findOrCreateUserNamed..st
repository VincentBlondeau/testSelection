finding objects
findOrCreateUserNamed: userName
	^ self findOrCreateSelectQuery: 'SELECT id FROM people WHERE user_id = ''' , userName asPostgresEscapedSql, '''' insertQuery: 'INSERT INTO people  (user_id) VALUES (''' , userName asPostgresEscapedSql, ''') RETURNING id'