computing
correlationWithDuration: aCollection
	| rawData  |
	
	rawData := (aCollection groupedBy: #third)
		collect: [ :e | 
			{(e size).
			((e collect: #eighth) average)} ].
	self
		addResultAt: #'02paper2Rq2.2'
		summary:
			{(#correlationWithDuration
				->
					(#cor
						asREvalToSt:
							{(#method -> {#spearman}).
							(rawData values collect: #first).
							(rawData values collect: #second)}))}
		raw: aCollection.