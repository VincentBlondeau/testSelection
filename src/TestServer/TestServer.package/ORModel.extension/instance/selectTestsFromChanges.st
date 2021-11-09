*TestServer
selectTestsFromChanges
	| res |
	^ (self changes reject: [ :e | e entity isNil	"This check should not be done...." ])
		flatCollectAsSet: [ :changedEntity | 
			changedEntity isPairedChange
				ifFalse: [ changedEntity entity
						currentContext:
							(changedEntity belongsToParentModel
								ifTrue: [ self parentModel ]
								ifFalse: [ self ]).
					changedEntity entity retrieveTestsAndFilter ]
				ifTrue: [ changedEntity entity currentContext: self parentModel.
					res := changedEntity entity retrieveTestsAndFilter.
					changedEntity entity currentContext: self.
					res union: changedEntity entity retrieveTestsAndFilter ] ]