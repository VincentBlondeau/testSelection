as yet unclassified
commitJson: aCollection
	[ self openDBConnection.
	self ensureIsolatedSuccess: [ self insertJson: aCollection ] ]
		ensure: [ self closeDBConnection ].
	^ executionIds