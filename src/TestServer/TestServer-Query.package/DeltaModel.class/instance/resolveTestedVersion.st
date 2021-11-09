as yet unclassified
resolveTestedVersion
	| commitList commits |
	commitList := commitModel allCommits.
	self listOfSessions
		do: [ :testSession | 
			testSession versionTestedString = '-1'
				ifFalse: [ 
					commits := commitModel findCommitsNamed: testSession versionTestedString.
					commits isEmpty
						ifTrue: [ Transcript crLog: testSession project name ].
					testSession versionsTested: commits ] ]