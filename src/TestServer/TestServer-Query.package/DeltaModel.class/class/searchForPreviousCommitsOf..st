as yet unclassified
searchForPreviousCommitsOf: aCollectionOfCommits
	| parents parentsParents |
	^ aCollectionOfCommits
		collect: [ :commit | 
			parents := commit parentCommits
				flatCollect: [ :parentCommit | 
					(self listOfCommitsToRemoveForAnalysis includes: parentCommit revision)
						ifTrue: [ 
							parentsParents := parentCommit parentCommits.
							parentsParents
								flatCollect: [ :parentCommitLevel2 | 
									(self listOfCommitsToRemoveForAnalysis includes: parentCommitLevel2 parentCommits)
										ifTrue: [ parentCommitLevel2 parentCommits ]
										ifFalse: [ {parentCommitLevel2} ] ] ]
						ifFalse: [ {parentCommit} ] ].
			commit -> parents ]