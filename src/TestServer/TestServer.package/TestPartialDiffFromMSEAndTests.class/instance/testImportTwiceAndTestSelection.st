tests
testImportTwiceAndTestSelection
	| baseModel partialMooseModel1 partialMooseModel2 listOfSelectedTests |
	baseModel := (MooseModel importFromMSEStream: self mseFull readStream) convertToOrion.
	partialMooseModel1 := MooseModel importFromMSEStream: self msePartial1 readStream.
	partialMooseModel2 := MooseModel importFromMSEStream: self msePartial2 readStream.
	self computeDiffWithOrionOn: baseModel and: partialMooseModel1.
	self computeDiffWithOrionOn: baseModel system orionModels second and: partialMooseModel2.
	listOfSelectedTests := baseModel system orionModels third selectTestsFromChanges.
	self assert: (listOfSelectedTests collect: #mooseName) equals: #('::TotoTest.testAccess()' '::TotoTest.testContructor()') asSet