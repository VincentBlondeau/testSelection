tests
test
	| baseModel partial1MooseModel partial2MooseModel partial3MooseModel partial4MooseModel |
	baseModel := (MooseModel importFromMSEStream: self fullModel readStream) convertToOrion.
	partial1MooseModel := MooseModel importFromMSEStream: self partiel1 readStream.
	partial2MooseModel := MooseModel importFromMSEStream: self partiel2 readStream.
	partial3MooseModel := MooseModel importFromMSEStream: self partiel3 readStream.
	partial4MooseModel := MooseModel importFromMSEStream: self partiel4 readStream.
	self computeDiffWithOrionOn: baseModel and: partial1MooseModel.
	self computeDiffWithOrionOn: baseModel system orionModels last and: partial2MooseModel.
	self computeDiffWithOrionOn: baseModel system orionModels last and: partial3MooseModel.
	self computeDiffWithOrionOn: baseModel system orionModels last and: partial4MooseModel