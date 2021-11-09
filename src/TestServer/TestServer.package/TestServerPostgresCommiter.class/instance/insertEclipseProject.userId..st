inserting
insertEclipseProject: jsonParsedEclipseProject userId: userId
	| projectName projectId eclipseProjectExecs |
	projectName := jsonParsedEclipseProject ensureMandatoryFieldAt: #name.
	projectId := nil.
	eclipseProjectExecs := jsonParsedEclipseProject ensureMandatoryFieldAt: #executions.
	eclipseProjectExecs
		do:
			[ :eclipseProjectExec | 
			eclipseProjectExec
				at: #testClasses
				ifPresent:
					[ :testClasses | 
					testClasses
						ifNotEmpty:
							[ projectId ifNil: [ projectId := self findOrCreateProjectNamed: projectName repositories: (jsonParsedEclipseProject at: #repoUrl ifAbsent: [ #(#noRepo) ]) ].
							self insertEclipseProjectExecutions: eclipseProjectExec projectId: projectId userId: userId ] ].
			eclipseProjectExec at: #id ifPresent: [ :id | executionIds add: id ]	"We ensure that any execution will be deleted from the plugin info" ]