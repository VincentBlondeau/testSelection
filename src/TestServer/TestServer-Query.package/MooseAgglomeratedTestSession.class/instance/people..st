accessing
people: aMooseTestPeople
	people := FMMultivalueLink
		on: self
		update: #agglomeratedTestSessions
		from: self people
		to: aMooseTestPeople