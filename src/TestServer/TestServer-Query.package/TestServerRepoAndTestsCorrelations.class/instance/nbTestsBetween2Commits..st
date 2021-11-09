as yet unclassified
nbTestsBetween2Commits: resultWithPreviousCommits
	| numberOfTestSessionBetweenTwoCommits string nbTestsBetween2Commits |
	nbTestsBetween2Commits := resultWithPreviousCommits
		collect: [ :f | 
			string := ((f associations sort: [ :a :b | a key < b key ])
				collect: [ :e | 
					e value first isCollection
						ifTrue: [ 
							(OrderedCollection new
								add: 'T' withOccurrences: e value size;
								yourself) fold: [ :a :b | a , b ] ]
						ifFalse: [ 'K' ] ]) flatten fold: [ :a :b | a asString , b asString ].
			numberOfTestSessionBetweenTwoCommits := self numberOfTestSessionBetweenTwoCommits: string.
			{(#min -> (numberOfTestSessionBetweenTwoCommits reject: #isZero) min).
			(#avg -> (numberOfTestSessionBetweenTwoCommits reject: #isZero) average asFloat).
			(#max -> (numberOfTestSessionBetweenTwoCommits reject: #isZero) max).
			(#nbDelta -> (numberOfTestSessionBetweenTwoCommits reject: #isZero) size).
			(#raw -> (numberOfTestSessionBetweenTwoCommits reject: #isZero))} ].
	self
		exportToCsvFile: 'C:\temp\data\nbTestsBetween2Commits.csv' asFileReference
		headers: #(#name #nbTestsBetween2Commits)
		data:
			(nbTestsBetween2Commits associations
				collect: [ :assoc | 
					OrderedCollection new
						add: assoc key;
						addAll: (assoc value asDictionary at: #raw);
						yourself ]).
	^ nbTestsBetween2Commits