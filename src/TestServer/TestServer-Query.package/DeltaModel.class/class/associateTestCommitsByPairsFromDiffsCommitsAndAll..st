as yet unclassified
associateTestCommitsByPairsFromDiffsCommitsAndAll: aMooseGroup
	| data aggregates flattenedData |
	data := aMooseGroup reject: [ :e | e size <= 1 ].
	flattenedData := data
		flatCollect: [ :e | 
			aggregates := (e collect: [ :g | g asMooseGroup ]) asArray aggregateRuns: [ :f | f class ].
			aggregates select: [ :f | f size > 1 and: [ f first class = MooseGroup ] ] ].
	^ flattenedData
		flatCollect: [ :e | 
			e allButLast
				with: e allButFirst
				collect: [ :a :b | 
					{a.
					b} ] ]