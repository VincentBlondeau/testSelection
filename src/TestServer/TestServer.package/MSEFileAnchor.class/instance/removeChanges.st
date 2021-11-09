as yet unclassified
removeChanges
	^ self changes select: [ :e | (e at: #changeType) = 'REMOVE' ] thenCollect: [ :e | e at: #fileName ]