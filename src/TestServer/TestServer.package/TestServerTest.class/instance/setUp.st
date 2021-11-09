running
setUp
	connection := TestServerPostgresCommiter new.
	[ connection openDBConnection ]
		on: ConnectionTimedOut
		do: [ ^ self fail: 'Connection Timed Out !' ].
	server := TestServer startOn: 1756.
	self deleteTotoData