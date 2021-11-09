tests
test
	| project |
	MooseProjectManager
		addNewMSE: self mse
		fromUser: 'userId'
		project: 'myProject'
		type: #full
		changes: #().
	project := MooseProjectManager findProjectNamed: 'myProject' ofUser: 'userId'.
	self assert: project isNotNil.
	self flag: #addASSERTS