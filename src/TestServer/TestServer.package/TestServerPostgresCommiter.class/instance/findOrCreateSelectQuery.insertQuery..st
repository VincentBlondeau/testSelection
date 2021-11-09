as yet unclassified
findOrCreateSelectQuery: selectQuery insertQuery: insertQuery
	| result |
	result := self execute: selectQuery.
	result isEmpty
		ifTrue: [ result := self execute: insertQuery ].
	result isError
		ifTrue: [ TestServer logger emergency: 'That is an error of interaction with the DB. Error:' , result asString facilityLevel: TestServer logFacilityLevel.
			DBDataCorrupted signal ].
	^ result first data first