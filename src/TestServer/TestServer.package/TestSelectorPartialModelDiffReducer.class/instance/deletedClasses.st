as yet unclassified
deletedClasses
	^ (self argAt: #filesDeleted ifAbsent: [ ^ OrderedCollection new ]) collect: [ :e | self findClassForDeletedFile: e ] thenSelect: #isNotNil