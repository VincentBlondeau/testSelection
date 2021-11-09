tests
computeDiffWithOrionOn: baseModel and: partialMooseModel filesDeleted: filesDeleted
	^ FXDiff
		runOnBaseModel: baseModel
		targetModel: partialMooseModel
		diffComputer: FamixDiff
		diffTransformers:
			{FamixDiffChangesSorter.
			TestSelectorPartialModelDiffReducer.
			FamixDiffBodyChangeIdentificator.
			OrionMergeWithVisitor}
		args: {(#filesDeleted -> filesDeleted)} asDictionary