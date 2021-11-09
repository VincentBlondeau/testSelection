running
tearDown
	self deleteTotoData.
	connection closeDBConnection.
	server stop