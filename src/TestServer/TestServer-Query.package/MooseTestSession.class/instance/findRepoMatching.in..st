as yet unclassified
findRepoMatching: aString in: aCollectionOfRepoNames
	| res |
	res := aCollectionOfRepoNames detect: [ :e | e = aString ] ifNone: [ self halt ].

	^ res