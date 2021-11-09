as yet unclassified
test1TestSessionsBetween2Commits
	| testSessions |
	testSessions := TestServerRepoAndTestsCorrelations new  numberOfTestSessionBetweenTwoCommits: 'KTK'.
	self assert: testSessions equals: #(0 1 0) asOrderedCollection 