as yet unclassified
computeGroupsOfCommits: aMooseModel
	| allRepos  commits data list col res repoGroupedCommits |
	res := (aMooseModel allWithType: MooseTestPeople)
		collect: [ :people | 
			people testProjects
				collect: [ :project | 
					allRepos := project relatedRepositories.
					commits := people commits select: [ :commit | allRepos includes: commit repository ].
					repoGroupedCommits := commits groupedBy: #repository.
					repoGroupedCommits values
						collect: [ :commitsForARepo | 
							data := commitsForARepo sort: [ :a :b | a dateEnd <= b dateBegin ].	"self assert: (data isSortedBy: [ :a :b | a dateEnd <= b dateBegin ])."
							list := LinkedList newFrom: data.
							col := OrderedCollection new.
							col add: LinkedList new.
							list
								linksDo: [ :e | 
									e nextLink
										ifNotNil: [ 
											col last indexOf: e value ifAbsent: [ col last add: e value ].
											e nextLink value dateEnd - e value dateBegin <= 5 minutes
												ifTrue: [ col last add: e nextLink value ]
												ifFalse: [ col last ifNotEmpty: [ col add: LinkedList new ] ] ] ].
							col ] ] ].
	^ res flatten flatten flatten reject: #isEmpty