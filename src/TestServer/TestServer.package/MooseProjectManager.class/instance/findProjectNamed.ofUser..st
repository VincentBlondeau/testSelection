as yet unclassified
findProjectNamed: projectName ofUser: userName
	^ self projects
		detect: [ :project | project name = projectName and: [ project user = userName ] ]
		ifNone: [ projects add: (MooseOrionProject named: projectName user: userName) ]