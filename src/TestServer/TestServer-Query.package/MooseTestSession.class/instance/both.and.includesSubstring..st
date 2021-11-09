as yet unclassified
both: aString and: aString2 includesSubstring: aSubstring
	^ (aString includesSubstring: aSubstring) and: [ aString2 includesSubstring: aSubstring ]