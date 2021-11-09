as yet unclassified
relatedRepositories
	| data |
	data := self testSessions collect: [ :e | e findNearestCommits ] thenSelect: #isNotEmpty.
	^ (data collectAsSet: [ :e | e keys ]) flatten asOrderedCollection 