as yet unclassified
computeDeltaLastCommitFirstSession
	| projects groupedCommitsAndSessions grCommits grSessions |
	projects := self testProjects asOrderedCollection.
	^ projects
		collect: [ :project | 
			groupedCommitsAndSessions := self groupCommitsAndSessionForProject: project.
			groupedCommitsAndSessions size > 1
				ifTrue: [ 
					groupedCommitsAndSessions first first class = MooseTestSession
						ifTrue: [ groupedCommitsAndSessions removeFirst ].
					groupedCommitsAndSessions last first class = SYNCommit
						ifTrue: [ groupedCommitsAndSessions removeLast ].
					grCommits := groupedCommitsAndSessions odds.
					grSessions := groupedCommitsAndSessions even.
					self deltaLastCommitFirstSessionCommits: grCommits sessions: grSessions ] ]