tests
testImportOnce
<expectedFailure>
	| baseModel partialMooseModel |
	baseModel := (MooseModel importFromMSEStream: self mseFull readStream) convertToOrion.
	partialMooseModel := MooseModel importFromMSEStream: self msePartial1 readStream.
	self computeDiffWithOrionOn: baseModel and: partialMooseModel.
	self assert: baseModel system orionModels size equals: 2.
	self assert: baseModel system orionModels second changes size equals: 16