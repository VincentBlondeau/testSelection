as yet unclassified
run
	[ 
	self openDBConnection.
	self connectionReadOnly.
	self compute ]
		ensure: [ self closeDBConnection ]