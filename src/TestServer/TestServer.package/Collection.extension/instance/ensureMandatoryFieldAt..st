*TestServer-Core
ensureMandatoryFieldAt: aString
	^ self at: aString ifAbsent: [ TSMalformedJsonInput signal: self onField: aString ]