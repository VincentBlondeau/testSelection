as yet unclassified
both: aString and: aString2 includesASubstringIn: aCollection
	^ aCollection anySatisfy: [ :e | self both: aString and: aString2 includesSubstring: e ]