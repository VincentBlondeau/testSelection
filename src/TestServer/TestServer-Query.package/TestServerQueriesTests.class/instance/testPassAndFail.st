as yet unclassified
testPassAndFail
	| duration |
	duration := TestServerQueries testFailureDuration: 'PPFFP'.
	self assert: duration equals: #(2)