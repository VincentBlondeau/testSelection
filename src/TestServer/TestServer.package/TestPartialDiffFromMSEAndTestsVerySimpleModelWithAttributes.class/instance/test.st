tests
test
	| baseModel partial1MooseModel partial2MooseModel  |
	baseModel := (MooseModel importFromMSEStream: self fullModel readStream) convertToOrion.
	partial1MooseModel := MooseModel importFromMSEStream: self partialModel1 readStream.
	partial2MooseModel := MooseModel importFromMSEStream: self partialModel2 readStream.
	self computeDiffWithOrionOn: baseModel and: partial1MooseModel.
	self computeDiffWithOrionOn: baseModel system orionModels last and: partial2MooseModel.
