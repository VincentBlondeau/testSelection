as yet unclassified
transformFromToStCollection: aString
	^ (NeoJSONReader fromString: aString) at: 'list'