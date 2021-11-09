as yet unclassified
testSelectionByProjectAndPeopleAgglomerated
	| maxNbTestsByProject selectiveSessionRatiobyPeople ratioOfSelectedTests nbOfSelectiveSessions multipleSessions |
	maxNbTestsByProject := model maxNbTestsByProject.
	self result at: #projectData put: {(#nbMaxOfTestByProject -> maxNbTestsByProject)}.
	selectiveSessionRatiobyPeople := model allTestPeople
		collect: [ :testPeople | 
			multipleSessions := testPeople agglomeratedTestSessions select: #isMultiple.
			nbOfSelectiveSessions := multipleSessions
				count: [ :session | session numberOfTests ~= (multipleSessions collect: #numberOfTests) max ].
			nbOfSelectiveSessions isZero
				ifTrue: [ 0 ]
				ifFalse: [ nbOfSelectiveSessions / multipleSessions size asFloat ] ].
	ratioOfSelectedTests := model allAgglomeratedTestSessions
		select: #isMultiple
		thenCollect: [ :session | 
			| maxTestForEach |
			maxTestForEach := maxNbTestsByProject at: session project uniqName.
			session numberOfTests / maxTestForEach asFloat ].
	self result
		at: #'Rq1.4-(FromL2.2)-Agglomerated'
		put:
			{(#'Rq1.4-selectiveSessionRatiobyPeopleAvg' -> selectiveSessionRatiobyPeople average).
			(#'Rq1.4-selectiveSessionRatiobyPeopleSd'
				-> (#sd asREvalToSt: {(selectiveSessionRatiobyPeople asOrderedCollection)}) first).
			(#'Rq1.4-nbOfMultipleTestSession' -> model numberOfMultipleAgglomeratedTestSessions).
			(#'Rq1.4-ratioOfSelectedTests' -> ratioOfSelectedTests average)}