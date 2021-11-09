as yet unclassified
importFullMse: aMSEFileAnchor
	| model |
	ORConverter modelShouldHaveOnlyOrionClasses: false.
	model := aMSEFileAnchor createModelFromMse convertToOrion.
	rootModel := model system.
	aMSEFileAnchor model: model.
	^ model