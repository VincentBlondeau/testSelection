as yet unclassified
testPassAndFailAlternatively
	| duration |
	duration := TestServerQueries testFailureDuration: 'FFPFP'.
	self assert: duration equals: #(2 1)