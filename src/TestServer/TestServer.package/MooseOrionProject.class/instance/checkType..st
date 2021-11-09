as yet unclassified
checkType: aString
	(self listOfMSETypesAndActions keys includes: aString)
		ifFalse: [ NotFound signalFor: aString in: self listOfMSETypesAndActions ].
		