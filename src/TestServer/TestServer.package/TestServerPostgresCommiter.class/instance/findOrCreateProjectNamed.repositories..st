finding objects
findOrCreateProjectNamed: projectName repositories: aCollectionOfRepositories
	| projectId repoId |
	projectId := self findOrCreateProjectNamed: projectName.
	aCollectionOfRepositories
		do: [ :aRepo | 
			repoId := self findOrCreateRepositoryNamed: aRepo.
			self createLinkBetweenProjectId: projectId andRepoId: repoId ].
	^ projectId