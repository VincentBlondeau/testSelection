tests
test
	<expectedFailure>
	| baseModel partial1MooseModel |
	baseModel := (MooseModel importFromMSEStream: self fullModel readStream) convertToOrion.
	partial1MooseModel := MooseModel importFromMSEStream: self partialModel readStream.
	self computeDiffWithOrionOn: baseModel and: partial1MooseModel.
	self assert: baseModel system orionModels last selectTestsFromChanges size equals: 20000