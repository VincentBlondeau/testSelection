*TestServer
min: aBlock
	| min |
	
	self ifEmpty: [ ^ nil ].
	
	min := aBlock value: self first.
	
	self allButFirstDo: [ :each || value |
		value := aBlock value: each.
		value < min ifTrue: [ min := value ] ].
	
	^ min