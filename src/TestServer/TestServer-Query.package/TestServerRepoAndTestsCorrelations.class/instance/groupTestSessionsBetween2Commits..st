as yet unclassified
groupTestSessionsBetween2Commits: resultWithPreviousCommits
	^ resultWithPreviousCommits
		collect: [ :associations | 
			(self sortByKey: associations)
				inject:
					(OrderedCollection new
						add: OrderedCollection new;
						yourself)
				into: [ :col :elem | 
					elem value first isCollection
						ifTrue: [ col last add: elem	"is test" ]
						ifFalse: [ 
							"is commit"
							col last add: elem.
							col addLast: OrderedCollection new.
							col last add: elem ].
					col ] ]