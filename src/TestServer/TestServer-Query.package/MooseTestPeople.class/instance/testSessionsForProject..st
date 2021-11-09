as yet unclassified
testSessionsForProject: aMooseProject
	^ self testSessions select: [ :testSession | testSession project = aMooseProject ]