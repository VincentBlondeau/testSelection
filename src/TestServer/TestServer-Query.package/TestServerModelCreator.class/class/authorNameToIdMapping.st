as yet unclassified
authorNameToIdMapping
	^ (OrderedCollection new
		addAll: self authorNameToIdMapping1;
		addAll: self authorNameToIdMapping2;
		addAll: self authorNameToIdMapping3;
		addAll: self authorNameToIdMapping4;
		addAll: self authorNameToIdMapping5;
		addAll: self authorNameToIdMapping6;
		yourself) asDictionary