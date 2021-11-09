initialization
initialize
	super initialize.
	testSessions := FMMultivalueLink on: self opposite: #people:.
	commitAuthors := FMMultivalueLink on: self opposite: #testPeople:.
	changes := FMMultivalueLink on: self opposite: #people:.
	metaData := FMMultivalueLink on: self opposite: #people:.
	agglomeratedTestSessions := FMMultivalueLink on: self opposite: #people:.