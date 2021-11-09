*TestServer
asPostgresConnectionString
	| aStream |
	aStream := WriteStream on: ''.
	aStream << 'postgresV2://'.
	aStream << self host.
	aStream << ':'.
	aStream << self port.
	aStream << '/'.
	aStream << self resource.
	aStream << '?user='.
	aStream << self login.
	aStream << '&password='.
	aStream << self password.
	^ aStream contents