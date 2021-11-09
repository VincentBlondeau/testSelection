accessing
people: aMooseTestPeople
	people := FMMultivalueLink
		on: self
		update: #changes
		from: self people
		to: aMooseTestPeople