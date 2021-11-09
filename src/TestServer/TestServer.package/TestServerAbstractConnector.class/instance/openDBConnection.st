connection
openDBConnection
	connection := GADriver connectToConnectionString: self class selectDB.
	connection isConnected
		ifFalse: [ TestServer logger
				emergency: 'The connection to the database cannot be openned...'
				facilityLevel: TestServer logFacilityLevel ]