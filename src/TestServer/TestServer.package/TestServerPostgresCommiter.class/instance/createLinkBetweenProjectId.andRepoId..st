inserting
createLinkBetweenProjectId: projectId andRepoId: repoId
	^ self
		findOrCreateSelectQuery: 'SELECT project_id FROM project_repository WHERE repository_id = ''' , repoId asString , ''' AND project_id = ''' , projectId asString , ''''
		insertQuery: 'INSERT INTO project_repository (repository_id,project_id) VALUES (''' , repoId asString , ''',''' , projectId asString , ''') returning project_id'