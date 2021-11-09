tests
test
	| baseModel partial1MooseModel diff |
	baseModel := (MooseModel importFromMSEStream: self fullModel readStream) convertToOrion.
	partial1MooseModel := MooseModel importFromMSEStream: self partialModel1 readStream.
	diff := self computeDiffWithOrionOn: baseModel and: partial1MooseModel.
	self assert: diff result isNotEmpty.
	self assert: baseModel system orionModels last selectTestsFromChanges size equals: 4