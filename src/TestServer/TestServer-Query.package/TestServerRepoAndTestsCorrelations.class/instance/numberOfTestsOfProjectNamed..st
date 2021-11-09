as yet unclassified
numberOfTestsOfProjectNamed: aString
	| projectMaxNumberOfTest |
	projectMaxNumberOfTest := (self class result at: #projectData) at: #nbMaxOfTestByProject.
	^ projectMaxNumberOfTest at: (self class uniqKeyFor: aString)