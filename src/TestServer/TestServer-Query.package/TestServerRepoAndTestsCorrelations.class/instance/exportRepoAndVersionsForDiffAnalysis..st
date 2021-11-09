as yet unclassified
exportRepoAndVersionsForDiffAnalysis: aCollection
	| data stream lastCommit byRepo additionalDiffs repName |
	data := aCollection
		collect: [ :g | 
			g
				collect: [ :e | 
					e last value first isCollection
						ifTrue: [ nil ]
						ifFalse: [ 
							lastCommit := e last value first.
							{(lastCommit repository name).
							(lastCommit parentString).
							(lastCommit revision)} ] ] ].
	byRepo := (data values flatten reject: #isNil) groupedBy: #first.
	stream := Transcript.
	byRepo
		do: [ :aRepo | 
			repName := aRepo first first.
			[ 
			stream := ('D:\TestsExperiements\reposGitKazan\' asFileReference / 'repoDiff' / (repName , '.txt')) writeStream.
			additionalDiffs := OrderedCollection new.
			aRepo
				do: [ :repoVersion | 
					stream << repoVersion second first.
					stream << ':'.
					stream << repoVersion third .
					repoVersion second size > 1
						ifTrue: [ 
							self assert: repoVersion second size = 2.
							additionalDiffs
								add:
									{(repoVersion third).
									(repoVersion second second)} ] ]
				separatedBy: [ stream lf ].
			additionalDiffs ifNotEmpty: [ stream lf ].
			additionalDiffs
				do: [ :repoVersion | 
					stream << repoVersion first.
					stream << ':'.
					stream << repoVersion second ]
				separatedBy: [ stream lf ] ]
				ensure: [ stream close ] ].
