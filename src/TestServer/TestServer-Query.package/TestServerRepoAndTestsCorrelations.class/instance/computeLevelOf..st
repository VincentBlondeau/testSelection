as yet unclassified
computeLevelOf: anInt
	| intervals |
	intervals := self thresholds collect: [ :i | Interval from: i first to: i second ].
	^ intervals indexOf: (intervals detect: [ :i | i rangeIncludes: anInt ])