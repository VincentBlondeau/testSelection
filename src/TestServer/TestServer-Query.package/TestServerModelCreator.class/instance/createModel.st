as yet unclassified
createModel
	self modelKind new
		makeDeltaModelOn: model
		withData: self fetchDataForModel.
	self createAgglomerateTestsSessionsAndLinkCommits.
	model install