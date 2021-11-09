as yet unclassified
selectChangesAndTestsFromPairs: pairs
	| beforeLot afterLot commitsBefore commitsAfter testsSessions before inCommonRepos res |
	res := pairs
		flatCollect: [ :e | 
			beforeLot := e first.
			afterLot := e second.
			commitsBefore := beforeLot select: [ :f | f class = SYNCommit ].
			commitsAfter := afterLot select: [ :f | f class = SYNCommit ].
			testsSessions := afterLot select: [ :f | f class = MooseTestSession ].
			inCommonRepos := (commitsAfter collect: #repository) intersection: (commitsBefore collect: #repository).
		
			inCommonRepos
				ifEmpty: [ #() ]
				ifNotEmpty: [ 
					(commitsAfter
						collect: [ :commitAfter | 
							
							before := commitsBefore select: [ :commit | commit repository = commitAfter repository ].
							[ 
							before size isZero
								ifTrue: [ before := commitsBefore first ]
								ifFalse: [ 
									self assert: before size = 1.
									before := before first.
									self assert: (commitAfter allPreviousCommits includes: before) ].
							{(#repo -> commitAfter repository).
							(#commitBefore -> before).
							(#commitAfter -> commitAfter).
							(#testSessions -> testsSessions)} asDictionary ]
								on: AssertionFailure
								do: [  ] ]
						as: OrderedCollection) select: #isNotNil ] ]
		as: OrderedCollection.
	^ res reject: [ :e | e isEmpty and: [ e first name = 'p4-fusion' ] ]