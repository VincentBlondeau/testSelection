as yet unclassified
summaryOnNumberOfActivityDays
	| data |
	data := self collect: [ :people | (people testSessions groupedBy: [ :e | e start day ]) size ].
		'hist'
		asREval:
			{data.
			('axes' -> false).
			('xlab' -> 'summaryOnNumberOfActivityDays').
			('ylab' -> 'Freq').
			('main' -> 'summaryOnNumberOfActivityDays')}.
	^ #summary asREvalToSt: {data}