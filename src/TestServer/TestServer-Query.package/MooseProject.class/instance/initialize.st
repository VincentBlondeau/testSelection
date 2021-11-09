as yet unclassified
initialize
	super initialize.
	testSessions := FMMultivalueLink on: self opposite: #project:.
	agglomeratedTestSessions := OrderedCollection new.