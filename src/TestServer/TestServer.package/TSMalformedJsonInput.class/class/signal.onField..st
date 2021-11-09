as yet unclassified
signal: collectionContents onField: aString
	^ self new
		contents: collectionContents;
		field: aString;
		signal