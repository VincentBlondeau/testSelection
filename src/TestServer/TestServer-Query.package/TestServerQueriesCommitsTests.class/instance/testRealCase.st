as yet unclassified
testRealCase
	| testSessions |
	testSessions := TestServerRepoAndTestsCorrelations new numberOfTestSessionBetweenTwoCommits: 'KKKKKKKKKKKKKKKKKKKKKKKTTTTTTTTKKKKK'.
	self assert: testSessions equals: #(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0) asOrderedCollection 