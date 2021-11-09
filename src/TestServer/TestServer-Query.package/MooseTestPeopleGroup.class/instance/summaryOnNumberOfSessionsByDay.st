as yet unclassified
summaryOnNumberOfSessionsByDay
	| data rawData |
	rawData := self flatCollect: [ :people | people testSessions ].
	data := ((rawData
		groupedBy: [ :e | 
			{(e date day).
			(e people)} ]) collect: #size) values.
	'hist'
		asREval:
			{(data asOrderedCollection).
			('axes' -> false).
			('xlab' -> 'NumberOfSessionsByDay').
			('ylab' -> 'Freq').
			('main' -> 'summaryOnNumberOfSessionsByDay')}.
	^ #summary asREvalToSt: {data}