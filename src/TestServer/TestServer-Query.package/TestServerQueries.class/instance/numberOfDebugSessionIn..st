computing
numberOfDebugSessionIn: aCollection
	| sortedCollection data     |
	sortedCollection := aCollection asOrderedCollection sorted: [ :a :b | a second sixth < b second sixth ].
	data := sortedCollection
		collect: [ :e | 
			{(e first).
			(e second fifth)} ].
	^ self computeDebugSession: data.
	