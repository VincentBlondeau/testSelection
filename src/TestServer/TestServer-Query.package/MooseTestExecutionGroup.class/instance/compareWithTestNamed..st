as yet unclassified
compareWithTestNamed: aCollection
	| sameTests intermediateResult tests name |
	moosifiedSelfNames := self asSet asOrderedCollection
		collect: [ :e | 
			name := e name substrings: '[()'.
			self assert: (name size > 0 or: [ name size < 4 ]).
			(name size = 2 and: [ name second endsWith: ']' ])
				ifTrue: [ 
					"	 #('com.santeos.imagerie.synchroenrs.recette.SynchroEnrsRecetteTestCase.' '2]')"
					name := {(name first allButLast)} ].
			name size = 3
				ifTrue: [ name := name first , name third ]
				ifFalse: [ name := name first ].
			MooseUtilities moosify: name ].
	tests := aCollection collect: [ :e | MooseUtilities moosify: ('(' split: e) first ].
	aCollection
		ifEmpty: [ sameTests := #() ]
		ifNotEmpty: [ 
			intermediateResult := moosifiedSelfNames intersection: tests asSet.
			intermediateResult
				ifEmpty: [ 
					intermediateResult.
					Transcript crLog: moosifiedSelfNames asSet asString , tests asSet asString ].
			sameTests := intermediateResult ].
	^ {(#sameTests -> sameTests).
	(#manualTests -> moosifiedSelfNames).
	(#automaticTests -> tests)} asDictionary