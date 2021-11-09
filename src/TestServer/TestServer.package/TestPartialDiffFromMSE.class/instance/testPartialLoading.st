tests
testPartialLoading
<expectedFailure>
	| baseModel partialMooseModel changes |
	baseModel := (MooseModel importFromMSEStream: self mseFull readStream) convertToOrion.
	partialMooseModel := MooseModel importFromMSEStream: self msePartial readStream.
	self computeDiffWithOrionOn: baseModel and: partialMooseModel.
	self assert: baseModel system orionModels size equals: 2.
	changes := baseModel system orionModels second changes.
	self assert: changes size equals: 11.
	self assert: (changes reject: [ :e | e entity isStub ]) size equals: 3.
	self
		assert: (changes reject: [ :e | e entity isStub ] thenCollect: #class) asSet
		equals:
			{ORActionAddMethod.
			ORActionAddInvocation} asSet