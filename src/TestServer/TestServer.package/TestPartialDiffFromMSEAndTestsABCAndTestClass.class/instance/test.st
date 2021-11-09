tests
test
	| baseModel partial1MooseModel diff |
	baseModel := (MooseModel importFromMSEStream: self fullModel readStream) convertToOrion.
	partial1MooseModel := MooseModel importFromMSEStream: self partialModel readStream.
	diff := self computeDiffWithOrionOn: baseModel and: partial1MooseModel.
	self assert: ((diff result collect: #entity ) allWithType: FAMIXAnnotationType) isNotEmpty.