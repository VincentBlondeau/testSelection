helpers
merge: aDico in: aRootDico
	aDico keysAndValuesDo: [ :key :value | (aRootDico at: key) add: value ]