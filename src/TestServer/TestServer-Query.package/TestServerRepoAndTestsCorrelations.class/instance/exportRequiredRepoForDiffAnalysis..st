as yet unclassified
exportRequiredRepoForDiffAnalysis: aCollection
	| col data listOfRepos list stream |
	data := aCollection
		collect: [ :g | 
			g
				collect: [ :e | 
					col := OrderedCollection new
						add: e first value;
						yourself.
					e last value first isCollection
						ifFalse: [ col add: e last value ].
					col collect: [ :f | f collect: [ :h | h repository fullName ] ] as: Set ] ].
	listOfRepos := data values flatten flatten flatten asSet.
	list := listOfRepos collect: [ :repoName | ('.' split: (repoName replaceAll: $_ with: $/)) first ].
	[ 
	stream := (self exportFolder / 'repoToGetZipped.txt') writeStream.
	list asOrderedCollection sort do: [ :e | stream << e ] separatedBy: [ stream cr ] ]
		ensure: [ stream close ].
	^ list