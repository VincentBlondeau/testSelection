private
searchPreviousFailingButNotPassing: aCollection at: index
	| currentItem |
	index isZero
		ifTrue: [ ^ aCollection at: index + 1 ].
	currentItem := aCollection at: index.
	currentItem isPassing
		ifTrue: [ ^ aCollection at: index + 1 ]
		ifFalse: [ ^ self searchPreviousFailingButNotPassing: aCollection at: index - 1 ]