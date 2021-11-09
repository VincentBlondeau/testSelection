as yet unclassified
on: data apply: aBlockClosure
	^ data collect: [ :peopleData | peopleData collect: [ :aGroup | aBlockClosure value: aGroup ] ]