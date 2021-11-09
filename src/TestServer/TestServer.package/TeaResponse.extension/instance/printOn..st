*TestServer
printOn: aStream
	super printOn: aStream.
	aStream << ' ('.
	code printOn: aStream.
	aStream << '; '.
	headers printOn: aStream.
	aStream << '; '.
	body printOn: aStream.
	aStream << ')'