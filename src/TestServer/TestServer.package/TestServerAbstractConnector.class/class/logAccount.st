as yet unclassified
logAccount
	^ AMManager getInstance
		account: 'logAccount'
		ifAbsent: [ AMManager restart.
			AMManager getInstance account: 'logAccount' ifAbsent: [ self fakeAccountForTests ] ]