as yet unclassified
makeDeltaModelOn: aModel
	| rawData authors commits |
	commitModel := aModel.
	model := commitModel.
	rawData := (TestServerQueries result at: #rawData) at: #dataWithCommitId.
	rawData do: [ :test | self createTestInModel: test ].
	self addListsToModel.
	authors := commitModel allAuthors groupedBy: #id.
	commits := commitModel allCommits groupedBy: [ :e | e author id ].
	self addAuthorName.
	self resolveTestedVersion.
