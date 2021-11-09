as yet unclassified
createTestInModel: aCollection
	" an Array(1177 9 'fr.parcours4.jmilo.service.impl.UserServiceImplTest.lockUserAccount_should_locked_user_account' 'p4-jmilo-middle' 'FAIL' 2016-05-13T16:47:20+02:00 2016-05-13T16:47:21+02:00 1.36099994182587 '00:00:01')"

	| testExec session people project |
	session := self listOfSessions
		detect: [ :e | e id = (aCollection at: 1) ]
		ifNone: [ self listOfSessions
				add:
					(MooseTestSession new
						id: (aCollection at: 1);
						yourself) ].
	people := self listOfPeople
		detect: [ :e | e id = (aCollection at: 2) ]
		ifNone: [ self listOfPeople
				add:
					(MooseTestPeople new
						id: (aCollection at: 2);
						yourself) ].
	project := self listOfProjects
		detect: [ :e | e name = (aCollection at: 4) ]
		ifNone: [ self listOfProjects
				add:
					(MooseProject new
						name: (aCollection at: 4);
						yourself) ].
	testExec := MooseTestExecution new.
	testExec session: session.
	testExec session people: people.
	testExec name: (aCollection at: 3).
	testExec session project: project.
	testExec status: (aCollection at: 5).
	testExec sessionStart: (aCollection at: 6).
	testExec sessionEnd: (aCollection at: 7).
	testExec duration: (aCollection at: 8).
	testExec sessionDuration: (aCollection at: 9) asTime asDuration.
	testExec session versionTestedString: (aCollection at: 10).
	testExec type: (aCollection at: 11).
	testExec coraStrategy: (aCollection at: 12).
	self listOfTestExecution add: testExec