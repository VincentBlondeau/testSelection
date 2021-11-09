accessing
people: aMooseTestPeople
	people := FMMultivalueLink
		on: self
		update: #testSessions
		from: self people
		to: aMooseTestPeople