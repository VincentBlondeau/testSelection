as yet unclassified
testOnlyFail
	| duration |
	duration := TestServerQueries testFailureDuration: 'FFFF'.
	self assert: duration equals: #(4)