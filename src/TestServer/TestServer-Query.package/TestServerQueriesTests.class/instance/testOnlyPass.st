as yet unclassified
testOnlyPass
	| duration |
	duration := TestServerQueries testFailureDuration: 'PPPP'.
	self assert: duration equals: #()