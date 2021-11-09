as yet unclassified
commitRepos
	<MSEProperty: #commitRepos type: #String>
	^ self privateState cacheAt: #commitRepos ifAbsentPut: [ self commits collectAsSet: [ :e | e repository name ] ]