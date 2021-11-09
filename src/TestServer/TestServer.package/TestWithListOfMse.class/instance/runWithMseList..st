as yet unclassified
runWithMseList: aCollectionOfFileReferences
	| mse baseModel tests |
	mse := aCollectionOfFileReferences collect: [ :fr | MooseModel importFromMSEStream: fr readStream ].
	baseModel := mse first convertToOrion.
	mse allButFirst do: [ :partialModel | self computeDiffWithOrionOn: baseModel system orionModels last and: partialModel ].
	tests := baseModel system orionModels last selectTestsFromChanges.
	self assert: tests isNotEmpty.
	self assert: false