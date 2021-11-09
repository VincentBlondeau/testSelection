as yet unclassified
uniqKeyFor: projectName
	| renamed aString |
	aString := (projectName substrings: '-') first.
	renamed := self projectMapping
		select: [ :e | e key includes: aString ]
		thenCollect: #value.
	^ renamed ifEmpty: [ aString ] ifNotEmpty: [ renamed first ]