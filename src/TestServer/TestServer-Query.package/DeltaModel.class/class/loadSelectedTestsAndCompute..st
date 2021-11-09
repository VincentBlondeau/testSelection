as yet unclassified
loadSelectedTestsAndCompute: diffs
	| selectedTestsList fileNameBegin filesWithSelectedTests listOfTests discardedDiffs numberOfLinesOfDiffLocation nbLinesOfDiff repo firstCommit |
	selectedTestsList := 'D:\TestsExperiements\reposGitKazan\selectedTests' asFileReference children.
	numberOfLinesOfDiffLocation := 'D:\TestsExperiements\reposGitKazan\diffSize' asFileReference children.
	discardedDiffs := OrderedCollection new.
	diffs
		do: [ :e | 
			repo := e at: #repo.
			firstCommit := e at: #commitBefore.
			fileNameBegin := firstCommit diffFileBeginName.
			filesWithSelectedTests := selectedTestsList select: [ :file | file basename beginsWith: fileNameBegin ].
			nbLinesOfDiff := numberOfLinesOfDiffLocation
				select: [ :file | file basename beginsWith: fileNameBegin ]
				thenCollect: [ :file | 
					| temp |
					temp := file contents asInteger.
					temp = 0
						ifTrue: [ "OSEF. Y a pas de changement,  y a pas de changements - 21-03-17"
							"self halt.
							file inspect" ].
					temp ].
			filesWithSelectedTests
				ifEmpty: [ 
					Transcript log: 'File missing :' , filesWithSelectedTests.
					discardedDiffs add: filesWithSelectedTests ].
			listOfTests := (filesWithSelectedTests flatCollect: [ :file | String crlf split: file contents ])
				reject: [ :string | string = '' ].
			Halt if: [ nbLinesOfDiff isEmpty ].
			e at: #nbLinesOfDiff put: nbLinesOfDiff.
			e at: #testComparison put: listOfTests ].
	^ diffs