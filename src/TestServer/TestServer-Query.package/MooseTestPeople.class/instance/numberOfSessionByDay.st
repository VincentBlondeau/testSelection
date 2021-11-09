as yet unclassified
numberOfSessionByDay
	^ ((self testSessions groupedBy: [ :e | e date day ]) collect: #size) values