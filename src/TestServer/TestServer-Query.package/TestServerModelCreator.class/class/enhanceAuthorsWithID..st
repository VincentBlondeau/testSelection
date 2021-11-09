as yet unclassified
enhanceAuthorsWithID: authorsList
	| authors notInList |
	authors := authorsList groupedBy: [ :e | e name asUppercase ].
	notInList := OrderedCollection new.
	authors associations
		do: [ :e | 
			e value
				do: [ :f | 
					[ f id: (self authorNameToIdMapping at: e key) ]
						on: KeyNotFound
						do: [ notInList add: e key ] ] ].
	self assert: notInList isEmpty.