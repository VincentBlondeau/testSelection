helpers
removeFirstGroupBy: aCollection
	| coll dico |
	coll := (aCollection asOrderedCollection copy collect: #associations) reduce: [ :a :b | a , b ].
	dico := Dictionary new.
	coll do: [ :e | dico at: e key ifPresent: [ :elem | elem addAll: e value ] ifAbsent: [ dico at: e key put: e value ] ].
	^ dico