tests
testImportTwiceAndTestDiff
	<expectedFailure>
	| baseModel partialMooseModel1 partialMooseModel2 listOfSelectedTests result |
	baseModel := (MooseModel importFromMSEStream: self mseFull readStream) convertToOrion.
	partialMooseModel1 := MooseModel importFromMSEStream: self msePartial1 readStream.
	partialMooseModel2 := MooseModel importFromMSEStream: self msePartial2 readStream.
	result := (self computeDiffOn: baseModel and: partialMooseModel1) result.
	self fail.
	self computeDiffOn: baseModel system orionModels second and: partialMooseModel2.
	listOfSelectedTests := baseModel system orionModels third selectTestsFromChanges.
	self assert: listOfSelectedTests equals: 2