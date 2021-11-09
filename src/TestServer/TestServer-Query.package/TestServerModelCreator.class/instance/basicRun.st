as yet unclassified
basicRun
	self createCommitModel.
	[ 
	self openDBConnection.
	self connectionReadOnly.
	self createModel ]
		ensure: [ self closeDBConnection ].