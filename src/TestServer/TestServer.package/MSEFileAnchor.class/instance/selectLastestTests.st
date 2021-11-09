as yet unclassified
selectLastestTests
	| orion famixDiff |
	self project containsOnlyRootMSE
		ifTrue: [ ^ #() ].
	(self orChanges isEmpty and: [ self diffChanges bodyChanges isEmpty ])
		ifTrue: [ ^ #() ].
	famixDiff := self diffChanges bodyChanges flatCollect: [ :e | e entity retrieveTests select: [ :f | f isMethod and: [ f isTest ] ] ].
	orion := self selectTestsFromOrChanges asSet.
	^ (orion union: famixDiff) select: [ :e | model includes: e ]