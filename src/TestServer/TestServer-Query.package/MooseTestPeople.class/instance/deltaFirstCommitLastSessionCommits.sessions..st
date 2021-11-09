computing
deltaFirstCommitLastSessionCommits: grCommits sessions: grSessions
	| commit session delta |
	^ grCommits
		with: grSessions
		collect: [ :commits :sessions | 
			commit := commits first.
			session := sessions last.
			delta := commit date - session end.
			delta ]