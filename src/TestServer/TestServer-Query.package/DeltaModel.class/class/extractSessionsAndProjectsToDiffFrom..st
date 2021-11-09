deprecated - old experiement
extractSessionsAndProjectsToDiffFrom: listOfSessionGroup
	| res previousVersion nextVersion nextVersions firstTestSession |
	res := listOfSessionGroup
		collect: [ :sessionGroup | 
			sessionGroup do: [ :e | self assert: e versionsTested = sessionGroup first versionsTested ].
			firstTestSession := sessionGroup first. 
			previousVersion := firstTestSession versionsTested asOrderedCollection.
			previousVersion size > 1
				ifTrue: [ previousVersion := previousVersion select: [ :v | v repository name = firstTestSession project name	"relatedRepositories" ] ].
			self assert: previousVersion size = 1.
			nextVersions := previousVersion first childrenCommits.
			nextVersion := nextVersions select: [ :v | firstTestSession people = v author testPeople ].
			nextVersion size = 1
				ifTrue: [ 
					nextVersion := nextVersion first.
					self assert: sessionGroup last dateBegin < nextVersion date ]
				ifFalse: [ Transcript crLog: 'Houston on a un pb:' , nextVersions asString ].
				
			{previousVersion first.
			nextVersion. MooseTestSessionGroup withAll: sessionGroup} ].
	^ res