as yet unclassified
testOnlyCommits
	| testSessions |
	testSessions := TestServerRepoAndTestsCorrelations new numberOfTestSessionBetweenTwoCommits: 'KKKK'.
	self assert: testSessions equals: #(0 0 0 0 0 ) asOrderedCollection 