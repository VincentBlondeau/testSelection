as yet unclassified
numberOfTestSessionBetweenTwoCommits: aString
	^ aString
		inject:
			(OrderedCollection new
				add: 0;
				yourself)
		into: [ :col :elem | 
			elem = $K
				ifTrue: [ col addLast: 0 ]
				ifFalse: [ col atLast: 1 put: col last + 1 ].
			col ]