computing
deltaLastCommitFirstSessionCommits: grCommits sessions: grSessions
	| commit session delta |
	^ grCommits
		with: grSessions
		collect: [ :commits :sessions | 
			commit := commits last.
			session := sessions first.
			delta := session start - commit date .
			delta ]