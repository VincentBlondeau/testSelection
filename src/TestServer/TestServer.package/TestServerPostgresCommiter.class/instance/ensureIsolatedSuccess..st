as yet unclassified
ensureIsolatedSuccess: aBlock
	[ [ self connection execute: 'START TRANSACTION ISOLATION LEVEL REPEATABLE READ'.
	aBlock value.
	self connection commitTransaction ]
		on: TSRollback
		do: [ :ex | 
			TestServer logger informational: 'No test is done in this execution. No data is inserted.' , ex asString facilityLevel: TestServer logFacilityLevel.
			self rollback ] ]
		on: Error
		do: [ :ex | 
			self rollback.
			ex signal ]