as yet unclassified
initialize
	super initialize.
	testExecutions := FMMultivalueLink on: self opposite: #session:.
	versionsTested  := FMMultiMultivalueLink on: self opposite: #launchedInTestSessions.