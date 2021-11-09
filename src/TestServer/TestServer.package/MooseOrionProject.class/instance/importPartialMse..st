as yet unclassified
importPartialMse: aMSEFileAnchor
	| partialMooseModel baseModel diffChanges |
	partialMooseModel := aMSEFileAnchor createModelFromMse.
	baseModel := rootModel orionModels last.
	"TimeProfiler
		spyOn: ["
	diffChanges := (FXDiff
		runOnBaseModel: baseModel
		targetModel: partialMooseModel
		diffComputer: FamixDiff
		diffTransformers:
			{FamixDiffChangesSorter.
			TestSelectorPartialModelDiffReducer.
			FamixDiffBodyChangeIdentificator.
			OrionMergeWithVisitor}
		args: {(#filesDeleted -> aMSEFileAnchor removeChanges)} asDictionary) result.	"]"
	aMSEFileAnchor model: rootModel orionModels last.
	aMSEFileAnchor diffChanges: diffChanges