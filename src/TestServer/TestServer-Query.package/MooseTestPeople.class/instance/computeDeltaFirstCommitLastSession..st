as yet unclassified
computeDeltaFirstCommitLastSession: deltaTime
	| projects groupedCommitsAndSessions grCommits grSessions |
	projects := self testProjects asOrderedCollection.
	^ projects
		collect: [ :project | 
			groupedCommitsAndSessions := self groupCommitsAndSessionForProject: project.
			groupedCommitsAndSessions size > 1
				ifTrue: [ 
					groupedCommitsAndSessions last first class = MooseTestSession
						ifTrue: [ groupedCommitsAndSessions removeLast ].
					groupedCommitsAndSessions first first class = SYNCommit
						ifTrue: [ groupedCommitsAndSessions removeFirst ].
					grCommits := groupedCommitsAndSessions even.
					grSessions := groupedCommitsAndSessions odds.
					self deltaFirstCommitLastSessionCommits: grCommits sessions: grSessions delta: deltaTime ] ]