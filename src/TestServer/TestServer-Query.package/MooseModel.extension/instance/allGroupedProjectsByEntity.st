*TestServer-Query
allGroupedProjectsByEntity
	^ self allTestProjects groupedBy: [ :project | TestServerQueries uniqKeyFor: project name ]