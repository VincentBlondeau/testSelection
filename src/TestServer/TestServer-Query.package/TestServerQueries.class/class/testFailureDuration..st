as yet unclassified
testFailureDuration: aString
	| coll |
	coll := (aString substrings: 'P') collect: [ :substring | substring size ].
	^ coll 