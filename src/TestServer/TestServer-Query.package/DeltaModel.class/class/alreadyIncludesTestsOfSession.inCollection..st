as yet unclassified
alreadyIncludesTestsOfSession: aMooseTestSession inCollection: aCollection
	| alreadyInCollection toIntegrate res |
	aCollection ifEmpty: [ ^ false ].
	alreadyInCollection := aCollection flatCollect: [ :e | e testExecutions collect: #name ].
	toIntegrate := aMooseTestSession testExecutions collect: #name.
	res := (alreadyInCollection intersection: toIntegrate) isNotEmpty.
	
	^ res