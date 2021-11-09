tests
testImportTwice
	<expectedFailure>
	| baseModel partialMooseModel1 partialMooseModel2 |
	baseModel := (MooseModel importFromMSEStream: self mseFull readStream) convertToOrion.
	partialMooseModel1 := MooseModel importFromMSEStream: self msePartial1 readStream.
	partialMooseModel2 := MooseModel importFromMSEStream: self msePartial2 readStream.
	self computeDiffWithOrionOn: baseModel and: partialMooseModel1.
	self computeDiffWithOrionOn: baseModel system orionModels second and: partialMooseModel2.
	self assert: baseModel system orionModels size equals: 3.
	self assert: baseModel system orionModels second changes size equals: 16.
	self assert: baseModel system orionModels third changes size equals: 13