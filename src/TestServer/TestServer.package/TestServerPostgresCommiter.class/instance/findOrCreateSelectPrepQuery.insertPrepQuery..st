as yet unclassified
findOrCreateSelectPrepQuery: selectQuery insertPrepQuery: insertQuery
	| result |
	result := selectQuery execute.
	result isEmpty
		ifTrue: [ result := insertQuery execute ].
	result isError
		ifTrue:
			[ TestServer logger
				emergency: 'That is an error of interaction with the DB. Error:' , result asString
				facilityLevel: TestServer logFacilityLevel.
			DBDataCorrupted signal ].
	^ result first data first