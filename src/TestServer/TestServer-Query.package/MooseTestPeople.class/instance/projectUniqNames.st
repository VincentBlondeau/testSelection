as yet unclassified
projectUniqNames
	^ "self privateState
		cacheAt: #projectUniqNames
		ifAbsentPut: [ "self commitRepos collect: [ :e | self halt. TestServerQueries uniqKeyFor: e ] "]"