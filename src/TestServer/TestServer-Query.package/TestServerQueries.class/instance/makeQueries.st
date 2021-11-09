computing
makeQueries
	[ self openDBConnection.
	self connectionReadOnly.

	self executeQueries ]
		ensure: [ self closeDBConnection ].
	^ results