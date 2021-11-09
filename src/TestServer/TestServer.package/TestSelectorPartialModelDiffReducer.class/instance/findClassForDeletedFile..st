as yet unclassified
findClassForDeletedFile: deletedFile
	| endOfFileAnchor class |
	endOfFileAnchor := '/' join: (deletedFile substrings: '/\') allButFirst.
	class := self baseModel allModelClasses
		detect: [ :c | c sourceAnchor ifNotNil: [ :sa | sa fileName endsWith: endOfFileAnchor ] ifNil: [ false ] ]
		ifNone: [ ^ nil ].
	^ self result detect: [ :res | res entity = class ] ifNone: [  ]