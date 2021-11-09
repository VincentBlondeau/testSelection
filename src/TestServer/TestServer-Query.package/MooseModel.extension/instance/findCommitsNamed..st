*TestServer-Query
findCommitsNamed: aString
	^ self allCommits select: [ :commit | commit revision = aString ]