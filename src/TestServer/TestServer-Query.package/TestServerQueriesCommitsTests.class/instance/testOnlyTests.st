as yet unclassified
testOnlyTests
	| testSessions |
	testSessions := TestServerRepoAndTestsCorrelations new numberOfTestSessionBetweenTwoCommits: 'TTTT'.
	self assert: testSessions equals: #(4) asOrderedCollection 