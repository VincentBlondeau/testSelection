as yet unclassified
correlateRepoAndTests
	| model data authors dataGroupedBySession dataGroupedByPeople mapping rawData authorId dataGroupedByEndDate commits dataWithAuthorsFound peopleCommits previousCommits result authorsThatAreNotInTheRepo resultWithPreviousCommits return dataGroupedByProject |
	"Il s'agit d'un commit"
	"C'est un test on fait le diff"
	return := Dictionary new.
	model := MooseModel root first.
	rawData := (TestServerQueries result at: #rawData) at: #data.
	authors := model allAuthors groupedBy: #id.
	model allRepositories collect: [ :e | e authors collect: #id ].
	commits := model allCommits groupedBy: [ :e | e author id ].
	mapping := self class authorToDB.
	data := rawData
		collect: [ :e | 
			authorId := (mapping keyAtValue: e second) asString.
			e asOrderedCollection
				addLast: authorId;
				addLast: (authors at: authorId ifAbsent: [ nil ]);
				yourself ].
	dataGroupedBySession := data groupedBy: #first.
	dataGroupedByPeople := data groupedBy: #second.
	dataGroupedByEndDate := data groupedBy: #seventh.
	dataGroupedByProject := data groupedBy: [ :e | self class uniqKeyFor: e fourth ].
	authorsThatAreNotInTheRepo := (data select: [ :e | (e at: 11) isNil ] thenCollect: #second) asSet
		collect: [ :e | mapping keyAtValue: e ].
	dataWithAuthorsFound := data select: [ :e | (e at: 11) isNotNil ].
	dataGroupedByPeople := dataWithAuthorsFound asOrderedCollection groupedBy: [ :e | e at: 10 ].
	dataGroupedByPeople
		associationsDo: [ :assoc | 
			peopleCommits := commits at: assoc key.
			assoc value addAll: peopleCommits ].
	result := dataGroupedByPeople
		collect: [ :e | 
			e
				groupedBy: [ :f | 
					f isCollection
						ifTrue: [ f seventh ]
						ifFalse: [ f date ] ] ].
	return at: #timeDeltaBetweenLastSessionAndCommit put: (self timeDeltaBetweenLastSessionAndCommitData: result).	"Add previous commits"
	dataGroupedByPeople
		associationsDo: [ :assoc | 
			peopleCommits := commits at: assoc key.
			previousCommits := peopleCommits
				collect: [ :e | e previousCommit ifNotEmpty: #first ifEmpty: [ nil ]	"we consider that the tests are made on the master branch" ]
				thenSelect: [ :e | e isNotNil ].
			assoc value addAll: previousCommits ].
	resultWithPreviousCommits := dataGroupedByPeople
		collect: [ :e | 
			e
				groupedBy: [ :f | 
					f isCollection
						ifTrue: [ f seventh ]
						ifFalse: [ f date ] ] ].	"------------------------------------------------------------------------"	"dataGroupedByProject
		associationsDo: [ :assoc | 
			peopleCommits := commits at: assoc key.
					assoc value addAll: peopleCommits.
			previousCommits := peopleCommits
				collect: [ :e | e previousCommit ifNotEmpty: #first ifEmpty: [ nil ]	"	"we consider that the tests are made on the master branch"	" ]
				thenSelect: [ :e | e isNotNil ].
			assoc value addAll: previousCommits ].
	resultWithPreviousCommits := dataGroupedByProject
		collect: [ :e | 
			e
				groupedBy: [ :f | 
					f isCollection
						ifTrue: [ f seventh ]
						ifFalse: [ f date ] ] ]."	"self exportRequiredRepoForDiffAnalysis: (self groupTestSessionsBetween2CommitsWithTests: resultWithPreviousCommits)."	"self exportRepoAndVersionsForDiffAnalysis: (self groupTestSessionsBetween2CommitsWithTests: resultWithPreviousCommits)."
					
	self halt.
	self testingTimeBetween2Commits: (self groupTestSessionsBetween2CommitsWithTests: resultWithPreviousCommits).
	self ratioOfExecutedTestForEachSession: (self groupTestSessionsBetween2CommitsWithTests: resultWithPreviousCommits).
	return at: #testSessionsBetween2Commits put: (self testSessionsBetween2Commits: resultWithPreviousCommits).
	return at: #nbTestsBetween2Commits put: (self nbTestsBetween2Commits: resultWithPreviousCommits).
	return inspect.
	self halt