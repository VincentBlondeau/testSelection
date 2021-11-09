adding
addNewMSE: mse type: aType changes: aListOfChanges
	| mseAnchor |
	self checkType: aType.
	aType = #full
		ifTrue: [ self mseList ifNotEmpty: [ self resetMseList ].
			rootModel := nil.
			self assert: aListOfChanges isEmpty ].
	mseAnchor := (MSEFileAnchor
		type: aType
		changes: aListOfChanges
		content: mse)
		project: self.
	self mseList add: mseAnchor.
	self loadCompleteProjectInMemory.
	^ mseAnchor