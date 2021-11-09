as yet unclassified
createCommitLinksOn: aMooseModel
	| previousCommit |
	aMooseModel allRepositories
		do: [ :repo | 
			repo commits
				do: [ :commit | 
					previousCommit := commit previousCommit reject: #isNil.
					previousCommit ifNotEmpty: [ commit parentCommits: previousCommit ] ] ]