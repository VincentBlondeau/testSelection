as yet unclassified
fullMse
	^ self mseList detect: #isFullMse ifNone: [ MSENotFound signal ]