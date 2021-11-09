helpers
recordAsPdfNamed: aString operations: aBlockClosure
	[ 
	'pdf' asREval: {aString}.
	aBlockClosure value ]
		ensure: [ 'dev.off' asREval: {} ]