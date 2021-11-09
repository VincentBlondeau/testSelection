tests
computeDiffOn: baseModel and: partialMooseModel
	^ FXDiff
		runOnBaseModel: baseModel
		targetModel: partialMooseModel
		diffComputer: FamixDiff
		diffTransformers: {TestSelectorPartialModelDiffReducer}