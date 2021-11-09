as yet unclassified
computeDiffsCommitsAndAll: aMooseModel
	| allRepos testSessionsForProject commits commitsAndTestSessions data list col res |
	res := (aMooseModel allWithType: MooseTestPeople)
		collect: [ :people | 
			people testProjects
				collect: [ :project | 
					allRepos := project relatedRepositories.
					testSessionsForProject := people testSessionsForProject: project.
					commits := people commits select: [ :commit | allRepos includes: commit repository ].
					commitsAndTestSessions := OrderedCollection new
						addAll: testSessionsForProject;
						addAll: commits;
						yourself.
					data := commitsAndTestSessions sort: [ :a :b | a dateEnd <= b dateBegin ].	"self assert: (data isSortedBy: [ :a :b | a dateEnd <= b dateBegin ])."
					list := LinkedList newFrom: data.
					col := CTDoubleLinkedList new.
					col add: LinkedList new.
					list
						linksDo: [ :e | 
							e nextLink
								ifNotNil: [ 
									e nextLink value dateEnd - e value dateBegin <= 5 minutes
										ifTrue: [ 
											col last indexOf: e value ifAbsent: [ col last add: e value ].
											col last add: e nextLink value ]
										ifFalse: [ col last ifNotEmpty: [ col add: LinkedList new ] ] ] ].
					col
						select: [ :e | 
							"(e anySatisfy: #isCommit) and: ["
							e anySatisfy: [ :f | f isCommit not	" ] " ] ] ] ].
	^ res	"flatten flatten"