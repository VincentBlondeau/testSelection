tests
computeDiffWithOrionOn: baseModel and: partialMooseModel
	^ FXDiff
		runOnBaseModel: baseModel
		targetModel: partialMooseModel
		diffComputer: FamixDiff
		diffTransformers:
			{FamixDiffChangesSorter.
			TestSelectorPartialModelDiffReducer.
			FamixDiffBodyChangeIdentificator.
			OrionMergeWithVisitor}
		args: {(#filesDeleted -> #())} asDictionary