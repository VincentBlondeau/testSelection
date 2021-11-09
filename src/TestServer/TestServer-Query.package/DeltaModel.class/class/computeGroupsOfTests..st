as yet unclassified
computeGroupsOfTests: aMooseModel
	| allRepos testSessionsForProject data list col res |
	res := (aMooseModel allWithType: MooseTestPeople)
		collect: [ :people | 
			people testProjects
				collect: [ :project | 
					allRepos := project relatedRepositories.
					testSessionsForProject := people testSessionsForProject: project.
					data := testSessionsForProject sort: [ :a :b | a id <= b id ].
				"	self assert: (data isSortedBy: [ :a :b | a dateEnd <= b dateBegin ])."
					list := LinkedList newFrom: data.
					col := OrderedCollection new.
					col add: LinkedList new.
					list
						linksDo: [ :e | 
							e nextLink
								ifNotNil: [ 
									col last indexOf: e value ifAbsent: [ col last add: e value ].
									(e nextLink value dateEnd - e value dateBegin <= 5 minutes
										and: [ (self alreadyIncludesTestsOfSession: e nextLink value inCollection: col last) not ])
										ifTrue: [ col last add: e nextLink value ]
										ifFalse: [ col last ifNotEmpty: [ col add: LinkedList new ] ] ] ].
					
					col ] ].
	^ res flatten flatten reject: #isEmpty