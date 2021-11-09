as yet unclassified
youngestCommitsForEachRepo
	^ (self entities groupedBy: [ :e | e repository ]) collect: [ :e | (e sort: [ :a :b | a date < b date ]) first ]