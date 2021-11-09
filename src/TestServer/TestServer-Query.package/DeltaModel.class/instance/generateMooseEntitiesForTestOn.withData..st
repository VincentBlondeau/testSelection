as yet unclassified
generateMooseEntitiesForTestOn: aModel withData: rawData
	model := aModel.
	rawData do: [ :test | self createTestInModel: test ].
	self addListsToModel