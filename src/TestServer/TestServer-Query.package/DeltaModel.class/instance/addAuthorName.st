as yet unclassified
addAuthorName
	| mapping authors commiter |
	mapping := TestServerRepoAndTestsCorrelations authorToDB.
	authors := commitModel allAuthors groupedBy: #id.
	self listOfPeople
		do: [ :e | 
			e name: (mapping keyAtValue: e id).
			commiter := authors at: e name asString ifAbsent: [ #() ].
			e commitAuthors: commiter ]