as yet unclassified
mooseNameOn: aStream
	aStream << id.
	aStream << ' of '.
	versionTestedString ifNotNil: [ :e | aStream << (e truncateTo: 7) ].
	aStream << ' from '.
	aStream << start asString.
	aStream << ' to '.
	aStream << end asString