actions
importMSEFrom: req
	| project user type listOfChanges testsSelected mseAnchor testsNames |
	user := req at: #user.
	project := req at: #project.
	type := (req entity partNamed: 'type') fieldValueString asSymbol.
	listOfChanges := (req entity partNamed: 'changes') fieldValueString.
	mseAnchor := MooseProjectManager
		addNewMSE: (req entity partNamed: 'mse_file') fieldValueString
		fromUser: user
		project: project
		type: type
		changes: (self transformFromToStCollection: listOfChanges).
	testsSelected := mseAnchor selectLastestTests.
	testsNames := (testsSelected collectAsSet: [ :test | test mooseName ]) asOrderedCollection sort: [ :a :b | a mooseName < b mooseName ].
	return := String
		streamContents: [ :stream | testsNames do: [ :testName | stream << (MooseUtilities demoosify: testName) ] separatedBy: [ stream << String crlf ] ].
	self logger debug: user , '-' , project , '-' , type , ' MSE Imported' facilityLevel: self class logFacilityLevel.
	self serializeModel: req andException: nil.
	type = #full
		ifFalse: [ self serializeModel: req andException: nil.
			self logger debug: user , '-' , project , '-SelectedTests:' , return facilityLevel: self class logFacilityLevel ]