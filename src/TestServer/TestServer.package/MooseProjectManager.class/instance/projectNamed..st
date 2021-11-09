as yet unclassified
projectNamed: projectName
	self flag: #ForDebugPurposes.
	^ self projects detect: [ :project | project name = projectName ]