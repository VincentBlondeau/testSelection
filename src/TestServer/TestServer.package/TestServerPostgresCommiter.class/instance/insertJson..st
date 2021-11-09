inserting
insertJson: aCollection
	| user eclipseProjects userId |
	userId := aCollection at: #das ifAbsent: [ aCollection at: #userId ].
	user := self findOrCreateUserNamed: userId.
	eclipseProjects := aCollection at: #eclipseProjects ifAbsent: [ TSRollback signal: 'No eclipse project!' ].
	eclipseProjects do: [ :eclipseProject | self insertEclipseProject: eclipseProject userId: user ]