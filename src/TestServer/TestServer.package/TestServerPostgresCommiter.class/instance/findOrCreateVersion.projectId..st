finding objects
findOrCreateVersion: versionId  projectId: projectId
	^ self
		findOrCreateSelectQuery: 'SELECT project_id FROM version WHERE number = ''' , versionId asString, ''' AND project_id = ''' , projectId asString , ''''
		insertQuery: 'INSERT INTO version (number, project_id) VALUES  (''' , versionId asString, ''',''' , projectId asString , ''') RETURNING project_id'