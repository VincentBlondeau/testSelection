as yet unclassified
removeCommitsFrom: aColOfLists
	^ aColOfLists
		collect: [ :list | 
			list
				removeAllSuchThat: [ :item | 
					item class = SYNCommit
						ifTrue: [ self listOfCommitsToRemoveForAnalysis includes: item revision ]
						ifFalse: [ self listOfTestsSessionsToRemoveForAnalysis includes: item id ] ] ]
		thenSelect: #isNotEmpty