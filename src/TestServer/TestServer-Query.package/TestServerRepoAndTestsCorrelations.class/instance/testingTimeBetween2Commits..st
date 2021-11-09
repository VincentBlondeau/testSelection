as yet unclassified
testingTimeBetween2Commits: data
	^ self on: data apply: [ :aGroup | aGroup allButFirstAndLast sum: [ :e | (e value sum: #eighth) asDuration ] ]