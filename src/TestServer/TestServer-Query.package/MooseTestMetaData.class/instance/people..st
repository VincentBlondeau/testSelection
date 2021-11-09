accessing
people: aMooseTestPeople
	people := FMMultivalueLink
		on: self
		update: #metaData
		from: self people
		to: aMooseTestPeople