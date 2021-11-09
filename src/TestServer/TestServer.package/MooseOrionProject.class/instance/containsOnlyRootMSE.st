as yet unclassified
containsOnlyRootMSE
	^ self mseList size = 1
		and: [ self assert: self mseList first isFullMse.
			true ]