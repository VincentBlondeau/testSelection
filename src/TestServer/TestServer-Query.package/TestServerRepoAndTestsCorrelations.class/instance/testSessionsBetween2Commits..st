as yet unclassified
testSessionsBetween2Commits: resultWithPreviousCommits
	| testSessionsBetween2Commits string numberOfTestSessionBetweenTwoCommits |
	testSessionsBetween2Commits := resultWithPreviousCommits
		collect: [ :f | 
			string := ((f associations sort: [ :a :b | a key < b key ])
				collect: [ :e | 
					e value first isCollection
						ifTrue: [ 'T' ]
						ifFalse: [ 'K' ] ]) flatten fold: [ :a :b | a asString , b asString ].
			numberOfTestSessionBetweenTwoCommits := self numberOfTestSessionBetweenTwoCommits: string.
			{(#min -> (numberOfTestSessionBetweenTwoCommits reject: #isZero) min).
			(#avg -> (numberOfTestSessionBetweenTwoCommits reject: #isZero) average asFloat).
			(#max -> (numberOfTestSessionBetweenTwoCommits reject: #isZero) max).
			(#nbDelta -> (numberOfTestSessionBetweenTwoCommits reject: #isZero) size).
			(#raw -> (numberOfTestSessionBetweenTwoCommits reject: #isZero))} ].
	self
		exportToCsvFile: 'C:\temp\data\testSessionsBetween2Commits.csv' asFileReference
		headers: #(#name #testSessionsBetween2Commits)
		data:
			(testSessionsBetween2Commits associations
				collect: [ :assoc | 
					OrderedCollection new
						add: assoc key;
						addAll: (assoc value asDictionary at: #raw);
						yourself ]).
	^ testSessionsBetween2Commits