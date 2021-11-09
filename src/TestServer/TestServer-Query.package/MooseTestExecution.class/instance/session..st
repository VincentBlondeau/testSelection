as yet unclassified
session: aMooseTestSession
	session := FMMultivalueLink
		on: self
		update: #testExecutions
		from: self session
		to: aMooseTestSession