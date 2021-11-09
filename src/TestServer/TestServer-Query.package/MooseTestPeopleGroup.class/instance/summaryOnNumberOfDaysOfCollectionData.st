as yet unclassified
summaryOnNumberOfDaysOfCollectionData
	| data |
	data := self collect: [ :people | (people sortedTestChanges last timestamp - people sortedTestChanges first timestamp) days ].
	'hist'
		asREval:
			{data.
			('axes' -> false).
			'xlab' -> 'OnNumberOfDaysOfCollectionData'.
			'ylab' -> 'Freq'.
			('main' -> 'summaryOnNumberOfDaysOfCollectionData')}.
	^ #summary asREvalToSt: {data}