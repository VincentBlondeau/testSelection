as yet unclassified
generateMooseEntitiesForCommitOn: aModel
	| authors commits |
	commitModel := aModel.
	authors := commitModel allAuthors groupedBy: #id.
	commits := commitModel allCommits groupedBy: [ :e | e author id ].
	self addAuthorName.
	self resolveTestedVersion