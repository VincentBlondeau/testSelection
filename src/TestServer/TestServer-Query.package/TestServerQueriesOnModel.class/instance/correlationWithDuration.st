as yet unclassified
correlationWithDuration
	| data |
	data := (model allTestExecutions groupedBy: #name)
		collect: [ :e | 
			{(e size).
			((e collect: #duration) average)} ].
	self result
		at: #'Rq1.3'
		put:
			{(#correlationWithDuration
				->
					(#cor
						asREvalToSt:
							{(#method -> {#spearman}).
							(data values collect: #first).
							(data values collect: #second)}))}