deprecated - old experiement
loadSelectedTestsAndComputeOld: diffs
	| selectedTestsList commit fileNameBegin filesWithSelectedTests listOfTests res discardedDiffs numberOfLinesOfDiffLocation nbLinesOfDiff |
	selectedTestsList := 'D:\TestsExperiements\reposGitKazan\selectedTests' asFileReference children.
	numberOfLinesOfDiffLocation := 'D:\TestsExperiements\reposGitKazan\diffSize' asFileReference children.
	discardedDiffs := OrderedCollection new.
	res := diffs collect: #asOrderedCollection.
	res
		do: [ :e | 
			commit := e first.
			fileNameBegin := commit diffFileBeginName.
			filesWithSelectedTests := selectedTestsList select: [ :file | file basename beginsWith: fileNameBegin ].
			nbLinesOfDiff := numberOfLinesOfDiffLocation
				select: [ :file | file basename beginsWith: fileNameBegin ]
				thenCollect: [ :file | 
					| temp |
					temp := file contents asInteger.
					temp = 0
						ifTrue: [ file inspect ].
					temp ].
			filesWithSelectedTests
				ifEmpty: [ 
					Transcript log: 'File missing :' , filesWithSelectedTests.
					discardedDiffs add: filesWithSelectedTests ].
			listOfTests := (filesWithSelectedTests flatCollect: [ :file | String crlf split: file contents ])
				reject: [ :string | string = '' ].
			e add: nbLinesOfDiff.
			e add: (e third allTestExecutions compareWithTestNamed: listOfTests) ].
	^ res