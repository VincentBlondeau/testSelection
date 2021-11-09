as yet unclassified
assertRepoInfosAreCommittedInDB
	| res |
	res := connection
		execute:
			'SELECT project.id FROM project, repository, project_repository 
	WHERE repository.url IN (''https://kazan.priv.atos.fr/svn/carrefourfr'') 
	AND repository.id = project_repository.repository_id
	AND project.id = project_repository.project_id 
	AND project.name = ''crf-fra-wod-admin'''.
	self assert: res isNotEmpty