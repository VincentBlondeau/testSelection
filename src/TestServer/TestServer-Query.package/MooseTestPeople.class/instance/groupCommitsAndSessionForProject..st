as yet unclassified
groupCommitsAndSessionForProject: aMooseProject
	| allRepos testSessionsForProject commits commitsAndTestSessions |
	allRepos := aMooseProject relatedRepositories.
	testSessionsForProject := self testSessionsForProject: aMooseProject.
	commits := self commits select: [ :commit | allRepos includes: commit repository ].
	commitsAndTestSessions := OrderedCollection new
		addAll: testSessionsForProject;
		addAll: commits;
		yourself.
	commitsAndTestSessions sort: [ :a :b | a date < b date ].
	^ commitsAndTestSessions
		aggregateRuns: [ :e | 
			e class.
			self halt ]