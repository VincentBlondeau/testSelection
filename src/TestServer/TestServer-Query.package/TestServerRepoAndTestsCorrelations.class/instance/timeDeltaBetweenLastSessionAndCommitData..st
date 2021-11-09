as yet unclassified
timeDeltaBetweenLastSessionAndCommitData: result
	| timeDeltaBetweenLastSessionAndCommitData collection timeDeltaBetweenLastSessionAndCommit timeDeltaBetweenLastSessionAndCommitDataInter |
	timeDeltaBetweenLastSessionAndCommitData := OrderedCollection new.
	timeDeltaBetweenLastSessionAndCommit := result
		collect: [ :f | 
			| timeDelta |
			timeDelta := OrderedCollection new.
			timeDeltaBetweenLastSessionAndCommitDataInter := OrderedCollection new.
			collection := (f associations sort: [ :a :b | a key < b key ]) collect: #value.
			collection
				withIndexDo: [ :e :idx | 
					| previousItem |
					e first isCollection
						ifFalse: [ 
							"Il s'agit d'un commit"
							idx = 1
								ifFalse: [ 
									previousItem := (collection at: idx - 1) first.
									previousItem isCollection
										ifTrue: [ 
											"C'est un test on fait le diff"
											timeDeltaBetweenLastSessionAndCommitDataInter
												add:
													{e.
													previousItem}.
											timeDelta add: e first date - previousItem seventh ] ] ] ].
			timeDeltaBetweenLastSessionAndCommitData add: timeDeltaBetweenLastSessionAndCommitDataInter.
			timeDelta ].
	self
		exportToCsvFile: 'C:\temp\data\timeDeltaBetweenLastSessionAndCommit.csv' asFileReference
		headers: #(#name #timeDeltaBetweenLastSessionAndCommit)
		data:
			(timeDeltaBetweenLastSessionAndCommit associations
				collect: [ :assoc | 
					OrderedCollection new
						add: assoc key;
						addAll: (self transformDaysInHours: assoc value);
						yourself ]).
	^ timeDeltaBetweenLastSessionAndCommit