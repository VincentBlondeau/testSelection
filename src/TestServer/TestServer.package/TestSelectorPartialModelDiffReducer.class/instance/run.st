accessing
run
	| entities allEntityChanges allAssocChanges rootEntities rootChangeTypesNotRemoval rootChangeTypesNotRemovalWithoutStub allEntityChangesSorted deletedClasses sortedByTargetResult index |
	deletedClasses := self deletedClasses.
	rootChangeTypesNotRemoval := (self result select: #isForType)
		reject: [ :each | (each isRemoval or: [ each targetEntity isInnerClass ]) or: [ each targetEntity isAnnotationType and: [ each isVersion ] ] ].
	rootChangeTypesNotRemovalWithoutStub := rootChangeTypesNotRemoval reject: [ :e | e targetEntity isStub ].
	rootChangeTypesNotRemovalWithoutStub addAll: deletedClasses.
	rootEntities := (Set withAll: (rootChangeTypesNotRemovalWithoutStub collect: #baseEntity))
		addAll: (rootChangeTypesNotRemovalWithoutStub collect: #targetEntity);
		yourself.
	(rootEntities asOrderedCollection collect: [ :e | e -> (e deepCollect: #childrenEntities) ]) asDictionary.
	entities := (rootEntities asOrderedCollection deepCollect: #childrenEntities)
		addAll: rootEntities;
		"Add all the stub that are addition"
			addAll: (self result select: [ :e | e isAddition and: [ e entity isStub ] ] thenCollect: #entity);
		yourself.
	sortedByTargetResult := self result sorted: [ :a :b | a targetEntity hash <= b targetEntity hash ].
	allEntityChanges := entities asSet
		flatCollect: [ :e | 
			index := sortedByTargetResult
				findBinaryIndex: [ :aNode | 
					aNode targetEntity = e
						ifTrue: [ 0 ]
						ifFalse: [ e hash < aNode targetEntity hash
								ifTrue: [ -1 ]
								ifFalse: [ 1 ] ] ]
				ifNone: [ 0 ].
			index isZero
				ifFalse: [ ((index > 1 and: [ index < sortedByTargetResult size ])
						and:
							[ (sortedByTargetResult at: index - 1) targetEntity = e or: [ (sortedByTargetResult at: index + 1) targetEntity = e ] ])
						ifTrue: [ self error: 'Not Yet impelmented' ].
					{(index -> (sortedByTargetResult at: index))} ]
				ifTrue: [ #() ] ].
	allAssocChanges := self result assocChanges select: [ :assocChange | entities includes: assocChange entity from ].
	allEntityChangesSorted := (allEntityChanges asOrderedCollection sort: [ :a :b | a key < b key ]) collect: [ :e | e value ].
	self
		result:
			(FamixDiffResult
				withAll:
					(allEntityChangesSorted select: [ :e | e isKindOfAddition ]) , (allAssocChanges select: [ :e | e isAddition ])
						, (allEntityChangesSorted select: [ :e | e isVersion ]) , (allAssocChanges select: [ :e | e isRemoval ])
						, (allEntityChangesSorted select: [ :e | e isRemoval ]))