as yet unclassified
compute
	self descriptiveStats.
	self correlationWithDuration.
	self testSelectionByProjectAndPeople.
	self testSelectionByProjectAndPeopleAgglomerated.
	self correlationDurationNbTestsAndTotalOfTests.
	self correlationDurationNbAgglomeratedTestsAndTotalOfTests.
	self computeDelayToFixTest.	"Kept from old version"
	self peopleInExperiement.
	self numberOfProjects.	"can be transfered"
	self numberOfProjectByPersonAvg.	"	self durationOfTestSessions."
"	self timeSpendToTestByDayOfTesting."
	self testsBySession.
	self testsBySessionAgglomerated	"self numberOfTestSessionDayByPerson."	"self mappingProjectRepos."	"self testByDayExport: requestData."	"debugSessionsByProject := self debugSessionThings: groupedByProjects withNumberOfTestBySession: numberOfTestsBySession."