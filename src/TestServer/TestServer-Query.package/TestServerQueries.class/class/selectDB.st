as yet unclassified
selectDB
	^" super selectDB."(AMManager getInstance account: 'postgresProdCopy2017') asPostgresConnectionString""