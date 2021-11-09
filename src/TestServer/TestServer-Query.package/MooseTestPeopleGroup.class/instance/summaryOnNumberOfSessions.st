as yet unclassified
summaryOnNumberOfSessions
	| data |
	data := self collect: [ :people | people numberOfTestSessions ].
	'hist'
		asREval:
			{data.
			('axes' -> false).
			'xlab' -> 'NumberOfSessions'.
			'ylab' -> 'Freq'.
			('main' -> 'summaryOnNumberOfSessions')}.
	^ #summary asREvalToSt: {data}