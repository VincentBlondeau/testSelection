computing
writeAndOpenDescriptiveStatsByProject: aCollection
	| numberOfTestsBySession groupedByProjects maxNbTestsByProject testExec dic1 avgNumberByTestSession dic2 dic coll fileName nbOfSelectiveSessions numberOfTestBySessionByPeopleByProject selectiveSessionRatiobyPeople numberOfTestBySessionByPeople selectiveSessionRatioByPeopleByProject ratioOfSelectedTests debugSessionsByProject correlationOfRTSvsSuiteSizeData maxTimeByProject |
	numberOfTestsBySession := ((aCollection groupedBy: #first) associations
		collect: [ :assoc | assoc key -> assoc value size ]) asDictionary.
	groupedByProjects := aCollection groupedBy: [ :e | TestServerQueries uniqKeyFor: e fourth ].
	maxNbTestsByProject := groupedByProjects collect: [ :e | (e collect: #third as: Set) size ].
	maxTimeByProject := groupedByProjects
		collect: [ :e | ((e groupedBy: #third) collect: [ :f | (f collect: #eighth) max ]) sum ].
	self
		inspect:
			{maxNbTestsByProject.
			maxTimeByProject}.
	testExec := groupedByProjects collect: [ :item | item collect: #first as: Set ].
	numberOfTestBySessionByProject := testExec
		collect: [ :e | e asOrderedCollection collect: [ :f | numberOfTestsBySession at: f ] ].
	numberOfTestBySessionByPeopleByProject := groupedByProjects
		collect: [ :e | 
			(e asOrderedCollection groupedBy: [ :col | col second ])
				collect: [ :f | 
					(f
						collect: [ :g | 
							{(g first).
							(g second)} ]
						as: Set) asOrderedCollection collect: [ :h | numberOfTestsBySession at: h first ] ] ].
	avgNumberByTestSession := numberOfTestBySessionByProject collect: [ :e | e average asFloat ].
	dic1 := testExec collect: #size.	"total de tests sessions"
	dic2 := numberOfTestBySessionByProject collect: [ :e | e count: [ :f | f = 1 ] ].	"total de tests sessions avec seulement 1 test"
	dic := dic1 collect: #asOrderedCollection.	"total tests session - single test - % single / total Test - nb tests / project"
	dic2
		keysAndValuesDo: [ :key :value | 
			coll := dic at: key.
			coll add: value.
			coll add: coll second / coll first asFloat ].	"selectiveSessionRatio := numberOfTestBySessionByProject
		collect: [ :e | 
			| withoutSingleTests |
			withoutSingleTests := e select: [ :f | f > 1 ].
			nbOfSelectiveSessions := withoutSingleTests count: [ :f | f ~= withoutSingleTests max ].
			nbOfSelectiveSessions isZero
				ifTrue: [ 0 ]
				ifFalse: [ nbOfSelectiveSessions / withoutSingleTests size asFloat ] ]."
	selectiveSessionRatioByPeopleByProject := numberOfTestBySessionByPeopleByProject
		collect: [ :e | 
			(e values
				collect: [ :f | 
					| withoutSingleTests |
					withoutSingleTests := f select: [ :g | g > 1 ].
					nbOfSelectiveSessions := withoutSingleTests count: [ :g | g ~= withoutSingleTests max ].
					nbOfSelectiveSessions isZero
						ifTrue: [ 0 ]
						ifFalse: [ nbOfSelectiveSessions / withoutSingleTests size asFloat ] ]) average ].
	numberOfTestBySessionByPeople := self removeFirstGroupBy: numberOfTestBySessionByPeopleByProject.
	selectiveSessionRatiobyPeople := numberOfTestBySessionByPeople
		collect: [ :e | 
			| withoutSingleTests |
			withoutSingleTests := e select: [ :g | g > 1 ].
			nbOfSelectiveSessions := withoutSingleTests count: [ :g | g ~= withoutSingleTests max ].
			nbOfSelectiveSessions isZero
				ifTrue: [ 0 ]
				ifFalse: [ nbOfSelectiveSessions / withoutSingleTests size asFloat ] ].
	ratioOfSelectedTests := testExec associations
		flatCollect: [ :each | 
			| maxTestForEach |
			maxTestForEach := maxNbTestsByProject at: each key.
			each value asOrderedCollection
				collect: [ :sessionId | 
					| nbtest |
					nbtest := numberOfTestsBySession at: sessionId.
					nbtest = 1
						ifTrue: [ nil ]
						ifFalse: [ nbtest / maxTestForEach asFloat ] ]
				thenSelect: #isNotNil ].
	correlationOfRTSvsSuiteSizeData := testExec associations
		flatCollect: [ :each | 
			| maxTestForEach maxTimeForEach |
			maxTimeForEach := maxTimeByProject at: each key.
			maxTestForEach := maxNbTestsByProject at: each key.
			each value asOrderedCollection
				collect: [ :sessionId | 
					| nbtest |
					nbtest := numberOfTestsBySession at: sessionId.
					{maxTestForEach.
					(nbtest / maxTestForEach asFloat).
					maxTimeForEach} ]
				thenSelect: #isNotNil ].
	self correlationDurationNbTestsAndTotalOfTests: correlationOfRTSvsSuiteSizeData.
	debugSessionsByProject := self debugSessionThings: groupedByProjects withNumberOfTestBySession: numberOfTestsBySession.
	self addResultAt: #projectData summary: {(#nbMaxOfTestByProject -> maxNbTestsByProject)} raw: nil.
	self
		addResultAt: #'01paper1Rq1'
		summary:
			{(#selectiveSessionRatiobyPeopleAvg -> selectiveSessionRatiobyPeople values average).
			(#selectiveSessionRatiobyPeopleSd -> (#sd asREvalToSt: {(selectiveSessionRatiobyPeople values)})).
			(#nbOfMultipleTestSession -> (numberOfTestBySessionByProject sum: [ :e | e count: [ :f | f ~= 1 ] ])).
			(#ratioOfSelectedTests -> ratioOfSelectedTests average)}
		raw: selectiveSessionRatiobyPeople.
	self merge: maxNbTestsByProject in: dic.
	self merge: avgNumberByTestSession in: dic.
	self merge: selectiveSessionRatioByPeopleByProject in: dic.
	self merge: debugSessionsByProject in: dic.
	dic collect: [ :e | e roundTo: 0.001 ].
	fileName := TestServerQueries new exportFolder / 'export' , Count asString , '.csv'.
	Count := Count + 1.
	TestServerQueries new
		exportToCsvFile: fileName
		headers:
			#(#projectName 'total test session' '# of single test' '%single / total test' 'nb tests / project ' 'nb tests / test session' 'selectiveSessionRatiobyPeople')
		data:
			(dic associations
				collect: [ :a | 
					a value copy
						addFirst: a key;
						yourself ]).
	self openExcelNamed: fileName fullName