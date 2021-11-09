as yet unclassified
findInPreviousGroupsParentOf: aSYNCommit inRepo: aSYNRepository
	| dicoRepoCommits parentCommit lastParent |
	dicoRepoCommits := self previousCommitGroup previous
		ifNotNil: [ 
			lastParent := false.
			self previousCommitGroup youngestCommitsForEachRepo ]
		ifNil: [ 
			lastParent := true.
			self previousCommitGroup oldestCommitsForEachRepo ].
	parentCommit := dicoRepoCommits
		at: aSYNRepository
		ifAbsent: [ 
			lastParent
				ifFalse: [ self previousCommitGroup findInPreviousGroupsParentOf: aSYNCommit inRepo: aSYNRepository ].
			aSYNCommit previousCommit first ].
	self assert: (aSYNCommit allPreviousCommits includes: parentCommit).
	^ parentCommit .
	