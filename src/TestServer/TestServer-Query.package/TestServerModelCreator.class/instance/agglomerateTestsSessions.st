as yet unclassified
agglomerateTestsSessions
	| list col res sortedTestSessions currentAgglo allRepos commits |
	res := (model allWithType: MooseTestPeople)
		collect: [ :people | 
			people testProjects
				collect: [ :project | 
					
					sortedTestSessions := (people testSessionsForProject: project) asOrderedCollection
						sort: [ :a :b | a dateEnd <= b dateBegin ].	"self assert: (data isSortedBy: [ :a :b | a dateEnd <= b dateBegin ])."
					allRepos := project relatedRepositories.
					commits := people commits select: [ :commit | allRepos includes: commit repository ].
					list := LinkedList newFrom: sortedTestSessions.
					col := OrderedCollection new.
					col add: MooseAgglomeratedTestSession new.
					list
						linksDo: [ :e | 
							currentAgglo := col last.
							currentAgglo indexOf: e value ifAbsent: [ currentAgglo add: e value ].
							e nextLink
								ifNotNil: [ 
									((e nextLink value dateEnd - e value dateBegin <= 5 minutes
										and: [ (self doesAgglo: currentAgglo includesATestOf: e nextLink value) not ])
						"				and: [ (self isCommitFromList: commits between: e value and: e nextLink value) not ])")
										ifTrue: [ currentAgglo add: e nextLink value ]
										ifFalse: [ col addLast: MooseAgglomeratedTestSession new ] ] ].
					project agglomeratedTestSessions: col.
					col ] ].

	model addAll: res flatten flatten