as yet unclassified
groupTestSessionsBetween2CommitsWithTests: aCollection
	^ (self groupTestSessionsBetween2Commits: aCollection) collect: [ :item | item select: [ :e | e size > 2 ] ]